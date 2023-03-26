unit XmDialogS;

interface

uses
  XTIntrinsic;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <Xm/Xm.h>}

function XmIsDialogShell(w : TWidget) : TBoolean;

{ XmIsDialogShell  }
  var
    xmDialogShellWidgetClass : TWidgetClass;cvar;external libXm;

//type
//  PXmDialogShellWidgetClass = ^TXmDialogShellWidgetClass;
//  TXmDialogShellWidgetClass = PXmDialogShellClassRec;
//
//  PXmDialogShellWidget = ^TXmDialogShellWidget;
//  TXmDialogShellWidget = PXmDialogShellRec;

{*******    Public Function Declarations    ******* }

function XmCreateDialogShell(p:TWidget; name:Pchar; al:TArgList; ac:TCardinal):TWidget;cdecl;external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsDialogShell(w: TWidget): TBoolean;
begin
  XmIsDialogShell:=XtIsSubclass(w,xmDialogShellWidgetClass);
end;

end.
