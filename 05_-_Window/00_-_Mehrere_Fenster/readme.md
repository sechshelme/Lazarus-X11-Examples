# 01 - Einfuehrung
## 20 - Mehrere Fenster

![image.png](image.png)

Man kann auch mehrere Fenster erzeugen, so wie es Lazarus zB. auch tut.

---

```pascal
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
  win1, win2, win3, rw: TWindow;
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
  rw := RootWindow(dis, scr);

  // Erstellt die Fenster
  win1 := XCreateSimpleWindow(dis, rw, 10, 10, 640, 480, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
  XStoreName(dis, win1, 'Fenster 1'); // Fenster-Titel

  win2 := XCreateSimpleWindow(dis, rw, 100, 100, 320, 240, 10, BlackPixel(dis, scr), WhitePixel(dis, scr));
  XStoreName(dis, win2, 'Fenster 2'); // Fenster-Titel

  win3 := XCreateSimpleWindow(dis, rw, 250, 80, 320, 240, 0, BlackPixel(dis, scr), WhitePixel(dis, scr));
  XStoreName(dis, win3, 'Fenster 3'); // Fenster-Titel

  // Es werden Events für Zeichen, Maus und Tastatur gebraucht.
  XSelectInput(dis, win1, EventMask);
  XSelectInput(dis, win2, EventMask);
  XSelectInput(dis, win3, EventMask);

  // Fenster anzeigen
  XMapWindow(dis, win1);
  XMapWindow(dis, win2);
  XMapWindow(dis, win3);

  // Ereignisschleife
  while (True) do begin
    XNextEvent(dis, @Event);

    case Event._type of
      Expose: begin
        for i := 0 to 100 do begin
          if Event.xexpose.window = win1 then begin
            XSetForeground(dis, gc, $FF);
            XDrawArc(dis, win1, gc, random(500) - 200, random(500) - 200, 150, 150, 0, 360 * 64);
          end;

          if Event.xexpose.window = win2 then begin
            XSetForeground(dis, gc, $FF shl 8);
            XDrawArc(dis, win2, gc, random(500) - 200, random(500) - 200, 150, 150, 0, 360 * 64);
          end;

          if Event.xexpose.window = win3 then begin
            XSetForeground(dis, gc, $FF shl 16);
            XDrawArc(dis, win3, gc, random(500) - 200, random(500) - 200, 150, 150, 0, 360 * 64);
          end;
        end;
      end;
      MotionNotify: begin
        // In welchem Fenster bewegt sich die Maus
        if Event.xbutton.window = win1 then begin
          WriteLn('Fenster 1');
        end;
        if Event.xbutton.window = win2 then begin
          WriteLn('Fenster 2');
        end;
        if Event.xbutton.window = win3 then begin
          WriteLn('Fenster 3');
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
```


