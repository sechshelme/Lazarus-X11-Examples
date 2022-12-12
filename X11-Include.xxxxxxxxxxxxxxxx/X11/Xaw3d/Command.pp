
unit Command;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Command.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Command.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Command.pp
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
PCommandClassRec  = ^CommandClassRec;
PCommandRec  = ^CommandRec;
PCommandWidget  = ^CommandWidget;
PCommandWidgetClass  = ^CommandWidgetClass;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawCommand_h}
{$define _XawCommand_h}
{$include <X11/Xaw3d/Label.h>}


const
  XtNhighlightThickness = 'highlightThickness';  
  XtNshapeStyle = 'shapeStyle';  
  XtCShapeStyle = 'ShapeStyle';  
  XtRShapeStyle = 'ShapeStyle';  
  XtNcornerRoundPercent = 'cornerRoundPercent';  
  XtCCornerRoundPercent = 'CornerRoundPercent';  
  XawShapeRectangle = XmuShapeRectangle;  
  XawShapeOval = XmuShapeOval;  
  XawShapeEllipse = XmuShapeEllipse;  
  XawShapeRoundedRectangle = XmuShapeRoundedRectangle;  
  var
    commandWidgetClass : TWidgetClass;cvar;external;
type
  PCommandWidgetClass = ^TCommandWidgetClass;
  TCommandWidgetClass = PCommandClassRec;

  PCommandWidget = ^TCommandWidget;
  TCommandWidget = PCommandRec;
{$endif}


implementation


end.
