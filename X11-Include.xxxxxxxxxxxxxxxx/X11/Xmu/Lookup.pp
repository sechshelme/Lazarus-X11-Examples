
unit Lookup;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/Lookup.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/Lookup.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/Lookup.pp
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
Pbyte  = ^byte;
PKeySym  = ^KeySym;
PXComposeStatus  = ^XComposeStatus;
PXKeyEvent  = ^XKeyEvent;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef included_xmu_lookup_h}

const
  included_xmu_lookup_h = 1;  
{$include <X11/Xlib.h>}
{$include <X11/Xutil.h>}

function XmuLookupString(event:PXKeyEvent; buffer:Pbyte; nbytes:longint; keysym:PKeySym; status:PXComposeStatus; 
           keysymSet:dword):longint;cdecl;external;
function XmuLookupLatin1(event:PXKeyEvent; buffer:Pbyte; nbytes:longint; keysym:PKeySym; status:PXComposeStatus):longint;cdecl;external;
function XmuLookupLatin2(event:PXKeyEvent; buffer:Pbyte; nbytes:longint; keysym:PKeySym; status:PXComposeStatus):longint;cdecl;external;
function XmuLookupLatin3(event:PXKeyEvent; buffer:Pbyte; nbytes:longint; keysym:PKeySym; status:PXComposeStatus):longint;cdecl;external;
function XmuLookupLatin4(event:PXKeyEvent; buffer:Pbyte; nbytes:longint; keysym:PKeySym; status:PXComposeStatus):longint;cdecl;external;
function XmuLookupKana(event:PXKeyEvent; buffer:Pbyte; nbytes:longint; keysym:PKeySym; status:PXComposeStatus):longint;cdecl;external;
function XmuLookupJISX0201(event:PXKeyEvent; buffer:Pbyte; nbytes:longint; keysym:PKeySym; status:PXComposeStatus):longint;cdecl;external;
function XmuLookupArabic(event:PXKeyEvent; buffer:Pbyte; nbytes:longint; keysym:PKeySym; status:PXComposeStatus):longint;cdecl;external;
function XmuLookupCyrillic(event:PXKeyEvent; buffer:Pbyte; nbytes:longint; keysym:PKeySym; status:PXComposeStatus):longint;cdecl;external;
function XmuLookupGreek(event:PXKeyEvent; buffer:Pbyte; nbytes:longint; keysym:PKeySym; status:PXComposeStatus):longint;cdecl;external;
function XmuLookupAPL(event:PXKeyEvent; buffer:Pbyte; nbytes:longint; keysym:PKeySym; status:PXComposeStatus):longint;cdecl;external;
function XmuLookupHebrew(event:PXKeyEvent; buffer:Pbyte; nbytes:longint; keysym:PKeySym; status:PXComposeStatus):longint;cdecl;external;
{$endif}


implementation


end.
