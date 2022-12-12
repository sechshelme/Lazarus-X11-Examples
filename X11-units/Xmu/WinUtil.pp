
unit WinUtil;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xmu/WinUtil.h
  The following command line parameters were used:
    /usr/include/X11/Xmu/WinUtil.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xmu/WinUtil.pp
}

  Type
  PDisplay  = ^Display;
  PScreen  = ^Screen;
  PXSizeHints  = ^XSizeHints;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XMU_WINDOWUTIL_H_}
{$define _XMU_WINDOWUTIL_H_}  
{$include <X11/Xutil.h>}
{$include <X11/Xfuncproto.h>}
(* error 
Window XmuClientWindow
(* error 
 Window 	win
 in declarator_list *)
 in declarator_list *)

  function XmuUpdateMapHints(dpy:PDisplay; win:Window; hints:PXSizeHints):Bool;

  function XmuScreenOfWindow(dpy:PDisplay; w:Window):^Screen;

{$endif}

(* error 
#endif /* _XMU_WINDOWUTIL_H_ */

implementation

  function XmuUpdateMapHints(dpy:PDisplay; win:Window; hints:PXSizeHints):Bool;
  begin
    { You must implement this function }
  end;
  function XmuScreenOfWindow(dpy:PDisplay; w:Window):PScreen;
  begin
    { You must implement this function }
  end;

end.
