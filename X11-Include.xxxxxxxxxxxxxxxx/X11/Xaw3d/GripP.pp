
unit GripP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/GripP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/GripP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/GripP.pp
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
PGripClassPart  = ^GripClassPart;
PGripClassRec  = ^GripClassRec;
PGripPart  = ^GripPart;
PGripRec  = ^GripRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _XawGripP_h}
{$define _XawGripP_h}
{$include <X11/Xaw3d/Grip.h>}
{$include <X11/Xaw3d/ThreeDP.h>}


const
  DEFAULT_GRIP_SIZE = 8;  

type
  PGripClassPart = ^TGripClassPart;
  TGripClassPart = record
      empty : longint;
    end;


  PGripClassRec = ^TGripClassRec;
  TGripClassRec = record
      core_class : TCoreClassPart;
      simple_class : TSimpleClassPart;
      threeD_class : TThreeDClassPart;
      grip_class : TGripClassPart;
    end;
  var
    gripClassRec : TGripClassRec;cvar;external;

type
  PGripPart = ^TGripPart;
  TGripPart = record
      grip_action : TXtCallbackList;
    end;


  PGripRec = ^TGripRec;
  TGripRec = record
      core : TCorePart;
      simple : TSimplePart;
      threeD : TThreeDPart;
      grip : TGripPart;
    end;
{$endif}


implementation


end.
