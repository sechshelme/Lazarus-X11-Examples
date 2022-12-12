
unit StripCharP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/StripCharP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/StripCharP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/StripCharP.pp
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
{$include <X11/Xaw3d/StripChart.h>}
{$include <X11/Xaw3d/ThreeDP.h>}

const
  NO_GCS = 0;  
(* error 
#define FOREGROUND 1 << 0
in define line 61 *)
(* error 
#define HIGHLIGHT  1 << 1
in define line 62 *)
      ALL_GCS = FOREGROUND or HIGHLIGHT;      















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
        end;


      PStripChartRec = ^TStripChartRec;
      TStripChartRec = record
          core : TCorePart;
          simple : TSimplePart;
          threeD : TThreeDPart;
          strip_chart : TStripChartPart;
        end;


      PStripChartClassPart = ^TStripChartClassPart;
      TStripChartClassPart = record
          dummy : longint;
        end;


      PStripChartClassRec = ^TStripChartClassRec;
      TStripChartClassRec = record
          core_class : TCoreClassPart;
          simple_class : TSimpleClassPart;
          threeD_class : TThreeDClassPart;
          strip_chart_class : TStripChartClassPart;
        end;

      var
        stripChartClassRec : TStripChartClassRec;cvar;external;
{$endif}


implementation


end.
