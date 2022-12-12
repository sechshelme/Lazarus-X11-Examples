
unit Xcomposite;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/Xcomposite.h
  The following command line parameters were used:
    /usr/include/X11/extensions/Xcomposite.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/Xcomposite.pp
}

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

    function XCompositeQueryVersion(dpy:PDisplay; major_version_return:Plongint; minor_version_return:Plongint):Status;

    function XCompositeVersion:longint;

    procedure XCompositeRedirectWindow(dpy:PDisplay; window:Window; update:longint);

    procedure XCompositeRedirectSubwindows(dpy:PDisplay; window:Window; update:longint);

    procedure XCompositeUnredirectWindow(dpy:PDisplay; window:Window; update:longint);

    procedure XCompositeUnredirectSubwindows(dpy:PDisplay; window:Window; update:longint);

    function XCompositeCreateRegionFromBorderClip(dpy:PDisplay; window:Window):XserverRegion;

    function XCompositeNameWindowPixmap(dpy:PDisplay; window:Window):Pixmap;

    function XCompositeGetOverlayWindow(dpy:PDisplay; window:Window):Window;

    procedure XCompositeReleaseOverlayWindow(dpy:PDisplay; window:Window);

{$endif}

(* error 
#endif /* _XCOMPOSITE_H_ */

implementation

    function XCompositeQueryVersion(dpy:PDisplay; major_version_return:Plongint; minor_version_return:Plongint):Status;
    begin
      { You must implement this function }
    end;
    function XCompositeVersion:longint;
    begin
      { You must implement this function }
    end;
    procedure XCompositeRedirectWindow(dpy:PDisplay; window:Window; update:longint);
    begin
      { You must implement this function }
    end;
    procedure XCompositeRedirectSubwindows(dpy:PDisplay; window:Window; update:longint);
    begin
      { You must implement this function }
    end;
    procedure XCompositeUnredirectWindow(dpy:PDisplay; window:Window; update:longint);
    begin
      { You must implement this function }
    end;
    procedure XCompositeUnredirectSubwindows(dpy:PDisplay; window:Window; update:longint);
    begin
      { You must implement this function }
    end;
    function XCompositeCreateRegionFromBorderClip(dpy:PDisplay; window:Window):XserverRegion;
    begin
      { You must implement this function }
    end;
    function XCompositeNameWindowPixmap(dpy:PDisplay; window:Window):Pixmap;
    begin
      { You must implement this function }
    end;
    function XCompositeGetOverlayWindow(dpy:PDisplay; window:Window):Window;
    begin
      { You must implement this function }
    end;
    procedure XCompositeReleaseOverlayWindow(dpy:PDisplay; window:Window);
    begin
      { You must implement this function }
    end;

end.
