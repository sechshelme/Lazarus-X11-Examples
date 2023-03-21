unit XawSimple;

interface

uses
  XTIntrinsic;

// {$include <X11/Xmu/Converters.h>}
{ Resources:

 Name		     Class		RepType		Default Value
 ----		     -----		-------		-------------
 background	     Background		Pixel		XtDefaultBackground
 border		     BorderColor	Pixel		XtDefaultForeground
 borderWidth	     BorderWidth	Dimension	1
 cursor		     Cursor		Cursor		None
 cursorName	     Cursor		String		NULL
 destroyCallback     Callback		Pointer		NULL
 displayList	     DisplayList	XawDisplayList*	NULL
 height		     Height		Dimension	0
 insensitiveBorder   Insensitive	Pixmap		Gray
 mappedWhenManaged   MappedWhenManaged	Boolean		True
 pointerColor        Foreground         Pixel           XtDefaultForeground
 pointerColorBackground Background      Pixel           XtDefaultBackground
 sensitive	     Sensitive		Boolean		True
 tip		     Tip		String		NULL
 width		     Width		Dimension	0
 x		     Position		Position	0
 y		     Position		Position	0

 }

const
  XtNcursor = 'cursor';  
  XtNcursorName = 'cursorName';  
  XtNinsensitiveBorder = 'insensitiveBorder';  
  XtCInsensitive = 'Insensitive';  

const
  XtCInternational = 'International';  

const
  XtNinternational = 'international';  

const
  XawNdisplayList = 'displayList';  

const
  XawCDisplayList = 'DisplayList';  

const
  XawRDisplayList = 'XawDisplayList';  

const
  XtNtip = 'tip';  
  XtCTip = 'Tip';  

var
  simpleWidgetClass : TWidgetClass;cvar;external libXaw;

//type
//  PSimpleWidgetClass = ^TSimpleWidgetClass;
//  TSimpleWidgetClass = PSimpleClassRec;
//
//  PSimpleWidget = ^TSimpleWidget;
//  TSimpleWidget = PSimpleRec;


implementation

end.
