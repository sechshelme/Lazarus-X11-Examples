//image image.png
(*
Eine Pixmap erzeugen.
In diese kann man mit den üblichen Zeichenfunktion reinzeichnen, ZB. Rechtecke und Kreise, wie bei einem Window.
Eine frisch erzeugte Pixmap muss man mit **XFillRectangle** eine Rechteck zeichen, ansonsten hat so von Anfang an ein zufälliger Inhalt.
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
    Bitmap: record
      Width, Height: cuint;
      Drawable: TPixmap;
      end;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
    procedure CrateImage;
  end;

const
   hand_width =16;
hand_height =16;
 hand_x_hot =3;
 hand_y_hot =2;
 hand_bits : array of Byte = (
   $80, $01, $58, $0e, $64, $12, $64, $52, $48, $b2, $48, $92,
   $16, $90, $19, $80, $11, $40, $02, $40, $04, $40, $04, $20,
   $08, $20, $10, $10, $20, $10, $20, $10);


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
            // Monochrom
            XCopyPlane(dis, Drawable, win, gc, 0, 0, Width, Height, 0, 0, 1);

            // Drawable in Window kopieren
            XCopyArea(dis, Drawable, win, gc, 0, 0, Width, Height, 50, 50);
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

  procedure TMyWin.CrateImage;
  var
    i: integer;
  begin
    with Bitmap do begin
      Width := 256;
      Height := 256;

      XCreateBitmapFromData

      // Die Drawable erzeugen.
      Drawable := XCreatePixmap(dis, win, Width, Height, DefaultDepth(dis, scr));

      // Drawable mit einer Farbe ausfüllen
      XSetForeground(dis, gc, $88FFFF);
      XFillRectangle(dis, Drawable, gc, 0, 0, Width, Height);

      // Ein Muster reinzeichnen
      for i := 0 to 16 do begin
        XSetLineAttributes(dis, gc, i, LineSolid, CapButt, JoinBevel);
        XSetForeground(dis, gc, random($FFFFFF));
        XDrawRectangle(dis, Drawable, gc, i * 10, i * 10, 100, 100);
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
