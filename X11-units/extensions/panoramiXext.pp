
unit panoramiXext;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/panoramiXext.h
  The following command line parameters were used:
    /usr/include/X11/extensions/panoramiXext.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/panoramiXext.pp
}

    Type
    PDisplay  = ^Display;
    Plongint  = ^longint;
    PXPanoramiXInfo  = ^XPanoramiXInfo;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _panoramiXext_h}
{$define _panoramiXext_h}  
{$include <X11/Xfuncproto.h>}







  type
    XPanoramiXInfo = record
        window : Window;
        screen : longint;
        State : longint;
        width : longint;
        height : longint;
        ScreenCount : longint;
        eventMask : XID;
      end;
(* error 
extern Bool XPanoramiXQueryExtension (

in declaration at line 52 *)


    function XPanoramiXQueryVersion(_para1:PDisplay; _para2:Plongint; _para3:Plongint):Status;cdecl;

    function XPanoramiXAllocInfo:^XPanoramiXInfo;cdecl;


    function XPanoramiXGetState(_para1:PDisplay; _para2:Drawable; _para3:PXPanoramiXInfo):Status;cdecl;


    function XPanoramiXGetScreenCount(_para1:PDisplay; _para2:Drawable; _para3:PXPanoramiXInfo):Status;cdecl;


    function XPanoramiXGetScreenSize(_para1:PDisplay; _para2:Drawable; _para3:longint; _para4:PXPanoramiXInfo):Status;cdecl;

{$endif}

(* error 
#endif /* _panoramiXext_h */

implementation


end.
