
unit Xcup;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xcup.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xcup.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xcup.pp
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


function XcupGetReservedColormapEntries(para1:PDisplay; para2:longint; para3:PPXColor; para4:Plongint):TStatus;cdecl;external;

function XcupStoreColors(para1:PDisplay; para2:TColormap; para3:PXColor; para4:longint):TStatus;cdecl;external;
{$endif}

(* error 


implementation


end.
