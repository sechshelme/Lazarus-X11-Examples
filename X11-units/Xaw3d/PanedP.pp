
unit PanedP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/PanedP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/PanedP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/PanedP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawPanedP_h}
{$define _XawPanedP_h}  
{$include <X11/Xaw3d/Paned.h>}




  type
    _PanedClassPart = record
        foo : longint;
      end;
    PanedClassPart = _PanedClassPart;


    _PanedClassRec = record
        core_class : CoreClassPart;
        composite_class : CompositeClassPart;
        constraint_class : ConstraintClassPart;
        paned_class : PanedClassPart;
      end;
    PanedClassRec = _PanedClassRec;

    var
      panedClassRec : PanedClassRec;cvar;external;


















  type
    _PanedConstraintsPart = record
        min : Dimension;
        max : Dimension;
        allow_resize : Boolean;
        show_grip : Boolean;
        skip_adjust : Boolean;
        position : longint;
        preferred_size : Dimension;
        resize_to_pref : Boolean;
        delta : Position;
        olddelta : Position;
        paned_adjusted_me : Boolean;
        wp_size : Dimension;
        size : longint;
        grip : Widget;
      end;
    PanedConstraintsPart = _PanedConstraintsPart;
    Pane = ^_PanedConstraintsPart;

    _PanedConstraintsRec = record
        paned : PanedConstraintsPart;
      end;
    PanedConstraintsRec = _PanedConstraintsRec;
    PanedConstraints = ^_PanedConstraintsRec;





    _PaneStack = record
        next : ^_PaneStack;
        pane : Pane;
        start_size : longint;
      end;
    PaneStack = _PaneStack;

































    PanedPart = record
        grip_indent : Position;
        refiguremode : Boolean;
        grip_translations : XtTranslations;
        internal_bp : Pixel;
        internal_bw : Dimension;
        orientation : XtOrientation;
        cursor : Cursor;
        grip_cursor : Cursor;
        v_grip_cursor : Cursor;
        h_grip_cursor : Cursor;
        adjust_this_cursor : Cursor;
        v_adjust_this_cursor : Cursor;
        h_adjust_this_cursor : Cursor;
        adjust_upper_cursor : Cursor;
        adjust_lower_cursor : Cursor;
        adjust_left_cursor : Cursor;
        adjust_right_cursor : Cursor;
        recursively_called : Boolean;
        resize_children_to_pref : Boolean;
        start_loc : longint;
        whichadd : Widget;
        whichsub : Widget;
        normgc : GC;
        invgc : GC;
        flipgc : GC;
        num_panes : longint;
        stack : ^PaneStack;
      end;


    _PanedRec = record
        core : CorePart;
        composite : CompositePart;
        constraint : ConstraintPart;
        paned : PanedPart;
      end;
    PanedRec = _PanedRec;
{$endif}



implementation


end.
