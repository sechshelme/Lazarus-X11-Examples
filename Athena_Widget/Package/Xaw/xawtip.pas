
unit XawTip;

interface

uses
  XTIntrinsic;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

//{$include <X11/Xaw/Simple.h>}
{ Resources:

  Name		    Class		RepType		Default Value
  ----		    -----		-------		-------------
  background	    Background		Pixel		XtDefaultBackground
  backgroundPixmap  BackgroundPixmap	Pixmap		XtUnspecifiedPixmap
  border	    BorderColor		Pixel		XtDefaultForeground
  borderWidth	    BorderWidth		Dimension	1
  bottomMargin	    VerticalMargins	Dimension	2
  destroyCallback   Callback		XtCallbackList	NULL
  displayList	    DisplayList		XawDisplayList*	NULL
  font		    Font		XFontStruct*	XtDefaultFont
  foreground	    Foreground		Pixel		XtDefaultForeground
  height	    Height		Dimension	text height
  leftMargin	    HorizontalMargins	Dimension	6
  rightMargin	    HorizontalMargins	Dimension	6
  timeout	    Timeout		Int		500
  topMargin	    VerticalMargins	Dimension	2
  width		    Width		Dimension	text width
  x		    Position		Position	0
  y		    Position		Position	0

 }

var
    tipWidgetClass : TWidgetClass;cvar;external;

const
  XtNbottomMargin = 'bottomMargin';  
  XawNdisplayList = 'displayList';  
  XtNencoding = 'encoding';  
  XtNleftMargin = 'leftMargin';  
  XtNrightMargin = 'rightMargin';  
  XtNtimeout = 'timeout';  
  XtNtopMargin = 'topMargin';  
  XtNtip = 'tip';  
  XawCDisplayList = 'DisplayList';  
  XtCHorizontalMargins = 'HorizontalMargins';  
  XtCTimeout = 'Timeout';  
  XtCVerticalMargins = 'VerticalMargins';  
  XtCTip = 'Tip';  
  XawRDisplayList = 'XawDisplayList';  
{
 * Public Functions
  }
{
 * Function:
 *	XawTipEnable
 *
 * Parameters:
 *	w - widget
 *
 * Description:
 *	Enables the tip event handler for this widget.
  }

procedure XawTipEnable(w:TWidget);cdecl;external;
{
 * Function:
 *	XawTipEnable
 *
 * Parameters:
 *	w - widget
 *
 * Description:
 *	Disables the tip event handler for this widget.
  }
procedure XawTipDisable(w:TWidget);cdecl;external;

//type
//  PTipWidgetClass = ^TTipWidgetClass;
//  TTipWidgetClass = PTipClassRec;
//
//  PTipWidget = ^TTipWidget;
//  TTipWidget = PTipRec;


implementation


end.
