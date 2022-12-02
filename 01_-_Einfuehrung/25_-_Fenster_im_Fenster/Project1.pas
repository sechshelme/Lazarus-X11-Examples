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
  win, Subwin1, Subwin2: TWindow;
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
  Subwin1 := XCreateSimpleWindow(dis, win, 100, 100, 320, 240, 10, BlackPixel(dis, scr), WhitePixel(dis, scr));
  Subwin2 := XCreateSimpleWindow(dis, win, 250, 80, 320, 240, 0, BlackPixel(dis, scr), WhitePixel(dis, scr));

  // Border-Breite nachträglich festlegen, geht nur bei Sub-Fenster
  XSetWindowBorderWidth(dis, Subwin2, 15);

  // Es werden Events für Zeichen, Maus und Tastatur gebraucht.
  XSelectInput(dis, win, EventMask);
  XSelectInput(dis, Subwin1, EventMask);
  XSelectInput(dis, Subwin2, EventMask);

  // Fenster anzeigen
  XMapWindow(dis, win);
  XMapWindow(dis, Subwin1);
  XMapWindow(dis, Subwin2);

  // Ereignisschleife
  while (True) do begin
    XNextEvent(dis, @Event);

    case Event._type of
      Expose: begin
        XClearWindow(dis, win);
        XClearWindow(dis, Subwin1);
        for i := 0 to 100 do begin
          XSetForeground(dis, gc, $FF);
          XDrawArc(dis, win, gc, random(500) - 200, random(500) - 200, 150, 150, 0, 360 * 64);

          XSetForeground(dis, gc, $FF shl 8);
          XDrawArc(dis, Subwin1, gc, random(500) - 200, random(500) - 200, 150, 150, 0, 360 * 64);

          XSetForeground(dis, gc, $FF shl 16);
          XDrawArc(dis, Subwin2, gc, random(500) - 200, random(500) - 200, 150, 150, 0, 360 * 64);
        end;
      end;
      MotionNotify: begin
        // In welchem Fenster bewegt sich die Maus
        if Event.xbutton.window = win then begin
          WriteLn('root');
        end;
        if Event.xbutton.window = Subwin1 then begin
          WriteLn('Sub1');
        end;
        if Event.xbutton.window = Subwin2 then begin
          WriteLn('Sub2');
        end;
      end;
      ButtonPress: begin
        // Angeklicktes Fenster zuoberst
        XRaiseWindow(dis, Event.xbutton.window);
      end;

      KeyPress: begin
        // Beendet das Programm bei [ESC]
        if XLookupKeysym(@Event.xkey, 0) = XK_Escape then begin
          Break;
        end;
      end;
    end;
  end;

  // Schliesst Verbindung zum Server
  XCloseDisplay(dis);
end.
//code-
