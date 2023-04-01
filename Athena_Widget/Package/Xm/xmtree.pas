unit XmTree;

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
//{$include <Xm/Hierarchy.h>}

{***********************************************************
*	INCLUDE FILES
************************************************************ }
{***********************************************************
*	TYPEDEFS AND DEFINES
************************************************************ }
//type
//  PXmTreeWidgetClass = ^TXmTreeWidgetClass;
//  TXmTreeWidgetClass = PXmTreeClassRec;
//
//  PXmTreeWidget = ^TXmTreeWidget;
//  TXmTreeWidget = PXmTreeRec;

{	Function Name: XmCreateTree
 *	Description: Creation Routine for UIL and ADA.
 *	Arguments: parent - the parent widget.
 *                 name - the name of the widget.
 *                 args, num_args - the number and list of args.
 *	Returns: The Widget created.
  }

function XmCreateTree(para1:TWidget; para2:TString; para3:TArgList; para4:TCardinal):TWidget;cdecl;external libXm;
  var
    xmTreeWidgetClass : TWidgetClass;cvar;external libXm;
{***********************************************************
*	MACROS
************************************************************ }
{***********************************************************
*	GLOBAL FUNCTION DECLARATIONS
************************************************************ }

implementation

end.
