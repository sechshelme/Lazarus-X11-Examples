
unit BoxP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/BoxP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/BoxP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/BoxP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _XawBoxP_h}
{$define _XawBoxP_h}  

{$include <X11/Xaw3d/Box.h>}
{$include <X11/Xmu/Converters.h>}


  type
    BoxClassPart = record
        empty : longint;
      end;


    _BoxClassRec = record
        core_class : CoreClassPart;
        composite_class : CompositeClassPart;
        box_class : BoxClassPart;
      end;
    BoxClassRec = _BoxClassRec;

    var
      boxClassRec : BoxClassRec;cvar;external;




  type
    BoxPart = record
        h_space : Dimension;
        v_space : Dimension;
        orientation : XtOrientation;
        preferred_width : Dimension;
        preferred_height : Dimension;
        last_query_width : Dimension;
        last_query_height : Dimension;
        last_query_mode : XtGeometryMask;
      end;


    _BoxRec = record
        core : CorePart;
        composite : CompositePart;
        box : BoxPart;
      end;
    BoxRec = _BoxRec;
{$endif}


implementation


end.
