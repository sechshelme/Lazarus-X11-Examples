
unit ShellP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/ShellP.h
  The following command line parameters were used:
    /usr/include/X11/ShellP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/ShellP.pp
}

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
      ShellClassExtensionRec = record
          next_extension : XtPointer;
          record_type : XrmQuark;
          version : longint;
          record_size : Cardinal;
          root_geometry_manager : XtGeometryHandler;
        end;
      ShellClassExtension = ^ShellClassExtensionRec;

    const
      XtShellExtensionVersion = 1;      

    function XtInheritRootGeometryManager : XtGeometryHandler;      


    type
      _ShellClassRec = record
          core_class : CoreClassPart;
          composite_class : CompositeClassPart;
          shell_class : ShellClassPart;
        end;
      ShellClassRec = _ShellClassRec;
(* error 
externalref ShellClassRec shellClassRec;
 in declarator_list *)


(* error 
#define _XtShellPositionValid	((Boolean)(1<<0))
 in member_list *)

      ShellPart = record
        end;

      ShellRec = record
          core : CorePart;
          composite : CompositePart;
          shell : ShellPart;
        end;
      ShellWidget = ^ShellRec;




      OverrideShellClassPart = record
          extension : XtPointer;
        end;

      _OverrideShellClassRec = record
          core_class : CoreClassPart;
          composite_class : CompositeClassPart;
          shell_class : ShellClassPart;
          override_shell_class : OverrideShellClassPart;
        end;
      OverrideShellClassRec = _OverrideShellClassRec;
(* error 
externalref OverrideShellClassRec overrideShellClassRec;
 in declarator_list *)


      OverrideShellPart = record
          frabjous : longint;
        end;

      OverrideShellRec = record
          core : CorePart;
          composite : CompositePart;
          shell : ShellPart;
          override : OverrideShellPart;
        end;
      OverrideShellWidget = ^OverrideShellRec;




      WMShellClassPart = record
          extension : XtPointer;
        end;

      _WMShellClassRec = record
          core_class : CoreClassPart;
          composite_class : CompositeClassPart;
          shell_class : ShellClassPart;
          wm_shell_class : WMShellClassPart;
        end;
      WMShellClassRec = _WMShellClassRec;
(* error 
externalref WMShellClassRec wmShellClassRec;
 in declarator_list *)



      WMShellPart = record
          title : ^char;
          wm_timeout : longint;
          wait_for_wm : Boolean;
          transient : Boolean;
          urgency : Boolean;
          client_leader : Widget;
          window_role : String;
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
          wm_hints : XWMHints;
          base_width : longint;
          base_height : longint;
          win_gravity : longint;
          title_encoding : Atom;
        end;

      WMShellRec = record
          core : CorePart;
          composite : CompositePart;
          shell : ShellPart;
          wm : WMShellPart;
        end;
      WMShellWidget = ^WMShellRec;
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
      _TransientShellClassRec = record
          core_class : CoreClassPart;
          composite_class : CompositeClassPart;
          shell_class : ShellClassPart;
          wm_shell_class : WMShellClassPart;
          vendor_shell_class : VendorShellClassPart;
          transient_shell_class : TransientShellClassPart;
        end;
      TransientShellClassRec = _TransientShellClassRec;
(* error 
externalref TransientShellClassRec transientShellClassRec;
 in declarator_list *)


      TransientShellPart = record
          transient_for : Widget;
        end;

      TransientShellRec = record
          core : CorePart;
          composite : CompositePart;
          shell : ShellPart;
          wm : WMShellPart;
          vendor : VendorShellPart;
          transient : TransientShellPart;
        end;
      TransientShellWidget = ^TransientShellRec;




      TopLevelShellClassPart = record
          extension : XtPointer;
        end;

      _TopLevelShellClassRec = record
          core_class : CoreClassPart;
          composite_class : CompositeClassPart;
          shell_class : ShellClassPart;
          wm_shell_class : WMShellClassPart;
          vendor_shell_class : VendorShellClassPart;
          top_level_shell_class : TopLevelShellClassPart;
        end;
      TopLevelShellClassRec = _TopLevelShellClassRec;
