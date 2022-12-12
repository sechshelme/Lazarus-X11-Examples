
unit MultiSink;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/MultiSink.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/MultiSink.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/MultiSink.pp
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
PMultiSinkClassRec  = ^MultiSinkClassRec;
PMultiSinkObject  = ^MultiSinkObject;
PMultiSinkObjectClass  = ^MultiSinkObjectClass;
PMultiSinkRec  = ^MultiSinkRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _XawMultiSink_h}
{$define _XawMultiSink_h}

{$include <X11/Xaw3d/TextSink.h>}


const
  XtCOutput = 'Output';  
  XtNdisplayNonprinting = 'displayNonprinting';  
  XtNecho = 'echo';  
{$ifndef XtNfontSet		/*Sheeran, Omron KK, 93/03/04*/}

const
  XtNfontSet = 'fontSet';  
{$endif}
{$ifndef XtCFontSet		/*Sheeran, Omron KK, 93/03/04*/}

const
  XtCFontSet = 'FontSet';  
{$endif}

  var
    multiSinkObjectClass : TWidgetClass;cvar;external;
type
  PMultiSinkObjectClass = ^TMultiSinkObjectClass;
  TMultiSinkObjectClass = PMultiSinkClassRec;

  PMultiSinkObject = ^TMultiSinkObject;
  TMultiSinkObject = PMultiSinkRec;
{$endif}



implementation


end.
