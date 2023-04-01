unit XmTabStack;

interface

uses
  unixtype,
  x, xlib,
  XTIntrinsic,
  XmXm;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

//{$include <Xm/Ext.h>}
//{$include <Xm/TabBox.h>}
//{$include <Xm/TabList.h>}
//{$include <Xm/DrawUtils.h>}

//type
//  PXmTabStackWidget = ^TXmTabStackWidget;
//  TXmTabStackWidget = PXmTabStackRec;
//
//  PXmTabStackWidgetClass = ^TXmTabStackWidgetClass;
//  TXmTabStackWidgetClass = PXmTabStackClassRec;
  var
    xmTabStackWidgetClass : TWidgetClass;cvar;external libXm;

function XmIsTabStack(w : TWidget) : TBoolean;

{ XmIsTabStack  }

function XmCreateTabStack(para1:TWidget; para2:TString; para3:TArgList; para4:TCardinal):TWidget;cdecl;external libXm;
function XmTabStackGetSelectedTab(para1:TWidget):TWidget;cdecl;external libXm;
procedure XmTabStackSelectTab(para1:TWidget; para2:TBoolean);cdecl;external libXm;
function XmTabStackIndexToWidget(para1:TWidget; para2:longint):TWidget;cdecl;external libXm;
function XmTabStackXYToWidget(para1:TWidget; para2:longint; para3:longint):TWidget;cdecl;external libXm;
{
 * Variable argument list functions
  }
//function XmVaCreateTabStack(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateTabStack(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedTabStack(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedTabStack(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;

implementation

function XmIsTabStack(w: TWidget): TBoolean;
begin
  XmIsTabStack:=XtIsSubclass(w,xmTabStackWidgetClass);
end;


end.
