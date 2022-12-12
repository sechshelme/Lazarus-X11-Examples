
unit MenuButtoP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/MenuButtoP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/MenuButtoP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/MenuButtoP.pp
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
Pchar  = ^char;
PMenuButtonClass  = ^MenuButtonClass;
PMenuButtonClassPart  = ^MenuButtonClassPart;
PMenuButtonClassRec  = ^MenuButtonClassRec;
PMenuButtonPart  = ^MenuButtonPart;
PMenuButtonRec  = ^MenuButtonRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawMenuButtonP_h}
{$define _XawMenuButtonP_h}
{$include <X11/Xaw/MenuButton.h>}
{$include <X11/Xaw/CommandP.h>}

type
  PMenuButtonClass = ^TMenuButtonClass;
  TMenuButtonClass = record
      extension : TXtPointer;
    end;
  TMenuButtonClassPart = TMenuButtonClass;
  PMenuButtonClassPart = ^TMenuButtonClassPart;


  PMenuButtonClassRec = ^TMenuButtonClassRec;
  TMenuButtonClassRec = record
      core_class : TCoreClassPart;
      simple_class : TSimpleClassPart;
      label_class : TLabelClassPart;
      command_class : TCommandClassPart;
      menuButton_class : TMenuButtonClassPart;
    end;
  var
    menuButtonClassRec : TMenuButtonClassRec;cvar;external;


{$ifndef OLDXAW}

{$endif}
type
  PMenuButtonPart = ^TMenuButtonPart;
  TMenuButtonPart = record
      menu_name : Pchar;
      pad : array[0..3] of TXtPointer;
    end;


  PMenuButtonRec = ^TMenuButtonRec;
  TMenuButtonRec = record
      core : TCorePart;
      simple : TSimplePart;
      _label : TLabelPart;
      command : TCommandPart;
      menu_button : TMenuButtonPart;
    end;
{$endif}


implementation


end.
