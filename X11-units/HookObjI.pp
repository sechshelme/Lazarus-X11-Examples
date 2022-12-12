
unit HookObjI;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/HookObjI.h
  The following command line parameters were used:
    /usr/include/X11/HookObjI.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/HookObjI.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XtHookObjI_h}
{$define _XtHookObjI_h}  

(* error 
typedef struct _HookObjRec *HookObject;
in declaration at line 34 *)

    type
      HookObjectClass = ^_HookObjClassRec;
(* error 
externalref WidgetClass hookObjectClass;
 in declarator_list *)



      _HookObjPart = record
          createhook_callbacks : XtCallbackList;
          changehook_callbacks : XtCallbackList;
          confighook_callbacks : XtCallbackList;
          geometryhook_callbacks : XtCallbackList;
          destroyhook_callbacks : XtCallbackList;
          shells : WidgetList;
          num_shells : Cardinal;
          max_shells : Cardinal;
          screen : ^Screen;
        end;
      HookObjPart = _HookObjPart;

      _HookObjRec = record
          object : ObjectPart;
          hooks : HookObjPart;
        end;
      HookObjRec = _HookObjRec;

      _HookObjClassPart = record
          unused : longint;
        end;
      HookObjClassPart = _HookObjClassPart;

      _HookObjClassRec = record
          object_class : ObjectClassPart;
          hook_class : HookObjClassPart;
        end;
      HookObjClassRec = _HookObjClassRec;
(* error 
externalref HookObjClassRec hookObjClassRec;
 in declarator_list *)
{$endif}

(* error 


implementation


end.
