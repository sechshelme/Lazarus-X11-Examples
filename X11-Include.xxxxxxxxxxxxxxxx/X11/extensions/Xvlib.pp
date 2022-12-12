
unit Xvlib;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xvlib.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xvlib.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xvlib.pp
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
    Pchar  = ^char;
    PDisplay  = ^Display;
    Pdword  = ^dword;
    Plongint  = ^longint;
    PXShmSegmentInfo  = ^XShmSegmentInfo;
    PXvAdaptorInfo  = ^XvAdaptorInfo;
    PXvAttribute  = ^XvAttribute;
    PXvEncodingInfo  = ^XvEncodingInfo;
    PXvEvent  = ^XvEvent;
    PXvFormat  = ^XvFormat;
    PXvImage  = ^XvImage;
    PXvImageFormatValues  = ^XvImageFormatValues;
    PXvPortNotifyEvent  = ^XvPortNotifyEvent;
    PXvRational  = ^XvRational;
    PXvVideoNotifyEvent  = ^XvVideoNotifyEvent;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef XVLIB_H}
{$define XVLIB_H}

{$include <X11/Xfuncproto.h>}
{$include <X11/extensions/Xv.h>}
{$include <X11/extensions/XShm.h>}
type
  PXvRational = ^TXvRational;
  TXvRational = record
      numerator : longint;
      denominator : longint;
    end;


  PXvAttribute = ^TXvAttribute;
  TXvAttribute = record
      flags : longint;
      min_value : longint;
      max_value : longint;
      name : Pchar;
    end;

  PXvEncodingInfo = ^TXvEncodingInfo;
  TXvEncodingInfo = record
      encoding_id : TXvEncodingID;
      name : Pchar;
      width : dword;
      height : dword;
      rate : TXvRational;
      num_encodings : dword;
    end;

  PXvFormat = ^TXvFormat;
  TXvFormat = record
      depth : char;
      visual_id : dword;
    end;

  PXvAdaptorInfo = ^TXvAdaptorInfo;
  TXvAdaptorInfo = record
      base_id : TXvPortID;
      num_ports : dword;
      _type : char;
      name : Pchar;
      num_formats : dword;
      formats : PXvFormat;
      num_adaptors : dword;
    end;








  PXvVideoNotifyEvent = ^TXvVideoNotifyEvent;
  TXvVideoNotifyEvent = record
      _type : longint;
      serial : dword;
      send_event : TBool;
      display : PDisplay;
      drawable : TDrawable;
      reason : dword;
      port_id : TXvPortID;
      time : TTime;
    end;








  PXvPortNotifyEvent = ^TXvPortNotifyEvent;
  TXvPortNotifyEvent = record
      _type : longint;
      serial : dword;
      send_event : TBool;
      display : PDisplay;
      port_id : TXvPortID;
      time : TTime;
      attribute : TAtom;
      value : longint;
    end;

  PXvEvent = ^TXvEvent;
  TXvEvent = record
      case longint of
        0 : ( _type : longint );
        1 : ( xvvideo : TXvVideoNotifyEvent );
        2 : ( xvport : TXvPortNotifyEvent );
        3 : ( pad : array[0..23] of longint );
      end;










  PXvImageFormatValues = ^TXvImageFormatValues;
  TXvImageFormatValues = record
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




  PXvImage = ^TXvImage;
  TXvImage = record
      id : longint;
      width : longint;
      height : longint;
      data_size : longint;
      num_planes : longint;
      pitches : Plongint;
      offsets : Plongint;
      data : Pchar;
      obdata : TXPointer;
    end;
