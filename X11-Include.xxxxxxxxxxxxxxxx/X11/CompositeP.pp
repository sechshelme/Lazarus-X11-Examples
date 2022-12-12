
unit CompositeP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/CompositeP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/CompositeP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/CompositeP.pp
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
    PCompositeClassExtension  = ^CompositeClassExtension;
    PCompositeClassExtensionRec  = ^CompositeClassExtensionRec;
    PCompositeClassPart  = ^CompositeClassPart;
    PCompositeClassRec  = ^CompositeClassRec;
    PCompositePartPtr  = ^CompositePartPtr;
    PCompositeRec  = ^CompositeRec;
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
        num_children : TCardinal;cvar;public;

        num_slots : TCardinal;cvar;public;

        insert_position : TXtOrderProc;cvar;public;

(* error 
} CompositePart,*CompositePtr;
in declaration at line 66 *)
    type
      PCompositeRec = ^TCompositeRec;
      TCompositeRec = record
          core : TCorePart;
          composite : TCompositePart;
        end;







      PCompositeClassPart = ^TCompositeClassPart;
      TCompositeClassPart = record
          geometry_manager : TXtGeometryHandler;
          change_managed : TXtWidgetProc;
          insert_child : TXtWidgetProc;
          delete_child : TXtWidgetProc;
          extension : TXtPointer;
        end;
      TCompositePartPtr = PCompositeClassPart;
      PCompositePartPtr = ^TCompositePartPtr;





      PCompositeClassExtensionRec = ^TCompositeClassExtensionRec;
      TCompositeClassExtensionRec = record
          next_extension : TXtPointer;
          record_type : TXrmQuark;
          version : longint;
          record_size : TCardinal;
          accepts_objects : TBoolean;
          allows_change_managed_set : TBoolean;
        end;
      TCompositeClassExtension = PCompositeClassExtensionRec;
      PCompositeClassExtension = ^TCompositeClassExtension;

      PCompositeClassRec = ^TCompositeClassRec;
      TCompositeClassRec = record
          core_class : TCoreClassPart;
          composite_class : TCompositeClassPart;
        end;
(* error 
externalref CompositeClassRec compositeClassRec;
 in declarator_list *)
(* error 
#define XtCompositeExtensionVersion 2L
in define line 106 *)

    function XtInheritGeometryManager : TXtGeometryHandler;      

    function XtInheritChangeManaged : TXtWidgetProc;      

    function XtInheritInsertChild : TXtWidgetProc;      

    function XtInheritDeleteChild : TXtWidgetProc;      

{$endif}



implementation

    function XtInheritGeometryManager : TXtGeometryHandler;
      begin
        XtInheritGeometryManager:=TXtGeometryHandler(_XtInherit);
      end;

    function XtInheritChangeManaged : TXtWidgetProc;
      begin
        XtInheritChangeManaged:=TXtWidgetProc(_XtInherit);
      end;

    function XtInheritInsertChild : TXtWidgetProc;
      begin
        XtInheritInsertChild:=TXtWidgetProc(_XtInherit);
      end;

    function XtInheritDeleteChild : TXtWidgetProc;
      begin
        XtInheritDeleteChild:=TXtWidgetProc(_XtInherit);
      end;


end.
