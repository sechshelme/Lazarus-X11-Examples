
unit StripCharP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/StripCharP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/StripCharP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/StripCharP.pp
}

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
        pad : array[0..3] of XtPointer;
      end;


    _StripChartRec = record
        core : CorePart;
        simple : SimplePart;
        strip_chart : StripChartPart;
      end;
    StripChartRec = _StripChartRec;


    StripChartClassPart = record
        extension : XtPointer;
      end;


    _StripChartClassRec = record
        core_class : CoreClassPart;
        simple_class : SimpleClassPart;
        strip_chart_class : StripChartClassPart;
      end;
    StripChartClassRec = _StripChartClassRec;

    var
      stripChartClassRec : StripChartClassRec;cvar;external;
{$endif}


implementation


end.
