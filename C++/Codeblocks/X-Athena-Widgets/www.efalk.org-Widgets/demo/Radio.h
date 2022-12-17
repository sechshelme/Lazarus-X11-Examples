/* $Id: Radio.h,v 1.1 1997/08/28 05:38:04 falk Exp $
 *
 * Radio.h - Radio button widget
 *
 * Author: Edward A. Falk
 *         falk@falconer.vip.best.com
 *  
 * Date:   June 30, 1997
 */

#ifndef _XawRadio_h
#define _XawRadio_h

/***********************************************************************
 *
 * Radio Widget
 *
 * The Radio widget is identical to the Toggle widget in behavior but
 * not in appearance.  The Radio widget looks like a small diamond
 * shaped button to the left of the label.
 *
 ***********************************************************************/

#include <X11/Xaw/Toggle.h>

/* Resources:

 Name			Class		RepType		Default Value
 ----			-----		-------		-------------
 radioGroup		RadioGroup	Widget		NULL
 radioData		RadioData	Pointer		(XPointer) Widget
 state			State		Boolean		Off
 background		Background	Pixel		XtDefaultBackground
 bitmap			Pixmap		Pixmap		None
 border			BorderColor	Pixel		XtDefaultForeground
 borderWidth		BorderWidth	Dimension	1
 callback		Callback	Pointer		NULL
 cursor			Cursor		Cursor		None
 destroyCallback	Callback	Pointer		NULL
 font			Font		XFontStructx*	XtDefaultFont
 foreground		Foreground	Pixel		XtDefaultForeground
 height			Height		Dimension	text height
 highlightThickness 	Thickness	Dimension	2
 insensitiveBorder	sensitive	Pixmap		Gray
 internalHeight		Height		Dimension	2
 internalWidth		Width		Dimension	4
 justify		Justify		XtJustify	XtJustifyCenter
 label			Label		String		NULL
 mappedWhenManaged	MappedWhenManaged Boolean	True
 resize			Resize		Boolean		True
 sensitive		Sensitive	Boolean		True
 width			Width		Dimension	text width
 x			Position	Position	0
 y			Position	Position	0

*/

/*
 * These should be in StringDefs.h but aren't so we will define
 * them here if they are needed.
 */


extern WidgetClass               radioWidgetClass;

typedef struct _RadioClassRec   *RadioWidgetClass;
typedef struct _RadioRec        *RadioWidget;


/************************************************************
 * 
 * Public Functions
 *
 ************************************************************/

#endif /* _XawRadio_h */
