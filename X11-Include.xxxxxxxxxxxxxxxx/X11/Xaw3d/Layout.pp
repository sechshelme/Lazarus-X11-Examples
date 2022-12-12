
unit Layout;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Layout.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Layout.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Layout.pp
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
PLayoutClassRec  = ^LayoutClassRec;
PLayoutRec  = ^LayoutRec;
PLayoutWidget  = ^LayoutWidget;
PLayoutWidgetClass  = ^LayoutWidgetClass;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawLayout_h}
{$define _XawLayout_h}
{$include <X11/Constraint.h>}
{$include <X11/Xfuncproto.h>}





const
  XtNlayout = 'layout';  
  XtCLayout = 'Layout';  
  XtRLayout = 'Layout';  
  XtNdebug = 'debug';  

  var
    layoutWidgetClass : TWidgetClass;cvar;external;
type
  PLayoutWidgetClass = ^TLayoutWidgetClass;
  TLayoutWidgetClass = PLayoutClassRec;

  PLayoutWidget = ^TLayoutWidget;
  TLayoutWidget = PLayoutRec;
{$endif}


implementation


end.
