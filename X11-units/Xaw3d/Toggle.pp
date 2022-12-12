
unit Toggle;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/Toggle.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/Toggle.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/Toggle.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawToggle_h}
{$define _XawToggle_h}  

{$include <X11/Xaw3d/Command.h>}



  const
    XtCWidget = 'Widget';    
    XtCState = 'State';    
    XtCRadioGroup = 'RadioGroup';    
    XtCRadioData = 'RadioData';    
{$ifndef _XtStringDefs_h_}

  const
    XtRWidget = 'Widget';    
{$endif}

  const
    XtNstate = 'state';    
    XtNradioGroup = 'radioGroup';    
    XtNradioData = 'radioData';    

    var
      toggleWidgetClass : WidgetClass;cvar;external;

  type
    ToggleWidgetClass = ^_ToggleClassRec;

    ToggleWidget = ^_ToggleRec;


(* error 
extern void XawToggleChangeRadioGroup(
{$if NeedFunctionPrototypes}

{$endif}
in declaration at line 133 *)

{$if NeedFunctionPrototypes}

{$endif}

    function XawToggleGetCurrent(_para1:Widget):XtPointer;cdecl;


{$if NeedFunctionPrototypes}

{$endif}

    procedure XawToggleSetCurrent(_para1:Widget; _para2:XtPointer);cdecl;


{$if NeedFunctionPrototypes}

{$endif}

    procedure XawToggleUnsetCurrent(_para1:Widget);cdecl;

{$endif}

(* error 
#endif /* _XawToggle_h */

implementation


end.
