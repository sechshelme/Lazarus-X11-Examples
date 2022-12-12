
unit AsciiSinkP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/AsciiSinkP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/AsciiSinkP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/AsciiSinkP.pp
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
PAsciiSinkClassPart  = ^AsciiSinkClassPart;
PAsciiSinkClassRec  = ^AsciiSinkClassRec;
PAsciiSinkPart  = ^AsciiSinkPart;
PAsciiSinkRec  = ^AsciiSinkRec;
PXFontStruct  = ^XFontStruct;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawAsciiSinkP_h}
{$define _XawAsciiSinkP_h}

{$include <X11/Xaw/TextSinkP.h>}
{$include <X11/Xaw/AsciiSink.h>}

type
  PAsciiSinkClassPart = ^TAsciiSinkClassPart;
  TAsciiSinkClassPart = record
      extension : TXtPointer;
    end;


  PAsciiSinkClassRec = ^TAsciiSinkClassRec;
  TAsciiSinkClassRec = record
      object_class : TObjectClassPart;
      text_sink_class : TTextSinkClassPart;
      ascii_sink_class : TAsciiSinkClassPart;
    end;
  var
    asciiSinkClassRec : TAsciiSinkClassRec;cvar;external;





{$ifndef OLDXAW}

{$endif}
type
  PAsciiSinkPart = ^TAsciiSinkPart;
  TAsciiSinkPart = record
      font : PXFontStruct;
      echo : TBoolean;
      display_nonprinting : TBoolean;
      normgc : TGC;
      invgc : TGC;
      xorgc : TGC;
      cursor_position : TXawTextPosition;
      laststate : TXawTextInsertState;
      cursor_x : smallint;
      cursor_y : smallint;
      pad : array[0..3] of TXtPointer;
    end;


  PAsciiSinkRec = ^TAsciiSinkRec;
  TAsciiSinkRec = record
      object : TObjectPart;
      text_sink : TTextSinkPart;
      ascii_sink : TAsciiSinkPart;
    end;
{$endif}


implementation


end.