(* error 
extern int XvQueryExtension(

in declaration at line 173 *)


function XvQueryAdaptors(para1:PDisplay; para2:TWindow; para3:Pdword; para4:PPXvAdaptorInfo):longint;cdecl;external;

function XvQueryEncodings(para1:PDisplay; para2:TXvPortID; para3:Pdword; para4:PPXvEncodingInfo):longint;cdecl;external;

function XvPutVideo(para1:PDisplay; para2:TXvPortID; para3:TDrawable; para4:TGC; para5:longint; 
               para6:longint; para7:dword; para8:dword; para9:longint; para10:longint; 
               para11:dword; para12:dword):longint;cdecl;external;

function XvPutStill(para1:PDisplay; para2:TXvPortID; para3:TDrawable; para4:TGC; para5:longint; 
               para6:longint; para7:dword; para8:dword; para9:longint; para10:longint; 
               para11:dword; para12:dword):longint;cdecl;external;

function XvGetVideo(para1:PDisplay; para2:TXvPortID; para3:TDrawable; para4:TGC; para5:longint; 
               para6:longint; para7:dword; para8:dword; para9:longint; para10:longint; 
               para11:dword; para12:dword):longint;cdecl;external;

function XvGetStill(para1:PDisplay; para2:TXvPortID; para3:TDrawable; para4:TGC; para5:longint; 
               para6:longint; para7:dword; para8:dword; para9:longint; para10:longint; 
               para11:dword; para12:dword):longint;cdecl;external;

function XvStopVideo(para1:PDisplay; para2:TXvPortID; para3:TDrawable):longint;cdecl;external;

function XvGrabPort(para1:PDisplay; para2:TXvPortID; para3:TTime):longint;cdecl;external;

function XvUngrabPort(para1:PDisplay; para2:TXvPortID; para3:TTime):longint;cdecl;external;

function XvSelectVideoNotify(para1:PDisplay; para2:TDrawable; para3:TBool):longint;cdecl;external;

function XvSelectPortNotify(para1:PDisplay; para2:TXvPortID; para3:TBool):longint;cdecl;external;

function XvSetPortAttribute(para1:PDisplay; para2:TXvPortID; para3:TAtom; para4:longint):longint;cdecl;external;

function XvGetPortAttribute(para1:PDisplay; para2:TXvPortID; para3:TAtom; para4:Plongint):longint;cdecl;external;

function XvQueryBestSize(para1:PDisplay; para2:TXvPortID; para3:TBool; para4:dword; para5:dword; 
               para6:dword; para7:dword; para8:Pdword; para9:Pdword):longint;cdecl;external;

function XvQueryPortAttributes(para1:PDisplay; para2:TXvPortID; para3:Plongint):PXvAttribute;cdecl;external;

procedure XvFreeAdaptorInfo(para1:PXvAdaptorInfo);cdecl;external;

procedure XvFreeEncodingInfo(para1:PXvEncodingInfo);cdecl;external;
function XvListImageFormats(display:PDisplay; port_id:TXvPortID; count_return:Plongint):PXvImageFormatValues;cdecl;external;
function XvCreateImage(display:PDisplay; port:TXvPortID; id:longint; data:Pchar; width:longint; 
               height:longint):PXvImage;cdecl;external;
function XvPutImage(display:PDisplay; id:TXvPortID; d:TDrawable; gc:TGC; image:PXvImage; 
               src_x:longint; src_y:longint; src_w:dword; src_h:dword; dest_x:longint; 
               dest_y:longint; dest_w:dword; dest_h:dword):longint;cdecl;external;
function XvShmPutImage(display:PDisplay; id:TXvPortID; d:TDrawable; gc:TGC; image:PXvImage; 
               src_x:longint; src_y:longint; src_w:dword; src_h:dword; dest_x:longint; 
               dest_y:longint; dest_w:dword; dest_h:dword; send_event:TBool):longint;cdecl;external;
function XvShmCreateImage(display:PDisplay; port:TXvPortID; id:longint; data:Pchar; width:longint; 
               height:longint; shminfo:PXShmSegmentInfo):PXvImage;cdecl;external;
{$endif}

(* error 
#endif /* XVLIB_H */

implementation


end.
