
unit SmeLine;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/SmeLine.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/SmeLine.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/SmeLine.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _SmeLine_h}
{$define _SmeLine_h}  
{$include <X11/Xaw3d/Sme.h>}
{$include <X11/Xmu/Converters.h>}



  const
    XtCLineWidth = 'LineWidth';    
    XtCStipple = 'Stipple';    
    XtNlineWidth = 'lineWidth';    
    XtNstipple = 'stipple';    

  type
    SmeLineObjectClass = ^_SmeLineClassRec;

    SmeLineObject = ^_SmeLineRec;

    var
      smeLineObjectClass : WidgetClass;cvar;external;
{$endif}


implementation


end.
