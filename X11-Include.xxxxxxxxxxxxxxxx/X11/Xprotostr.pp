
unit Xprotostr;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xprotostr.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xprotostr.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xprotostr.pp
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
PxArc  = ^xArc;
PxPoint  = ^xPoint;
PxRectangle  = ^xRectangle;
PxSegment  = ^xSegment;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{$ifndef XPROTOSTRUCTS_H}
{$define XPROTOSTRUCTS_H}

{$include <X11/Xmd.h>}

type
  PxSegment = ^TxSegment;
  TxSegment = record
      x1 : TINT16;
      y1 : TINT16;
      x2 : TINT16;
      y2 : TINT16;
    end;


  PxPoint = ^TxPoint;
  TxPoint = record
      x : TINT16;
      y : TINT16;
    end;

  PxRectangle = ^TxRectangle;
  TxRectangle = record
      x : TINT16;
      y : TINT16;
      width : TCARD16;
      height : TCARD16;
    end;


  PxArc = ^TxArc;
  TxArc = record
      x : TINT16;
      y : TINT16;
      width : TCARD16;
      height : TCARD16;
      angle1 : TINT16;
      angle2 : TINT16;
    end;
{$endif}


implementation


end.
