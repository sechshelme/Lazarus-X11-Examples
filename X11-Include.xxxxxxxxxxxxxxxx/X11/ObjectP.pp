
unit ObjectP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ObjectP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ObjectP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ObjectP.pp
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
    PObjectClassExtension  = ^ObjectClassExtension;
    PObjectClassExtensionRec  = ^ObjectClassExtensionRec;
    PObjectClassPart  = ^ObjectClassPart;
    PObjectClassRec  = ^ObjectClassRec;
    PObjectRec  = ^ObjectRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _Xt_ObjectP_h_}
{$define _Xt_ObjectP_h_}
{$include <X11/Object.h>}


(* error 
typedef struct _ObjectPart {
in declaration at line 62 *)

      var
        widget_class : TWidgetClass;cvar;public;

        parent : TWidget;cvar;public;

        xrm_name : TXrmName;cvar;public;

        being_destroyed : TBoolean;cvar;public;

        destroy_callbacks : TXtCallbackList;cvar;public;

        constraints : TXtPointer;cvar;public;

(* error 
} ObjectPart;
in declaration at line 69 *)
    type
      PObjectRec = ^TObjectRec;
      TObjectRec = record
          object : TObjectPart;
        end;




































      PObjectClassPart = ^TObjectClassPart;
      TObjectClassPart = record
          superclass : TWidgetClass;
          class_name : TString;
          widget_size : TCardinal;
          class_initialize : TXtProc;
          class_part_initialize : TXtWidgetClassProc;
          class_inited : TXtEnum;
          initialize : TXtInitProc;
          initialize_hook : TXtArgsProc;
          obj1 : TXtProc;
          obj2 : TXtPointer;
          obj3 : TCardinal;
          resources : TXtResourceList;
          num_resources : TCardinal;
          xrm_class : TXrmClass;
          obj4 : TBoolean;
          obj5 : TXtEnum;
          obj6 : TBoolean;
          obj7 : TBoolean;
          destroy : TXtWidgetProc;
          obj8 : TXtProc;
          obj9 : TXtProc;
          set_values : TXtSetValuesFunc;
          set_values_hook : TXtArgsFunc;
          obj10 : TXtProc;
          get_values_hook : TXtArgsProc;
          obj11 : TXtProc;
          version : TXtVersionType;
          callback_private : TXtPointer;
          obj12 : TString;
          obj13 : TXtProc;
          obj14 : TXtProc;
          extension : TXtPointer;
        end;





      PObjectClassExtensionRec = ^TObjectClassExtensionRec;
      TObjectClassExtensionRec = record
          next_extension : TXtPointer;
          record_type : TXrmQuark;
          version : longint;
          record_size : TCardinal;
          allocate : TXtAllocateProc;
          deallocate : TXtDeallocateProc;
        end;
      TObjectClassExtension = PObjectClassExtensionRec;
      PObjectClassExtension = ^TObjectClassExtension;

      PObjectClassRec = ^TObjectClassRec;
      TObjectClassRec = record
          object_class : TObjectClassPart;
        end;
(* error 
externalref ObjectClassRec objectClassRec;
 in declarator_list *)
(* error 
#define XtObjectExtensionVersion 1L
in define line 137 *)

    function XtInheritAllocate : TXtAllocateProc;      

    function XtInheritDeallocate : TXtDeallocateProc;      

{$endif}


implementation

    function XtInheritAllocate : TXtAllocateProc;
      begin
        XtInheritAllocate:=TXtAllocateProc(_XtInherit);
      end;

    function XtInheritDeallocate : TXtDeallocateProc;
      begin
        XtInheritDeallocate:=TXtDeallocateProc(_XtInherit);
      end;


end.
