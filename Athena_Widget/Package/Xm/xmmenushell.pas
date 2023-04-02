unit XmMenuShell;

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
  var
    xmMenuShellWidgetClass : TWidgetClass;cvar;external libXm;

//type
//  PXmMenuShellWidgetClass = ^TXmMenuShellWidgetClass;
//  TXmMenuShellWidgetClass = PXmMenuShellClassRec;
//
//  PXmMenuShellWidget = ^TXmMenuShellWidget;
//  TXmMenuShellWidget = PXmMenuShellWidgetRec;

function XmIsMenuShell(w : TWidget) : TBoolean;

{ XmIsMenuShell  }
{*******    Public Function Declarations    ******* }

function XmCreateMenuShell(parent:TWidget; name:Pchar; al:TArgList; ac:TCardinal):TWidget;cdecl;external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsMenuShell(w: TWidget): TBoolean;
begin
  XmIsMenuShell:=XtIsSubclass(w,xmMenuShellWidgetClass);
end;


end.
