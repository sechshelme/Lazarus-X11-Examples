
unit MenuButton;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/MenuButton.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/MenuButton.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/MenuButton.pp
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
PMenuButtonClassRec  = ^MenuButtonClassRec;
PMenuButtonRec  = ^MenuButtonRec;
PMenuButtonWidget  = ^MenuButtonWidget;
PMenuButtonWidgetClass  = ^MenuButtonWidgetClass;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _XawMenuButton_h}
{$define _XawMenuButton_h}
{$include <X11/Xaw3d/Command.h>}


const
  XtNmenuName = 'menuName';  
  XtCMenuName = 'MenuName';  
  var
    menuButtonWidgetClass : TWidgetClass;cvar;external;
type
  PMenuButtonWidgetClass = ^TMenuButtonWidgetClass;
  TMenuButtonWidgetClass = PMenuButtonClassRec;

  PMenuButtonWidget = ^TMenuButtonWidget;
  TMenuButtonWidget = PMenuButtonRec;
{$endif}


implementation


end.
