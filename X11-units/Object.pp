
unit Object;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Object.h
  The following command line parameters were used:
    /usr/include/X11/Object.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Object.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XtObject_h}
{$define _XtObject_h}  
(* error 
typedef struct _ObjectRec *Object;
in declaration at line 53 *)

    type
      ObjectClass = ^_ObjectClassRec;
{$ifndef VMS}
(* error 
externalref WidgetClass objectClass;
 in declarator_list *)
{$endif}
{$endif}


(* error 
/* DON'T ADD STUFF AFTER THIS #endif */

implementation


end.
