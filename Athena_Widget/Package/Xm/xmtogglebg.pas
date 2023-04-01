unit XmToggleBG;

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
    xmToggleButtonGadgetClass : TWidgetClass;cvar;external libXm;

//type
//  PXmToggleButtonGadgetClass = ^TXmToggleButtonGadgetClass;
//  TXmToggleButtonGadgetClass = PXmToggleButtonGadgetClassRec;
//
//  PXmToggleButtonGadget = ^TXmToggleButtonGadget;
//  TXmToggleButtonGadget = PXmToggleButtonGadgetRec;
//
//  PXmToggleButtonGCacheObject = ^TXmToggleButtonGCacheObject;
//  TXmToggleButtonGCacheObject = PXmToggleButtonGCacheObjRec;

function XmIsToggleButtonGadget(w : TWidget) : TBoolean;

{*******    Public Function Declarations    ******* }

function XmToggleButtonGadgetGetState(w:TWidget):TBoolean;cdecl;external libXm;
procedure XmToggleButtonGadgetSetState(w:TWidget; newstate:TBoolean; notify:TBoolean);cdecl;external libXm;
function XmToggleButtonGadgetSetValue(w:TWidget; newstate:TXmToggleButtonState; notify:TBoolean):TBoolean;cdecl;external libXm;
function XmCreateToggleButtonGadget(parent:TWidget; name:Pchar; arglist:PArg; argCount:TCardinal):TWidget;cdecl;external libXm;
//function XmVaCreateToggleButtonGadget(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateToggleButtonGadget(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedToggleButtonGadget(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedToggleButtonGadget(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsToggleButtonGadget(w: TWidget): TBoolean;
begin
  XmIsToggleButtonGadget:=XtIsSubclass(w,xmToggleButtonGadgetClass);
end;

end.
