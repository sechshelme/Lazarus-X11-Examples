unit XmOutline;

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
//  PXmOutlineWidgetClass = ^TXmOutlineWidgetClass;
//  TXmOutlineWidgetClass = PXmOutlineClassRec;
//
//  PXmOutlineWidget = ^TXmOutlineWidget;
//  TXmOutlineWidget = PXmOutlineRec;

{***********************************************************
*	MACROS
************************************************************ }
{***********************************************************
*	GLOBAL FUNCTION DECLARATIONS
************************************************************ }
{	Function Name: XmCreateOutline
 *	Description: Creation Routine for UIL and ADA.
 *	Arguments: parent - the parent widget.
 *                 name - the name of the widget.
 *                 args, num_args - the number and list of args.
 *	Returns: The Widget created.
  }

function XmCreateOutline(para1:TWidget; para2:TString; para3:TArgList; para4:TCardinal):TWidget;cdecl;external libXm;
  var
    xmOutlineWidgetClass : TWidgetClass;cvar;external libXm;

implementation

end.
