//image image.png
(*
Eine Bitmap laden, nur Monocrom.
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

// /usr/lib/tkdesk/images/xbm/hand.xbm

const
  hand_width = 16;
  hand_height = 16;
  hand_x_hot = 3;
  hand_y_hot = 2;
  hand_bits: array of byte = (
    $80, $01, $58, $0e, $64, $12, $64, $52, $48, $b2, $48, $92,
    $16, $90, $19, $80, $11, $40, $02, $40, $04, $40, $04, $20,
    $08, $20, $10, $10, $20, $10, $20, $10);

type
  TBitmap = record
    Width, Height: cuint;
    Drawable: TPixmap;
  end;

  TMyWin = class(TObject)
  private
    dis: PDisplay;
    scr: cint;
    win: TWindow;
    gc: TGC;
    visual: PVisual;
    Bitmap: TBitmap;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
    procedure CreatePixmap;
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

    visual := DefaultVisual(dis, scr);
    if visual^.c_class <> TrueColor then begin
      WriteLn('Kein TrueColor Modus');
      Halt(1);
    end;

    XSelectInput(dis, win, KeyPressMask or ExposureMask);
    XMapWindow(dis, win);
    CreatePixmap;
  end;

  destructor TMyWin.Destroy;
  begin
    // Schliesst das Fenster
    XDestroyWindow(dis, win);

    // Schliesst Verbindung zum Server
    XFreePixmap(dis, Bitmap.Drawable);
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
          with Bitmap do begin
            XCopyPlane(dis, Drawable, win, gc, 0, 0, Width, Height, 0, 0, 1);
            //                       XCopyArea(dis, Drawable, win, gc, 0, 0, Width, Height, 10, 10);
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

  procedure TMyWin.CreatePixmap;
  begin
    with Bitmap do begin
      Drawable := XCreateBitmapFromData(dis, win, PChar(hand_bits), hand_width, hand_height);
      Width := hand_width;
      Height := hand_height;
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
