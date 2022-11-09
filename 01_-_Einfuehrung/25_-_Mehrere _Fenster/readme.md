# 01 - Einfuehrung
## 25 - Mehrere  Fenster

![image.png](image.png)

Erstes Fenster mit **X11** wird erstellt.
Es wird nur ein einziges Eregniss gebraucht.
Ein Tastatur-Event, welches **[ESC]** abfängt und das Programm beendet.

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
  win1,win2 :TWindow;
  Event: TXEvent;
  scr: cint;

begin
  // Erstellt die Verbindung zum Server
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);

  // Erstellt das Fenster
  win1 := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
//  win2 := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
  win2 := XCreateSimpleWindow(dis, win1, 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));

  // Wählt die gewünschten Ereignisse aus
  // Es wird nur das Tastendrückereigniss **KeyPressMask** gebraucht.
  XSelectInput(dis, win1, KeyPressMask or ExposureMask);
  XSelectInput(dis, win2, KeyPressMask or ExposureMask);

  // Fenster anzeigen
  XMapWindow(dis, win1);
  XMapWindow(dis, win2);

  // Ereignisschleife
  while (True) do begin
    XNextEvent(dis, @Event);

    case Event._type of
      Expose:begin
//        XSetForeground(dis, gc, Random(Random($FF));
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


