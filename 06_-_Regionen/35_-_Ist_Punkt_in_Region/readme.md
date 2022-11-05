# 06 - Regionen
## 35 - Ist Punkt in Region

![image.png](image.png)

Prüft, mit **XPointInRegion(Region, x, y)**, ob die Maus in der Region ist.

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

  { TMyWin }

  TMyWin = class(TObject)
  private
    dis: PDisplay;
    scr: cint;
    win: TWindow;
    gc: TGC;
    Region: TRegion;
    procedure Draw(IsRegion: boolean);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
  end;

  procedure TMyWin.Draw(IsRegion: boolean);
  begin
    XClearWindow(dis, win);

    if IsRegion then begin
      XSetForeground(dis, gc, $FF0000);
    end else begin
      XSetForeground(dis, gc, $00FF00);
    end;
    XFillRectangle(dis, win, gc, 0, 0, 1000, 1000);
  end;

  constructor TMyWin.Create;
  var
    r: TXRectangle;

    function Rect(Left, Top, Width, Height: cshort): TXRectangle;
    begin
      Result.x := Left;
      Result.y := Top;
      Result.Width := Width;
      Result.Height := Height;
    end;

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
    //    XSelectInput(dis, win, ExposureMask or KeyPressMask or ButtonPressMask or PointerMotionMask or StructureNotifyMask);
    XSelectInput(dis, win, KeyPressMask or ExposureMask or ButtonReleaseMask or ButtonPressMask or StructureNotifyMask or PointerMotionMask or StructureNotifyMask);
    //    XSelectInput(dis, win, KeyPressMask or ExposureMask or PointerMotionMask);

    // Fenster anzeigen
    XMapWindow(dis, win);

    // -- Regionen generieren
    Region := XCreateRegion;

    // -- Mehrere Rechtecke addieren sich
    // 1. Region
    r := Rect(10, 10, 100, 100);
    XUnionRectWithRegion(@r, Region, Region);

    // 2. Region
    r := Rect(115, 10, 100, 100);
    XUnionRectWithRegion(@r, Region, Region);

    // 3. Region
    r := Rect(10, 115, 100, 100);
    XUnionRectWithRegion(@r, Region, Region);

    // 4. Region
    r := Rect(115, 115, 100, 100);
    XUnionRectWithRegion(@r, Region, Region);

    // Region in Display
    XSetRegion(dis, gc, Region);
  end;

  destructor TMyWin.Destroy;
  begin
    // Schliesst Verbindung zum Server
    XDestroyRegion(Region);
    XCloseDisplay(dis);
    inherited Destroy;
  end;

  procedure TMyWin.Run;
  var
    Event: TXEvent;
    x, y: cint;

  begin
    // Ereignisschleife
    while (True) do begin
      XNextEvent(dis, @Event);

      case Event._type of
        Expose: begin
          Draw(False);
        end;
        KeyPress: begin
          // Beendet das Programm bei [ESC]
          if XLookupKeysym(@Event.xkey, 0) = XK_Escape then begin
            Break;
          end;
        end;
        MotionNotify: begin
          x := Event.xbutton.x;
          y := Event.xbutton.y;
          Draw(XPointInRegion(Region, x, y));
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


