
unit TextSrc;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/TextSrc.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/TextSrc.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/TextSrc.pp
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

{$include <X11/Xaw3d/Text.h>}



    var
      textSrcObjectClass : WidgetClass;cvar;external;

  type
    TextSrcObjectClass = ^_TextSrcClassRec;

    TextSrcObject = ^_TextSrcRec;

    XawTextScanType = (XawstPositions,XawstWhiteSpace,XawstEOL,
      XawstParagraph,XawstAll);

    highlightType = (Normal,Selected);

    XawTextSelectionMode = (XawsmTextSelect,XawsmTextExtend);

    XawTextSelectionAction = (XawactionStart,XawactionAdjust,XawactionEnd
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

    function XawTextSourceReplace(_para1:Widget; _para2:XawTextPosition; _para3:XawTextPosition; _para4:PXawTextBlock):longint;cdecl;


{$if NeedFunctionPrototypes}
{$if NeedWidePrototypes}
{$else}
{$endif}
{$if NeedWidePrototypes}

{$else}

{$endif}
{$endif}

    function XawTextSourceScan(_para1:Widget; _para2:XawTextPosition; _para3:longint; _para4:longint; _para5:XawTextScanType; 
               _para6:XawTextScanDirection; _para7:longint; Boolean:longint):XawTextPosition;cdecl;


{$if NeedFunctionPrototypes}
{$if NeedWidePrototypes}
{$else}
{$endif}

{$endif}

    function XawTextSourceSearch(_para1:Widget; _para2:XawTextPosition; _para3:longint; _para4:XawTextScanDirection; _para5:PXawTextBlock):XawTextPosition;cdecl;


{$if NeedFunctionPrototypes}

{$endif}

    function XawTextSourceConvertSelection(_para1:Widget; _para2:PAtom; _para3:PAtom; _para4:PAtom; _para5:PXtPointer; 
               _para6:Pdword; _para7:Plongint):Boolean;cdecl;


{$if NeedFunctionPrototypes}

{$endif}

    procedure XawTextSourceSetSelection(_para1:Widget; _para2:XawTextPosition; _para3:XawTextPosition; _para4:Atom);cdecl;

{$endif}


(* error 
/* DON'T ADD STUFF AFTER THIS #endif */

implementation


end.
