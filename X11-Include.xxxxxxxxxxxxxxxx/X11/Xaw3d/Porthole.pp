
unit Porthole;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Porthole.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Porthole.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Porthole.pp
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
PPortholeClassRec  = ^PortholeClassRec;
PPortholeRec  = ^PortholeRec;
PPortholeWidget  = ^PortholeWidget;
PPortholeWidgetClass  = ^PortholeWidgetClass;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawPorthole_h}
{$define _XawPorthole_h}
{$include <X11/Xaw3d/Reports.h>}


  var
    portholeWidgetClass : TWidgetClass;cvar;external;
type
  PPortholeWidgetClass = ^TPortholeWidgetClass;
  TPortholeWidgetClass = PPortholeClassRec;

  PPortholeWidget = ^TPortholeWidget;
  TPortholeWidget = PPortholeRec;
{$endif}


implementation


end.
