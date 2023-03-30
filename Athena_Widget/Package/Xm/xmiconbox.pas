unit XmIconBox;

interface

uses
  XTIntrinsic;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <X11/apienvset.h>}

{***********************************************************
*	INCLUDE FILES
************************************************************ }
{***********************************************************
*	TYPEDEFS AND DEFINES
************************************************************ }

const
  XmIconBoxAnyCell = -(5);  
type
  //PXmIconBoxWidgetClass = ^TXmIconBoxWidgetClass;
  //TXmIconBoxWidgetClass = PXmIconBoxClassRec;
  //
  //PXmIconBoxWidget = ^TXmIconBoxWidget;
  //TXmIconBoxWidget = PXmIconBoxRec;
{ drop location in cell coordinates.  }

  PXmIconBoxDropData = ^TXmIconBoxDropData;
  TXmIconBoxDropData = record
      cell_x : TPosition;
      cell_y : TPosition;
    end;

{***********************************************************
*	MACROS
************************************************************ }
{***********************************************************
*	GLOBAL DECLARATIONS
************************************************************ }
{	Function Name: XmIconBoxIsCellEmpty
 *	Description:   Returns true if this cell is unused.
 *	Arguments:     w - the icon box.
 *                     x, y - cell to check.
 *                     ignore - ignore this widget when checking.
 *	Returns:       Returns true if this cell is unused.
  }

function XmIconBoxIsCellEmpty(para1:TWidget; para2:TPosition; para3:TPosition; para4:TWidget):TBoolean;cdecl;external libXm;
{	Function Name: XmCreateIconBox
 *	Description: Creation Routine for UIL and ADA.
 *	Arguments: parent - the parent widget.
 *                 name - the name of the widget.
 *                 args, num_args - the number and list of args.
 *	Returns: The Widget created.
  }

function XmCreateIconBox(para1:TWidget; para2:TString; para3:TArgList; para4:TCardinal):TWidget;cdecl;external libXm;
{***********************************************************
*	EXTERNAL DECLARATIONS
************************************************************ }
  var
    xmIconBoxWidgetClass : TWidgetClass;cvar;external libXm;

implementation

end.
