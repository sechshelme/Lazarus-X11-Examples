
unit PannerP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/PannerP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/PannerP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/PannerP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawPannerP_h}
{$define _XawPannerP_h}  
{$include <X11/Xaw3d/Panner.h>}
{$include <X11/Xaw3d/SimpleP.h>		/* parent */}


  type
    PannerClassPart = record
        dummy : longint;
      end;


    _PannerClassRec = record
        core_class : CoreClassPart;
        simple_class : SimpleClassPart;
        panner_class : PannerClassPart;
      end;
    PannerClassRec = _PannerClassRec;



































    PannerPart = record
        report_callbacks : XtCallbackList;
        allow_off : Boolean;
        resize_to_pref : Boolean;
        foreground : Pixel;
        shadow_color : Pixel;
        shadow_thickness : Dimension;
        default_scale : Dimension;
        line_width : Dimension;
        canvas_width : Dimension;
        canvas_height : Dimension;
        slider_x : Position;
        slider_y : Position;
        slider_width : Dimension;
        slider_height : Dimension;
        internal_border : Dimension;
        stipple_name : String;
        slider_gc : GC;
        shadow_gc : GC;
        xor_gc : GC;
        haspect : double;
        vaspect : double;
        rubber_band : Boolean;
        tmp : record
            doing : Boolean;
            showing : Boolean;
            startx : Position;
            starty : Position;
            dx : Position;
            dy : Position;
            x : Position;
            y : Position;
          end;
        knob_x : Position;
        knob_y : Position;
        knob_width : Dimension;
        knob_height : Dimension;
        shadow_valid : Boolean;
        shadow_rects : array[0..1] of XRectangle;
        last_x : Position;
        last_y : Position;
      end;

    _PannerRec = record
        core : CorePart;
        simple : SimplePart;
        panner : PannerPart;
      end;
    PannerRec = _PannerRec;

  function PANNER_HSCALE(pw,val : longint) : longint;  

  function PANNER_VSCALE(pw,val : longint) : longint;  

  function PANNER_DSCALE(pw,val : longint) : Dimension;  


  const
    PANNER_DEFAULT_SCALE = 8;    
    PANNER_OUTOFRANGE = -(30000);    


    var
      pannerClassRec : PannerClassRec;cvar;external;
{$endif}


implementation

  function PANNER_HSCALE(pw,val : longint) : longint;
  begin
    PANNER_HSCALE:=(pw^.(panner.haspect))*(double(val));
  end;

  function PANNER_VSCALE(pw,val : longint) : longint;
  begin
    PANNER_VSCALE:=(pw^.(panner.vaspect))*(double(val));
  end;

  function PANNER_DSCALE(pw,val : longint) : Dimension;
  begin
    PANNER_DSCALE:=Dimension(((dword(val))*(dword(pw^.(panner.default_scale))))/100);
  end;


end.
