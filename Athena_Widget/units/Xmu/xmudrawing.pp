unit XmuDrawing;

interface

uses
  Unix, unixtype,
  xlib, x,
  XTIntrinsic;

const
  libXmu = 'libXmu.so';



//{$include <X11/Xlib.h>}
//{$include <X11/Xfuncproto.h>}
//{$include <stdio.h>}
type
  PPixel = ^TPixel;
  TPixel = dword;

  PFILE = Pointer; // Eigenes

procedure XmuDrawRoundedRectangle(dpy: PDisplay; draw: TDrawable; gc: TGC; x: longint; y: longint; w: longint; h: longint; ew: longint; eh: longint); cdecl; external libXmu;
procedure XmuFillRoundedRectangle(dpy: PDisplay; draw: TDrawable; gc: TGC; x: longint; y: longint; w: longint; h: longint; ew: longint; eh: longint); cdecl; external libXmu;
procedure XmuDrawLogo(dpy: PDisplay; drawable: TDrawable; gcFore: TGC; gcBack: TGC; x: longint; y: longint; Width: dword; Height: dword); cdecl; external libXmu;
function XmuCreatePixmapFromBitmap(dpy: PDisplay; d: TDrawable; bitmap: TPixmap; Width: dword; Height: dword; depth: dword; fore: dword; back: dword): TPixmap; cdecl; external libXmu;
function XmuCreateStippledPixmap(screen: PScreen; fore: TPixel; back: TPixel; depth: dword): TPixmap; cdecl; external libXmu;
procedure XmuReleaseStippledPixmap(screen: PScreen; pixmap: TPixmap); cdecl; external libXmu;
(* Const before type ignored *)
function XmuLocateBitmapFile(screen: PScreen; Name: PChar; srcname_return: PChar; srcnamelen: longint; width_return: Plongint; height_return: Plongint; xhot_return: Plongint; yhot_return: Plongint): TPixmap; cdecl; external libXmu;
(* Const before type ignored *)
function XmuLocatePixmapFile(screen: PScreen; Name: PChar; fore: dword; back: dword; depth: dword; srcname_return: PChar; srcnamelen: longint; width_return: Plongint; height_return: Plongint; xhot_return: Plongint; yhot_return: Plongint): TPixmap; cdecl; external libXmu;
function XmuReadBitmapData(fstream: PFILE; width_return: Pdword; height_return: Pdword; datap_return: PPbyte; xhot_return: Plongint; yhot_return: Plongint): longint; cdecl; external libXmu;
(* Const before type ignored *)
function XmuReadBitmapDataFromFile(filename: PChar; width_return: Pdword; height_return: Pdword; datap_return: PPbyte; xhot_return: Plongint; yhot_return: Plongint): longint; cdecl; external libXmu;

implementation

end.
