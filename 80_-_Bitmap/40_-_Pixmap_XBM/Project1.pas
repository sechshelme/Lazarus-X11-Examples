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
    image: record
      Width, Height: cuint;
      Data: TPixmap;
      end;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
    procedure LoadImage(path: string);
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
    LoadImage('X11.xbm');
  end;

  destructor TMyWin.Destroy;
  begin
    // Schliesst Verbindung zum Server
    XFreePixmap(dis, image.Data);
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
            XCopyPlane(dis, Data, win, gc, 0, 0, Width, Height, 0, 0, 1);
            //                       XCopyArea(dis, Data, win, gc, 0, 0, Width, Height, 10, 10);
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

  procedure TMyWin.LoadImage(path: string);
  var
    res, hotspotX, hotspotY: cint;
  begin
    with image do begin
      res := XReadBitmapFile(dis, win, PChar(path), @Width, @Height, @Data, @hotspotX, @hotspotY);
    end;
    if res <> 0 then begin
      WriteLn('Bitmap Fehler: ', res);
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