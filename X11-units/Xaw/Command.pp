
unit Command;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/Command.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/Command.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/Command.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawCommand_h}
{$define _XawCommand_h}  
{$include <X11/Xaw/Label.h>}


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
      commandWidgetClass : WidgetClass;cvar;external;

  type
    CommandWidgetClass = ^_CommandClassRec;

    CommandWidget = ^_CommandRec;
{$endif}


implementation


end.
