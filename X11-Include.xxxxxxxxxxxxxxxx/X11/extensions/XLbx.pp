
unit XLbx;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XLbx.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XLbx.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XLbx.pp
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
Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XLBX_H_}
{$define _XLBX_H_}
{$include <X11/Xfuncproto.h>}
{$include <X11/Xdefs.h>}
{$include <X11/Xlib.h>}
{$include <X11/extensions/lbx.h>}
(* error 
Bool XLbxQueryExtension(
(* error 
    int*		/* requestp */,
(* error 
    int*		/* event_basep */,
(* error 
    int*		/* error_basep */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)


function XLbxQueryVersion(para1:PDisplay; para2:Plongint; para3:Plongint):TBool;cdecl;external;
function XLbxGetEventBase(dpy:PDisplay):longint;cdecl;external;
{$endif}
(* error 
#endif

implementation


end.
