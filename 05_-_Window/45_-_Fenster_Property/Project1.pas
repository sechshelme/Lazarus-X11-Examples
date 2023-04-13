//image image.png
(*
Man kann wechseln zwischen anzeigen und verbergen des Fensters.
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
  win, Subwin: TWindow;
  Event: TXEvent;
  scr: cint;
  gc: TGC;

const
  EventMask = KeyPressMask or ExposureMask or PointerMotionMask or ButtonPressMask;

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
  XStoreName(dis, win, 'Sub-Fenster'); // Fenster-Titel, geht nur bei Haupt-Fenster

  Subwin := XCreateSimpleWindow(dis, win, 250, 80, 320, 240, 4, BlackPixel(dis, scr), $8888FF);

  // Es werden Events für Zeichen, Maus und Tastatur gebraucht.
  XSelectInput(dis, win, EventMask);
  XSelectInput(dis, Subwin, EventMask);

  // Fenster anzeigen
  XMapWindow(dis, win);
  XMapWindow(dis, Subwin);

  // Ereignisschleife
  while (True) do begin
    XNextEvent(dis, @Event);

    case Event._type of
      Expose: begin
        if Event.xexpose.window = Subwin then begin
          XClearWindow(dis, Subwin);
          XDrawString(dis, Subwin, gc, 10, 20, 'Sub Fenster', 11);
        end;
      end;
      KeyPress: begin
        case XLookupKeysym(@Event.xkey, 0) of
          // Beendet das Programm bei [ESC]
          XK_Escape: begin
            Break;
          end;
          XK_1: begin
            XSetWindowBorderWidth(dis, Subwin, 15);
            XSetWindowBorder(dis, Subwin, $0000FF);
          end;
          XK_2: begin
            XSetWindowBorderWidth(dis, Subwin, 5);
            XSetWindowBorder(dis, Subwin, $FF0000);
          end;
        end;
      end;
    end;
  end;

  // Schliesst die Fenster
  XDestroyWindow(dis, Subwin);
  XDestroyWindow(dis, win);

  // Schliesst Verbindung zum Server
  XCloseDisplay(dis);
end.
//code-
