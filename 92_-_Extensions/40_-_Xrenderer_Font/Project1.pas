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
  gc: TGC;
  bkColor: culong = $FFFFFF;

  picture, black: TPicture;
  fmt: PXRenderPictFormat;
  pict_attr: TXRenderPictureAttributes;


const
  Mask = KeyPressMask or ExposureMask;

  procedure Draw(ev: TXEvent);
  var
    color_red: TXRenderColor = (red: $FFFF; green: $0000; blue: $0000; alpha: $4000);
    color_green: TXRenderColor = (red: $0000; green: $FFFF; blue: $0000; alpha: $4000);
    color_blue: TXRenderColor = (red: $0000; green: $0000; blue: $FFFF; alpha: $4000);
  begin
    XRenderFillRectangle(dis, PictOpOver, picture, @color_red, 50, 50, 320, 240);
    XRenderFillRectangle(dis, PictOpOver, picture, @color_green, 100, 100, 320, 240);
    XRenderFillRectangle(dis, PictOpOver, picture, @color_blue, 150, 150, 320, 240);
  end;

  function create_pen(red, green, blue, alpha: cint): TPicture;
  var
    fmt: PXRenderPictFormat;
    pict_attr: TXRenderPictureAttributes;
    picture: TPicture;
    pm: TPixmap;
    color: TXRenderColor;
  begin
    color.red := red;
    color.green := green;
    color.blue := blue;
    color.alpha := alpha;

    fmt := XRenderFindStandardFormat(dis, PictStandardARGB32);
    pm := XCreatePixmap(dis, win, 1, 1, 32);
    pict_attr._repeat := 1;
    picture := XRenderCreatePicture(dis, pm, fmt, CPRepeat, @pict_attr);
    XRenderFillRectangle(dis, PictOpOver, picture, @color, 0, 0, 1, 1);
    Result := picture;
  end;

begin
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);
  rootWin := RootWindow(dis, scr);

  fmt := XRenderFindVisualFormat(dis, XDefaultVisual(dis, scr));

  win := XCreateSimpleWindow(dis, rootWin, 10, 10, 640, 480, 0, $000000, $FFFFFF);
  XSelectInput(dis, win, Mask);
  XStoreName(dis, win, 'XRenderer');

  pict_attr.poly_edge := PolyEdgeSmooth;
  pict_attr.poly_mode := PolyModeImprecise;

  picture := XRenderCreatePicture(dis, win, fmt, CPPolyEdge or CPPolyMode, @pict_attr);
//  picture := XRenderCreatePicture(dis, win, fmt, 0, nil);

//  black := create_pen(0, 0, 0, $FFFF);

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
          XK_b: begin
            if bkColor = 0 then begin
              bkColor := $FFFFFF;
            end else begin
              bkColor := $000000;
            end;
            XSetWindowBackground(dis, win, bkColor);
            XClearWindow(dis,win);
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
