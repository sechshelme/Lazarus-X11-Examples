
unit PannerP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/PannerP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/PannerP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/PannerP.pp
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
PPannerClassPart  = ^PannerClassPart;
PPannerClassRec  = ^PannerClassRec;
PPannerPart  = ^PannerPart;
PPannerRec  = ^PannerRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawPannerP_h}
{$define _XawPannerP_h}
{$include <X11/Xaw3d/Panner.h>}
{$include <X11/Xaw3d/SimpleP.h>		/* parent */}

type
  PPannerClassPart = ^TPannerClassPart;
  TPannerClassPart = record
      dummy : longint;
    end;


  PPannerClassRec = ^TPannerClassRec;
  TPannerClassRec = record
      core_class : TCoreClassPart;
      simple_class : TSimpleClassPart;
      panner_class : TPannerClassPart;
    end;



































  PPannerPart = ^TPannerPart;
  TPannerPart = record
      report_callbacks : TXtCallbackList;
      allow_off : TBoolean;
      resize_to_pref : TBoolean;
      foreground : TPixel;
      shadow_color : TPixel;
      shadow_thickness : TDimension;
      default_scale : TDimension;
      line_width : TDimension;
      canvas_width : TDimension;
      canvas_height : TDimension;
      slider_x : TPosition;
      slider_y : TPosition;
      slider_width : TDimension;
      slider_height : TDimension;
      internal_border : TDimension;
      stipple_name : TString;
      slider_gc : TGC;
      shadow_gc : TGC;
      xor_gc : TGC;
      haspect : Tdouble;
      vaspect : Tdouble;
      rubber_band : TBoolean;
      tmp : record
          doing : TBoolean;
          showing : TBoolean;
          startx : TPosition;
          starty : TPosition;
          dx : TPosition;
          dy : TPosition;
          x : TPosition;
          y : TPosition;
        end;
      knob_x : TPosition;
      knob_y : TPosition;
      knob_width : TDimension;
      knob_height : TDimension;
      shadow_valid : TBoolean;
      shadow_rects : array[0..1] of TXRectangle;
      last_x : TPosition;
      last_y : TPosition;
    end;

  PPannerRec = ^TPannerRec;
  TPannerRec = record
      core : TCorePart;
      simple : TSimplePart;
      panner : TPannerPart;
    end;

function PANNER_HSCALE(pw,val : longint) : longint;

function PANNER_VSCALE(pw,val : longint) : longint;

function PANNER_DSCALE(pw,val : longint) : TDimension;


const
  PANNER_DEFAULT_SCALE = 8;  
  PANNER_OUTOFRANGE = -(30000);  

  var
    pannerClassRec : TPannerClassRec;cvar;external;
{$endif}


implementation

function PANNER_HSCALE(pw,val : longint) : longint;
begin
  PANNER_HSCALE:=(pw^.(panner.haspect))*(Tdouble(val));
end;

function PANNER_VSCALE(pw,val : longint) : longint;
begin
  PANNER_VSCALE:=(pw^.(panner.vaspect))*(Tdouble(val));
end;

function PANNER_DSCALE(pw,val : longint) : TDimension;
begin
  PANNER_DSCALE:=TDimension(((dword(val))*(dword(pw^.(panner.default_scale))))/100);
end;


end.
