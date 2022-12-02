# 01 - Einfuehrung
## 30 - GC

![image.png](image.png)

Im **GC** sind die verschiedenen Parameter, wie Linienbreite, Farbe, etc., für die Grafik-Ausgabe festgelegt.
Anstelle, das man immer die Parameter ändert, erzeugt man mit **XCreateGC** verschiedene **GC**.
ZB. für jedes Fenster einen eigenen.


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
  win, Subwin1, Subwin2: TWindow;
  Event: TXEvent;
  gc, Subgc1, Subgc2: TGC;
  i: integer;
  values: PXGCValues = nil;

const
  EventMask = KeyPressMask or ExposureMask or PropertyChangeMask or StructureNotifyMask;

begin
  // Erstellt die Verbindung zum Server
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;

  // Erstellt die Fenster
  win := XCreateSimpleWindow(dis, RootWindow(dis, DefaultScreen(dis)), 10, 10, 640, 480, 30, $FF, $88);
  Subwin1 := XCreateSimpleWindow(dis, win, 100, 100, 320, 240, 10, $FF00, $8800);
  Subwin2 := XCreateSimpleWindow(dis, Subwin1, 250, 100, 320, 240, 0, $FF0000, $880000);
  XSetWindowBorderWidth(dis, Subwin2, 15);

  // Die verschiedenen GC erzeugen.
  gc := XCreateGC(dis, win, 0, values);
  Subgc1 := XCreateGC(dis, Subwin1, 0, values);
  Subgc2 := XCreateGC(dis, Subwin2, 0, values);

  // Event-Handler festlegen
  XSelectInput(dis, win, EventMask);
  XSelectInput(dis, Subwin1, EventMask);
  XSelectInput(dis, Subwin2, EventMask);

  // Fenster anzeigen
  XMapWindow(dis, win);
  XMapWindow(dis, Subwin1);
  XMapWindow(dis, Subwin2);


  // Parameter in den verschiedenen GC festlegen.
  XSetForeground(dis, gc, $FF);

  XSetForeground(dis, Subgc1, $FF shl 8);
  XSetBackground(dis, Subgc1, $88 shl 8);
  XSetLineAttributes(dis, Subgc1, 3, LineDoubleDash, CapNotLast, JoinBevel);

  XSetForeground(dis, Subgc2, $FF shl 16);
  XSetLineAttributes(dis, Subgc2, 12, LineSolid, CapButt, JoinBevel);


  // Ereignisschleife
  while (True) do begin
    XNextEvent(dis, @Event);

    case Event._type of
      Expose: begin
        XClearWindow(dis, Subwin2);
        for i := 0 to 10 do begin
          XDrawArc(dis, win, gc, random(800) - 200, random(800) - 200, 150, 150, 0, 360 * 64);
          XDrawArc(dis, Subwin1, Subgc1, random(500) - 200, random(500) - 200, 150, 150, 0, 360 * 64);
          XDrawArc(dis, Subwin2, Subgc2, random(250) - 20, random(250) - 20, 100, 100, 0, 360 * 64);
        end;
      end;
      MotionNotify: begin
      end;
      ButtonPress: begin
        Write('press');
        XRaiseWindow(dis, Event.xbutton.window);
      end;
      PropertyNotify: begin
        if Event.xproperty.window = win then begin
          WriteLn('state: ', Event.xproperty.state);
        end;

      end;
      ConfigureNotify: begin
        with Event.xconfigure do begin
        end;

        if Event.xbutton.window = win then begin
          with Event.xconfigure do begin
            XMoveResizeWindow(dis, Subwin1, 50, 50, Width - 100, Height - 100);
          end;
        end;

        if Event.xbutton.window = Subwin1 then begin
          with Event.xconfigure do begin
            WriteLn('mone');
            XMoveWindow(dis, Subwin2, Width - x - 400, Height - y - 300);
          end;
        end;
        if Event.xconfigure.window = win then begin
        end;

      end;
      KeyPress: begin
        // Beendet das Programm bei [ESC]
        if XLookupKeysym(@Event.xkey, 0) = XK_Escape then begin
          Break;
        end;
        if Event.xbutton.window = win then  begin
          case XLookupKeysym(@Event.xkey, 0) of
            XK_Return: begin
              XMoveResizeWindow(dis, win, 300, 300, 600, 600);
            end;
            XK_space: begin
              //           XMoveResizeWindow(dis, win, 100, 100, 200, 200);
              XResizeWindow(dis, win, 500, 500);
            end;
            XK_Tab: begin
              //           XMoveResizeWindow(dis, win, 100, 100, 200, 200);
              XMoveWindow(dis, win, 100, 100);
            end;
          end;
        end;
      end;
    end;

  end;

  // Schliesst Verbindung zum Server
  XCloseDisplay(dis);
end.
```


