
unit DialogP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/DialogP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/DialogP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/DialogP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _DialogP_h}
{$define _DialogP_h}  
{$include <X11/Xaw3d/Dialog.h>}
{$include <X11/Xaw3d/FormP.h>}

  type
    DialogClassPart = record
        empty : longint;
      end;

    _DialogClassRec = record
        core_class : CoreClassPart;
        composite_class : CompositeClassPart;
        constraint_class : ConstraintClassPart;
        form_class : FormClassPart;
        dialog_class : DialogClassPart;
      end;
    DialogClassRec = _DialogClassRec;

    var
      dialogClassRec : DialogClassRec;cvar;external;









  type
    _DialogPart = record
        _label : String;
        value : String;
        icon : Pixmap;
        iconW : Widget;
        labelW : Widget;
        valueW : Widget;
      end;
    DialogPart = _DialogPart;

    _DialogRec = record
        core : CorePart;
        composite : CompositePart;
        constraint : ConstraintPart;
        form : FormPart;
        dialog : DialogPart;
      end;
    DialogRec = _DialogRec;

    DialogConstraintsPart = record
        empty : longint;
      end;

    _DialogConstraintsRec = record
        form : FormConstraintsPart;
        dialog : DialogConstraintsPart;
      end;
    DialogConstraintsRec = _DialogConstraintsRec;
    DialogConstraints = ^_DialogConstraintsRec;
{$endif}


implementation


end.
