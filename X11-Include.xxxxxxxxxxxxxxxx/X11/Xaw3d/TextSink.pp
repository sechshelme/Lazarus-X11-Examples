
unit TextSink;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/TextSink.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/TextSink.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/TextSink.pp
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
    Plongint  = ^longint;
    PTextSinkClassRec  = ^TextSinkClassRec;
    PTextSinkObject  = ^TextSinkObject;
    PTextSinkObjectClass  = ^TextSinkObjectClass;
    PTextSinkRec  = ^TextSinkRec;
    PXawTextInsertState  = ^XawTextInsertState;
    PXawTextPosition  = ^XawTextPosition;
    PXRectangle  = ^XRectangle;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawTextSink_h}
{$define _XawTextSink_h}
{$include <X11/Xaw3d/Text.h>}



  var
    textSinkObjectClass : TWidgetClass;cvar;external;
type
  PTextSinkObjectClass = ^TTextSinkObjectClass;
  TTextSinkObjectClass = PTextSinkClassRec;

  PTextSinkObject = ^TTextSinkObject;
  TTextSinkObject = PTextSinkRec;

  PXawTextInsertState = ^TXawTextInsertState;
  TXawTextInsertState = (XawisOn,XawisOff);


(* error 
extern void XawTextSinkDisplayText(
{$if NeedFunctionPrototypes}
{$if NeedWidePrototypes}
{$else}
{$endif}
{$if NeedWidePrototypes}

{$else}

{$endif}
{$endif}
in declaration at line 121 *)

{$if NeedFunctionPrototypes}
{$if NeedWidePrototypes}

{$else}

{$endif}
{$endif}

procedure XawTextSinkInsertCursor(para1:TWidget; para2:longint; para3:longint; Position:longint; para5:TPosition; 
                para6:TXawTextInsertState);cdecl;external;

{$if NeedFunctionPrototypes}
{$if NeedWidePrototypes}

{$else}

{$endif}
{$endif}

procedure XawTextSinkClearToBackground(para1:TWidget; para2:longint; para3:longint; para4:longint; Position:longint; 
                para6:TPosition; para7:TDimension; para8:TDimension);cdecl;external;

{$if NeedFunctionPrototypes}
{$if NeedWidePrototypes}
{$else}
{$endif}

{$endif}

procedure XawTextSinkFindPosition(para1:TWidget; para2:TXawTextPosition; para3:longint; para4:longint; para5:longint; 
                para6:TBoolean; para7:PXawTextPosition; para8:Plongint; para9:Plongint);cdecl;external;

{$if NeedFunctionPrototypes}

{$endif}

procedure XawTextSinkFindDistance(para1:TWidget; para2:TXawTextPosition; para3:longint; para4:TXawTextPosition; para5:Plongint; 
                para6:PXawTextPosition; para7:Plongint);cdecl;external;

{$if NeedFunctionPrototypes}

{$endif}

procedure XawTextSinkResolve(para1:TWidget; para2:TXawTextPosition; para3:longint; para4:longint; para5:PXawTextPosition);cdecl;external;

{$if NeedFunctionPrototypes}
{$if NeedWidePrototypes}

{$else}

{$endif}
{$endif}

function XawTextSinkMaxLines(para1:TWidget; Dimension:longint):longint;cdecl;external;

{$if NeedFunctionPrototypes}

{$endif}

function XawTextSinkMaxHeight(para1:TWidget; para2:longint):longint;cdecl;external;

{$if NeedFunctionPrototypes}

{$endif}

procedure XawTextSinkSetTabs(para1:TWidget; para2:longint; para3:Plongint);cdecl;external;

{$if NeedFunctionPrototypes}

{$endif}

procedure XawTextSinkGetCursorBounds(para1:TWidget; para2:PXRectangle);cdecl;external;
{$endif}

(* error 
#endif /* _XawTextSrc_h */

implementation


end.
