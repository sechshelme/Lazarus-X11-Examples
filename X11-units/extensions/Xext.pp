
unit Xext;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/Xext.h
  The following command line parameters were used:
    /usr/include/X11/extensions/Xext.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/Xext.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XEXT_H_}
{$define _XEXT_H_}  
{$include <X11/Xfuncproto.h>}
(* error 
typedef int (*XextErrorHandler) (

in declaration at line 37 *)


    function XSetExtensionErrorHandler(_para1:XextErrorHandler):XextErrorHandler;cdecl;

(* error 
    _Xconst char*	/* ext_name */

 in declarator_list *)
(* error 
#define X_EXTENSION_UNKNOWN "unknown"
in define line 50 *)
    const
      X_EXTENSION_MISSING = 'missing';      
{$endif}


implementation


end.
