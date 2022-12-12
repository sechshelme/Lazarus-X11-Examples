
unit Reports;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/Reports.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/Reports.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/Reports.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _Xaw_Reports_h}
{$define _Xaw_Reports_h}  
{$include <X11/Intrinsic.h>}






  type
    XawPannerReport = record
        changed : dword;
        slider_x : Position;
        slider_y : Position;
        slider_width : Dimension;
        slider_height : Dimension;
        canvas_width : Dimension;
        canvas_height : Dimension;
      end;

  const
    XawPRSliderX = 1 shl 0;    
    XawPRSliderY = 1 shl 1;    
    XawPRSliderWidth = 1 shl 2;    
    XawPRSliderHeight = 1 shl 3;    
    XawPRCanvasWidth = 1 shl 4;    
    XawPRCanvasHeight = 1 shl 5;    

    XawPRAll = 63;    
    XtNreportCallback = 'reportCallback';    
    XtCReportCallback = 'reportCallback';    
{$endif}


implementation


end.
