
unit CreateI;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/CreateI.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/CreateI.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/CreateI.pp
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

function _XtCreatePopupShell(name:TString; widget_class:TWidgetClass; parent:TWidget; args:TArgList; num_args:TCardinal; 
               typed_args:TXtTypedArgList; num_typed_args:TCardinal):TWidget;cdecl;external;
function _XtAppCreateShell(name:TString; _class:TString; widget_class:TWidgetClass; display:PDisplay; args:TArgList; 
               num_args:TCardinal; typed_args:TXtTypedArgList; num_typed_args:TCardinal):TWidget;cdecl;external;
function _XtCreateHookObj(screen:PScreen):TWidget;cdecl;external;
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
