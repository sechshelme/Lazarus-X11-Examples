
unit GripP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/GripP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/GripP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/GripP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _XawGripP_h}
{$define _XawGripP_h}  
{$include <X11/Xaw3d/Grip.h>}
{$include <X11/Xaw3d/ThreeDP.h>}


  const
    DEFAULT_GRIP_SIZE = 8;    


  type
    GripClassPart = record
        empty : longint;
      end;


    _GripClassRec = record
        core_class : CoreClassPart;
        simple_class : SimpleClassPart;
        threeD_class : ThreeDClassPart;
        grip_class : GripClassPart;
      end;
    GripClassRec = _GripClassRec;

    var
      gripClassRec : GripClassRec;cvar;external;


  type
    GripPart = record
        grip_action : XtCallbackList;
      end;


    _GripRec = record
        core : CorePart;
        simple : SimplePart;
        threeD : ThreeDPart;
        grip : GripPart;
      end;
    GripRec = _GripRec;
{$endif}


implementation


end.
