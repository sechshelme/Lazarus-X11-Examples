
unit Xvlib;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/Xvlib.h
  The following command line parameters were used:
    /usr/include/X11/extensions/Xvlib.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/Xvlib.pp
}

    Type
    Pchar  = ^char;
    PDisplay  = ^Display;
    Pdword  = ^dword;
    Plongint  = ^longint;
    PXShmSegmentInfo  = ^XShmSegmentInfo;
    PXvAdaptorInfo  = ^XvAdaptorInfo;
    PXvEncodingInfo  = ^XvEncodingInfo;
    PXvImage  = ^XvImage;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef XVLIB_H}
{$define XVLIB_H}  

{$include <X11/Xfuncproto.h>}
{$include <X11/extensions/Xv.h>}
{$include <X11/extensions/XShm.h>}

  type
    XvRational = record
        numerator : longint;
        denominator : longint;
      end;


    XvAttribute = record
        flags : longint;
        min_value : longint;
        max_value : longint;
        name : ^char;
      end;

    XvEncodingInfo = record
        encoding_id : XvEncodingID;
        name : ^char;
        width : dword;
        height : dword;
        rate : XvRational;
        num_encodings : dword;
      end;

    XvFormat = record
        depth : char;
        visual_id : dword;
      end;

    XvAdaptorInfo = record
        base_id : XvPortID;
        num_ports : dword;
        _type : char;
        name : ^char;
        num_formats : dword;
        formats : ^XvFormat;
        num_adaptors : dword;
      end;








    XvVideoNotifyEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        drawable : Drawable;
        reason : dword;
        port_id : XvPortID;
        time : Time;
      end;








    XvPortNotifyEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        port_id : XvPortID;
        time : Time;
        attribute : Atom;
        value : longint;
      end;

    XvEvent = record
        case longint of
          0 : ( _type : longint );
          1 : ( xvvideo : XvVideoNotifyEvent );
          2 : ( xvport : XvPortNotifyEvent );
          3 : ( pad : array[0..23] of longint );
        end;










    XvImageFormatValues = record
        id : longint;
        _type : longint;
        byte_order : longint;
        guid : array[0..15] of char;
        bits_per_pixel : longint;
        format : longint;
        num_planes : longint;
        depth : longint;
        red_mask : dword;
        green_mask : dword;
        blue_mask : dword;
        y_sample_bits : dword;
        u_sample_bits : dword;
        v_sample_bits : dword;
        horz_y_period : dword;
        horz_u_period : dword;
        horz_v_period : dword;
        vert_y_period : dword;
        vert_u_period : dword;
        vert_v_period : dword;
        component_order : array[0..31] of char;
        scanline_order : longint;
      end;




    XvImage = record
        id : longint;
        width : longint;
        height : longint;
        data_size : longint;
        num_planes : longint;
        pitches : ^longint;
        offsets : ^longint;
        data : ^char;
        obdata : XPointer;
      end;
(* error 
extern int XvQueryExtension(

in declaration at line 173 *)


    function XvQueryAdaptors(_para1:PDisplay; _para2:Window; _para3:Pdword; _para4:PPXvAdaptorInfo):longint;cdecl;


    function XvQueryEncodings(_para1:PDisplay; _para2:XvPortID; _para3:Pdword; _para4:PPXvEncodingInfo):longint;cdecl;


    function XvPutVideo(_para1:PDisplay; _para2:XvPortID; _para3:Drawable; _para4:GC; _para5:longint; 
               _para6:longint; _para7:dword; _para8:dword; _para9:longint; _para10:longint; 
               _para11:dword; _para12:dword):longint;cdecl;


    function XvPutStill(_para1:PDisplay; _para2:XvPortID; _para3:Drawable; _para4:GC; _para5:longint; 
               _para6:longint; _para7:dword; _para8:dword; _para9:longint; _para10:longint; 
               _para11:dword; _para12:dword):longint;cdecl;


    function XvGetVideo(_para1:PDisplay; _para2:XvPortID; _para3:Drawable; _para4:GC; _para5:longint; 
               _para6:longint; _para7:dword; _para8:dword; _para9:longint; _para10:longint; 
               _para11:dword; _para12:dword):longint;cdecl;


    function XvGetStill(_para1:PDisplay; _para2:XvPortID; _para3:Drawable; _para4:GC; _para5:longint; 
               _para6:longint; _para7:dword; _para8:dword; _para9:longint; _para10:longint; 
               _para11:dword; _para12:dword):longint;cdecl;


    function XvStopVideo(_para1:PDisplay; _para2:XvPortID; _para3:Drawable):longint;cdecl;


    function XvGrabPort(_para1:PDisplay; _para2:XvPortID; _para3:Time):longint;cdecl;


    function XvUngrabPort(_para1:PDisplay; _para2:XvPortID; _para3:Time):longint;cdecl;


    function XvSelectVideoNotify(_para1:PDisplay; _para2:Drawable; _para3:Bool):longint;cdecl;


    function XvSelectPortNotify(_para1:PDisplay; _para2:XvPortID; _para3:Bool):longint;cdecl;


    function XvSetPortAttribute(_para1:PDisplay; _para2:XvPortID; _para3:Atom; _para4:longint):longint;cdecl;


    function XvGetPortAttribute(_para1:PDisplay; _para2:XvPortID; _para3:Atom; _para4:Plongint):longint;cdecl;


    function XvQueryBestSize(_para1:PDisplay; _para2:XvPortID; _para3:Bool; _para4:dword; _para5:dword; 
               _para6:dword; _para7:dword; _para8:Pdword; _para9:Pdword):longint;cdecl;


    function XvQueryPortAttributes(_para1:PDisplay; _para2:XvPortID; _para3:Plongint):^XvAttribute;cdecl;


    procedure XvFreeAdaptorInfo(_para1:PXvAdaptorInfo);cdecl;


    procedure XvFreeEncodingInfo(_para1:PXvEncodingInfo);cdecl;

    function XvListImageFormats(display:PDisplay; port_id:XvPortID; count_return:Plongint):^XvImageFormatValues;cdecl;

    function XvCreateImage(display:PDisplay; port:XvPortID; id:longint; data:Pchar; width:longint; 
               height:longint):^XvImage;cdecl;

    function XvPutImage(display:PDisplay; id:XvPortID; d:Drawable; gc:GC; image:PXvImage; 
               src_x:longint; src_y:longint; src_w:dword; src_h:dword; dest_x:longint; 
               dest_y:longint; dest_w:dword; dest_h:dword):longint;cdecl;

    function XvShmPutImage(display:PDisplay; id:XvPortID; d:Drawable; gc:GC; image:PXvImage; 
               src_x:longint; src_y:longint; src_w:dword; src_h:dword; dest_x:longint; 
               dest_y:longint; dest_w:dword; dest_h:dword; send_event:Bool):longint;cdecl;

    function XvShmCreateImage(display:PDisplay; port:XvPortID; id:longint; data:Pchar; width:longint; 
               height:longint; shminfo:PXShmSegmentInfo):^XvImage;cdecl;

{$endif}

(* error 
#endif /* XVLIB_H */

implementation


end.
