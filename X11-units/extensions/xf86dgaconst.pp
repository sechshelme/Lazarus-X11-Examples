
unit xf86dgaconst;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/xf86dgaconst.h
  The following command line parameters were used:
    /usr/include/X11/extensions/xf86dgaconst.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/xf86dgaconst.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XF86DGACONST_H_}
{$define _XF86DGACONST_H_}  
{$include <X11/extensions/xf86dga1const.h>}

  const
    X_XDGAQueryVersion = 0;    


    X_XDGAQueryModes = 12;    
    X_XDGASetMode = 13;    
    X_XDGASetViewport = 14;    
    X_XDGAInstallColormap = 15;    
    X_XDGASelectInput = 16;    
    X_XDGAFillRectangle = 17;    
    X_XDGACopyArea = 18;    
    X_XDGACopyTransparentArea = 19;    
    X_XDGAGetViewportStatus = 20;    
    X_XDGASync = 21;    
    X_XDGAOpenFramebuffer = 22;    
    X_XDGACloseFramebuffer = 23;    
    X_XDGASetClientVersion = 24;    
    X_XDGAChangePixmapMode = 25;    
    X_XDGACreateColormap = 26;    
    XDGAConcurrentAccess = $00000001;    
    XDGASolidFillRect = $00000002;    
    XDGABlitRect = $00000004;    
    XDGABlitTransRect = $00000008;    
    XDGAPixmap = $00000010;    
    XDGAInterlaced = $00010000;    
    XDGADoublescan = $00020000;    
    XDGAFlipImmediate = $00000001;    
    XDGAFlipRetrace = $00000002;    
    XDGANeedRoot = $00000001;    
    XF86DGANumberEvents = 7;    
    XDGAPixmapModeLarge = 0;    
    XDGAPixmapModeSmall = 1;    
    XF86DGAClientNotLocal = 0;    
    XF86DGANoDirectVideoMode = 1;    
    XF86DGAScreenNotActive = 2;    
    XF86DGADirectNotActivated = 3;    
    XF86DGAOperationNotSupported = 4;    
    XF86DGANumberErrors = XF86DGAOperationNotSupported+1;    











  type
    XDGAMode = record
        num : longint;
        name : ^char;
        verticalRefresh : single;
        flags : longint;
        imageWidth : longint;
        imageHeight : longint;
        pixmapWidth : longint;
        pixmapHeight : longint;
        bytesPerScanline : longint;
        byteOrder : longint;
        depth : longint;
        bitsPerPixel : longint;
        redMask : dword;
        greenMask : dword;
        blueMask : dword;
        visualClass : smallint;
        viewportWidth : longint;
        viewportHeight : longint;
        xViewportStep : longint;
        yViewportStep : longint;
        maxViewportX : longint;
        maxViewportY : longint;
        viewportFlags : longint;
        reserved1 : longint;
        reserved2 : longint;
      end;

    XDGADevice = record
        mode : XDGAMode;
        data : ^byte;
        pixmap : Pixmap;
      end;
{$endif}


implementation


end.
