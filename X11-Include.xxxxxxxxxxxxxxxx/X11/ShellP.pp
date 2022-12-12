
unit ShellP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ShellP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ShellP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ShellP.pp
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
    PApplicationShellClassPart  = ^ApplicationShellClassPart;
    PApplicationShellClassRec  = ^ApplicationShellClassRec;
    PApplicationShellPart  = ^ApplicationShellPart;
    PApplicationShellRec  = ^ApplicationShellRec;
    PApplicationShellWidget  = ^ApplicationShellWidget;
    Pchar  = ^char;
    POverrideShellClassPart  = ^OverrideShellClassPart;
    POverrideShellClassRec  = ^OverrideShellClassRec;
    POverrideShellPart  = ^OverrideShellPart;
    POverrideShellRec  = ^OverrideShellRec;
    POverrideShellWidget  = ^OverrideShellWidget;
    PSessionShellClassPart  = ^SessionShellClassPart;
    PSessionShellClassRec  = ^SessionShellClassRec;
    PSessionShellPart  = ^SessionShellPart;
    PSessionShellRec  = ^SessionShellRec;
    PSessionShellWidget  = ^SessionShellWidget;
    PShellClassExtension  = ^ShellClassExtension;
    PShellClassExtensionRec  = ^ShellClassExtensionRec;
    PShellClassRec  = ^ShellClassRec;
    PShellPart  = ^ShellPart;
    PShellRec  = ^ShellRec;
    PShellWidget  = ^ShellWidget;
    PTopLevelShellClassPart  = ^TopLevelShellClassPart;
    PTopLevelShellClassRec  = ^TopLevelShellClassRec;
    PTopLevelShellPart  = ^TopLevelShellPart;
    PTopLevelShellRec  = ^TopLevelShellRec;
    PTopLevelShellWidget  = ^TopLevelShellWidget;
    PTransientShellClassRec  = ^TransientShellClassRec;
    PTransientShellPart  = ^TransientShellPart;
    PTransientShellRec  = ^TransientShellRec;
    PTransientShellWidget  = ^TransientShellWidget;
    PWMShellClassPart  = ^WMShellClassPart;
    PWMShellClassRec  = ^WMShellClassRec;
    PWMShellPart  = ^WMShellPart;
    PWMShellRec  = ^WMShellRec;
    PWMShellWidget  = ^WMShellWidget;
    PXtSaveYourself  = ^XtSaveYourself;
    PXtSaveYourselfRec  = ^XtSaveYourselfRec;
    PXtString  = ^XtString;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XtShellPrivate_h}
{$define _XtShellPrivate_h}
{$include <X11/Shell.h>}



(* error 
typedef struct {
in declaration at line 79 *)

(* error 
} ShellClassPart;
in declaration at line 80 *)




    type
      PShellClassExtensionRec = ^TShellClassExtensionRec;
      TShellClassExtensionRec = record
          next_extension : TXtPointer;
          record_type : TXrmQuark;
          version : longint;
          record_size : TCardinal;
          root_geometry_manager : TXtGeometryHandler;
        end;
      TShellClassExtension = PShellClassExtensionRec;
      PShellClassExtension = ^TShellClassExtension;

    const
      XtShellExtensionVersion = 1;      

    function XtInheritRootGeometryManager : TXtGeometryHandler;      

    type
      PShellClassRec = ^TShellClassRec;
      TShellClassRec = record
          core_class : TCoreClassPart;
          composite_class : TCompositeClassPart;
          shell_class : TShellClassPart;
        end;
(* error 
externalref ShellClassRec shellClassRec;
 in declarator_list *)


(* error 
#define _XtShellPositionValid	((Boolean)(1<<0))
 in member_list *)

      PShellPart = ^TShellPart;
      TShellPart = record
        end;

      PShellRec = ^TShellRec;
      TShellRec = record
          core : TCorePart;
          composite : TCompositePart;
          shell : TShellPart;
        end;
      TShellWidget = PShellRec;
      PShellWidget = ^TShellWidget;




      POverrideShellClassPart = ^TOverrideShellClassPart;
      TOverrideShellClassPart = record
          extension : TXtPointer;
        end;

      POverrideShellClassRec = ^TOverrideShellClassRec;
      TOverrideShellClassRec = record
          core_class : TCoreClassPart;
          composite_class : TCompositeClassPart;
          shell_class : TShellClassPart;
          override_shell_class : TOverrideShellClassPart;
        end;
