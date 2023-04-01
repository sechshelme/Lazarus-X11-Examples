unit XmFontS;

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

{***********************************************************
 *       INCLUDE FILES
 *********************************************************** }
//{$include <Xm/Ext.h>}
{***********************************************************
 *       TYPEDEFS AND DEFINES
 *********************************************************** }
//type
//  PXmFontSelectorWidgetClass = ^TXmFontSelectorWidgetClass;
//  TXmFontSelectorWidgetClass = PXmFontSelectorClassRec;
//
//  PXmFontSelectorWidget = ^TXmFontSelectorWidget;
//  TXmFontSelectorWidget = PXmFontSelectorRec;
{***********************************************************
 *       MACROS
 *********************************************************** }
{***********************************************************
 *       GLOBAL DECLARATIONS
 *********************************************************** }
{***********************************************************
 *       EXTERNAL DECLARATIONS
 *********************************************************** }
{	Function Name: XmCreateFontSelector
 *	Description: Creation Routine for UIL and ADA.
 *	Arguments: parent - the parent widget.
 *                 name - the name of the widget.
 *                 args, num_args - the number and list of args.
 *	Returns: The Widget created.
  }
function XmCreateFontSelector(para1:TWidget; para2:TString; para3:TArgList; para4:TCardinal):TWidget;cdecl;external libXm;
  var
    xmFontSelectorWidgetClass : TWidgetClass;cvar;external libXm;

implementation

end.
