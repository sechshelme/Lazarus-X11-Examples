
unit Dialog;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/Dialog.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/Dialog.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/Dialog.pp
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
    PDialogClassRec  = ^DialogClassRec;
    PDialogRec  = ^DialogRec;
    PDialogWidget  = ^DialogWidget;
    PDialogWidgetClass  = ^DialogWidgetClass;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawDialog_h}
{$define _XawDialog_h}
{$include <X11/Xaw/Form.h>}


const
  XtCIcon = 'Icon';  
  XtNicon = 'icon';  
type
  PDialogWidgetClass = ^TDialogWidgetClass;
  TDialogWidgetClass = PDialogClassRec;

  PDialogWidget = ^TDialogWidget;
  TDialogWidget = PDialogRec;
  var
    dialogWidgetClass : TWidgetClass;cvar;external;
(* error 
void XawDialogAddButton
in declaration at line 89 *)

function XawDialogGetValueString(w:TWidget):Pchar;cdecl;external;
{$endif}

(* error 
#endif /* _XawDialog_h */

implementation


end.
