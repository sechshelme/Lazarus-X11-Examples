unit XawCommand;

interface

uses
  X11Intrinsic,
  XmuConverters,
  XawSimple,
  XawLabel;

const
  libXaw = 'libXaw.so';

// {$include <X11/Xaw/Label.h>}
{ Command widget resources:

 Name		     Class		RepType		Default Value
 ----		     -----		-------		-------------
 accelerators	     Accelerators	AcceleratorTable NULL
 ancestorSensitive   AncestorSensitive	Boolean		True
 background	     Background		Pixel		XtDefaultBackground
 backgroundPixmap    Pixmap		Pixmap		XtUnspecifiedPixmap
 bitmap		     Pixmap		Pixmap		None
 borderColor	     BorderColor	Pixel		XtDefaultForeground
 borderPixmap	     Pixmap		Pixmap		XtUnspecifiedPixmap
 borderWidth	     BorderWidth	Dimension	1
 callback	     Callback		XtCallbackList	NULL
 colormap	     Colormap		Colormap	parent's colormap
 cornerRoundPercent  CornerRoundPercent	Dimension	25
 cursor		     Cursor		Cursor		None
 cursorName	     Cursor		String		NULL
 depth		     Depth		int		parent's depth
 destroyCallback     Callback		XtCallbackList	NULL
 displayList	     DisplayList	XawDisplayList*	NULL
 encoding	     Encoding		UnsignedChar	XawTextEncoding8bit
 font		     Font		XFontStruct*	XtDefaultFont
 foreground	     Foreground		Pixel		XtDefaultForeground
 height		     Height		Dimension	text height
 highlightThickness  Thickness		Dimension	0 if shaped, else 2
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
 screen		     Screen		Screen		parent's Screen
 sensitive	     Sensitive		Boolean		True
 shapeStyle	     ShapeStyle		ShapeStyle	Rectangle
 translations	     Translations	TranslationTable see doc or source
 width		     Width		Dimension	text width
 x		     Position		Position	0
 y		     Position		Position	0

 }

const
  XtNhighlightThickness = 'highlightThickness';  
  XtNshapeStyle = 'shapeStyle';  
  XtCShapeStyle = 'ShapeStyle';  
  XtRShapeStyle = 'ShapeStyle';  
  XtNcornerRoundPercent = 'cornerRoundPercent';  
  XtCCornerRoundPercent = 'CornerRoundPercent';  
  XawShapeRectangle = XmuShapeRectangle;  
  XawShapeOval = XmuShapeOval;  
  XawShapeEllipse = XmuShapeEllipse;  
  XawShapeRoundedRectangle = XmuShapeRoundedRectangle;  

var
  commandWidgetClass : TWidgetClass;cvar;external libXaw;

implementation

end.
