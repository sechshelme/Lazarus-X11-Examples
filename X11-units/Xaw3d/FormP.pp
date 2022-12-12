
unit FormP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/FormP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/FormP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/FormP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _XawFormP_h}
{$define _XawFormP_h}  
{$include <X11/Xaw3d/Form.h>}

  const
    XtREdgeType = 'EdgeType';    

  type
    LayoutState = (LayoutPending,LayoutInProgress,LayoutDone
      );
(* error 
#define XtInheritLayout ((Boolean (*)())_XtInherit)
in define line 61 *)

      FormClassPart = record
          layout : function :Boolean;cdecl;
        end;


      _FormClassRec = record
          core_class : CoreClassPart;
          composite_class : CompositeClassPart;
          constraint_class : ConstraintClassPart;
          form_class : FormClassPart;
        end;
      FormClassRec = _FormClassRec;

      var
        formClassRec : FormClassRec;cvar;external;










    type
      _FormPart = record
          default_spacing : longint;
          old_width : Dimension;
          old_height : Dimension;
          no_refigure : longint;
          needs_relayout : Boolean;
          resize_in_layout : Boolean;
          preferred_width : Dimension;
          preferred_height : Dimension;
          resize_is_no_op : Boolean;
        end;
      FormPart = _FormPart;

      _FormRec = record
          core : CorePart;
          composite : CompositePart;
          constraint : ConstraintPart;
          form : FormPart;
        end;
      FormRec = _FormRec;













      _FormConstraintsPart = record
          top : XtEdgeType;
          bottom : XtEdgeType;
          left : XtEdgeType;
          right : XtEdgeType;
          dx : longint;
          dy : longint;
          horiz_base : Widget;
          vert_base : Widget;
          allow_resize : Boolean;
          virtual_width : smallint;
          virtual_height : smallint;
          new_x : Position;
          new_y : Position;
          layout_state : LayoutState;
          deferred_resize : Boolean;
        end;
      FormConstraintsPart = _FormConstraintsPart;

      _FormConstraintsRec = record
          form : FormConstraintsPart;
        end;
      FormConstraintsRec = _FormConstraintsRec;
      FormConstraints = ^_FormConstraintsRec;
{$endif}


implementation


end.
