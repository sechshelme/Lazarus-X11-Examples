
unit Grip;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/Grip.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/Grip.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/Grip.pp
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
PGripCallData  = ^GripCallData;
PGripCallDataRec  = ^GripCallDataRec;
PGripClassRec  = ^GripClassRec;
PGripRec  = ^GripRec;
PGripWidget  = ^GripWidget;
PGripWidgetClass  = ^GripWidgetClass;
PString  = ^String;
PXawGripCallData  = ^XawGripCallData;
PXawGripCallDataRec  = ^XawGripCallDataRec;
PXEvent  = ^XEvent;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawGrip_h}
{$define _XawGrip_h}
{$include <X11/Xaw/Simple.h>}


const
  XtNgripTranslations = 'gripTranslations';  



type
  PXawGripCallData = ^TXawGripCallData;
  TXawGripCallData = record
      event : PXEvent;
      params : PString;
      num_params : TCardinal;
    end;
  TXawGripCallDataRec = TXawGripCallData;
  PXawGripCallDataRec = ^TXawGripCallDataRec;
  TGripCallDataRec = TXawGripCallData;
  PGripCallDataRec = ^TGripCallDataRec;
  TGripCallData = PXawGripCallData;
  PGripCallData = ^TGripCallData;


  var
    gripWidgetClass : TWidgetClass;cvar;external;
type
  PGripWidgetClass = ^TGripWidgetClass;
  TGripWidgetClass = PGripClassRec;

  PGripWidget = ^TGripWidget;
  TGripWidget = PGripRec;
{$endif}


implementation


end.
