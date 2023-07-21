program Project1;

uses
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  x,
  shape,
  shapeconst;

const
  rects: array of TXRectangle = (
    (x: 10; y: 10; Width: 60; Height: 60),
    (x: 50; y: 50; Width: 80; Height: 80));

var
  dis: PDisplay;
  win: TWindow;
  Event: TXEvent;
  scr: cint;
  cm: TColormap;
  exact, red: TXColor;
  s_hints: PXSizeHints;
  r: PXRectangle;
  n, order: longint;

begin
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);

  cm := DefaultColormap(dis, scr);
  XAllocNamedColor(dis, cm, 'red', @red, @exact);
  win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 320, 200, 0, red.pixel, red.pixel);

  s_hints := XAllocSizeHints;
  s_hints^.flags := PPosition;
  XSetWMProperties(dis, win, nil, nil, nil, 0, s_hints, nil, nil);

  r := XShapeGetRectangles(dis, win, ShapeBounding, @n, @order);
  WriteLn(r^.x);
  WriteLn(r^.y);
  WriteLn(r^.Width);
  WriteLn(r^.Height);
  XFree(r);

  XShapeCombineRectangles(dis, win, ShapeBounding, 0, 0, PXRectangle(rects), Length(rects), ShapeSet, Unsorted);

  XSelectInput(dis, win, KeyPressMask);

  XStoreName(dis, win, 'Shapes');

  XMapWindow(dis, win);

  while (True) do begin
    XNextEvent(dis, @Event);
    case Event._type of
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
