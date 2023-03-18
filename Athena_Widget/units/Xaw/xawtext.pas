unit XawText;

interface

uses
  XTIntrinsic,
  xresource,
  XTStringdefs;

const
  libXaw = 'libXaw.so';

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

//{$include <X11/Xaw/Simple.h>}
{

 Class:		textWidgetClass
 Class Name:	Text
 Superclass:	Simple

 Resources added by the Text widget:

 Name		     Class	     RepType		Default Value
 ----		     -----	     -------		-------------
 autoFill	    AutoFill	     Boolean		False
 bottomMargin	    Margin	     Position		2
 displayPosition    TextPosition     XawTextPosition	0
 insertPosition	    TextPosition     XawTextPosition	0
 justify	    JustifyMode	     JustifyMode	left
 leftColumn	    Column	     Column		0
 rightColumn	    Column	     Column		0
 leftMargin	    Margin	     Position		2
 rightMargin	    Margin	     Position		4
 positionCallback   Callback	     Callback		NULL
 scrollHorizontal   Scroll	     Boolean		False
 scrollVertical     Scroll	     Boolean		False
 selectTypes        SelectTypes      Pointer            see documentation
 textSink	    TextSink	     Widget		NULL
 textSource	    TextSource	     Widget		NULL
 topMargin	    Margin	     Position		2
 unrealizeCallback  Callback	     Callback		NULL
 wrap		    Wrap	     XawTextWrapMode	XawTextWrapNever

 }
type
  PXawTextPosition = ^TXawTextPosition;
  TXawTextPosition = longint;
type
  PXawTextScrollMode = ^TXawTextScrollMode;
  TXawTextScrollMode =  Longint;
  Const
    XawtextScrollNever = 0;
    XawtextScrollWhenNeeded = 1;
    XawtextScrollAlways = 2;

type
  PXawTextResizeMode = ^TXawTextResizeMode;
  TXawTextResizeMode =  Longint;
  Const
    XawtextResizeNever = 0;
    XawtextResizeWidth = 1;
    XawtextResizeHeight = 2;
    XawtextResizeBoth = 3;
type
  PXawTextWrapMode = ^TXawTextWrapMode;
  TXawTextWrapMode =  Longint;
  Const
    XawtextWrapNever = 0;
    XawtextWrapLine = 1;
    XawtextWrapWord = 2;

type
  PXawTextScanDirection = ^TXawTextScanDirection;
  TXawTextScanDirection =  Longint;
  Const
    XawsdLeft = 0;
    XawsdRight = 1;

type
  PXawTextEditType = ^TXawTextEditType;
  TXawTextEditType =  Longint;
  Const
    XawtextRead = 0;
    XawtextAppend = 1;
    XawtextEdit = 2;

type
  PXawTextSelectType = ^TXawTextSelectType;
  TXawTextSelectType =  Longint;
  Const
    XawselectNull = 0;
    XawselectPosition = 1;
    XawselectChar = 2;
    XawselectWord = 3;
    XawselectLine = 4;
    XawselectParagraph = 5;
    XawselectAll = 6;
    XawselectAlphaNumeric = 7;

type
  PXawTextJustifyMode = ^TXawTextJustifyMode;
  TXawTextJustifyMode =  Longint;
  Const
    XawjustifyLeft = 0;
    XawjustifyRight = 1;
    XawjustifyCenter = 2;
    XawjustifyFull = 3;

type
  PXawTextBlock = ^TXawTextBlock;
  TXawTextBlock = record
      firstPos : longint;
      length : longint;
      ptr : Pchar;
      format : dword;
    end;
  TXawTextBlockPtr = PXawTextBlock;
  PXawTextBlockPtr = ^TXawTextBlockPtr;

type
  PXawTextPositionInfo = ^TXawTextPositionInfo;
  TXawTextPositionInfo = record
      line_number : longint;
      column_number : longint;
      insert_position : TXawTextPosition;
      last_position : TXawTextPosition;
      overwrite_mode : TBoolean;
    end;

  PXawTextPropertyInfo = ^TXawTextPropertyInfo;
  TXawTextPropertyInfo = record
      left : TXawTextPosition;
      right : TXawTextPosition;
      block : PXawTextBlock;
    end;
//{$include <X11/Xaw/TextSink.h>}
//{$include <X11/Xaw/TextSrc.h>}