(* error 
externalref OverrideShellClassRec overrideShellClassRec;
 in declarator_list *)


      POverrideShellPart = ^TOverrideShellPart;
      TOverrideShellPart = record
          frabjous : longint;
        end;

      POverrideShellRec = ^TOverrideShellRec;
      TOverrideShellRec = record
          core : TCorePart;
          composite : TCompositePart;
          shell : TShellPart;
          override : TOverrideShellPart;
        end;
      TOverrideShellWidget = POverrideShellRec;
      POverrideShellWidget = ^TOverrideShellWidget;




      PWMShellClassPart = ^TWMShellClassPart;
      TWMShellClassPart = record
          extension : TXtPointer;
        end;

      PWMShellClassRec = ^TWMShellClassRec;
      TWMShellClassRec = record
          core_class : TCoreClassPart;
          composite_class : TCompositeClassPart;
          shell_class : TShellClassPart;
          wm_shell_class : TWMShellClassPart;
        end;
(* error 
externalref WMShellClassRec wmShellClassRec;
 in declarator_list *)



      PWMShellPart = ^TWMShellPart;
      TWMShellPart = record
          title : Pchar;
          wm_timeout : longint;
          wait_for_wm : TBoolean;
          transient : TBoolean;
          urgency : TBoolean;
          client_leader : TWidget;
          window_role : TString;
          size_hints : record
              flags : longint;
              x : longint;
              y : longint;
              width : longint;
              height : longint;
              min_width : longint;
              min_height : longint;
              max_width : longint;
              max_height : longint;
              width_inc : longint;
              height_inc : longint;
              min_aspect : record
                  x : longint;
                  y : longint;
                end;
              max_aspect : record
                  x : longint;
                  y : longint;
                end;
            end;
          wm_hints : TXWMHints;
          base_width : longint;
          base_height : longint;
          win_gravity : longint;
          title_encoding : TAtom;
        end;

      PWMShellRec = ^TWMShellRec;
      TWMShellRec = record
          core : TCorePart;
          composite : TCompositePart;
          shell : TShellPart;
          wm : TWMShellPart;
        end;
      TWMShellWidget = PWMShellRec;
      PWMShellWidget = ^TWMShellWidget;
{$include <X11/VendorP.h>}


(* error 
typedef struct {
 in declarator_list *)
(* error 
    XtPointer       extension;          /* pointer to extension record      */
 in declarator_list *)

(* error 
} TransientShellClassPart;
in declaration at line 233 *)
    type
      PTransientShellClassRec = ^TTransientShellClassRec;
      TTransientShellClassRec = record
          core_class : TCoreClassPart;
          composite_class : TCompositeClassPart;
          shell_class : TShellClassPart;
          wm_shell_class : TWMShellClassPart;
          vendor_shell_class : TVendorShellClassPart;
          transient_shell_class : TTransientShellClassPart;
        end;
(* error 
externalref TransientShellClassRec transientShellClassRec;
 in declarator_list *)


      PTransientShellPart = ^TTransientShellPart;
      TTransientShellPart = record
          transient_for : TWidget;
        end;

      PTransientShellRec = ^TTransientShellRec;
      TTransientShellRec = record
          core : TCorePart;
          composite : TCompositePart;
          shell : TShellPart;
          wm : TWMShellPart;
          vendor : TVendorShellPart;
          transient : TTransientShellPart;
        end;
      TTransientShellWidget = PTransientShellRec;
      PTransientShellWidget = ^TTransientShellWidget;




      PTopLevelShellClassPart = ^TTopLevelShellClassPart;
      TTopLevelShellClassPart = record
          extension : TXtPointer;
        end;

      PTopLevelShellClassRec = ^TTopLevelShellClassRec;
      TTopLevelShellClassRec = record
          core_class : TCoreClassPart;
          composite_class : TCompositeClassPart;
          shell_class : TShellClassPart;
          wm_shell_class : TWMShellClassPart;
          vendor_shell_class : TVendorShellClassPart;
          top_level_shell_class : TTopLevelShellClassPart;
        end;
(* error 
externalref TopLevelShellClassRec topLevelShellClassRec;
 in declarator_list *)


      PTopLevelShellPart = ^TTopLevelShellPart;
      TTopLevelShellPart = record
          icon_name : Pchar;
          iconic : TBoolean;
          icon_name_encoding : TAtom;
        end;

      PTopLevelShellRec = ^TTopLevelShellRec;
      TTopLevelShellRec = record
          core : TCorePart;
          composite : TCompositePart;
          shell : TShellPart;
          wm : TWMShellPart;
          vendor : TVendorShellPart;
          topLevel : TTopLevelShellPart;
        end;
      TTopLevelShellWidget = PTopLevelShellRec;
      PTopLevelShellWidget = ^TTopLevelShellWidget;




      PApplicationShellClassPart = ^TApplicationShellClassPart;
      TApplicationShellClassPart = record
          extension : TXtPointer;
        end;

      PApplicationShellClassRec = ^TApplicationShellClassRec;
      TApplicationShellClassRec = record
          core_class : TCoreClassPart;
          composite_class : TCompositeClassPart;
          shell_class : TShellClassPart;
          wm_shell_class : TWMShellClassPart;
          vendor_shell_class : TVendorShellClassPart;
          top_level_shell_class : TTopLevelShellClassPart;
          application_shell_class : TApplicationShellClassPart;
        end;
