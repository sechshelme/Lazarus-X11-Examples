
unit CommandP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/CommandP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/CommandP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/CommandP.pp
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
PCommandClass  = ^CommandClass;
PCommandClassPart  = ^CommandClassPart;
PCommandClassRec  = ^CommandClassRec;
PCommandPart  = ^CommandPart;
PCommandRec  = ^CommandRec;
PXtCommandHighlight  = ^XtCommandHighlight;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawCommandP_h}
{$define _XawCommandP_h}

{$include <X11/Xaw/Command.h>}
{$include <X11/Xaw/LabelP.h>}



type
  PXtCommandHighlight = ^TXtCommandHighlight;
  TXtCommandHighlight = (HighlightNone,HighlightWhenUnset,HighlightAlways
    );


  PCommandClass = ^TCommandClass;
  TCommandClass = record
      extension : TXtPointer;
    end;
  TCommandClassPart = TCommandClass;
  PCommandClassPart = ^TCommandClassPart;


  PCommandClassRec = ^TCommandClassRec;
  TCommandClassRec = record
      core_class : TCoreClassPart;
      simple_class : TSimpleClassPart;
      label_class : TLabelClassPart;
      command_class : TCommandClassPart;
    end;
  var
    commandClassRec : TCommandClassRec;cvar;external;




{$ifndef OLDXAW}

{$endif}
type
  PCommandPart = ^TCommandPart;
  TCommandPart = record
      highlight_thickness : TDimension;
      callbacks : TXtCallbackList;
      gray_pixmap : TPixmap;
      normal_GC : TGC;
      inverse_GC : TGC;
      set : TBoolean;
      highlighted : TXtCommandHighlight;
      shape_style : longint;
      corner_round : TDimension;
      pad : array[0..3] of TXtPointer;
    end;


  PCommandRec = ^TCommandRec;
  TCommandRec = record
      core : TCorePart;
      simple : TSimplePart;
      _label : TLabelPart;
      command : TCommandPart;
    end;
{$endif}


implementation


end.
