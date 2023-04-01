unit XmPanedW;

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
    xmPanedWindowWidgetClass : TWidgetClass;cvar;external libXm;

function XmIsPanedWindow(w : TWidget) : TBoolean;

{ XmIsPanedWindow  }
//type
//  PXmPanedWindowWidgetClass = ^TXmPanedWindowWidgetClass;
//  TXmPanedWindowWidgetClass = PXmPanedWindowClassRec;
//
//  PXmPanedWindowWidget = ^TXmPanedWindowWidget;
//  TXmPanedWindowWidget = PXmPanedWindowRec;

{*******    Public Function Declarations    ******* }

function XmCreatePanedWindow(parent:TWidget; name:Pchar; args:TArgList; argCount:TCardinal):TWidget;cdecl;external libXm;
{
 * Variable argument list functions
  }
//function XmVaCreatePanedWindow(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreatePanedWindow(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedPanedWindow(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedPanedWindow(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsPanedWindow(w: TWidget): TBoolean;
begin
  XmIsPanedWindow:=XtIsSubclass(w,xmPanedWindowWidgetClass);
end;

end.
