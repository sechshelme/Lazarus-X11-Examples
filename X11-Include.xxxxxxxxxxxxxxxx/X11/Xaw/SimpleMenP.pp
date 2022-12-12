
unit SimpleMenP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/SimpleMenP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/SimpleMenP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/SimpleMenP.pp
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
PXawDisplayList  = ^XawDisplayList;
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















{$ifndef OLDXAW}

{$endif}
type
  PSimpleMenuPart = ^TSimpleMenuPart;
  TSimpleMenuPart = record
      label_string : TString;
      _label : TSmeObject;
      label_class : TWidgetClass;
      top_margin : TDimension;
      bottom_margin : TDimension;
      row_height : TDimension;
      cursor : TCursor;
      popup_entry : TSmeObject;
      menu_on_screen : TBoolean;
      backing_store : longint;
      recursive_set_values : TBoolean;
      menu_width : TBoolean;
      menu_height : TBoolean;
      entry_set : TSmeObject;
      left_margin : TDimension;
      right_margin : TDimension;
      display_list : PXawDisplayList;
      sub_menu : TWidget;
      state : byte;
      pad : array[0..3] of TXtPointer;
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
