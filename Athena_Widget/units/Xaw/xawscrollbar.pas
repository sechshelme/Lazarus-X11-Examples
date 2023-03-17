unit XawScrollbar;

interface

uses
  xlib,x,
  XTIntrinsic,
  XawSimple;

const
  libXaw = 'libXaw.so';

//{$include <X11/Xmu/Converters.h>}
//{$include <X11/Xfuncproto.h>}
{ Scrollbar resources:

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
 height		     Height		Dimension	length or thickness
 insensitiveBorder   Insensitive	Pixmap		GreyPixmap
 jumpProc	     Callback		XtCallbackList	NULL
 length		     Length		Dimension	1
 mappedWhenManaged   MappedWhenManaged	Boolean		True
 minimumThumb	     MinimumThumb	Dimension	7
 orientation	     Orientation	XtOrientation	XtorientVertical
 pointerColor	     Foreground		Pixel		XtDefaultForeground
 pointerColorBackground Background	Pixel		XtDefaultBackground
 screen		     Screen		Screen		parent's screen
 scrollDCursor	     Cursor		Cursor		XC_sb_down_arrow
 scrollHCursor	     Cursor		Cursor		XC_sb_h_double_arrow
 scrollLCursor	     Cursor		Cursor		XC_sb_left_arrow
 scrollProc	     Callback		XtCallbackList	NULL
 scrollRCursor	     Cursor		Cursor		XC_sb_right_arrow
 scrollUCursor	     Cursor		Cursor		XC_sb_up_arrow
 scrollVCursor	     Cursor		Cursor		XC_sb_v_double_arrow
 sensitive	     Sensitive		Boolean		True
 shown		     Shown		Float		0.0
 thickness	     Thickness		Dimension	14
 thumb		     Thumb		Bitmap		GreyPixmap
 thumbProc	     Callback		XtCallbackList	NULL
 topOfThumb	     TopOfThumb		Float		0.0
 translations	     Translations	TranslationTable see source or doc
 width		     Width		Dimension	thickness or length
 x		     Position		Position	0
 y		     Position		Position	0

 }

const
  XtCMinimumThumb = 'MinimumThumb';  
  XtCShown = 'Shown';  
  XtCTopOfThumb = 'TopOfThumb';  
  XtNminimumThumb = 'minimumThumb';  
  XtNtopOfThumb = 'topOfThumb';  
//type
//  PScrollbarWidget = ^TScrollbarWidget;
//  TScrollbarWidget = PScrollbarRec;
//
//  PScrollbarWidgetClass = ^TScrollbarWidgetClass;
//  TScrollbarWidgetClass = PScrollbarClassRec;
  var
    scrollbarWidgetClass : TWidgetClass;cvar;external libXaw;

procedure XawScrollbarSetThumb(scrollbar:TWidget; top:single; shown:single);cdecl;external libXaw;

//type
//  PScrollbarWidget = ^TScrollbarWidget;
//  TScrollbarWidget = PScrollbarRec;
//
//  PScrollbarWidgetClass = ^TScrollbarWidgetClass;
//  TScrollbarWidgetClass = PScrollbarClassRec;


implementation

end.
