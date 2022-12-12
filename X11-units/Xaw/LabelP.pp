
unit LabelP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/LabelP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/LabelP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/LabelP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawLabelP_h}
{$define _XawLabelP_h}  

{$include <X11/Xaw/Label.h>}
{$include <X11/Xaw/SimpleP.h>}


  type
    LabelClassPart = record
        extension : XtPointer;
      end;


    _LabelClassRec = record
        core_class : CoreClassPart;
        simple_class : SimpleClassPart;
        label_class : LabelClassPart;
      end;
    LabelClassRec = _LabelClassRec;

    var
      labelClassRec : LabelClassRec;cvar;external;





{$ifndef OLDXAW}

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
        label_x : Position;
        label_y : Position;
        label_width : Dimension;
        label_height : Dimension;
        label_len : Dimension;
        lbm_y : longint;
        lbm_width : dword;
        lbm_height : dword;
        pad : array[0..3] of XtPointer;
      end;


    _LabelRec = record
        core : CorePart;
        simple : SimplePart;
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
    if lw^.(_label.left_bitmap) then
      if_local1:=(lw^.(_label.lbm_width))+(lw^.(_label.internal_width))
    else
      if_local1:=0;
    LEFT_OFFSET:=if_local1;
  end;


end.
