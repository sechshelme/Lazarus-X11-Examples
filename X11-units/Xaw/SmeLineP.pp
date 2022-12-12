
unit SmeLineP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/SmeLineP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/SmeLineP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/SmeLineP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawSmeLineP_h}
{$define _XawSmeLineP_h}  

{$include <X11/Xaw/SmeP.h>}
{$include <X11/Xaw/SmeLine.h>}


  type
    _SmeLineClassPart = record
        extension : XtPointer;
      end;
    SmeLineClassPart = _SmeLineClassPart;


    _SmeLineClassRec = record
        rect_class : RectObjClassPart;
        sme_class : SmeClassPart;
        sme_line_class : SmeLineClassPart;
      end;
    SmeLineClassRec = _SmeLineClassRec;

    var
      smeLineClassRec : SmeLineClassRec;cvar;external;







{$ifndef OLDXAW}

{$endif}

  type
    SmeLinePart = record
        foreground : Pixel;
        stipple : Pixmap;
        line_width : Dimension;
        gc : GC;
        pad : array[0..3] of XtPointer;
      end;


    _SmeLineRec = record
        object : ObjectPart;
        rectangle : RectObjPart;
        sme : SmePart;
        sme_line : SmeLinePart;
      end;
    SmeLineRec = _SmeLineRec;
{$endif}


implementation


end.
