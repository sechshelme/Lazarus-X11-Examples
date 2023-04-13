unit X11Scrollbar;

{$mode ObjFPC}{$H+}

interface

uses
  unixtype, ctypes, xlib, xutil, keysym, x,
  X11Utils, X11Panel, X11Component, X11Button;

type

  { TX11Button }

  { TX11ScrollBar }

  TX11ScrollBar = class(TX11Panel)
  private
    FMax, FMin: integer;
    FPosition: integer;
    FOnChange: TNotifyEvent;
    FrontButton, BackButton, FaceButton: TX11Button;
    FSmallChange: integer;
    isFaceDown: boolean;
    FirstMousePos, FirstFacePos: integer;
    procedure BackButtonClick(Sender: TObject);
    procedure FaceButtonMouseMove(Sender: TObject; Event: TXEvent);
    procedure FaceButtonMouseUp(Sender: TObject; Event: TXEvent);
    procedure FrontButtonClick(Sender: TObject);
    procedure FaceButtonMouseDown(Sender: TObject; Event: TXEvent);
    procedure SetFacePosition;
    procedure SetMax(AValue: integer);
    procedure SetMin(AValue: integer);
  protected
    procedure DoOnResize(AWidth, AHeight: cint); override;
    procedure DoOnMouseMove(var Event: TXEvent); override;
  public
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
    property Position: integer read FPosition write FPosition;
    property Min: integer read FMin write SetMin;
    property Max: integer read FMax write SetMax;
    property SmallChange: integer read FSmallChange write FSmallChange;
    constructor Create(TheOwner: TX11Component);
    destructor Destroy; override;
  end;

implementation

{ TX11ScrollBar }

procedure TX11ScrollBar.FrontButtonClick(Sender: TObject);
begin
  Dec(FPosition, FSmallChange);
  if FPosition < FMin then begin
    FPosition := FMin;
  end;
  if OnChange <> nil then begin
    OnChange(Self);
  end;
  SetFacePosition;
end;

procedure TX11ScrollBar.BackButtonClick(Sender: TObject);
begin
  Inc(FPosition, FSmallChange);
  if FPosition > FMax then begin
    FPosition := Max;
  end;
  if OnChange <> nil then begin
    OnChange(Self);
  end;
  SetFacePosition;
end;

procedure TX11ScrollBar.FaceButtonMouseDown(Sender: TObject; Event: TXEvent);
begin
  isFaceDown := True;
  FirstMousePos := Event.xmotion.x_root;
  FirstFacePos := FaceButton.Left;
end;

procedure TX11ScrollBar.FaceButtonMouseUp(Sender: TObject; Event: TXEvent);
begin
  isFaceDown := False;
end;

procedure TX11ScrollBar.FaceButtonMouseMove(Sender: TObject; Event: TXEvent);
var
  L, dif: integer;
  trackSrc, track: integer;
begin
  if isFaceDown then  begin
    dif := Event.xmotion.x_root - FirstMousePos;

    L := FirstFacePos + dif;
    if L < BackButton.Width then begin
      L := BackButton.Width;
    end;
    if L > Width - BackButton.Width * 2 then begin
      L := Width - BackButton.Width * 2;
    end;
    FaceButton.Left := L;
    L := L - FrontButton.Width;

    trackSrc := Width - FrontButton.Width - FaceButton.Width - BackButton.Width;
    track := FMax - FMin;
    Position := L * track div trackSrc + Min;
    if OnChange <> nil then begin
      OnChange(Self);
    end;
  end;
end;

procedure TX11ScrollBar.DoOnMouseMove(var Event: TXEvent);
begin
  inherited DoOnMouseMove(Event);
end;

procedure TX11ScrollBar.SetFacePosition;
var
  trackSrc, track: integer;
begin
  trackSrc := Width - FrontButton.Width - BackButton.Width - FaceButton.Width;
  track := FMax - FMin;
  FaceButton.Left := (FPosition - FMin) * trackSrc div track + FrontButton.Width;
end;

procedure TX11ScrollBar.SetMax(AValue: integer);
begin
  if FMax <> AValue then begin
    FMax := AValue;
    Position:=(FMin+ FMax)div 2;
  end;
end;

procedure TX11ScrollBar.SetMin(AValue: integer);
begin
  if FMin <> AValue then begin
    FMin := AValue;
    Position:=(FMin+ FMax)div 2;
  end;
end;

procedure TX11ScrollBar.DoOnResize(AWidth, AHeight: cint);
begin
  inherited DoOnResize(AWidth, AHeight);
  SetFacePosition;
end;

constructor TX11ScrollBar.Create(TheOwner: TX11Component);
begin
  inherited Create(TheOwner);
  IsFocusable := True;
  OnChange := nil;
  FPosition := 10;
  FSmallChange := 10;
  FMin := 0;
  FMax := 255;
  FPosition := 128;

  FrontButton := TX11Button.Create(Self);
  with FrontButton do begin
    Width := 25;
    Height := Self.Height;
    Caption := '<';
    Anchors := [akLeft, akTop, akBottom];
    OnClick := @FrontButtonClick;
  end;

  BackButton := TX11Button.Create(Self);
  with BackButton do begin
    Width := 25;
    Height := Self.Height;
    Left := Self.Width - 25;
    Caption := '>';
    Anchors := [akTop, akRight, akBottom];
    OnClick := @BackButtonClick;
  end;

  FaceButton := TX11Button.Create(Self);
  with FaceButton do begin
    Width := 25;
    Height := Self.Height;
    Caption := 'O';
    Anchors := [akTop, akLeft, akBottom];
    SetFacePosition;
    OnMouseDown := @FaceButtonMouseDown;
    OnMouseUp := @FaceButtonMouseUp;
    OnMouseMove := @FaceButtonMouseMove;
  end;
end;

destructor TX11ScrollBar.Destroy;
begin
  inherited Destroy;
end;

end.
