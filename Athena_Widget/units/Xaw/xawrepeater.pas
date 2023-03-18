unit XawRepeater;

interface

uses
  XTIntrinsic;

const
  libXaw = 'libXaw.so';

// {$include <X11/Xaw/Command.h>}
{****************************************************************************
 *
 * Repeater Widget (subclass of Command)
 *
 * This widget is a push button that repeatedly fires when held down
 *
 * Parameters:
 *
 *  Name		Class		Type		Default
 *  ----		-----		----		-------
 *
 *  decay		Decay		int		5 milliseconds
 *  flash		Boolean		Boolean		FALSE
 *  initialDelay	Delay		int		200 milliseconds
 *  minimumDelay	MinimumDelay	int		10 milliseconds
 *  repeatDelay		Delay		int		50 milliseconds
 *  startCallback	StartCallback	XtCallbackList	NULL
 *  stopCallback	StopCallback	XtCallbackList	NULL
 *
 **************************************************************************** }

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
    repeaterWidgetClass : TWidgetClass;cvar;external libXaw;

//type
//  PRepeaterWidgetClass = ^TRepeaterWidgetClass;
//  TRepeaterWidgetClass = PRepeaterClassRec;
//
//  PRepeaterWidget = ^TRepeaterWidget;
//  TRepeaterWidget = PRepeaterRec;


implementation


end.
