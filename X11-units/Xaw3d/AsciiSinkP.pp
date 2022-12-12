
unit AsciiSinkP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/AsciiSinkP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/AsciiSinkP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/AsciiSinkP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _XawAsciiSinkP_h}
{$define _XawAsciiSinkP_h}  

{$include <X11/Xaw3d/TextSinkP.h> }
{$include <X11/Xaw3d/AsciiSink.h> }


  type
    _AsciiSinkClassPart = record
        foo : longint;
      end;
    AsciiSinkClassPart = _AsciiSinkClassPart;


    _AsciiSinkClassRec = record
        object_class : ObjectClassPart;
        text_sink_class : TextSinkClassPart;
        ascii_sink_class : AsciiSinkClassPart;
      end;
    AsciiSinkClassRec = _AsciiSinkClassRec;

    var
      asciiSinkClassRec : AsciiSinkClassRec;cvar;external;






  type
    AsciiSinkPart = record
        font : ^XFontStruct;
        echo : Boolean;
        display_nonprinting : Boolean;
        normgc : GC;
        invgc : GC;
        xorgc : GC;
        insertCursorOn : Pixmap;
        laststate : XawTextInsertState;
        cursor_x : smallint;
        cursor_y : smallint;
      end;


    _AsciiSinkRec = record
        object : ObjectPart;
        text_sink : TextSinkPart;
        ascii_sink : AsciiSinkPart;
      end;
    AsciiSinkRec = _AsciiSinkRec;
{$endif}


implementation


end.
