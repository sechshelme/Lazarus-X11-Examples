
unit SmeBSB;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/SmeBSB.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/SmeBSB.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/SmeBSB.pp
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
{$include "Xaw3dP.h"}
{$include <X11/Xaw3d/Sme.h>}


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
  XtNleftWhitespace = 'leftWhitespace';  
  XtNrightBitmap = 'rightBitmap';  
  XtNrightMargin = 'rightMargin';  
  XtNrightWhitespace = 'rightWhitespace';  
  XtNvertSpace = 'vertSpace';  
  XtNmenuName = 'menuName';  
  XtNunderline = 'underline';  
{$ifdef XAW_INTERNATIONALIZATION}
{$ifndef XtNfontSet}

const
  XtNfontSet = 'fontSet';  
{$endif}
{$ifndef XtCFontSet}

const
  XtCFontSet = 'FontSet';  
{$endif}
{$endif}

const
  XtCLeftBitmap = 'LeftBitmap';  
  XtCRightBitmap = 'RightBitmap';  
  XtCHorizontalMargins = 'HorizontalMargins';  
  XtCVertSpace = 'VertSpace';  
  XtCMenuName = 'MenuName';  
  XtCUnderline = 'Underline';  
{$endif}


implementation


end.
