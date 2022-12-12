
unit ThreeDP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/ThreeDP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/ThreeDP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/ThreeDP.pp
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
    PThreeDClassPart  = ^ThreeDClassPart;
    PThreeDClassRec  = ^ThreeDClassRec;
    PThreeDPart  = ^ThreeDPart;
    PThreeDRec  = ^ThreeDRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _ThreeDP_h}
{$define _ThreeDP_h}
{$include <X11/Xaw3d/ThreeD.h>}
{$include <X11/Xaw3d/SimpleP.h>}

const
  XtRRelief = 'Relief';  
type
  PThreeDPart = ^TThreeDPart;
  TThreeDPart = record
      shadow_width : TDimension;
      top_shadow_pixel : TPixel;
      bot_shadow_pixel : TPixel;
      top_shadow_pxmap : TPixmap;
      bot_shadow_pxmap : TPixmap;
      top_shadow_contrast : longint;
      bot_shadow_contrast : longint;
      top_shadow_GC : TGC;
      bot_shadow_GC : TGC;
      user_data : TXtPointer;
      be_nice_to_cmap : TBoolean;
      relief : TXtRelief;
    end;


  PThreeDRec = ^TThreeDRec;
  TThreeDRec = record
      core : TCorePart;
      simple : TSimplePart;
      threeD : TThreeDPart;
    end;

  PThreeDClassPart = ^TThreeDClassPart;
  TThreeDClassPart = record
      shadowdraw : procedure ;cdecl;
    end;
(* error 
#define XtInheritXaw3dShadowDraw ((void (*)())_XtInherit)
in define line 64 *)


      PThreeDClassRec = ^TThreeDClassRec;
      TThreeDClassRec = record
          core_class : TCoreClassPart;
          simple_class : TSimpleClassPart;
          threeD_class : TThreeDClassPart;
        end;

      var
        threeDClassRec : TThreeDClassRec;cvar;external;
{$endif}


implementation


end.
