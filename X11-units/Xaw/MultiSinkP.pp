
unit MultiSinkP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/MultiSinkP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/MultiSinkP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/MultiSinkP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawMultiSinkP_h}
{$define _XawMultiSinkP_h}  
{$include <X11/Xfuncproto.h>}

{$include <X11/Xaw/TextSinkP.h>}
{$include <X11/Xaw/MultiSink.h>}


  type
    _MultiSinkClassPart = record
        extension : XtPointer;
      end;
    MultiSinkClassPart = _MultiSinkClassPart;


    _MultiSinkClassRec = record
        object_class : ObjectClassPart;
        text_sink_class : TextSinkClassPart;
        multi_sink_class : MultiSinkClassPart;
      end;
    MultiSinkClassRec = _MultiSinkClassRec;

    var
      multiSinkClassRec : MultiSinkClassRec;cvar;external;





{$ifndef OLDXAW}

{$endif}

  type
    MultiSinkPart = record
        echo : Boolean;
        display_nonprinting : Boolean;
        normgc : GC;
        invgc : GC;
        xorgc : GC;
        cursor_position : XawTextPosition;
        laststate : XawTextInsertState;
        cursor_x : smallint;
        cursor_y : smallint;
        fontset : XFontSet;
        pad : array[0..3] of XtPointer;
      end;


    _MultiSinkRec = record
        object : ObjectPart;
        text_sink : TextSinkPart;
        multi_sink : MultiSinkPart;
      end;
    MultiSinkRec = _MultiSinkRec;

(* error 
void _XawMultiSinkPosToXY
in declaration at line 134 *)
{$endif}

(* error 
#endif /* _XawMultiSinkP_h */

implementation


end.
