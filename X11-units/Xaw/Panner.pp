
unit Panner;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/Panner.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/Panner.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/Panner.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawPanner_h}
{$define _XawPanner_h}  
{$include <X11/Intrinsic.h>}
{$include <X11/Xaw/Reports.h>}

{$ifndef _XtStringDefs_h_}

  const
    XtNresize = 'resize';    
    XtCResize = 'Resize';    
{$endif}

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
      pannerWidgetClass : WidgetClass;cvar;external;

  type
    PannerWidgetClass = ^_PannerClassRec;

    PannerWidget = ^_PannerRec;
{$endif}


implementation


end.
