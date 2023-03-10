unit XmuDrawing;

interface

uses
  Unix, unixtype,
  xlib, x,
  X11Intrinsic;

const
  libXaw = 'libXaw.so';
//{$include <X11/Xlib.h>}
//{$include <X11/Xfuncproto.h>}
//{$include <stdio.h>}
type
  PPixel = ^TPixel;
  TPixel = dword;

  PFILE=Pointer; // Eigenes

procedure XmuDrawRoundedRectangle(dpy:PDisplay; draw:TDrawable; gc:TGC; x:longint; y:longint; 
            w:longint; h:longint; ew:longint; eh:longint);cdecl;external;
procedure XmuFillRoundedRectangle(dpy:PDisplay; draw:TDrawable; gc:TGC; x:longint; y:longint; 
            w:longint; h:longint; ew:longint; eh:longint);cdecl;external;
procedure XmuDrawLogo(dpy:PDisplay; drawable:TDrawable; gcFore:TGC; gcBack:TGC; x:longint; 
            y:longint; width:dword; height:dword);cdecl;external;
function XmuCreatePixmapFromBitmap(dpy:PDisplay; d:TDrawable; bitmap:TPixmap; width:dword; height:dword; 
           depth:dword; fore:dword; back:dword):TPixmap;cdecl;external;
function XmuCreateStippledPixmap(screen:PScreen; fore:TPixel; back:TPixel; depth:dword):TPixmap;cdecl;external;
procedure XmuReleaseStippledPixmap(screen:PScreen; pixmap:TPixmap);cdecl;external;
(* Const before type ignored *)
function XmuLocateBitmapFile(screen:PScreen; name:Pchar; srcname_return:Pchar; srcnamelen:longint; width_return:Plongint; 
           height_return:Plongint; xhot_return:Plongint; yhot_return:Plongint):TPixmap;cdecl;external;
(* Const before type ignored *)
function XmuLocatePixmapFile(screen:PScreen; name:Pchar; fore:dword; back:dword; depth:dword; 
           srcname_return:Pchar; srcnamelen:longint; width_return:Plongint; height_return:Plongint; xhot_return:Plongint; 
           yhot_return:Plongint):TPixmap;cdecl;external;
function XmuReadBitmapData(fstream:PFILE; width_return:Pdword; height_return:Pdword; datap_return:PPbyte; xhot_return:Plongint; 
           yhot_return:Plongint):longint;cdecl;external;
(* Const before type ignored *)
function XmuReadBitmapDataFromFile(filename:Pchar; width_return:Pdword; height_return:Pdword; datap_return:PPbyte; xhot_return:Plongint; 
           yhot_return:Plongint):longint;cdecl;external;

implementation

end.
