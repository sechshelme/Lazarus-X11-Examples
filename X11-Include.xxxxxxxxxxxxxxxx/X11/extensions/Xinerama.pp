
unit Xinerama;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xinerama.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xinerama.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xinerama.pp
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
PXineramaScreenInfo  = ^XineramaScreenInfo;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _Xinerama_h}
{$define _Xinerama_h}
{$include <X11/Xlib.h>}
type
  PXineramaScreenInfo = ^TXineramaScreenInfo;
  TXineramaScreenInfo = record
      screen_number : longint;
      x_org : smallint;
      y_org : smallint;
      width : smallint;
      height : smallint;
    end;
(* error 
Bool XineramaQueryExtension (
(* error 
   int     *event_base,
(* error 
   int     *error_base
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

function XineramaQueryVersion(dpy:PDisplay; major_versionp:Plongint; minor_versionp:Plongint):TStatus;cdecl;external;
function XineramaIsActive(dpy:PDisplay):TBool;cdecl;external;

function XineramaQueryScreens(dpy:PDisplay; number:Plongint):PXineramaScreenInfo;cdecl;external;
{$endif}

(* error 


implementation


end.
