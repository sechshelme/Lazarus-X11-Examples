
unit RepeaterP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/RepeaterP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/RepeaterP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/RepeaterP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawRepeaterP_h}
{$define _XawRepeaterP_h}  
{$include <X11/Xaw/CommandP.h>}
{$include <X11/Xaw/Repeater.h>}


  type
    RepeaterClassPart = record
        extension : XtPointer;
      end;


    _RepeaterClassRec = record
        core_class : CoreClassPart;
        simple_class : SimpleClassPart;
        label_class : LabelClassPart;
        command_class : CommandClassPart;
        repeater_class : RepeaterClassPart;
      end;
    RepeaterClassRec = _RepeaterClassRec;











{$ifndef OLDXAW}

{$endif}

  type
    RepeaterPart = record
        initial_delay : longint;
        repeat_delay : longint;
        minimum_delay : longint;
        decay : longint;
        flash : Boolean;
        start_callbacks : XtCallbackList;
        stop_callbacks : XtCallbackList;
        next_delay : longint;
        timer : XtIntervalId;
        pad : array[0..3] of XtPointer;
      end;

    _RepeaterRec = record
        core : CorePart;
        simple : SimplePart;
        _label : LabelPart;
        command : CommandPart;
        repeater : RepeaterPart;
      end;
    RepeaterRec = _RepeaterRec;


  const
    REP_DEF_DECAY = 5;    
    REP_DEF_INITIAL_DELAY = 200;    
    REP_DEF_MINIMUM_DELAY = 10;    
    REP_DEF_REPEAT_DELAY = 50;    

    var
      repeaterClassRec : RepeaterClassRec;cvar;external;
{$endif}


implementation


end.
