unit XawPanner;

interface

uses
  XTIntrinsic;

const
  libXaw = 'libXaw.so';

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

//{$include <X11/Intrinsic.h>}
//{$include <X11/Xaw/Reports.h>}

{****************************************************************************
 *
 * Panner Widget (subclass of Simple)
 *
 * This widget is used to represent navigation in a 2d coordinate system
 *
 * Resources:
 *
 *  Name		Class		Type		Default
 *  ----		-----		----		-------
 *
 *  allowOff		AllowOff	Boolean		FALSE
 *  background		Background	Pixel		XtDefaultBackground
 *  backgroundStipple	BackgroundStipple	String	NULL
 *  canvasWidth		CanvasWidth	Dimension	0
 *  canvasHeight	CanvasHeight	Dimension	0
 *  defaultScale	DefaultScale	Dimension	8 percent
 *  foreground		Foreground	Pixel		XtDefaultBackground
 *  internalSpace	InternalSpace	Dimension	4
 *  lineWidth		LineWidth	Dimension	0
 *  reportCallback	ReportCallback	XtCallbackList	NULL
 *  resize		Resize		Boolean		TRUE
 *  rubberBand		RubberBand	Boolean		FALSE
 *  shadowColor		ShadowColor	Pixel		XtDefaultForeground
 *  shadowThickness	ShadowThickness	Dimension	2
 *  sliderX		SliderX		Position	0
 *  sliderY		SliderY		Position	0
 *  sliderWidth		SliderWidth	Dimension	0
 *  sliderHeight	SliderHeight	Dimension	0
 *
 **************************************************************************** }

const
  XtNresize = 'resize';  
  XtCResize = 'Resize';  

const
  XtNallowOff = 'allowOff';  
  XtCAllowOff = 'AllowOff';  
  XtNbackgroundStipple = 'backgroundStipple';  
  XtCBackgroundStipple = 'BackgroundStipple';  
  XtNdefaultScale = 'defaultScale';  
  XtCDefaultScale = 'DefaultScale';  
  XtNcanvasWidth = 'canvasWidth';  
  XtCCanvasWidth = 'CanvasWidth';  
  XtNcanvasHeight = 'canvasHeight';  
  XtCCanvasHeight = 'CanvasHeight';  
  XtNinternalSpace = 'internalSpace';  
  XtCInternalSpace = 'InternalSpace';  
  XtNlineWidth = 'lineWidth';  
  XtCLineWidth = 'LineWidth';  
  XtNrubberBand = 'rubberBand';  
  XtCRubberBand = 'RubberBand';  
  XtNshadowThickness = 'shadowThickness';  
  XtCShadowThickness = 'ShadowThickness';  
  XtNshadowColor = 'shadowColor';  
  XtCShadowColor = 'ShadowColor';  
  XtNsliderX = 'sliderX';  
  XtCSliderX = 'SliderX';  
  XtNsliderY = 'sliderY';  
  XtCSliderY = 'SliderY';  
  XtNsliderWidth = 'sliderWidth';  
  XtCSliderWidth = 'SliderWidth';  
  XtNsliderHeight = 'sliderHeight';  
  XtCSliderHeight = 'SliderHeight';  
  var
    pannerWidgetClass : TWidgetClass;cvar;external libXaw;

//type
//  PPannerWidgetClass = ^TPannerWidgetClass;
//  TPannerWidgetClass = PPannerClassRec;
//
//  PPannerWidget = ^TPannerWidget;
//  TPannerWidget = PPannerRec;

implementation

end.
