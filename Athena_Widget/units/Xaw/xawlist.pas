unit XawList;

interface

uses
  XTIntrinsic;

const
  libXaw = 'libXaw.so';

{  This is the List widget, it is useful to display a list, without the
 *  overhead of having a widget for each item in the list.  It allows
 *  the user to select an item in a list and notifies the application through
 *  a callback function.
 *
 *	Created:	8/13/88
 *	By:		Chris D. Peterson
 *                      MIT X Consortium
  }
//{$include <X11/Xaw/Simple.h>}
{ Resources:

 Name		     Class		RepType		Default Value
 ----		     -----		-------		-------------
 background	     Background		Pixel		XtDefaultBackground
 borderColor	     BorderColor	Pixel		XtDefaultForeground
 borderWidth	     BorderWidth	Dimension	1
 callback            Callback           XtCallbackList  NULL       **6
 columnSpacing       Spacing            Dimension       6
 cursor		     Cursor		Cursor		left_ptr
 cursorName	     Cursor		String		NULL
 defaultColumns      Columns            int             2          **5
 destroyCallback     Callback		Pointer		NULL
 font		     Font		XFontStruct*	XtDefaultFont
 forceColumns        Columns            Boolean         False      **5
 foreground	     Foreground		Pixel		XtDefaultForeground
 height		     Height		Dimension	0          **1
 insensitiveBorder   Insensitive	Pixmap		Gray
 internalHeight	     Height		Dimension	2
 internalWidth	     Width		Dimension	4
 list		     List		String*		NULL	   **2
 longest             Longest            int             0          **3  **4
 mappedWhenManaged   MappedWhenManaged	Boolean		True
 numberStrings       NumberStrings      int             0          **4
 pasteBuffer         Boolean            Boolean         False
 pointerColor	     Foreground		Pixel		XtDefaultForeground
 pointerColorBackground Background	Pixel		XtDefaultBackground
 rowSpacing          Spacing            Dimension       4
 sensitive	     Sensitive		Boolean		True
 verticalList        Boolean            Boolean         False
 width		     Width		Dimension	0          **1
 x		     Position		Position	0
 y		     Position		Position	0

 **1 - If the Width or Height of the list widget is zero (0) then the value
       is set to the minimum size necessary to fit the entire list.

       If both Width and Height are zero then they are adjusted to fit the
       entire list that is created width the number of default columns
       specified in the defaultColumns resource.

 **2 - This is an array of strings the specify elements of the list.
       This resource must be specified.
       (What good is a list widget without a list??  :-)

 **3 - Longest is the length of the widest string in pixels.

 **4 - If either of these values are zero (0) then the list widget calculates
       the correct value.

       (This allows you to make startup faster if you already have
        this information calculated)

       NOTE: If the numberStrings value is zero the list must
             be NULL terminated.

 **5 - By setting the List.Columns resource you can force the application to
       have a given number of columns.

 **6 - This returns the name and index of the item selected in an
       XawListReturnStruct that is pointed to by the client_data
       in the CallbackProc.

 }
{
 * Value returned when there are no highlighted objects
  }

const
  XAW_LIST_NONE = -(1);  
  XtCList = 'List';  
  XtCSpacing = 'Spacing';  
  XtCColumns = 'Columns';  
  XtCLongest = 'Longest';  
  XtCNumberStrings = 'NumberStrings';  
  XtNcursor = 'cursor';  
  XtNcolumnSpacing = 'columnSpacing';  
  XtNdefaultColumns = 'defaultColumns';  
  XtNforceColumns = 'forceColumns';  
  XtNlist = 'list';  
  XtNlongest = 'longest';  
  XtNnumberStrings = 'numberStrings';  
  XtNpasteBuffer = 'pasteBuffer';  
  XtNrowSpacing = 'rowSpacing';  
  XtNverticalList = 'verticalList';  
  XtNshowCurrent = 'showCurrent';  
{$ifndef XtNfontSet}

const
  XtNfontSet = 'fontSet';  
{$endif}
{$ifndef XtCFontSet}

const
  XtCFontSet = 'FontSet';  
{$endif}
  var
    listWidgetClass : TWidgetClass;cvar;external;
type

  PXawListReturnStruct = ^TXawListReturnStruct;
  TXawListReturnStruct = record
      _string : TString;
      list_index : longint;
    end;

{
 * Function:
 *	XawListChange
 *
 * Parameters:
 *	w	- list widget
 *	list	- new list
 *	nitems	- number of items in the list
 *	longest - length (in Pixels) of the longest element in the list
 *	resize	- if True the the list widget will try to resize itself
 *
 * Description:
 *	Changes the list being used and shown.
 *
 * Note:
 *	If nitems of longest are <= 0 then they will be calculated
 *	If nitems is <= 0 then the list needs to be NULL terminated
  }

procedure XawListChange(w:TWidget; list:PPchar; nitems:longint; longest:longint; resize:TBoolean);cdecl;external libXaw;
{
 * Function:
 *	XawListUnhighlight
 *
 * Parameters:
 *	w - list widget
 *
 * Description:
 *	Unlights the current highlighted element.
  }
procedure XawListUnhighlight(w:TWidget);cdecl;external libXaw;
{
 * Function:
 *	XawListHighlight
 *
 * Parameters:
 *	w    - list widget
 *	item - item to highlight
 *
 * Description:
 *	Highlights the given item.
  }
procedure XawListHighlight(w:TWidget; item:longint);cdecl;external libXaw;
{
 * Function:
 *	XawListShowCurrent
 *
 * Paraneters:
 *	w - list widget
 *
 * Description:
 *	Returns the currently highlighted object.
 *
 * Returns:
 *	The info about the currently highlighted object
  }
function XawListShowCurrent(w:TWidget):PXawListReturnStruct;cdecl;external libXaw;

//type
//  PListWidgetClass = ^TListWidgetClass;
//  TListWidgetClass = PListClassRec;
//
//  PListWidget = ^TListWidget;
//  TListWidget = PListRec;

implementation


end.
