
unit Layout;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/Layout.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/Layout.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/Layout.pp
}

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
      layoutWidgetClass : WidgetClass;cvar;external;

  type
    LayoutWidgetClass = ^_LayoutClassRec;

    LayoutWidget = ^_LayoutRec;
{$endif}


implementation


end.
