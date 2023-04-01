unit XmToggleB;

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
    xmToggleButtonWidgetClass : TWidgetClass;cvar;external libXm;

//type
//  PXmToggleButtonWidgetClass = ^TXmToggleButtonWidgetClass;
//  TXmToggleButtonWidgetClass = PXmToggleButtonClassRec;
//
//  PXmToggleButtonWidget = ^TXmToggleButtonWidget;
//  TXmToggleButtonWidget = PXmToggleButtonRec;

function XmIsToggleButton(w : TWidget) : TBoolean;

{ XmIsToggleButton  }
{*******    Public Function Declarations    ******* }

function XmToggleButtonGetState(w:TWidget):TBoolean;cdecl;external libXm;
procedure XmToggleButtonSetState(w:TWidget; newstate:TBoolean; notify:TBoolean);cdecl;external libXm;
function XmToggleButtonSetValue(w:TWidget; newstate:TXmToggleButtonState; notify:TBoolean):TBoolean;cdecl;external libXm;
{#endif /* NeedWidePrototypes */ }
function XmCreateToggleButton(parent:TWidget; name:Pchar; arglist:PArg; argCount:TCardinal):TWidget;cdecl;external libXm;
//function XmVaCreateToggleButton(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateToggleButton(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedToggleButton(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedToggleButton(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsToggleButton(w: TWidget): TBoolean;
begin
  XmIsToggleButton:=XtIsSubclass(w,xmToggleButtonWidgetClass);
end;

end.
