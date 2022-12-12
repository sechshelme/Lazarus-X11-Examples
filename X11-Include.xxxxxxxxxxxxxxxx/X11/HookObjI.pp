
unit HookObjI;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/HookObjI.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/HookObjI.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/HookObjI.pp
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
    PHookObjClassPart  = ^HookObjClassPart;
    PHookObjClassRec  = ^HookObjClassRec;
    PHookObjectClass  = ^HookObjectClass;
    PHookObjPart  = ^HookObjPart;
    PHookObjRec  = ^HookObjRec;
    PScreen  = ^Screen;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XtHookObjI_h}
{$define _XtHookObjI_h}

(* error 
typedef struct _HookObjRec *HookObject;
in declaration at line 34 *)
    type
      PHookObjectClass = ^THookObjectClass;
      THookObjectClass = PHookObjClassRec;
(* error 
externalref WidgetClass hookObjectClass;
 in declarator_list *)



      PHookObjPart = ^THookObjPart;
      THookObjPart = record
          createhook_callbacks : TXtCallbackList;
          changehook_callbacks : TXtCallbackList;
          confighook_callbacks : TXtCallbackList;
          geometryhook_callbacks : TXtCallbackList;
          destroyhook_callbacks : TXtCallbackList;
          shells : TWidgetList;
          num_shells : TCardinal;
          max_shells : TCardinal;
          screen : PScreen;
        end;

      PHookObjRec = ^THookObjRec;
      THookObjRec = record
          object : TObjectPart;
          hooks : THookObjPart;
        end;

      PHookObjClassPart = ^THookObjClassPart;
      THookObjClassPart = record
          unused : longint;
        end;

      PHookObjClassRec = ^THookObjClassRec;
      THookObjClassRec = record
          object_class : TObjectClassPart;
          hook_class : THookObjClassPart;
        end;
(* error 
externalref HookObjClassRec hookObjClassRec;
 in declarator_list *)
{$endif}

(* error 


implementation


end.
