unit XmExt18List;

interface

uses
  XTIntrinsic,
  XmXm,
  XmMultiList;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

//{$include <Xm/MultiList.h>}
//{$include <Xm/XmP.h>}
    var
    xmExt18ListWidgetClass : TWidgetClass;cvar;external libXm;

    Const
    XmEXT18LIST_FOUND = XmMULTILIST_FOUND;
    XmEXT18LIST_NOT_FOUND = XmMULTILIST_NOT_FOUND;

type
  PXmExt18ListWidgetClass = ^TXmExt18ListWidgetClass;
  TXmExt18ListWidgetClass = PXmMultiListWidgetClass;

  PXmExt18ListWidget = ^TXmExt18ListWidget;
  TXmExt18ListWidget = PXmMultiListWidget;

  PPXm18RowInfo = ^PXm18RowInfo;
  PXm18RowInfo = ^TXm18RowInfo;
  TXm18RowInfo = TXmMultiListRowInfo;

  PXmExt18ListCallbackStruct = ^TXmExt18ListCallbackStruct;
  TXmExt18ListCallbackStruct = TXmMultiListCallbackStruct;
{ 
 * Function Name: XmExt18ListGetSelectedRows
 * Description:   Takes an Extended List and returns a NULL terminated array
 *                of pointers to selected rows from the internal list
 * Arguments:     w - the extended list widget
 * Returns:       Xm18RowInfo **
  }

function XmExt18ListGetSelectedRows(w:TWidget):PPXm18RowInfo;cdecl;external libXm;
{	Function Name: XmCreateExtended18List
 *	Description: Creation Routine for UIL and ADA.
 *	Arguments: parent - the parent widget.
 *                 name - the name of the widget.
 *                 args, num_args - the number and list of args.
 *	Returns: The Widget created.
  }
function XmCreateExtended18List(para1:TWidget; para2:TString; para3:TArgList; para4:TCardinal):TWidget;cdecl;external libXm;
function XmCreateExt18List(para1:TWidget; para2:TString; para3:TArgList; para4:TCardinal):TWidget;cdecl;external libXm;
//function XmVaCreateExt18List(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateExt18List(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedExt18List(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedExt18List(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
{  Function Name: XmExt18ListUnselectAllItems
 *  Description:   Unselects all rows
 *  Arguments:     w - the ilist widget.
 *  Returns:       none
  }
procedure XmExt18ListUnselectAllItems(w:TWidget);cdecl;external libXm;
{  Function Name: XmExt18ListUnselectItem
 *  Description:   Unselects the row passed in
 *  Arguments:     w - the ilist widget.
 *                 row_info - ptr to the row passed in
 *  Returns:       none
  }
procedure XmExt18ListUnselectItem(para1:TWidget; para2:PXm18RowInfo);cdecl;external libXm;
{  Function Name: XmExt18ListToggleRow
 *  Description:   Toggles the selection state of a specified row
 *  Arguments:     w - the extended list widget
 *  Returns:       none
  }
procedure XmExt18ListToggleRow(para1:TWidget; para2:smallint);cdecl;external libXm;
{  Function Name: XmExt18ListSelectItems
 *  Description:   Set selection state by matching column entries to XmString
 *  Arguments:     w - the extended list widget
 *		   item - XmString to use as selection key
 *		   column - column number (0 - N) to match (or XmANY_COLUMN)
 *		   notify - if True, call XmNsingleSelectionCallback
 *  Returns:       none
  }
procedure XmExt18ListSelectItems(para1:TWidget; para2:TXmString; para3:longint; para4:TBoolean);cdecl;external libXm;
{  Function Name: XmExt18ListDeselectItems
 *  Description:   Set selection state by matching column entries to XmString
 *  Arguments:     w - the extended list widget
 *		   item - XmString to use as selection key
 *		   column - column number (0 - N) to match (or XmANY_COLUMN)
 *  Returns:       none
  }
procedure XmExt18ListDeselectItems(para1:TWidget; para2:TXmString; para3:longint);cdecl;external libXm;
{  Function Name: XmExt18ListSelectAllItems
 *  Description:   Set selection state on all rows
 *  Arguments:     w - the extended list widget
 *		   notify - if True, call XmNsingleSelectionCallback for each
 *  Returns:       none
  }
procedure XmExt18ListSelectAllItems(para1:TWidget; para2:TBoolean);cdecl;external libXm;
{  Function Name: XmExt18ListSelectRow
 *  Description:   Set selection state on all rows
 *  Arguments:     w - the extended list widget
 *		   row - the row to select
 *		   notify - if True, call XmNsingleSelectionCallback
 *  Returns:       none
  }
procedure XmExt18ListSelectRow(para1:TWidget; para2:longint; para3:TBoolean);cdecl;external libXm;
{  Function Name: XmExt18ListDeselectRow
 *  Description:   Set selection state on all rows
 *  Arguments:     w - the extended list widget
 *		   row - the row to select
 *  Returns:       none
  }
procedure XmExt18ListDeselectRow(para1:TWidget; para2:longint);cdecl;external libXm;
{ 
 * Function Name: XmExt18ListGetSelectedRowArray
 * Description:   Takes an Extended List and returns a NULL terminated array
 *                of pointers to selected rows from the internal list
 * Arguments:     w - the extended list widget
 *		  num_rows - pointer to the number of rows
 * Returns:       array of integer (selected) row numbers
  }
function XmExt18ListGetSelectedRowArray(para1:TWidget; para2:Plongint):Plongint;cdecl;external libXm;
{  Function Name: XmExt18ListMakeRowVisible
 *  Description:   Shifts the visible extended list rows as desired
 *  Arguments:     w - the extended list widget
 *		   row - the row number wished to be made visible
 *  Returns:       none
  }
procedure XmExt18ListMakeRowVisible(para1:TWidget; para2:longint);cdecl;external libXm;

implementation

end.
