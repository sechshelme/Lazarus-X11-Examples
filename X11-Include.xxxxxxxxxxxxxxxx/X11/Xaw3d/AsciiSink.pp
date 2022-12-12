
unit AsciiSink;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/AsciiSink.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/AsciiSink.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/AsciiSink.pp
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
PAsciiSinkClassRec  = ^AsciiSinkClassRec;
PAsciiSinkObject  = ^AsciiSinkObject;
PAsciiSinkObjectClass  = ^AsciiSinkObjectClass;
PAsciiSinkRec  = ^AsciiSinkRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawAsciiSink_h}
{$define _XawAsciiSink_h}

{$include <X11/Xaw3d/TextSink.h>}


const
  XtCOutput = 'Output';  
  XtNdisplayNonprinting = 'displayNonprinting';  
  XtNecho = 'echo';  

  var
    asciiSinkObjectClass : TWidgetClass;cvar;external;
type
  PAsciiSinkObjectClass = ^TAsciiSinkObjectClass;
  TAsciiSinkObjectClass = PAsciiSinkClassRec;

  PAsciiSinkObject = ^TAsciiSinkObject;
  TAsciiSinkObject = PAsciiSinkRec;

{$endif}


implementation


end.
