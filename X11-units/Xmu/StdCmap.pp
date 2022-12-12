
unit StdCmap;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xmu/StdCmap.h
  The following command line parameters were used:
    /usr/include/X11/Xmu/StdCmap.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xmu/StdCmap.pp
}

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

  function XmuCreateColormap(dpy:PDisplay; colormap:PXStandardColormap):Status;

  procedure XmuDeleteStandardColormap(dpy:PDisplay; screen:longint; _property:Atom);

  function XmuGetColormapAllocation(vinfo:PXVisualInfo; _property:Atom; red_max_return:Pdword; green_max_return:Pdword; blue_max_return:Pdword):Status;

  function XmuLookupStandardColormap(dpy:PDisplay; screen:longint; visualid:VisualID; depth:dword; _property:Atom; 
             replace:Bool; retain:Bool):Status;

  function XmuStandardColormap(dpy:PDisplay; screen:longint; visualid:VisualID; depth:dword; _property:Atom; 
             cmap:Colormap; red_max:dword; green_max:dword; blue_max:dword):^XStandardColormap;

  function XmuVisualStandardColormaps(dpy:PDisplay; screen:longint; visualid:VisualID; depth:dword; replace:Bool; 
             retain:Bool):Status;

  function XmuDistinguishableColors(colors:PXColor; count:longint):Bool;

  function XmuDistinguishablePixels(dpy:PDisplay; cmap:Colormap; pixels:Pdword; count:longint):Bool;

{$endif}

(* error 
#endif /* _XMU_STDCMAP_H_ */

implementation

  function XmuCreateColormap(dpy:PDisplay; colormap:PXStandardColormap):Status;
  begin
    { You must implement this function }
  end;
  procedure XmuDeleteStandardColormap(dpy:PDisplay; screen:longint; _property:Atom);
  begin
    { You must implement this function }
  end;
  function XmuGetColormapAllocation(vinfo:PXVisualInfo; _property:Atom; red_max_return:Pdword; green_max_return:Pdword; blue_max_return:Pdword):Status;
  begin
    { You must implement this function }
  end;
  function XmuLookupStandardColormap(dpy:PDisplay; screen:longint; visualid:VisualID; depth:dword; _property:Atom; 
             replace:Bool; retain:Bool):Status;
  begin
    { You must implement this function }
  end;
  function XmuStandardColormap(dpy:PDisplay; screen:longint; visualid:VisualID; depth:dword; _property:Atom; 
             cmap:Colormap; red_max:dword; green_max:dword; blue_max:dword):PXStandardColormap;
  begin
    { You must implement this function }
  end;
  function XmuVisualStandardColormaps(dpy:PDisplay; screen:longint; visualid:VisualID; depth:dword; replace:Bool; 
             retain:Bool):Status;
  begin
    { You must implement this function }
  end;
  function XmuDistinguishableColors(colors:PXColor; count:longint):Bool;
  begin
    { You must implement this function }
  end;
  function XmuDistinguishablePixels(dpy:PDisplay; cmap:Colormap; pixels:Pdword; count:longint):Bool;
  begin
    { You must implement this function }
  end;

end.
