//image image.png
(*
Es ist möglich ein Fenster innerhalb eine anderen zu erzeugen.
Bei GUI-Anwendungen ist dies in der Regel der Fall.
Jedes **Panel**, **Button**, etc. sind eigene Fenster.
Dies ist auch rekursiv möglich. ZB. Ein Button in einem Panel und dieses dann im Hauptfenster.
Dafür muss man bei **XCreateSimpleWindow** anstelle des Rootwindow, das Parent-Fenster angeben.
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
  win, Subwin1, Subwin2, Subwin: TWindow;
  Event: TXEvent;
  scr: cint;
  gc: TGC;
  i: integer;

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

  // Zwei Subfenster
  Subwin1 := XCreateSimpleWindow(dis, win, 10, 10, 320, 240, 1, BlackPixel(dis, scr), $FF8888);
  Subwin2 := XCreateSimpleWindow(dis, win, 250, 80, 320, 240, 1, BlackPixel(dis, scr), $88FF88);

  Subwin := XCreateSimpleWindow(dis, Subwin1, 10, 10, 100, 80, 1, BlackPixel(dis, scr), $8888FF);

  // Es werden Events für Zeichen, Maus und Tastatur gebraucht.
  XSelectInput(dis, win, EventMask);
  XSelectInput(dis, Subwin1, EventMask);
  XSelectInput(dis, Subwin2, EventMask);
  XSelectInput(dis, Subwin, EventMask);

  // Fenster anzeigen
  XMapWindow(dis, win);
  XMapWindow(dis, Subwin1);
  XMapWindow(dis, Subwin2);
  XMapWindow(dis, Subwin);

  // Ereignisschleife
  while (True) do begin
    XNextEvent(dis, @Event);

    case Event._type of
      Expose: begin
        XDrawString(dis, Subwin, gc, 10, 20, 'Sub Fenster', 11);
      end;
      KeyPress: begin
        // Beendet das Programm bei [ESC]
        case XLookupKeysym(@Event.xkey, 0) of
          XK_Escape: begin
            Break;
          end;
          XK_1: begin
            XReparentWindow(dis, Subwin, Subwin1, 10, 10);
          end;
          XK_2: begin
            XReparentWindow(dis, Subwin, Subwin2, 10, 10);
          end;
        end;
      end;
    end;
  end;

  // Schliesst die Fenster
  XDestroyWindow(dis, Subwin);
  XDestroyWindow(dis, Subwin2);
  XDestroyWindow(dis, Subwin1);
  XDestroyWindow(dis, win);

  // Schliesst Verbindung zum Server
  XCloseDisplay(dis);
end.
//code-
