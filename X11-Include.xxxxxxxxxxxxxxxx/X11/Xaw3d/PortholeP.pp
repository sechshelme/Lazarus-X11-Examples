
unit PortholeP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/PortholeP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/PortholeP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/PortholeP.pp
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
PPortholeClassPart  = ^PortholeClassPart;
PPortholeClassRec  = ^PortholeClassRec;
PPortholePart  = ^PortholePart;
PPortholeRec  = ^PortholeRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawPortholeP_h}
{$define _XawPortholeP_h}
{$include <X11/Xaw3d/Porthole.h>}

type
  PPortholeClassPart = ^TPortholeClassPart;
  TPortholeClassPart = record
      dummy : longint;
    end;


  PPortholeClassRec = ^TPortholeClassRec;
  TPortholeClassRec = record
      core_class : TCoreClassPart;
      composite_class : TCompositeClassPart;
      porthole_class : TPortholeClassPart;
    end;





  PPortholePart = ^TPortholePart;
  TPortholePart = record
      report_callbacks : TXtCallbackList;
    end;

  PPortholeRec = ^TPortholeRec;
  TPortholeRec = record
      core : TCorePart;
      composite : TCompositePart;
      porthole : TPortholePart;
    end;

  var
    portholeClassRec : TPortholeClassRec;cvar;external;
{$endif}


implementation


end.
