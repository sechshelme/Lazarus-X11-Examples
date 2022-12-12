
unit TextSrc;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/TextSrc.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/TextSrc.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/TextSrc.pp
}

  Type
  PAtom  = ^Atom;
  Pdword  = ^dword;
  Plongint  = ^longint;
  PXawTextBlock  = ^XawTextBlock;
  PXtPointer  = ^XtPointer;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawTextSrc_h}
{$define _XawTextSrc_h}  
{$include <X11/Xaw/Text.h>}



    var
      textSrcObjectClass : WidgetClass;cvar;external;

  type
    TextSrcObjectClass = ^_TextSrcClassRec;

    TextSrcObject = ^_TextSrcRec;

    XawTextScanType = (XawstPositions,XawstWhiteSpace,XawstEOL,
      XawstParagraph,XawstAll,XawstAlphaNumeric
      );

    highlightType = (Normal,Selected);

    XawTextSelectionMode = (XawsmTextSelect,XawsmTextExtend);

    XawTextSelectionAction = (XawactionStart,XawactionAdjust,XawactionEnd
      );

  const
    XawTextReadError = -(1);    
    XawTextScanError = -(1);    
{$ifndef OLDXAW}

  const
    XtNenableUndo = 'enableUndo';    
    XtCUndo = 'Undo';    
    XtNsourceChanged = 'sourceChanged';    
    XtCChanged = 'Changed';    
    XtNpropertyCallback = 'propertyCallback';    
{$endif}


(* error 
XawTextPosition XawTextSourceRead
(* error 
 XawTextPosition	pos,
(* error 
 XawTextBlock		*text_return,
(* error 
 int			length
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)


  function XawTextSourceReplace(w:Widget; start:XawTextPosition; end:XawTextPosition; text:PXawTextBlock):longint;


{$if NeedWidePrototypes}
{$else}
(* error 
 XawTextScanType	type,
(* error 
 XawTextScanDirection	dir,
(* error 
 int			count,
(* error 
 Boolean		include
{$endif}
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

{$if NeedWidePrototypes}
{$else}
{$endif}

  function XawTextSourceSearch(w:Widget; position:XawTextPosition; dir:longint; dir:XawTextScanDirection; text:PXawTextBlock):XawTextPosition;


  function XawTextSourceConvertSelection(w:Widget; selection:PAtom; target:PAtom; _type:PAtom; value_return:PXtPointer; 
             length_return:Pdword; format_return:Plongint):Boolean;


  procedure XawTextSourceSetSelection(w:Widget; start:XawTextPosition; end:XawTextPosition; selection:Atom);

{$endif}

(* error 
#endif /* _XawTextSrc_h */

implementation

  function XawTextSourceReplace(w:Widget; start:XawTextPosition; end:XawTextPosition; text:PXawTextBlock):longint;
  begin
    { You must implement this function }
  end;
  function XawTextSourceSearch(w:Widget; position:XawTextPosition; dir:longint; dir:XawTextScanDirection; text:PXawTextBlock):XawTextPosition;
  begin
    { You must implement this function }
  end;
  function XawTextSourceConvertSelection(w:Widget; selection:PAtom; target:PAtom; _type:PAtom; value_return:PXtPointer; 
             length_return:Pdword; format_return:Plongint):Boolean;
  begin
    { You must implement this function }
  end;
  procedure XawTextSourceSetSelection(w:Widget; start:XawTextPosition; end:XawTextPosition; selection:Atom);
  begin
    { You must implement this function }
  end;

end.