(* error 
externalref TopLevelShellClassRec topLevelShellClassRec;
 in declarator_list *)


      TopLevelShellPart = record
          icon_name : ^char;
          iconic : Boolean;
          icon_name_encoding : Atom;
        end;

      TopLevelShellRec = record
          core : CorePart;
          composite : CompositePart;
          shell : ShellPart;
          wm : WMShellPart;
          vendor : VendorShellPart;
          topLevel : TopLevelShellPart;
        end;
      TopLevelShellWidget = ^TopLevelShellRec;




      ApplicationShellClassPart = record
          extension : XtPointer;
        end;

      _ApplicationShellClassRec = record
          core_class : CoreClassPart;
          composite_class : CompositeClassPart;
          shell_class : ShellClassPart;
          wm_shell_class : WMShellClassPart;
          vendor_shell_class : VendorShellClassPart;
          top_level_shell_class : TopLevelShellClassPart;
          application_shell_class : ApplicationShellClassPart;
        end;
      ApplicationShellClassRec = _ApplicationShellClassRec;
(* error 
externalref ApplicationShellClassRec applicationShellClassRec;
 in declarator_list *)

{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

    type
      ApplicationShellPart = record
          c_class : ^char;
          _class : ^char;
          xrm_class : XrmClass;
          argc : longint;
          argv : ^_XtString;
        end;

      ApplicationShellRec = record
          core : CorePart;
          composite : CompositePart;
          shell : ShellPart;
          wm : WMShellPart;
          vendor : VendorShellPart;
          topLevel : TopLevelShellPart;
          application : ApplicationShellPart;
        end;
      ApplicationShellWidget = ^ApplicationShellRec;




      SessionShellClassPart = record
          extension : XtPointer;
        end;

      _SessionShellClassRec = record
          core_class : CoreClassPart;
          composite_class : CompositeClassPart;
          shell_class : ShellClassPart;
          wm_shell_class : WMShellClassPart;
          vendor_shell_class : VendorShellClassPart;
          top_level_shell_class : TopLevelShellClassPart;
          application_shell_class : ApplicationShellClassPart;
          session_shell_class : SessionShellClassPart;
        end;
      SessionShellClassRec = _SessionShellClassRec;
(* error 
externalref SessionShellClassRec sessionShellClassRec;
 in declarator_list *)

      XtSaveYourself = ^_XtSaveYourselfRec;



      SessionShellPart = record
          connection : SmcConn;
          session_id : _XtString;
          restart_command : ^_XtString;
          clone_command : ^_XtString;
          discard_command : ^_XtString;
          resign_command : ^_XtString;
          shutdown_command : ^_XtString;
          environment : ^_XtString;
          current_dir : _XtString;
          program_path : String;
          restart_style : byte;
          checkpoint_state : byte;
          join_session : Boolean;
          save_callbacks : XtCallbackList;
          interact_callbacks : XtCallbackList;
          cancel_callbacks : XtCallbackList;
          save_complete_callbacks : XtCallbackList;
          die_callbacks : XtCallbackList;
          error_callbacks : XtCallbackList;
          save : XtSaveYourself;
          input_id : XtInputId;
          ses20 : XtPointer;
          ses19 : XtPointer;
          ses18 : XtPointer;
          ses17 : XtPointer;
          ses16 : XtPointer;
          ses15 : XtPointer;
          ses14 : XtPointer;
          ses13 : XtPointer;
          ses12 : XtPointer;
          ses11 : XtPointer;
          ses10 : XtPointer;
          ses9 : XtPointer;
          ses8 : XtPointer;
          ses7 : XtPointer;
          ses6 : XtPointer;
          ses5 : XtPointer;
          ses4 : XtPointer;
          ses3 : XtPointer;
          ses2 : XtPointer;
          ses1 : XtPointer;
        end;

      SessionShellRec = record
          core : CorePart;
          composite : CompositePart;
          shell : ShellPart;
          wm : WMShellPart;
          vendor : VendorShellPart;
          topLevel : TopLevelShellPart;
          application : ApplicationShellPart;
          session : SessionShellPart;
        end;
      SessionShellWidget = ^SessionShellRec;
{$endif}

(* error 
#endif /* _XtShellPrivate_h */

implementation

    function XtInheritRootGeometryManager : XtGeometryHandler;
      begin
        XtInheritRootGeometryManager:=XtGeometryHandler(_XtInherit);
      end;


end.
