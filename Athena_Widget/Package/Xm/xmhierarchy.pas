unit XmHierarchy;

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

{***********************************************************
*	INCLUDE FILES
************************************************************ }
{***********************************************************
*	TYPEDEFS AND DEFINES
************************************************************ }

type
  //PXmHierarchyWidgetClass = ^TXmHierarchyWidgetClass;
  //TXmHierarchyWidgetClass = PXmHierarchyClassRec;
  //
  //PXmHierarchyWidget = ^TXmHierarchyWidget;
  //TXmHierarchyWidget = PXmHierarchyRec;

  PXmHierarchyNodeStateData = ^TXmHierarchyNodeStateData;
  TXmHierarchyNodeStateData = record
      widget : TWidget;
      state : TXmHierarchyNodeState;
    end;
{***********************************************************
*	MACROS
************************************************************ }
{***********************************************************
*	GLOBAL FUNCTION DECLARATIONS
************************************************************ }
{	Function Name: XmHierarchyOpenAllAncestors
 *	Description: This function opens all ancestors of the given node.
 *	Arguments: nw - the node (widget) that will be changed.
 *	Returns: none
  }

procedure XmHierarchyOpenAllAncestors(para1:TWidget);cdecl;external libXm;
function XmHierarchyGetChildNodes(para1:TWidget):TWidgetList;cdecl;external libXm;
  var
    xmHierarchyWidgetClass : TWidgetClass;cvar;external libXm;

implementation

end.
