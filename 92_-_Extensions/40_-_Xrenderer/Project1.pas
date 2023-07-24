program Project1;

uses
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  x,
  Xrender,
  render;

var
  dis: PDisplay;
  Event: TXEvent;
  scr: cint;
  win, rootWin: TWindow;

const
  Mask = KeyPressMask or ExposureMask;

  rects: array of TXRectangle = (
    (x: 10; y: 10; Width: 60; Height: 60),
    (x: 50; y: 50; Width: 80; Height: 80));

  procedure Init;
  var
    pixmap: TPixmap;
    gc: TGC;
    format: PXRenderPictFormat;
    picture: TPicture;
    color: TXRenderColor;
  begin
    gc := XCreateGC(dis, win, 0, nil);

    format := XRenderFindStandardFormat(dis, PictStandardRGB24);
    pixmap := XCreatePixmap(dis, win, 512, 512, 24);
    picture := XRenderCreatePicture(dis, win, format, 0, nil);

    XFreePixmap(dis, pixmap);

    color.red := 0;
    color.green := 0;
    color.blue := $8000;
    color.alpha := $8000;

    XRenderFillRectangle(dis, PictOpSrc, picture, @color, 10, 10, 100, 100);
  end;

  procedure Draw(ev: TXEvent);
  var
    pixmap: TPixmap;
    gc: TGC;
    format: PXRenderPictFormat;
    picture: TPicture;
    color: TXRenderColor;
  begin
    gc := XCreateGC(dis, win, 0, nil);

    format := XRenderFindStandardFormat(dis, PictStandardRGB24);
    pixmap := XCreatePixmap(dis, win, 512, 512, 24);
    picture := XRenderCreatePicture(dis, win, format, 0, nil);

    XFreePixmap(dis, pixmap);

    color.red := 0;
    color.green := 0;
    color.blue := $8000;
    color.alpha := $0000;

    XRenderFillRectangle(dis, PictOpSrc, picture, @color, 10, 10, 100, 100);

    color.green := $8000;

    XRenderFillRectangle(dis, PictOpSrc, picture, @color, 50, 50, 100, 100);
  end;


begin
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);
  rootWin := RootWindow(dis, scr);

  win := XCreateSimpleWindow(dis, rootWin, 10, 10, 320, 200, 0, $000000, $FF00000);
  XSelectInput(dis, win, Mask);
  XStoreName(dis, win, 'Bitmap Shapes');

  Init;

  XMapWindow(dis, win);

  while (True) do begin
    XNextEvent(dis, @Event);
    case Event._type of
      Expose: begin
        Draw(Event);
      end;
      KeyPress: begin
        case XLookupKeysym(@Event.xkey, 0) of
          XK_Escape: begin
            Break;
          end;
        end;
      end;
    end;
  end;

  XDestroyWindow(dis, win);

  XCloseDisplay(dis);
end.
