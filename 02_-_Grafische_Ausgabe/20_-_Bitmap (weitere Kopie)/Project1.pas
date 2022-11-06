//image image.png
(*
Kreise und Elipsen zeichnen:

- [XDrawArc](https://tronche.com/gui/x/xlib/graphics/drawing/XDrawArc.html)
- [XFill](https://tronche.com/gui/x/xlib/graphics/filling-areas/XFillArc.html)
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

type
  TBitMapData = record
    Width, Height: integer;
  end;

  TByteArray = array of byte;

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
    function CreateTrueColorImage(Adis: PDisplay; Avisual: PVisual; AWidth, AHeight: integer): PXImage;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
  end;

  //function TMyWin.CreateTrueColorImage(Adis: PDisplay; Avisual: PVisual; AWidth, AHeight: integer): PXImage;
  //var
  //  image32: array of byte;
  //  i, j, z: integer;
  //begin
  //  z := 0;
  //  SetLength(image32, AWidth * AHeight * 4);
  //  for i := 0 to AHeight - 1 do begin
  //    for j := 0 to AWidth - 1 do begin
  //        image32[z] := i * j;
  //        Inc(z);
  //        image32[z] := i * j;
  //        Inc(z);
  //        image32[z] := i * j;
  //        Inc(z);
  //      Inc(z);
  //    end;
  //  end;
  //  Result := XCreateImage(Adis, Avisual, DefaultDepth(dis, DefaultScreen(Adis)), ZPixmap, 0, PChar(image32), AWidth, AHeight, 32, 0);
  //end;
  function TMyWin.CreateTrueColorImage(Adis: PDisplay; Avisual: PVisual; AWidth, AHeight: integer): PXImage;
  var
    image32: array of array of record
    r, g, b, a: byte;
    end;
    x, y: integer;
  begin
    SetLength(image32, AWidth, AHeight);
    for y := 0 to AHeight - 1 do begin
      for x := 0 to AWidth - 1 do begin
        image32[y, x].r := $BB;
        image32[y, x].g := $BB;
        image32[y, x].b := $BB;
        image32[y, x].a := $BB;
      end;
    end;
    Result := XCreateImage(Adis, Avisual, DefaultDepth(dis, DefaultScreen(Adis)), ZPixmap, 0, PChar(image32), AWidth, AHeight, 32, 0);
  end;

  constructor TMyWin.Create;
  begin
    inherited Create;
    with BitmapData do begin
      Width := 256;
      Height := 256;
    end;

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

    image := CreateTrueColorImage(dis, visual, BitmapData.Width, BitmapData.Height);

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
  begin
    // Ereignisschleife
    while (True) do begin
      XNextEvent(dis, @Event);

      case Event._type of
        Expose: begin
          XClearWindow(dis, win);
          XPutImage(dis, win, gc, image, 0, 0, 0, 0, BitmapData.Width, BitmapData.Height);

          //          XReadBitmapFile(dis,win,gc,'image.png', w,h, br);
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
//code-
