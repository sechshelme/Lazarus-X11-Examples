unit XmGadget;

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

function XmIsGadget(w : TWidget) : TBoolean;

{ XmIsGadget  }
  var
    xmGadgetClass : TWidgetClass;cvar;external libXm;

//type
//  PXmGadgetClass = ^TXmGadgetClass;
//  TXmGadgetClass = PXmGadgetClassRec;
//
//  PXmGadget = ^TXmGadget;
//  TXmGadget = PXmGadgetRec;

{*******    Public Function Declarations    ******* }
{*******    End Public Function Declarations    ******* }

implementation

function XmIsGadget(w: TWidget): TBoolean;
begin
  XmIsGadget:=XtIsSubclass(w,xmGadgetClass);
end;

end.
