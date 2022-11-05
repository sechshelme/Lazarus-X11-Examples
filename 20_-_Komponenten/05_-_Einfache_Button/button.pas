unit Button;

{$mode ObjFPC}{$H+}

interface

uses
  unixtype, ctypes, xlib, xutil, keysym, x;

type

  { TButton }

  TNotifyEvent = procedure(Sender: TObject) of object;

  TButton = class(TObject)
  private
    FOnClick: TNotifyEvent;
    FCaption: string;
    FHeight, FLeft, FTop, FWidth: cint;
    IsMouseDown, IsButtonDown: boolean;

    ColLeftTop, ColRightBottom, Color: culong;
    Region: TRegion;

    dis: PDisplay;
    win: TDrawable;
    gc: TGC;
  public
    property Left: cint read FLeft write FLeft;
    property Top: cint read FTop write FTop;
    property Width: cint read FWidth write FWidth;
    property Height: cint read FHeight write FHeight;

    property Caption: string read FCaption write FCaption;
    property OnClick: TNotifyEvent read FOnClick write FOnClick;
    constructor Create(Adis: PDisplay; Awin: TDrawable; Agc: TGC);
    destructor Destroy; override;
    procedure Paint;
    procedure Resize;
    procedure EventHandle(Event: TXEvent); virtual;
  end;

implementation

{ TButton }

constructor TButton.Create(Adis: PDisplay; Awin: TDrawable; Agc: TGC);
begin
  IsMouseDown := False;
  IsButtonDown := False;
  Left := 0;
  Top := 0;
  Width := 75;
  Height := 25;
  OnClick := nil;

  Color := $00;
  ColLeftTop := $DDDDDD;
  ColRightBottom := $333333;

  dis := Adis;
  win := Awin;
  gc := Agc;
  Region := XCreateRegion;
end;

destructor TButton.Destroy;
begin
  XDestroyRegion(Region);
  inherited Destroy;
end;

procedure TButton.Paint;
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
  //  Resize;
  XSetRegion(dis, gc, Region);

  if IsButtonDown then begin
    Color := $BBBBBB;
    ColRightBottom := $EEEEEE;
    ColLeftTop := $333333;
    IsButtonDown := True;
  end else begin
    Color := $BBBBBB;
    ColRightBottom := $333333;
    ColLeftTop := $EEEEEE;
  end;

  XSetForeground(dis, gc, Color);
  XFillRectangle(dis, win, gc, Left, Top, Width - 1, Height - 1);

  XSetForeground(dis, gc, ColLeftTop);
  poly[0] := p(1, 1);
  poly[1] := p(Width - 1, 1);
  poly[2] := p(Width - 1 - b, b + 1);
  poly[3] := p(b + 1, b);
  poly[4] := p(b + 1, Height - 1 - b + 1);
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
  poly[3] := p(b + 1, Height - 1 - b);
  poly[4] := p(Width - 1 - b, Height - 1 - b);
  poly[5] := p(Width - 1 - b, b + 1);
  for i := 0 to Length(poly) - 1 do begin
    Inc(poly[i].x, Left);
    Inc(poly[i].y, Top);
  end;
  XFillPolygon(dis, win, gc, @poly, Length(poly), 0, CoordModeOrigin);

  XSetForeground(dis, gc, $00);
  XDrawRectangle(dis, win, gc, Left, Top, Width - 1, Height - 1);
  if IsButtonDown then begin
    XDrawString(dis, win, gc, Left + 8 + b, Top + 15 + b, PChar(Caption), Length(Caption));
  end else begin
    XDrawString(dis, win, gc, Left + 7 + b, Top + 14 + b, PChar(Caption), Length(Caption));
  end;
end;

procedure TButton.Resize;
var
  rect: TXRectangle;
begin
  rect.x := Left;
  rect.y := Top;
  rect.Width := Width;
  rect.Height := Height;
  XUnionRectWithRegion(@rect, Region, Region);
end;

procedure TButton.EventHandle(Event: TXEvent);
var
  x, y: cint;
  IsInRegion: TBoolResult;
begin
  x := Event.xbutton.x;
  y := Event.xbutton.y;
  IsInRegion := XPointInRegion(Region, x, y);

  case Event._type of
    Expose: begin
      Paint;
    end;
    ConfigureNotify: begin
      Resize;
    end;
    ButtonPress: begin
      if IsInRegion then begin
        IsMouseDown := True;
        IsButtonDown := True;
      end else begin
        IsMouseDown := False;
        IsButtonDown := False;
      end;
      Paint;
    end;
    MotionNotify: begin
      if IsMouseDown then begin
        if IsInRegion then begin
          IsButtonDown := True;
        end else begin
          IsButtonDown := False;
        end;
        Paint;
      end;
    end;
    ButtonRelease: begin
      if IsInRegion then begin
        if OnClick <> nil then begin
          OnClick(self);
        end;
      end;
      IsMouseDown := False;
      IsButtonDown := False;
      Paint;
    end;
  end;
end;

end.
