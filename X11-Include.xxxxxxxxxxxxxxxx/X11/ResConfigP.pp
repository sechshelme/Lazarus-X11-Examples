
unit ResConfigP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ResConfigP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ResConfigP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ResConfigP.pp
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
    PXEvent  = ^XEvent;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _RESCONFIGP_H}
{$define _RESCONFIGP_H}
{$include <X11/Xfuncproto.h>}

(* error 
#define RCM_DATA "Custom Data"
in define line 65 *)

    const
      RCM_INIT = 'Custom Init';      


procedure _XtResourceConfigurationEH(para1:TWidget; para2:TXtPointer; para3:PXEvent);cdecl;external;
{$endif}
(* error 
#endif

implementation


end.
