
unit TipP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/TipP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/TipP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/TipP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawTipP_h}
{$define _XawTipP_h}  
{$include <X11/Xaw/Tip.h>}
{$include <X11/CoreP.h>}
{$include <X11/Xaw/XawInit.h>}

  type
    TipClassPart = record
        extension : XtPointer;
      end;

    _TipClassRec = record
        core_class : CoreClassPart;
        tip_class : TipClassPart;
      end;
    TipClassRec = _TipClassRec;

    var
      tipClassRec : TipClassRec;cvar;external;



  type
    _TipPart = record
        foreground : Pixel;
        font : ^XFontStruct;
        fontset : XFontSet;
        top_margin : Dimension;
        bottom_margin : Dimension;
        left_margin : Dimension;
        right_margin : Dimension;
        backing_store : longint;
        timeout : longint;
        display_list : ^XawDisplayList;
        gc : GC;
        timer : XtIntervalId;
        _label : String;
        international : Boolean;
        encoding : byte;
        pad : array[0..3] of XtPointer;
      end;
    TipPart = _TipPart;

    _TipRec = record
        core : CorePart;
        tip : TipPart;
      end;
    TipRec = _TipRec;
{$endif}


implementation


end.
