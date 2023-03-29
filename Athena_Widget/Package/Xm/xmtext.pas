unit XmText;

interface

uses
  x,
  XTIntrinsic;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

//{$include <Xm/Xm.h>}
//{$include <stdio.h>}

{ -------------- *
 *   type defines *
 * --------------  }
type
  PXmTextSource = ^TXmTextSource;
  TXmTextSource = Pointer;
//  TXmTextSource = PXmTextSourceRec;
//
//  PXmTextWidgetClass = ^TXmTextWidgetClass;
//  TXmTextWidgetClass = PXmTextClassRec;
//
//  PXmTextWidget = ^TXmTextWidget;
//  TXmTextWidget = PXmTextRec;


// --- Ursprung: Xm.h
type
  TXmHighlightMode= LongInt;

  TXmTextPosition = LongInt;
  TXmTextDirection=LongInt;
  PXmTextPosition =TXmTextPosition;

  Pwchar_t = PWideChar;
// -----------------

  var
    xmTextWidgetClass : TWidgetClass;cvar;external libXm;
{ --------------------------------------- *
 *  text widget fast subclassing fallback  *
 * ---------------------------------------  }

function XmIsText(w : TWidget) : Boolean;

{ XmIsText  }
{ ----------------------------------- *
 *   text widget public functions      *
 * -----------------------------------  }
{*******    Public Function Declarations    ******* }

