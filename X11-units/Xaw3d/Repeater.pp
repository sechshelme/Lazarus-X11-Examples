
unit Repeater;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/Repeater.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/Repeater.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/Repeater.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawRepeater_h}
{$define _XawRepeater_h}  
{$include <X11/Xaw3d/Command.h>}



  const
    XtNdecay = 'decay';    
    XtCDecay = 'Decay';    
    XtNinitialDelay = 'initialDelay';    
    XtCDelay = 'Delay';    
    XtNminimumDelay = 'minimumDelay';    
    XtCMinimumDelay = 'MinimumDelay';    
    XtNrepeatDelay = 'repeatDelay';    
    XtNflash = 'flash';    
    XtNstartCallback = 'startCallback';    
    XtCStartCallback = 'StartCallback';    
    XtNstopCallback = 'stopCallback';    
    XtCStopCallback = 'StopCallback';    


    var
      repeaterWidgetClass : WidgetClass;cvar;external;

  type
    RepeaterWidgetClass = ^_RepeaterClassRec;

    RepeaterWidget = ^_RepeaterRec;
{$endif}


implementation


end.
