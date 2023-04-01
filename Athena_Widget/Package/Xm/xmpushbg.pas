unit XmPushBG;

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

function XmIsPushButtonGadget(w : TWidget) : TBoolean;

{ XmIsPushButtonGadget  }
  var
    xmPushButtonGadgetClass : TWidgetClass;cvar;external libXm;

//type
//  PXmPushButtonGadgetClass = ^TXmPushButtonGadgetClass;
//  TXmPushButtonGadgetClass = PXmPushButtonGadgetClassRec;
//
//  PXmPushButtonGadget = ^TXmPushButtonGadget;
//  TXmPushButtonGadget = PXmPushButtonGadgetRec;
//
//  PXmPushButtonGCacheObject = ^TXmPushButtonGCacheObject;
//  TXmPushButtonGCacheObject = PXmPushButtonGCacheObjRec;

{*******    Public Function Declarations    ******* }

function XmCreatePushButtonGadget(parent:TWidget; name:Pchar; arglist:TArgList; argcount:TCardinal):TWidget;cdecl;external libXm;

//function XmVaCreatePushButtonGadget(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreatePushButtonGadget(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedPushButtonGadget(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedPushButtonGadget(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsPushButtonGadget(w: TWidget): TBoolean;
begin
  XmIsPushButtonGadget:=XtIsSubclass(w,xmPushButtonGadgetClass);
end;

end.
