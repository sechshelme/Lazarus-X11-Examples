
unit Sme;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/Sme.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/Sme.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/Sme.pp
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
PSmeClassRec  = ^SmeClassRec;
PSmeObject  = ^SmeObject;
PSmeObjectClass  = ^SmeObjectClass;
PSmeRec  = ^SmeRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _Sme_h}
{$define _Sme_h}
{$include <X11/Intrinsic.h>}
{$include <X11/RectObj.h>}

{$ifndef XtCInternational}

const
  XtCInternational = 'International';  
{$endif}
{$ifndef XtNinternational}

const
  XtNinternational = 'international';  
{$endif}
type
  PSmeObjectClass = ^TSmeObjectClass;
  TSmeObjectClass = PSmeClassRec;

  PSmeObject = ^TSmeObject;
  TSmeObject = PSmeRec;
  var
    smeObjectClass : TWidgetClass;cvar;external;
{$endif}


implementation


end.
