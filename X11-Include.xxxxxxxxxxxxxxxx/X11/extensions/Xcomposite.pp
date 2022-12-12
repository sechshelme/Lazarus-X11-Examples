
unit Xcomposite;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xcomposite.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xcomposite.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xcomposite.pp
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
    Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XCOMPOSITE_H_}
{$define _XCOMPOSITE_H_}
{$include <X11/extensions/composite.h>}
{$include <X11/extensions/Xfixes.h>}
{$include <X11/Xfuncproto.h>}


const
  XCOMPOSITE_MAJOR = COMPOSITE_MAJOR;  
  XCOMPOSITE_MINOR = COMPOSITE_MINOR;  
  XCOMPOSITE_REVISION = 2;  
(* error 
#define XCOMPOSITE_VERSION	((XCOMPOSITE_MAJOR * 10000) + (XCOMPOSITE_MINOR * 100) + (XCOMPOSITE_REVISION))
in define line 59 *)
(* error 
Bool XCompositeQueryExtension (Display *dpy,
(* error 
                               int *event_base_return,
(* error 
                               int *error_base_return);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

function XCompositeQueryVersion(dpy:PDisplay; major_version_return:Plongint; minor_version_return:Plongint):TStatus;cdecl;external;
function XCompositeVersion:longint;cdecl;external;
procedure XCompositeRedirectWindow(dpy:PDisplay; window:TWindow; update:longint);cdecl;external;
procedure XCompositeRedirectSubwindows(dpy:PDisplay; window:TWindow; update:longint);cdecl;external;
procedure XCompositeUnredirectWindow(dpy:PDisplay; window:TWindow; update:longint);cdecl;external;
procedure XCompositeUnredirectSubwindows(dpy:PDisplay; window:TWindow; update:longint);cdecl;external;
function XCompositeCreateRegionFromBorderClip(dpy:PDisplay; window:TWindow):TXserverRegion;cdecl;external;
function XCompositeNameWindowPixmap(dpy:PDisplay; window:TWindow):TPixmap;cdecl;external;
function XCompositeGetOverlayWindow(dpy:PDisplay; window:TWindow):TWindow;cdecl;external;
procedure XCompositeReleaseOverlayWindow(dpy:PDisplay; window:TWindow);cdecl;external;
{$endif}

(* error 
#endif /* _XCOMPOSITE_H_ */

implementation


end.
