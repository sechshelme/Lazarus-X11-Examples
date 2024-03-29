//image image.png
(*
Es ist auch möglich ein Bitmap abzuspeichern, dies geht nur Monocrom.
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

  { TMyWin }

  TMyWin = class(TObject)
  private
    dis: PDisplay;
    scr: cint;
    win: TWindow;
    gc: TGC;
    visual: PVisual;
    Bitmap: TPixmap;
    procedure DrawBitmap(bit: TPixmap; x, y: cint; mono: boolean = False);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
    procedure CrateImage;
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

    XSelectInput(dis, win, KeyPressMask or ExposureMask);
    XMapWindow(dis, win);
    CrateImage;
  end;

  destructor TMyWin.Destroy;
  begin
    // Schliesst das Fenster
    XDestroyWindow(dis, win);

    // Schliesst Verbindung zum Server
    XFreePixmap(dis, Bitmap);
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
          XClearWindow(dis, win);
          DrawBitmap(Bitmap, 0, 0, True);
          DrawBitmap(Bitmap, 100, 100);
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

  procedure TMyWin.CrateImage;
  const
    Width = 128;
    Height = 128;
  var
    i: integer;
  begin
    // Die Pixmap erzeugen.
    Bitmap := XCreatePixmap(dis, win, Width, Height, DefaultDepth(dis, scr));

    // Pixmap mit einer Farbe ausfüllen
    XSetForeground(dis, gc, $88FFFF);
    XFillRectangle(dis, Bitmap, gc, 0, 0, Width, Height);

    // Ein Muster reinzeichnen
    for i := 0 to 16 do begin
      XSetLineAttributes(dis, gc, i, LineSolid, CapButt, JoinBevel);
      XSetForeground(dis, gc, random($FFFFFF));
      XDrawRectangle(dis, Bitmap, gc, i * 10, i * 10, 100, 100);
    end;

    // Gezeichnetes Bild abspeichern, nur Monocrom
    XWriteBitmapFile(dis, 'test.xbm', Bitmap, Width, Height, 0, 0);
  end;

var
  MyWindows: TMyWin;

begin
  MyWindows := TMyWin.Create;
  MyWindows.Run;
  MyWindows.Free;
end.
//code-
