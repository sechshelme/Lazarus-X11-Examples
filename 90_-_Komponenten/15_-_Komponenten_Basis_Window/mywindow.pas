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
    procedure DoOnPaint; override;

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
    Left := 150;
    Top := 150;
    BorderWidth := 20;
    Height := Self.Height - 300;
    Width := Self.Width - 300;
    Anchors := [akTop, akLeft, akRight, akBottom];
  end;
  Caption := Name;
end;

destructor TMyWindow.Destroy;
begin
  inherited Destroy;
end;

procedure TMyWindow.DoOnPaint;
begin
  //  inherited Paint;
end;

procedure TMyWindow.btnClick(Sender: TObject);
begin
  TX11Component(Sender).Parent.Close;
end;

end.
