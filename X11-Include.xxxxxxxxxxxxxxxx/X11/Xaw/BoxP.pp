
unit BoxP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/BoxP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/BoxP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/BoxP.pp
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
PBoxClassPart  = ^BoxClassPart;
PBoxClassRec  = ^BoxClassRec;
PBoxPart  = ^BoxPart;
PBoxRec  = ^BoxRec;
PXawDisplayList  = ^XawDisplayList;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawBoxP_h}
{$define _XawBoxP_h}

{$include <X11/Xaw/Box.h>}
{$include <X11/Xmu/Converters.h>}
{$include <X11/Xaw/XawInit.h>}

type
  PBoxClassPart = ^TBoxClassPart;
  TBoxClassPart = record
      extension : TXtPointer;
    end;


  PBoxClassRec = ^TBoxClassRec;
  TBoxClassRec = record
      core_class : TCoreClassPart;
      composite_class : TCompositeClassPart;
      box_class : TBoxClassPart;
    end;
  var
    boxClassRec : TBoxClassRec;cvar;external;



{$ifndef OLDXAW}

{$endif}
type
  PBoxPart = ^TBoxPart;
  TBoxPart = record
      h_space : TDimension;
      v_space : TDimension;
      orientation : TXtOrientation;
      preferred_width : TDimension;
      preferred_height : TDimension;
      last_query_width : TDimension;
      last_query_height : TDimension;
      last_query_mode : TXtGeometryMask;
      display_list : PXawDisplayList;
      pad : array[0..3] of TXtPointer;
    end;


  PBoxRec = ^TBoxRec;
  TBoxRec = record
      core : TCorePart;
      composite : TCompositePart;
      box : TBoxPart;
    end;
{$endif}


implementation


end.
