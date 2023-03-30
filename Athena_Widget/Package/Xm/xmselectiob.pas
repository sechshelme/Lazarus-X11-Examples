unit XmSelectioB;

interface

uses
  unixtype,
  x, xlib,
  XTIntrinsic,
  XmXm;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <Xm/Xm.h>}
{ C++ extern C conditionnal removed }
{ Class record constants  }
  var
    xmSelectionBoxWidgetClass : TWidgetClass;cvar;external libXm;

//type
//  PXmSelectionBoxWidgetClass = ^TXmSelectionBoxWidgetClass;
//  TXmSelectionBoxWidgetClass = PXmSelectionBoxClassRec;
//
//  PXmSelectionBoxWidget = ^TXmSelectionBoxWidget;
//  TXmSelectionBoxWidget = PXmSelectionBoxRec;

function XmIsSelectionBox(w : TWidget) : TBoolean;

{*******    Public Function Declarations    ******* }

function XmSelectionBoxGetChild(sb:TWidget; which:byte):TWidget;cdecl;external libXm;
{#endif /* NeedWidePrototypes */ }
function XmCreateSelectionBox(p:TWidget; name:TString; args:TArgList; n:TCardinal):TWidget;cdecl;external libXm;
function XmCreateSelectionDialog(ds_p:TWidget; name:TString; sb_args:TArgList; sb_n:TCardinal):TWidget;cdecl;external libXm;
function XmCreatePromptDialog(ds_p:TWidget; name:TString; sb_args:TArgList; sb_n:TCardinal):TWidget;cdecl;external libXm;
{
 * Variable argument list functions
  }
//function XmVaCreateSelectionBox(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateSelectionBox(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedSelectionBox(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedSelectionBox(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsSelectionBox(w: TWidget): TBoolean;
begin
  XmIsSelectionBox:=XtIsSubclass(w,xmSelectionBoxWidgetClass);
end;

end.
