unit XmArrowBG;

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

function XmIsArrowButtonGadget(w : TWidget) : TBoolean;

{ XmIsArrowButtonGadget  }
  var
    xmArrowButtonGadgetClass : TWidgetClass;cvar;external libXm;

//type
//  PXmArrowButtonGadgetClass = ^TXmArrowButtonGadgetClass;
//  TXmArrowButtonGadgetClass = PXmArrowButtonGadgetClassRec;
//
//  PXmArrowButtonGadget = ^TXmArrowButtonGadget;
//  TXmArrowButtonGadget = PXmArrowButtonGadgetRec;

{*******    Public Function Declarations    ******* }

function XmCreateArrowButtonGadget(parent:TWidget; name:Pchar; arglist:TArgList; argcount:TCardinal):TWidget;cdecl;external libXm;

//function XmVaCreateManagedArrowButtonGadget(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedArrowButtonGadget(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateArrowButtonGadget(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateArrowButtonGadget(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsArrowButtonGadget(w: TWidget): TBoolean;
begin
  XmIsArrowButtonGadget:=XtIsSubclass(w,xmArrowButtonGadgetClass);
end;


end.
