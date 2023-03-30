unit XmDropDown;

interface

uses
  XTIntrinsic;

// {$include <X11/Intrinsic.h>}

  var
    xmDropDownWidgetClass : TWidgetClass;cvar;external libXm;

  //type
  //PXmDropDownWidgetClass = ^TXmDropDownWidgetClass;
  //TXmDropDownWidgetClass = PXmDropDownClassRec;
  //
  //PXmDropDownWidget = ^TXmDropDownWidget;
  //TXmDropDownWidget = PXmDropDownRec;

{ XmIsDropDown may already be defined for Fast Subclassing  }

function XmIsDropDown(w : TWidget) : TBoolean;

{ XmIsDropDown  }
{**** Public Function Declarations **** }
{	Function Name: XmCreateDropDown
 *	Description: Creation Routine for UIL and ADA.
 *	Arguments: parent - the parent widget.
 *                 name - the name of the widget.
 *                 args, num_args - the number and list of args.
 *	Returns: The Widget created.
  }

function XmCreateDropDown(parent:TWidget; name:Pchar; args:TArgList; argCount:TCardinal):TWidget;cdecl;external libXm;
{	Function Name: XmDropDownGetValue
 *	Description:   Retreives the value from the combo box.
 *	Arguments:     w - the combination box.
 *	Returns:       The value in the text widget.
  }
function XmDropDownGetValue(w:TWidget):TString;cdecl;external libXm;
{
 * Variable argument list functions
  }
//function XmVaCreateDropDown(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateDropDown(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedDropDown(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedDropDown(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
{      Function Name:  XmDropDownGetLabel
 *      Description:    Returns the "label" child of the XmDropDown
 *      Arguments:      w - The XmCombinationBox2 Widget
 *      Returns:        The specified child of the XmDropDown
  }
function XmDropDownGetLabel(w:TWidget):TWidget;cdecl;external libXm;
{      Function Name:  XmDropDownGetArrow
 *      Description:    Returns the "arrow" child of the XmDropDown
 *      Arguments:      w - The XmCombinationBox2 Widget
 *      Returns:        The specified child of the XmDropDown
  }
function XmDropDownGetArrow(w:TWidget):TWidget;cdecl;external libXm;
{      Function Name:  XmDropDownGetText
 *      Description:    Returns the "text" child of the XmDropDown
 *      Arguments:      w - The XmCombinationBox2 Widget
 *      Returns:        The specified child of the XmDropDown
  }
function XmDropDownGetText(w:TWidget):TWidget;cdecl;external libXm;
{      Function Name:  XmDropDownGetList
 *      Description:    Returns the "list" child of the XmDropDown
 *      Arguments:      w - The XmCombinationBox2 Widget
 *      Returns:        The specified child of the XmDropDown
  }
function XmDropDownGetList(w:TWidget):TWidget;cdecl;external libXm;
{      Function Name:  XmDropDownGetChild
 *      Description:    Returns the child widget id of the XmDropDown
 *      Arguments:      w - The XmDropDown widget
                        child - Teh component within the DropDown
 *      Returns:        The specified child of the XmDropDown
  }
function XmDropDownGetChild(w:TWidget; child:longint):TWidget;cdecl;external libXm;

implementation

function XmIsDropDown(w: TWidget): TBoolean;
begin
  XmIsDropDown:=XtIsSubclass(w,xmDropDownWidgetClass);
end;

end.
