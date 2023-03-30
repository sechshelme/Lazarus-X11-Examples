unit FileSB;

interface

uses
  XTIntrinsic,
  XmXm;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <Xm/Xm.h>}
type

  TXmQualifyProc = procedure (para1:TWidget; para2:TXtPointer; para3:TXtPointer);cdecl;
  TXmSearchProc = procedure (para1:TWidget; para2:TXtPointer);cdecl;
{ Class record constants  }
  var
    xmFileSelectionBoxWidgetClass : TWidgetClass;cvar;external libXm;

//type
//  PXmFileSelectionBoxWidgetClass = ^TXmFileSelectionBoxWidgetClass;
//  TXmFileSelectionBoxWidgetClass = PXmFileSelectionBoxClassRec;
//
//  PXmFileSelectionBoxWidget = ^TXmFileSelectionBoxWidget;
//  TXmFileSelectionBoxWidget = PXmFileSelectionBoxRec;

function XmIsFileSelectionBox(w : TWidget) : TBoolean;


function XmFileSelectionBoxGetChild(fs:TWidget; which:byte):TWidget;cdecl;external libXm;
{#endif /* NeedWidePrototypes */ }
procedure XmFileSelectionDoSearch(fs:TWidget; dirmask:TXmString);cdecl;external libXm;
function XmCreateFileSelectionBox(p:TWidget; name:TString; args:TArgList; n:TCardinal):TWidget;cdecl;external libXm;
function XmCreateFileSelectionDialog(ds_p:TWidget; name:TString; fsb_args:TArgList; fsb_n:TCardinal):TWidget;cdecl;external libXm;
//function XmVaCreateFileSelectionBox(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateFileSelectionBox(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedFileSelectionBox(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedFileSelectionBox(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsFileSelectionBox(w: TWidget): TBoolean;
begin
  XmIsFileSelectionBox:=XtIsSubclass(w,xmFileSelectionBoxWidgetClass);
end;


end.
