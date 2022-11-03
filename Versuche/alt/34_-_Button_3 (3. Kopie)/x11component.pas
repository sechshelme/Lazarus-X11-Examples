unit X11Component;

{$mode ObjFPC}{$H+}

interface

uses
  unixtype, ctypes, xlib, xutil, keysym, x;

type

  TNotifyEvent = procedure(Sender: TObject) of object;
  TMouseMoveEvent = procedure(Sender: TObject; X, Y: integer) of object;
  { TX11Component }

  TX11Component = class(TObject)
  private
    FCaption: string;
    FColor: culong;
    FHeight, FLeft, FTop, FWidth: cint;
    FOnMouseMove: TMouseMoveEvent;
    FName: string;
    FParent: TX11Component;
    ComponentList: array of TX11Component;
    FOnClick: TNotifyEvent;
    procedure SetTop(ATop: cint);
    procedure SetLeft(ALeft: cint);
  protected
    IsMouseDown, IsButtonDown: boolean;
    Region: TRegion;
  public
    dis: PDisplay;
    win: TDrawable;
    gc: TGC;
    property Name: string read FName write FName;
    property Parent: TX11Component read FParent write FParent;
    property Caption: string read FCaption write FCaption;
    property Color: culong read FColor write FColor;
    property Left: cint read FLeft write SetLeft;
    property Top: cint read FTop write SetTop;
    property Width: cint read FWidth write FWidth;
    property Height: cint read FHeight write FHeight;
    property OnClick: TNotifyEvent read FOnClick write FOnClick;
    property OnMouseMove: TMouseMoveEvent read FOnMouseMove write FOnMouseMove;
    constructor Create(TheOwner: TX11Component);
    destructor Destroy; override;
    procedure EventHandle(Event: TXEvent); virtual;
    procedure Paint; virtual;
    procedure Resize;
  end;

implementation

{ TX11Component }

procedure TX11Component.SetTop(ATop: cint);
begin
  if Parent = nil then begin
    FTop := ATop;
  end else begin
    FTop := Parent.FTop + ATop;
  end;
end;

procedure TX11Component.SetLeft(ALeft: cint);
begin
  if Parent = nil then begin
    FLeft := ALeft;
  end else begin
    FLeft := Parent.FLeft + ALeft;
  end;
end;

constructor TX11Component.Create(TheOwner: TX11Component);
var
  s: string;
begin
  FParent := TheOwner;

  Color := $BBBBBB;

  Left := 0;
  Top := 0;
  Width := 320;
  Height := 200;

  Region := XCreateRegion;
  Name := 'X11Component';

  if TheOwner <> nil then begin
    SetLength(TheOwner.ComponentList, Length(TheOwner.ComponentList) + 1);
    TheOwner.ComponentList[Length(TheOwner.ComponentList) - 1] := Self;
    dis := TheOwner.dis;
    win := TheOwner.win;
    gc := TheOwner.gc;
    str(Length(TheOwner.ComponentList), s);
    FName += s;
  end;
end;

destructor TX11Component.Destroy;
begin
  XDestroyRegion(Region);
  inherited Destroy;
end;

procedure TX11Component.EventHandle(Event: TXEvent);
var
  i: integer;
  x, y: cint;
  IsInRegion: boolean;
begin
  for i := 0 to Length(ComponentList) - 1 do begin
    ComponentList[i].EventHandle(Event);
  end;

  x := Event.xbutton.x;
  y := Event.xbutton.y;
  IsInRegion := XPointInRegion(Region, x, y);
  case Event._type of
    Expose: begin
      //      Paint;
      // Bildschirm löschen
    end;
    ConfigureNotify: begin
            Width := Event.xconfigure.Width;
            Height := Event.xconfigure.Height;
      //          WriteLn('resize');
      //for i := 0 to Length(Button) - 1 do begin
      //  Button[i].Resize;
      //end;
      Resize;
    end;
    KeyPress: begin
      if XLookupKeysym(@Event.xkey, 0) = XK_Escape then begin
        //        Break;
      end;
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
      if IsInRegion and (OnMouseMove <> nil) then begin
        OnMouseMove(self, x, y);
      end;
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

procedure TX11Component.Paint;
var
  i: integer;
begin
  XSetRegion(dis, gc, Region);
  XSetForeground(dis, gc, Color);
  XFillRectangle(dis, win, gc, Left, Top, Width - 1, Height);
  for i := 0 to Length(ComponentList) - 1 do begin
    ComponentList[i].Paint;
  end;
end;

procedure TX11Component.Resize;
var
  rect: TXRectangle;
begin
  rect.x := Left;
  rect.y := Top;
  rect.Width := Width;
  rect.Height := Height;
  if XEmptyRegion(Region)=0 then begin
    XDestroyRegion(Region);
  end;
  Region := XCreateRegion;

  XUnionRectWithRegion(@rect, Region, Region);
  Paint;
end;

end.
