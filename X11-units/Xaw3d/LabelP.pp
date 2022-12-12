
unit LabelP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/LabelP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/LabelP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/LabelP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _XawLabelP_h}
{$define _XawLabelP_h}  

{$include "Xaw3dP.h"}
{$include <X11/Xaw3d/Label.h>}
{$include <X11/Xaw3d/ThreeDP.h>}


  type
    LabelClassPart = record
        foo : longint;
      end;


    _LabelClassRec = record
        core_class : CoreClassPart;
        simple_class : SimpleClassPart;
        threeD_class : ThreeDClassPart;
        label_class : LabelClassPart;
      end;
    LabelClassRec = _LabelClassRec;

    var
      labelClassRec : LabelClassRec;cvar;external;


{$ifdef XAW_INTERNATIONALIZATION}
{$endif}







  type
    LabelPart = record
        foreground : Pixel;
        font : ^XFontStruct;
        fontset : XFontSet;
        _label : ^char;
        justify : XtJustify;
        internal_width : Dimension;
        internal_height : Dimension;
        pixmap : Pixmap;
        resize : Boolean;
        encoding : byte;
        left_bitmap : Pixmap;
        normal_GC : GC;
        gray_GC : GC;
        stipple : Pixmap;
        stippled : Pixmap;
        left_stippled : Pixmap;
        label_x : Position;
        label_y : Position;
        label_width : Dimension;
        label_height : Dimension;
        label_len : Dimension;
        lbm_y : longint;
        lbm_width : dword;
        lbm_height : dword;
        depth : dword;
      end;


    _LabelRec = record
        core : CorePart;
        simple : SimplePart;
        threeD : ThreeDPart;
        _label : LabelPart;
      end;
    LabelRec = _LabelRec;

  function LEFT_OFFSET(lw : longint) : longint;  

{$endif}


implementation

  function LEFT_OFFSET(lw : longint) : longint;
  var
     if_local1 : longint;
  (* result types are not known *)
  begin
    if None then
      if_local1:=(lw^.(_label.lbm_width))+(lw^.(_label.internal_width))
    else
      if_local1:=0;
    LEFT_OFFSET:=((lw^.(_label.left_bitmap)) and (@(lw^.(_label.pixmap))))=(if_local1);
  end;


end.
