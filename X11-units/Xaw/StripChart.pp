
unit StripChart;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/StripChart.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/StripChart.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/StripChart.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawStripChart_h}
{$define _XawStripChart_h}  
{$include <X11/Intrinsic.h>}



  const
    DEFAULT_JUMP = -(1);    
{$ifndef _XtStringDefs_h_}

  const
    XtNhighlight = 'highlight';    
    XtNupdate = 'update';    
{$endif}

  const
    XtCJumpScroll = 'JumpScroll';    
    XtCScale = 'Scale';    
    XtNgetValue = 'getValue';    
    XtNjumpScroll = 'jumpScroll';    
    XtNminScale = 'minScale';    
    XtNscale = 'scale';    
    XtNvmunix = 'vmunix';    

  type
    StripChartWidget = ^_StripChartRec;

    StripChartWidgetClass = ^_StripChartClassRec;

    var
      stripChartWidgetClass : WidgetClass;cvar;external;
{$endif}


implementation


end.
