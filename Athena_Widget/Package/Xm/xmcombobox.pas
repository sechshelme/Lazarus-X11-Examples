unit XmComboBox;

interface

uses
  XTIntrinsic,
  XmXm;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <Xm/Xm.h>}

  var
    xmComboBoxWidgetClass : TWidgetClass;cvar;external libXm;

//type
//  PXmComboBoxWidgetClass = ^TXmComboBoxWidgetClass;
//  TXmComboBoxWidgetClass = PXmComboBoxClassRec;
//
//  PXmComboBoxWidget = ^TXmComboBoxWidget;
//  TXmComboBoxWidget = PXmComboBoxRec;


function XmIsComboBox(w : TWidget) : TBoolean;

{ XmIsComboBox  }
{*******    Public Function Declarations    ******* }

function XmCreateComboBox(parent:TWidget; name:Pchar; args:TArgList; argCount:TCardinal):TWidget;cdecl;external libXm;
function XmCreateDropDownComboBox(parent:TWidget; name:Pchar; args:TArgList; argCount:TCardinal):TWidget;cdecl;external libXm;
function XmCreateDropDownList(parent:TWidget; name:Pchar; args:TArgList; argCount:TCardinal):TWidget;cdecl;external libXm;
function XmVaCreateComboBox(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateComboBox(parent:TWidget; name:Pchar):TWidget;cdecl;external libXm;
function XmVaCreateManagedComboBox(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedComboBox(parent:TWidget; name:Pchar):TWidget;cdecl;external libXm;
procedure XmComboBoxAddItem(widget:TWidget; item:TXmString; pos:longint; unique:TBoolean);cdecl;external libXm;
procedure XmComboBoxDeletePos(widget:TWidget; pos:longint);cdecl;external libXm;
procedure XmComboBoxSelectItem(widget:TWidget; item:TXmString);cdecl;external libXm;
{ JIM ADDED THIS TO APEASE SYMBOL GOD  }
function XmCombinationBoxGetValue(widget:TWidget):TXmString;cdecl;external libXm;
procedure XmComboBoxSetItem(widget:TWidget; item:TXmString);cdecl;external libXm;
procedure XmComboBoxUpdate(widget:TWidget);cdecl;external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsComboBox(w: TWidget): TBoolean;
begin
  XmIsComboBox:=XtIsSubclass(w,xmComboBoxWidgetClass);
end;

end.
