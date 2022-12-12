
unit AsciiText;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/AsciiText.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/AsciiText.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/AsciiText.pp
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
PAsciiRec  = ^AsciiRec;
PAsciiTextClassRec  = ^AsciiTextClassRec;
PAsciiTextWidgetClass  = ^AsciiTextWidgetClass;
PAsciiWidget  = ^AsciiWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}






{$ifndef _AsciiText_h}
{$define _AsciiText_h}

{$include "Xaw3dP.h"}
{$include <X11/Xaw3d/Text.h>		/* AsciiText is a subclass of Text */}
{$include <X11/Xaw3d/AsciiSrc.h>}
{$ifdef XAW_INTERNATIONALIZATION}
{$include <X11/Xaw3d/MultiSrc.h>}
{$endif}


type
  PAsciiTextWidgetClass = ^TAsciiTextWidgetClass;
  TAsciiTextWidgetClass = PAsciiTextClassRec;

  PAsciiWidget = ^TAsciiWidget;
  TAsciiWidget = PAsciiRec;
  var
    asciiTextWidgetClass : TWidgetClass;cvar;external;

{$ifdef ASCII_STRING}
    asciiStringWidgetClass : TWidgetClass;cvar;external;
{$endif}
{$ifdef ASCII_DISK}
  var
    asciiDiskWidgetClass : TWidgetClass;cvar;external;
{$endif}
{$endif}


implementation


end.
