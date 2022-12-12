
unit Error;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xmu/Error.h
  The following command line parameters were used:
    /usr/include/X11/Xmu/Error.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xmu/Error.pp
}

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

    function XmuSimpleErrorHandler(dpy:PDisplay; errorp:PXErrorEvent):longint;

{$endif}

(* error 
#endif /* _XMU_ERROR_H_ */

implementation

    function XmuSimpleErrorHandler(dpy:PDisplay; errorp:PXErrorEvent):longint;
    begin
      { You must implement this function }
    end;

end.
