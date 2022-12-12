
unit AsciiTextP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/AsciiTextP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/AsciiTextP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/AsciiTextP.pp
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
PAsciiClassPart  = ^AsciiClassPart;
PAsciiDiskClassPart  = ^AsciiDiskClassPart;
PAsciiDiskClassRec  = ^AsciiDiskClassRec;
PAsciiDiskPart  = ^AsciiDiskPart;
PAsciiDiskRec  = ^AsciiDiskRec;
PAsciiPart  = ^AsciiPart;
PAsciiRec  = ^AsciiRec;
PAsciiStringClassPart  = ^AsciiStringClassPart;
PAsciiStringClassRec  = ^AsciiStringClassRec;
PAsciiStringPart  = ^AsciiStringPart;
PAsciiStringRec  = ^AsciiStringRec;
PAsciiTextClassRec  = ^AsciiTextClassRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}






{$ifndef _AsciiTextP_h}
{$define _AsciiTextP_h}
{$include "Xaw3dP.h"}
{$include <X11/Xaw3d/TextP.h>}
{$include <X11/Xaw3d/AsciiText.h>}
{$include <X11/Xaw3d/AsciiSrc.h>}
{$ifdef XAW_INTERNATIONALIZATION}
{$include <X11/Xaw3d/MultiSrc.h>}
{$endif}
type
  PAsciiClassPart = ^TAsciiClassPart;
  TAsciiClassPart = record
      empty : longint;
    end;

  PAsciiTextClassRec = ^TAsciiTextClassRec;
  TAsciiTextClassRec = record
      core_class : TCoreClassPart;
      simple_class : TSimpleClassPart;
      text_class : TTextClassPart;
      ascii_class : TAsciiClassPart;
    end;
  var
    asciiTextClassRec : TAsciiTextClassRec;cvar;external;
type
  PAsciiPart = ^TAsciiPart;
  TAsciiPart = record
      foo : char;
    end;

  PAsciiRec = ^TAsciiRec;
  TAsciiRec = record
      core : TCorePart;
      simple : TSimplePart;
      text : TTextPart;
      ascii : TAsciiPart;
    end;
{$ifdef ASCII_STRING}

  PAsciiStringClassPart = ^TAsciiStringClassPart;
  TAsciiStringClassPart = record
      empty : longint;
    end;

  PAsciiStringClassRec = ^TAsciiStringClassRec;
  TAsciiStringClassRec = record
      core_class : TCoreClassPart;
      simple_class : TSimpleClassPart;
      text_class : TTextClassPart;
      ascii_class : TAsciiClassPart;
      string_class : TAsciiStringClassPart;
    end;
  var
    asciiStringClassRec : TAsciiStringClassRec;cvar;external;
type
  PAsciiStringPart = ^TAsciiStringPart;
  TAsciiStringPart = record
      foo : char;
    end;

  PAsciiStringRec = ^TAsciiStringRec;
  TAsciiStringRec = record
      core : TCorePart;
      simple : TSimplePart;
      text : TTextPart;
      ascii : TAsciiPart;
      ascii_str : TAsciiStringPart;
    end;
{$endif}

{$ifdef ASCII_DISK}
type
  PAsciiDiskClassPart = ^TAsciiDiskClassPart;
  TAsciiDiskClassPart = record
      empty : longint;
    end;

  PAsciiDiskClassRec = ^TAsciiDiskClassRec;
  TAsciiDiskClassRec = record
      core_class : TCoreClassPart;
      simple_class : TSimpleClassPart;
      text_class : TTextClassPart;
      ascii_class : TAsciiClassPart;
      disk_class : TAsciiDiskClassPart;
    end;
  var
    asciiDiskClassRec : TAsciiDiskClassRec;cvar;external;
type
  PAsciiDiskPart = ^TAsciiDiskPart;
  TAsciiDiskPart = record
      foo : char;
    end;

  PAsciiDiskRec = ^TAsciiDiskRec;
  TAsciiDiskRec = record
      core : TCorePart;
      simple : TSimplePart;
      text : TTextPart;
      ascii : TAsciiPart;
      ascii_disk : TAsciiDiskPart;
    end;
{$endif}

{$endif}


implementation


end.
