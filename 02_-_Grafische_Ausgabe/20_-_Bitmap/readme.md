# 02 - Grafische Ausgabe
## 20 - Bitmap

![image.png](image.png)

Kreise und Elipsen zeichnen:

- [XDrawArc](https://tronche.com/gui/x/xlib/graphics/drawing/XDrawArc.html)
- [XFill](https://tronche.com/gui/x/xlib/graphics/filling-areas/XFillArc.html)

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
  TBitMapData = record
    Width, Height: integer;
    Data: PChar;
  end;

  { TMyWin }

  TMyWin = class(TObject)
  private
    dis: PDisplay;
    scr: cint;
    win: TWindow;
    gc: TGC;
    BitmapData: TBitMapData;
    visual: PVisual;
    image: PXImage;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
  end;


  constructor TMyWin.Create;
  var
    x, y: integer;
    p: PChar;

  begin

    inherited Create;
    with BitmapData do begin
      Width := 512;
      Height := 512;
      Getmem(Data, Width * Height * 4);

      // Erstellt die Verbindung zum Server
      dis := XOpenDisplay(nil);
      if dis = nil then begin
        WriteLn('Kann nicht das Display öffnen');
        Halt(1);
      end;
      scr := DefaultScreen(dis);
      gc := DefaultGC(dis, scr);
      win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 640, 480, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));

      visual := DefaultVisual(dis, scr);
      if visual^.c_class <> TrueColor then begin
        WriteLn('Kein TrueColor Modus');
        Halt(1);
      end;

      p := Data;
      for y := 0 to Height - 1 do begin
        for x := 0 to Width - 1 do begin
          p^ := char(x * y);
          Inc(p);
          p^ := char(y);
          Inc(p);
          p^ := char(x);
          Inc(p);
          p^ := #00;
          Inc(p);
        end;
      end;
      image := XCreateImage(dis, visual, DefaultDepth(dis, scr), ZPixmap, 0, Data, Width, Height, 32, 0);
    end;

    XSelectInput(dis, win, KeyPressMask or ExposureMask);
    XMapWindow(dis, win);
  end;

  destructor TMyWin.Destroy;
  begin
    // Schliesst Verbindung zum Server
    XCloseDisplay(dis);
    Freemem(BitmapData.Data);
    inherited Destroy;
  end;

  procedure TMyWin.Run;
  var
    Event: TXEvent;
  begin
    // Ereignisschleife
    while (True) do begin
      XNextEvent(dis, @Event);

      case Event._type of
        Expose: begin
          XClearWindow(dis, win);
          XPutImage(dis, win, gc, image, 0, 0, 10, 10, BitmapData.Width, BitmapData.Height);
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


