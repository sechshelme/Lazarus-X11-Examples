//image image.png
(*
Eine Bitmap ab Konstante.
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

  // Source: /usr/lib/tkdesk/images/xbm/hand.xbm

const
  cup: TxbmMask = (Width: 32; Height: 32; bits: (
    $00, $08, $00, $00, $00, $20, $00, $00, $00, $c1, $01, $00,
    $00, $01, $01, $00, $00, $02, $01, $00, $00, $84, $01, $00,
    $00, $58, $00, $00, $00, $50, $00, $00, $00, $ff, $07, $00,
    $c0, $90, $18, $00, $20, $6e, $23, $00, $60, $ef, $37, $00,
    $a0, $df, $ef, $03, $20, $fc, $23, $04, $20, $00, $e0, $09,
    $20, $00, $20, $12, $20, $00, $20, $14, $20, $00, $20, $14,
    $20, $00, $20, $14, $20, $00, $20, $14, $20, $00, $20, $14,
    $20, $00, $20, $14, $20, $00, $20, $12, $20, $00, $20, $09,
    $20, $00, $e0, $04, $20, $00, $20, $02, $20, $00, $e0, $01,
    $20, $00, $20, $00, $20, $00, $20, $00, $40, $00, $10, $00,
    $80, $01, $0c, $00, $00, $fe, $03, $00));

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
    gc: TGC;
    Bit_hand, bit_cup: TPixmap;
    procedure DrawBitmap(bit: TPixmap; x, y: cint);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
    function CreatePixmap(xmb: TxbmMask): TPixmap;
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
    win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 320, 200, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));

    XSelectInput(dis, win, KeyPressMask or ExposureMask);
    XMapWindow(dis, win);
    Bit_hand := CreatePixmap(hand);
    bit_cup := CreatePixmap(cup);
  end;

  destructor TMyWin.Destroy;
  begin
    // Schliesst das Fenster
    XDestroyWindow(dis, win);

    // Schliesst Verbindung zum Server
    XFreePixmap(dis, Bit_hand);
    XFreePixmap(dis, bit_cup);
    XCloseDisplay(dis);
    inherited Destroy;
  end;

  procedure TMyWin.DrawBitmap(bit: TPixmap; x, y: cint);
  var
    root: TWindow;
    x1, y1: cint;
    Width, Height, border_width, depth: cuint;
  begin
    XGetGeometry(dis, bit, @root, @x1, @y1, @Width, @Height, @border_width, @depth);
    XCopyPlane(dis, bit, win, gc, 0, 0, Width, Height, x, y, 1);
  end;

  procedure TMyWin.Run;
  var
    Event: TXEvent;
    l, t: cint;
  begin
    // Ereignisschleife
    while (True) do begin
      XNextEvent(dis, @Event);

      case Event._type of
        Expose: begin
          XClearWindow(dis, win);
          l := Event.xexpose.Width div 2 - 16;
          t := Event.xexpose.Height div 2 - 8;

          DrawBitmap(Bit_hand, l + 32, t + 16);
          DrawBitmap(bit_cup, l, t);
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

  function TMyWin.CreatePixmap(xmb: TxbmMask): TPixmap;
  begin
    Result := XCreateBitmapFromData(dis, win, PChar(xmb.bits), xmb.Width, xmb.Height);
  end;

var
  MyWindows: TMyWin;

begin
  MyWindows := TMyWin.Create;
  MyWindows.Run;
  MyWindows.Free;
end.
//code-
