unit XawLabel;

interface

uses
  X11Intrinsic,
  XawSimple;

const
  libXaw = 'libXaw.so';

// {$include <X11/Xaw/Simple.h>}
{ Resources:

 Name		     Class		RepType		Default Value
 ----		     -----		-------		-------------
 background	     Background		Pixel		XtDefaultBackground
 bitmap		     Pixmap		Pixmap		None
 border		     BorderColor	Pixel		XtDefaultForeground
 borderWidth	     BorderWidth	Dimension	1
 cursor		     Cursor		Cursor		None
 cursorName	     Cursor		String		NULL
 destroyCallback     Callback		XtCallbackList	NULL
 encoding	     Encoding		UnsignedChar	XawTextEncoding8bit
 font		     Font		XFontStruct*	XtDefaultFont
 foreground	     Foreground		Pixel		XtDefaultForeground
 height		     Height		Dimension	text height
 insensitiveBorder   Insensitive	Pixmap		Gray
 internalHeight	     Height		Dimension	2
 internalWidth	     Width		Dimension	4
 justify	     Justify		XtJustify	XtJustifyCenter
 label		     Label		String		NULL
 leftBitmap	     LeftBitmap		Pixmap		None
 mappedWhenManaged   MappedWhenManaged	Boolean		True
 pointerColor	     Foreground		Pixel		XtDefaultForeground
 pointerColorBackground Background	Pixel		XtDefaultBackground
 resize		     Resize		Boolean		True
 sensitive	     Sensitive		Boolean		True
 width		     Width		Dimension	text width
 x		     Position		Position	0
 y		     Position		Position	0

 }

const
  XawTextEncoding8bit = 0;  
  XawTextEncodingChar2b = 1;  
  XtNleftBitmap = 'leftBitmap';  
  XtCLeftBitmap = 'LeftBitmap';  
  XtNencoding = 'encoding';  
  XtCEncoding = 'Encoding';  

const
  XtNfontSet = 'fontSet';  

const
  XtCFontSet = 'FontSet';  

const
  XtNbitmap = 'bitmap';  
  XtNforeground = 'foreground';  
  XtNlabel = 'label';  
  XtNfont = 'font';  
  XtNinternalWidth = 'internalWidth';  
  XtNinternalHeight = 'internalHeight';  
  XtNresize = 'resize';  
  XtCResize = 'Resize';  
  XtCBitmap = 'Bitmap';  

const
  XtNlabelX = 'labelX';  
  XtNlabelY = 'labelY';

  var
    labelWidgetClass : TWidgetClass;cvar;external libXaw;

  //type
  //  PLabelWidgetClass = ^TLabelWidgetClass;
  //  TLabelWidgetClass = PLabelClassRec;
  //
  //  PLabelWidget = ^TLabelWidget;
  //  TLabelWidget = PLabelRec;

implementation


end.
