unit XmButtonBox;

interface

uses
  XTIntrinsic;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

{
 * Resources:
 *
 * ---------------------------------------------------------------------------
 * Name            Class             Type              InitialValue
 * ---------------------------------------------------------------------------
 * 
 * equalSize       EqualSize         Boolean           False
 * fillOption      FillOption        XmFillOption     XmFillNone
 * marginHeight    Margin            Dimension         0
 * marginWidth     Margin            Dimension         0
 * orientation     Orientation       unsigned char     XmHORIZONTAL
 * 
 * ---------------------------------------------------------------------------
 * 
  }
//{$include <X11/apienvset.h>}
//{$include <Xm/Ext.h>}

{***********************************************************
 *       INCLUDE FILES
 *********************************************************** }
{***********************************************************
 *       TYPEDEFS AND DEFINES
 *********************************************************** }

 //type
 // PXmButtonBoxWidgetClass = ^TXmButtonBoxWidgetClass;
 // TXmButtonBoxWidgetClass = PXmButtonBoxClassRec;
 //
 // PXmButtonBoxWidget = ^TXmButtonBoxWidget;
 // TXmButtonBoxWidget = PXmButtonBoxRec;

{***********************************************************
 *       MACROS
 *********************************************************** }
{***********************************************************
 *       GLOBAL DECLARATIONS
 *********************************************************** }
{***********************************************************
 *       EXTERNAL DECLARATIONS
 *********************************************************** }
{	Function Name: XmCreateButtonBox
 *	Description: Creation Routine for UIL and ADA.
 *	Arguments: parent - the parent widget.
 *                 name - the name of the widget.
 *                 args, num_args - the number and list of args.
 *	Returns: The Widget created.
  }

function XmCreateButtonBox(para1:TWidget; para2:TString; para3:TArgList; para4:TCardinal):TWidget;cdecl;external libXm;
{
 * Variable argument list functions
  }
//function XmVaCreateButtonBox(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateButtonBox(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedButtonBox(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedButtonBox(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
  var
    xmButtonBoxWidgetClass : TWidgetClass;cvar;external libXm;
// {$include <X11/apienvrst.h>}

implementation

end.
