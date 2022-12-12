
unit SimpleMenP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/SimpleMenP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/SimpleMenP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/SimpleMenP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _SimpleMenuP_h}
{$define _SimpleMenuP_h}  
{$include <X11/Xaw/SimpleMenu.h>}
{$include <X11/Xaw/SmeP.h>}
{$include <X11/ShellP.h>}
{$include <X11/Xaw/XawInit.h>}


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















{$ifndef OLDXAW}

{$endif}

  type
    _SimpleMenuPart = record
        label_string : String;
        _label : SmeObject;
        label_class : WidgetClass;
        top_margin : Dimension;
        bottom_margin : Dimension;
        row_height : Dimension;
        cursor : Cursor;
        popup_entry : SmeObject;
        menu_on_screen : Boolean;
        backing_store : longint;
        recursive_set_values : Boolean;
        menu_width : Boolean;
        menu_height : Boolean;
        entry_set : SmeObject;
        left_margin : Dimension;
        right_margin : Dimension;
        display_list : ^XawDisplayList;
        sub_menu : Widget;
        state : byte;
        pad : array[0..3] of XtPointer;
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
