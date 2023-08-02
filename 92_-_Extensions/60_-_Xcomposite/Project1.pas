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
  cursorfont,
  Xcomposite,
  composite,

  Xfixes,

  x;

type

  { TMyWin }

  TMyWin = class(TObject)
  private
    dis: PDisplay;
    scr: cint;
    grabWin, rootWin, win: TWindow;
    gc: TGC;
    Pitmap: TPixmap;
    function GrabPointer: TWindow;
    procedure Draw;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
    procedure CrateImage;
  end;

  function NewErrorHandle(para1: PDisplay; para2: PXErrorEvent): cint; cdecl;
  begin
    WriteLn('Error');
    Result := 0;
  end;

  function TMyWin.GrabPointer: TWindow;
  var
    ev: TXEvent;
    cursor: TCursor;
  begin
    cursor := XCreateFontCursor(dis, XC_pirate);
    Result := 0;

    XGrabPointer(dis, rootWin, False, ButtonPressMask, GrabModeSync, GrabModeAsync, 0, cursor, CurrentTime);

    XAllowEvents(dis, SyncPointer, CurrentTime);
    XWindowEvent(dis, rootWin, ButtonPressMask, @ev);
    Result := ev.xbutton.subwindow;

    XUngrabPointer(dis, CurrentTime);

    XFreeCursor(dis, cursor);
  end;

  constructor TMyWin.Create;
  begin
    inherited Create;

    dis := XOpenDisplay(nil);
    if dis = nil then begin
      WriteLn('Kann nicht das Display öffnen');
      Halt(1);
    end;

    XSetErrorHandler(@NewErrorHandle);

    scr := DefaultScreen(dis);
    gc := DefaultGC(dis, scr);
    rootWin := RootWindow(dis, scr);
    win := XCreateSimpleWindow(dis, rootWin, 10, 10, 640, 480, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
    grabWin := win;

    XSelectInput(dis, win, KeyPressMask or ExposureMask);
    XMapWindow(dis, win);
    CrateImage;
  end;

  destructor TMyWin.Destroy;
  begin
    XDestroyWindow(dis, win);

    XFreePixmap(dis, Pitmap);
    XCloseDisplay(dis);
    inherited Destroy;
  end;

  procedure TMyWin.Draw;
  var
    root: TWindow;
    x1, y1: cint;
    Width, Height, border_width, depth: cuint;
    pm: TPixmap;
  begin
    XGetGeometry(dis, win, @root, @x1, @y1, @Width, @Height, @border_width, @depth);

    XCompositeRedirectWindow(dis, grabWin, CompositeRedirectAutomatic);
    XFlush(dis);

    pm := XCompositeNameWindowPixmap(dis, grabWin);
    XSync(dis, False);
    XCopyArea(dis, pm, win, gc, 0, 0, Width, Height, 0, 0);

    XFreePixmap(dis, pm);
    XCompositeUnredirectWindow(dis, grabWin, CompositeRedirectAutomatic);
  end;

  procedure TMyWin.Run;
  var
    Event: TXEvent;
  begin
    while (True) do begin
      XNextEvent(dis, @Event);
      case Event._type of
        Expose: begin
          XClearWindow(dis, win);
          Draw;
        end;
        KeyPress: begin
          case XLookupKeysym(@Event.xkey, 0) of
            XK_Escape: begin
              Break;
            end;
            XK_space: begin
              grabWin := GrabPointer;
              Draw;
            end;
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
    Pitmap := XCreatePixmap(dis, win, Width, Height, DefaultDepth(dis, scr));

    XSetForeground(dis, gc, $88FFFF);
    XFillRectangle(dis, Pitmap, gc, 0, 0, Width, Height);
    for i := 0 to 16 do begin
      XSetLineAttributes(dis, gc, i, LineSolid, CapButt, JoinBevel);
      XSetForeground(dis, gc, random($FFFFFF));
      XDrawRectangle(dis, Pitmap, gc, i * 10, i * 10, 100, 100);
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
