unit XmTextF;

interface

uses
  XTIntrinsic,
  XmText,
  XmXm;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <Xm/Xm.h>}

{*****************
 * type defines   *
 ***************** }
//type
//  PXmTextFieldWidgetClass = ^TXmTextFieldWidgetClass;
//  TXmTextFieldWidgetClass = PXmTextFieldClassRec;
//
//  PXmTextFieldWidget = ^TXmTextFieldWidget;
//  TXmTextFieldWidget = PXmTextFieldRec;
{*****************
 * extern class   *
 ***************** }
  var
    xmTextFieldWidgetClass : TWidgetClass;cvar;external libXm;
{***********************
 * fast subclass define *
 *********************** }

function XmIsTextField(w : TWidget) : TBoolean;

{ XmIsTextField  }
{*******************
 * public functions *
 ******************* }
{*******    Public Function Declarations    ******* }

function XmTextFieldGetString(w:TWidget):Pchar;cdecl;external libXm;
function XmTextFieldGetSubstring(widget:TWidget; start:TXmTextPosition; num_chars:longint; buf_size:longint; buffer:Pchar):longint;cdecl;external libXm;
function XmTextFieldGetStringWcs(w:TWidget):Pwchar_t;cdecl;external libXm;
function XmTextFieldGetSubstringWcs(widget:TWidget; start:TXmTextPosition; num_chars:longint; buf_size:longint; buffer:Pwchar_t):longint;cdecl;external libXm;
function XmTextFieldGetLastPosition(w:TWidget):TXmTextPosition;cdecl;external libXm;
procedure XmTextFieldSetString(w:TWidget; value:Pchar);cdecl;external libXm;
procedure XmTextFieldSetStringWcs(w:TWidget; wc_value:Pwchar_t);cdecl;external libXm;
procedure XmTextFieldReplace(w:TWidget; from_pos:TXmTextPosition; to_pos:TXmTextPosition; value:Pchar);cdecl;external libXm;
procedure XmTextFieldReplaceWcs(w:TWidget; from_pos:TXmTextPosition; to_pos:TXmTextPosition; wc_value:Pwchar_t);cdecl;external libXm;
procedure XmTextFieldInsert(w:TWidget; position:TXmTextPosition; value:Pchar);cdecl;external libXm;
procedure XmTextFieldInsertWcs(w:TWidget; position:TXmTextPosition; wcstring:Pwchar_t);cdecl;external libXm;
procedure XmTextFieldSetAddMode(w:TWidget; state:TBoolean);cdecl;external libXm;
function XmTextFieldGetAddMode(w:TWidget):TBoolean;cdecl;external libXm;
function XmTextFieldGetEditable(w:TWidget):TBoolean;cdecl;external libXm;
procedure XmTextFieldSetEditable(w:TWidget; editable:TBoolean);cdecl;external libXm;
function XmTextFieldGetMaxLength(w:TWidget):longint;cdecl;external libXm;
procedure XmTextFieldSetMaxLength(w:TWidget; max_length:longint);cdecl;external libXm;
function XmTextFieldGetCursorPosition(w:TWidget):TXmTextPosition;cdecl;external libXm;
function XmTextFieldGetInsertionPosition(w:TWidget):TXmTextPosition;cdecl;external libXm;
procedure XmTextFieldSetCursorPosition(w:TWidget; position:TXmTextPosition);cdecl;external libXm;
procedure XmTextFieldSetInsertionPosition(w:TWidget; position:TXmTextPosition);cdecl;external libXm;
function XmTextFieldGetSelectionPosition(w:TWidget; left:PXmTextPosition; right:PXmTextPosition):TBoolean;cdecl;external libXm;
function XmTextFieldGetSelection(w:TWidget):Pchar;cdecl;external libXm;
function XmTextFieldGetSelectionWcs(w:TWidget):Pwchar_t;cdecl;external libXm;
function XmTextFieldRemove(w:TWidget):TBoolean;cdecl;external libXm;
function XmTextFieldCopy(w:TWidget; clip_time:TTime):TBoolean;cdecl;external libXm;
function XmTextFieldCopyLink(w:TWidget; clip_time:TTime):TBoolean;cdecl;external libXm;
function XmTextFieldCut(w:TWidget; clip_time:TTime):TBoolean;cdecl;external libXm;
function XmTextFieldPaste(w:TWidget):TBoolean;cdecl;external libXm;
function XmTextFieldPasteLink(w:TWidget):TBoolean;cdecl;external libXm;
procedure XmTextFieldClearSelection(w:TWidget; sel_time:TTime);cdecl;external libXm;
procedure XmTextFieldSetSelection(w:TWidget; first:TXmTextPosition; last:TXmTextPosition; sel_time:TTime);cdecl;external libXm;
function XmTextFieldXYToPos(w:TWidget; x:TPosition; y:TPosition):TXmTextPosition;cdecl;external libXm;
function XmTextFieldPosToXY(w:TWidget; position:TXmTextPosition; x:PPosition; y:PPosition):TBoolean;cdecl;external libXm;
procedure XmTextFieldShowPosition(w:TWidget; position:TXmTextPosition);cdecl;external libXm;
procedure XmTextFieldSetHighlight(w:TWidget; left:TXmTextPosition; right:TXmTextPosition; mode:TXmHighlightMode);cdecl;external libXm;
function XmTextFieldGetBaseline(w:TWidget):longint;cdecl;external libXm;
function XmCreateTextField(parent:TWidget; name:Pchar; arglist:TArgList; argcount:TCardinal):TWidget;cdecl;external libXm;
//function XmVaCreateTextField(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateTextField(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedTextField(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedTextField(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsTextField(w: TWidget): TBoolean;
begin
  XmIsTextField:=XtIsSubclass(w,xmTextFieldWidgetClass);
end;

end.
