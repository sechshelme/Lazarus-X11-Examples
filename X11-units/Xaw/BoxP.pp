
unit BoxP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/BoxP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/BoxP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/BoxP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawBoxP_h}
{$define _XawBoxP_h}  

{$include <X11/Xaw/Box.h>}
{$include <X11/Xmu/Converters.h>}
{$include <X11/Xaw/XawInit.h>}


  type
    BoxClassPart = record
        extension : XtPointer;
      end;


    _BoxClassRec = record
        core_class : CoreClassPart;
        composite_class : CompositeClassPart;
        box_class : BoxClassPart;
      end;
    BoxClassRec = _BoxClassRec;

    var
      boxClassRec : BoxClassRec;cvar;external;



{$ifndef OLDXAW}

{$endif}

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
        display_list : ^XawDisplayList;
        pad : array[0..3] of XtPointer;
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
