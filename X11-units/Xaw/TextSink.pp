
unit TextSink;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/TextSink.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/TextSink.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/TextSink.pp
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
{$include <X11/Xaw/Text.h>}




    var
      textSinkObjectClass : WidgetClass;cvar;external;

  type
    TextSinkObjectClass = ^_TextSinkClassRec;

    TextSinkObject = ^_TextSinkRec;

    XawTextInsertState = (XawisOn,XawisOff);
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

    procedure XawTextSinkFindPosition(w:Widget; fromPos:XawTextPosition; fromX:longint; width:longint; stopAtWordBreak:longint; 
                stopAtWordBreak:Boolean; pos_return:PXawTextPosition; width_return:Plongint; height_return:Plongint);


    procedure XawTextSinkFindDistance(w:Widget; fromPos:XawTextPosition; fromX:longint; toPos:XawTextPosition; width_return:Plongint; 
                pos_return:PXawTextPosition; height_return:Plongint);


    procedure XawTextSinkResolve(w:Widget; fromPos:XawTextPosition; fromX:longint; width:longint; pos_return:PXawTextPosition);


{$if NeedWidePrototypes}
{$else}
(* error 
 Dimension		height
{$endif}
 in declarator_list *)


    function XawTextSinkMaxHeight(w:Widget; lines:longint):longint;


    procedure XawTextSinkSetTabs(w:Widget; tab_count:longint; tabs:Plongint);


    procedure XawTextSinkGetCursorBounds(w:Widget; rect_return:PXRectangle);

{$endif}

(* error 
#endif /* _XawTextSink_h */

implementation

    procedure XawTextSinkFindPosition(w:Widget; fromPos:XawTextPosition; fromX:longint; width:longint; stopAtWordBreak:longint; 
                stopAtWordBreak:Boolean; pos_return:PXawTextPosition; width_return:Plongint; height_return:Plongint);
    begin
      { You must implement this function }
    end;
    procedure XawTextSinkFindDistance(w:Widget; fromPos:XawTextPosition; fromX:longint; toPos:XawTextPosition; width_return:Plongint; 
                pos_return:PXawTextPosition; height_return:Plongint);
    begin
      { You must implement this function }
    end;
    procedure XawTextSinkResolve(w:Widget; fromPos:XawTextPosition; fromX:longint; width:longint; pos_return:PXawTextPosition);
    begin
      { You must implement this function }
    end;
    function XawTextSinkMaxHeight(w:Widget; lines:longint):longint;
    begin
      { You must implement this function }
    end;
    procedure XawTextSinkSetTabs(w:Widget; tab_count:longint; tabs:Plongint);
    begin
      { You must implement this function }
    end;
    procedure XawTextSinkGetCursorBounds(w:Widget; rect_return:PXRectangle);
    begin
      { You must implement this function }
    end;

end.
