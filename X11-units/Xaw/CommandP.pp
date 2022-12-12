
unit CommandP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/CommandP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/CommandP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/CommandP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawCommandP_h}
{$define _XawCommandP_h}  

{$include <X11/Xaw/Command.h>}
{$include <X11/Xaw/LabelP.h>}




  type
    XtCommandHighlight = (HighlightNone,HighlightWhenUnset,HighlightAlways
      );


    _CommandClass = record
        extension : XtPointer;
      end;
    CommandClassPart = _CommandClass;


    _CommandClassRec = record
        core_class : CoreClassPart;
        simple_class : SimpleClassPart;
        label_class : LabelClassPart;
        command_class : CommandClassPart;
      end;
    CommandClassRec = _CommandClassRec;

    var
      commandClassRec : CommandClassRec;cvar;external;




{$ifndef OLDXAW}

{$endif}

  type
    CommandPart = record
        highlight_thickness : Dimension;
        callbacks : XtCallbackList;
        gray_pixmap : Pixmap;
        normal_GC : GC;
        inverse_GC : GC;
        set : Boolean;
        highlighted : XtCommandHighlight;
        shape_style : longint;
        corner_round : Dimension;
        pad : array[0..3] of XtPointer;
      end;


    _CommandRec = record
        core : CorePart;
        simple : SimplePart;
        _label : LabelPart;
        command : CommandPart;
      end;
    CommandRec = _CommandRec;
{$endif}


implementation


end.
