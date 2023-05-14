//image image.png
(*
Den Fensterrand kann man auch mit einer Bitmap befüllen.
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
  TxbmMask = record
    Width, Height: cuint;
    bits: array of byte;
  end;

const
  hand: TxbmMask = (Width: 16; Height: 16; bits: (
    $80, $01, $58, $0e, $64, $12, $64, $52, $48, $b2, $48, $92,
    $16, $90, $19, $80, $11, $40, $02, $40, $04, $40, $04, $20,
    $08, $20, $10, $10, $20, $10, $20, $10));

type

  { TMyWin }

  TMyWin = class(TObject)
  private
    dis: PDisplay;
    scr: cint;
    win: TWindow;
    subwin1, subwin2: TWindow;
    gc: TGC;
    Pitmap1, Pitmap2: TPixmap;
    procedure DrawBitmap(bit: TPixmap; x, y: cint; mono: boolean = False);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
    function CreateImageFromBitmap: TPixmap;
    function CreateImage: TPixmap;
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
    win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 640, 480, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));

    subwin1 := XCreateSimpleWindow(dis, win, 100, 100, 100, 100, 30, BlackPixel(dis, scr), WhitePixel(dis, scr));
    subwin2 := XCreateSimpleWindow(dis, win, 320, 100, 100, 100, 50, BlackPixel(dis, scr), WhitePixel(dis, scr));

    XSelectInput(dis, win, KeyPressMask or ExposureMask);
    XSelectInput(dis, subwin1, KeyPressMask or ExposureMask);
    XSelectInput(dis, subwin2, KeyPressMask or ExposureMask);

    XMapWindow(dis, win);
    XMapWindow(dis, subwin1);
    XMapWindow(dis, subwin2);

    Pitmap1 := CreateImageFromBitmap;
    XSetWindowBorderPixmap(dis, subwin1, Pitmap1);

    Pitmap2 := CreateImage;
    XSetWindowBorderPixmap(dis, subwin2, Pitmap2);
    XSetWindowBackgroundPixmap(dis,subwin2, Pitmap1);
  end;

  destructor TMyWin.Destroy;
  begin
    // Schliesst das Fenster
    XDestroyWindow(dis, win);

    // Schliesst Verbindung zum Server
    XFreePixmap(dis, Pitmap1);
    XCloseDisplay(dis);
    inherited Destroy;
  end;

  procedure TMyWin.DrawBitmap(bit: TPixmap; x, y: cint; mono: boolean);
  var
    root: TWindow;
    x1, y1: cint;
    Width, Height, border_width, depth: cuint;
  begin
    XGetGeometry(dis, bit, @root, @x1, @y1, @Width, @Height, @border_width, @depth);
    if mono then begin
      XCopyPlane(dis, bit, win, gc, 0, 0, Width, Height, x, y, 1);
    end else begin
      XCopyArea(dis, bit, win, gc, 0, 0, Width, Height, x, y);
    end;
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
          if Event.xexpose.window = win then begin
            XClearWindow(dis, win);
            // Drawable in Window kopieren
            DrawBitmap(Pitmap1, 0, 0);

            // Monochrom
            DrawBitmap(Pitmap1, 100, 100, True);
          end;
          if Event.xexpose.window = subwin1 then begin
            XClearWindow(dis, subwin1);

            XSetForeground(dis, gc, $FF0000);
            XDrawRectangle(dis, subwin1, gc, 10, 10, 80, 80);
          end;
          if Event.xexpose.window = subwin2 then begin
            XClearWindow(dis, subwin1);

            XSetForeground(dis, gc, $00FF00);
            XDrawRectangle(dis, subwin2, gc, 20, 20, 60, 60);
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

  function TMyWin.CreateImageFromBitmap: TPixmap;
  begin
    Result := XCreatePixmapFromBitmapData(dis, win, PChar(hand.bits), hand.Width, hand.Height, $88FF88, $FF8888, DefaultDepth(dis, scr));
    XSetForeground(dis, gc, $0);
    XDrawLine(dis, Result, gc, 0, 0, hand.Width, hand.Height);
    XDrawLine(dis, Result, gc, 0, hand.Width, hand.Height, 0);
  end;

  function TMyWin.CreateImage: TPixmap;
  var
    i: integer;
    Width: cuint = 32;
    Height: cuint = 32;
  begin
    // Die Drawable erzeugen.
    Result := XCreatePixmap(dis, win, Width, Height, DefaultDepth(dis, scr));

    // Drawable mit einer Farbe ausfüllen
    XSetForeground(dis, gc, $88FFFF);
    XFillRectangle(dis, Result, gc, 0, 0, Width, Height);
    // Ein Muster reinzeichnen
    for i := 0 to 3 do begin
      XSetLineAttributes(dis, gc, i, LineSolid, CapButt, JoinBevel);
      XSetForeground(dis, gc, random($FFFFFF));
      XDrawRectangle(dis, Result, gc, i * 3, i * 3, 100, 100);
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
