# 70 - Regionen
## 00 - Region

![image.png](image.png)

Mit Regionen kann man Bereiche definieren, in denen gezeichnet wird.
Hier im Beispiel ein einfaches Rechteck.

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
    Region: TRegion;
    r: TXRectangle;
    i: integer;

  begin
    // Ereignisschleife
    while (True) do begin
      XNextEvent(dis, @Event);

      case Event._type of
        Expose: begin
          XClearWindow(dis, win);

          Region := XCreateRegion;

          // Region erzeugen
          //          r := Rect(10, 10, -1, -10);
          r.x := 10;
          r.y := 10;
          r.Width :=  100;
          r.Height := 100;
          XUnionRectWithRegion(@r, Region, Region);

          XSetRegion(dis, gc, Region);
          XDestroyRegion(Region);


          // Kreise zeichnen
          for i := 0 to 100 do begin
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


