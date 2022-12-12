
unit ConstrainP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/ConstrainP.h
  The following command line parameters were used:
    /usr/include/X11/ConstrainP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/ConstrainP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XtConstraintP_h}
{$define _XtConstraintP_h}  
{$include <X11/Constraint.h>}
(* error 
typedef struct _ConstraintPart {
in declaration at line 56 *)

(* error 
} ConstraintPart;
in declaration at line 57 *)

    type
      _ConstraintRec = record
          core : CorePart;
          composite : CompositePart;
          constraint : ConstraintPart;
        end;
      ConstraintRec = _ConstraintRec;
      ConstraintWidget = ^_ConstraintRec;








      _ConstraintClassPart = record
          resources : XtResourceList;
          num_resources : Cardinal;
          constraint_size : Cardinal;
          initialize : XtInitProc;
          destroy : XtWidgetProc;
          set_values : XtSetValuesFunc;
          extension : XtPointer;
        end;
      ConstraintClassPart = _ConstraintClassPart;





      ConstraintClassExtensionRec = record
          next_extension : XtPointer;
          record_type : XrmQuark;
          version : longint;
          record_size : Cardinal;
          get_values_hook : XtArgsProc;
        end;
      ConstraintClassExtension = ^ConstraintClassExtensionRec;

      _ConstraintClassRec = record
          core_class : CoreClassPart;
          composite_class : CompositeClassPart;
          constraint_class : ConstraintClassPart;
        end;
      ConstraintClassRec = _ConstraintClassRec;
(* error 
externalref ConstraintClassRec constraintClassRec;
 in declarator_list *)
(* error 
#define XtConstraintExtensionVersion 1L
in define line 93 *)
{$endif}



implementation


end.
