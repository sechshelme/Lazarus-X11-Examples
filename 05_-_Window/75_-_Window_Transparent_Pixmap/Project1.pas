program Project1;

uses
  BaseUnix,
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

var
  dis: PDisplay;
  win, rootWin: TWindow;
  Event: TXEvent;
  scr: cint;
  gc: TGC;
  i: integer;
  bit_cub: TPixmap;

type
  TSprite = record
    x, y, stepx, stepy: integer;
  end;
  TSprites = array of TSprite;
var
  Sprite: TSprites = nil;

const
  EventMask = KeyPressMask or ExposureMask or PointerMotionMask or ButtonPressMask;

  procedure wait;
  var
    rem, Req: timespec;
  begin
    Req.tv_nsec := 3000000;
    Req.tv_sec := 0;
    fpNanoSleep(@Req, @rem);
  end;

  procedure Create_MainWin;
  var
    vinfo: TXVisualInfo;
    attr: TXSetWindowAttributes;
  begin
    XMatchVisualInfo(dis, scr, 32, TrueColor, @vinfo);
    attr.colormap := XCreateColormap(dis, rootWin, vinfo.visual, AllocNone);
    attr.border_pixel := 0;
    attr.background_pixel := 0;

    win := XCreateWindow(dis, rootWin, 10, 10, 640, 480, 0, vinfo.depth, CopyFromParent, vinfo.visual, CWColormap or CWBorderPixel or CWBackPixel, @attr);
    XSelectInput(dis, win, EventMask);
    XMapWindow(dis, win);
  end;

  function CreatePixmap(xmb: TxbmMask): TPixmap;
  begin
    Result := XCreateBitmapFromData(dis, win, PChar(xmb.bits), xmb.Width, xmb.Height);
  end;

  procedure DrawBitmap(x, y: integer; bit: TPixmap);
  var
    root: TWindow;
    x1, y1: cint;
    Width, Height, border_width, depth: cuint;
  begin
    XSetForeground(dis, gc, $FF0000FF);
    XGetGeometry(dis, bit, @root, @x1, @y1, @Width, @Height, @border_width, @depth);
    XCopyPlane(dis, bit, win, gc, 0, 0, Width, Height, x, y, 1);

  end;

  procedure drawSprites;
  var
    i: integer;
    root: TWindow;
    x1, y1: cint;
    Width, Height, border_width, depth: cuint;
  begin
    XGetGeometry(dis, win, @root, @x1, @y1, @Width, @Height, @border_width, @depth);
    XClearWindow(dis, win);
    for i := 0 to Length(Sprite) - 1 do begin
      with Sprite[i] do begin
        DrawBitmap(x, y, bit_cub);
        if stepx > 0 then begin
          Inc(x);
          if x > Width - cup.Width then begin
            stepx:=-1;
          end;
        end else begin
          Dec(x);
          if x < 0 then begin
            stepx:=1;
          end;
        end;

        if stepy > 0 then begin
          Inc(y);
          if y > Height - cup.Height then begin
            stepy:=-1;
          end;
        end else begin
          Dec(y);
          if y < 0 then begin
            stepy:=1;
          end;
        end;
      end;
    end;
  end;

begin
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);
  rootWin := RootWindow(dis, scr);

  Create_MainWin;
  bit_cub := CreatePixmap(cup);

  gc := XCreateGC(dis, win, 0, nil);

  SetLength(Sprite, 50);
  for i := 0 to Length(Sprite) - 1 do begin
      if Random(1)= 1 then  Sprite[i].stepx := 1 else   Sprite[i].stepx := -1;
      if Random(1)= 1 then  Sprite[i].stepy := 1 else   Sprite[i].stepy := -1;
    Sprite[i].x := Random(640);
    Sprite[i].y := Random(480);
  end;

  XStoreName(dis, win, 'Transparentes-Fenster');

  while (True) do begin

    if XPending(dis) > 0 then begin

      XNextEvent(dis, @Event);

      case Event._type of
        Expose: begin
        end;
        ButtonPress: begin
          XRaiseWindow(dis, Event.xbutton.window);
        end;

        KeyPress: begin
          if XLookupKeysym(@Event.xkey, 0) = XK_Escape then begin
            Break;
          end;
        end;
      end;
    end else begin
      wait;
      drawSprites;
      XFlush(dis);
    end;

  end;

  XDestroyWindow(dis, win);

  XCloseDisplay(dis);
end.
