unit XmGrabShell;

interface

uses
  unixtype,
  x, xlib,
  XTIntrinsic,
  XmXm;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

//{$include <Xm/Xm.h>}

var
    xmGrabShellWidgetClass : TWidgetClass;cvar;external libXm;

//type
//  PXmGrabShellWidgetClass = ^TXmGrabShellWidgetClass;
//  TXmGrabShellWidgetClass = PXmGrabShellClassRec;
//
//  PXmGrabShellWidget = ^TXmGrabShellWidget;
//  TXmGrabShellWidget = PXmGrabShellWidgetRec;

function XmIsGrabShell(w : TWidget) : TBoolean;

{ XmIsGrabShell  }
{*******    Public Function Declarations    ******* }

function XmCreateGrabShell(parent:TWidget; name:Pchar; al:TArgList; ac:TCardinal):TWidget;cdecl;external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsGrabShell(w: TWidget): TBoolean;
begin
  XmIsGrabShell:=XtIsSubclass(w,xmGrabShellWidgetClass);
end;

end.
