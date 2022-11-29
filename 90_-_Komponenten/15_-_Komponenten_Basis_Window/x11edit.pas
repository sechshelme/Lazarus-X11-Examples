unit X11Edit;

{$mode ObjFPC}{$H+}

interface

uses
  unixtype, ctypes, xlib, xutil, keysym, x,
  X11Utils, X11Panel, X11Component;

type

  { TX11Edit }

  TX11Edit = class(TX11Panel)
  private
    FText: string;
    Char2BArr: TXChar2BArray;
    fontStructure: PXFontStruct;
    CursorPos, FontWidht, ofsx, EditWidht: integer;
    function Gettext: string;
    procedure SetText(const AValue: string);
  protected
    procedure DoOnPaint; override;
    procedure DoOnKeyPress(UTF8Char: TUTF8Char); override;
    procedure DoOnKeyDown(var Event: TXEvent); override;
    procedure CursorOn; override;
    procedure CursorOff; override;
    procedure DoOnResize(AWidth, AHeight: cint); override;
  public
    property Text: string read Gettext write SetText;
    constructor Create(TheOwner: TX11Component);
    destructor Destroy; override;
  end;

implementation

procedure TX11Edit.SetText(const AValue: string);
begin
  if FText <> AValue then begin
    FText := AValue;
    UTF8toXChar2b(Char2BArr, FText);
    CursorPos := Length(Char2BArr) + 1;
    DoOnPaint;
  end;
end;

function TX11Edit.Gettext: string;
var
  i: integer;
begin
  Result := '';
  for i := 0 to Length(Char2BArr) - 1 do begin
    if Char2BArr[i].byte1 = 0 then begin
      if Char2BArr[i].byte2 in [32..126] then begin
        Result := Result + char(Char2BArr[i].byte2);
      end;
      if Char2BArr[i].byte2 in [159..192] then begin
        Result := Result + #194 + char(Char2BArr[i].byte2);
      end;
      if Char2BArr[i].byte2 in [192..255] then begin
        Result := Result + #195 + char(Char2BArr[i].byte2 - 64);
      end;
    end;
    if Char2BArr[i].byte1 = 1 then begin
      if Char2BArr[i].byte2 in [64..128] then begin
        Result := Result + #197 + char(Char2BArr[i].byte2 + 64);
      end;
    end;
  end;
end;

procedure TX11Edit.DoOnPaint;
begin
  inherited DoOnPaint;
  if CursorPos + ofsx > EditWidht then begin
    ofsx := EditWidht - CursorPos;
  end;
  if CursorPos + ofsx < 1 then begin
    ofsx := 1 - CursorPos;
  end;
//
//  Write('ofsx: ', ofsx);
//  Write('  curp: ', CursorPos);
//  Write('  wid: ', EditWidht);
//  WriteLn();
//

  XSetForeground(dis, gc, $000000);
  XDrawString16(dis, Window, gc, Left + ofsx * FontWidht, Height - BorderWidth - 2, @Char2BArr[0], Length(Char2BArr));
  if IsFocused then begin
    CursorOn;
  end else begin
    CursorOff;
  end;
end;

procedure TX11Edit.DoOnKeyPress(UTF8Char: TUTF8Char);
var
  TempChar2BArr: TXChar2BArray;
  i, oldCursorPos: integer;
begin
  inherited DoOnKeyPress(UTF8Char);
  if Length(UTF8Char) < 1 then begin
    Exit;
  end;
  oldCursorPos := CursorPos;
  case UTF8Char of
    #32..#126, #128..#255: begin
      FText := FText + UTF8Char;
      UTF8toXChar2b(TempChar2BArr, UTF8Char);

      //for i := 1 to Length(UTF8Char) do begin
      //  Write(byte(UTF8Char[i]), ' ');
      //end;
      //WriteLn();
      //
      //for i := 0 to Length(TempChar2BArr) - 1 do begin
      //  Write(TempChar2BArr[i].byte1, ' ');
      //  Write(TempChar2BArr[i].byte2, ' ');
      //end;
      //WriteLn();
      //if Length(UTF8Char) = 2 then  begin
      //  WriteLn('dif ', TempChar2BArr[0].byte2 - byte(UTF8Char[2]));
      //end;
      //WriteLn();
      //WriteLn();

      Insert(TempChar2BArr, Char2BArr, CursorPos - 1);
      Inc(CursorPos, 1);
    end;
  end;
  if oldCursorPos <> CursorPos then  begin
    DoOnPaint;
  end;
end;

procedure TX11Edit.DoOnKeyDown(var Event: TXEvent);
var
  oldCursorPos: integer;
begin
  inherited DoOnKeyDown(Event);
  oldCursorPos := CursorPos;
  case XLookupKeysym(@Event.xkey, 0) of
    XK_Left: begin
      Dec(CursorPos);
      if CursorPos < 1 then begin
        CursorPos := 1;
      end;
    end;
    XK_Right: begin
      Inc(CursorPos);
      if CursorPos >= Length(Char2BArr) then begin
        CursorPos := Length(Char2BArr) + 1;
      end;
    end;
    XK_Home: begin
      CursorPos := 1;
    end;
    XK_End: begin
      CursorPos := Length(Char2BArr) + 1;
    end;
    XK_Delete: begin
      Delete(Char2BArr, CursorPos - 1, 1);
      DoOnPaint;
    end;
    XK_BackSpace: begin
      Dec(CursorPos);
      Delete(Char2BArr, CursorPos - 1, 1);
      if CursorPos < 1 then begin
        CursorPos := 1;
      end;
    end;
  end;
  if oldCursorPos <> CursorPos then  begin
    DoOnPaint;
  end;
end;

procedure TX11Edit.CursorOn;
begin
  inherited CursorOn;
  if IsFocused then begin
    XSetForeground(dis, gc, $000000);
    XFillRectangle(dis, Window, gc, (CursorPos + ofsx) * FontWidht, Height - BorderWidth - 0, FontWidht, 2);
  end;
end;

procedure TX11Edit.CursorOff;
begin
  inherited CursorOff;
  XSetForeground(dis, gc, Color);
  XFillRectangle(dis, Window, gc, (CursorPos + ofsx) * FontWidht, Height - BorderWidth - 0, FontWidht, 2);
end;

procedure TX11Edit.DoOnResize(AWidth, AHeight: cint);
begin
  inherited DoOnResize(AWidth, AHeight);
  EditWidht := AWidth div FontWidht - 1;
  WriteLn(EditWidht);
end;

constructor TX11Edit.Create(TheOwner: TX11Component);
begin
  inherited Create(TheOwner);

  fontStructure := XLoadQueryFont(dis, '9x15bold');
  if fontStructure = nil then begin
    fontStructure := XLoadQueryFont(dis, 'fixed');
  end;
  XSetFont(dis, gc, fontStructure^.fid);

  IsFocusable := True;
  FontWidht := 9;
  EditWidht := Width div FontWidht;
  Text := 'Edit';
  Height := 24;
  Color := $FFFFFF;
  Bevel := bvLowred;
  Name := 'Edit';
end;

destructor TX11Edit.Destroy;
begin
  XFreeFont(dis, fontStructure);
  inherited Destroy;
end;

end.
