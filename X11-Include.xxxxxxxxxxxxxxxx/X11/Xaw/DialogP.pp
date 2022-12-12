
unit DialogP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/DialogP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/DialogP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/DialogP.pp
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
PDialogClassPart  = ^DialogClassPart;
PDialogClassRec  = ^DialogClassRec;
PDialogConstraints  = ^DialogConstraints;
PDialogConstraintsPart  = ^DialogConstraintsPart;
PDialogConstraintsRec  = ^DialogConstraintsRec;
PDialogPart  = ^DialogPart;
PDialogRec  = ^DialogRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _DialogP_h}
{$define _DialogP_h}
{$include <X11/Xaw/Dialog.h>}
{$include <X11/Xaw/FormP.h>}
type
  PDialogClassPart = ^TDialogClassPart;
  TDialogClassPart = record
      extension : TXtPointer;
    end;

  PDialogClassRec = ^TDialogClassRec;
  TDialogClassRec = record
      core_class : TCoreClassPart;
      composite_class : TCompositeClassPart;
      constraint_class : TConstraintClassPart;
      form_class : TFormClassPart;
      dialog_class : TDialogClassPart;
    end;
  var
    dialogClassRec : TDialogClassRec;cvar;external;








{$ifndef OLDXAW}

{$endif}
type
  PDialogPart = ^TDialogPart;
  TDialogPart = record
      _label : TString;
      value : TString;
      icon : TPixmap;
      iconW : TWidget;
      labelW : TWidget;
      valueW : TWidget;
      pad : array[0..3] of TXtPointer;
    end;

  PDialogRec = ^TDialogRec;
  TDialogRec = record
      core : TCorePart;
      composite : TCompositePart;
      constraint : TConstraintPart;
      form : TFormPart;
      dialog : TDialogPart;
    end;

  PDialogConstraintsPart = ^TDialogConstraintsPart;
  TDialogConstraintsPart = record
      extension : TXtPointer;
    end;

  PDialogConstraintsRec = ^TDialogConstraintsRec;
  TDialogConstraintsRec = record
      form : TFormConstraintsPart;
      dialog : TDialogConstraintsPart;
    end;
  TDialogConstraints = PDialogConstraintsRec;
  PDialogConstraints = ^TDialogConstraints;
{$endif}


implementation


end.