const
  XtEtextScrollNever = 'never';  
  XtEtextScrollWhenNeeded = 'whenneeded';  
  XtEtextScrollAlways = 'always';  
  XtEtextResizeNever = 'never';  
  XtEtextResizeWidth = 'width';  
  XtEtextResizeHeight = 'height';  
  XtEtextResizeBoth = 'both';  
  XtEtextWrapNever = 'never';  
  XtEtextWrapLine = 'line';  
  XtEtextWrapWord = 'word';  
  XtNautoFill = 'autoFill';  
  XtNbottomMargin = 'bottomMargin';  
  XtNdialogHOffset = 'dialogHOffset';  
  XtNdialogVOffset = 'dialogVOffset';  
  XtNdisplayCaret = 'displayCaret';  
  XtNdisplayPosition = 'displayPosition';  
  XtNleftMargin = 'leftMargin';  
  XtNrightMargin = 'rightMargin';  
  XtNpositionCallback = 'positionCallback';  
  XtNscrollVertical = 'scrollVertical';  
  XtNscrollHorizontal = 'scrollHorizontal';  
  XtNselectTypes = 'selectTypes';  
  XtNtopMargin = 'topMargin';  
  XtNwrap = 'wrap';  
  XtCColumn = 'Column';  
  XtNleftColumn = 'leftColumn';  
  XtNrightColumn = 'rightColumn';

  XtCJustifyMode = XtCJustify;  
  XtNjustifyMode = XtNjustify;  
  XtEtextJustifyLeft = 'left';  
  XtEtextJustifyRight = 'right';  
  XtEtextJustifyCenter = 'center';  
  XtEtextJustifyFull = 'full';  
  XtCAutoFill = 'AutoFill';  
  XtCSelectTypes = 'SelectTypes';  
  XtCWrap = 'Wrap';  

const
  XtCScroll = 'Scroll';  

const
  XtNinsertPosition = 'insertPosition';  

const
  XtNresize = 'resize';  
  XtCResize = 'Resize';  

const
  XtNselection = 'selection';  
{ return Error code for XawTextSearch  }

const
  XawTextSearchError = -(12345);  
{ return codes from XawTextReplace  }
  XawReplaceError = -(1);  
  XawEditDone = 0;  
  XawEditError = 1;  
  XawPositionError = 2;  
{ XrmQuark is not unsigned long  }
{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   

function XawTextFormat(tw,fmt : PtrUInt) : TBoolean;

  var
    FMT8BIT : dword;cvar;external libXaw;
    XawFmt8Bit : dword;cvar;external libXaw;
    XawFmtWide : dword;cvar;external libXaw;
    textWidgetClass : TWidgetClass;cvar;external libXaw;
type
//  PTextWidgetClass = ^TTextWidgetClass;
//  TTextWidgetClass = PTextClassRec;
//
//  PTextWidget = ^TTextWidget;
  //  TTextWidget = PTextRec;
    TTextWidget = PtrUInt;

function _XawTextFormat(tw:TTextWidget):TXrmQuark;cdecl;external libXaw;
procedure XawTextDisplay(w:TWidget);cdecl;external libXaw;
procedure XawTextEnableRedisplay(w:TWidget);cdecl;external libXaw;
procedure XawTextDisableRedisplay(w:TWidget);cdecl;external libXaw;
procedure XawTextSetSelectionArray(w:TWidget; sarray:PXawTextSelectType);cdecl;external libXaw;
procedure XawTextGetSelectionPos(w:TWidget; begin_return:PXawTextPosition; end_return:PXawTextPosition);cdecl;external libXaw;
procedure XawTextSetSource(w:TWidget; source:TWidget; top:TXawTextPosition);cdecl;external libXaw;
function XawTextReplace(w:TWidget; start:TXawTextPosition; ende:TXawTextPosition; text:PXawTextBlock):longint;cdecl;external libXaw;
function XawTextTopPosition(w:TWidget):TXawTextPosition;cdecl;external libXaw;
function XawTextLastPosition(w:TWidget):TXawTextPosition;cdecl;external libXaw;
procedure XawTextSetInsertionPoint(w:TWidget; position:TXawTextPosition);cdecl;external libXaw;
function XawTextGetInsertionPoint(w:TWidget):TXawTextPosition;cdecl;external libXaw;
procedure XawTextUnsetSelection(w:TWidget);cdecl;external libXaw;
procedure XawTextSetSelection(w:TWidget; left:TXawTextPosition; right:TXawTextPosition);cdecl;external libXaw;
procedure XawTextInvalidate(w:TWidget; from:TXawTextPosition; to_:TXawTextPosition);cdecl;external libXaw;
function XawTextGetSource(w:TWidget):TWidget;cdecl;external libXaw;
function XawTextGetSink(w:TWidget):TWidget;cdecl;external libXaw;

function XawTextSearch(w:TWidget; dir:longint; dir_:TXawTextScanDirection; text:PXawTextBlock):TXawTextPosition;cdecl;external libXaw;
procedure XawTextDisplayCaret(w:TWidget; visible:TBoolean);cdecl;external libXaw;
{
 * For R3 compatibility only
  }
//{$include <X11/Xaw/AsciiSrc.h>}
//{$include <X11/Xaw/AsciiSink.h>}

implementation

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function XawTextFormat(tw, fmt: PtrUInt): TBoolean;
begin
  XawTextFormat:=_XawTextFormat(tw)=fmt;
//  XawTextFormat:=(dword(_XawTextFormat(tw)))=fmt;
end;


end.
