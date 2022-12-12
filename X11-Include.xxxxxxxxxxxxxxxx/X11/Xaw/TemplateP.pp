
unit TemplateP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/TemplateP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/TemplateP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/TemplateP.pp
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
Pchar  = ^char;
PTemplateClassPart  = ^TemplateClassPart;
PTemplateClassRec  = ^TemplateClassRec;
PTemplatePart  = ^TemplatePart;
PTemplateRec  = ^TemplateRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _TemplateP_h}
{$define _TemplateP_h}
{$include <X11/Xaw/Template.h>}

{$include <X11/CoreP.h>}


const
  XtRTemplateResource = 'TemplateResource';  
type
  PTemplateClassPart = ^TTemplateClassPart;
  TTemplateClassPart = record
      extension : TXtPointer;
    end;

  PTemplateClassRec = ^TTemplateClassRec;
  TTemplateClassRec = record
      core_class : TCoreClassPart;
      template_class : TTemplateClassPart;
    end;
  var
    templateClassRec : TTemplateClassRec;cvar;external;


type
  PTemplatePart = ^TTemplatePart;
  TTemplatePart = record
      resource : Pchar;
      private : Pchar;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
type
  PTemplateRec = ^TTemplateRec;
  TTemplateRec = record
      core : TCorePart;
      c_template : TTemplatePart;
      template : TTemplatePart;
    end;
{$endif}


implementation


end.
