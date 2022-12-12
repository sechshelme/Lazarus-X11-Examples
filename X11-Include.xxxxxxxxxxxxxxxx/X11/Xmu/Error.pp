
unit Error;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/Error.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/Error.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/Error.pp
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
    PXErrorEvent  = ^XErrorEvent;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XMU_ERROR_H_}
{$define _XMU_ERROR_H_}
{$include <stdio.h>}
{$include <X11/Xlib.h>}
{$include <X11/Xfuncproto.h>}
(* error 
int XmuPrintDefaultErrorMessage
in declaration at line 46 *)

function XmuSimpleErrorHandler(dpy:PDisplay; errorp:PXErrorEvent):longint;cdecl;external;
{$endif}

(* error 
#endif /* _XMU_ERROR_H_ */

implementation


end.
