
unit Text;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/Text.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/Text.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/Text.pp
}

    Type
    PXawTextBlock  = ^XawTextBlock;
    PXawTextPosition  = ^XawTextPosition;
    PXawTextSelectType  = ^XawTextSelectType;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawText_h}
{$define _XawText_h}  
{$include <X11/Xaw3d/Simple.h>}


  type
    XawTextPosition = longint;

    XawTextScrollMode = (XawtextScrollNever,XawtextScrollWhenNeeded,
      XawtextScrollAlways);

    XawTextWrapMode = (XawtextWrapNever,XawtextWrapLine,XawtextWrapWord
      );

    XawTextResizeMode = (XawtextResizeNever,XawtextResizeWidth,
      XawtextResizeHeight,XawtextResizeBoth
      );

    XawTextScanDirection = (XawsdLeft,XawsdRight);

    XawTextEditType = (XawtextRead,XawtextAppend,XawtextEdit
      );

    XawTextSelectType = (XawselectNull,XawselectPosition,XawselectChar,
      XawselectWord,XawselectLine,XawselectParagraph,
      XawselectAll);

    XawTextBlock = record
        firstPos : longint;
        length : longint;
        ptr : ^char;
        format : dword;
      end;
    XawTextBlockPtr = ^XawTextBlock;
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

      textWidgetClass : WidgetClass;cvar;external;

  type
    TextWidgetClass = ^_TextClassRec;

    TextWidget = ^_TextRec;
(* error 
extern XrmQuark _XawTextFormat(
{$if NeedFunctionPrototypes}

{$endif}
in declaration at line 178 *)
{$if NeedFunctionPrototypes}

{$endif}

    procedure XawTextDisplay(_para1:Widget);cdecl;

{$if NeedFunctionPrototypes}

{$endif}

    procedure XawTextEnableRedisplay(_para1:Widget);cdecl;

{$if NeedFunctionPrototypes}

{$endif}

    procedure XawTextDisableRedisplay(_para1:Widget);cdecl;

{$if NeedFunctionPrototypes}

{$endif}

    procedure XawTextSetSelectionArray(_para1:Widget; _para2:PXawTextSelectType);cdecl;

{$if NeedFunctionPrototypes}

{$endif}

    procedure XawTextGetSelectionPos(_para1:Widget; _para2:PXawTextPosition; _para3:PXawTextPosition);cdecl;

{$if NeedFunctionPrototypes}

{$endif}

    procedure XawTextSetSource(_para1:Widget; _para2:Widget; _para3:XawTextPosition);cdecl;

{$if NeedFunctionPrototypes}

{$endif}

    function XawTextReplace(_para1:Widget; _para2:XawTextPosition; _para3:XawTextPosition; _para4:PXawTextBlock):longint;cdecl;

{$if NeedFunctionPrototypes}

{$endif}

    function XawTextTopPosition(_para1:Widget):XawTextPosition;cdecl;

{$if NeedFunctionPrototypes}

{$endif}

    procedure XawTextSetInsertionPoint(_para1:Widget; _para2:XawTextPosition);cdecl;

{$if NeedFunctionPrototypes}

{$endif}

    function XawTextGetInsertionPoint(_para1:Widget):XawTextPosition;cdecl;

{$if NeedFunctionPrototypes}

{$endif}

    procedure XawTextUnsetSelection(_para1:Widget);cdecl;

{$if NeedFunctionPrototypes}

{$endif}

    procedure XawTextSetSelection(_para1:Widget; _para2:XawTextPosition; _para3:XawTextPosition);cdecl;

{$if NeedFunctionPrototypes}

{$endif}

    procedure XawTextInvalidate(_para1:Widget; _para2:XawTextPosition; _para3:XawTextPosition);cdecl;

{$if NeedFunctionPrototypes}

{$endif}

    function XawTextGetSource(_para1:Widget):Widget;cdecl;

{$if NeedFunctionPrototypes}
{$if NeedWidePrototypes}
{$else}
{$endif}

{$endif}

    function XawTextSearch(_para1:Widget; _para2:longint; _para3:XawTextScanDirection; _para4:PXawTextBlock):XawTextPosition;cdecl;

{$if NeedFunctionPrototypes}
{$if NeedWidePrototypes}

{$else}

{$endif}
{$endif}

    procedure XawTextDisplayCaret(_para1:Widget; Boolean:longint);cdecl;


{$include <X11/Xaw3d/AsciiSrc.h>}
{$include <X11/Xaw3d/AsciiSink.h>}
{$endif}


(* error 
/* DON'T ADD STUFF AFTER THIS #endif */

implementation


end.
