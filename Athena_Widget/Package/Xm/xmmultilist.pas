unit XmMultiList;

interface

uses
  xlib, x,
  XTIntrinsic,
  XmXm,
  XmText;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

//{$include <Xm/Ext.h>}

const
  XmANY_COLUMN = -(1);  
  var
    xmMultiListWidgetClass : TWidgetClass;cvar;external libXm;

type
  PXmMultiListWidgetClass = ^TXmMultiListWidgetClass;
  TXmMultiListWidgetClass = Pointer;
  //  TXmMultiListWidgetClass = PXmMultiListClassRec;

  PXmMultiListWidget = ^TXmMultiListWidget;
  TXmMultiListWidget = Pointer;
//  TXmMultiListWidget = PXmMultiListRec;

type
  PPXmMultiListRowInfo = ^PXmMultiListRowInfo;
  PXmMultiListRowInfo = ^TXmMultiListRowInfo;
  TXmMultiListRowInfo = record
      values : PXmString;
      pixmap : TPixmap;
      selected : TBoolean;
      sort_id : Psmallint;
      data : TXtPointer;
      pix_width : smallint;
      pix_height : smallint;
      height : smallint;
      old_sel_state : TBoolean;
      pix_depth : smallint;
    end;

  PXmMultiListCallbackStruct = ^TXmMultiListCallbackStruct;
  TXmMultiListCallbackStruct = record
      reason : longint;
      event : PXEvent;
      _string : TString;
      column : longint;
      row : PXmMultiListRowInfo;
      wc_string : Pwchar_t;
    end;

  TXm18SortFunction = function (para1:smallint; para2:PXmMultiListRowInfo; para3:PXmMultiListRowInfo):longint;cdecl;
{***********************************************************
*	GLOBAL DECLARATIONS
************************************************************ }
{ 
 * Function Name: XmMultiListGetSelectedRows
 * Description:   Takes an Extended List and returns a NULL terminated array
 *                of pointers to selected rows from the internal list
 * Arguments:     w - the extended list widget
 * Returns:       XmMultiListRowInfo **
  }

function XmMultiListGetSelectedRows(w:TWidget):PPXmMultiListRowInfo;cdecl;external libXm;
{	Function Name: XmCreateExtended18List
 *	Description: Creation Routine for UIL and ADA.
 *	Arguments: parent - the parent widget.
 *                 name - the name of the widget.
 *                 args, num_args - the number and list of args.
 *	Returns: The Widget created.
  }
function XmCreateMultiList(w:TWidget; name:Pchar; args:TArgList; num_args:TCardinal):TWidget;cdecl;external libXm;
// Doppelt in C-Sourcen
//function XmCreateMultiList(w:TWidget; name:Pchar; args:TArgList; num_args:TCardinal):TWidget;cdecl;external libXm;

//function XmVaCreateMultiList(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateMultiList(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedMultiList(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedMultiList(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;


{  Function Name: XmMultiListUnselectAllItems
 *  Description:   Unselects all rows
 *  Arguments:     w - the ilist widget.
 *  Returns:       none
  }
procedure XmMultiListUnselectAllItems(w:TWidget);cdecl;external libXm;
{  Function Name: XmMultiListUnselectItem
 *  Description:   Unselects the row passed in
 *  Arguments:     w - the ilist widget.
 *                 row_info - ptr to the row passed in
 *  Returns:       none
  }
procedure XmMultiListUnselectItem(w:TWidget; row_info:PXmMultiListRowInfo);cdecl;external libXm;
{  Function Name: XmMultiListToggleRow
 *  Description:   Toggles the selection state of a specified row
 *  Arguments:     w - the extended list widget
 *  Returns:       none
  }
procedure XmMultiListToggleRow(w:TWidget; row:smallint);cdecl;external libXm;
{  Function Name: XmMultiListSelectItems
 *  Description:   Set selection state by matching column entries to XmString
 *  Arguments:     w - the extended list widget
 *		   item - XmString to use as selection key
 *		   column - column number (0 - N) to match (or XmANY_COLUMN)
 *		   notify - if True, call XmNsingleSelectionCallback
 *  Returns:       none
  }
procedure XmMultiListSelectItems(w:TWidget; item:TXmString; column:longint; notify:TBoolean);cdecl;external libXm;
{  Function Name: XmMultiListDeselectItems
 *  Description:   Set selection state by matching column entries to XmString
 *  Arguments:     w - the extended list widget
 *		   item - XmString to use as selection key
 *		   column - column number (0 - N) to match (or XmANY_COLUMN)
 *  Returns:       none
  }
procedure XmMultiListDeselectItems(w:TWidget; item:TXmString; column:longint);cdecl;external libXm;
{  Function Name: XmMultiListSelectAllItems
 *  Description:   Set selection state on all rows
 *  Arguments:     w - the extended list widget
 *		   notify - if True, call XmNsingleSelectionCallback for each
 *  Returns:       none
  }
procedure XmMultiListSelectAllItems(w:TWidget; notify:TBoolean);cdecl;external libXm;
{  Function Name: XmMultiListSelectRow
 *  Description:   Set selection state on all rows
 *  Arguments:     w - the extended list widget
 *		   row - the row to select
 *		   notify - if True, call XmNsingleSelectionCallback
 *  Returns:       none
  }
procedure XmMultiListSelectRow(w:TWidget; row:longint; notify:TBoolean);cdecl;external libXm;
{  Function Name: XmMultiListDeselectRow
 *  Description:   Set selection state on all rows
 *  Arguments:     w - the extended list widget
 *		   row - the row to select
 *  Returns:       none
  }
procedure XmMultiListDeselectRow(w:TWidget; row:longint);cdecl;external libXm;
{ 
 * Function Name: XmMultiListGetSelectedRowArray
 * Description:   Takes an Extended List and returns a NULL terminated array
 *                of pointers to selected rows from the internal list
 * Arguments:     w - the extended list widget
 *		  num_rows - pointer to the number of rows
 * Returns:       array of integer (selected) row numbers
  }
function XmMultiListGetSelectedRowArray(w:TWidget; num_rows:Plongint):Plongint;cdecl;external libXm;
{  Function Name: XmMultiListMakeRowVisible
 *  Description:   Shifts the visible extended list rows as desired
 *  Arguments:     w - the extended list widget
 *		   row - the row number wished to be made visible
 *  Returns:       none
  }
procedure XmMultiListMakeRowVisible(w:TWidget; row:longint);cdecl;external libXm;

implementation

end.
