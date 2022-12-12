
unit shmstr;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/shmstr.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/shmstr.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/shmstr.pp
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
    PShmFuncs  = ^ShmFuncs;
    PShmFuncsPtr  = ^ShmFuncsPtr;
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
      PShmFuncs = ^TShmFuncs;
      TShmFuncs = record
          CreatePixmap : function (para1:TXSHM_CREATE_PIXMAP_ARGS):TPixmapPtr;cdecl;
          PutImage : procedure (para1:TXSHM_PUT_IMAGE_ARGS);cdecl;
        end;
      TShmFuncsPtr = PShmFuncs;
      PShmFuncsPtr = ^TShmFuncsPtr;
{$endif}
{$endif}


implementation


end.
