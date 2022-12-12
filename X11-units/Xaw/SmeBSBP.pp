
unit SmeBSBP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/SmeBSBP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/SmeBSBP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/SmeBSBP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawSmeBSBP_h}
{$define _XawSmeBSBP_h}  

{$include <X11/Xaw/SmeP.h>}
{$include <X11/Xaw/SmeBSB.h>}

  type
    _SmeBSBClassPart = record
        extension : XtPointer;
      end;
    SmeBSBClassPart = _SmeBSBClassPart;


    _SmeBSBClassRec = record
        rect_class : RectObjClassPart;
        sme_class : SmeClassPart;
        sme_bsb_class : SmeBSBClassPart;
      end;
    SmeBSBClassRec = _SmeBSBClassRec;

    var
      smeBSBClassRec : SmeBSBClassRec;cvar;external;

















{$ifndef OLDXAW}



{$endif}

  type
    SmeBSBPart = record
        _label : String;
        vert_space : longint;
        left_bitmap : Pixmap;
        right_bitmap : Pixmap;
        left_margin : Dimension;
        right_margin : Dimension;
        foreground : Pixel;
        font : ^XFontStruct;
        fontset : XFontSet;
        justify : XtJustify;
        set_values_area_cleared : Boolean;
        norm_gc : GC;
        rev_gc : GC;
        norm_gray_gc : GC;
        invert_gc : GC;
        left_bitmap_width : Dimension;
        left_bitmap_height : Dimension;
        right_bitmap_width : Dimension;
        right_bitmap_height : Dimension;
        menu_name : ^char;
        pad : array[0..3] of XtPointer;
      end;


    _SmeBSBRec = record
        object : ObjectPart;
        rectangle : RectObjPart;
        sme : SmePart;
        sme_bsb : SmeBSBPart;
      end;
    SmeBSBRec = _SmeBSBRec;
{$endif}


implementation


end.
