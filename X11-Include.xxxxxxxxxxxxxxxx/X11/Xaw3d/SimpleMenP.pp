
unit SimpleMenP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/SimpleMenP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/SimpleMenP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/SimpleMenP.pp
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
PSimpleMenuClassPart  = ^SimpleMenuClassPart;
PSimpleMenuClassRec  = ^SimpleMenuClassRec;
PSimpleMenuPart  = ^SimpleMenuPart;
PSimpleMenuRec  = ^SimpleMenuRec;
PSmeObject  = ^SmeObject;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _SimpleMenuP_h}
{$define _SimpleMenuP_h}
{$include <X11/Xaw3d/SimpleMenu.h>}
{$include <X11/Xaw3d/SmeP.h>}
{$include <X11/ShellP.h>}

type
  PSimpleMenuClassPart = ^TSimpleMenuClassPart;
  TSimpleMenuClassPart = record
      extension : TXtPointer;
    end;

  PSimpleMenuClassRec = ^TSimpleMenuClassRec;
  TSimpleMenuClassRec = record
      core_class : TCoreClassPart;
      composite_class : TCompositeClassPart;
      shell_class : TShellClassPart;
      override_shell_class : TOverrideShellClassPart;
      simpleMenu_class : TSimpleMenuClassPart;
    end;
  var
    simpleMenuClassRec : TSimpleMenuClassRec;cvar;external;























type
  PSimpleMenuPart = ^TSimpleMenuPart;
  TSimpleMenuPart = record
      label_string : TString;
      _label : TSmeObject;
      label_class : TWidgetClass;
      top_margin : TDimension;
      bottom_margin : TDimension;
      left_whitespace : TDimension;
      right_whitespace : TDimension;
      row_height : TDimension;
      cursor : TCursor;
      popup_entry : TSmeObject;
      menu_on_screen : TBoolean;
      backing_store : longint;
      recursive_set_values : TBoolean;
      menu_width : TBoolean;
      menu_height : TBoolean;
      entry_set : TSmeObject;
      threeD : TWidget;
      first_entry : PSmeObject;
      current_first : PSmeObject;
      last_y : TDimension;
      first_y : longint;
      jump_val : longint;
      too_tall : TBoolean;
      didnt_fit : TBoolean;
      sub_menu : TWidget;
      state : byte;
    end;

  PSimpleMenuRec = ^TSimpleMenuRec;
  TSimpleMenuRec = record
      core : TCorePart;
      composite : TCompositePart;
      shell : TShellPart;
      override : TOverrideShellPart;
      simple_menu : TSimpleMenuPart;
    end;
{$endif}


implementation


end.
