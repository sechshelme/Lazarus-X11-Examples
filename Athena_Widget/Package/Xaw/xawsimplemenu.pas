unit XawSimpleMenu;

interface

uses
  x, xlib,
  XTIntrinsic;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <X11/Shell.h>}
// {$include <X11/Xmu/Converters.h>}
{
 * SimpleMenu widget
  }
{ Resources:

 Name		     Class		RepType		Default Value
 ----		     -----		-------		-------------
 background	     Background		Pixel		XtDefaultBackground
 backgroundPixmap    BackgroundPixmap	Pixmap          None
 borderColor	     BorderColor	Pixel		XtDefaultForeground
 borderPixmap	     BorderPixmap	Pixmap		None
 borderWidth	     BorderWidth	Dimension	1
 bottomMargin        VerticalMargins    Dimension       VerticalSpace
 columnWidth         ColumnWidth        Dimension       Width of widest text
 cursor              Cursor             Cursor          None
 destroyCallback     Callback		Pointer		NULL
 displayList	     DisplayList	XawDisplayList*	NULL
 height		     Height		Dimension	0
 label               Label              String          NULL (No label)
 labelClass          LabelClass         Pointer         smeBSBObjectClass
 leftMargin	     HorizontalMargins	Dimension	0
 mappedWhenManaged   MappedWhenManaged	Boolean		True
 rightMargin	     HorizontalMargins	Dimension	0
 rowHeight           RowHeight          Dimension       Height of Font
 sensitive	     Sensitive		Boolean		True
 topMargin           VerticalMargins    Dimension       VerticalSpace
 width		     Width		Dimension	0
 x		     Position		Position	0
 y		     Position		Position	0

 }
  var
    simpleMenuWidgetClass : TWidgetClass;cvar;external libXaw;

const
  XtNcursor = 'cursor';  
  XtNbottomMargin = 'bottomMargin';  
  XtNcolumnWidth = 'columnWidth';  
  XtNlabelClass = 'labelClass';  
  XtNmenuOnScreen = 'menuOnScreen';  
  XtNpopupOnEntry = 'popupOnEntry';  
  XtNrowHeight = 'rowHeight';  
  XtNtopMargin = 'topMargin';  
  XtNleftMargin = 'leftMargin';  
  XtNrightMargin = 'rightMargin';

  XtCColumnWidth = 'ColumnWidth';  
  XtCLabelClass = 'LabelClass';  
  XtCMenuOnScreen = 'MenuOnScreen';  
  XtCPopupOnEntry = 'PopupOnEntry';  
  XtCRowHeight = 'RowHeight';  
  XtCVerticalMargins = 'VerticalMargins';  

const
  XtCHorizontalMargins = 'HorizontalMargins';  
  XawNdisplayList = 'displayList';  
  XawCDisplayList = 'DisplayList';  
  XawRDisplayList = 'XawDisplayList';  

  {
 * Public Functions
  }
{
 * Function:
 *	XawSimpleMenuAddGlobalActions
 *
 * Parameters:
 *	app_con - appcontext
 *
 * Description:
 *	Adds the global actions to the simple menu widget.
  }

procedure XawSimpleMenuAddGlobalActions(app_con:TXtAppContext);cdecl;external libXaw;
{
 * Function:
 *	XawSimpleMenuGetActiveEntry
 *
 * Parameters:
 *	w - smw widget
 *
 * Description:
 *	Gets the currently active (set) entry.
 *
 * Returns:
 *	The currently set entry or NULL if none is set
  }
function XawSimpleMenuGetActiveEntry(w:TWidget):TWidget;cdecl;external libXaw;
{
 * Function:
 *	XawSimpleMenuClearActiveEntry
 *
 * Parameters:
 *	w - smw widget
 *
 * Description:
 *	Unsets the currently active (set) entry.
  }
procedure XawSimpleMenuClearActiveEntry(w:TWidget);cdecl;external libXaw;

//type
//  PSimpleMenuWidgetClass = ^TSimpleMenuWidgetClass;
//  TSimpleMenuWidgetClass = PSimpleMenuClassRec;
//
//  PSimpleMenuWidget = ^TSimpleMenuWidget;
//  TSimpleMenuWidget = PSimpleMenuRec;


implementation


end.
