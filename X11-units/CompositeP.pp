
unit CompositeP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/CompositeP.h
  The following command line parameters were used:
    /usr/include/X11/CompositeP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/CompositeP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XtCompositeP_h}
{$define _XtCompositeP_h}  
{$include <X11/Composite.h>}

(* error 
typedef struct _CompositePart {
in declaration at line 62 *)


      var
        num_children : Cardinal;cvar;public;

        num_slots : Cardinal;cvar;public;

        insert_position : XtOrderProc;cvar;public;

(* error 
} CompositePart,*CompositePtr;
in declaration at line 66 *)

    type
      _CompositeRec = record
          core : CorePart;
          composite : CompositePart;
        end;
      CompositeRec = _CompositeRec;







      _CompositeClassPart = record
          geometry_manager : XtGeometryHandler;
          change_managed : XtWidgetProc;
          insert_child : XtWidgetProc;
          delete_child : XtWidgetProc;
          extension : XtPointer;
        end;
      CompositeClassPart = _CompositeClassPart;
      CompositePartPtr = ^_CompositeClassPart;





      CompositeClassExtensionRec = record
          next_extension : XtPointer;
          record_type : XrmQuark;
          version : longint;
          record_size : Cardinal;
          accepts_objects : Boolean;
          allows_change_managed_set : Boolean;
        end;
      CompositeClassExtension = ^CompositeClassExtensionRec;

      _CompositeClassRec = record
          core_class : CoreClassPart;
          composite_class : CompositeClassPart;
        end;
      CompositeClassRec = _CompositeClassRec;
(* error 
externalref CompositeClassRec compositeClassRec;
 in declarator_list *)
(* error 
#define XtCompositeExtensionVersion 2L
in define line 106 *)

    function XtInheritGeometryManager : XtGeometryHandler;      

    function XtInheritChangeManaged : XtWidgetProc;      

    function XtInheritInsertChild : XtWidgetProc;      

    function XtInheritDeleteChild : XtWidgetProc;      

{$endif}



implementation

    function XtInheritGeometryManager : XtGeometryHandler;
      begin
        XtInheritGeometryManager:=XtGeometryHandler(_XtInherit);
      end;

    function XtInheritChangeManaged : XtWidgetProc;
      begin
        XtInheritChangeManaged:=XtWidgetProc(_XtInherit);
      end;

    function XtInheritInsertChild : XtWidgetProc;
      begin
        XtInheritInsertChild:=XtWidgetProc(_XtInherit);
      end;

    function XtInheritDeleteChild : XtWidgetProc;
      begin
        XtInheritDeleteChild:=XtWidgetProc(_XtInherit);
      end;


end.
