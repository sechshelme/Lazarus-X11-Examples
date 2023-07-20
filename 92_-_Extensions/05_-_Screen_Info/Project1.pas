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

  procedure Paint;
  var
    i: integer;
  begin
    for i := 0 to Length(Resolution) - 1 do begin
      XDrawString(dis, win, gc, 10, 30 + i * 10, PChar(Resolution[i]), Length(Resolution[i]));
    end;
  end;

  procedure Read_Screen_Info;
  var
    num_sizes, num_rates, major_v, minor_v,
    minWidth, minHeight, maxWidth, maxHeight,
    nmonitors: cint;
    xrrs: PXRRScreenSize;
    i, j: integer;
    rates: pcshort;
    s: string;
    si: PXRRScreenConfiguration;
    mi: PXRRMonitorInfo;
  begin
    si := XRRGetScreenInfo(dis, win);
    SetLength(Resolution, 0);

    WriteStr(s, 'Current Rate: ', XRRConfigCurrentRate(si));
    Insert([s], Resolution, Length(Resolution));

    XRRGetScreenSizeRange(dis, win, @minWidth, @minHeight, @maxWidth, @maxHeight);
    WriteStr(s, 'ScreenSizeRange:  minWidth: ', minWidth, '  minHeight: ', minHeight, '  maxWidth: ', maxWidth, '  maxHeight: ', maxHeight);
    Insert([s], Resolution, Length(Resolution));
    Insert([''], Resolution, Length(Resolution));

    mi := XRRGetMonitors(dis, win, 1, @nmonitors);
    WriteLn('MonitorCount: ', nmonitors);
    for i := 0 to nmonitors - 1 do begin
      WriteLn('Nr: ', i, '  Widht: ', mi[i].Width, '  Height: ', mi[i].Height);
    end;

    scr := DefaultScreen(dis);
    WriteLn('scr:', scr);


    XRRQueryVersion(dis, @major_v, @minor_v);
    xrrs := XRRSizes(dis, 0, @num_sizes);

    WriteStr(s, 'Version:', major_v, '.', minor_v, '    Modus Count: ', num_sizes);
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
    Paint;

    XRRFreeScreenConfigInfo(si);
  end;

begin
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);
  WriteLn('scr:', scr);

  root_win := XRootWindow(dis, 0);
  win := XCreateSimpleWindow(dis, root_win, 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
  XSelectInput(dis, win, KeyPressMask or ExposureMask);
  XStoreName(dis, win, 'Mein Fenster');
  XMapWindow(dis, win);

  gc := XCreateGC(dis, win, 0, nil);

  //  Read_Size_Info;

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
          XK_Escape: begin
            Break;
          end;
          XK_space: begin
            Read_Screen_Info;
          end;
        end;
      end;
    end;
  end;

  XDestroyWindow(dis, win);
  XCloseDisplay(dis);
end.
