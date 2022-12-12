
unit XLbx;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/XLbx.h
  The following command line parameters were used:
    /usr/include/X11/extensions/XLbx.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/XLbx.pp
}

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


  function XLbxQueryVersion(_para1:PDisplay; _para2:Plongint; _para3:Plongint):Bool;

  function XLbxGetEventBase(dpy:PDisplay):longint;

{$endif}
(* error 
#endif

implementation

  function XLbxQueryVersion(_para1:PDisplay; _para2:Plongint; _para3:Plongint):Bool;
  begin
    { You must implement this function }
  end;
  function XLbxGetEventBase(dpy:PDisplay):longint;
  begin
    { You must implement this function }
  end;

end.
