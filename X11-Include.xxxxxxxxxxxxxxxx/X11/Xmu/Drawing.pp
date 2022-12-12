
unit Drawing;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/Drawing.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/Drawing.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/Drawing.pp
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
    Pdword  = ^dword;
    PFILE  = ^FILE;
    Plongint  = ^longint;
    PPixel  = ^Pixel;
    PScreen  = ^Screen;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XMU_DRAWING_H_}
{$define _XMU_DRAWING_H_}
{$include <X11/Xlib.h>}
{$include <X11/Xfuncproto.h>}
{$include <stdio.h>}
{$if ! defined(_XtIntrinsic_h) && ! defined(PIXEL_ALREADY_TYPEDEFED)}
type
  PPixel = ^TPixel;
  TPixel = dword;
{$endif}
(* error 
void XmuDrawRoundedRectangle
in declaration at line 56 *)

procedure XmuFillRoundedRectangle(dpy:PDisplay; draw:TDrawable; gc:TGC; x:longint; y:longint; 
                w:longint; h:longint; ew:longint; eh:longint);cdecl;external;
procedure XmuDrawLogo(dpy:PDisplay; drawable:TDrawable; gcFore:TGC; gcBack:TGC; x:longint; 
                y:longint; width:dword; height:dword);cdecl;external;
function XmuCreatePixmapFromBitmap(dpy:PDisplay; d:TDrawable; bitmap:TPixmap; width:dword; height:dword; 
               depth:dword; fore:dword; back:dword):TPixmap;cdecl;external;
function XmuCreateStippledPixmap(screen:PScreen; fore:TPixel; back:TPixel; depth:dword):TPixmap;cdecl;external;
procedure XmuReleaseStippledPixmap(screen:PScreen; pixmap:TPixmap);cdecl;external;
(* error 
 _Xconst char		*name,
(* error 
 char			*srcname_return,
(* error 
 int 			srcnamelen,
(* error 
 int			*width_return,
(* error 
 int			*height_return,
(* error 
 int			*xhot_return,
(* error 
 int			*yhot_return
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
 _Xconst char		*name,
(* error 
 unsigned long		fore,
(* error 
 unsigned long		back,
(* error 
 unsigned int		depth,
(* error 
 char			*srcname_return,
(* error 
 int 			srcnamelen,
(* error 
 int			*width_return,
(* error 
 int			*height_return,
(* error 
 int			*xhot_return,
(* error 
 int			*yhot_return
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
function XmuReadBitmapData(fstream:PFILE; width_return:Pdword; height_return:Pdword; datap_return:PPbyte; xhot_return:Plongint; 
               yhot_return:Plongint):longint;cdecl;external;
(* error 
 _Xconst char		*filename,
(* error 
 unsigned int		*width_return,
(* error 
 unsigned int		*height_return,
(* error 
 unsigned char		**datap_return,
(* error 
 int			*xhot_return,
(* error 
 int			*yhot_return
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
{$endif}

(* error 
#endif /* _XMU_DRAWING_H_ */

implementation


end.
