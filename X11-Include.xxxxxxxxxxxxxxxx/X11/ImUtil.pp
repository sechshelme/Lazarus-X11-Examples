
unit ImUtil;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ImUtil.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ImUtil.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ImUtil.pp
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
Pbyte  = ^byte;
PDisplay  = ^Display;
PXImage  = ^XImage;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{$ifndef _X11_IMUTIL_H_}
{$define _X11_IMUTIL_H_}

function _XGetScanlinePad(dpy:PDisplay; depth:longint):longint;cdecl;external;
function _XGetBitsPerPixel(dpy:PDisplay; depth:longint):longint;cdecl;external;
function _XSetImage(srcimg:PXImage; dstimg:PXImage; x:longint; y:longint):longint;cdecl;external;
function _XReverse_Bytes(bpt:Pbyte; nb:longint):longint;cdecl;external;
procedure _XInitImageFuncPtrs(image:PXImage);cdecl;external;
{$endif}


implementation


end.