procedure XmTextSetHighlight(w:TWidget; left:TXmTextPosition; right:TXmTextPosition; mode:TXmHighlightMode);cdecl;external libXm;
function XmCreateScrolledText(parent:TWidget; name:Pchar; arglist:TArgList; argcount:TCardinal):TWidget;cdecl;external libXm;
function XmCreateText(parent:TWidget; name:Pchar; arglist:TArgList; argcount:TCardinal):TWidget;cdecl;external libXm;
function XmVaCreateText(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateText(parent:TWidget; name:Pchar):TWidget;cdecl;external libXm;
function XmVaCreateManagedText(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedText(parent:TWidget; name:Pchar):TWidget;cdecl;external libXm;
function XmTextGetSubstring(widget:TWidget; start:TXmTextPosition; num_chars:longint; buf_size:longint; buffer:Pchar):longint;cdecl;external libXm;
function XmTextGetSubstringWcs(widget:TWidget; start:TXmTextPosition; num_chars:longint; buf_size:longint; buffer:Pwchar_t):longint;cdecl;external libXm;
function XmTextGetString(widget:TWidget):Pchar;cdecl;external libXm;
function XmTextGetStringWcs(widget:TWidget):Pwchar_t;cdecl;external libXm;
function XmTextGetLastPosition(widget:TWidget):TXmTextPosition;cdecl;external libXm;
procedure XmTextSetString(widget:TWidget; value:Pchar);cdecl;external libXm;
procedure XmTextSetStringWcs(widget:TWidget; wc_value:Pwchar_t);cdecl;external libXm;
procedure XmTextReplace(widget:TWidget; frompos:TXmTextPosition; topos:TXmTextPosition; value:Pchar);cdecl;external libXm;
procedure XmTextReplaceWcs(widget:TWidget; frompos:TXmTextPosition; topos:TXmTextPosition; value:Pwchar_t);cdecl;external libXm;
procedure XmTextInsert(widget:TWidget; position:TXmTextPosition; value:Pchar);cdecl;external libXm;
procedure XmTextInsertWcs(widget:TWidget; position:TXmTextPosition; wc_value:Pwchar_t);cdecl;external libXm;
{#if NeedWidePrototypes }
{                        int state); }
{#else }
procedure XmTextSetAddMode(widget:TWidget; state:TBoolean);cdecl;external libXm;
{#endif /* NeedWidePrototypes */ }
function XmTextGetAddMode(widget:TWidget):TBoolean;cdecl;external libXm;
function XmTextGetEditable(widget:TWidget):TBoolean;cdecl;external libXm;
{#if NeedWidePrototypes }
{                        int editable); }
{#else }
procedure XmTextSetEditable(widget:TWidget; editable:TBoolean);cdecl;external libXm;
{#endif /* NeedWidePrototypes */ }
function XmTextGetMaxLength(widget:TWidget):longint;cdecl;external libXm;
procedure XmTextSetMaxLength(widget:TWidget; max_length:longint);cdecl;external libXm;
function XmTextGetTopCharacter(widget:TWidget):TXmTextPosition;cdecl;external libXm;
procedure XmTextSetTopCharacter(widget:TWidget; top_character:TXmTextPosition);cdecl;external libXm;
function XmTextGetCursorPosition(widget:TWidget):TXmTextPosition;cdecl;external libXm;
function XmTextGetInsertionPosition(widget:TWidget):TXmTextPosition;cdecl;external libXm;
procedure XmTextSetInsertionPosition(widget:TWidget; position:TXmTextPosition);cdecl;external libXm;
procedure XmTextSetCursorPosition(widget:TWidget; position:TXmTextPosition);cdecl;external libXm;
function XmTextRemove(widget:TWidget):TBoolean;cdecl;external libXm;
function XmTextCopy(widget:TWidget; copy_time:TTime):TBoolean;cdecl;external libXm;
function XmTextCopyLink(widget:TWidget; copy_time:TTime):TBoolean;cdecl;external libXm;
function XmTextCut(widget:TWidget; cut_time:TTime):TBoolean;cdecl;external libXm;
function XmTextPaste(widget:TWidget):TBoolean;cdecl;external libXm;
function XmTextPasteLink(widget:TWidget):TBoolean;cdecl;external libXm;
function XmTextGetSelection(widget:TWidget):Pchar;cdecl;external libXm;
function XmTextGetSelectionWcs(widget:TWidget):Pwchar_t;cdecl;external libXm;
procedure XmTextSetSelection(widget:TWidget; first:TXmTextPosition; last:TXmTextPosition; set_time:TTime);cdecl;external libXm;
procedure XmTextClearSelection(widget:TWidget; clear_time:TTime);cdecl;external libXm;
function XmTextGetSelectionPosition(widget:TWidget; left:PXmTextPosition; right:PXmTextPosition):TBoolean;cdecl;external libXm;
{#if NeedWidePrototypes }
{                        int x, }
{                        int y); }
{#else }
function XmTextXYToPos(widget:TWidget; x:TPosition; y:TPosition):TXmTextPosition;cdecl;external libXm;
{#endif /* NeedWidePrototypes */ }
function XmTextPosToXY(widget:TWidget; position:TXmTextPosition; x:PPosition; y:PPosition):TBoolean;cdecl;external libXm;
function XmTextGetSource(widget:TWidget):TXmTextSource;cdecl;external libXm;
procedure XmTextSetSource(widget:TWidget; source:TXmTextSource; top_character:TXmTextPosition; cursor_position:TXmTextPosition);cdecl;external libXm;
procedure XmTextShowPosition(widget:TWidget; position:TXmTextPosition);cdecl;external libXm;
procedure XmTextScroll(widget:TWidget; n:longint);cdecl;external libXm;
function XmTextGetBaseline(widget:TWidget):longint;cdecl;external libXm;
function XmTextGetCenterline(widget:TWidget):longint;cdecl;external libXm;
procedure XmTextDisableRedisplay(widget:TWidget);cdecl;external libXm;
procedure XmTextEnableRedisplay(widget:TWidget);cdecl;external libXm;
function XmTextFindString(w:TWidget; start:TXmTextPosition; search_string:Pchar; direction:TXmTextDirection; position:PXmTextPosition):TBoolean;cdecl;external libXm;
function XmTextFindStringWcs(w:TWidget; start:TXmTextPosition; wc_string:Pwchar_t; direction:TXmTextDirection; position:PXmTextPosition):TBoolean;cdecl;external libXm;
{*******    End Public Function Declarations    ******* }
{ tmp: go to XmStrDefs  }
const
  XmNtotalLines = 'totalLines';  
  XmCTotalLines = 'TotalLines';  

implementation

function XmIsText(w : TWidget) : Boolean;
begin
  XmIsText:=XtIsSubclass(w,xmTextWidgetClass);
end;


end.
