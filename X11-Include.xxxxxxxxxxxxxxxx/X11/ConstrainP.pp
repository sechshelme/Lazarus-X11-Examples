
unit ConstrainP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ConstrainP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ConstrainP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ConstrainP.pp
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
    PConstraintClassExtension  = ^ConstraintClassExtension;
    PConstraintClassExtensionRec  = ^ConstraintClassExtensionRec;
    PConstraintClassPart  = ^ConstraintClassPart;
    PConstraintClassRec  = ^ConstraintClassRec;
    PConstraintRec  = ^ConstraintRec;
    PConstraintWidget  = ^ConstraintWidget;
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
      PConstraintRec = ^TConstraintRec;
      TConstraintRec = record
          core : TCorePart;
          composite : TCompositePart;
          constraint : TConstraintPart;
        end;
      TConstraintWidget = PConstraintRec;
      PConstraintWidget = ^TConstraintWidget;








      PConstraintClassPart = ^TConstraintClassPart;
      TConstraintClassPart = record
          resources : TXtResourceList;
          num_resources : TCardinal;
          constraint_size : TCardinal;
          initialize : TXtInitProc;
          destroy : TXtWidgetProc;
          set_values : TXtSetValuesFunc;
          extension : TXtPointer;
        end;





      PConstraintClassExtensionRec = ^TConstraintClassExtensionRec;
      TConstraintClassExtensionRec = record
          next_extension : TXtPointer;
          record_type : TXrmQuark;
          version : longint;
          record_size : TCardinal;
          get_values_hook : TXtArgsProc;
        end;
      TConstraintClassExtension = PConstraintClassExtensionRec;
      PConstraintClassExtension = ^TConstraintClassExtension;

      PConstraintClassRec = ^TConstraintClassRec;
      TConstraintClassRec = record
          core_class : TCoreClassPart;
          composite_class : TCompositeClassPart;
          constraint_class : TConstraintClassPart;
        end;
(* error 
externalref ConstraintClassRec constraintClassRec;
 in declarator_list *)
(* error 
#define XtConstraintExtensionVersion 1L
in define line 93 *)
{$endif}



implementation


end.
