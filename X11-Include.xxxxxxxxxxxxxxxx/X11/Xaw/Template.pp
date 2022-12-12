
unit Template;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/Template.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/Template.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/Template.pp
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
PTemplateClassRec  = ^TemplateClassRec;
PTemplateRec  = ^TemplateRec;
PTemplateWidget  = ^TemplateWidget;
PTemplateWidgetClass  = ^TemplateWidgetClass;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _Template_h}
{$define _Template_h}
{$include <X11/Intrinsic.h>}




const
  XtNtemplateResource = 'templateResource';  
  XtCTemplateResource = 'TemplateResource';  

type
  PTemplateWidgetClass = ^TTemplateWidgetClass;
  TTemplateWidgetClass = PTemplateClassRec;

  PTemplateWidget = ^TTemplateWidget;
  TTemplateWidget = PTemplateRec;

  var
    templateWidgetClass : TWidgetClass;cvar;external;
{$endif}


implementation


end.
