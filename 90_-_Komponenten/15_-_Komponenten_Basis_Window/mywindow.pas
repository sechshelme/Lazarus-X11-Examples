unit MyWindow;

{$mode ObjFPC}{$H+}

interface

uses
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  x,
  X11Button,
  X11Component,
  X11Panel,
  X11Window,
  X11Desktop;

type

  { TMyWindow }

  TMyWindow = class(TX11Window)
    constructor Create(TheOwner: TX11Component);
    destructor Destroy; override;
  protected
    procedure Paint; override;

  private
    procedure btnClick(Sender: TObject);
  end;

implementation

{ TMyWindow }

constructor TMyWindow.Create(TheOwner: TX11Component);
var
  btn: TX11Button;
begin
  inherited Create(TheOwner, True);
  btn := TX11Button.Create(Self);
  with btn do begin
    Caption := 'close';
    OnClick := @btnClick;
    Left := 15;
    Top := 15;
    BorderWidth := 20;
    Height := Self.Height - 30;
    Width := Self.Width - 30;
    Anchors := [akTop, akLeft, akRight, akBottom];
  end;
  Caption := Name;
end;

destructor TMyWindow.Destroy;
begin
  inherited Destroy;
end;

procedure TMyWindow.Paint;
begin
  //  inherited Paint;
end;

procedure TMyWindow.btnClick(Sender: TObject);
begin
  TX11Component(Sender).Parent.Close;
end;

end.
