
unit ObjectP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/ObjectP.h
  The following command line parameters were used:
    /usr/include/X11/ObjectP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/ObjectP.pp
}

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
        widget_class : WidgetClass;cvar;public;

        parent : Widget;cvar;public;

        xrm_name : XrmName;cvar;public;

        being_destroyed : Boolean;cvar;public;

        destroy_callbacks : XtCallbackList;cvar;public;

        constraints : XtPointer;cvar;public;

(* error 
} ObjectPart;
in declaration at line 69 *)

    type
      _ObjectRec = record
          object : ObjectPart;
        end;
      ObjectRec = _ObjectRec;




































      _ObjectClassPart = record
          superclass : WidgetClass;
          class_name : String;
          widget_size : Cardinal;
          class_initialize : XtProc;
          class_part_initialize : XtWidgetClassProc;
          class_inited : XtEnum;
          initialize : XtInitProc;
          initialize_hook : XtArgsProc;
          obj1 : XtProc;
          obj2 : XtPointer;
          obj3 : Cardinal;
          resources : XtResourceList;
          num_resources : Cardinal;
          xrm_class : XrmClass;
          obj4 : Boolean;
          obj5 : XtEnum;
          obj6 : Boolean;
          obj7 : Boolean;
          destroy : XtWidgetProc;
          obj8 : XtProc;
          obj9 : XtProc;
          set_values : XtSetValuesFunc;
          set_values_hook : XtArgsFunc;
          obj10 : XtProc;
          get_values_hook : XtArgsProc;
          obj11 : XtProc;
          version : XtVersionType;
          callback_private : XtPointer;
          obj12 : String;
          obj13 : XtProc;
          obj14 : XtProc;
          extension : XtPointer;
        end;
      ObjectClassPart = _ObjectClassPart;





      ObjectClassExtensionRec = record
          next_extension : XtPointer;
          record_type : XrmQuark;
          version : longint;
          record_size : Cardinal;
          allocate : XtAllocateProc;
          deallocate : XtDeallocateProc;
        end;
      ObjectClassExtension = ^ObjectClassExtensionRec;

      _ObjectClassRec = record
          object_class : ObjectClassPart;
        end;
      ObjectClassRec = _ObjectClassRec;
(* error 
externalref ObjectClassRec objectClassRec;
 in declarator_list *)
(* error 
#define XtObjectExtensionVersion 1L
in define line 137 *)

    function XtInheritAllocate : XtAllocateProc;      

    function XtInheritDeallocate : XtDeallocateProc;      

{$endif}


implementation

    function XtInheritAllocate : XtAllocateProc;
      begin
        XtInheritAllocate:=XtAllocateProc(_XtInherit);
      end;

    function XtInheritDeallocate : XtDeallocateProc;
      begin
        XtInheritDeallocate:=XtDeallocateProc(_XtInherit);
      end;


end.
