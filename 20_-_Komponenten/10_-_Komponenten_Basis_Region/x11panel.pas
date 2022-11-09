unit X11Panel;

{$mode ObjFPC}{$H+}

interface

uses
  unixtype, ctypes, xlib, xutil, keysym, x,
  X11Component;

type

  //  Panel1.BevelOuter:=bvRaised;
  //  Panel1.BevelInner:=bvLowered;
  TBevels = (bvRaised, bvLowred, bvNone);
  //  TBevels = set of TBevelKind;


  { TX11Panel }

  TX11Panel = class(TX11Component)
  private
    FBevels: TBevels;
    FBorderWidth: cint;
  protected
    ColLeftTop, ColRightBottom: culong;
  public
    property Bevel: TBevels read FBevels write FBevels;
    property BorderWidth: cint read FBorderWidth write FBorderWidth;
    constructor Create(TheOwner: TX11Component);
    procedure DoOnPaint; override;
  end;

implementation

constructor TX11Panel.Create(TheOwner: TX11Component);
begin
  inherited Create(TheOwner);
  //  Color := $888888;
  ColRightBottom := $333333;
  ColLeftTop := $EEEEEE;
  FBorderWidth := 3;
  Bevel := bvRaised;
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
  XSetRegion(dis, gc, Region);
  XSetForeground(dis, gc, Color);
  XFillRectangle(dis, win, gc, Left, Top, Width, Height);
  inherited DoOnPaint;
  XSetRegion(dis, gc, Region);

  if Bevel <> bvNone then begin
    if Bevel = bvRaised then begin
      XSetForeground(dis, gc, ColLeftTop);
    end else begin
      XSetForeground(dis, gc, ColRightBottom);
    end;
    poly[0] := p(0, 0);
    poly[1] := p(Width, 0);
    poly[2] := p(Width - BorderWidth + 1, BorderWidth);
    poly[3] := p(BorderWidth, BorderWidth);
    poly[4] := p(BorderWidth, Height - BorderWidth + 1);
    poly[5] := p(0, Height - 1);
    for i := 0 to Length(poly) - 1 do begin
      Inc(poly[i].x, Left);
      Inc(poly[i].y, Top);
    end;
    XFillPolygon(dis, win, gc, @poly, Length(poly), 0, CoordModeOrigin);

    if Bevel = bvRaised then begin
      XSetForeground(dis, gc, ColRightBottom);
    end else begin
      XSetForeground(dis, gc, ColLeftTop);
    end;
    poly[0] := p(Width, 0);
    poly[1] := p(Width, Height);
    poly[2] := p(0, Height);
    poly[3] := p(BorderWidth + 1, Height - BorderWidth);
    poly[4] := p(Width - BorderWidth, Height - BorderWidth);
    poly[5] := p(Width - BorderWidth, BorderWidth + 1);
    for i := 0 to Length(poly) - 1 do begin
      Inc(poly[i].x, Left);
      Inc(poly[i].y, Top);
    end;
    XFillPolygon(dis, win, gc, @poly, Length(poly), 0, CoordModeOrigin);

  end;
end;

end.
