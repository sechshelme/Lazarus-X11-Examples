program Project1;

uses
  SysUtils,
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  x,
  randr,
  Xrandr;

  // https://gitlab.freedesktop.org/xorg/lib/libxrandr/-/blob/master/src/XrrCrtc.c

var
  dis: PDisplay;
  win, root_win: TWindow;
  Event: TXEvent;
  scr, original_size_id: cint;
  original_rotation: TRotation;
  original_rate: cshort;
  conf: PXRRScreenConfiguration;
  Resolution: TStringArray = nil;
  gc: TGC;

  mat: TXTransform;

const
  IndentyMatrix: TXTransform = (matrix: ((1, 0, 0), (0, 1, 0), (0, 0, 1)));


  procedure Paint;
  var
    i: integer;
  begin
    for i := 0 to Length(Resolution) - 1 do begin
      XDrawString(dis, win, gc, 10, 30 + i * 10, PChar(Resolution[i]), Length(Resolution[i]));
    end;
  end;

  procedure Read_Size_Info;
  var
    num_sizes, num_rates, major_v, minor_v: cint;
    minWidth, minHeight, maxWidth, maxHeight, nmonitors: cint;
    xrrs: PXRRScreenSize;
    i, j: integer;
    rates: pcshort;
    s: string;
    si: PXRRScreenConfiguration;
    mi: PXRRMonitorInfo;
  begin
    XRRQueryVersion(dis, @major_v, @minor_v);

    WriteStr(s, 'Version:', major_v, '.', minor_v);
    Resolution := [s, ''];

    si := XRRGetScreenInfo(dis, win);

    WriteStr(s, 'Current Rate: ', XRRConfigCurrentRate(si));
    Insert([s], Resolution, Length(Resolution));

    XRRGetScreenSizeRange(dis, win, @minWidth, @minHeight, @maxWidth, @maxHeight);
    WriteStr(s, 'ScreenSizeRange:  minWidth: ', minWidth, '  minHeight: ', minHeight, '  maxWidth: ', maxWidth, '  maxHeight: ', maxHeight);
    Insert([s], Resolution, Length(Resolution));
    Insert([''], Resolution, Length(Resolution));

    mi := XRRGetMonitors(dis, win, 0, @nmonitors);
    WriteStr(s, 'MonitorCount: ', nmonitors);
    Insert([s], Resolution, Length(Resolution));
    for i := 0 to nmonitors - 1 do begin
      WriteStr(s, 'Nr: ', i, '  Widht: ', mi[i].Width, '  Height: ', mi[i].Height);
      Insert([s], Resolution, Length(Resolution));
    end;
    Insert([''], Resolution, Length(Resolution));

    //    xrrs := XRRSizes(dis, 0, @num_sizes);
    xrrs := XRRSizes(dis, XRRRootToScreen(dis, root_win), @num_sizes);
    WriteStr(s, 'Modus Count: ', num_sizes);
    Insert([s], Resolution, Length(Resolution));

    xrrs := XRRConfigSizes(si, @num_sizes);
    WriteStr(s, 'Modus Count: ', num_sizes);
    Insert([s], Resolution, Length(Resolution));

    for i := 0 to num_sizes - 1 do begin
      with xrrs[i] do begin
        WriteStr(s, 'Nr:', i: 4, Width: 6, 'x', Height: 6, '   (', mwidth: 4, 'mm x', mheight: 4, 'mm )   ');
      end;
      rates := XRRRates(dis, 0, i, @num_rates);
      for j := 0 to num_rates - 1 do begin
        WriteStr(s, s, rates[j], ' ');
      end;
      Insert([s], Resolution, Length(Resolution));
    end;
    XRRFreeScreenConfigInfo(si);

    Paint;
  end;

  procedure Transform(mat: TXTransform);
  // https://sprocketfox.io/xssfox/2021/12/02/xrandr/
  var
    crtcxid: TRRCrtc;
    res: PXRRScreenResources;
    c: integer;
    ci: PXRRCrtcInfo;
  begin
    res := XRRGetScreenResourcesCurrent(dis, root_win);
    WriteLn('ncrtc: ',  res^.ncrtc);
    for c := 0 to res^.ncrtc - 1 do begin
      crtcxid := res^.crtcs[0];
      WriteLn(crtcxid);

      ci := XRRGetCrtcInfo(dis, res, crtcxid);
      WriteLn('crtcxid:  ', crtcxid);
      WriteLn('timestap: ', ci^.timestamp);
      WriteLn('x:        ', ci^.x);
      WriteLn('y:        ', ci^.y);
      WriteLn('mode:     ', ci^.mode);
      WriteLn('rotation: ', ci^.rotation);
      WriteLn('outputs:  ', PtrUInt(ci^.outputs));
      WriteLn('noutput:  ', ci^.noutput);
      WriteLn();

//      XRRSetCrtcTransform(dis, crtcxid, @mat, 'nearest', nil, 0);
      XRRSetCrtcTransform(dis, crtcxid, @mat, 'bilinear', nil, 0);
      XRRSetCrtcConfig(dis, res, crtcxid, ci^.timestamp, ci^.x, ci^.y, ci^.mode, ci^.rotation, ci^.outputs, ci^.noutput);

      XRRFreeCrtcInfo(ci);
    end;
    XRRFreeScreenResources(res);
  end;

begin
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);

  root_win := XRootWindow(dis, 0);
  win := XCreateSimpleWindow(dis, root_win, 10, 10, 640, 480, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
  XSelectInput(dis, win, KeyPressMask or ExposureMask);
  XStoreName(dis, win, 'Mein Fenster');
  XMapWindow(dis, win);

  gc := XCreateGC(dis, win, 0, nil);

  Read_Size_Info;

  conf := XRRGetScreenInfo(dis, root_win);
  original_rate := XRRConfigCurrentRate(conf);
  original_size_id := XRRConfigCurrentConfiguration(conf, @original_rotation);

  // Ereignisschleife
  while (True) do begin
    XNextEvent(dis, @Event);
    case Event._type of
      Expose: begin
        Paint;
      end;
      KeyPress: begin
        // Beendet das Programm bei [ESC]
        case XLookupKeysym(@Event.xkey, 0) of
          xk_s: begin
            XRRSetScreenConfigAndRate(dis, conf, root_win, 1, RR_Rotate_0, 60, CurrentTime);
          end;
          xk_t: begin
            mat.matrix[0, 0] := 2;
            mat.matrix[0, 1] := 0;
            mat.matrix[0, 2] := 0;

            mat.matrix[1, 0] := 0;
            mat.matrix[1, 1] := 1;
            mat.matrix[1, 2] := 0;

            mat.matrix[2, 0] := 0;
            mat.matrix[2, 1] := 0;
            mat.matrix[2, 2] := 1;

            Transform(mat);
          end;
          XK_Escape, XK_space: begin
            XRRSetScreenConfigAndRate(dis, conf, root_win, original_size_id, original_rotation, original_rate, CurrentTime);
            Transform(IndentyMatrix);
          end;
        end;
      end;
    end;
  end;

  XDestroyWindow(dis, win);
  XCloseDisplay(dis);
end.
