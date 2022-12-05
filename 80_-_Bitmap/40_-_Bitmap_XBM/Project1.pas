//image image.png
(*
Eine Bitmap laden
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
    Bit: PXImage;
    image: TDrawable;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
    function LoadImage(path: string): TDrawable;
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
    image := LoadImage('X11.xbm');
  end;

  destructor TMyWin.Destroy;
  begin
    // Schliesst Verbindung zum Server
    XFreePixmap(dis, image);
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
          XCopyPlane(dis, image, win, gc, 0, 0, 128, 128, 50, 50, 1);
//          XCopyArea(dis, image, win, gc, 0, 0, 128, 128, 10, 10);
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

  function TMyWin.LoadImage(path: string): TDrawable;
  var
    res, hotspotX, hotspotY: cint;
    bw, bh: cuint;
  begin
    res := XReadBitmapFile(dis, win, PChar(path), @bw, @bh, @Result, @hotspotX, @hotspotY);
    case res of
      BitmapOpenFailed: begin
        WriteLn('Open failed.');
      end;
      BitmapFileInvalid: begin
        WriteLn('Open invalid.');
      end;
      BitmapNoMemory: begin
        WriteLn('No mem.');
      end;
      BitmapSuccess: begin
        WriteLn('Bitmap loading success !');
      end;
      else begin
        WriteLn('Unknown error while loading a bitmap.');
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
