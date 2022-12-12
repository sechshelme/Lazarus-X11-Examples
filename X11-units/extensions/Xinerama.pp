
unit Xinerama;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/Xinerama.h
  The following command line parameters were used:
    /usr/include/X11/extensions/Xinerama.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/Xinerama.pp
}

  Type
  PDisplay  = ^Display;
  Plongint  = ^longint;
  PXineramaScreenInfo  = ^XineramaScreenInfo;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _Xinerama_h}
{$define _Xinerama_h}  
{$include <X11/Xlib.h>}

  type
    XineramaScreenInfo = record
        screen_number : longint;
        x_org : smallint;
        y_org : smallint;
        width : smallint;
        height : smallint;
      end;
(* error 
Bool XineramaQueryExtension (
(* error 
   int     *event_base,
(* error 
   int     *error_base
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

  function XineramaQueryVersion(dpy:PDisplay; major_versionp:Plongint; minor_versionp:Plongint):Status;

  function XineramaIsActive(dpy:PDisplay):Bool;


  function XineramaQueryScreens(dpy:PDisplay; number:Plongint):^XineramaScreenInfo;

{$endif}

(* error 


implementation

  function XineramaQueryVersion(dpy:PDisplay; major_versionp:Plongint; minor_versionp:Plongint):Status;
  begin
    { You must implement this function }
  end;
  function XineramaIsActive(dpy:PDisplay):Bool;
  begin
    { You must implement this function }
  end;
  function XineramaQueryScreens(dpy:PDisplay; number:Plongint):PXineramaScreenInfo;
  begin
    { You must implement this function }
  end;

end.
