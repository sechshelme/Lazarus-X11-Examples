unit XmPushB;

interface

uses
  XTIntrinsic;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <Xm/Xm.h>}
{ C++ extern C conditionnal removed }

function XmIsPushButton(w : TWidget) : TBoolean;

var
  xmPushButtonWidgetClass : TWidgetClass;cvar;external libXm;

//type
//  PXmPushButtonWidgetClass = ^TXmPushButtonWidgetClass;
//  TXmPushButtonWidgetClass = PXmPushButtonClassRec;
//
//  PXmPushButtonWidget = ^TXmPushButtonWidget;
//  TXmPushButtonWidget = PXmPushButtonRec;

{*******    Public Function Declarations    ******* }

function XmCreatePushButton(parent:TWidget; name:Pchar; arglist:TArgList; argcount:TCardinal):TWidget;cdecl;external libXm;
{
 * Variable argument list functions
  }
//  function XmVaCreatePushButton(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
  function XmVaCreatePushButton(parent:TWidget; name:Pchar):TWidget;cdecl;varargs external libXm;
//  function XmVaCreateManagedPushButton(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
  function XmVaCreateManagedPushButton(parent:TWidget; name:Pchar):TWidget;cdecl;varargs external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsPushButton(w: TWidget): TBoolean;
begin
  XmIsPushButton := XtIsSubclass(w,xmPushButtonWidgetClass);
end;

end.
