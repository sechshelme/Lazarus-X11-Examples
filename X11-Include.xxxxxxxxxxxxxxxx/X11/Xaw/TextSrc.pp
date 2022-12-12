
unit TextSrc;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/TextSrc.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/TextSrc.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/TextSrc.pp
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
PAtom  = ^Atom;
Pdword  = ^dword;
PhighlightType  = ^highlightType;
Plongint  = ^longint;
PTextSrcClassRec  = ^TextSrcClassRec;
PTextSrcObject  = ^TextSrcObject;
PTextSrcObjectClass  = ^TextSrcObjectClass;
PTextSrcRec  = ^TextSrcRec;
PXawTextBlock  = ^XawTextBlock;
PXawTextScanType  = ^XawTextScanType;
PXawTextSelectionAction  = ^XawTextSelectionAction;
PXawTextSelectionMode  = ^XawTextSelectionMode;
PXtPointer  = ^XtPointer;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawTextSrc_h}
{$define _XawTextSrc_h}
{$include <X11/Xaw/Text.h>}


  var
    textSrcObjectClass : TWidgetClass;cvar;external;
type
  PTextSrcObjectClass = ^TTextSrcObjectClass;
  TTextSrcObjectClass = PTextSrcClassRec;

  PTextSrcObject = ^TTextSrcObject;
  TTextSrcObject = PTextSrcRec;

  PXawTextScanType = ^TXawTextScanType;
  TXawTextScanType = (XawstPositions,XawstWhiteSpace,XawstEOL,
    XawstParagraph,XawstAll,XawstAlphaNumeric
    );

  PhighlightType = ^ThighlightType;
  ThighlightType = (Normal,Selected);

  PXawTextSelectionMode = ^TXawTextSelectionMode;
  TXawTextSelectionMode = (XawsmTextSelect,XawsmTextExtend);

  PXawTextSelectionAction = ^TXawTextSelectionAction;
  TXawTextSelectionAction = (XawactionStart,XawactionAdjust,XawactionEnd
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


function XawTextSourceReplace(w:TWidget; start:TXawTextPosition; end:TXawTextPosition; text:PXawTextBlock):longint;cdecl;external;

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

function XawTextSourceSearch(w:TWidget; position:TXawTextPosition; dir:longint; dir:TXawTextScanDirection; text:PXawTextBlock):TXawTextPosition;cdecl;external;

function XawTextSourceConvertSelection(w:TWidget; selection:PAtom; target:PAtom; _type:PAtom; value_return:PXtPointer; 
           length_return:Pdword; format_return:Plongint):TBoolean;cdecl;external;

procedure XawTextSourceSetSelection(w:TWidget; start:TXawTextPosition; end:TXawTextPosition; selection:TAtom);cdecl;external;
{$endif}

(* error 
#endif /* _XawTextSrc_h */

implementation


end.
