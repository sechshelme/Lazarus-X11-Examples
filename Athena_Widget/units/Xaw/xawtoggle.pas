unit XawToggle;

interface

uses
  XTIntrinsic;

const
  libXaw = 'libXaw.so';

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


// {$include <X11/Xaw/Command.h>}
{ Resources:

 Name		     Class		RepType		Default Value
 ----		     -----		-------		-------------
 radioGroup          RadioGroup         Widget          NULL              +
 radioData           RadioData          Pointer         (XPointer) Widget  ++
 state               State              Boolean         Off

 background	     Background		Pixel		XtDefaultBackground
 bitmap		     Pixmap		Pixmap		None
 border		     BorderColor	Pixel		XtDefaultForeground
 borderWidth	     BorderWidth	Dimension	1
 callback	     Callback		Pointer		NULL
 cursor		     Cursor		Cursor		None
 destroyCallback     Callback		Pointer		NULL
 displayList	     DisplayList	XawDisplayList*	NULL
 font		     Font		XFontStructx*	XtDefaultFont
 foreground	     Foreground		Pixel		XtDefaultForeground
 height		     Height		Dimension	text height
 highlightThickness  Thickness		Dimension	2
 insensitiveBorder   Insensitive	Pixmap		Gray
 internalHeight	     Height		Dimension	2
 internalWidth	     Width		Dimension	4
 justify	     Justify		XtJustify	XtJustifyCenter
 label		     Label		String		NULL
 mappedWhenManaged   MappedWhenManaged	Boolean		True
 resize		     Resize		Boolean		True
 sensitive	     Sensitive		Boolean		True
 width		     Width		Dimension	text width
 x		     Position		Position	0
 y		     Position		Position	0

+ To use the toggle as a radio toggle button, set this resource to point to
  any other widget in the radio group.

++ This is the data returned from a call to XtToggleGetCurrent, by default
   this is set to the name of toggle widget.

 }
{
 * These should be in StringDefs.h but aren't so we will define
 * them here if they are needed
  }

const
  XtCWidget = 'Widget';  
  XtCState = 'State';  
  XtCRadioGroup = 'RadioGroup';  
  XtCRadioData = 'RadioData';  
{$ifndef _XtStringDefs_h_}

const
  XtRWidget = 'Widget';  
{$endif}

const
  XtNstate = 'state';  
  XtNradioGroup = 'radioGroup';  
  XtNradioData = 'radioData';  
  var
    toggleWidgetClass : TWidgetClass;cvar;external libXaw;
//type
//  PToggleWidgetClass = ^TToggleWidgetClass;
//  TToggleWidgetClass = PToggleClassRec;
//
//  PToggleWidget = ^TToggleWidget;
//  TToggleWidget = PToggleRec;
{
 * Public Functions
  }
{
 * Function:
 *	XawToggleChangeRadioGroup
 *
 * Parameters:
 *	w	    - toggle widget to change lists
 *	radio_group - any widget in the new list
 *
 * Description:
 *	Allows a toggle widget to change radio lists.
  }

procedure XawToggleChangeRadioGroup(w:TWidget; radio_group:TWidget);cdecl;external libXaw;
{
 * Function:
 *	XawToggleGetCurrent
 *
 * Parameters:
 *	radio_group - any toggle widget in the toggle list
 *
 * Description:
 *	  Returns the RadioData associated with the toggle
 *                   widget that is currently active in a toggle list.
 * Returns:
 *	The XtNradioData associated with the toggle widget
  }
function XawToggleGetCurrent(radio_group:TWidget):TXtPointer;cdecl;external libXaw;
{
 * Function:
 *	XawToggleSetCurrent
 *
 * Parameters:
 *	radio_group - any toggle widget in the toggle list
 *	radio_data - radio data of the toggle widget to set
 *
 * Description:
 *	Sets the Toggle widget associated with the radio_data specified.
  }
procedure XawToggleSetCurrent(radio_group:TWidget; radio_data:TXtPointer);cdecl;external libXaw;
{
 * Function:
 *	XawToggleUnsetCurrent
 *
 * Parameters:
 *	radio_group - any toggle widget in the toggle list
 *
 * Description:
 *	Unsets all Toggles in the radio_group specified.
  }
procedure XawToggleUnsetCurrent(radio_group:TWidget);cdecl;external libXaw;

implementation

end.
