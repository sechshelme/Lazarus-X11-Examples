
unit Tip;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Tip.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Tip.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Tip.pp
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
PTipClassRec  = ^TipClassRec;
PTipRec  = ^TipRec;
PTipWidget  = ^TipWidget;
PTipWidgetClass  = ^TipWidgetClass;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawTip_h}
{$define _XawTip_h}

{$include "Xaw3dP.h"}
{$include <X11/Xaw3d/Simple.h>}

type
  PTipWidgetClass = ^TTipWidgetClass;
  TTipWidgetClass = PTipClassRec;

  PTipWidget = ^TTipWidget;
  TTipWidget = PTipRec;
  var
    tipWidgetClass : TWidgetClass;cvar;external;

const
  XawTextEncoding8bit = 0;  
  XawTextEncodingChar2b = 1;  
  XtNencoding = 'encoding';  
  XtNtimeout = 'timeout';  
  XtNtip = 'tip';  
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
  XtCEncoding = 'Encoding';  
  XtCTimeout = 'Timeout';  
  XtCTip = 'Tip';  
{$ifndef _XtStringDefs_h_}

const
  XtNforeground = 'foreground';  
  XtNlabel = 'label';  
  XtNfont = 'font';  
  XtNinternalWidth = 'internalWidth';  
  XtNinternalHeight = 'internalHeight';  
{$endif}


{$if NeedFunctionPrototypes}
{$endif}

procedure XawTipEnable(para1:TWidget; para2:TString);cdecl;external;

{$if NeedFunctionPrototypes}
{$endif}

procedure XawTipDisable(para1:TWidget);cdecl;external;
{$endif}


implementation


end.
