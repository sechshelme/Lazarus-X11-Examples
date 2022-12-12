
unit ScrollbarP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/ScrollbarP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/ScrollbarP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/ScrollbarP.pp
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
PScrollbarClassPart  = ^ScrollbarClassPart;
PScrollbarClassRec  = ^ScrollbarClassRec;
PScrollbarPart  = ^ScrollbarPart;
PScrollbarRec  = ^ScrollbarRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _ScrollbarP_h}
{$define _ScrollbarP_h}
{$include <X11/Xaw/Scrollbar.h>}
{$include <X11/Xaw/SimpleP.h>}






















{$ifndef OLDXAW}

{$endif}
type
  PScrollbarPart = ^TScrollbarPart;
  TScrollbarPart = record
      foreground : TPixel;
      orientation : TXtOrientation;
      scrollProc : TXtCallbackList;
      thumbProc : TXtCallbackList;
      jumpProc : TXtCallbackList;
      thumb : TPixmap;
      upCursor : TCursor;
      downCursor : TCursor;
      leftCursor : TCursor;
      rightCursor : TCursor;
      verCursor : TCursor;
      horCursor : TCursor;
      top : single;
      shown : single;
      length : TDimension;
      thickness : TDimension;
      min_thumb : TDimension;
      inactiveCursor : TCursor;
      direction : char;
      gc : TGC;
      topLoc : TPosition;
      shownLength : TDimension;
      pad : array[0..3] of TXtPointer;
    end;

  PScrollbarRec = ^TScrollbarRec;
  TScrollbarRec = record
      core : TCorePart;
      simple : TSimplePart;
      scrollbar : TScrollbarPart;
    end;

  PScrollbarClassPart = ^TScrollbarClassPart;
  TScrollbarClassPart = record
      extension : TXtPointer;
    end;

  PScrollbarClassRec = ^TScrollbarClassRec;
  TScrollbarClassRec = record
      core_class : TCoreClassPart;
      simple_class : TSimpleClassPart;
      scrollbar_class : TScrollbarClassPart;
    end;
  var
    scrollbarClassRec : TScrollbarClassRec;cvar;external;
{$endif}


implementation


end.
