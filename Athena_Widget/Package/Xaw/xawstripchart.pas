unit XawStripChart;

interface

uses
  XTIntrinsic;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <X11/Intrinsic.h>}

{**********************************************************************
 *
 * StripChart Widget
 *
 ********************************************************************** }
{ StripChart resources:

 Name		     Class		RepType		Default Value
 ----		     -----		-------		-------------
 accelerators	     Accelerators	AcceleratorTable NULL
 ancestorSensitive   AncestorSensitive	Boolean		True
 background	     Background		Pixel		XtDefaultBackground
 backgroundPixmap    Pixmap		Pixmap		XtUnspecifiedPixmap
 borderColor	     BorderColor	Pixel		XtDefaultForeground
 borderPixmap	     Pixmap		Pixmap		XtUnspecifiedPixmap
 borderWidth	     BorderWidth	Dimension	1
 colormap	     Colormap		Colormap	parent's colormap
 cursor		     Cursor		Cursor		None
 cursorName	     Cursor		String		NULL
 depth		     Depth		int		parent's depth
 destroyCallback     Callback		XtCallbackList	NULL
 foreground	     Foreground		Pixel		XtDefaultForeground
 getValue	     Callback		XtCallbackList	NULL
 height		     Height		Dimension	120
 highlight	     Foreground		Pixel		XtDefaultForeground
 insensitiveBorder   Insensitive	Pixmap		GreyPixmap
 jumpScroll	     JumpScroll		int		1/2 width
 mappedWhenManaged   MappedWhenManaged	Boolean		True
 minScale	     Scale		int		1
 pointerColor	     Foreground		Pixel		XtDefaultForeground
 pointerColorBackground Background	Pixel		XtDefaultBackground
 screen		     Screen		Screen		parent's screen
 sensitive	     Sensitive		Boolean		True
 translations	     Translations	TranslationTable NULL
 update		     Interval		int		10 (seconds)
 width		     Width		Dimension	120
 x		     Position		Position	0
 y		     Position		Position	0

 }

const
  DEFAULT_JUMP = -(1);  

const
  XtNhighlight = 'highlight';  
  XtNupdate = 'update';  

const
  XtCJumpScroll = 'JumpScroll';  
  XtCScale = 'Scale';  
  XtNgetValue = 'getValue';  
  XtNjumpScroll = 'jumpScroll';  
  XtNminScale = 'minScale';  
  XtNscale = 'scale';  
  XtNvmunix = 'vmunix';  

var
    stripChartWidgetClass : TWidgetClass;cvar;external libXaw;

//type
//  PStripChartWidget = ^TStripChartWidget;
//  TStripChartWidget = PStripChartRec;
//
//  PStripChartWidgetClass = ^TStripChartWidgetClass;
//  TStripChartWidgetClass = PStripChartClassRec;

implementation

end.
