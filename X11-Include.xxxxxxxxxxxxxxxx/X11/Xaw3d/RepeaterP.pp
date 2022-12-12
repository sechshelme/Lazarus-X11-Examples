
unit RepeaterP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/RepeaterP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/RepeaterP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/RepeaterP.pp
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
PRepeaterClassPart  = ^RepeaterClassPart;
PRepeaterClassRec  = ^RepeaterClassRec;
PRepeaterPart  = ^RepeaterPart;
PRepeaterRec  = ^RepeaterRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawRepeaterP_h}
{$define _XawRepeaterP_h}
{$include <X11/Xaw3d/CommandP.h>}
{$include <X11/Xaw3d/Repeater.h>}

type
  PRepeaterClassPart = ^TRepeaterClassPart;
  TRepeaterClassPart = record
      dummy : longint;
    end;


  PRepeaterClassRec = ^TRepeaterClassRec;
  TRepeaterClassRec = record
      core_class : TCoreClassPart;
      simple_class : TSimpleClassPart;
      threeD_class : TThreeDClassPart;
      label_class : TLabelClassPart;
      command_class : TCommandClassPart;
      repeater_class : TRepeaterClassPart;
    end;













  PRepeaterPart = ^TRepeaterPart;
  TRepeaterPart = record
      initial_delay : longint;
      repeat_delay : longint;
      minimum_delay : longint;
      decay : longint;
      flash : TBoolean;
      start_callbacks : TXtCallbackList;
      stop_callbacks : TXtCallbackList;
      next_delay : longint;
      timer : TXtIntervalId;
    end;

  PRepeaterRec = ^TRepeaterRec;
  TRepeaterRec = record
      core : TCorePart;
      simple : TSimplePart;
      threeD : TThreeDPart;
      _label : TLabelPart;
      command : TCommandPart;
      repeater : TRepeaterPart;
    end;


const
  REP_DEF_DECAY = 5;  

  REP_DEF_INITIAL_DELAY = 200;  

  REP_DEF_MINIMUM_DELAY = 10;  

  REP_DEF_REPEAT_DELAY = 50;  

  var
    repeaterClassRec : TRepeaterClassRec;cvar;external;
{$endif}


implementation


end.
