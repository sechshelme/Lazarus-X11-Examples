
unit xf86dri;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/dri/xf86dri.h
  The following command line parameters were used:
    /usr/include/X11/dri/xf86dri.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/dri/xf86dri.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XF86DRI_H_}
{$define _XF86DRI_H_}  
{$include <xf86drm.h>}

  const
    X_XF86DRIQueryVersion = 0;    
    X_XF86DRIQueryDirectRenderingCapable = 1;    
    X_XF86DRIOpenConnection = 2;    
    X_XF86DRICloseConnection = 3;    
    X_XF86DRIGetClientDriverName = 4;    
    X_XF86DRICreateContext = 5;    
    X_XF86DRIDestroyContext = 6;    
    X_XF86DRICreateDrawable = 7;    
    X_XF86DRIDestroyDrawable = 8;    
    X_XF86DRIGetDrawableInfo = 9;    
    X_XF86DRIGetDeviceInfo = 10;    
    X_XF86DRIAuthConnection = 11;    

    X_XF86DRIOpenFullScreen = 12;    

    X_XF86DRICloseFullScreen = 13;    
    XF86DRINumberEvents = 0;    
    XF86DRIClientNotLocal = 0;    
    XF86DRIOperationNotSupported = 1;    
    XF86DRINumberErrors = XF86DRIOperationNotSupported+1;    
{$endif}


implementation


end.
