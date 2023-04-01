unit XmIconButton;

interface

uses
  unixtype,
  x, xlib,
  XTIntrinsic,
  XmXm;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <X11/apienvset.h>}
// {$include <Xm/Ext.h>}

{***********************************************************
*	INCLUDE FILES
************************************************************ }
{***********************************************************
*	TYPEDEFS AND DEFINES
************************************************************ }

type
//  PXmIconButtonWidgetClass = ^TXmIconButtonWidgetClass;
//  TXmIconButtonWidgetClass = PXmIconButtonClassRec;
//
//  PXmIconButtonWidget = ^TXmIconButtonWidget;
//  TXmIconButtonWidget = PXmIconButtonRec;

{***********************************************************
*	MACROS
************************************************************ }
{***********************************************************
*	GLOBAL DECLARATIONS
************************************************************ }
{ The current state of the icon button.  }
{ The event that caused this action.  }

  PXmIconButtonCallbackInfo = ^TXmIconButtonCallbackInfo;
  TXmIconButtonCallbackInfo = record
      state : TBoolean;
      event : PXEvent;
    end;
{***********************************************************
*	EXTERNAL DECLARATIONS
************************************************************ }
{	Function Name: XmCreateIconButton
 *	Description: Creation Routine for UIL and ADA.
 *	Arguments: parent - the parent widget.
 *                 name - the name of the widget.
 *                 args, num_args - the number and list of args.
 *	Returns: The Widget created.
  }

function XmCreateIconButton(para1:TWidget; para2:TString; para3:TArgList; para4:TCardinal):TWidget;cdecl;external libXm;
  var
    xmIconButtonWidgetClass : TWidgetClass;cvar;external libXm;

implementation

end.
