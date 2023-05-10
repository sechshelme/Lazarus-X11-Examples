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

  dRatMask: TxbmMask = (Width: 16; Height: 16; x_hot: -1; y_hot: -1;
    bits: (
    $98, $60, $dd, $71, $ef, $38, $c7, $19, $82, $00, $00, $30,
    $00, $f1, $e0, $f3, $ff, $c7, $ff, $cf, $ff, $ff, $fe, $ff,
    $fc, $7f, $e8, $0f, $c0, $07, $00, $00));

type
  TBit = record
    Width, Height: cuint;
    x_hot, y_hot: cint;
    Drawable: TPixmap;
  end;

  { TMyWin }

  TMyWin = class(TObject)
  private
    dis: PDisplay;
    scr: cint;
    win: TWindow;
    gc: TGC;
    Bit_cup, Bit_text, Bit_dRat, Bit_dRatMask: TBit;
    cursor: TCursor;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
    function CreatePixmap(xmb: TxbmMask): TBit;
    function CreateCursor(cur, mas: TPixmap): TCursor;
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
    XSetBackground(dis, gc, $FF);
    XSetForeground(dis, gc, $FF0000);
    XSetWindowBackground(dis, win, $00);

    XSelectInput(dis, win, KeyPressMask or ExposureMask);
    XMapWindow(dis, win);
    Bit_cup := CreatePixmap(cup);
    Bit_text := CreatePixmap(Text);
    Bit_dRat := CreatePixmap(dRat);
    Bit_dRatMask := CreatePixmap(dRatMask);
    cursor := CreateCursor(Bit_dRat.Drawable, Bit_dRatMask.Drawable);

    XDefineCursor(dis, win, cursor);
  end;

  destructor TMyWin.Destroy;
  begin
    // Schliesst das Fenster
    XDestroyWindow(dis, win);

    // Schliesst Verbindung zum Server
    XFreePixmap(dis, Bit_cup.Drawable);
    XCloseDisplay(dis);
    inherited Destroy;
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
          with Bit_cup do begin
            XCopyPlane(dis, Drawable, win, gc, 0, 0, Width, Height, l + 32, t + 16, 1);
          end;
          with Bit_text do begin
            XCopyPlane(dis, Drawable, win, gc, 0, 0, Width, Height, l, t, 1);
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

  function TMyWin.CreatePixmap(xmb: TxbmMask): TBit;
  begin
    Result.Drawable := XCreateBitmapFromData(dis, win, PChar(xmb.bits), xmb.Width, xmb.Height);

    //    Result.Drawable := XCreatePixmapFromBitmapData(dis, win, PChar(xmb.bits), xmb.Width, xmb.Height, $FF, $FF00, 1);
    Result.Width := xmb.Width;
    Result.Height := xmb.Height;
    Result.x_hot := xmb.x_hot;
    Result.y_hot := xmb.y_hot;
  end;

  function TMyWin.CreateCursor(cur, mas: TPixmap): TCursor;
  var
    fg: TXColor = (pixel: 0; red: 0; green: 0; blue: 0; flags: $F; pad: 0);
    bg: TXColor = (pixel: $FFFFFFFF; red: $FFFF; green: $FFFF; blue: $FFFF; flags: $F; pad: 0);
  begin
    Result := XCreatePixmapCursor(dis, cur, mas, @fg, @bg, 0, 0);
  end;

var
  MyWindows: TMyWin;

begin
  MyWindows := TMyWin.Create;
  MyWindows.Run;
  MyWindows.Free;
end.
//code-
