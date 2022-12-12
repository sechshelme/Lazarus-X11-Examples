
unit MultiSinkP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/MultiSinkP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/MultiSinkP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/MultiSinkP.pp
}

  Type
  PPosition  = ^Position;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}






{$ifndef _XawMultiSinkP_h}
{$define _XawMultiSinkP_h}  

{$include <X11/Xaw3d/TextSinkP.h> }
{$include <X11/Xaw3d/MultiSink.h> }


  type
    _MultiSinkClassPart = record
        foo : longint;
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






  type
    MultiSinkPart = record
        echo : Boolean;
        display_nonprinting : Boolean;
        normgc : GC;
        invgc : GC;
        xorgc : GC;
        insertCursorOn : Pixmap;
        laststate : XawTextInsertState;
        cursor_x : smallint;
        cursor_y : smallint;
        fontset : XFontSet;
      end;


    _MultiSinkRec = record
        object : ObjectPart;
        text_sink : TextSinkPart;
        multi_sink : MultiSinkPart;
      end;
    MultiSinkRec = _MultiSinkRec;

{$if NeedFunctionPrototypes}

{$endif}

  procedure _XawMultiSinkPosToXY(_para1:Widget; _para2:XawTextPosition; _para3:PPosition; _para4:PPosition);cdecl;

{$endif}


implementation


end.
