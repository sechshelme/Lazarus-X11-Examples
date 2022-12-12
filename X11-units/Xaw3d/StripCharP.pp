
unit StripCharP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/StripCharP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/StripCharP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/StripCharP.pp
}

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
      StripChartPart = record
          fgpixel : Pixel;
          hipixel : Pixel;
          fgGC : GC;
          hiGC : GC;
          update : longint;
          scale : longint;
          min_scale : longint;
          interval : longint;
          points : ^XPoint;
          max_value : double;
          valuedata : array[0..2047] of double;
          interval_id : XtIntervalId;
          get_value : XtCallbackList;
          jump_val : longint;
        end;


      _StripChartRec = record
          core : CorePart;
          simple : SimplePart;
          threeD : ThreeDPart;
          strip_chart : StripChartPart;
        end;
      StripChartRec = _StripChartRec;


      StripChartClassPart = record
          dummy : longint;
        end;


      _StripChartClassRec = record
          core_class : CoreClassPart;
          simple_class : SimpleClassPart;
          threeD_class : ThreeDClassPart;
          strip_chart_class : StripChartClassPart;
        end;
      StripChartClassRec = _StripChartClassRec;


      var
        stripChartClassRec : StripChartClassRec;cvar;external;
{$endif}


implementation


end.
