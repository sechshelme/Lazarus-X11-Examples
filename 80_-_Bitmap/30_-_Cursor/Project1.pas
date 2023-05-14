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

type
  TxbmMask = record
    Width, Height: cuint;
    x_hot, y_hot: cint;
    bits: array of byte;
  end;

  // Source: /usr/lib/tkdesk/images/xbm
  // https://cpp.hotexamples.com/examples/-/-/XCreatePixmapFromBitmapData/cpp-xcreatepixmapfrombitmapdata-function-examples.html

const
  cup: TxbmMask = (Width: 32; Height: 32; x_hot: 0; y_hot: 0; bits: (
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


  Text: TxbmMask = (Width: 32; Height: 32; x_hot: 0; y_hot: 0; bits: (
    $f0, $ff, $7f, $00, $10, $00, $c0, $00, $10, $00, $40, $01,
    $90, $b7, $4d, $02, $10, $00, $40, $04, $10, $00, $c0, $0f,
    $10, $00, $00, $08, $90, $dd, $3d, $09, $10, $00, $00, $08,
    $90, $ae, $6d, $0b, $10, $00, $00, $08, $90, $dd, $de, $0b,
    $10, $00, $00, $08, $90, $dd, $a6, $0b, $10, $00, $00, $08,
    $90, $5b, $af, $0a, $10, $00, $00, $08, $90, $cd, $00, $08,
    $10, $00, $00, $08, $90, $5d, $bb, $0b, $10, $00, $00, $08,
    $90, $db, $da, $0a, $10, $00, $00, $08, $90, $ed, $56, $0b,
    $10, $00, $00, $08, $90, $ed, $b6, $0b, $10, $00, $00, $08,
    $90, $db, $ed, $0a, $10, $00, $00, $08, $10, $00, $00, $08,
    $10, $00, $00, $08, $f0, $ff, $ff, $0f));


  dRat: TxbmMask = (Width: 16; Height: 16; x_hot: 0; y_hot: 9; bits: (
    $00, $00, $88, $20, $45, $10, $82, $00, $00, $00, $00, $10,
    $00, $20, $00, $41, $20, $82, $ff, $87, $fa, $8f, $fc, $7f,
    $e8, $0f, $c0, $07, $00, $00, $00, $00));

  dRatMask: TxbmMask = (Width: 16; Height: 16; x_hot: -1; y_hot: -1; bits: (
    $98, $60, $dd, $71, $ef, $38, $c7, $19, $82, $00, $00, $30,
    $00, $f1, $e0, $f3, $ff, $c7, $ff, $cf, $ff, $ff, $fe, $ff,
    $fc, $7f, $e8, $0f, $c0, $07, $00, $00));

  rat: TxbmMask = (Width: 16; Height: 16; x_hot: 0; y_hot: 6; bits: (
    $00, $00, $00, $00, $c0, $07, $e8, $0f, $fc, $0f, $fa, $7f,
    $ff, $8f, $42, $08, $00, $40, $00, $3f, $80, $00, $00, $01,
    $00, $02, $00, $01, $00, $00, $00, $00));

  ratMask: TxbmMask = (Width: 16; Height: 16; x_hot: -1; y_hot: -1; bits: (
    $00, $00, $c0, $07, $e8, $0f, $fc, $1f, $fe, $7f, $ff, $ff,
    $ff, $ff, $ff, $df, $e7, $fc, $00, $ff, $80, $7f, $80, $03,
    $00, $03, $80, $03, $00, $01, $00, $00));


type

  { TMyWin }

  TMyWin = class(TObject)
  private
    dis: PDisplay;
    scr: cint;
    root_win, win: TWindow;
    gc: TGC;
    Bit_cup, Bit_text: TPixmap;
    RatCursor, dRatCursor: TCursor;
    procedure DrawBitmap(bit: TPixmap; x, y: cint);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
    function CreatePixmap(xmb: TxbmMask): TPixmap;
    function CreateCursor(bit, bitmask: TxbmMask): TCursor;
    procedure SetCursorColor(cursor: TCursor; Afg, Abg: PChar);
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
    root_win := RootWindow(dis, scr);
    win := XCreateSimpleWindow(dis, root_win, 10, 10, 320, 200, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
    XSetBackground(dis, gc, $FF);
    XSetForeground(dis, gc, $FF0000);
    XSetWindowBackground(dis, win, $8888FF);

    XSelectInput(dis, win, KeyPressMask or ExposureMask or ButtonPressMask or ButtonReleaseMask);
    XMapWindow(dis, win);

    Bit_cup := CreatePixmap(cup);
    Bit_text := CreatePixmap(Text);

    RatCursor := CreateCursor(rat, ratMask);
    dRatCursor := CreateCursor(dRat, dRatMask);

    XDefineCursor(dis, win, RatCursor);
  end;

  destructor TMyWin.Destroy;
  begin
    // Schliesst das Fenster
    XDestroyWindow(dis, win);

    // Schliesst Verbindung zum Server
    XFreePixmap(dis, Bit_cup);
    XFreePixmap(dis, Bit_text);
    XCloseDisplay(dis);
    XFreeCursor(dis, RatCursor);
    XFreeCursor(dis, dRatCursor);

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

          DrawBitmap(Bit_cup, l + 32, t + 16);
          DrawBitmap(Bit_text, l - 32, t + 16);
        end;
        ButtonPress: begin
          XDefineCursor(dis, win, dRatCursor);
        end;
        ButtonRelease: begin
          XDefineCursor(dis, win, RatCursor);
        end;
        KeyPress: begin
          // Beendet das Programm bei [ESC]
          case XLookupKeysym(@Event.xkey, 0) of
            XK_Escape: begin
              Break;
            end;
            XK_r: begin
              SetCursorColor(RatCursor, 'red', 'white');
            end;
            XK_b: begin
              SetCursorColor(RatCursor, 'blue', 'white');
            end;
            XK_g: begin
              SetCursorColor(RatCursor, 'green', 'white');
            end;
            XK_y: begin
              SetCursorColor(RatCursor, 'yellow', 'black');
            end;
          end;
        end;
      end;
    end;
  end;

  function TMyWin.CreatePixmap(xmb: TxbmMask): TPixmap;
  begin
    Result := XCreateBitmapFromData(dis, win, PChar(xmb.bits), xmb.Width, xmb.Height);

    //Result := XCreatePixmapFromBitmapData(dis, win, PChar(xmb.bits), xmb.Width, xmb.Height, $FF, $FF00, 1);
  end;

  function TMyWin.CreateCursor(bit, bitmask: TxbmMask): TCursor;
  var
    bg, fg, nearrgb: TXColor;
    draw, drawMask: TPixmap;
  begin
    XLookupColor(dis, XDefaultColormap(dis, scr), 'yellow', @fg, @nearrgb);
    XLookupColor(dis, XDefaultColormap(dis, scr), 'green', @bg, @nearrgb);

    draw := XCreateBitmapFromData(dis, win, PChar(bit.bits), bit.Width, bit.Height);
    drawMask := XCreateBitmapFromData(dis, win, PChar(bitmask.bits), bitmask.Width, bitmask.Height);

    Result := XCreatePixmapCursor(dis, draw, drawMask, @fg, @bg, bit.Width div 2, bit.Height div 2);

    XFreePixmap(dis, draw);
    XFreePixmap(dis, drawMask);
  end;

  procedure TMyWin.SetCursorColor(cursor: TCursor; Afg, Abg: PChar);
  var
    bg, fg, nearrgb: TXColor;
  begin
    XLookupColor(dis, XDefaultColormap(dis, scr), Afg, @fg, @nearrgb);
    XLookupColor(dis, XDefaultColormap(dis, scr), Abg, @bg, @nearrgb);

    XRecolorCursor(dis, cursor, @fg, @bg);
  end;

var
  MyWindows: TMyWin;

begin
  MyWindows := TMyWin.Create;
  MyWindows.Run;
  MyWindows.Free;
end.
//code-
