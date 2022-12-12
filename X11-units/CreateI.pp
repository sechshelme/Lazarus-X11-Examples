
unit CreateI;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/CreateI.h
  The following command line parameters were used:
    /usr/include/X11/CreateI.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/CreateI.pp
}

    Type
    PDisplay  = ^Display;
    PScreen  = ^Screen;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{$ifndef _XtcreateI_h}
{$define _XtcreateI_h}  
(* error 
extern Widget _XtCreateWidget(String name, WidgetClass widget_class,
in declaration at line 9 *)

    function _XtCreatePopupShell(name:String; widget_class:WidgetClass; parent:Widget; args:ArgList; num_args:Cardinal; 
               typed_args:XtTypedArgList; num_typed_args:Cardinal):Widget;cdecl;

    function _XtAppCreateShell(name:String; _class:String; widget_class:WidgetClass; display:PDisplay; args:ArgList; 
               num_args:Cardinal; typed_args:XtTypedArgList; num_typed_args:Cardinal):Widget;cdecl;

    function _XtCreateHookObj(screen:PScreen):Widget;cdecl;

{$include <stdarg.h>}

(* error 
extern Widget _XtVaOpenApplication(XtAppContext *app_context_return,
(* error 
			_Xconst char* application_class,
(* error 
			XrmOptionDescList options, Cardinal num_options,
(* error 
			XrmOptionDescList options, Cardinal num_options,
(* error 
			int *argc_in_out, _XtString *argv_in_out,
(* error 
			int *argc_in_out, _XtString *argv_in_out,
(* error 
			String *fallback_resources, WidgetClass widget_class,
(* error 
			String *fallback_resources, WidgetClass widget_class,
(* error 
			va_list var_args);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
			_Xconst char* application_class,
(* error 
			XrmOptionDescList options, Cardinal num_options,
(* error 
			XrmOptionDescList options, Cardinal num_options,
(* error 
			int *argc_in_out, _XtString *argv_in_out,
(* error 
			int *argc_in_out, _XtString *argv_in_out,
(* error 
			String *fallback_resources, va_list var_args);
(* error 
			String *fallback_resources, va_list var_args);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
{$endif}

(* error 
#endif /* _XtcreateI_h */

implementation


end.
