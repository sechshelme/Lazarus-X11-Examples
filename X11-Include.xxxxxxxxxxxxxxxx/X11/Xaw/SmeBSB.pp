
unit SmeBSB;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/SmeBSB.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/SmeBSB.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/SmeBSB.pp
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
PSmeBSBClassRec  = ^SmeBSBClassRec;
PSmeBSBObject  = ^SmeBSBObject;
PSmeBSBObjectClass  = ^SmeBSBObjectClass;
PSmeBSBRec  = ^SmeBSBRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _SmeBSB_h}
{$define _SmeBSB_h}
{$include <X11/Xmu/Converters.h>}
{$include <X11/Xaw/Sme.h>}

type
  PSmeBSBObjectClass = ^TSmeBSBObjectClass;
  TSmeBSBObjectClass = PSmeBSBClassRec;

  PSmeBSBObject = ^TSmeBSBObject;
  TSmeBSBObject = PSmeBSBRec;
  var
    smeBSBObjectClass : TWidgetClass;cvar;external;

const
  XtNleftBitmap = 'leftBitmap';  
  XtNleftMargin = 'leftMargin';  
  XtNrightBitmap = 'rightBitmap';  
  XtNrightMargin = 'rightMargin';  
  XtNvertSpace = 'vertSpace';  
  XtNmenuName = 'menuName';  
  XtCMenuName = 'MenuName';  
{$ifndef XtNfontSet}

const
  XtNfontSet = 'fontSet';  
{$endif}
{$ifndef XtCFontSet}

const
  XtCFontSet = 'FontSet';  
{$endif}

const
  XtCLeftBitmap = 'LeftBitmap';  
  XtCHorizontalMargins = 'HorizontalMargins';  
  XtCRightBitmap = 'RightBitmap';  
  XtCVertSpace = 'VertSpace';  
{$endif}


implementation


end.
