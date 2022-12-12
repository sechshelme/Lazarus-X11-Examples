
unit Text;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/Text.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/Text.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/Text.pp
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
{$include <X11/Xaw/Simple.h>}


  type
    XawTextPosition = longint;
{$ifndef notdef}

  type
    XawTextScrollMode = (XawtextScrollNever,XawtextScrollWhenNeeded,
      XawtextScrollAlways);

    XawTextResizeMode = (XawtextResizeNever,XawtextResizeWidth,
      XawtextResizeHeight,XawtextResizeBoth
      );
{$endif}

  type
    XawTextWrapMode = (XawtextWrapNever,XawtextWrapLine,XawtextWrapWord
      );

    XawTextScanDirection = (XawsdLeft,XawsdRight);

    XawTextEditType = (XawtextRead,XawtextAppend,XawtextEdit
      );

    XawTextSelectType = (XawselectNull,XawselectPosition,XawselectChar,
      XawselectWord,XawselectLine,XawselectParagraph,
      XawselectAll,XawselectAlphaNumeric);

    XawTextJustifyMode = (XawjustifyLeft,XawjustifyRight,XawjustifyCenter,
      XawjustifyFull);

    XawTextBlock = record
        firstPos : longint;
        length : longint;
        ptr : ^char;
        format : dword;
      end;
    XawTextBlockPtr = ^XawTextBlock;
{$ifndef OLDXAW}

  type
    XawTextPositionInfo = record
        line_number : longint;
        column_number : longint;
        insert_position : XawTextPosition;
        last_position : XawTextPosition;
        overwrite_mode : Boolean;
      end;

    XawTextPropertyInfo = record
        left : XawTextPosition;
        right : XawTextPosition;
        block : ^XawTextBlock;
      end;
    _XawTextAnchor = XawTextAnchor;
    _XawTextEntity = XawTextEntity;
    _XawTextProperty = XawTextProperty;
    _XawTextPropertyList = XawTextPropertyList;
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
      textWidgetClass : WidgetClass;cvar;external;

  type
    TextWidgetClass = ^_TextClassRec;

    TextWidget = ^_TextRec;
(* error 
XrmQuark _XawTextFormat
 in declarator_list *)

  procedure XawTextDisplay(w:Widget);

  procedure XawTextEnableRedisplay(w:Widget);

  procedure XawTextDisableRedisplay(w:Widget);

  procedure XawTextSetSelectionArray(w:Widget; sarray:PXawTextSelectType);

  procedure XawTextGetSelectionPos(w:Widget; begin_return:PXawTextPosition; end_return:PXawTextPosition);

  procedure XawTextSetSource(w:Widget; source:Widget; top:XawTextPosition);

  function XawTextReplace(w:Widget; start:XawTextPosition; end:XawTextPosition; text:PXawTextBlock):longint;

  function XawTextTopPosition(w:Widget):XawTextPosition;

  function XawTextLastPosition(w:Widget):XawTextPosition;

  procedure XawTextSetInsertionPoint(w:Widget; position:XawTextPosition);

  function XawTextGetInsertionPoint(w:Widget):XawTextPosition;

  procedure XawTextUnsetSelection(w:Widget);

  procedure XawTextSetSelection(w:Widget; left:XawTextPosition; right:XawTextPosition);

  procedure XawTextInvalidate(w:Widget; from:XawTextPosition; to:XawTextPosition);

  function XawTextGetSource(w:Widget):Widget;

  function XawTextGetSink(w:Widget):Widget;

{$if NeedWidePrototypes}
{$else}
{$endif}

  function XawTextSearch(w:Widget; dir:longint; dir:XawTextScanDirection; text:PXawTextBlock):XawTextPosition;

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

  procedure XawTextDisplay(w:Widget);
  begin
    { You must implement this function }
  end;
  procedure XawTextEnableRedisplay(w:Widget);
  begin
    { You must implement this function }
  end;
  procedure XawTextDisableRedisplay(w:Widget);
  begin
    { You must implement this function }
  end;
  procedure XawTextSetSelectionArray(w:Widget; sarray:PXawTextSelectType);
  begin
    { You must implement this function }
  end;
  procedure XawTextGetSelectionPos(w:Widget; begin_return:PXawTextPosition; end_return:PXawTextPosition);
  begin
    { You must implement this function }
  end;
  procedure XawTextSetSource(w:Widget; source:Widget; top:XawTextPosition);
  begin
    { You must implement this function }
  end;
  function XawTextReplace(w:Widget; start:XawTextPosition; end:XawTextPosition; text:PXawTextBlock):longint;
  begin
    { You must implement this function }
  end;
  function XawTextTopPosition(w:Widget):XawTextPosition;
  begin
    { You must implement this function }
  end;
  function XawTextLastPosition(w:Widget):XawTextPosition;
  begin
    { You must implement this function }
  end;
  procedure XawTextSetInsertionPoint(w:Widget; position:XawTextPosition);
  begin
    { You must implement this function }
  end;
  function XawTextGetInsertionPoint(w:Widget):XawTextPosition;
  begin
    { You must implement this function }
  end;
  procedure XawTextUnsetSelection(w:Widget);
  begin
    { You must implement this function }
  end;
  procedure XawTextSetSelection(w:Widget; left:XawTextPosition; right:XawTextPosition);
  begin
    { You must implement this function }
  end;
  procedure XawTextInvalidate(w:Widget; from:XawTextPosition; to:XawTextPosition);
  begin
    { You must implement this function }
  end;
  function XawTextGetSource(w:Widget):Widget;
  begin
    { You must implement this function }
  end;
  function XawTextGetSink(w:Widget):Widget;
  begin
    { You must implement this function }
  end;
  function XawTextSearch(w:Widget; dir:longint; dir:XawTextScanDirection; text:PXawTextBlock):XawTextPosition;
  begin
    { You must implement this function }
  end;

end.
