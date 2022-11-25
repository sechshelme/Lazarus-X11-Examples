unit X11Utils;

{$mode ObjFPC}{$H+}

interface

uses
  unixtype, ctypes, xlib, xutil, keysym, x;

const
  //  EventMask = KeyPressMask or ExposureMask or ButtonReleaseMask or ButtonPressMask or StructureNotifyMask or PointerMotionMask;
  EventMask = KeyPressMask or ExposureMask or ButtonReleaseMask or ButtonPressMask or PointerMotionMask;

type
  TXChar2BArray = array of TXChar2b;

  TUTF8Char = string[7]; // UTF-8 character is at most 6 bytes plus a #0

  TAnchorKind = (akTop, akLeft, akRight, akBottom);
  TAnchors = set of TAnchorKind;

  TNotifyEvent = procedure(Sender: TObject) of object;
  TEvent = procedure(Sender: TObject; Event: TXEvent) of object;
  TMouseMoveEvent = procedure(Sender: TObject; X, Y: integer) of object;
  TKeyPressEvent = procedure(Sender: TObject; UTF8Char: TUTF8Char) of object;
  TPaintEvent = procedure(Sender: TObject; ADisplay: PDisplay; AWindowwin: TDrawable; AGC: TGC) of object;

procedure UTF8toXChar2b(var output: TXChar2BArray; const s: string);

implementation

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

end.
