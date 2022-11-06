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

  function TMyWin.CreateTrueColorImage(Adis: PDisplay; Avisual: PVisual; AWidth, AHeight: integer): PXImage;
  var
    image32: array of byte;
    //    p: PChar=^image;
    i, j, z: integer;
  begin
    z := 0;
    SetLength(image32, AWidth * AHeight);
    for i := 0 to AHeight - 1 do begin
      for j := 0 to AWidth - 1 do begin
        if (i < 256) and (j < 256) then begin
          image32[z] := Random($FF);
          Inc(z);
          image32[z] := Random($FF);
          Inc(z);
          image32[z] := Random($FF);
          Inc(z);
        end else begin
          image32[z] := Random($FF);
          Inc(z);
          image32[z] := Random($FF);
          Inc(z);
          image32[z] := Random($FF);
          Inc(z);
        end;
        Inc(z);
      end;
    end;
    Result := XCreateImage(Adis, Avisual, DefaultDepth(dis, DefaultScreen(Adis)), ZPixmap, 0, PChar(image32), AWidth, AHeight, 32, 0);
  end;

  constructor TMyWin.Create;
  begin
    inherited Create;
    with BitmapData do begin
      Width := 512;
      Height := 512;
    end;

    // Erstellt die Verbindung zum Server
    dis := XOpenDisplay(nil);
    if dis = nil then begin
      WriteLn('Kann nicht das Display öffnen');
      Halt(1);
    end;
    scr := DefaultScreen(dis);
    gc := DefaultGC(dis, scr);

    win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
    visual := DefaultVisual(dis, scr);
    if visual^.c_class <> TrueColor then begin
      WriteLn('Kein TrueColor Modus');
      Halt(1);
    end;

    image := CreateTrueColorImage(dis, visual, BitmapData.Width, BitmapData.Height);


    // Erstellt das Fenster

    // Wählt die gewünschten Ereignisse aus
    // Es werden die Ereignisse <b>KeyPressMask</b> und <b>ExposureMask</b> für die grafische Auzsgabe gebraucht.
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
    w: PPcuchar;
    h, br: Pcint;
    xhr, yhr: integer;
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
