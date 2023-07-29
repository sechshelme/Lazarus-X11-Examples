//image image.png
(*
Ausgabe von Bitmap
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
    image: PXImage;
    function CreateImage: PXImage;
    function CreateImage2: PXImage;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
  end;

  function TMyWin.CreateImage: PXImage;
  var
    p: PChar;
    visual: PVisual;
    x, y: integer;
  begin
    visual := DefaultVisual(dis, scr);


    with BitmapData do begin
      Width := 256;
      Height := 256;
      Getmem(Data, Width * Height * 4);

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
      Result := XCreateImage(dis, nil, DefaultDepth(dis, scr), ZPixmap, 0, Data, Width, Height, 32, 0);
//      Result := XCreateImage(dis, visual, 8, ZPixmap, 0, Data, Width, Height, XBitmapPad(dis), 0);
    end;
  end;

function TMyWin.CreateImage2: PXImage;
var
  p: PChar;
  x, y: integer;
  visual: PVisual;
begin
  visual := DefaultVisual(dis, scr);
  if visual^.c_class <> TrueColor then begin
    WriteLn('Kein TrueColor Modus');
    Halt(1);
  end;

  with BitmapData do begin
    Width := 256;
    Height := 256;
    Getmem(Data, Width * Height * 4);

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
    Result := XCreateImage(dis, visual, DefaultDepth(dis, scr), ZPixmap, 0, Data, Width, Height, 32, 0);
  end;
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
    win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 320, 320, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));

    image:=      CreateImage;

    XSelectInput(dis, win, KeyPressMask or ExposureMask);
    XMapWindow(dis, win);
  end;

  destructor TMyWin.Destroy;
  begin
    // Schliesst das Fenster
    XDestroyWindow(dis, win);

    // Schliesst Verbindung zum Server
    XCloseDisplay(dis);
    Freemem(BitmapData.Data);
    //    XDestroyImage(Image);
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
          case XLookupKeysym(@Event.xkey, 0) of
            XK_Escape: begin
              Break;
            end;
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
