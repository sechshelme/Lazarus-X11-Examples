
unit TextSrc;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/TextSrc.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/TextSrc.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/TextSrc.pp
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

{$include <X11/Xaw3d/Text.h>}


  var
    textSrcObjectClass : TWidgetClass;cvar;external;
type
  PTextSrcObjectClass = ^TTextSrcObjectClass;
  TTextSrcObjectClass = PTextSrcClassRec;

  PTextSrcObject = ^TTextSrcObject;
  TTextSrcObject = PTextSrcRec;

  PXawTextScanType = ^TXawTextScanType;
  TXawTextScanType = (XawstPositions,XawstWhiteSpace,XawstEOL,
    XawstParagraph,XawstAll);

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


(* error 
extern XawTextPosition XawTextSourceRead(
{$if NeedFunctionPrototypes}

{$endif}
in declaration at line 117 *)

{$if NeedFunctionPrototypes}

{$endif}

function XawTextSourceReplace(para1:TWidget; para2:TXawTextPosition; para3:TXawTextPosition; para4:PXawTextBlock):longint;cdecl;external;

{$if NeedFunctionPrototypes}
{$if NeedWidePrototypes}
{$else}
{$endif}
{$if NeedWidePrototypes}

{$else}

{$endif}
{$endif}

function XawTextSourceScan(para1:TWidget; para2:TXawTextPosition; para3:longint; para4:longint; para5:TXawTextScanType; 
               para6:TXawTextScanDirection; para7:longint; Boolean:longint):TXawTextPosition;cdecl;external;

{$if NeedFunctionPrototypes}
{$if NeedWidePrototypes}
{$else}
{$endif}

{$endif}

function XawTextSourceSearch(para1:TWidget; para2:TXawTextPosition; para3:longint; para4:TXawTextScanDirection; para5:PXawTextBlock):TXawTextPosition;cdecl;external;

{$if NeedFunctionPrototypes}

{$endif}

function XawTextSourceConvertSelection(para1:TWidget; para2:PAtom; para3:PAtom; para4:PAtom; para5:PXtPointer; 
               para6:Pdword; para7:Plongint):TBoolean;cdecl;external;

{$if NeedFunctionPrototypes}

{$endif}

procedure XawTextSourceSetSelection(para1:TWidget; para2:TXawTextPosition; para3:TXawTextPosition; para4:TAtom);cdecl;external;
{$endif}


(* error 
/* DON'T ADD STUFF AFTER THIS #endif */

implementation


end.
