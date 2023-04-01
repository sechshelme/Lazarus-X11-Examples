unit XmSeparatoG;

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

function XmIsSeparatorGadget(w : TWidget) : TBoolean;

{ XmIsSeparator  }
  var
    xmSeparatorGadgetClass : TWidgetClass;cvar;external libXm;

//type
//  PXmSeparatorGadgetClass = ^TXmSeparatorGadgetClass;
//  TXmSeparatorGadgetClass = PXmSeparatorGadgetClassRec;
//
//  PXmSeparatorGadget = ^TXmSeparatorGadget;
//  TXmSeparatorGadget = PXmSeparatorGadgetRec;
//
//  PXmSeparatorGCacheObject = ^TXmSeparatorGCacheObject;
//  TXmSeparatorGCacheObject = PXmSeparatorGCacheObjRec;
{*******    Public Function Declarations    ******* }

function XmCreateSeparatorGadget(parent:TWidget; name:Pchar; arglist:TArgList; argcount:TCardinal):TWidget;cdecl;external libXm;

//function XmVaCreateSeparatorGadget(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateSeparatorGadget(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedSeparatorGadget(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedSeparatorGadget(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsSeparatorGadget(w: TWidget): TBoolean;
begin
  XmIsSeparatorGadget:=XtIsSubclass(w,xmSeparatorGadgetClass);
end;


end.
