
unit Tip;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/Tip.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/Tip.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/Tip.pp
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

{$include <X11/Xaw/Simple.h>}

type
  PTipWidgetClass = ^TTipWidgetClass;
  TTipWidgetClass = PTipClassRec;

  PTipWidget = ^TTipWidget;
  TTipWidget = PTipRec;
  var
    tipWidgetClass : TWidgetClass;cvar;external;

const
  XtNbottomMargin = 'bottomMargin';  
  XawNdisplayList = 'displayList';  
  XtNencoding = 'encoding';  
  XtNleftMargin = 'leftMargin';  
  XtNrightMargin = 'rightMargin';  
  XtNtimeout = 'timeout';  
  XtNtopMargin = 'topMargin';  
  XtNtip = 'tip';  
  XawCDisplayList = 'DisplayList';  
  XtCHorizontalMargins = 'HorizontalMargins';  
  XtCTimeout = 'Timeout';  
  XtCVerticalMargins = 'VerticalMargins';  
  XtCTip = 'Tip';  
  XawRDisplayList = 'XawDisplayList';  



procedure XawTipEnable(w:TWidget);cdecl;external;

procedure XawTipDisable(w:TWidget);cdecl;external;
{$endif}


implementation


end.
