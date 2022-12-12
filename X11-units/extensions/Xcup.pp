
unit Xcup;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/Xcup.h
  The following command line parameters were used:
    /usr/include/X11/extensions/Xcup.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/Xcup.pp
}

  Type
  PDisplay  = ^Display;
  Plongint  = ^longint;
  PXColor  = ^XColor;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XCUP_H_}
{$define _XCUP_H_}  
{$include <X11/Xfuncproto.h>}
{$include <X11/extensions/cup.h>}
(* error 
Bool XcupQueryVersion(
(* error 
    int*			/* major_version */,
(* error 
    int*			/* minor_version */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)


  function XcupGetReservedColormapEntries(_para1:PDisplay; _para2:longint; _para3:PPXColor; _para4:Plongint):Status;


  function XcupStoreColors(_para1:PDisplay; _para2:Colormap; _para3:PXColor; _para4:longint):Status;

{$endif}

(* error 


implementation

  function XcupGetReservedColormapEntries(_para1:PDisplay; _para2:longint; _para3:PPXColor; _para4:Plongint):Status;
  begin
    { You must implement this function }
  end;
  function XcupStoreColors(_para1:PDisplay; _para2:Colormap; _para3:PXColor; _para4:longint):Status;
  begin
    { You must implement this function }
  end;

end.
