
unit ScrollbarP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/ScrollbarP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/ScrollbarP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/ScrollbarP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _ScrollbarP_h}
{$define _ScrollbarP_h}  
{$include <X11/Xaw/Scrollbar.h>}
{$include <X11/Xaw/SimpleP.h>}






















{$ifndef OLDXAW}

{$endif}

  type
    ScrollbarPart = record
        foreground : Pixel;
        orientation : XtOrientation;
        scrollProc : XtCallbackList;
        thumbProc : XtCallbackList;
        jumpProc : XtCallbackList;
        thumb : Pixmap;
        upCursor : Cursor;
        downCursor : Cursor;
        leftCursor : Cursor;
        rightCursor : Cursor;
        verCursor : Cursor;
        horCursor : Cursor;
        top : single;
        shown : single;
        length : Dimension;
        thickness : Dimension;
        min_thumb : Dimension;
        inactiveCursor : Cursor;
        direction : char;
        gc : GC;
        topLoc : Position;
        shownLength : Dimension;
        pad : array[0..3] of XtPointer;
      end;

    _ScrollbarRec = record
        core : CorePart;
        simple : SimplePart;
        scrollbar : ScrollbarPart;
      end;
    ScrollbarRec = _ScrollbarRec;

    ScrollbarClassPart = record
        extension : XtPointer;
      end;

    _ScrollbarClassRec = record
        core_class : CoreClassPart;
        simple_class : SimpleClassPart;
        scrollbar_class : ScrollbarClassPart;
      end;
    ScrollbarClassRec = _ScrollbarClassRec;

    var
      scrollbarClassRec : ScrollbarClassRec;cvar;external;
{$endif}


implementation


end.
