
unit StripChart;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/StripChart.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/StripChart.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/StripChart.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawStripChart_h}
{$define _XawStripChart_h}  



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
