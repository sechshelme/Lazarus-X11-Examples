
unit MITMisc;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/MITMisc.h
  The following command line parameters were used:
    /usr/include/X11/extensions/MITMisc.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/MITMisc.pp
}

  Type
  PDisplay  = ^Display;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XMITMISC_H_}
{$define _XMITMISC_H_}  
{$include <X11/Xfuncproto.h>}
{$include <X11/extensions/mitmiscconst.h>}
(* error 
Bool XMITMiscQueryExtension(
(* error 
    int*		/* event_basep */,
(* error 
    int*		/* error_basep */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)


  function XMITMiscSetBugMode(_para1:PDisplay; _para2:Bool):Status;


  function XMITMiscGetBugMode(_para1:PDisplay):Bool;

{$endif}
(* error 
#endif

implementation

  function XMITMiscSetBugMode(_para1:PDisplay; _para2:Bool):Status;
  begin
    { You must implement this function }
  end;
  function XMITMiscGetBugMode(_para1:PDisplay):Bool;
  begin
    { You must implement this function }
  end;

end.
