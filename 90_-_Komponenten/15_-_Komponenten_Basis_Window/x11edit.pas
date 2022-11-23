unit X11Edit;

{$mode ObjFPC}{$H+}

interface

uses
  unixtype, ctypes, xlib, xutil, keysym, x,
  X11Panel, X11Component;

type

  { TX11Edit }

  TX11Edit = class(TX11Panel)
  private
    FText: string;
    CursorPos, FontWidht: integer;
    procedure SetText(AValue: string);
  protected
    procedure DoOnPaint; override;
    procedure DoOnKeyPress(UTF8Char: TUTF8Char); override;
  public
    property Text: string read FText write SetText;
    constructor Create(TheOwner: TX11Component);
    destructor Destroy; override;
  end;

implementation

procedure TX11Edit.SetText(AValue: string);
begin
  if FText <> AValue then begin
    FText := AValue;
  end;
  CursorPos := Length(Text) + 1;
  DoOnPaint;
end;

procedure TX11Edit.DoOnPaint;
begin
  inherited DoOnPaint;
  XSetForeground(dis, gc, $000000);
  XDrawString(dis, Window, gc, 5, Height - BorderWidth - 2, PChar(FText), Length(FText));
  XFillRectangle(dis, Window, gc, CursorPos * FontWidht, Height - BorderWidth - 0, FontWidht, 1);
end;

procedure TX11Edit.DoOnKeyPress(UTF8Char: TUTF8Char);
begin
  inherited DoOnKeyPress(UTF8Char);
  FText := FText + UTF8Char;
  Inc(CursorPos);
  DoOnPaint;
end;

constructor TX11Edit.Create(TheOwner: TX11Component);
begin
  inherited Create(TheOwner);
  FontWidht := 6;
  Text := 'Edit';
  Height := 24;
  Color := $FFFFFF;
  Bevel := bvLowred;
end;

destructor TX11Edit.Destroy;
begin
  inherited Destroy;
end;

end.
