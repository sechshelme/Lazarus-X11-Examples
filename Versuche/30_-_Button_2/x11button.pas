unit X11Button;

{$mode ObjFPC}{$H+}

interface

uses
  unixtype, ctypes, xlib, xutil, keysym, x,
  X11Component;

type

  { TX11Button }

  TX11Button = class(TX11Component)
  private
    ColLeftTop, ColRightBottom: culong;
  public
    constructor Create(TheOwner: TX11Component;Adis: PDisplay; Awin: TDrawable; Agc: TGC);
    destructor Destroy; override;
    procedure Paint; override;
  end;

implementation

{ TX11Button }

constructor TX11Button.Create(TheOwner: TX11Component; Adis: PDisplay;
  Awin: TDrawable; Agc: TGC);
begin
  inherited Create(TheOwner, Adis,Awin,Agc);

  IsMouseDown := False;
  IsButtonDown := False;
  Width := 75;
  Height := 25;
  OnClick := nil;

  ColLeftTop := $DDDDDD;
  ColRightBottom := $333333;
end;

destructor TX11Button.Destroy;
begin
  inherited Destroy;
end;

procedure TX11Button.Paint;
var
  poly: array[0..5] of TXPoint;
  i: integer;
const
  b = 2;

  function p(x, y: cint): TXPoint; inline;
  begin
    Result.x := x;
    Result.y := y;
  end;

begin
  inherited Paint;

  if IsButtonDown then begin
    ColRightBottom := $EEEEEE;
    ColLeftTop := $333333;
  end else begin
    ColRightBottom := $333333;
    ColLeftTop := $EEEEEE;
  end;

  XSetForeground(dis, gc, ColLeftTop);
  poly[0] := p(0, 0);
  poly[1] := p(Width - 1, 0);
  poly[2] := p(Width - 1 - b, b);
  poly[3] := p(b, b);
  poly[4] := p(b, Height - 1 - b);
  poly[5] := p(0, Height - 1);
  for i := 0 to Length(poly) - 1 do begin
    Inc(poly[i].x, Left);
    Inc(poly[i].y, Top);
  end;
  XFillPolygon(dis, win, gc, @poly, Length(poly), 0, CoordModeOrigin);

  XSetForeground(dis, gc, ColRightBottom);
  poly[0] := p(Width - 1, 0);
  poly[1] := p(Width - 1, Height - 1);
  poly[2] := p(0, Height - 1);
  poly[3] := p(b, Height - 1 - b);
  poly[4] := p(Width - 1 - b, Height - 1 - b);
  poly[5] := p(Width - 1 - b, b);
  for i := 0 to Length(poly) - 1 do begin
    Inc(poly[i].x, Left);
    Inc(poly[i].y, Top);
  end;
  XFillPolygon(dis, win, gc, @poly, Length(poly), 0, CoordModeOrigin);

  XSetForeground(dis, gc, $00);
  XDrawRectangle(dis, win, gc, Left, Top, Width - 1, Height - 1);
  XSetForeground(dis, gc, $00);
  if IsButtonDown then begin
    XDrawString(dis, win, gc, Left + 8 + b, Top + 15 + b, PChar(Caption), Length(Caption));
  end else begin
    XDrawString(dis, win, gc, Left + 7 + b, Top + 14 + b, PChar(Caption), Length(Caption));
  end;
end;

end.
