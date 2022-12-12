
unit ResConfigP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/ResConfigP.h
  The following command line parameters were used:
    /usr/include/X11/ResConfigP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/ResConfigP.pp
}

    Type
    PXEvent  = ^XEvent;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _RESCONFIGP_H}
{$define _RESCONFIGP_H}  
{$include <X11/Xfuncproto.h>}

(* error 
#define RCM_DATA "Custom Data"
in define line 65 *)

    const
      RCM_INIT = 'Custom Init';      


    procedure _XtResourceConfigurationEH(_para1:Widget; _para2:XtPointer; _para3:PXEvent);cdecl;

{$endif}
(* error 
#endif

implementation


end.
