unit XmScale;

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
    xmScaleWidgetClass : TWidgetClass;cvar;external libXm;

function XmIsScale(w : TWidget) : TBoolean;

//type
//  PXmScaleWidgetClass = ^TXmScaleWidgetClass;
//  TXmScaleWidgetClass = PXmScaleClassRec;
//
//  PXmScaleWidget = ^TXmScaleWidget;
//  TXmScaleWidget = PXmScaleRec;

{*******    Public Function Declarations    ******* }

procedure XmScaleSetValue(w:TWidget; value:longint);cdecl;external libXm;
procedure XmScaleGetValue(w:TWidget; value:Plongint);cdecl;external libXm;
function XmCreateScale(parent:TWidget; name:Pchar; arglist:TArgList; argcount:TCardinal):TWidget;cdecl;external libXm;

//function XmVaCreateScale(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateScale(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedScale(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedScale(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;

procedure XmScaleSetTicks(scale:TWidget; big_every:longint; num_med:TCardinal; num_small:TCardinal; size_big:TDimension; size_med:TDimension; size_small:TDimension);cdecl;external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsScale(w: TWidget): TBoolean;
begin
  XmIsScale:=XtIsSubclass(w,xmScaleWidgetClass);
end;


end.
