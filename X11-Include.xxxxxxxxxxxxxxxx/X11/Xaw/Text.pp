
unit Text;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/Text.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/Text.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/Text.pp
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

Type
Pchar  = ^char;
PTextClassRec  = ^TextClassRec;
PTextRec  = ^TextRec;
PTextWidget  = ^TextWidget;
PTextWidgetClass  = ^TextWidgetClass;
PXawTextBlock  = ^XawTextBlock;
PXawTextBlockPtr  = ^XawTextBlockPtr;
PXawTextEditType  = ^XawTextEditType;
PXawTextJustifyMode  = ^XawTextJustifyMode;
PXawTextPosition  = ^XawTextPosition;
PXawTextPositionInfo  = ^XawTextPositionInfo;
PXawTextPropertyInfo  = ^XawTextPropertyInfo;
PXawTextResizeMode  = ^XawTextResizeMode;
PXawTextScanDirection  = ^XawTextScanDirection;
PXawTextScrollMode  = ^XawTextScrollMode;
PXawTextSelectType  = ^XawTextSelectType;
PXawTextWrapMode  = ^XawTextWrapMode;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawText_h}
{$define _XawText_h}
{$include <X11/Xaw/Simple.h>}

type
  PXawTextPosition = ^TXawTextPosition;
  TXawTextPosition = longint;
{$ifndef notdef}
type
  PXawTextScrollMode = ^TXawTextScrollMode;
  TXawTextScrollMode = (XawtextScrollNever,XawtextScrollWhenNeeded,
    XawtextScrollAlways);

  PXawTextResizeMode = ^TXawTextResizeMode;
  TXawTextResizeMode = (XawtextResizeNever,XawtextResizeWidth,XawtextResizeHeight,
    XawtextResizeBoth);
{$endif}
type
  PXawTextWrapMode = ^TXawTextWrapMode;
  TXawTextWrapMode = (XawtextWrapNever,XawtextWrapLine,XawtextWrapWord
    );

  PXawTextScanDirection = ^TXawTextScanDirection;
  TXawTextScanDirection = (XawsdLeft,XawsdRight);

  PXawTextEditType = ^TXawTextEditType;
  TXawTextEditType = (XawtextRead,XawtextAppend,XawtextEdit);

  PXawTextSelectType = ^TXawTextSelectType;
  TXawTextSelectType = (XawselectNull,XawselectPosition,XawselectChar,
    XawselectWord,XawselectLine,XawselectParagraph,
    XawselectAll,XawselectAlphaNumeric);

  PXawTextJustifyMode = ^TXawTextJustifyMode;
  TXawTextJustifyMode = (XawjustifyLeft,XawjustifyRight,XawjustifyCenter,
    XawjustifyFull);

  PXawTextBlock = ^TXawTextBlock;
  TXawTextBlock = record
      firstPos : longint;
      length : longint;
      ptr : Pchar;
      format : dword;
    end;
  TXawTextBlockPtr = PXawTextBlock;
  PXawTextBlockPtr = ^TXawTextBlockPtr;
{$ifndef OLDXAW}
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
{$endif}
{$include <X11/Xaw/TextSink.h>}
{$include <X11/Xaw/TextSrc.h>}

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
{$ifndef notdef}

const
  XtCScroll = 'Scroll';  
{$endif}
{$ifndef _XtStringDefs_h_}

const
  XtNinsertPosition = 'insertPosition';  
{$ifndef notdef}

const
  XtNresize = 'resize';  
  XtCResize = 'Resize';  
{$endif}

const
  XtNselection = 'selection';  
{$endif}


const
  XawTextSearchError = -(12345);  

  XawReplaceError = -(1);  
  XawEditDone = 0;  
  XawEditError = 1;  
  XawPositionError = 2;  


function XawTextFormat(tw,fmt : longint) : longint;

  var
    FMT8BIT : dword;cvar;external;
    XawFmt8Bit : dword;cvar;external;
    XawFmtWide : dword;cvar;external;
    textWidgetClass : TWidgetClass;cvar;external;
type
  PTextWidgetClass = ^TTextWidgetClass;
  TTextWidgetClass = PTextClassRec;

  PTextWidget = ^TTextWidget;
  TTextWidget = PTextRec;
(* error 
XrmQuark _XawTextFormat
 in declarator_list *)

procedure XawTextDisplay(w:TWidget);cdecl;external;
procedure XawTextEnableRedisplay(w:TWidget);cdecl;external;
procedure XawTextDisableRedisplay(w:TWidget);cdecl;external;
procedure XawTextSetSelectionArray(w:TWidget; sarray:PXawTextSelectType);cdecl;external;
procedure XawTextGetSelectionPos(w:TWidget; begin_return:PXawTextPosition; end_return:PXawTextPosition);cdecl;external;
procedure XawTextSetSource(w:TWidget; source:TWidget; top:TXawTextPosition);cdecl;external;
function XawTextReplace(w:TWidget; start:TXawTextPosition; end:TXawTextPosition; text:PXawTextBlock):longint;cdecl;external;
function XawTextTopPosition(w:TWidget):TXawTextPosition;cdecl;external;
function XawTextLastPosition(w:TWidget):TXawTextPosition;cdecl;external;
procedure XawTextSetInsertionPoint(w:TWidget; position:TXawTextPosition);cdecl;external;
function XawTextGetInsertionPoint(w:TWidget):TXawTextPosition;cdecl;external;
procedure XawTextUnsetSelection(w:TWidget);cdecl;external;
procedure XawTextSetSelection(w:TWidget; left:TXawTextPosition; right:TXawTextPosition);cdecl;external;
procedure XawTextInvalidate(w:TWidget; from:TXawTextPosition; to:TXawTextPosition);cdecl;external;
function XawTextGetSource(w:TWidget):TWidget;cdecl;external;
function XawTextGetSink(w:TWidget):TWidget;cdecl;external;
{$if NeedWidePrototypes}
{$else}
{$endif}

function XawTextSearch(w:TWidget; dir:longint; dir:TXawTextScanDirection; text:PXawTextBlock):TXawTextPosition;cdecl;external;
{$if NeedWidePrototypes}
{$else}
(* error 
 Boolean		visible
{$endif}
 in declarator_list *)

{$include <X11/Xaw/AsciiSrc.h>}
{$include <X11/Xaw/AsciiSink.h>}
{$endif}

(* error 
#endif /* _XawText_h */

implementation

function XawTextFormat(tw,fmt : longint) : longint;
begin
  XawTextFormat:=(dword(_XawTextFormat(tw)))=fmt;
end;


end.
