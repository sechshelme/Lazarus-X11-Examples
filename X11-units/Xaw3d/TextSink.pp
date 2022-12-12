
unit TextSink;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/TextSink.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/TextSink.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/TextSink.pp
}

    Type
    Plongint  = ^longint;
    PXawTextPosition  = ^XawTextPosition;
    PXRectangle  = ^XRectangle;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawTextSink_h}
{$define _XawTextSink_h}  
{$include <X11/Xaw3d/Text.h>}




    var
      textSinkObjectClass : WidgetClass;cvar;external;

  type
    TextSinkObjectClass = ^_TextSinkClassRec;

    TextSinkObject = ^_TextSinkRec;

    XawTextInsertState = (XawisOn,XawisOff);


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

    procedure XawTextSinkInsertCursor(_para1:Widget; _para2:longint; _para3:longint; Position:longint; _para5:Position; 
                _para6:XawTextInsertState);cdecl;


{$if NeedFunctionPrototypes}
{$if NeedWidePrototypes}

{$else}

{$endif}
{$endif}

    procedure XawTextSinkClearToBackground(_para1:Widget; _para2:longint; _para3:longint; _para4:longint; Position:longint; 
                _para6:Position; _para7:Dimension; _para8:Dimension);cdecl;


{$if NeedFunctionPrototypes}
{$if NeedWidePrototypes}
{$else}
{$endif}

{$endif}

    procedure XawTextSinkFindPosition(_para1:Widget; _para2:XawTextPosition; _para3:longint; _para4:longint; _para5:longint; 
                _para6:Boolean; _para7:PXawTextPosition; _para8:Plongint; _para9:Plongint);cdecl;


{$if NeedFunctionPrototypes}

{$endif}

    procedure XawTextSinkFindDistance(_para1:Widget; _para2:XawTextPosition; _para3:longint; _para4:XawTextPosition; _para5:Plongint; 
                _para6:PXawTextPosition; _para7:Plongint);cdecl;


{$if NeedFunctionPrototypes}

{$endif}

    procedure XawTextSinkResolve(_para1:Widget; _para2:XawTextPosition; _para3:longint; _para4:longint; _para5:PXawTextPosition);cdecl;


{$if NeedFunctionPrototypes}
{$if NeedWidePrototypes}

{$else}

{$endif}
{$endif}

    function XawTextSinkMaxLines(_para1:Widget; Dimension:longint):longint;cdecl;


{$if NeedFunctionPrototypes}

{$endif}

    function XawTextSinkMaxHeight(_para1:Widget; _para2:longint):longint;cdecl;


{$if NeedFunctionPrototypes}

{$endif}

    procedure XawTextSinkSetTabs(_para1:Widget; _para2:longint; _para3:Plongint);cdecl;


{$if NeedFunctionPrototypes}

{$endif}

    procedure XawTextSinkGetCursorBounds(_para1:Widget; _para2:PXRectangle);cdecl;

{$endif}

(* error 
#endif /* _XawTextSrc_h */

implementation


end.
