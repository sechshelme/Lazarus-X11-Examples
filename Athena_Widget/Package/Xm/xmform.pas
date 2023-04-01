unit XmForm;

interface

uses
  unixtype,
  x, xlib,
  XTIntrinsic,
  XmXm;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <Xm/BulletinB.h>}
{  Form Widget   }
  var
    xmFormWidgetClass : TWidgetClass;cvar;external libXm;
//type
//  PXmFormWidgetClass = ^TXmFormWidgetClass;
//  TXmFormWidgetClass = PXmFormClassRec;
//
//  PXmFormWidget = ^TXmFormWidget;
//  TXmFormWidget = PXmFormRec;

function XmIsForm(w : TWidget) : TBoolean;

{ XmIsForm  }
{*******    Public Function Declarations    ******* }

function XmCreateForm(parent:TWidget; name:Pchar; arglist:TArgList; argcount:TCardinal):TWidget;cdecl;external libXm;
function XmCreateFormDialog(parent:TWidget; name:Pchar; arglist:TArgList; argcount:TCardinal):TWidget;cdecl;external libXm;
//function XmVaCreateForm(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateForm(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedForm(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedForm(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsForm(w: TWidget): TBoolean;
begin
  XmIsForm:=XtIsSubclass(w,xmFormWidgetClass);
end;

end.
