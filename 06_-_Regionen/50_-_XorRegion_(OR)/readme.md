# 06 - Regionen
## 50 - XorRegion (OR)

![image.png](image.png)

Zwei Regionen mit **XOR** Verknüpfen
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

type
  TMyWin = class(TObject)
  private
    dis: PDisplay;
    scr: cint;
    win: TWindow;
    gc: TGC;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
  end;

  constructor TMyWin.Create;
  begin
    inherited Create;

    // Erstellt die Verbindung zum Server
    dis := XOpenDisplay(nil);
    if dis = nil then begin
      WriteLn('Kann nicht das Display öffnen');
      Halt(1);
    end;
    scr := DefaultScreen(dis);
    gc := DefaultGC(dis, scr);

    // Erstellt das Fenster
    win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));

    // Wählt die gewünschten Ereignisse aus
    // Es werden die Ereignisse **KeyPressMask** und **ExposureMask** für die grafische Auzsgabe gebraucht.
    XSelectInput(dis, win, KeyPressMask or ExposureMask);

    // Fenster anzeigen
    XMapWindow(dis, win);
  end;

  destructor TMyWin.Destroy;
  begin
    // Schliesst Verbindung zum Server
    XCloseDisplay(dis);
    inherited Destroy;
  end;

  procedure TMyWin.Run;
  var
    Event: TXEvent;
    Region1, Region2, Region3: TRegion;
    r: TXRectangle;
    i: integer;

    function Rect(Left, Top, Width, Height: cshort): TXRectangle;
    begin
      Result.x := Left;
      Result.y := Top;
      Result.Width := Width;
      Result.Height := Height;
    end;

  begin
    while True do begin
      XNextEvent(dis, @Event);

      case Event._type of
        Expose: begin
          XClearWindow(dis, win);

          // Region 1
          Region1 := XCreateRegion;
          r := Rect(10, 10, 100, 100);
          WriteLn(XEmptyRegion(Region1));
          XUnionRectWithRegion(@r, Region1, Region1);
          WriteLn(XEmptyRegion(Region1));

          // Region 2
          Region2 := XCreateRegion;
          r := Rect(60, 60, 100, 100);
          XUnionRectWithRegion(@r, Region2, Region2);

          // Die beiden Regionen als **xor** verknüpfen.
          Region3 := XCreateRegion;
          XXorRegion(Region1, Region2, Region3);

          // Die verknüpfte Region am Display übergeben
          XSetRegion(dis, gc, Region3);

          // Regionen freigeben
          XDestroyRegion(Region1);
          XDestroyRegion(Region2);
          XDestroyRegion(Region3);

          // Kreise als Demo zeichnen
          for i := 0 to 1000 do begin
            XSetForeground(dis, gc, Random($FFFFFF));
            XDrawArc(dis, win, gc, random(500) - 200, random(500) - 200, 150, 150, 0, 360 * 64);
          end;

        end;
        KeyPress: begin

          // Beendet das Programm bei [ESC]
          if XLookupKeysym(@Event.xkey, 0) = XK_Escape then begin
            Break;
          end;
        end;
      end;

    end;
  end;

var
  MyWindows: TMyWin;

begin
  MyWindows := TMyWin.Create;
  MyWindows.Run;
  MyWindows.Free;
end.
```


