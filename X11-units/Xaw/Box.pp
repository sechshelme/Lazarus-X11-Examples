
unit Box;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/Box.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/Box.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/Box.pp
}

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
{$ifndef OLDXAW}
{$ifndef XawNdisplayList}

  const
    XawNdisplayList = 'displayList';    
{$endif}
{$ifndef XawCDisplayList}

  const
    XawCDisplayList = 'DisplayList';    
{$endif}
{$ifndef XawRDisplayList}

  const
    XawRDisplayList = 'XawDisplayList';    
{$endif}
{$endif}



    var
      boxWidgetClass : WidgetClass;cvar;external;

  type
    BoxWidgetClass = ^_BoxClassRec;

    BoxWidget = ^_BoxRec;
{$endif}


implementation


end.
