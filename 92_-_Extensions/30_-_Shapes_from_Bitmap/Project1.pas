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
  Event: TXEvent;
  scr: cint;
  BitmapWin, RegionWin, rootWin, RectangleWin, ShapeWin: TWindow;

const
  Mask = KeyPressMask or ExposureMask;

  rects: array of TXRectangle = (
    (x: 10; y: 10; Width: 60; Height: 60),
    (x: 50; y: 50; Width: 80; Height: 80));

  procedure Create_Bitmap_Shape;
  var
    pm: TPixmap;
  begin
    pm := XCreateBitmapFromData(dis, BitmapWin, PChar(noname_bits), noname_width, noname_height);
    XShapeCombineMask(dis, BitmapWin, ShapeBounding, 0, 0, pm, ShapeSet);
  end;

procedure Create_Rectangle_Shape;
const
  rects: array of TXRectangle = (
    (x: 10; y: 10; Width: 60; Height: 60),
    (x: 50; y: 50; Width: 80; Height: 80));
begin
  XShapeCombineRectangles(dis, RectangleWin, ShapeBounding, 0, 0, PXRectangle(rects), Length(rects), ShapeSet, Unsorted);
end;


procedure Create_Shape_Shape;
begin
  XShapeCombineShape(dis, ShapeWin, ShapeBounding, 0, 0, BitmapWin, ShapeSet, Unsorted);
end;


  procedure Create_Region_Shape;

  // https://gist.github.com/mertyildiran/b33c6b2df85d26981358aad3854d9d15

  var
    Region1, Region2, Region3: TRegion;
  begin
    Region1 := XCreateRegion;
    XUnionRectWithRegion(@rects[0], Region1, Region1);

    Region2 := XCreateRegion;
    XUnionRectWithRegion(@rects[1], Region2, Region2);

    Region3 := XCreateRegion;
    XXorRegion(Region1, Region2, Region3);

    XShapeCombineRegion(dis, RegionWin, ShapeBounding, 0, 0, Region3, ShapeSet);

    XDestroyRegion(Region1);
    XDestroyRegion(Region2);
    XDestroyRegion(Region3);
  end;

  procedure Draw(ev: TXEvent);
  const
    SIZE = 200;
  var
    gc: TGC;
    i: integer;
  begin
    gc := XCreateGC(dis, rootWin, 0, nil);
    for i := 0 to SIZE do begin
      XSetForeground(dis,gc, i*123);
      XDrawRectangle(dis, ev.xexpose.window, gc, i, i, SIZE*2-i, SIZE*2-i);
    end;
  end;


begin
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);
  rootWin := RootWindow(dis, scr);

  BitmapWin := XCreateSimpleWindow(dis, rootWin, 10, 10, noname_width, noname_height, 1, $000000, $FF00000);
  XSelectInput(dis, BitmapWin, Mask);
  XStoreName(dis, BitmapWin, 'Bitmap Shapes');

  RegionWin := XCreateSimpleWindow(dis, rootWin, 10, 10, 320, 200, 1, $000000, $00FF000);
  XSelectInput(dis, RegionWin, Mask);
  XStoreName(dis, RegionWin, 'Region Shapes');

  RectangleWin := XCreateSimpleWindow(dis, rootWin, 10, 10, 320, 200, 1, $000000, $00FF000);
  XSelectInput(dis, RectangleWin, Mask);
  XStoreName(dis, RectangleWin, 'Rectangle Shapes');

  ShapeWin := XCreateSimpleWindow(dis, rootWin, 10, 10, 320, 200, 1, $000000, $00FF000);
  XSelectInput(dis, ShapeWin, Mask);
  XStoreName(dis, ShapeWin, 'Shapes Shapes');

  Create_Bitmap_Shape;
  Create_Rectangle_Shape;
  Create_Region_Shape;
  Create_Shape_Shape;

  XMapWindow(dis, BitmapWin);
  XMapWindow(dis, RegionWin);
  XMapWindow(dis, RectangleWin);
  XMapWindow(dis, ShapeWin);

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

  XDestroyWindow(dis, BitmapWin);
  XDestroyWindow(dis, RegionWin);
  XDestroyWindow(dis, RectangleWin);
  XDestroyWindow(dis, ShapeWin );

  XCloseDisplay(dis);
end.
