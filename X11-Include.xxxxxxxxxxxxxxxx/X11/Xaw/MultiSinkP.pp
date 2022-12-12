
unit MultiSinkP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/MultiSinkP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/MultiSinkP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/MultiSinkP.pp
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
    PMultiSinkClassPart  = ^MultiSinkClassPart;
    PMultiSinkClassRec  = ^MultiSinkClassRec;
    PMultiSinkPart  = ^MultiSinkPart;
    PMultiSinkRec  = ^MultiSinkRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawMultiSinkP_h}
{$define _XawMultiSinkP_h}
{$include <X11/Xfuncproto.h>}

{$include <X11/Xaw/TextSinkP.h>}
{$include <X11/Xaw/MultiSink.h>}

type
  PMultiSinkClassPart = ^TMultiSinkClassPart;
  TMultiSinkClassPart = record
      extension : TXtPointer;
    end;


  PMultiSinkClassRec = ^TMultiSinkClassRec;
  TMultiSinkClassRec = record
      object_class : TObjectClassPart;
      text_sink_class : TTextSinkClassPart;
      multi_sink_class : TMultiSinkClassPart;
    end;
  var
    multiSinkClassRec : TMultiSinkClassRec;cvar;external;





{$ifndef OLDXAW}

{$endif}
type
  PMultiSinkPart = ^TMultiSinkPart;
  TMultiSinkPart = record
      echo : TBoolean;
      display_nonprinting : TBoolean;
      normgc : TGC;
      invgc : TGC;
      xorgc : TGC;
      cursor_position : TXawTextPosition;
      laststate : TXawTextInsertState;
      cursor_x : smallint;
      cursor_y : smallint;
      fontset : TXFontSet;
      pad : array[0..3] of TXtPointer;
    end;


  PMultiSinkRec = ^TMultiSinkRec;
  TMultiSinkRec = record
      object : TObjectPart;
      text_sink : TTextSinkPart;
      multi_sink : TMultiSinkPart;
    end;

(* error 
void _XawMultiSinkPosToXY
in declaration at line 134 *)
{$endif}

(* error 
#endif /* _XawMultiSinkP_h */

implementation


end.
