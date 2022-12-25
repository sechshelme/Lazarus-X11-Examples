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
    image: record
      Width, Height: cuint;
      Data: TPixmap;
      end;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
    procedure CrateImage;
  end;


  constructor TMyWin.Create;
  const
    EventMask = KeyPressMask or ExposureMask;
  var
    xswa: TXSetWindowAttributes;
    ANormalhints: TXSizeHints;

    RootWin: TWindow;
    FWidth: cuint = 320;
    FHeight: cuint = 240;

    AWMHints: TXWMHints;
    AClassHints: TXClassHint;
    iconname: PXTextProperty;
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

    xswa.background_pixel := $FF;
    xswa.event_mask := KeyPressMask or ExposureMask;

    RootWin := RootWindow(dis, scr);

    win := XCreateSimpleWindow(dis, RootWin, 10, 10, FWidth, FHeight, 0, BlackPixel(dis, scr), WhitePixel(dis, scr));
    XSelectInput(dis, win, EventMask or StructureNotifyMask);

    with  ANormalhints do begin
      flags := PPosition or PSize or PPosition or PMinSize or PMaxSize or PResizeInc or PWinGravity;
      flags := PAllHints;
      Width := FWidth;
      Height := FHeight;
      x := 300;
      y := 200;
      min_width := 100;
      min_height := 100;
      max_width := 640;
      max_height := 480;
      width_inc := 16;
      height_inc := 16;
      win_gravity := $0;
    end;

    XSetStandardProperties(dis, win, 'noname', 'noname', None, nil, 0, @ANormalhints);
//XSetZoomHints(dis,win,@ANormalhints);

//    XSetWMProperties(dis,win,nil,nil,nil,0,@ANormalhints,@AWMHints,@AClassHints);

    XMapWindow(dis, win);
    CrateImage;
  end;

  destructor TMyWin.Destroy;
  begin
    // Schliesst alles
    XFreePixmap(dis, image.Data);
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
            XCopyPlane(dis, Data, win, gc, 0, 0, Width, Height, 0, 0, 1);

            // Pixmap in Window kopieren
            XCopyArea(dis, Data, win, gc, 0, 0, Width, Height, 50, 50);
          end;
        end;
        GravityNotify: begin
          WriteLn('grafv');
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
    with image do begin
      Width := 256;
      Height := 256;

      // Die Pixmap erzeugen.
      Data := XCreatePixmap(dis, win, Width, Height, DefaultDepth(dis, scr));

      // Pixmap mit einer Farbe ausfüllen
      XSetForeground(dis, gc, $88FFFF);
      XFillRectangle(dis, Data, gc, 0, 0, Width, Height);

      // Ein Muster reinzeichnen
      for i := 0 to 16 do begin
        XSetLineAttributes(dis, gc, i, LineSolid, CapButt, JoinBevel);
        XSetForeground(dis, gc, random($FFFFFF));
        XDrawRectangle(dis, Data, gc, i * 10, i * 10, 100, 100);
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
