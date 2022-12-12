
unit TipP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/TipP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/TipP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/TipP.pp
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
PTipClassPart  = ^TipClassPart;
PTipClassRec  = ^TipClassRec;
PTipPart  = ^TipPart;
PTipRec  = ^TipRec;
PXawDisplayList  = ^XawDisplayList;
PXFontStruct  = ^XFontStruct;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawTipP_h}
{$define _XawTipP_h}
{$include <X11/Xaw/Tip.h>}
{$include <X11/CoreP.h>}
{$include <X11/Xaw/XawInit.h>}
type
  PTipClassPart = ^TTipClassPart;
  TTipClassPart = record
      extension : TXtPointer;
    end;

  PTipClassRec = ^TTipClassRec;
  TTipClassRec = record
      core_class : TCoreClassPart;
      tip_class : TTipClassPart;
    end;
  var
    tipClassRec : TTipClassRec;cvar;external;


type
  PTipPart = ^TTipPart;
  TTipPart = record
      foreground : TPixel;
      font : PXFontStruct;
      fontset : TXFontSet;
      top_margin : TDimension;
      bottom_margin : TDimension;
      left_margin : TDimension;
      right_margin : TDimension;
      backing_store : longint;
      timeout : longint;
      display_list : PXawDisplayList;
      gc : TGC;
      timer : TXtIntervalId;
      _label : TString;
      international : TBoolean;
      encoding : byte;
      pad : array[0..3] of TXtPointer;
    end;

  PTipRec = ^TTipRec;
  TTipRec = record
      core : TCorePart;
      tip : TTipPart;
    end;
{$endif}


implementation


end.
