unit XmDrawingA;

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
    xmDrawingAreaWidgetClass : TWidgetClass;cvar;external libXm;

//type
//  PXmDrawingAreaWidgetClass = ^TXmDrawingAreaWidgetClass;
//  TXmDrawingAreaWidgetClass = PXmDrawingAreaClassRec;
//
//  PXmDrawingAreaWidget = ^TXmDrawingAreaWidget;
//  TXmDrawingAreaWidget = PXmDrawingAreaRec;

function XmIsDrawingArea(w : TWidget) : TBoolean;

{*******    Public Function Declarations    ******* }

function XmCreateDrawingArea(p:TWidget; name:TString; args:TArgList; n:TCardinal):TWidget;cdecl;external libXm;

//function XmVaCreateDrawingArea(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateDrawingArea(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedDrawingArea(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedDrawingArea(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsDrawingArea(w: TWidget): TBoolean;
begin
  XmIsDrawingArea:=XtIsSubclass(w,xmDrawingAreaWidgetClass);
end;

end.
