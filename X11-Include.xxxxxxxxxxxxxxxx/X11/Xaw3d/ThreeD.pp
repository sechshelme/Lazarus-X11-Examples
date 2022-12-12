
unit ThreeD;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/ThreeD.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/ThreeD.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/ThreeD.pp
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
    PThreeDClassRec  = ^ThreeDClassRec;
    PThreeDRec  = ^ThreeDRec;
    PThreeDWidget  = ^ThreeDWidget;
    PThreeDWidgetClass  = ^ThreeDWidgetClass;
    PXColor  = ^XColor;
    PXtRelief  = ^XtRelief;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawThreeD_h}
{$define _XawThreeD_h}

{$include <X11/Xmu/Converters.h>}


const
  XtNshadowWidth = 'shadowWidth';  
  XtCShadowWidth = 'ShadowWidth';  
  XtNtopShadowPixel = 'topShadowPixel';  
  XtCTopShadowPixel = 'TopShadowPixel';  
  XtNbottomShadowPixel = 'bottomShadowPixel';  
  XtCBottomShadowPixel = 'BottomShadowPixel';  
  XtNtopShadowContrast = 'topShadowContrast';  
  XtCTopShadowContrast = 'TopShadowContrast';  
  XtNbottomShadowContrast = 'bottomShadowContrast';  
  XtCBottomShadowContrast = 'BottomShadowContrast';  
  XtNbeNiceToColormap = 'beNiceToColormap';  
  XtCBeNiceToColormap = 'BeNiceToColormap';  
  XtNbeNiceToColourmap = 'beNiceToColormap';  
  XtCBeNiceToColourmap = 'BeNiceToColormap';  
  XtNuserData = 'userData';  
  XtCUserData = 'UserData';  
  XtNrelief = 'relief';  
  XtCRelief = 'Relief';  
type
  PXtRelief = ^TXtRelief;
  TXtRelief = (XtReliefNone,XtReliefRaised,XtReliefSunken,
    XtReliefRidge,XtReliefGroove);

  PThreeDWidget = ^TThreeDWidget;
  TThreeDWidget = PThreeDRec;

  PThreeDWidgetClass = ^TThreeDWidgetClass;
  TThreeDWidgetClass = PThreeDClassRec;
  var
    threeDWidgetClass : TWidgetClass;cvar;external;
(* error 
extern void Xaw3dComputeTopShadowRGB (
{$if NeedFunctionPrototypes}

{$endif}
in declaration at line 95 *)
{$if NeedFunctionPrototypes}

{$endif}

procedure Xaw3dComputeBottomShadowRGB(para1:TWidget; para2:PXColor);cdecl;external;
{$if NeedFunctionPrototypes}
{$endif}

procedure _ShadowSurroundedBox(para1:TWidget; para2:TThreeDWidget; para3:TPosition; para4:TPosition; para5:TPosition; 
                para6:TPosition; para7:TXtRelief; para8:TBoolean);cdecl;external;
{$endif}

(* error 
#endif /* _XawThreeD_h */

implementation


end.
