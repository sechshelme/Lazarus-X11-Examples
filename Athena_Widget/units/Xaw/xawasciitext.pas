unit XawAsciiText;

interface

uses
  x, xlib,
  XTIntrinsic,
  xresource;

const
  libXaw = 'libXaw.so';

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

{
 * AsciiText.h - Public header file for AsciiText Widget
 *
 * This Widget is intended to be used as a simple front end to the
 * text widget with an ascii source and ascii sink attached to it
 *
 * Date:    June 29, 1989
 *
 * By:      Chris D. Peterson
 *          MIT X Consortium
 *          kit@expo.lcs.mit.edu
  }
//{$include <X11/Xaw/Text.h>}
//{$include <X11/Xaw/AsciiSrc.h>}
//{$include <X11/Xaw/MultiSrc.h>}
{ Resources:

 Name		     Class		RepType		  Default Value
 ----		     -----		-------		  -------------
 autoFill	     AutoFill		Boolean		  False
 background	     Background		Pixel		  XtDefaultBackground
 border		     BorderColor	Pixel		  XtDefaultForeground
 borderWidth	     BorderWidth	Dimension	  1
 bottomMargin	     Margin		Position	  2
 cursor		     Cursor		Cursor		  xterm
 destroyCallback     Callback		Pointer		  NULL
 displayCaret	     Output		Boolean		  True
 displayPosition     TextPosition	int		  0
 editType	     EditType		XawTextEditType	  XawtextRead
 font		     Font		XFontStruct*	  Fixed
 foreground	     Foreground		Pixel		  Black
 height		     Height		Dimension	  font height
 insertPosition	     TextPosition	int		  0
 international	     International		Boolean		false
 leftMargin	     Margin		Position	  2
 mappedWhenManaged   MappedWhenManaged	Boolean		  True
 resize		     Resize		XawTextResizeMode XawtextResizeNever
 rightMargin	     Margin		Position	  4
 scrollHorizontal    Scroll		XawTextScrollMode XawtextScrollNever
 scrollVertical	     Scroll		XawTextScrollMode XawtextScrollNever
 selectTypes	     SelectTypes	Pointer		  pos/word/line/par/all
 selection	     Selection		Pointer		  (empty selection)
 sensitive	     Sensitive		Boolean		  True
 sink		     TextSink		Widget		  (none)
 source		     TextSource		Widget		  (none)
 string		     String		String		  NULL
 topMargin	     Margin		Position	  2
 width		     Width		Dimension	  100
 wrap		     Wrap		XawTextWrapMode	  XawtextWrapNever
 x		     Position		Position	  0
 y		     Position		Position	  0

 (see also *Src.h and *Sink.h)
 }
  var
    asciiTextWidgetClass : TWidgetClass;cvar;external libXaw;
{
 * Disk and String Emulation Info
  }
    asciiStringWidgetClass : TWidgetClass;cvar;external libXaw;
  var
    asciiDiskWidgetClass : TWidgetClass;cvar;external libXaw;

  //type
  //  PAsciiTextWidgetClass = ^TAsciiTextWidgetClass;
  //  TAsciiTextWidgetClass = PAsciiTextClassRec;
  //
  //  PAsciiWidget = ^TAsciiWidget;
  //  TAsciiWidget = PAsciiRec;

implementation

end.
