
unit ScrollbarP;
interface

{
  Automatically converted by H2Pas 1.0.0 from ScrollbarP.h
  The following command line parameters were used:
    ScrollbarP.h
    -p
    -T
    -S
    -d
    -c
}




{$ifndef _ScrollbarP_h}
{$define _ScrollbarP_h}
{$include <X11/Xaw/Scrollbar.h>}
{$include <X11/Xaw/SimpleP.h>}






















{$ifndef OLDXAW}

{$endif}
type
  TScrollbarPart = packed record
      foreground : TPixel;
      orientation : TXtOrientation;
      scrollProc : TXtCallbackList;
      thumbProc : TXtCallbackList;
      jumpProc : TXtCallbackList;
      thumb : TPixmap;
      upCursor : TCursor;
      downCursor : TCursor;
      leftCursor : TCursor;
      rightCursor : TCursor;
      verCursor : TCursor;
      horCursor : TCursor;
      top : single;
      shown : single;
      length : TDimension;
      thickness : TDimension;
      min_thumb : TDimension;
      inactiveCursor : TCursor;
      direction : char;
      gc : TGC;
      topLoc : TPosition;
      shownLength : TDimension;
      pad : array[0..3] of TXtPointer;
    end;

  TScrollbarRec = packed record
      core : TCorePart;
      simple : TSimplePart;
      scrollbar : TScrollbarPart;
    end;

  TScrollbarClassPart = packed record
      extension : TXtPointer;
    end;

  TScrollbarClassRec = packed record
      core_class : TCoreClassPart;
      simple_class : TSimpleClassPart;
      scrollbar_class : TScrollbarClassPart;
    end;
  var
    scrollbarClassRec : TScrollbarClassRec;cvar;external;
{$endif}


implementation


end.
