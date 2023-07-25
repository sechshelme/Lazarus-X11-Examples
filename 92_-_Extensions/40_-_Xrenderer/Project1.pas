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
  bkColor: culong = $FFFFFF;

  picture: TPicture;
  fmt: PXRenderPictFormat;

const
  Mask = KeyPressMask or ExposureMask;

  procedure Draw(ev: TXEvent);
  const
    w = 150;
    h = 150;
  var
    color_red: TXRenderColor = (red: $FFFF; green: $0000; blue: $0000; alpha: $4000);
    color_green: TXRenderColor = (red: $0000; green: $FFFF; blue: $0000; alpha: $4000);
    color_blue: TXRenderColor = (red: $0000; green: $0000; blue: $FFFF; alpha: $4000);
  begin
    XRenderFillRectangle(dis, PictOpOver, picture, @color_red, 50, 50, w, h);
    XRenderFillRectangle(dis, PictOpOver, picture, @color_green, 100, 100, w, h);
    XRenderFillRectangle(dis, PictOpOver, picture, @color_blue, 150, 150, w, h);

    XRenderFillRectangle(dis, PictOpOver, picture, @color_blue, 450, 150, w, h);
    XRenderFillRectangle(dis, PictOpOver, picture, @color_green, 400, 100, w, h);
    XRenderFillRectangle(dis, PictOpOver, picture, @color_red, 350, 50, w, h);
  end;

begin
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);
  rootWin := RootWindow(dis, scr);

  win := XCreateSimpleWindow(dis, rootWin, 10, 10, 640, 480, 0, $000000, $FFFFFF);
  XSelectInput(dis, win, Mask);
  XStoreName(dis, win, 'XRenderer');
  XMapWindow(dis, win);

  fmt := XRenderFindVisualFormat(dis, XDefaultVisual(dis, scr));
  //  fmt := XRenderFindStandardFormat(dis, PictStandardRGB24);
  picture := XRenderCreatePicture(dis, win, fmt, 0, nil);

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
          XK_b: begin
            if bkColor = 0 then begin
              bkColor := $FFFFFF;
            end else begin
              bkColor := $000000;
            end;
            XSetWindowBackground(dis, win, bkColor);
            XClearWindow(dis, win);
            Draw(Event);
          end;
        end;
      end;
    end;
  end;

  XRenderFreePicture(dis, picture);
  XDestroyWindow(dis, win);
  XCloseDisplay(dis);
end.
