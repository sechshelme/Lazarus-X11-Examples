unit XmFrame;

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

function XmIsFrame(w : TWidget) : TBoolean;

  var
    xmFrameWidgetClass : TWidgetClass;cvar;external libXm;

//type
//  PXmFrameWidgetClass = ^TXmFrameWidgetClass;
//  TXmFrameWidgetClass = PXmFrameClassRec;
//
//  PXmFrameWidget = ^TXmFrameWidget;
//  TXmFrameWidget = PXmFrameRec;

{*******    Public Function Declarations    ******* }

function XmCreateFrame(parent:TWidget; name:Pchar; arglist:TArgList; argcount:TCardinal):TWidget;cdecl;external libXm;

//function XmVaCreateFrame(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateFrame(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedFrame(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedFrame(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsFrame(w: TWidget): TBoolean;
begin
  XmIsFrame:=XtIsSubclass(w,xmFrameWidgetClass);
end;

end.
