
unit ScrollbarP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/ScrollbarP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/ScrollbarP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/ScrollbarP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}








{$ifndef _ScrollbarP_h}
{$define _ScrollbarP_h}  
{$include "Xaw3dP.h"}
{$include <X11/Xaw3d/Scrollbar.h>}
{$include <X11/Xaw3d/ThreeDP.h>}







{$ifndef XAW_ARROW_SCROLLBARS}






{$endif}







{$ifdef XAW_ARROW_SCROLLBARS}


{$else}


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
        picked : single;
        timer_id : XtIntervalId;
        scroll_mode : char;
        inactiveCursor : Cursor;
        direction : char;
        gc : GC;
        topLoc : Position;
        shownLength : Dimension;
        pick_top : Boolean;
      end;

    _ScrollbarRec = record
        core : CorePart;
        simple : SimplePart;
        threeD : ThreeDPart;
        scrollbar : ScrollbarPart;
      end;
    ScrollbarRec = _ScrollbarRec;

    ScrollbarClassPart = record
        empty : longint;
      end;

    _ScrollbarClassRec = record
        core_class : CoreClassPart;
        simple_class : SimpleClassPart;
        threeD_class : ThreeDClassPart;
        scrollbar_class : ScrollbarClassPart;
      end;
    ScrollbarClassRec = _ScrollbarClassRec;

    var
      scrollbarClassRec : ScrollbarClassRec;cvar;external;
{$endif}


implementation


end.
