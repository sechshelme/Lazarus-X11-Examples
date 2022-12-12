
unit StripChart;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/StripChart.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/StripChart.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/StripChart.pp
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
PStripChartClassRec  = ^StripChartClassRec;
PStripChartRec  = ^StripChartRec;
PStripChartWidget  = ^StripChartWidget;
PStripChartWidgetClass  = ^StripChartWidgetClass;
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
  PStripChartWidget = ^TStripChartWidget;
  TStripChartWidget = PStripChartRec;

  PStripChartWidgetClass = ^TStripChartWidgetClass;
  TStripChartWidgetClass = PStripChartClassRec;
  var
    stripChartWidgetClass : TWidgetClass;cvar;external;
{$endif}


implementation


end.
