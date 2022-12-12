
unit ViewportP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/ViewportP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/ViewportP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/ViewportP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _ViewportP_h}
{$define _ViewportP_h}  
{$include <X11/Xaw/Viewport.h>}
{$include <X11/Xaw/FormP.h>}

  type
    ViewportClassPart = record
        extension : XtPointer;
      end;

    _ViewportClassRec = record
        core_class : CoreClassPart;
        composite_class : CompositeClassPart;
        constraint_class : ConstraintClassPart;
        form_class : FormClassPart;
        viewport_class : ViewportClassPart;
      end;
    ViewportClassRec = _ViewportClassRec;

    var
      viewportClassRec : ViewportClassRec;cvar;external;










{$ifndef OLDXAW}

{$endif}

  type
    _ViewportPart = record
        forcebars : Boolean;
        allowhoriz : Boolean;
        allowvert : Boolean;
        usebottom : Boolean;
        useright : Boolean;
        report_callbacks : XtCallbackList;
        clip : Widget;
        child : Widget;
        horiz_bar : Widget;
        vert_bar : Widget;
        pad : array[0..3] of XtPointer;
      end;
    ViewportPart = _ViewportPart;

    _ViewportRec = record
        core : CorePart;
        composite : CompositePart;
        constraint : ConstraintPart;
        form : FormPart;
        viewport : ViewportPart;
      end;
    ViewportRec = _ViewportRec;


    ViewportConstraintsPart = record
        reparented : Bool;
      end;

    _ViewportConstraintsRec = record
        form : FormConstraintsPart;
        viewport : ViewportConstraintsPart;
      end;
    ViewportConstraintsRec = _ViewportConstraintsRec;
    ViewportConstraints = ^_ViewportConstraintsRec;
{$endif}


implementation


end.
