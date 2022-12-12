
unit Label;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/Label.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/Label.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/Label.pp
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
PLabelClassRec  = ^LabelClassRec;
PLabelRec  = ^LabelRec;
PLabelWidget  = ^LabelWidget;
PLabelWidgetClass  = ^LabelWidgetClass;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawLabel_h}
{$define _XawLabel_h}

{$include <X11/Xaw/Simple.h>}


const
  XawTextEncoding8bit = 0;  
  XawTextEncodingChar2b = 1;  
  XtNleftBitmap = 'leftBitmap';  
  XtCLeftBitmap = 'LeftBitmap';  
  XtNencoding = 'encoding';  
  XtCEncoding = 'Encoding';  
{$ifndef XtNfontSet}

const
  XtNfontSet = 'fontSet';  
{$endif}
{$ifndef XtCFontSet}

const
  XtCFontSet = 'FontSet';  
{$endif}
{$ifndef _XtStringDefs_h_}

const
  XtNbitmap = 'bitmap';  
  XtNforeground = 'foreground';  
  XtNlabel = 'label';  
  XtNfont = 'font';  
  XtNinternalWidth = 'internalWidth';  
  XtNinternalHeight = 'internalHeight';  
  XtNresize = 'resize';  
  XtCResize = 'Resize';  
  XtCBitmap = 'Bitmap';  
{$endif}
{$ifndef XtNlabelX}

const
  XtNlabelX = 'labelX';  
{$endif}
{$ifndef XtNlabelY}

const
  XtNlabelY = 'labelY';  
{$endif}

  var
    labelWidgetClass : TWidgetClass;cvar;external;
type
  PLabelWidgetClass = ^TLabelWidgetClass;
  TLabelWidgetClass = PLabelClassRec;

  PLabelWidget = ^TLabelWidget;
  TLabelWidget = PLabelRec;
{$endif}


implementation


end.
