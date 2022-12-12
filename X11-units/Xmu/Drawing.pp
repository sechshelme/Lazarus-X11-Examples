
unit Drawing;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xmu/Drawing.h
  The following command line parameters were used:
    /usr/include/X11/Xmu/Drawing.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xmu/Drawing.pp
}

    Type
    Pbyte  = ^byte;
    PDisplay  = ^Display;
    Pdword  = ^dword;
    PFILE  = ^FILE;
    Plongint  = ^longint;
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
    Pixel = dword;
{$endif}
(* error 
void XmuDrawRoundedRectangle
in declaration at line 56 *)

    procedure XmuFillRoundedRectangle(dpy:PDisplay; draw:Drawable; gc:GC; x:longint; y:longint; 
                w:longint; h:longint; ew:longint; eh:longint);

    procedure XmuDrawLogo(dpy:PDisplay; drawable:Drawable; gcFore:GC; gcBack:GC; x:longint; 
                y:longint; width:dword; height:dword);

    function XmuCreatePixmapFromBitmap(dpy:PDisplay; d:Drawable; bitmap:Pixmap; width:dword; height:dword; 
               depth:dword; fore:dword; back:dword):Pixmap;

    function XmuCreateStippledPixmap(screen:PScreen; fore:Pixel; back:Pixel; depth:dword):Pixmap;

    procedure XmuReleaseStippledPixmap(screen:PScreen; pixmap:Pixmap);

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
               yhot_return:Plongint):longint;

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

    procedure XmuFillRoundedRectangle(dpy:PDisplay; draw:Drawable; gc:GC; x:longint; y:longint; 
                w:longint; h:longint; ew:longint; eh:longint);
    begin
      { You must implement this function }
    end;
    procedure XmuDrawLogo(dpy:PDisplay; drawable:Drawable; gcFore:GC; gcBack:GC; x:longint; 
                y:longint; width:dword; height:dword);
    begin
      { You must implement this function }
    end;
    function XmuCreatePixmapFromBitmap(dpy:PDisplay; d:Drawable; bitmap:Pixmap; width:dword; height:dword; 
               depth:dword; fore:dword; back:dword):Pixmap;
    begin
      { You must implement this function }
    end;
    function XmuCreateStippledPixmap(screen:PScreen; fore:Pixel; back:Pixel; depth:dword):Pixmap;
    begin
      { You must implement this function }
    end;
    procedure XmuReleaseStippledPixmap(screen:PScreen; pixmap:Pixmap);
    begin
      { You must implement this function }
    end;
    function XmuReadBitmapData(fstream:PFILE; width_return:Pdword; height_return:Pdword; datap_return:PPbyte; xhot_return:Plongint; 
               yhot_return:Plongint):longint;
    begin
      { You must implement this function }
    end;

end.
