
unit ImUtil;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/ImUtil.h
  The following command line parameters were used:
    /usr/include/X11/ImUtil.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/ImUtil.pp
}

  Type
  Pbyte  = ^byte;
  PDisplay  = ^Display;
  PXImage  = ^XImage;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{$ifndef _X11_IMUTIL_H_}
{$define _X11_IMUTIL_H_}  

  function _XGetScanlinePad(dpy:PDisplay; depth:longint):longint;cdecl;

  function _XGetBitsPerPixel(dpy:PDisplay; depth:longint):longint;cdecl;

  function _XSetImage(srcimg:PXImage; dstimg:PXImage; x:longint; y:longint):longint;cdecl;

  function _XReverse_Bytes(bpt:Pbyte; nb:longint):longint;cdecl;

  procedure _XInitImageFuncPtrs(image:PXImage);cdecl;

{$endif}


implementation


end.
