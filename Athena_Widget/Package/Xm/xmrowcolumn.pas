unit XmRowColumn;

interface

uses
  xlib,
  XTIntrinsic;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <Xm/Xm.h>}

var
    xmRowColumnWidgetClass : TWidgetClass;cvar;external libXm;

//type
//  PXmRowColumnWidgetClass = ^TXmRowColumnWidgetClass;
//  TXmRowColumnWidgetClass = PXmRowColumnClassRec;
//
//  PXmRowColumnWidget = ^TXmRowColumnWidget;
//  TXmRowColumnWidget = PXmRowColumnRec;

function XmIsRowColumn(w : TWidget) : TBoolean;

{*******    Public Function Declarations    ******* }

procedure XmMenuPosition(p:TWidget; event:PXButtonPressedEvent);cdecl;external libXm;
function XmCreateRowColumn(p:TWidget; name:Pchar; al:TArgList; ac:TCardinal):TWidget;cdecl;external libXm;
function XmCreateWorkArea(p:TWidget; name:Pchar; al:TArgList; ac:TCardinal):TWidget;cdecl;external libXm;
function XmCreateRadioBox(p:TWidget; name:Pchar; al:TArgList; ac:TCardinal):TWidget;cdecl;external libXm;
function XmCreateOptionMenu(p:TWidget; name:Pchar; al:TArgList; ac:TCardinal):TWidget;cdecl;external libXm;
function XmOptionLabelGadget(m:TWidget):TWidget;cdecl;external libXm;
function XmOptionButtonGadget(m:TWidget):TWidget;cdecl;external libXm;
function XmCreateMenuBar(p:TWidget; name:Pchar; al:TArgList; ac:TCardinal):TWidget;cdecl;external libXm;
function XmCreatePopupMenu(p:TWidget; name:Pchar; al:TArgList; ac:TCardinal):TWidget;cdecl;external libXm;
function XmCreatePulldownMenu(p:TWidget; name:Pchar; al:TArgList; ac:TCardinal):TWidget;cdecl;external libXm;
function XmGetPostedFromWidget(menu:TWidget):TWidget;cdecl;external libXm;
function XmGetTearOffControl(menu:TWidget):TWidget;cdecl;external libXm;
procedure XmAddToPostFromList(m:TWidget; widget:TWidget);cdecl;external libXm;
procedure XmRemoveFromPostFromList(m:TWidget; widget:TWidget);cdecl;external libXm;
{
 * Variable argument list functions
  }
//function XmVaCreateRowColumn(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateRowColumn(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedRowColumn(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedRowColumn(parent:TWidget; name:Pchar):TWidget; varargs cdecl;external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsRowColumn(w: TWidget): TBoolean;
begin
  XmIsRowColumn:=XtIsSubclass(w,xmRowColumnWidgetClass);
end;


end.
