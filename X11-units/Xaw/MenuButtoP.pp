
unit MenuButtoP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/MenuButtoP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/MenuButtoP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/MenuButtoP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawMenuButtonP_h}
{$define _XawMenuButtonP_h}  
{$include <X11/Xaw/MenuButton.h>}
{$include <X11/Xaw/CommandP.h>}


  type
    _MenuButtonClass = record
        extension : XtPointer;
      end;
    MenuButtonClassPart = _MenuButtonClass;


    _MenuButtonClassRec = record
        core_class : CoreClassPart;
        simple_class : SimpleClassPart;
        label_class : LabelClassPart;
        command_class : CommandClassPart;
        menuButton_class : MenuButtonClassPart;
      end;
    MenuButtonClassRec = _MenuButtonClassRec;

    var
      menuButtonClassRec : MenuButtonClassRec;cvar;external;


{$ifndef OLDXAW}

{$endif}

  type
    MenuButtonPart = record
        menu_name : ^char;
        pad : array[0..3] of XtPointer;
      end;


    _MenuButtonRec = record
        core : CorePart;
        simple : SimplePart;
        _label : LabelPart;
        command : CommandPart;
        menu_button : MenuButtonPart;
      end;
    MenuButtonRec = _MenuButtonRec;
{$endif}


implementation


end.
