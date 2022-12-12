
unit ToggleP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/ToggleP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/ToggleP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/ToggleP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawToggleP_h}
{$define _XawToggleP_h}  
{$include <X11/Xaw/Toggle.h>}
{$include <X11/Xaw/CommandP.h>}


  function streq(a,b : longint) : longint;  




  type
    _RadioGroup = record
        prev : ^_RadioGroup;
        next : ^_RadioGroup;
        widget : Widget;
      end;
    RadioGroup = _RadioGroup;


    _ToggleClass = record
        Set : XtActionProc;
        Unset : XtActionProc;
        extension : XtPointer;
      end;
    ToggleClassPart = _ToggleClass;


    _ToggleClassRec = record
        core_class : CoreClassPart;
        simple_class : SimpleClassPart;
        label_class : LabelClassPart;
        command_class : CommandClassPart;
        toggle_class : ToggleClassPart;
      end;
    ToggleClassRec = _ToggleClassRec;

    var
      toggleClassRec : ToggleClassRec;cvar;external;



{$ifndef OLDXAW}

{$endif}

  type
    TogglePart = record
        widget : Widget;
        radio_data : XtPointer;
        radio_group : ^RadioGroup;
        pad : array[0..3] of XtPointer;
      end;


    _ToggleRec = record
        core : CorePart;
        simple : SimplePart;
        _label : LabelPart;
        command : CommandPart;
        toggle : TogglePart;
      end;
    ToggleRec = _ToggleRec;
{$endif}


implementation

  function streq(a,b : longint) : longint;
  begin
    streq:=(strcmp(a,b))=0;
  end;


end.
