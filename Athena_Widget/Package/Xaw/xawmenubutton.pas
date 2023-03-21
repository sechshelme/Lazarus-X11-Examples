unit XawMenuButton;

interface

uses
  XTIntrinsic;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}
// {$include <X11/Xaw/Command.h>}
{ Resources:

 Name		     Class		RepType		Default Value
 ----		     -----		-------		-------------
 background	     Background		Pixel		XtDefaultBackground
 bitmap		     Pixmap		Pixmap		None
 border		     BorderColor	Pixel		XtDefaultForeground
 borderWidth	     BorderWidth	Dimension	1
 callback	     Callback		Pointer		NULL
 cursor		     Cursor		Cursor		None
 destroyCallback     Callback		Pointer		NULL
 displayList	     DisplayList	XawDisplayList*	NULL
 font		     Font		XFontStruct*	XtDefaultFont
 foreground	     Foreground		Pixel		XtDefaultForeground
 height		     Height		Dimension	text height
 highlightThickness  Thickness		Dimension	2
 insensitiveBorder   Insensitive	Pixmap		Gray
 internalHeight	     Height		Dimension	2
 internalWidth	     Width		Dimension	4
 justify	     Justify		XtJustify	XtJustifyCenter
 label		     Label		String		NULL
 mappedWhenManaged   MappedWhenManaged	Boolean		True
 menuName            MenuName           String          "menu"
 resize		     Resize		Boolean		True
 sensitive	     Sensitive		Boolean		True
 width		     Width		Dimension	text width
 x		     Position		Position	0
 y		     Position		Position	0

 }

const
  XtNmenuName = 'menuName';  
  XtCMenuName = 'MenuName';  
  var
    menuButtonWidgetClass : TWidgetClass;cvar;external libXaw;

    //type
//  PMenuButtonWidgetClass = ^TMenuButtonWidgetClass;
//  TMenuButtonWidgetClass = PMenuButtonClassRec;
//
//  PMenuButtonWidget = ^TMenuButtonWidget;
//  TMenuButtonWidget = PMenuButtonRec;

implementation

end.
