
unit SmeLine;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/SmeLine.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/SmeLine.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/SmeLine.pp
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
PSmeLineClassRec  = ^SmeLineClassRec;
PSmeLineObject  = ^SmeLineObject;
PSmeLineObjectClass  = ^SmeLineObjectClass;
PSmeLineRec  = ^SmeLineRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _SmeLine_h}
{$define _SmeLine_h}
{$include <X11/Xaw/Sme.h>}
{$include <X11/Xmu/Converters.h>}


const
  XtCLineWidth = 'LineWidth';  
  XtCStipple = 'Stipple';  
  XtNlineWidth = 'lineWidth';  
  XtNstipple = 'stipple';  
type
  PSmeLineObjectClass = ^TSmeLineObjectClass;
  TSmeLineObjectClass = PSmeLineClassRec;

  PSmeLineObject = ^TSmeLineObject;
  TSmeLineObject = PSmeLineRec;
  var
    smeLineObjectClass : TWidgetClass;cvar;external;
{$endif}


implementation


end.
