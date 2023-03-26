unit XmLabelG;

interface

uses
  XTIntrinsic;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <Xm/Xm.h>}

  var
    xmLabelGadgetClass : TWidgetClass;cvar;external libXm;

//type
//  PXmLabelGadgetClass = ^TXmLabelGadgetClass;
//  TXmLabelGadgetClass = PXmLabelGadgetClassRec;
//
//  PXmLabelGadget = ^TXmLabelGadget;
//  TXmLabelGadget = PXmLabelGadgetRec;
//
//  PXmLabelGCacheObject = ^TXmLabelGCacheObject;
//  TXmLabelGCacheObject = PXmLabelGCacheObjRec;
{fast subclass define  }

function XmIsLabelGadget(w : TWidget) : TBoolean;

{ XmIsLabelGadget  }
{*******    Public Function Declarations    ******* }

function XmCreateLabelGadget(parent:TWidget; name:Pchar; arglist:PArg; argCount:TCardinal):TWidget;cdecl;external libXm;

//function XmVaCreateLabelGadget(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateLabelGadget(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedLabelGadget(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedLabelGadget(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsLabelGadget(w: TWidget): TBoolean;
begin
  XmIsLabelGadget:=XtIsSubclass(w,xmLabelGadgetClass);
end;

end.
