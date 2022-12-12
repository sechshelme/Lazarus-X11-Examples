
unit CloseHook;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xmu/CloseHook.h
  The following command line parameters were used:
    /usr/include/X11/Xmu/CloseHook.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xmu/CloseHook.pp
}

  Type
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
    CloseHook = XPointer;

    XmuCloseHookProc = function (dpy:PDisplay; data:XPointer):longint;cdecl;
(* error 
CloseHook XmuAddCloseDisplayHook
(* error 
 XmuCloseHookProc	proc,
(* error 
 XPointer		arg
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

  function XmuLookupCloseDisplayHook(dpy:PDisplay; handle:CloseHook; proc:XmuCloseHookProc; arg:XPointer):Bool;

  function XmuRemoveCloseDisplayHook(dpy:PDisplay; handle:CloseHook; proc:XmuCloseHookProc; arg:XPointer):Bool;

{$endif}

(* error 
#endif /* _XMU_CLOSEHOOK_H_ */

implementation

  function XmuLookupCloseDisplayHook(dpy:PDisplay; handle:CloseHook; proc:XmuCloseHookProc; arg:XPointer):Bool;
  begin
    { You must implement this function }
  end;
  function XmuRemoveCloseDisplayHook(dpy:PDisplay; handle:CloseHook; proc:XmuCloseHookProc; arg:XPointer):Bool;
  begin
    { You must implement this function }
  end;

end.
