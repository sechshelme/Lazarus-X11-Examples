
unit Xmd;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmd.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmd.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmd.pp
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

Type
PBITS16  = ^BITS16;
PBITS32  = ^BITS32;
PBOOL  = ^BOOL;
PBYTE  = ^BYTE;
PCARD16  = ^CARD16;
PCARD32  = ^CARD32;
PCARD64  = ^CARD64;
PCARD8  = ^CARD8;
PINT16  = ^INT16;
PINT32  = ^INT32;
PINT8  = ^INT8;
Pt  = ^t;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef XMD_H}

const
  XMD_H = 1;  


{$if defined(__sun) && defined(__SVR4)}
{$include <sys/isa_defs.h> /* Solaris: defines _LP64 if necessary */}
{$endif}
{$if defined(__SIZEOF_LONG__)}
{$if __SIZEOF_LONG__ == 8}

{$define LONG64}
{$endif}
{$else defined (_LP64) || defined(__LP64__) || \}
(* error 
     defined(__alpha) || defined(__alpha__) || \
{$if !defined(__ILP32__) /* amd64-x32 is 32bit */}

{$endif}

{$endif}




{$ifdef LONG64}
 in declarator_list *)
type
  PINT32 = ^TINT32;
  TINT32 = longint;
{$else}
type
  PINT32 = ^TINT32;
  TINT32 = longint;
{$endif}
type
  PINT16 = ^TINT16;
  TINT16 = smallint;

  PINT8 = ^TINT8;
  TINT8 = char;
{$ifdef LONG64}
type
  PCARD64 = ^TCARD64;
  TCARD64 = dword;

  PCARD32 = ^TCARD32;
  TCARD32 = dword;
{$else}
type
  PCARD64 = ^TCARD64;
  TCARD64 = qword;

  PCARD32 = ^TCARD32;
  TCARD32 = dword;
{$endif}
type
  PCARD16 = ^TCARD16;
  TCARD16 = word;

  PCARD8 = ^TCARD8;
  TCARD8 = byte;

  PBITS32 = ^TBITS32;
  TBITS32 = TCARD32;

  PBITS16 = ^TBITS16;
  TBITS16 = TCARD16;

  PBYTE = ^TBYTE;
  TBYTE = TCARD8;

  PBOOL = ^TBOOL;
  TBOOL = TCARD8;


function cvtINT8toInt(val : longint) : longint;

function cvtINT16toInt(val : longint) : longint;

function cvtINT32toInt(val : longint) : longint;

function cvtINT8toShort(val : longint) : longint;

function cvtINT16toShort(val : longint) : longint;

function cvtINT32toShort(val : longint) : longint;

function cvtINT8toLong(val : longint) : longint;

function cvtINT16toLong(val : longint) : longint;

function cvtINT32toLong(val : longint) : longint;


function NEXTPTR(p,t : longint) : longint;

{$endif}


implementation

function cvtINT8toInt(val : longint) : longint;
begin
  cvtINT8toInt:=val;
end;

function cvtINT16toInt(val : longint) : longint;
begin
  cvtINT16toInt:=val;
end;

function cvtINT32toInt(val : longint) : longint;
begin
  cvtINT32toInt:=val;
end;

function cvtINT8toShort(val : longint) : longint;
begin
  cvtINT8toShort:=val;
end;

function cvtINT16toShort(val : longint) : longint;
begin
  cvtINT16toShort:=val;
end;

function cvtINT32toShort(val : longint) : longint;
begin
  cvtINT32toShort:=val;
end;

function cvtINT8toLong(val : longint) : longint;
begin
  cvtINT8toLong:=val;
end;

function cvtINT16toLong(val : longint) : longint;
begin
  cvtINT16toLong:=val;
end;

function cvtINT32toLong(val : longint) : longint;
begin
  cvtINT32toLong:=val;
end;

function NEXTPTR(p,t : longint) : longint;
begin
  NEXTPTR:=(Pt(p))+1;
end;


end.
