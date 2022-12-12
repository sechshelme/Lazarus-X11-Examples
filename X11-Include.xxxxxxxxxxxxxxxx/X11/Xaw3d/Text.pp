
unit Text;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Text.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Text.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Text.pp
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
    PXawTextPosition  = ^XawTextPosition;
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
{$include <X11/Xaw3d/Simple.h>}

type
  PXawTextPosition = ^TXawTextPosition;
  TXawTextPosition = longint;

  PXawTextScrollMode = ^TXawTextScrollMode;
  TXawTextScrollMode = (XawtextScrollNever,XawtextScrollWhenNeeded,
    XawtextScrollAlways);

  PXawTextWrapMode = ^TXawTextWrapMode;
  TXawTextWrapMode = (XawtextWrapNever,XawtextWrapLine,XawtextWrapWord
    );

  PXawTextResizeMode = ^TXawTextResizeMode;
  TXawTextResizeMode = (XawtextResizeNever,XawtextResizeWidth,XawtextResizeHeight,
    XawtextResizeBoth);

  PXawTextScanDirection = ^TXawTextScanDirection;
  TXawTextScanDirection = (XawsdLeft,XawsdRight);

  PXawTextEditType = ^TXawTextEditType;
  TXawTextEditType = (XawtextRead,XawtextAppend,XawtextEdit);

  PXawTextSelectType = ^TXawTextSelectType;
  TXawTextSelectType = (XawselectNull,XawselectPosition,XawselectChar,
    XawselectWord,XawselectLine,XawselectParagraph,
    XawselectAll);

  PXawTextBlock = ^TXawTextBlock;
  TXawTextBlock = record
      firstPos : longint;
      length : longint;
      ptr : Pchar;
      format : dword;
    end;
  TXawTextBlockPtr = PXawTextBlock;
  PXawTextBlockPtr = ^TXawTextBlockPtr;
{$include <X11/Xaw3d/TextSink.h>}
{$include <X11/Xaw3d/TextSrc.h>}

const
  XtEtextScrollNever = 'never';  
  XtEtextScrollWhenNeeded = 'whenneeded';  
  XtEtextScrollAlways = 'always';  
  XtEtextWrapNever = 'never';  
  XtEtextWrapLine = 'line';  
  XtEtextWrapWord = 'word';  
  XtEtextResizeNever = 'never';  
  XtEtextResizeWidth = 'width';  
  XtEtextResizeHeight = 'height';  
  XtEtextResizeBoth = 'both';  
  XtNautoFill = 'autoFill';  
  XtNbottomMargin = 'bottomMargin';  
  XtNdialogHOffset = 'dialogHOffset';  
  XtNdialogVOffset = 'dialogVOffset';  
  XtNdisplayCaret = 'displayCaret';  
  XtNdisplayPosition = 'displayPosition';  
  XtNleftMargin = 'leftMargin';  
  XtNrightMargin = 'rightMargin';  
  XtNscrollVertical = 'scrollVertical';  
  XtNscrollHorizontal = 'scrollHorizontal';  
  XtNselectTypes = 'selectTypes';  
  XtNtopMargin = 'topMargin';  
  XtNwrap = 'wrap';  
  XtCAutoFill = 'AutoFill';  
  XtCScroll = 'Scroll';  
  XtCSelectTypes = 'SelectTypes';  
  XtCWrap = 'Wrap';  
{$ifndef _XtStringDefs_h_}

const
  XtNinsertPosition = 'insertPosition';  
  XtNresize = 'resize';  
  XtNselection = 'selection';  
  XtCResize = 'Resize';  
{$endif}


const
  XawTextSearchError = -(12345);  

  XawReplaceError = -(1);  
  XawEditDone = 0;  
  XawEditError = 1;  
  XawPositionError = 2;  
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
extern XrmQuark _XawTextFormat(
{$if NeedFunctionPrototypes}

{$endif}
in declaration at line 178 *)
{$if NeedFunctionPrototypes}

{$endif}

procedure XawTextDisplay(para1:TWidget);cdecl;external;
{$if NeedFunctionPrototypes}

{$endif}

procedure XawTextEnableRedisplay(para1:TWidget);cdecl;external;
{$if NeedFunctionPrototypes}

{$endif}

procedure XawTextDisableRedisplay(para1:TWidget);cdecl;external;
{$if NeedFunctionPrototypes}

{$endif}

procedure XawTextSetSelectionArray(para1:TWidget; para2:PXawTextSelectType);cdecl;external;
{$if NeedFunctionPrototypes}

{$endif}

procedure XawTextGetSelectionPos(para1:TWidget; para2:PXawTextPosition; para3:PXawTextPosition);cdecl;external;
{$if NeedFunctionPrototypes}

{$endif}

procedure XawTextSetSource(para1:TWidget; para2:TWidget; para3:TXawTextPosition);cdecl;external;
{$if NeedFunctionPrototypes}

{$endif}

function XawTextReplace(para1:TWidget; para2:TXawTextPosition; para3:TXawTextPosition; para4:PXawTextBlock):longint;cdecl;external;
{$if NeedFunctionPrototypes}

{$endif}

function XawTextTopPosition(para1:TWidget):TXawTextPosition;cdecl;external;
{$if NeedFunctionPrototypes}

{$endif}

procedure XawTextSetInsertionPoint(para1:TWidget; para2:TXawTextPosition);cdecl;external;
{$if NeedFunctionPrototypes}

{$endif}

function XawTextGetInsertionPoint(para1:TWidget):TXawTextPosition;cdecl;external;
{$if NeedFunctionPrototypes}

{$endif}

procedure XawTextUnsetSelection(para1:TWidget);cdecl;external;
{$if NeedFunctionPrototypes}

{$endif}

procedure XawTextSetSelection(para1:TWidget; para2:TXawTextPosition; para3:TXawTextPosition);cdecl;external;
{$if NeedFunctionPrototypes}

{$endif}

procedure XawTextInvalidate(para1:TWidget; para2:TXawTextPosition; para3:TXawTextPosition);cdecl;external;
{$if NeedFunctionPrototypes}

{$endif}

function XawTextGetSource(para1:TWidget):TWidget;cdecl;external;
{$if NeedFunctionPrototypes}
{$if NeedWidePrototypes}
{$else}
{$endif}

{$endif}

function XawTextSearch(para1:TWidget; para2:longint; para3:TXawTextScanDirection; para4:PXawTextBlock):TXawTextPosition;cdecl;external;
{$if NeedFunctionPrototypes}
{$if NeedWidePrototypes}

{$else}

{$endif}
{$endif}

procedure XawTextDisplayCaret(para1:TWidget; Boolean:longint);cdecl;external;

{$include <X11/Xaw3d/AsciiSrc.h>}
{$include <X11/Xaw3d/AsciiSink.h>}
{$endif}


(* error 
/* DON'T ADD STUFF AFTER THIS #endif */

implementation


end.
