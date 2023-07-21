program Project1;

uses
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  x,
  shape,
  shapeconst,
  denied;

var
  dis: PDisplay;
  win: TWindow;
  Event: TXEvent;
  scr: cint;
  cm: TColormap;
  exact, red: TXColor;
  s_hints: PXSizeHints;
  pm: TPixmap;

begin
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);

  cm := DefaultColormap(dis, scr);
  XAllocNamedColor(dis, cm, 'red', @red, @exact);
  win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, noname_width, noname_height, 1, red.pixel, red.pixel);

  s_hints := XAllocSizeHints;
  s_hints^.flags := PPosition;
  XSetWMProperties(dis, win, nil, nil, nil, 0, s_hints, nil, nil);

  pm := XCreateBitmapFromData(dis, win, PChar(noname_bits), noname_width, noname_height);

  XShapeCombineMask(dis, win, ShapeBounding, 0, 0, pm, ShapeSet);

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
