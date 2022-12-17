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
    FOnChange: TNotifyEvent;
    FPosition: Integer;
    FrontButton, BackButton: TX11Button;
    procedure BackButtonClick(Sender: TObject);
    procedure FrontButtonClick(Sender: TObject);
  protected
  public
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
    property Position: Integer read FPosition write FPosition;
    constructor Create(TheOwner: TX11Component);
    destructor Destroy; override;
  end;

implementation

{ TX11ScrollBar }

procedure TX11ScrollBar.FrontButtonClick(Sender: TObject);
begin
  Dec(FPosition);
  if OnChange<>nil then OnChange(Sender);
end;

procedure TX11ScrollBar.BackButtonClick(Sender: TObject);
begin
  Inc(FPosition);
  if OnChange<>nil then OnChange(Sender);
end;

constructor TX11ScrollBar.Create(TheOwner: TX11Component);
begin
  inherited Create(TheOwner);
  OnChange:=nil;
  FPosition:=10;

  FrontButton := TX11Button.Create(Self);
  with FrontButton do begin
    Width := 25;
    Height := 25;
    Caption := '<';
    OnClick:=@FrontButtonClick;
  end;

  BackButton := TX11Button.Create(Self);
  with BackButton do begin
    Anchors := [akTop, akRight];
    Width := 25;
    Height := 25;
    Left := Self.Width - 25;
    Caption := '>';
    OnClick:=@BackButtonClick;
  end;
end;

destructor TX11ScrollBar.Destroy;
begin
  inherited Destroy;
end;

end.
