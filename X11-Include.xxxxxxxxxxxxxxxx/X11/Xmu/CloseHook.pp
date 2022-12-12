
unit CloseHook;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/CloseHook.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/CloseHook.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/CloseHook.pp
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
PCloseHook  = ^CloseHook;
PDisplay  = ^Display;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XMU_CLOSEHOOK_H_}
{$define _XMU_CLOSEHOOK_H_}
{$include <X11/Xlib.h>}
{$include <X11/Xfuncproto.h>}
{$include <X11/Xlibint.h>}
type
  PCloseHook = ^TCloseHook;
  TCloseHook = TXPointer;

  TXmuCloseHookProc = function (dpy:PDisplay; data:TXPointer):longint;cdecl;
(* error 
CloseHook XmuAddCloseDisplayHook
(* error 
 XmuCloseHookProc	proc,
(* error 
 XPointer		arg
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

function XmuLookupCloseDisplayHook(dpy:PDisplay; handle:TCloseHook; proc:TXmuCloseHookProc; arg:TXPointer):TBool;cdecl;external;
function XmuRemoveCloseDisplayHook(dpy:PDisplay; handle:TCloseHook; proc:TXmuCloseHookProc; arg:TXPointer):TBool;cdecl;external;
{$endif}

(* error 
#endif /* _XMU_CLOSEHOOK_H_ */

implementation


end.
