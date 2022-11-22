unit X11Button;

{$mode ObjFPC}{$H+}

interface

uses
  unixtype, ctypes, xlib, xutil, keysym, x,
  X11Panel, X11Component;

type

  { TX11Button }

  TX11Button = class(TX11Panel)
  protected
    procedure DoOnPaint; override;
    procedure DoOnKeyPress(UTF8Char: TUTF8Char); override;
  public
    constructor Create(TheOwner: TX11Component);
    destructor Destroy; override;
  end;

implementation

constructor TX11Button.Create(TheOwner: TX11Component);
begin
  inherited Create(TheOwner);

  IsMouseDown := False;
  IsButtonDown := False;
  Width := 75;
  Height := 25;
  BorderWidth := 3;
end;

destructor TX11Button.Destroy;
begin
  inherited Destroy;
end;

procedure TX11Button.DoOnPaint;
begin
  if IsButtonDown then begin
    Bevel := bvLowred;
  end else begin
    Bevel := bvRaised;
  end;

  inherited DoOnPaint;

  XSetForeground(dis, gc, $00);
  XDrawRectangle(dis, Window, gc, 0, 0, Width - 1, Height - 1);
  if IsButtonDown then begin
    XDrawString(dis, Window, gc, 8 + BorderWidth, 15 + BorderWidth, PChar(Caption), Length(Caption));
  end else begin
    XDrawString(dis, Window, gc, 7 + BorderWidth, 14 + BorderWidth, PChar(Caption), Length(Caption));
  end;
end;

procedure TX11Button.DoOnKeyPress(UTF8Char: TUTF8Char);
begin
  inherited DoOnKeyPress(UTF8Char);
  if (UTF8Char = #13) or (UTF8Char = #32) then begin
    DoOnClick;
  end;
end;

end.
