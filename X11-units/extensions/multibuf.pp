
unit multibuf;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/multibuf.h
  The following command line parameters were used:
    /usr/include/X11/extensions/multibuf.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/multibuf.pp
}

    Type
    PDisplay  = ^Display;
    Plongint  = ^longint;
    PMultibuffer  = ^Multibuffer;
    PVisual  = ^Visual;
    PXmbufBufferAttributes  = ^XmbufBufferAttributes;
    PXmbufBufferInfo  = ^XmbufBufferInfo;
    PXmbufSetBufferAttributes  = ^XmbufSetBufferAttributes;
    PXmbufSetWindowAttributes  = ^XmbufSetWindowAttributes;
    PXmbufWindowAttributes  = ^XmbufWindowAttributes;
    PXSetWindowAttributes  = ^XSetWindowAttributes;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _MULTIBUF_H_}
{$define _MULTIBUF_H_}  
{$include <X11/Xfuncproto.h>}
{$include <X11/extensions/multibufconst.h>}
(* error 
#define MbufGetReq(name,req,info) GetReq (name, req); \
in declaration at line 33 *)
(* error 
#define MbufGetReq(name,req,info) GetReq (name, req); \
(* error 
	req->reqType = info->codes->major_opcode; \
in declaration at line 34 *)
(* error 
	req->reqType = info->codes->major_opcode; \
(* error 
	req->mbufReqType = X_##name;
in declaration at line 35 *)


    type
      Multibuffer = XID;







      XmbufClobberNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : longint;
          display : ^Display;
          buffer : Multibuffer;
          state : longint;
        end;






      XmbufUpdateNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : longint;
          display : ^Display;
          buffer : Multibuffer;
        end;








      XmbufWindowAttributes = record
          displayed_index : longint;
          update_action : longint;
          update_hint : longint;
          window_mode : longint;
          nbuffers : longint;
          buffers : ^Multibuffer;
        end;



      XmbufSetWindowAttributes = record
          update_hint : longint;
        end;






      XmbufBufferAttributes = record
          window : Window;
          event_mask : dword;
          buffer_index : longint;
          side : longint;
        end;



      XmbufSetBufferAttributes = record
          event_mask : dword;
        end;





      XmbufBufferInfo = record
          visualid : VisualID;
          max_buffers : longint;
          depth : longint;
        end;
(* error 
extern Bool XmbufQueryExtension(

in declaration at line 113 *)


    function XmbufGetVersion(_para1:PDisplay; _para2:Plongint; _para3:Plongint):Status;cdecl;


    function XmbufCreateBuffers(_para1:PDisplay; _para2:Window; _para3:longint; _para4:longint; _para5:longint; 
               _para6:PMultibuffer):longint;cdecl;


    procedure XmbufDestroyBuffers(_para1:PDisplay; _para2:Window);cdecl;


    procedure XmbufDisplayBuffers(_para1:PDisplay; _para2:longint; _para3:PMultibuffer; _para4:longint; _para5:longint);cdecl;


    function XmbufGetWindowAttributes(_para1:PDisplay; _para2:Window; _para3:PXmbufWindowAttributes):Status;cdecl;


    procedure XmbufChangeWindowAttributes(_para1:PDisplay; _para2:Window; _para3:dword; _para4:PXmbufSetWindowAttributes);cdecl;


    function XmbufGetBufferAttributes(_para1:PDisplay; _para2:Multibuffer; _para3:PXmbufBufferAttributes):Status;cdecl;


    procedure XmbufChangeBufferAttributes(_para1:PDisplay; _para2:Multibuffer; _para3:dword; _para4:PXmbufSetBufferAttributes);cdecl;


    function XmbufGetScreenInfo(_para1:PDisplay; _para2:Drawable; _para3:Plongint; _para4:PPXmbufBufferInfo; _para5:Plongint; 
               _para6:PPXmbufBufferInfo):Status;cdecl;


    function XmbufCreateStereoWindow(_para1:PDisplay; _para2:Window; _para3:longint; _para4:longint; _para5:dword; 
               _para6:dword; _para7:dword; _para8:longint; _para9:dword; _para10:PVisual; 
               _para11:dword; _para12:PXSetWindowAttributes; _para13:PMultibuffer; _para14:PMultibuffer):Window;cdecl;


    procedure XmbufClearBufferArea(_para1:PDisplay; _para2:Multibuffer; _para3:longint; _para4:longint; _para5:dword; 
                _para6:dword; _para7:Bool);cdecl;

{$endif}

(* error 
#endif /* _MULTIBUF_H_ */

implementation


end.
