
unit ToggleP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/ToggleP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/ToggleP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/ToggleP.pp
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
PRadioGroup  = ^RadioGroup;
PToggleClass  = ^ToggleClass;
PToggleClassPart  = ^ToggleClassPart;
PToggleClassRec  = ^ToggleClassRec;
PTogglePart  = ^TogglePart;
PToggleRec  = ^ToggleRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _XawToggleP_h}
{$define _XawToggleP_h}
{$include <X11/Xaw3d/Toggle.h>}
{$include <X11/Xaw3d/CommandP.h>}


function streq(a,b : longint) : longint;



type
  PRadioGroup = ^TRadioGroup;
  TRadioGroup = record
      prev : PRadioGroup;
      next : PRadioGroup;
      widget : TWidget;
    end;



  PToggleClass = ^TToggleClass;
  TToggleClass = record
      Set : TXtActionProc;
      Unset : TXtActionProc;
      extension : TXtPointer;
    end;
  TToggleClassPart = TToggleClass;
  PToggleClassPart = ^TToggleClassPart;


  PToggleClassRec = ^TToggleClassRec;
  TToggleClassRec = record
      core_class : TCoreClassPart;
      simple_class : TSimpleClassPart;
      threeD_class : TThreeDClassPart;
      label_class : TLabelClassPart;
      command_class : TCommandClassPart;
      toggle_class : TToggleClassPart;
    end;
  var
    toggleClassRec : TToggleClassRec;cvar;external;




type
  PTogglePart = ^TTogglePart;
  TTogglePart = record
      widget : TWidget;
      radio_data : TXtPointer;
      radio_group : PRadioGroup;
    end;


  PToggleRec = ^TToggleRec;
  TToggleRec = record
      core : TCorePart;
      simple : TSimplePart;
      threeD : TThreeDPart;
      _label : TLabelPart;
      command : TCommandPart;
      toggle : TTogglePart;
    end;
{$endif}


implementation

function streq(a,b : longint) : longint;
begin
  streq:=(strcmp(a,b))=0;
end;


end.
