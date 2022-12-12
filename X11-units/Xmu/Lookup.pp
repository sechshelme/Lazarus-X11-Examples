
unit Lookup;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xmu/Lookup.h
  The following command line parameters were used:
    /usr/include/X11/Xmu/Lookup.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xmu/Lookup.pp
}

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
             keysymSet:dword):longint;cdecl;

  function XmuLookupLatin1(event:PXKeyEvent; buffer:Pbyte; nbytes:longint; keysym:PKeySym; status:PXComposeStatus):longint;cdecl;

  function XmuLookupLatin2(event:PXKeyEvent; buffer:Pbyte; nbytes:longint; keysym:PKeySym; status:PXComposeStatus):longint;cdecl;

  function XmuLookupLatin3(event:PXKeyEvent; buffer:Pbyte; nbytes:longint; keysym:PKeySym; status:PXComposeStatus):longint;cdecl;

  function XmuLookupLatin4(event:PXKeyEvent; buffer:Pbyte; nbytes:longint; keysym:PKeySym; status:PXComposeStatus):longint;cdecl;

  function XmuLookupKana(event:PXKeyEvent; buffer:Pbyte; nbytes:longint; keysym:PKeySym; status:PXComposeStatus):longint;cdecl;

  function XmuLookupJISX0201(event:PXKeyEvent; buffer:Pbyte; nbytes:longint; keysym:PKeySym; status:PXComposeStatus):longint;cdecl;

  function XmuLookupArabic(event:PXKeyEvent; buffer:Pbyte; nbytes:longint; keysym:PKeySym; status:PXComposeStatus):longint;cdecl;

  function XmuLookupCyrillic(event:PXKeyEvent; buffer:Pbyte; nbytes:longint; keysym:PKeySym; status:PXComposeStatus):longint;cdecl;

  function XmuLookupGreek(event:PXKeyEvent; buffer:Pbyte; nbytes:longint; keysym:PKeySym; status:PXComposeStatus):longint;cdecl;

  function XmuLookupAPL(event:PXKeyEvent; buffer:Pbyte; nbytes:longint; keysym:PKeySym; status:PXComposeStatus):longint;cdecl;

  function XmuLookupHebrew(event:PXKeyEvent; buffer:Pbyte; nbytes:longint; keysym:PKeySym; status:PXComposeStatus):longint;cdecl;

{$endif}


implementation


end.
