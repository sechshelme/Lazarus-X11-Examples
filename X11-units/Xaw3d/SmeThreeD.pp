
unit SmeThreeD;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/SmeThreeD.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/SmeThreeD.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/SmeThreeD.pp
}

    Type
    PXColor  = ^XColor;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawSmeThreeD_h}
{$define _XawSmeThreeD_h}  

{$include <X11/Xmu/Converters.h>}
{$include <X11/Xaw3d/Sme.h>}


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

  type
    SmeThreeDObjectClass = ^_SmeThreeDClassRec;

    SmeThreeDObject = ^_SmeThreeDRec;

    var
      smeThreeDWidgetClass : WidgetClass;cvar;external;
(* error 
extern void XawSme3dComputeTopShadowRGB (
{$if NeedFunctionPrototypes}

{$endif}
in declaration at line 85 *)
{$if NeedFunctionPrototypes}

{$endif}

    procedure XawSme3dComputeBottomShadowRGB(_para1:Widget; _para2:PXColor);cdecl;

{$endif}

(* error 
#endif /* _XawSmeThreeD_h */

implementation


end.
