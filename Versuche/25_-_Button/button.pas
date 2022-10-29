unit Button;

{$mode ObjFPC}{$H+}

interface

uses
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  x;

type

  { TButton }

  TNotifyEvent = procedure(Sender: TObject) of object;

  TButton = class(TObject)
  private
    FCaption: string;
    FOnClick: TNotifyEvent;
    IsMouseDown: boolean;
    Left, Top, Width, Height: integer;
    Color: culong;
    r: TRegion;

  public
    dis: PDisplay;
    win: TDrawable;
    gc: TGC;
    property Caption: string read FCaption write FCaption;
    property OnClick: TNotifyEvent read FOnClick write FOnClick;
    constructor Create(ALeft, ATop, AWidth, AHeight: integer);
    destructor Destroy; override;
    procedure Paint;
    procedure MouseDown(x, y: integer);
    procedure MouseMove(x, y: integer);
    procedure MouseUp(x, y: integer);
  end;

implementation

{ TButton }

constructor TButton.Create(ALeft, ATop, AWidth, AHeight: integer);
begin
  IsMouseDown := False;
  Left := ALeft;
  Top := ATop;
  Width := AWidth;
  Height := AHeight;
  OnClick := nil;
end;

destructor TButton.Destroy;
begin
  inherited Destroy;
end;

procedure TButton.Paint;
var
  rect: TXRectangle;

begin
  r := XCreateRegion;

  rect.x := Left;
  rect.y := Top;
  rect.Width := Width;
  rect.Height := Height;
  XUnionRectWithRegion(@rect, r, r);
  //                    XRectInRegion(r, 50,50,150,150);

  XSetRegion(dis, gc, r);
  XDestroyRegion(r);



  XSetForeground(dis, gc, Color);
  XDrawRectangle(dis, win, gc, Left, Top, Width, Height);
  XSetForeground(dis, gc, $00);
  XDrawString(dis, win, gc, Left + 5, Top + 13, PChar(Caption), Length(Caption));
end;

procedure TButton.MouseDown(x, y: integer);
begin
  if (x > Left) and (x < Left + Width) and (y > Top) and (y < Top + Height) then begin
    Color := $FF00;
    IsMouseDown := True;
  end else begin
    Color := $00;
    IsMouseDown := False;
  end;
end;

procedure TButton.MouseMove(x, y: integer);
begin
  if IsMouseDown then begin
    if (x > Left) and (x < Left + Width) and (y > Top) and (y < Top + Height) then begin
      Color := $FF00;
    end else begin
      Color := $FF;
    end;
  end;
end;

procedure TButton.MouseUp(x, y: integer);
begin
  if (x > Left) and (x < Left + Width) and (y > Top) and (y < Top + Height) then begin
    if OnClick <> nil then begin
      OnClick(self);
    end;
  end;
  IsMouseDown := False;
  Color := $00;
end;

end.
