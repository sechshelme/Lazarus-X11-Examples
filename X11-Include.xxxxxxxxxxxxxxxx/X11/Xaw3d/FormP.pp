
unit FormP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/FormP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/FormP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/FormP.pp
}

    { Pointers to basic pascal types, inserted by h2pas conversion program.}
    Type
      PLongint  = ^Longint;
      PSmallInt = ^SmallInt;
      PByte     = ^Byte;
      PWord     = ^Word;
      PDWord    = ^DWord;
      PDouble   = ^Double;

    Type
    PFormClassPart  = ^FormClassPart;
    PFormClassRec  = ^FormClassRec;
    PFormConstraints  = ^FormConstraints;
    PFormConstraintsPart  = ^FormConstraintsPart;
    PFormConstraintsRec  = ^FormConstraintsRec;
    PFormPart  = ^FormPart;
    PFormRec  = ^FormRec;
    PLayoutState  = ^LayoutState;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _XawFormP_h}
{$define _XawFormP_h}
{$include <X11/Xaw3d/Form.h>}

const
  XtREdgeType = 'EdgeType';  
type
  PLayoutState = ^TLayoutState;
  TLayoutState = (LayoutPending,LayoutInProgress,LayoutDone
    );
(* error 
#define XtInheritLayout ((Boolean (*)())_XtInherit)
in define line 61 *)

      PFormClassPart = ^TFormClassPart;
      TFormClassPart = record
          layout : function :TBoolean;cdecl;
        end;


      PFormClassRec = ^TFormClassRec;
      TFormClassRec = record
          core_class : TCoreClassPart;
          composite_class : TCompositeClassPart;
          constraint_class : TConstraintClassPart;
          form_class : TFormClassPart;
        end;
      var
        formClassRec : TFormClassRec;cvar;external;









    type
      PFormPart = ^TFormPart;
      TFormPart = record
          default_spacing : longint;
          old_width : TDimension;
          old_height : TDimension;
          no_refigure : longint;
          needs_relayout : TBoolean;
          resize_in_layout : TBoolean;
          preferred_width : TDimension;
          preferred_height : TDimension;
          resize_is_no_op : TBoolean;
        end;

      PFormRec = ^TFormRec;
      TFormRec = record
          core : TCorePart;
          composite : TCompositePart;
          constraint : TConstraintPart;
          form : TFormPart;
        end;













      PFormConstraintsPart = ^TFormConstraintsPart;
      TFormConstraintsPart = record
          top : TXtEdgeType;
          bottom : TXtEdgeType;
          left : TXtEdgeType;
          right : TXtEdgeType;
          dx : longint;
          dy : longint;
          horiz_base : TWidget;
          vert_base : TWidget;
          allow_resize : TBoolean;
          virtual_width : smallint;
          virtual_height : smallint;
          new_x : TPosition;
          new_y : TPosition;
          layout_state : TLayoutState;
          deferred_resize : TBoolean;
        end;

      PFormConstraintsRec = ^TFormConstraintsRec;
      TFormConstraintsRec = record
          form : TFormConstraintsPart;
        end;
      TFormConstraints = PFormConstraintsRec;
      PFormConstraints = ^TFormConstraints;
{$endif}


implementation


end.
