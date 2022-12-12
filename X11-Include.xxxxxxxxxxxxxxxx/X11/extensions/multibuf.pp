
unit multibuf;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/multibuf.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/multibuf.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/multibuf.pp
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
    PMultibuffer  = ^Multibuffer;
    PVisual  = ^Visual;
    PXmbufBufferAttributes  = ^XmbufBufferAttributes;
    PXmbufBufferInfo  = ^XmbufBufferInfo;
    PXmbufClobberNotifyEvent  = ^XmbufClobberNotifyEvent;
    PXmbufSetBufferAttributes  = ^XmbufSetBufferAttributes;
    PXmbufSetWindowAttributes  = ^XmbufSetWindowAttributes;
    PXmbufUpdateNotifyEvent  = ^XmbufUpdateNotifyEvent;
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
      PMultibuffer = ^TMultibuffer;
      TMultibuffer = TXID;







      PXmbufClobberNotifyEvent = ^TXmbufClobberNotifyEvent;
      TXmbufClobberNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : longint;
          display : PDisplay;
          buffer : TMultibuffer;
          state : longint;
        end;






      PXmbufUpdateNotifyEvent = ^TXmbufUpdateNotifyEvent;
      TXmbufUpdateNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : longint;
          display : PDisplay;
          buffer : TMultibuffer;
        end;








      PXmbufWindowAttributes = ^TXmbufWindowAttributes;
      TXmbufWindowAttributes = record
          displayed_index : longint;
          update_action : longint;
          update_hint : longint;
          window_mode : longint;
          nbuffers : longint;
          buffers : PMultibuffer;
        end;



      PXmbufSetWindowAttributes = ^TXmbufSetWindowAttributes;
      TXmbufSetWindowAttributes = record
          update_hint : longint;
        end;






      PXmbufBufferAttributes = ^TXmbufBufferAttributes;
      TXmbufBufferAttributes = record
          window : TWindow;
          event_mask : dword;
          buffer_index : longint;
          side : longint;
        end;



      PXmbufSetBufferAttributes = ^TXmbufSetBufferAttributes;
      TXmbufSetBufferAttributes = record
          event_mask : dword;
        end;





      PXmbufBufferInfo = ^TXmbufBufferInfo;
      TXmbufBufferInfo = record
          visualid : TVisualID;
          max_buffers : longint;
          depth : longint;
        end;
(* error 
extern Bool XmbufQueryExtension(

in declaration at line 113 *)


function XmbufGetVersion(para1:PDisplay; para2:Plongint; para3:Plongint):TStatus;cdecl;external;

function XmbufCreateBuffers(para1:PDisplay; para2:TWindow; para3:longint; para4:longint; para5:longint; 
               para6:PMultibuffer):longint;cdecl;external;

procedure XmbufDestroyBuffers(para1:PDisplay; para2:TWindow);cdecl;external;

procedure XmbufDisplayBuffers(para1:PDisplay; para2:longint; para3:PMultibuffer; para4:longint; para5:longint);cdecl;external;

function XmbufGetWindowAttributes(para1:PDisplay; para2:TWindow; para3:PXmbufWindowAttributes):TStatus;cdecl;external;

procedure XmbufChangeWindowAttributes(para1:PDisplay; para2:TWindow; para3:dword; para4:PXmbufSetWindowAttributes);cdecl;external;

function XmbufGetBufferAttributes(para1:PDisplay; para2:TMultibuffer; para3:PXmbufBufferAttributes):TStatus;cdecl;external;

procedure XmbufChangeBufferAttributes(para1:PDisplay; para2:TMultibuffer; para3:dword; para4:PXmbufSetBufferAttributes);cdecl;external;

function XmbufGetScreenInfo(para1:PDisplay; para2:TDrawable; para3:Plongint; para4:PPXmbufBufferInfo; para5:Plongint; 
               para6:PPXmbufBufferInfo):TStatus;cdecl;external;

function XmbufCreateStereoWindow(para1:PDisplay; para2:TWindow; para3:longint; para4:longint; para5:dword; 
               para6:dword; para7:dword; para8:longint; para9:dword; para10:PVisual; 
               para11:dword; para12:PXSetWindowAttributes; para13:PMultibuffer; para14:PMultibuffer):TWindow;cdecl;external;

procedure XmbufClearBufferArea(para1:PDisplay; para2:TMultibuffer; para3:longint; para4:longint; para5:dword; 
                para6:dword; para7:TBool);cdecl;external;
{$endif}

(* error 
#endif /* _MULTIBUF_H_ */

implementation


end.