(* error 
externalref ApplicationShellClassRec applicationShellClassRec;
 in declarator_list *)

{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
    type
      PApplicationShellPart = ^TApplicationShellPart;
      TApplicationShellPart = record
          c_class : Pchar;
          _class : Pchar;
          xrm_class : TXrmClass;
          argc : longint;
          argv : PXtString;
        end;

      PApplicationShellRec = ^TApplicationShellRec;
      TApplicationShellRec = record
          core : TCorePart;
          composite : TCompositePart;
          shell : TShellPart;
          wm : TWMShellPart;
          vendor : TVendorShellPart;
          topLevel : TTopLevelShellPart;
          application : TApplicationShellPart;
        end;
      TApplicationShellWidget = PApplicationShellRec;
      PApplicationShellWidget = ^TApplicationShellWidget;




      PSessionShellClassPart = ^TSessionShellClassPart;
      TSessionShellClassPart = record
          extension : TXtPointer;
        end;

      PSessionShellClassRec = ^TSessionShellClassRec;
      TSessionShellClassRec = record
          core_class : TCoreClassPart;
          composite_class : TCompositeClassPart;
          shell_class : TShellClassPart;
          wm_shell_class : TWMShellClassPart;
          vendor_shell_class : TVendorShellClassPart;
          top_level_shell_class : TTopLevelShellClassPart;
          application_shell_class : TApplicationShellClassPart;
          session_shell_class : TSessionShellClassPart;
        end;
(* error 
externalref SessionShellClassRec sessionShellClassRec;
 in declarator_list *)

      PXtSaveYourself = ^TXtSaveYourself;
      TXtSaveYourself = PXtSaveYourselfRec;



      PSessionShellPart = ^TSessionShellPart;
      TSessionShellPart = record
          connection : TSmcConn;
          session_id : TXtString;
          restart_command : PXtString;
          clone_command : PXtString;
          discard_command : PXtString;
          resign_command : PXtString;
          shutdown_command : PXtString;
          environment : PXtString;
          current_dir : TXtString;
          program_path : TString;
          restart_style : byte;
          checkpoint_state : byte;
          join_session : TBoolean;
          save_callbacks : TXtCallbackList;
          interact_callbacks : TXtCallbackList;
          cancel_callbacks : TXtCallbackList;
          save_complete_callbacks : TXtCallbackList;
          die_callbacks : TXtCallbackList;
          error_callbacks : TXtCallbackList;
          save : TXtSaveYourself;
          input_id : TXtInputId;
          ses20 : TXtPointer;
          ses19 : TXtPointer;
          ses18 : TXtPointer;
          ses17 : TXtPointer;
          ses16 : TXtPointer;
          ses15 : TXtPointer;
          ses14 : TXtPointer;
          ses13 : TXtPointer;
          ses12 : TXtPointer;
          ses11 : TXtPointer;
          ses10 : TXtPointer;
          ses9 : TXtPointer;
          ses8 : TXtPointer;
          ses7 : TXtPointer;
          ses6 : TXtPointer;
          ses5 : TXtPointer;
          ses4 : TXtPointer;
          ses3 : TXtPointer;
          ses2 : TXtPointer;
          ses1 : TXtPointer;
        end;

      PSessionShellRec = ^TSessionShellRec;
      TSessionShellRec = record
          core : TCorePart;
          composite : TCompositePart;
          shell : TShellPart;
          wm : TWMShellPart;
          vendor : TVendorShellPart;
          topLevel : TTopLevelShellPart;
          application : TApplicationShellPart;
          session : TSessionShellPart;
        end;
      TSessionShellWidget = PSessionShellRec;
      PSessionShellWidget = ^TSessionShellWidget;
{$endif}

(* error 
#endif /* _XtShellPrivate_h */

implementation

    function XtInheritRootGeometryManager : TXtGeometryHandler;
      begin
        XtInheritRootGeometryManager:=TXtGeometryHandler(_XtInherit);
      end;


end.
