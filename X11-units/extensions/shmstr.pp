
unit shmstr;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/shmstr.h
  The following command line parameters were used:
    /usr/include/X11/extensions/shmstr.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/shmstr.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _SHMSTR_H_}
{$define _SHMSTR_H_}  
{$include <X11/extensions/shmproto.h>}
{$ifdef _XSHM_SERVER_}
(* error 
    DrawablePtr		/* dst */, \

in define line 48 *)
(* error 
    ScreenPtr	/* pScreen */, \

in define line 55 *)

    type
      _ShmFuncs = record
          CreatePixmap : function (_para1:XSHM_CREATE_PIXMAP_ARGS):PixmapPtr;cdecl;
          PutImage : procedure (_para1:XSHM_PUT_IMAGE_ARGS);cdecl;
        end;
      ShmFuncs = _ShmFuncs;
      ShmFuncsPtr = ^_ShmFuncs;
{$endif}
{$endif}


implementation


end.
