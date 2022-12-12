
unit Toggle;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/Toggle.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/Toggle.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/Toggle.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawToggle_h}
{$define _XawToggle_h}  
{$include <X11/Xaw/Command.h>}



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
void XawToggleChangeRadioGroup
in declaration at line 124 *)


    function XawToggleGetCurrent(radio_group:Widget):XtPointer;


    procedure XawToggleSetCurrent(radio_group:Widget; radio_data:XtPointer);


    procedure XawToggleUnsetCurrent(radio_group:Widget);

{$endif}

(* error 
#endif /* _XawToggle_h */

implementation

    function XawToggleGetCurrent(radio_group:Widget):XtPointer;
    begin
      { You must implement this function }
    end;
    procedure XawToggleSetCurrent(radio_group:Widget; radio_data:XtPointer);
    begin
      { You must implement this function }
    end;
    procedure XawToggleUnsetCurrent(radio_group:Widget);
    begin
      { You must implement this function }
    end;

end.
