
unit xf86dga1const;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xf86dga1const.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xf86dga1const.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xf86dga1const.pp
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

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
