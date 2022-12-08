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
    RootWin, win: TWindow;
    gc: TGC;
    image: record
      Width, Height: cuint;
      Drawable: TPixmap;
      end;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
    procedure CreateImage;
  end;


  constructor TMyWin.Create;
  var
    xswa: TXSetWindowAttributes;
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
    RootWin := RootWindow(dis, scr);

    CreateImage;
    xswa.event_mask := KeyPressMask or ExposureMask;
    xswa.background_pixmap := image.Drawable;
    xswa.border_pixmap := image.Drawable;

    win := XCreateWindow(dis, RootWin, 10, 10, 512, 512, 10, 0, CopyFromParent, DefaultVisual(dis, scr), CWEventMask or CWBackPixmap or CWBorderPixmap, @xswa);
    XMapWindow(dis, win);
  end;

  destructor TMyWin.Destroy;
  begin
    // Schliesst alles
    XFreePixmap(dis, image.Drawable);
    XDestroyWindow(dis, win);
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
          with image do begin
            // Monochrom
            //            XCopyPlane(dis, Drawable, win, gc, 0, 0, Width, Height, 0, 0, 1);

            // Pixmap in Window kopieren
            //            XCopyArea(dis, Drawable, win, gc, 0, 0, Width, Height, 50, 50);
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

  procedure TMyWin.CreateImage;
  var
    i: integer;
    res, hotspotX, hotspotY: cint;
  begin
    with image do begin
      Width := 128;
      Height := 128;

      //with image do begin
      //  res := XReadBitmapFile(dis, win, 'logo.xbm', @Width, @Height, @Drawable, @hotspotX, @hotspotY);
      //  if res <> 0 then begin
      //    WriteLn('Bitmap Fehler: ', res);
      //  end;
      //end;


      //       Die Pixmap erzeugen.
      Drawable := XCreatePixmap(dis, RootWin, Width, Height, DefaultDepth(dis, scr));

      // Pixmap mit einer Farbe ausfüllen
      XSetForeground(dis, gc, $88FFFF);
      XFillRectangle(dis, Drawable, gc, 0, 0, Width, Height);

      // Ein Muster reinzeichnen
      for i := 0 to 12 do begin
        XSetLineAttributes(dis, gc, i, LineSolid, CapButt, JoinBevel);
        XSetForeground(dis, gc, random($FFFFFF));
        XDrawRectangle(dis, Drawable, gc, i * 5, i * 5, 50, 50);
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
