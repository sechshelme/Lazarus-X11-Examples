
unit MITMisc;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/MITMisc.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/MITMisc.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/MITMisc.pp
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
PDisplay  = ^Display;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XMITMISC_H_}
{$define _XMITMISC_H_}
{$include <X11/Xfuncproto.h>}
{$include <X11/extensions/mitmiscconst.h>}
(* error 
Bool XMITMiscQueryExtension(
(* error 
    int*		/* event_basep */,
(* error 
    int*		/* error_basep */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)


function XMITMiscSetBugMode(para1:PDisplay; para2:TBool):TStatus;cdecl;external;

function XMITMiscGetBugMode(para1:PDisplay):TBool;cdecl;external;
{$endif}
(* error 
#endif

implementation


end.
