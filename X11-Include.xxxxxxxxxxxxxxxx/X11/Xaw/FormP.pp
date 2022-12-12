
unit FormP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/FormP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/FormP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/FormP.pp
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
    PXawDisplayList  = ^XawDisplayList;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawFormP_h}
{$define _XawFormP_h}
{$include <X11/Xfuncproto.h>}
{$include <X11/Xaw/Form.h>}
{$include <X11/Xaw/XawInit.h>}
(* error 
#define XtREdgeType "EdgeType"
in define line 60 *)
    type
      PLayoutState = ^TLayoutState;
      TLayoutState = (LayoutPending,LayoutInProgress,LayoutDone
        );
(* error 
((Boolean (*)(FormWidget, unsigned int, unsigned int, Bool))_XtInherit)
in define line 69 *)
{$ifndef OLDXAW}
{$endif}
    type
      PFormClassPart = ^TFormClassPart;
      TFormClassPart = record
          layout : function (para1:TFormWidget; para2:dword; para3:dword; para4:TBool):TBoolean;cdecl;
          extension : TXtPointer;
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









{$ifndef OLDXAW}

{$endif}
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
          display_list : PXawDisplayList;
          pad : array[0..3] of TXtPointer;
        end;

      PFormRec = ^TFormRec;
      TFormRec = record
          core : TCorePart;
          composite : TCompositePart;
          constraint : TConstraintPart;
          form : TFormPart;
        end;










{$ifndef OLDXAW}

{$endif}
    type
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
          virtual_x : smallint;
          virtual_y : smallint;
          pad : array[0..1] of TXtPointer;
        end;

      PFormConstraintsRec = ^TFormConstraintsRec;
      TFormConstraintsRec = record
          form : TFormConstraintsPart;
        end;
      TFormConstraints = PFormConstraintsRec;
      PFormConstraints = ^TFormConstraints;
{$endif}

(* error 
#endif /* _XawFormP_h */

implementation


end.
