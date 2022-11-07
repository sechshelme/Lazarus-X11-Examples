unit X11Panel;

{$mode ObjFPC}{$H+}

interface

uses
  unixtype, ctypes, xlib, xutil, keysym, x,
  X11Component;

type

  { TX11Panel }

  TX11Panel = class(TX11Component)
  private
    FBorderWidth: cint;
  protected
    ColLeftTop, ColRightBottom: culong;
  public
    property BorderWidth: cint read FBorderWidth write FBorderWidth;
    constructor Create(TheOwner: TX11Component);
    procedure DoOnPaint; override;
  end;

implementation

{ TX11Panel }

constructor TX11Panel.Create(TheOwner: TX11Component);
begin
  inherited Create(TheOwner);
  Color := $888888;
  FBorderWidth := 3;
end;

procedure TX11Panel.DoOnPaint;
var
  poly: array[0..5] of TXPoint;
  i: integer;

  function p(x, y: cint): TXPoint; inline;
  begin
    Result.x := x;
    Result.y := y;
  end;

begin
  inherited DoOnPaint;

  XSetForeground(dis, gc, ColLeftTop);
  poly[0] := p(1, 1);
  poly[1] := p(Width - 1, 1);
  poly[2] := p(Width - 1 - BorderWidth, BorderWidth + 1);
  poly[3] := p(BorderWidth + 1, BorderWidth);
  poly[4] := p(BorderWidth + 1, Height - 1 - BorderWidth + 1);
  poly[5] := p(1, Height - 1);
  for i := 0 to Length(poly) - 1 do begin
    Inc(poly[i].x, Left);
    Inc(poly[i].y, Top);
  end;
  XFillPolygon(dis, win, gc, @poly, Length(poly), 0, CoordModeOrigin);

  XSetForeground(dis, gc, ColRightBottom);
  poly[0] := p(Width - 1, 1);
  poly[1] := p(Width - 1, Height - 1);
  poly[2] := p(1, Height - 1);
  poly[3] := p(BorderWidth + 1, Height - 1 - BorderWidth);
  poly[4] := p(Width - 1 - BorderWidth, Height - 1 - BorderWidth);
  poly[5] := p(Width - 1 - BorderWidth, BorderWidth + 1);
  for i := 0 to Length(poly) - 1 do begin
    Inc(poly[i].x, Left);
    Inc(poly[i].y, Top);
  end;
  XFillPolygon(dis, win, gc, @poly, Length(poly), 0, CoordModeOrigin);


  //XSetForeground(dis, gc, ColLeftTop);
  //poly[0] := p(1, 1);
  //poly[1] := p(Width - 1, 1);
  //poly[2] := p(Width - 1 - BorderWidth, BorderWidth + 1);
  //poly[3] := p(BorderWidth + 1, BorderWidth);
  //poly[4] := p(BorderWidth + 1, Height - 1 - BorderWidth + 1);
  //poly[5] := p(1, Height - 1);
  //for i := 0 to Length(poly) - 1 do begin
  //  Inc(poly[i].x, Left);
  //  Inc(poly[i].y, Top);
  //end;
  //XFillPolygon(dis, win, gc, @poly, Length(poly), 0, CoordModeOrigin);
  //
  //XSetForeground(dis, gc, ColRightBottom);
  //poly[0] := p(Width - 1, 1);
  //poly[1] := p(Width - 1, Height - 1);
  //poly[2] := p(1, Height - 1);
  //poly[3] := p(BorderWidth + 1, Height - 1 - BorderWidth);
  //poly[4] := p(Width - 1 - BorderWidth, Height - 1 - BorderWidth);
  //poly[5] := p(Width - 1 - BorderWidth, BorderWidth + 1);
  //for i := 0 to Length(poly) - 1 do begin
  //  Inc(poly[i].x, Left);
  //  Inc(poly[i].y, Top);
  //end;
  //XFillPolygon(dis, win, gc, @poly, Length(poly), 0, CoordModeOrigin);
end;

end.
