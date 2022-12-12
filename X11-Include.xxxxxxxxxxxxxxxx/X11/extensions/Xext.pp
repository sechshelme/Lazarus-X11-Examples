
unit Xext;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xext.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xext.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xext.pp
}

    { Pointers to basic pascal types, inserted by h2pas conversion program.}
    Type
      PLongint  = ^Longint;
      PSmallInt = ^SmallInt;
      PByte     = ^Byte;
      PWord     = ^Word;
      PDWord    = ^DWord;
      PDouble   = ^Double;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XEXT_H_}
{$define _XEXT_H_}
{$include <X11/Xfuncproto.h>}
(* error 
typedef int (*XextErrorHandler) (

in declaration at line 37 *)


function XSetExtensionErrorHandler(para1:TXextErrorHandler):TXextErrorHandler;cdecl;external;
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
