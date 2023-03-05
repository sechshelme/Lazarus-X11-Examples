
unit Core;
interface

{
  Automatically converted by H2Pas 1.0.0 from Core.h
  The following command line parameters were used:
    -p
    -T
    -S
    -d
    -c
    Core.h
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
PCoreWidget  = ^CoreWidget;
PCoreWidgetClass  = ^CoreWidgetClass;
PWidgetClassRec  = ^WidgetClassRec;
PWidgetRec  = ^WidgetRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XtCore_h}
{$define _XtCore_h}
type
  PCoreWidgetClass = ^TCoreWidgetClass;
  TCoreWidgetClass = PWidgetClassRec;

  PCoreWidget = ^TCoreWidget;
  TCoreWidget = PWidgetRec;
  var
    coreWidgetClass : TWidgetClass;cvar;external;
{$ifndef VMS}
  var
    widgetClass : TWidgetClass;cvar;external;
{$endif}
{$endif}



implementation


end.
