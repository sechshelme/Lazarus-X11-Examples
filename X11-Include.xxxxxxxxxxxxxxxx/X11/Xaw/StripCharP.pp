
unit StripCharP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/StripCharP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/StripCharP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/StripCharP.pp
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
PStripChartClassPart  = ^StripChartClassPart;
PStripChartClassRec  = ^StripChartClassRec;
PStripChartPart  = ^StripChartPart;
PStripChartRec  = ^StripChartRec;
PXPoint  = ^XPoint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawStripChartP_h}
{$define _XawStripChartP_h}
{$include <X11/Xaw/StripChart.h>}
{$include <X11/Xaw/SimpleP.h>}

const
  NO_GCS = 0;  
  FOREGROUND = 1 shl 0;  
  HIGHLIGHT = 1 shl 1;  
  ALL_GCS = FOREGROUND or HIGHLIGHT;  
















{$ifndef OLDXAW}

{$endif}
type
  PStripChartPart = ^TStripChartPart;
  TStripChartPart = record
      fgpixel : TPixel;
      hipixel : TPixel;
      fgGC : TGC;
      hiGC : TGC;
      update : longint;
      scale : longint;
      min_scale : longint;
      interval : longint;
      points : PXPoint;
      max_value : Tdouble;
      valuedata : array[0..2047] of Tdouble;
      interval_id : TXtIntervalId;
      get_value : TXtCallbackList;
      jump_val : longint;
      pad : array[0..3] of TXtPointer;
    end;


  PStripChartRec = ^TStripChartRec;
  TStripChartRec = record
      core : TCorePart;
      simple : TSimplePart;
      strip_chart : TStripChartPart;
    end;


  PStripChartClassPart = ^TStripChartClassPart;
  TStripChartClassPart = record
      extension : TXtPointer;
    end;


  PStripChartClassRec = ^TStripChartClassRec;
  TStripChartClassRec = record
      core_class : TCoreClassPart;
      simple_class : TSimpleClassPart;
      strip_chart_class : TStripChartClassPart;
    end;
  var
    stripChartClassRec : TStripChartClassRec;cvar;external;
{$endif}


implementation


end.
