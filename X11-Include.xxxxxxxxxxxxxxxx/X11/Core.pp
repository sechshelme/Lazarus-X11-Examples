
unit Core;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Core.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Core.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Core.pp
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
    PCoreWidget  = ^CoreWidget;
    PWidgetRec  = ^WidgetRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XtCore_h}
{$define _XtCore_h}
(* error 
typedef struct _WidgetClassRec *CoreWidgetClass;
in declaration at line 53 *)
    type
      PCoreWidget = ^TCoreWidget;
      TCoreWidget = PWidgetRec;
(* error 
externalref WidgetClass coreWidgetClass;
 in declarator_list *)
{$ifndef VMS}
(* error 
externalref WidgetClass widgetClass;
 in declarator_list *)
{$endif}
{$endif}


(* error 
/* DON'T ADD STUFF AFTER THIS #endif */

implementation


end.
