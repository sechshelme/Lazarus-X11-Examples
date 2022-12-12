
unit SmeThreeD;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/SmeThreeD.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/SmeThreeD.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/SmeThreeD.pp
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
    PSmeThreeDClassRec  = ^SmeThreeDClassRec;
    PSmeThreeDObject  = ^SmeThreeDObject;
    PSmeThreeDObjectClass  = ^SmeThreeDObjectClass;
    PSmeThreeDRec  = ^SmeThreeDRec;
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
  PSmeThreeDObjectClass = ^TSmeThreeDObjectClass;
  TSmeThreeDObjectClass = PSmeThreeDClassRec;

  PSmeThreeDObject = ^TSmeThreeDObject;
  TSmeThreeDObject = PSmeThreeDRec;
  var
    smeThreeDWidgetClass : TWidgetClass;cvar;external;
(* error 
extern void XawSme3dComputeTopShadowRGB (
{$if NeedFunctionPrototypes}

{$endif}
in declaration at line 85 *)
{$if NeedFunctionPrototypes}

{$endif}

procedure XawSme3dComputeBottomShadowRGB(para1:TWidget; para2:PXColor);cdecl;external;
{$endif}

(* error 
#endif /* _XawSmeThreeD_h */

implementation


end.
