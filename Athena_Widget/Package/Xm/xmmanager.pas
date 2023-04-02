unit XmManager;

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

function XmIsManager(w : TWidget) : TBoolean;

{ XmIsManager  }
  var
    xmManagerWidgetClass : TWidgetClass;cvar;external libXm;

//type
//  PXmManagerWidgetClass = ^TXmManagerWidgetClass;
//  TXmManagerWidgetClass = PXmManagerClassRec;
//
//  PXmManagerWidget = ^TXmManagerWidget;
//  TXmManagerWidget = PXmManagerRec;

{*******    Public Function Declarations    ******* }
{*******    End Public Function Declarations    ******* }

implementation

function XmIsManager(w: TWidget): TBoolean;
begin
  XmIsManager:=XtIsSubclass(w,xmManagerWidgetClass);
end;

end.
