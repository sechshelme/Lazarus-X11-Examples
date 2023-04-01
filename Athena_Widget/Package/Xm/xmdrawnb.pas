unit XmDrawnB;

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

function XmIsDrawnButton(w : TWidget) : TBoolean;

{ XmIsDrawnButton  }
{ DrawnButon Widget  }
  var
    xmDrawnButtonWidgetClass : TWidgetClass;cvar;external libXm;

//type
//  PXmDrawnButtonWidgetClass = ^TXmDrawnButtonWidgetClass;
//  TXmDrawnButtonWidgetClass = PXmDrawnButtonClassRec;
//
//  PXmDrawnButtonWidget = ^TXmDrawnButtonWidget;
//  TXmDrawnButtonWidget = PXmDrawnButtonRec;

{*******    Public Function Declarations    ******* }

function XmCreateDrawnButton(parent:TWidget; name:Pchar; arglist:TArgList; argcount:TCardinal):TWidget;cdecl;external libXm;

//function XmVaCreateDrawnButton(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateDrawnButton(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedDrawnButton(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedDrawnButton(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsDrawnButton(w: TWidget): TBoolean;
begin
  XmIsDrawnButton:=XtIsSubclass(w,xmDrawnButtonWidgetClass);
end;

end.
