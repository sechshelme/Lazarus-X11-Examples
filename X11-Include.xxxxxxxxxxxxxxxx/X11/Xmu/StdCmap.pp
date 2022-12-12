
unit StdCmap;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/StdCmap.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/StdCmap.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/StdCmap.pp
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
PDisplay  = ^Display;
Pdword  = ^dword;
PXColor  = ^XColor;
PXStandardColormap  = ^XStandardColormap;
PXVisualInfo  = ^XVisualInfo;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XMU_STDCMAP_H_}
{$define _XMU_STDCMAP_H_}
{$include <X11/Xfuncproto.h>}
(* error 
Status XmuAllStandardColormaps
 in declarator_list *)

function XmuCreateColormap(dpy:PDisplay; colormap:PXStandardColormap):TStatus;cdecl;external;
procedure XmuDeleteStandardColormap(dpy:PDisplay; screen:longint; _property:TAtom);cdecl;external;
function XmuGetColormapAllocation(vinfo:PXVisualInfo; _property:TAtom; red_max_return:Pdword; green_max_return:Pdword; blue_max_return:Pdword):TStatus;cdecl;external;
function XmuLookupStandardColormap(dpy:PDisplay; screen:longint; visualid:TVisualID; depth:dword; _property:TAtom; 
           replace:TBool; retain:TBool):TStatus;cdecl;external;
function XmuStandardColormap(dpy:PDisplay; screen:longint; visualid:TVisualID; depth:dword; _property:TAtom; 
           cmap:TColormap; red_max:dword; green_max:dword; blue_max:dword):PXStandardColormap;cdecl;external;
function XmuVisualStandardColormaps(dpy:PDisplay; screen:longint; visualid:TVisualID; depth:dword; replace:TBool; 
           retain:TBool):TStatus;cdecl;external;
function XmuDistinguishableColors(colors:PXColor; count:longint):TBool;cdecl;external;
function XmuDistinguishablePixels(dpy:PDisplay; cmap:TColormap; pixels:Pdword; count:longint):TBool;cdecl;external;
{$endif}

(* error 
#endif /* _XMU_STDCMAP_H_ */

implementation


end.
