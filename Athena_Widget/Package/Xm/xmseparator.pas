unit XmSeparator;

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

function XmIsSeparator(w : TWidget) : TBoolean;

{ XmIsSeparator  }
  var
    xmSeparatorWidgetClass : TWidgetClass;cvar;external libXm;

//type
//  PXmSeparatorWidgetClass = ^TXmSeparatorWidgetClass;
//  TXmSeparatorWidgetClass = PXmSeparatorClassRec;
//
//  PXmSeparatorWidget = ^TXmSeparatorWidget;
//  TXmSeparatorWidget = PXmSeparatorRec;

{*******    Public Function Declarations    ******* }

function XmCreateSeparator(parent:TWidget; name:Pchar; arglist:TArgList; argcount:TCardinal):TWidget;cdecl;external libXm;

//function XmVaCreateSeparator(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateSeparator(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedSeparator(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedSeparator(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsSeparator(w: TWidget): TBoolean;
begin
  XmIsSeparator:=XtIsSubclass(w,xmSeparatorWidgetClass);
end;


end.
