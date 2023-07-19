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
  // https://github.com/OpenICC/xcalib/blob/master/xcalib.c

var
  dis: PDisplay;
  win, root_win: TWindow;
  Event: TXEvent;
  scr: cint;
  sa: TStringArray = nil;
  gc: TGC;
  gamma: cfloat = $FFFF;

  procedure Paint;
  var
    i: integer;
  begin
    for i := 0 to Length(sa) - 1 do begin
      XDrawString(dis, win, gc, 10, 30 + i * 10, PChar(sa[i]), Length(sa[i]));
    end;
  end;

  procedure SetGamma(g: cint);
  var
    crtcxid: TRRCrtc;
    res: PXRRScreenResources;
    c, i: integer;
    size: cint;
    crtc_gamma: PXRRCrtcGamma;
  begin
    WriteLn('gamma:',g);
    res := XRRGetScreenResourcesCurrent(dis, root_win);
    WriteLn(res^.ncrtc);

    for c := 0 to res^.ncrtc - 1 do begin
      crtcxid := res^.crtcs[c];
      size := XRRGetCrtcGammaSize(dis, crtcxid);
      crtc_gamma := XRRAllocGamma(size);
      WriteLn('size: ', size);
      for i := 0 to size - 1 do begin
        crtc_gamma^.red[i] := g div size * i;
        crtc_gamma^.green[i] := g div size * i;
        crtc_gamma^.blue[i] := g div size * i;
      end;
      XRRSetCrtcGamma(dis, crtcxid, crtc_gamma);
    end;
    XRRFreeGamma(crtc_gamma);
  end;

  procedure PrintGamma;
  var
    crtcxid: TRRCrtc;
    res: PXRRScreenResources;
    c, i: integer;
    size: cint;
    crtc_gamma: PXRRCrtcGamma;
    //  crtc_gamma: PXRRCrtcGamma;
  begin
    res := XRRGetScreenResourcesCurrent(dis, root_win);
    WriteLn(res^.ncrtc);

    for c := 0 to res^.ncrtc - 1 do begin
      crtcxid := res^.crtcs[c];
      size := XRRGetCrtcGammaSize(dis, crtcxid);
      crtc_gamma := XRRGetCrtcGamma(dis, crtcxid);
      WriteLn('size: ', size);
      for i := 0 to size - 1 do begin
        WriteLn(i: 5, '  red: ', crtc_gamma^.red[i], '  green: ', crtc_gamma^.green[i], '  blue: ', crtc_gamma^.blue[i]);
      end;
    end;
    XRRFreeGamma(crtc_gamma);
  end;

begin
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);

  root_win := XRootWindow(dis, 0);
  win := XCreateSimpleWindow(dis, root_win, 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
  XSelectInput(dis, win, KeyPressMask or ExposureMask);
  XStoreName(dis, win, 'Mein Fenster');
  XMapWindow(dis, win);

  gc := XCreateGC(dis, win, 0, nil);

  while (True) do begin
    XNextEvent(dis, @Event);
    case Event._type of
      Expose: begin
        Paint;
      end;
      KeyPress: begin
        case XLookupKeysym(@Event.xkey, 0) of
          XK_Escape: begin
            gamma:=$FFFF;
            SetGamma(Round( gamma));
            Break;
          end;
          XK_space: begin
            PrintGamma();
          end;
          XK_0: begin
            gamma := gamma*-1;
            SetGamma(Round( gamma));
          end;
          XK_p: begin
            gamma := gamma*2;
            SetGamma(Round( gamma));
          end;
          XK_m: begin
            gamma:=gamma / 2;
            SetGamma(Round( gamma));
          end;
          XK_BackSpace: begin
            gamma:=$FFFF;
            SetGamma(Round( gamma));
          end;
        end;
      end;
    end;
  end;

  XDestroyWindow(dis, win);
  XCloseDisplay(dis);
end.
