unit XmSSpinB;

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
    xmSimpleSpinBoxWidgetClass : TWidgetClass;cvar;external libXm;

//type
//  PXmSimpleSpinBoxWidgetClass = ^TXmSimpleSpinBoxWidgetClass;
//  TXmSimpleSpinBoxWidgetClass = PXmSimpleSpinBoxClassRec;
//
//  PXmSimpleSpinBoxWidget = ^TXmSimpleSpinBoxWidget;
//  TXmSimpleSpinBoxWidget = PXmSimpleSpinBoxRec;
{ Spin externs for application accessible functions  }

function XmCreateSimpleSpinBox(parent:TWidget; name:Pchar; arglist:TArgList; argcount:TCardinal):TWidget;cdecl;external libXm;
procedure XmSimpleSpinBoxAddItem(widget:TWidget; item:TXmString; pos:longint);cdecl;external libXm;
procedure XmSimpleSpinBoxDeletePos(widget:TWidget; pos:longint);cdecl;external libXm;
procedure XmSimpleSpinBoxSetItem(widget:TWidget; item:TXmString);cdecl;external libXm;
{
 * Variable argument list functions
  }
//function XmVaCreateSimpleSpinBox(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateSimpleSpinBox(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedSimpleSpinBox(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedSimpleSpinBox(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;

implementation

end.
