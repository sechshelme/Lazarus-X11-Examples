
unit TipP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/TipP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/TipP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/TipP.pp
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
PXFontStruct  = ^XFontStruct;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawTipP_h}
{$define _XawTipP_h}
{$include "Xaw3dP.h"}
{$include <X11/Xaw3d/Tip.h>}
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

{$ifdef XAW_INTERNATIONALIZATION}
{$endif}

{$ifdef XAW_INTERNATIONALIZATION}
{$endif}
type
  PTipPart = ^TTipPart;
  TTipPart = record
      foreground : TPixel;
      font : PXFontStruct;
      fontset : TXFontSet;
      internal_width : TDimension;
      internal_height : TDimension;
      _label : TString;
      backing_store : longint;
      timeout : longint;
      gc : TGC;
      timer : TXtIntervalId;
      international : TBoolean;
      encoding : byte;
    end;

  PTipRec = ^TTipRec;
  TTipRec = record
      core : TCorePart;
      tip : TTipPart;
    end;
{$endif}


implementation


end.
