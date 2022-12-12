
unit XEVI;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XEVI.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XEVI.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XEVI.pp
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
PExtendedVisualInfo  = ^ExtendedVisualInfo;
Plongint  = ^longint;
PVisualID  = ^VisualID;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XEVI_H_}
{$define _XEVI_H_}
{$include <X11/Xfuncproto.h>}
{$include <X11/extensions/EVI.h>}
type
  PExtendedVisualInfo = ^TExtendedVisualInfo;
  TExtendedVisualInfo = record
      core_visual_id : TVisualID;
      screen : longint;
      level : longint;
      transparency_type : dword;
      transparency_value : dword;
      min_hw_colormaps : dword;
      max_hw_colormaps : dword;
      num_colormap_conflicts : dword;
      colormap_conflicts : PVisualID;
    end;
(* error 
Bool XeviQueryExtension(

 in declarator_list *)


function XeviQueryVersion(para1:PDisplay; para2:Plongint; para3:Plongint):TStatus;cdecl;external;

function XeviGetVisualInfo(para1:PDisplay; para2:PVisualID; para3:longint; para4:PPExtendedVisualInfo; para5:Plongint):TStatus;cdecl;external;
{$endif}
(* error 
#endif

implementation


end.
