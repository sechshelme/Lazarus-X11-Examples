
unit Panner;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Panner.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Panner.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Panner.pp
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
PPannerClassRec  = ^PannerClassRec;
PPannerRec  = ^PannerRec;
PPannerWidget  = ^PannerWidget;
PPannerWidgetClass  = ^PannerWidgetClass;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawPanner_h}
{$define _XawPanner_h}
{$include <X11/Xaw3d/Reports.h>}


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
    pannerWidgetClass : TWidgetClass;cvar;external;
type
  PPannerWidgetClass = ^TPannerWidgetClass;
  TPannerWidgetClass = PPannerClassRec;

  PPannerWidget = ^TPannerWidget;
  TPannerWidget = PPannerRec;
{$endif}


implementation


end.
