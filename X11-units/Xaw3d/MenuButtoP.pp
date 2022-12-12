
unit MenuButtoP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/MenuButtoP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/MenuButtoP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/MenuButtoP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _XawMenuButtonP_h}
{$define _XawMenuButtonP_h}  
{$include <X11/Xaw3d/MenuButton.h>}
{$include <X11/Xaw3d/CommandP.h>}




  type
    _MenuButtonClass = record
        makes_compiler_happy : longint;
      end;
    MenuButtonClassPart = _MenuButtonClass;


    _MenuButtonClassRec = record
        core_class : CoreClassPart;
        simple_class : SimpleClassPart;
        threeD_class : ThreeDClassPart;
        label_class : LabelClassPart;
        command_class : CommandClassPart;
        menuButton_class : MenuButtonClassPart;
      end;
    MenuButtonClassRec = _MenuButtonClassRec;

    var
      menuButtonClassRec : MenuButtonClassRec;cvar;external;




  type
    MenuButtonPart = record
        menu_name : String;
      end;


    _MenuButtonRec = record
        core : CorePart;
        simple : SimplePart;
        threeD : ThreeDPart;
        _label : LabelPart;
        command : CommandPart;
        menu_button : MenuButtonPart;
      end;
    MenuButtonRec = _MenuButtonRec;
{$endif}


implementation


end.
