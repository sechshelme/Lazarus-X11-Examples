
unit GripP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/GripP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/GripP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/GripP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawGripP_h}
{$define _XawGripP_h}  
{$include <X11/Xaw/Grip.h>}
{$include <X11/Xaw/SimpleP.h>}

  const
    DEFAULT_GRIP_SIZE = 8;    


  type
    GripClassPart = record
        extension : XtPointer;
      end;


    _GripClassRec = record
        core_class : CoreClassPart;
        simple_class : SimpleClassPart;
        grip_class : GripClassPart;
      end;
    GripClassRec = _GripClassRec;

    var
      gripClassRec : GripClassRec;cvar;external;

{$ifndef OLDXAW}

{$endif}

  type
    GripPart = record
        grip_action : XtCallbackList;
        pad : array[0..3] of XtPointer;
      end;


    _GripRec = record
        core : CorePart;
        simple : SimplePart;
        grip : GripPart;
      end;
    GripRec = _GripRec;
{$endif}


implementation


end.
