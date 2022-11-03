//image image.png
(*
Verschiedene Varinaten um Rechtecke zu zeichnen:

- [XDrawRectangle](https://tronche.com/gui/x/xlib/graphics/filling-areas/XDrawRectangle.html)
- [XFillRectangle](https://tronche.com/gui/x/xlib/graphics/filling-areas/XFillRectangle.html)
- [XFillPolygon](https://tronche.com/gui/x/xlib/graphics/filling-areas/XFillPolygon.html) (Für ein nicht ausgefülltes Polygon nimmt man **XDrawLines**.)
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
  x,
  X11Button,
  X11Component,
  X11Form,
  X11Window;

type

  { TMyWin }

  TMyWin = class(TX11Window)
  public
    constructor Create(TheOwner: TX11Component);
    destructor Destroy; override;
  end;

var
  MyWindows: TMyWin;

  { TMyWin }

  constructor TMyWin.Create(TheOwner: TX11Component);
  begin
    inherited Create(TheOwner);
  end;

  destructor TMyWin.Destroy;
  begin
    inherited Destroy;
  end;

begin
  MyWindows := TMyWin.Create(nil);
  MyWindows.Run;
  MyWindows.Free;
end.
//code-
