
unit Repeater;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Repeater.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Repeater.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Repeater.pp
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
PRepeaterClassRec  = ^RepeaterClassRec;
PRepeaterRec  = ^RepeaterRec;
PRepeaterWidget  = ^RepeaterWidget;
PRepeaterWidgetClass  = ^RepeaterWidgetClass;
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
    repeaterWidgetClass : TWidgetClass;cvar;external;
type
  PRepeaterWidgetClass = ^TRepeaterWidgetClass;
  TRepeaterWidgetClass = PRepeaterClassRec;

  PRepeaterWidget = ^TRepeaterWidget;
  TRepeaterWidget = PRepeaterRec;
{$endif}


implementation


end.
