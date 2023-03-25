unit XmCommand;

interface

uses
  XTIntrinsic,
  XmXm;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <Xm/Xm.h>}

  var
    xmCommandWidgetClass : TWidgetClass;cvar;external libXm;

//type
//  PXmCommandWidgetClass = ^TXmCommandWidgetClass;
//  TXmCommandWidgetClass = PXmCommandClassRec;
//
//  PXmCommandWidget = ^TXmCommandWidget;
//  TXmCommandWidget = PXmCommandRec;

function XmIsCommand(w : TWidget) : TBoolean;

{*******    Public Function Declarations    ******* }

function XmCreateCommand(parent:TWidget; name:TString; al:TArgList; ac:TCardinal):TWidget;cdecl;external libXm;
//function XmVaCreateCommand(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateCommand(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedCommand(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedCommand(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
{#if NeedWidePrototypes }
function XmCommandGetChild(widget:TWidget; child:dword):TWidget;cdecl;external libXm;
{#else }
{                        unsigned char child) ; }
{#endif /* NeedWidePrototypes */ }
procedure XmCommandSetValue(widget:TWidget; value:TXmString);cdecl;external libXm;
procedure XmCommandAppendValue(widget:TWidget; value:TXmString);cdecl;external libXm;
procedure XmCommandError(widget:TWidget; error:TXmString);cdecl;external libXm;
function XmCreateCommandDialog(ds_p:TWidget; name:TString; fsb_args:TArgList; fsb_n:TCardinal):TWidget;cdecl;external libXm;
{*******    End Public Function Declarations    ******* }
{ DON'T ADD ANYTHING AFTER THIS #endif  }

implementation

function XmIsCommand(w: TWidget): TBoolean;
begin
  XmIsCommand:=XtIsSubclass(w,xmCommandWidgetClass);
end;


end.
