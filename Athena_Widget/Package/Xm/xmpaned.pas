unit XmPaned;

interface

uses
  unixtype,
  x, xlib,
  XTIntrinsic,
  XmXm;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

//{$include <X11/apienvset.h>}
//{$include <Xm/Ext.h>}

const
  XmPanedAskChild = 0;

//type
//  PXmPanedWidgetClass = ^TXmPanedWidgetClass;
//  TXmPanedWidgetClass = PXmPanedClassRec;
//
//  PXmPanedWidget = ^TXmPanedWidget;
//  TXmPanedWidget = PXmPanedRec;

{***********************************************************
 *
 *  Public Procedures 
 *
 *********************************************************** }
{	Function Name: XmPanedGetPanes
 *	Description: Returns the number of panes in the paned widget.
 *	Arguments: w - the paned widget.
 *                 panes - the list of all panes contained in this widget.
 *                 num - the number of panes.
 *	Returns: the number of panes in the paned widget.
  }
function XmPanedGetPanes(para1:TWidget; para2:PWidgetList; para3:Plongint):longint;cdecl;external libXm;
{	Function Name: XmCreatePaned
 *	Description: Creation Routine for UIL and ADA.
 *	Arguments: parent - the parent widget.
 *                 name - the name of the widget.
 *                 args, num_args - the number and list of args.
 *	Returns: The Widget created.
  }

function XmCreatePaned(para1:TWidget; para2:TString; para3:TArgList; para4:TCardinal):TWidget;cdecl;external libXm;
{ Class record constant  }
  var
    xmPanedWidgetClass : TWidgetClass;cvar;external libXm;

implementation

end.
