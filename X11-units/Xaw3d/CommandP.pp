
unit CommandP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/CommandP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/CommandP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/CommandP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _XawCommandP_h}
{$define _XawCommandP_h}  
{$include <X11/Xaw3d/Command.h>}
{$include <X11/Xaw3d/LabelP.h>}





  type
    XtCommandHighlight = (HighlightNone,HighlightWhenUnset,HighlightAlways
      );




    _CommandClass = record
        makes_compiler_happy : longint;
      end;
    CommandClassPart = _CommandClass;


    _CommandClassRec = record
        core_class : CoreClassPart;
        simple_class : SimpleClassPart;
        threeD_class : ThreeDClassPart;
        label_class : LabelClassPart;
        command_class : CommandClassPart;
      end;
    CommandClassRec = _CommandClassRec;

    var
      commandClassRec : CommandClassRec;cvar;external;






  type
    CommandPart = record
        highlight_thickness : Dimension;
        callbacks : XtCallbackList;
        gray_pixmap : Pixmap;
        normal_GC : GC;
        inverse_GC : GC;
        set : Boolean;
        highlighted : XtCommandHighlight;
        shadow_width : Dimension;
        shape_style : longint;
        corner_round : Dimension;
      end;



    _CommandRec = record
        core : CorePart;
        simple : SimplePart;
        threeD : ThreeDPart;
        _label : LabelPart;
        command : CommandPart;
      end;
    CommandRec = _CommandRec;
{$endif}


implementation


end.
