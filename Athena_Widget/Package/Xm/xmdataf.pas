unit XmDataF;

interface

uses
  xlib,
  XTIntrinsic,
  XmXm,
  XmText;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

//{$include <Xm/Xm.h>}
//{$include <Xm/TextF.h>}
//{$include <Xm/Ext.h>}

type
//  PXmDataFieldWidgetClass = ^TXmDataFieldWidgetClass;
//  TXmDataFieldWidgetClass = PXmDataFieldClassRec;

  PXmDataFieldWidget = ^TXmDataFieldWidget;
  //  TXmDataFieldWidget = PXmDataFieldRec;
    TXmDataFieldWidget = Pointer;

{      Function Name: XmCreateDataField
 *      Description: Creation Routine for UIL and ADA.
 *      Arguments: parent - the parent widget.
 *                 name - the name of the widget.
 *                 args, num_args - the number and list of args.
 *      Returns: The Widget created.
  }
function XmCreateDataField(para1:TWidget; para2:TString; para3:TArgList; para4:TCardinal):TWidget;cdecl;external libXm;
{
 * Variable argument list functions
  }
//function XmVaCreateDataField(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateDataField(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedDataField(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedDataField(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;

function _XmDataFieldReplaceText(para1: TXmDataFieldWidget; para2: PXEvent; para3: TXmTextPosition; para4: TXmTextPosition; para5: PChar; para6: longint; para7: TBoolean): TBoolean; cdecl; external libXm;
procedure XmDataFieldSetString(para1: TWidget; para2: PChar); cdecl; external libXm;
function XmDataFieldGetString(para1: TWidget): PChar; cdecl; external libXm;
function XmDataFieldGetStringWcs(para1: TWidget): Pwchar_t; cdecl; external libXm;
procedure _XmDataFieldSetClipRect(para1: TXmDataFieldWidget); cdecl; external libXm;
procedure _XmDataFieldDrawInsertionPoint(para1: TXmDataFieldWidget; para2: TBoolean); cdecl; external libXm;
procedure XmDataFieldSetHighlight(para1: TWidget; para2: TXmTextPosition; para3: TXmTextPosition; para4: TXmHighlightMode); cdecl; external libXm;
procedure XmDataFieldSetAddMode(para1: TWidget; para2: TBoolean); cdecl; external libXm;
function XmDataFieldGetSelection(para1: TWidget): PChar; cdecl; external libXm;
procedure XmDataFieldSetSelection(para1: TWidget; para2: TXmTextPosition; para3: TXmTextPosition; para4: TTime); cdecl; external libXm;
procedure _XmDataFieldSetSel2(para1: TWidget; para2: TXmTextPosition; para3: TXmTextPosition; para4: TBoolean; para5: TTime); cdecl; external libXm;
function XmDataFieldGetSelectionPosition(para1: TWidget; para2: PXmTextPosition; para3: PXmTextPosition): TBoolean; cdecl; external libXm;
function XmDataFieldXYToPos(para1: TWidget; para2: TPosition; para3: TPosition): TXmTextPosition; cdecl; external libXm;
procedure XmDataFieldShowPosition(para1: TWidget; para2: TXmTextPosition); cdecl; external libXm;
function XmDataFieldCut(para1: TWidget; para2: TTime): TBoolean; cdecl; external libXm;
function XmDataFieldCopy(para1: TWidget; para2: TTime): TBoolean; cdecl; external libXm;
function XmDataFieldPaste(para1: TWidget): TBoolean; cdecl; external libXm;
procedure XmDataFieldSetEditable(para1: TWidget; para2: TBoolean); cdecl; external libXm;
procedure XmDataFieldSetInsertionPosition(para1: TWidget; para2: TXmTextPosition); cdecl; external libXm;

var
    xmDataFieldWidgetClass : TWidgetClass;cvar;external libXm;

  type
  PXmDataFieldCallbackStruct = ^TXmDataFieldCallbackStruct;
  TXmDataFieldCallbackStruct = record
      w : TWidget;
      text : TString;
      accept : TBoolean;
    end;

implementation

end.
