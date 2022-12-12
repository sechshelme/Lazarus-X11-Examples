
unit TipP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/TipP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/TipP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/TipP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawTipP_h}
{$define _XawTipP_h}  
{$include "Xaw3dP.h"}
{$include <X11/Xaw3d/Tip.h>}

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

{$ifdef XAW_INTERNATIONALIZATION}
{$endif}

{$ifdef XAW_INTERNATIONALIZATION}
{$endif}

  type
    _TipPart = record
        foreground : Pixel;
        font : ^XFontStruct;
        fontset : XFontSet;
        internal_width : Dimension;
        internal_height : Dimension;
        _label : String;
        backing_store : longint;
        timeout : longint;
        gc : GC;
        timer : XtIntervalId;
        international : Boolean;
        encoding : byte;
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
