
unit WinUtil;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/WinUtil.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/WinUtil.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/WinUtil.pp
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

function XmuUpdateMapHints(dpy:PDisplay; win:TWindow; hints:PXSizeHints):TBool;cdecl;external;
function XmuScreenOfWindow(dpy:PDisplay; w:TWindow):PScreen;cdecl;external;
{$endif}

(* error 
#endif /* _XMU_WINDOWUTIL_H_ */

implementation


end.
