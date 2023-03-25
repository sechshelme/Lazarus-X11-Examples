unit XmContainer;

interface

uses
  XTIntrinsic;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

{
 * HISTORY
  }
//{$include <Xm/Xm.h>}
//{$include <Xm/Manager.h>}

{ C++ extern C conditionnal removed }
{ Class record constants  }
  var
    xmContainerWidgetClass : TWidgetClass;cvar; external libXm;

//type
//  PXmContainerWidgetClass = ^TXmContainerWidgetClass;
//  TXmContainerWidgetClass = PXmContainerClassRec;
//
//  PXmContainerWidget = ^TXmContainerWidget;
//  TXmContainerWidget = PXmContainerRec;
{$ifndef XmIsContainer}

function XmIsContainer(w : TWidget) : TBoolean;

{$endif}
{ XmIsContainer  }
{*******    Public Function Declarations    ******* }

function XmCreateContainer(parent:TWidget; name:TString; arglist:TArgList; argcount:TCardinal):TWidget;cdecl;external libXm;
//function XmVaCreateContainer(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateContainer(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedContainer(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedContainer(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
function XmContainerGetItemChildren(wid:TWidget; item:TWidget; item_children:PWidgetList):longint;cdecl;external libXm;
procedure XmContainerRelayout(wid:TWidget);cdecl;external libXm;
procedure XmContainerReorder(wid:TWidget; cwid_list:TWidgetList; cwid_count:longint);cdecl;external libXm;
function XmContainerCut(wid:TWidget; timestamp:TTime):TBoolean;cdecl;external libXm;
function XmContainerCopy(wid:TWidget; timestamp:TTime):TBoolean;cdecl;external libXm;
function XmContainerPaste(wid:TWidget):TBoolean;cdecl;external libXm;
function XmContainerCopyLink(wid:TWidget; timestamp:TTime):TBoolean;cdecl;external libXm;
function XmContainerPasteLink(wid:TWidget):TBoolean;cdecl;external libXm;
{*******    End Public Function Declarations    ******* }

{ DON'T ADD ANYTHING AFTER THIS #endif  }

implementation

function XmIsContainer(w: TWidget): TBoolean;
begin
  XmIsContainer:=XtIsSubclass(w,xmContainerWidgetClass);
end;


end.
