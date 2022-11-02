unit X11Component;

{$mode ObjFPC}{$H+}

interface

uses
  unixtype, ctypes, xlib, xutil, keysym, x;

type

  TNotifyEvent = procedure(Sender: TObject) of object;

  { TX11Component }

  TX11Component = class(TObject)
  private
    FCaption: string;
    FColor: culong;
    FHeight, FLeft, FTop, FWidth: cint;
    ComponentList: array of TX11Component;
    FOnClick: TNotifyEvent;
  protected
    dis: PDisplay;
    win: TDrawable;
    gc: TGC;
    IsMouseDown, IsButtonDown: boolean;
    Region: TRegion;
  public
    property Caption: string read FCaption write FCaption;
    property Color: culong read FColor write FColor;
    property Left: cint read FLeft write FLeft;
    property Top: cint read FTop write FTop;
    property Width: cint read FWidth write FWidth;
    property Height: cint read FHeight write FHeight;
    property OnClick: TNotifyEvent read FOnClick write FOnClick;
    constructor Create(Adis: PDisplay; Awin: TDrawable; Agc: TGC);
    destructor Destroy; override;
    procedure Paint; virtual;
    procedure Resize;
    procedure MouseDown(x, y: integer);
    procedure MouseMove(x, y: integer);
    procedure MouseUp(x, y: integer);
  end;

implementation

{ TX11Component }

constructor TX11Component.Create(Adis: PDisplay; Awin: TDrawable; Agc: TGC);
begin
  Color := $BBBBBB;

  dis := Adis;
  win := Awin;
  gc := Agc;

  Region := XCreateRegion;
end;

destructor TX11Component.Destroy;
begin
  XDestroyRegion(Region);
  inherited Destroy;
end;

procedure TX11Component.Paint;
begin
  XSetRegion(dis, gc, Region);
  XSetForeground(dis, gc, Color);
  XFillRectangle(dis, win, gc, Left, Top, Width - 1, Height);
end;

procedure TX11Component.Resize;
var
  rect: TXRectangle;
begin
  rect.x := Left;
  rect.y := Top;
  rect.Width := Width;
  rect.Height := Height;
  XUnionRectWithRegion(@rect, Region, Region);
end;

procedure TX11Component.MouseDown(x, y: integer);
begin
  if XPointInRegion(Region, x, y) then begin
    //  if (x > Left) and (x < Left + Width) and (y > Top) and (y < Top + Height) then begin
    IsMouseDown := True;
    IsButtonDown := True;
  end else begin
    IsMouseDown := False;
    IsButtonDown := False;
  end;
end;

procedure TX11Component.MouseMove(x, y: integer);
begin
  if IsMouseDown then begin
    if XPointInRegion(Region, x, y) then begin
      //    if (x > Left) and (x < Left + Width) and (y > Top) and (y < Top + Height) then begin
      IsButtonDown := True;
    end else begin
      IsButtonDown := False;
    end;
  end;
end;

procedure TX11Component.MouseUp(x, y: integer);
begin
  if XPointInRegion(Region, x, y) then begin
    //  if (x > Left) and (x < Left + Width) and (y > Top) and (y < Top + Height) then begin
    if OnClick <> nil then begin
      OnClick(self);
    end;
  end;
  IsMouseDown := False;
  IsButtonDown := False;
end;

end.
