
unit SimpleMenP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/SimpleMenP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/SimpleMenP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/SimpleMenP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _SimpleMenuP_h}
{$define _SimpleMenuP_h}  
{$include <X11/Xaw3d/SimpleMenu.h>}
{$include <X11/Xaw3d/SmeP.h>}
{$include <X11/ShellP.h>}


  type
    SimpleMenuClassPart = record
        extension : XtPointer;
      end;

    _SimpleMenuClassRec = record
        core_class : CoreClassPart;
        composite_class : CompositeClassPart;
        shell_class : ShellClassPart;
        override_shell_class : OverrideShellClassPart;
        simpleMenu_class : SimpleMenuClassPart;
      end;
    SimpleMenuClassRec = _SimpleMenuClassRec;

    var
      simpleMenuClassRec : SimpleMenuClassRec;cvar;external;
























  type
    _SimpleMenuPart = record
        label_string : String;
        _label : SmeObject;
        label_class : WidgetClass;
        top_margin : Dimension;
        bottom_margin : Dimension;
        left_whitespace : Dimension;
        right_whitespace : Dimension;
        row_height : Dimension;
        cursor : Cursor;
        popup_entry : SmeObject;
        menu_on_screen : Boolean;
        backing_store : longint;
        recursive_set_values : Boolean;
        menu_width : Boolean;
        menu_height : Boolean;
        entry_set : SmeObject;
        threeD : Widget;
        first_entry : ^SmeObject;
        current_first : ^SmeObject;
        last_y : Dimension;
        first_y : longint;
        jump_val : longint;
        too_tall : Boolean;
        didnt_fit : Boolean;
        sub_menu : Widget;
        state : byte;
      end;
    SimpleMenuPart = _SimpleMenuPart;

    _SimpleMenuRec = record
        core : CorePart;
        composite : CompositePart;
        shell : ShellPart;
        override : OverrideShellPart;
        simple_menu : SimpleMenuPart;
      end;
    SimpleMenuRec = _SimpleMenuRec;
{$endif}


implementation


end.
