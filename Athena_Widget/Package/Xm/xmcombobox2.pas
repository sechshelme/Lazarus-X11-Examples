unit XmComboBox2;

interface

uses
  XTIntrinsic,
  XmXm;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

//{$include <Xm/DropDown.h>}
//{$include <Xm/XmP.h>}
  Const
    XiCOMBINATIONBOX2_LABEL = XmDROPDOWN_LABEL;
    XiCOMBINATIONBOX2_TEXT = XmDROPDOWN_TEXT;
    XiCOMBINATIONBOX2_ARROW_BUTTON = XmDROPDOWN_ARROW_BUTTON;
    XiCOMBINATIONBOX2_LIST = XmDROPDOWN_LIST;

  var
    xmCombinationBox2WidgetClass : TWidgetClass;cvar;external libXm;

//type
//  PXmCombinationBox2WidgetClass = ^TXmCombinationBox2WidgetClass;
//  TXmCombinationBox2WidgetClass = PXmDropDownWidgetClass;
//
//  PXmCombinationBox2Widget = ^TXmCombinationBox2Widget;
//  TXmCombinationBox2Widget = PXmDropDownWidget;

{	Function Name: XmCombinationBox2GetValue
 *	Description:   Retreives the value from the combo box.
 *	Arguments:     w - the combination box.
 *	Returns:       The value in the text widget.
  }

function XmCombinationBox2GetValue(w:TWidget):TString;cdecl;external libXm;
{	Function Name: XmCreateCombinationBox2
 *	Description: Creation Routine for UIL and ADA.
 *	Arguments: parent - the parent widget.
 *                 name - the name of the widget.
 *                 args, num_args - the number and list of args.
 *	Returns: The Widget created.
  }
function XmCreateCombinationBox2(w:TWidget; name:Pchar; args:TArgList; argCount:TCardinal):TWidget;cdecl;external libXm;
{
 * Variable argument list functions
  }
//function XmVaCreateCombinationBox2(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateCombinationBox2(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedCombinationBox2(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedCombinationBox2(parent:TWidget; name:Pchar):TWidget;varargs cdecl;external libXm;
{      Function Name:  XmCombinationBox2GetLabel
 *      Description:    Returns the "label" child of the XmCombinationBox2
 *      Arguments:      w - The XmCombinationBox2 Widget
 *      Returns:        The specified child of the XmCombinationBox2
  }
function XmCombinationBox2GetLabel(w:TWidget):TWidget;cdecl;external libXm;
{      Function Name:  XmCombinationBox2GetArrow
 *      Description:    Returns the "arrow" child of the XmCombinationBox2
 *      Arguments:      w - The XmCombinationBox2 Widget
 *      Returns:        The specified child of the XmCombinationBox2
  }
function XmCombinationBox2GetArrow(w:TWidget):TWidget;cdecl;external libXm;
{      Function Name:  XmCombinationBox2GetText
 *      Description:    Returns the "text" child of the XmCombinationBox2
 *      Arguments:      w - The XmCombinationBox2 Widget
 *      Returns:        The specified child of the XmCombinationBox2
  }
function XmCombinationBox2GetText(w:TWidget):TWidget;cdecl;external libXm;
{      Function Name:  XmCombinationBox2GetList
 *      Description:    Returns the "list" child of the XmCombinationBox2
 *      Arguments:      w - The XmCombinationBox2 Widget
 *      Returns:        The specified child of the XmCombinationBox2
  }
function XmCombinationBox2GetList(w:TWidget):TWidget;cdecl;external libXm;
{      Function Name:  XmCombinationBox2GetChild
 *      Description:    Returns the child widget id of the XmCombinationBox2
 *      Arguments:      w - The XmCombinationBox2 Widget
 *      Returns:        The specified child of the XmCombinationBox2
  }
function XmCombinationBox2GetChild(w:TWidget; child:longint):TWidget;cdecl;external libXm;

implementation

end.
