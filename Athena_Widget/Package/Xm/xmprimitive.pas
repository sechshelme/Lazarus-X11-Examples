unit XmPrimitive;

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

function XmIsPrimitive(w : TWidget) : TBoolean;

  var
    xmPrimitiveWidgetClass : TWidgetClass;cvar;external libXm;

//type
//  PXmPrimitiveWidgetClass = ^TXmPrimitiveWidgetClass;
//  TXmPrimitiveWidgetClass = PXmPrimitiveClassRec;
//
//  PXmPrimitiveWidget = ^TXmPrimitiveWidget;
//  TXmPrimitiveWidget = PXmPrimitiveRec;
{*******    Public Function Declarations    ******* }
{*******    End Public Function Declarations    ******* }

implementation

function XmIsPrimitive(w: TWidget): TBoolean;
begin
  XmIsPrimitive:=XtIsSubclass(w,xmPrimitiveWidgetClass);
end;

end.
