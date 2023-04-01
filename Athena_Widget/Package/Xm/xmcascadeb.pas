unit XmCascadeB;

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
    xmCascadeButtonWidgetClass : TWidgetClass;cvar;external libXm;

//type
//  PXmCascadeButtonWidget = ^TXmCascadeButtonWidget;
//  TXmCascadeButtonWidget = PXmCascadeButtonRec;
//
//  PXmCascadeButtonWidgetClass = ^TXmCascadeButtonWidgetClass;
//  TXmCascadeButtonWidgetClass = PXmCascadeButtonClassRec;

{ fast subclass define  }

function XmIsCascadeButton(w : TWidget) : TBoolean;

{ XmIsCascadeButton  }
{*******    Public Function Declarations    ******* }

function XmCreateCascadeButton(parent:TWidget; name:Pchar; al:TArgList; ac:TCardinal):TWidget;cdecl;external libXm;
procedure XmCascadeButtonHighlight(cb:TWidget; highlight:TBoolean);cdecl;external libXm;
{
 * Variable argument list functions
  }
//function XmVaCreateCascadeButton(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateCascadeButton(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedCascadeButton(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedCascadeButton(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsCascadeButton(w: TWidget): TBoolean;
begin
  XmIsCascadeButton:=XtIsSubclass(w,xmCascadeButtonWidgetClass);
end;

end.
