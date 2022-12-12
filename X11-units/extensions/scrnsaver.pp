
unit scrnsaver;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/scrnsaver.h
  The following command line parameters were used:
    /usr/include/X11/extensions/scrnsaver.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/scrnsaver.pp
}

    Type
    PAtom  = ^Atom;
    PDisplay  = ^Display;
    Plongint  = ^longint;
    PVisual  = ^Visual;
    PXID  = ^XID;
    PXScreenSaverInfo  = ^XScreenSaverInfo;
    PXSetWindowAttributes  = ^XSetWindowAttributes;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _SCRNSAVER_H_}
{$define _SCRNSAVER_H_}  
{$include <X11/Xfuncproto.h>}
{$include <X11/Xlib.h>}
{$include <X11/extensions/saver.h>}











  type
    XScreenSaverNotifyEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        window : Window;
        root : Window;
        state : longint;
        kind : longint;
        forced : Bool;
        time : Time;
      end;







    XScreenSaverInfo = record
        window : Window;
        state : longint;
        kind : longint;
        til_or_since : dword;
        idle : dword;
        eventMask : dword;
      end;
(* error 
extern Bool XScreenSaverQueryExtension (

in declaration at line 64 *)


    function XScreenSaverQueryVersion(_para1:PDisplay; _para2:Plongint; _para3:Plongint):Status;cdecl;

    function XScreenSaverAllocInfo:^XScreenSaverInfo;cdecl;


    function XScreenSaverQueryInfo(_para1:PDisplay; _para2:Drawable; _para3:PXScreenSaverInfo):Status;cdecl;


    procedure XScreenSaverSelectInput(_para1:PDisplay; _para2:Drawable; _para3:dword);cdecl;


    procedure XScreenSaverSetAttributes(_para1:PDisplay; _para2:Drawable; _para3:longint; _para4:longint; _para5:dword; 
                _para6:dword; _para7:dword; _para8:longint; _para9:dword; _para10:PVisual; 
                _para11:dword; _para12:PXSetWindowAttributes);cdecl;


    procedure XScreenSaverUnsetAttributes(_para1:PDisplay; _para2:Drawable);cdecl;


    function XScreenSaverRegister(_para1:PDisplay; _para2:longint; _para3:XID; _para4:Atom):Status;cdecl;


    function XScreenSaverUnregister(_para1:PDisplay; _para2:longint):Status;cdecl;


    function XScreenSaverGetRegistered(_para1:PDisplay; _para2:longint; _para3:PXID; _para4:PAtom):Status;cdecl;


    procedure XScreenSaverSuspend(_para1:PDisplay; _para2:Bool);cdecl;

{$endif}

(* error 
#endif /* _SCRNSAVER_H_ */

implementation


end.
