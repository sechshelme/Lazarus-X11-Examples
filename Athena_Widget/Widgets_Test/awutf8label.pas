unit awUTF8Label;

{$mode ObjFPC}{$H+}

interface

uses
  xlib,
  x,
  XTStringdefs,
  XTIntrinsic,
  XawBox,
  XawCommand,
  XawLabel,
  XawList;

procedure CreateUTF8Label(Parent: TWidget);


implementation

type
  TXChar2BArray = array of TXChar2b;

procedure UTF8toXChar2b(var output: TXChar2BArray; const s: string);
var
  StrLen: IntPtr;
  StrPtr: pbyte;
  C2BPtr: PXChar2b;
  c: byte;

begin
  StrLen := Length(s);
  SetLength(output, StrLen);
  StrPtr := @s[1];
  C2BPtr := @output[0];
  while ((PtrUInt(StrPtr) - PtrUInt(@s[1])) div SizeOf(char) < StrLen) do begin
    c := StrPtr^;
    if c < 128 then  begin
      C2BPtr^.byte1 := 0;
      C2BPtr^.byte2 := c;
      Inc(C2BPtr);
    end else if StrPtr^ < $C0 then begin
      Continue;
    end else begin
      case StrPtr^ and $F0 of
        $C0, $D0: begin
          C2BPtr^.byte1 := (c and $1C) shr 2;
          Inc(StrPtr);
          C2BPtr^.byte2 := ((c and $03) shl 6) + (StrPtr^ and $3F);
          Inc(C2BPtr);
        end;
        $E0: begin
          Inc(StrPtr);
          C2BPtr^.byte1 := ((c and $0F) shl 4) + ((StrPtr^ and $3C) shr 2);
          c := StrPtr^;
          Inc(StrPtr);
          C2BPtr^.byte2 := ((c and $03) shl 6) + (StrPtr^ and $3F);
          Inc(C2BPtr);
        end;
      end;
    end;
    Inc(StrPtr);
  end;
  SetLength(output, (PtrUInt(C2BPtr) - PtrUInt(@output[0])) div SizeOf(TXChar2b));
end;

procedure CreateUTF8Label(Parent: TWidget);
var
  label1: TWidget;
  ch2b: TXChar2BArray=nil;
  l: SizeInt;
const
  txt = 'äöüäöüccccccccccIch habe äöü ÄÜÖ'#0;

begin
  UTF8toXChar2b(ch2b, txt);

  WriteLn('len', Length(ch2b));
  WriteLn(ch2b[0].byte1);
  WriteLn(ch2b[0].byte2);
  WriteLn(ch2b[1].byte1);
  WriteLn(ch2b[1].byte2);
  WriteLn(ch2b[2].byte1);
  WriteLn(ch2b[2].byte2);

  l:=Length(ch2b);
  SetLength(ch2b,l+1);
  ch2b[l].byte1:=0;
  ch2b[l].byte2:=0;

  //     label1 := XtVaCreateManagedWidget(PChar( ch2b), labelWidgetClass, Parent, XtNborderWidth, 0, XtNencoding, XawTextEncodingChar2b, nil);
  label1 := XtVaCreateManagedWidget('hello', labelWidgetClass, Parent, XtNborderWidth, 0, XtNencoding, XawTextEncodingChar2b, XtNfont, XLoadQueryFont(XtDisplay(Parent),
        '-Misc-Fixed-Medium-R-Normal--20-200-75-75-C-100-ISO10646-1'),XtNlabel, @ch2b[0] , nil);
end;

end.
