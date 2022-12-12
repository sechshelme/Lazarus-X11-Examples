
unit ThreeD;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/ThreeD.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/ThreeD.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/ThreeD.pp
}

    Type
    PXColor  = ^XColor;
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
    XtRelief = (XtReliefNone,XtReliefRaised,XtReliefSunken,
      XtReliefRidge,XtReliefGroove);

    ThreeDWidget = ^_ThreeDRec;

    ThreeDWidgetClass = ^_ThreeDClassRec;

    var
      threeDWidgetClass : WidgetClass;cvar;external;
(* error 
extern void Xaw3dComputeTopShadowRGB (
{$if NeedFunctionPrototypes}

{$endif}
in declaration at line 95 *)
{$if NeedFunctionPrototypes}

{$endif}

    procedure Xaw3dComputeBottomShadowRGB(_para1:Widget; _para2:PXColor);cdecl;

{$if NeedFunctionPrototypes}
{$endif}

    procedure _ShadowSurroundedBox(_para1:Widget; _para2:ThreeDWidget; _para3:Position; _para4:Position; _para5:Position; 
                _para6:Position; _para7:XtRelief; _para8:Boolean);cdecl;

{$endif}

(* error 
#endif /* _XawThreeD_h */

implementation


end.
