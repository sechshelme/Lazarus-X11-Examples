(*
*)
program Project1;

uses
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  x,
  randr,
  Xrandr;

var
  dis: PDisplay;
  win, root_win: TWindow;
  Event: TXEvent;
  scr, original_size_id: cint;
  original_rotation: TRotation;
  original_rate: cshort;
  conf: PXRRScreenConfiguration;

  procedure PrintInfo;
  var
    num_sizes, num_rates, major_v, minor_v: cint;
    xrrs: PXRRScreenSize;
    i, j: integer;
    rates: pcshort;
  begin
    XRRQueryVersion(dis,@major_v, @minor_v);
    WriteLn('Version:',major_v,'.',minor_v);

    xrrs := XRRSizes(dis, 0, @num_sizes);
    WriteLn('Anzahl Modus: ', num_sizes);
    for i := 0 to num_sizes - 1 do begin
      with xrrs[i] do begin
        Write('Nr:', i: 4, Width: 6, 'x', Height: 6, '   (', mwidth: 4, 'mm x', mheight: 4, 'mm )   ');
        rates := XRRRates(dis, 0, i, @num_rates);
        for j := 0 to num_rates - 1 do begin
          Write(rates[j], ' ');
        end;
        WriteLn();
      end;
    end;
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
  XSelectInput(dis, win, KeyPressMask);
  XStoreName(dis, win, 'Mein Fenster');
  XMapWindow(dis, win);

  conf:=XRRGetScreenInfo(dis,root_win);
  original_rate:=XRRConfigCurrentRate(conf);
  original_size_id:=XRRConfigCurrentConfiguration(conf,@original_rotation);

  // Ereignisschleife
  while (True) do begin
    XNextEvent(dis, @Event);
    case Event._type of
      KeyPress: begin
        // Beendet das Programm bei [ESC]
        case XLookupKeysym(@Event.xkey, 0) of
          XK_Escape: begin
            Break;
          end;
          XK_p: begin
            PrintInfo;
          end;
          xk_s: begin
            XRRSetScreenConfigAndRate(dis, conf, root_win, 1, RR_Rotate_0, 60, CurrentTime);
          end;
          XK_space: begin
            XRRSetScreenConfigAndRate(dis, conf, root_win,original_size_id, original_rotation, original_rate, CurrentTime);
          end;
        end;
      end;
    end;
  end;

  XDestroyWindow(dis, win);
  XCloseDisplay(dis);
end.

