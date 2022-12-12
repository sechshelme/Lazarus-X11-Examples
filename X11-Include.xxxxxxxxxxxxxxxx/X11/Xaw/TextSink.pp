
unit TextSink;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/TextSink.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/TextSink.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/TextSink.pp
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
{$include <X11/Xaw/Text.h>}



  var
    textSinkObjectClass : TWidgetClass;cvar;external;
type
  PTextSinkObjectClass = ^TTextSinkObjectClass;
  TTextSinkObjectClass = PTextSinkClassRec;

  PTextSinkObject = ^TTextSinkObject;
  TTextSinkObject = PTextSinkRec;

  PXawTextInsertState = ^TXawTextInsertState;
  TXawTextInsertState = (XawisOn,XawisOff);
{$ifndef OLDXAW}
{$ifndef XtNcursorColor}

const
  XtNcursorColor = 'cursorColor';  
{$endif}

const
  XawNtextProperties = 'textProperties';  
  XawCTextProperties = 'TextProperties';  
  XawRTextProperties = 'XawTextProperties';  
{$endif}


(* error 
void XawTextSinkDisplayText
{$if NeedWidePrototypes}
{$else}
{$endif}
{$if NeedWidePrototypes}
{$else}
{$endif}
in declaration at line 129 *)

{$if NeedWidePrototypes}
{$else}
(* error 
 Position		x,
(* error 
 Position		y,
(* error 
 XawTextInsertState	state
{$endif}
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

{$if NeedWidePrototypes}
{$else}
(* error 
 Position		x,
(* error 
 Position		y,
(* error 
 Dimension		width,
(* error 
 Dimension		height
{$endif}
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

{$if NeedWidePrototypes}
{$else}
{$endif}

procedure XawTextSinkFindPosition(w:TWidget; fromPos:TXawTextPosition; fromX:longint; width:longint; stopAtWordBreak:longint; 
                stopAtWordBreak:TBoolean; pos_return:PXawTextPosition; width_return:Plongint; height_return:Plongint);cdecl;external;

procedure XawTextSinkFindDistance(w:TWidget; fromPos:TXawTextPosition; fromX:longint; toPos:TXawTextPosition; width_return:Plongint; 
                pos_return:PXawTextPosition; height_return:Plongint);cdecl;external;

procedure XawTextSinkResolve(w:TWidget; fromPos:TXawTextPosition; fromX:longint; width:longint; pos_return:PXawTextPosition);cdecl;external;

{$if NeedWidePrototypes}
{$else}
(* error 
 Dimension		height
{$endif}
 in declarator_list *)


function XawTextSinkMaxHeight(w:TWidget; lines:longint):longint;cdecl;external;

procedure XawTextSinkSetTabs(w:TWidget; tab_count:longint; tabs:Plongint);cdecl;external;

procedure XawTextSinkGetCursorBounds(w:TWidget; rect_return:PXRectangle);cdecl;external;
{$endif}

(* error 
#endif /* _XawTextSink_h */

implementation


end.
