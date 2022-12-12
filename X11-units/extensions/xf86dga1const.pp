
unit xf86dga1const;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/xf86dga1const.h
  The following command line parameters were used:
    /usr/include/X11/extensions/xf86dga1const.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/xf86dga1const.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XF86DGA1CONST_H_}
{$define _XF86DGA1CONST_H_}  

  const
    X_XF86DGAQueryVersion = 0;    
    X_XF86DGAGetVideoLL = 1;    
    X_XF86DGADirectVideo = 2;    
    X_XF86DGAGetViewPortSize = 3;    
    X_XF86DGASetViewPort = 4;    
    X_XF86DGAGetVidPage = 5;    
    X_XF86DGASetVidPage = 6;    
    X_XF86DGAInstallColormap = 7;    
    X_XF86DGAQueryDirectVideo = 8;    
    X_XF86DGAViewPortChanged = 9;    
    XF86DGADirectPresent = $0001;    
    XF86DGADirectGraphics = $0002;    
    XF86DGADirectMouse = $0004;    
    XF86DGADirectKeyb = $0008;    
    XF86DGAHasColormap = $0100;    
    XF86DGADirectColormap = $0200;    
{$endif}


implementation


end.
