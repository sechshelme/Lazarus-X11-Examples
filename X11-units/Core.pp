
unit Core;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Core.h
  The following command line parameters were used:
    /usr/include/X11/Core.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Core.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XtCore_h}
{$define _XtCore_h}  
(* error 
typedef struct _WidgetClassRec *CoreWidgetClass;
in declaration at line 53 *)

    type
      CoreWidget = ^_WidgetRec;
(* error 
externalref WidgetClass coreWidgetClass;
 in declarator_list *)
{$ifndef VMS}
(* error 
externalref WidgetClass widgetClass;
 in declarator_list *)
{$endif}
{$endif}


(* error 
/* DON'T ADD STUFF AFTER THIS #endif */    *)

implementation


end.
