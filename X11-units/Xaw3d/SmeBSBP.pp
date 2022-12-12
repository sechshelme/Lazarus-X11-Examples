
unit SmeBSBP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/SmeBSBP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/SmeBSBP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/SmeBSBP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawSmeBSBP_h}
{$define _XawSmeBSBP_h}  

{$include "Xaw3dP.h"}
{$include <X11/Xaw3d/SmeThreeDP.h>}
{$include <X11/Xaw3d/SmeBSB.h>}


  type
    _SmeBSBClassPart = record
        extension : XtPointer;
      end;
    SmeBSBClassPart = _SmeBSBClassPart;


    _SmeBSBClassRec = record
        rect_class : RectObjClassPart;
        sme_class : SmeClassPart;
        sme_threeD_class : SmeThreeDClassPart;
        sme_bsb_class : SmeBSBClassPart;
      end;
    SmeBSBClassRec = _SmeBSBClassRec;

    var
      smeBSBClassRec : SmeBSBClassRec;cvar;external;








{$ifdef XAW_INTERNATIONALIZATION}

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
        underline : longint;
        set_values_area_cleared : Boolean;
        norm_gc : GC;
        rev_gc : GC;
        norm_gray_gc : GC;
        invert_gc : GC;
        left_stippled : Pixmap;
        right_stippled : Pixmap;
        left_bitmap_width : Dimension;
        left_bitmap_height : Dimension;
        right_bitmap_width : Dimension;
        right_bitmap_height : Dimension;
        left_depth : dword;
        right_depth : dword;
        menu_name : String;
      end;


    _SmeBSBRec = record
        object : ObjectPart;
        rectangle : RectObjPart;
        sme : SmePart;
        sme_threeD : SmeThreeDPart;
        sme_bsb : SmeBSBPart;
      end;
    SmeBSBRec = _SmeBSBRec;

{$endif}


implementation


end.
