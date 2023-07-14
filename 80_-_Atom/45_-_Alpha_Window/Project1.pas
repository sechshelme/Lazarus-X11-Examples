//image image.png
(*
*)
//lineal
//code+
program Project1;

uses
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  x;

var
  dis: PDisplay;
  win: TWindow;
  Event: TXEvent;
  scr: cint;
  gc: TGC;
  i: integer;

const
  EventMask = KeyPressMask or ExposureMask or PointerMotionMask or ButtonPressMask;

  procedure SetAlphaWindow(Alpha: byte);
  var
    tmpAlpha: PtrUInt;
    XA__NET_WM_WINDOW_OPACITY, XA_CARDINAL: TAtom;
  begin
    XA__NET_WM_WINDOW_OPACITY := XInternAtom(dis, '_NET_WM_WINDOW_OPACITY', True);
    if XA__NET_WM_WINDOW_OPACITY = 0 then begin
      WriteLn('Funktion "_NET_WM_WINDOW_OPACITY" nicht unterstützt !');
      Exit;
    end;
    XA_CARDINAL := XInternAtom(dis, 'CARDINAL', True);
    WriteLn(XA__NET_WM_WINDOW_OPACITY);
    WriteLn(XA_CARDINAL);

    tmpAlpha := Alpha shl 24;
    XChangeProperty(dis, win, XA__NET_WM_WINDOW_OPACITY, XA_CARDINAL, 32, PropModeReplace, @tmpAlpha, 1);
  end;

begin
  // Erstellt die Verbindung zum Server
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);
  gc := DefaultGC(dis, scr);

  // Erstellt das Haupt-Fenster
  win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 640, 480, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
  XStoreName(dis, win, 'Aplph-Blending');

  // Es werden Events für Zeichen, Maus und Tastatur gebraucht.
  XSelectInput(dis, win, EventMask);

  // Fenster anzeigen
  XMapWindow(dis, win);

  // Alpha-Blending aktivieren
  SetAlphaWindow(128);

  // Ereignisschleife
  while (True) do begin
    XNextEvent(dis, @Event);

    case Event._type of
      Expose: begin
        if Event.xexpose.window = win then begin
          XClearWindow(dis, win);
          for i := 0 to 100 do begin
            XSetForeground(dis, gc, $FF);
            XDrawArc(dis, win, gc, random(500) + 50, random(500) + 50, 150, 150, 0, 360 * 64);
          end;
        end;
      end;
      KeyPress: begin
        case XLookupKeysym(@Event.xkey, 0) of
          XK_Escape: begin
            Break;
          end;
          xk_1: begin
            SetAlphaWindow(64);
          end;
          xk_2: begin
            SetAlphaWindow(128);
          end;
          xk_3: begin
            SetAlphaWindow(192);
          end;
          xk_4: begin
            SetAlphaWindow(255);
          end;
        end;
      end;
    end;
  end;

  // Schliesst die Fenster
  XDestroyWindow(dis, win);

  // Schliesst Verbindung zum Server
  XCloseDisplay(dis);
end.
//code-
