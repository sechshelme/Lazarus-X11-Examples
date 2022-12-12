
unit Box;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Box.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Box.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Box.pp
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
PBoxClassRec  = ^BoxClassRec;
PBoxRec  = ^BoxRec;
PBoxWidget  = ^BoxWidget;
PBoxWidgetClass  = ^BoxWidgetClass;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawBox_h}
{$define _XawBox_h}
{$include <X11/Xmu/Converters.h>}



{$ifndef _XtStringDefs_h_}

const
  XtNhSpace = 'hSpace';  
  XtNvSpace = 'vSpace';  
{$endif}

  var
    boxWidgetClass : TWidgetClass;cvar;external;
type
  PBoxWidgetClass = ^TBoxWidgetClass;
  TBoxWidgetClass = PBoxClassRec;

  PBoxWidget = ^TBoxWidget;
  TBoxWidget = PBoxRec;
{$endif}


implementation


end.
