
unit Xvproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xvproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xvproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xvproto.pp
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
PQueryAdaptorsReply  = ^QueryAdaptorsReply;
PQueryEncodingsReply  = ^QueryEncodingsReply;
PQueryExtensionReply  = ^QueryExtensionReply;
PxvAdaptorInfo  = ^xvAdaptorInfo;
PxvAttributeInfo  = ^xvAttributeInfo;
PxvEncodingInfo  = ^xvEncodingInfo;
PxvEvent  = ^xvEvent;
PxvFormat  = ^xvFormat;
PxvGetPortAttributeReply  = ^xvGetPortAttributeReply;
PxvGetPortAttributeReq  = ^xvGetPortAttributeReq;
PxvGetStillReq  = ^xvGetStillReq;
PxvGetVideoReq  = ^xvGetVideoReq;
PxvGrabPortReply  = ^xvGrabPortReply;
PxvGrabPortReq  = ^xvGrabPortReq;
PxvImageFormatInfo  = ^xvImageFormatInfo;
PxvListImageFormatsReply  = ^xvListImageFormatsReply;
PxvListImageFormatsReq  = ^xvListImageFormatsReq;
PxvPutImageReq  = ^xvPutImageReq;
PxvPutStillReq  = ^xvPutStillReq;
PxvPutVideoReq  = ^xvPutVideoReq;
PxvQueryAdaptorsReply  = ^xvQueryAdaptorsReply;
PxvQueryAdaptorsReq  = ^xvQueryAdaptorsReq;
PxvQueryBestSizeReply  = ^xvQueryBestSizeReply;
PxvQueryBestSizeReq  = ^xvQueryBestSizeReq;
PxvQueryEncodingsReply  = ^xvQueryEncodingsReply;
PxvQueryEncodingsReq  = ^xvQueryEncodingsReq;
PxvQueryExtensionReply  = ^xvQueryExtensionReply;
PxvQueryExtensionReq  = ^xvQueryExtensionReq;
PxvQueryImageAttributesReply  = ^xvQueryImageAttributesReply;
PxvQueryImageAttributesReq  = ^xvQueryImageAttributesReq;
PxvQueryPortAttributesReply  = ^xvQueryPortAttributesReply;
PxvQueryPortAttributesReq  = ^xvQueryPortAttributesReq;
PxvRational  = ^xvRational;
PxvSelectPortNotifyReq  = ^xvSelectPortNotifyReq;
PxvSelectVideoNotifyReq  = ^xvSelectVideoNotifyReq;
PxvSetPortAttributeReq  = ^xvSetPortAttributeReq;
PxvShmPutImageReq  = ^xvShmPutImageReq;
PxvStopVideoReq  = ^xvStopVideoReq;
PxvUngrabPortReq  = ^xvUngrabPortReq;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef XVPROTO_H}
{$define XVPROTO_H}

{$include <X11/Xmd.h>}


const
  XvPortID = CARD32;  
  XvEncodingID = CARD32;  
  ShmSeg = CARD32;  
  VisualID = CARD32;  
  Drawable = CARD32;  
  GContext = CARD32;  
  Time = CARD32;  
  Atom = CARD32;  

type
  PxvRational = ^TxvRational;
  TxvRational = record
      numerator : TINT32;
      denominator : TINT32;
    end;

const
  sz_xvRational = 8;  
type
  PxvAdaptorInfo = ^TxvAdaptorInfo;
  TxvAdaptorInfo = record
      base_id : TXvPortID;
      name_size : TCARD16;
      num_ports : TCARD16;
      num_formats : TCARD16;
      _type : TCARD8;
      pad : TCARD8;
    end;

const
  sz_xvAdaptorInfo = 12;  
type
  PxvEncodingInfo = ^TxvEncodingInfo;
  TxvEncodingInfo = record
      encoding : TXvEncodingID;
      name_size : TCARD16;
      width : TCARD16;
      height : TCARD16;
      pad : TCARD16;
      rate : TxvRational;
    end;

const
  sz_xvEncodingInfo = 12+sz_xvRational;  
type
  PxvFormat = ^TxvFormat;
  TxvFormat = record
      visual : TVisualID;
      depth : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD16;
    end;

const
  sz_xvFormat = 8;  
type
  PxvAttributeInfo = ^TxvAttributeInfo;
  TxvAttributeInfo = record
      flags : TCARD32;
      min : TINT32;
      max : TINT32;
      size : TCARD32;
    end;

const
  sz_xvAttributeInfo = 16;  
type
  PxvImageFormatInfo = ^TxvImageFormatInfo;
  TxvImageFormatInfo = record
      id : TCARD32;
      _type : TCARD8;
      byte_order : TCARD8;
      pad1 : TCARD16;
      guid : array[0..15] of TCARD8;
      bpp : TCARD8;
      num_planes : TCARD8;
      pad2 : TCARD16;
      depth : TCARD8;
      pad3 : TCARD8;
      pad4 : TCARD16;
      red_mask : TCARD32;
      green_mask : TCARD32;
      blue_mask : TCARD32;
      format : TCARD8;
      pad5 : TCARD8;
      pad6 : TCARD16;
      y_sample_bits : TCARD32;
      u_sample_bits : TCARD32;
      v_sample_bits : TCARD32;
      horz_y_period : TCARD32;
      horz_u_period : TCARD32;
      horz_v_period : TCARD32;
      vert_y_period : TCARD32;
      vert_u_period : TCARD32;
      vert_v_period : TCARD32;
      comp_order : array[0..31] of TCARD8;
      scanline_order : TCARD8;
      pad7 : TCARD8;
      pad8 : TCARD16;
      pad9 : TCARD32;
      pad10 : TCARD32;
    end;

const
  sz_xvImageFormatInfo = 128;  

  xv_QueryExtension = 0;  
  xv_QueryAdaptors = 1;  
  xv_QueryEncodings = 2;  
  xv_GrabPort = 3;  
  xv_UngrabPort = 4;  
  xv_PutVideo = 5;  
  xv_PutStill = 6;  
  xv_GetVideo = 7;  
  xv_GetStill = 8;  
  xv_StopVideo = 9;  
  xv_SelectVideoNotify = 10;  
  xv_SelectPortNotify = 11;  
  xv_QueryBestSize = 12;  
  xv_SetPortAttribute = 13;  
  xv_GetPortAttribute = 14;  
  xv_QueryPortAttributes = 15;  
  xv_ListImageFormats = 16;  
  xv_QueryImageAttributes = 17;  
  xv_PutImage = 18;  
  xv_ShmPutImage = 19;  
  xv_LastRequest = xv_ShmPutImage;  
  xvNumRequests = xv_LastRequest+1;  
type
  PxvQueryExtensionReq = ^TxvQueryExtensionReq;
  TxvQueryExtensionReq = record
      reqType : TCARD8;
      xvReqType : TCARD8;
      length : TCARD16;
    end;

const
  sz_xvQueryExtensionReq = 4;  
type
  PxvQueryAdaptorsReq = ^TxvQueryAdaptorsReq;
  TxvQueryAdaptorsReq = record
      reqType : TCARD8;
      xvReqType : TCARD8;
      length : TCARD16;
      window : TCARD32;
    end;

const
  sz_xvQueryAdaptorsReq = 8;  
type
  PxvQueryEncodingsReq = ^TxvQueryEncodingsReq;
  TxvQueryEncodingsReq = record
      reqType : TCARD8;
      xvReqType : TCARD8;
      length : TCARD16;
      port : TCARD32;
    end;

const
  sz_xvQueryEncodingsReq = 8;  
type
  PxvPutVideoReq = ^TxvPutVideoReq;
  TxvPutVideoReq = record
      reqType : TCARD8;
      xvReqType : TCARD8;
      length : TCARD16;
      port : TXvPortID;
      drawable : TDrawable;
      gc : TGContext;
      vid_x : TINT16;
      vid_y : TINT16;
      vid_w : TCARD16;
      vid_h : TCARD16;
      drw_x : TINT16;
      drw_y : TINT16;
      drw_w : TCARD16;
      drw_h : TCARD16;
    end;

const
  sz_xvPutVideoReq = 32;  
type
  PxvPutStillReq = ^TxvPutStillReq;
  TxvPutStillReq = record
      reqType : TCARD8;
      xvReqType : TCARD8;
      length : TCARD16;
      port : TXvPortID;
      drawable : TDrawable;
      gc : TGContext;
      vid_x : TINT16;
      vid_y : TINT16;
      vid_w : TCARD16;
      vid_h : TCARD16;
      drw_x : TINT16;
      drw_y : TINT16;
      drw_w : TCARD16;
      drw_h : TCARD16;
    end;

const
  sz_xvPutStillReq = 32;  
type
  PxvGetVideoReq = ^TxvGetVideoReq;
  TxvGetVideoReq = record
      reqType : TCARD8;
      xvReqType : TCARD8;
      length : TCARD16;
      port : TXvPortID;
      drawable : TDrawable;
      gc : TGContext;
      vid_x : TINT16;
      vid_y : TINT16;
      vid_w : TCARD16;
      vid_h : TCARD16;
      drw_x : TINT16;
      drw_y : TINT16;
      drw_w : TCARD16;
      drw_h : TCARD16;
    end;

const
  sz_xvGetVideoReq = 32;  
type
  PxvGetStillReq = ^TxvGetStillReq;
  TxvGetStillReq = record
      reqType : TCARD8;
      xvReqType : TCARD8;
      length : TCARD16;
      port : TXvPortID;
      drawable : TDrawable;
      gc : TGContext;
      vid_x : TINT16;
      vid_y : TINT16;
      vid_w : TCARD16;
      vid_h : TCARD16;
      drw_x : TINT16;
      drw_y : TINT16;
      drw_w : TCARD16;
      drw_h : TCARD16;
    end;

const
  sz_xvGetStillReq = 32;  
type
  PxvGrabPortReq = ^TxvGrabPortReq;
  TxvGrabPortReq = record
      reqType : TCARD8;
      xvReqType : TCARD8;
      length : TCARD16;
      port : TXvPortID;
      time : TTime;
    end;

const
  sz_xvGrabPortReq = 12;  
type
  PxvUngrabPortReq = ^TxvUngrabPortReq;
  TxvUngrabPortReq = record
      reqType : TCARD8;
      xvReqType : TCARD8;
      length : TCARD16;
      port : TXvPortID;
      time : TTime;
    end;

const
  sz_xvUngrabPortReq = 12;  
type
  PxvSelectVideoNotifyReq = ^TxvSelectVideoNotifyReq;
  TxvSelectVideoNotifyReq = record
      reqType : TCARD8;
      xvReqType : TCARD8;
      length : TCARD16;
      drawable : TDrawable;
      onoff : TBOOL;
      pad1 : TCARD8;
      pad2 : TCARD16;
    end;

const
  sz_xvSelectVideoNotifyReq = 12;  
type
  PxvSelectPortNotifyReq = ^TxvSelectPortNotifyReq;
  TxvSelectPortNotifyReq = record
      reqType : TCARD8;
      xvReqType : TCARD8;
      length : TCARD16;
      port : TXvPortID;
      onoff : TBOOL;
      pad1 : TCARD8;
      pad2 : TCARD16;
    end;

const
  sz_xvSelectPortNotifyReq = 12;  
type
  PxvStopVideoReq = ^TxvStopVideoReq;
  TxvStopVideoReq = record
      reqType : TCARD8;
      xvReqType : TCARD8;
      length : TCARD16;
      port : TXvPortID;
      drawable : TDrawable;
    end;

const
  sz_xvStopVideoReq = 12;  
type
  PxvSetPortAttributeReq = ^TxvSetPortAttributeReq;
  TxvSetPortAttributeReq = record
      reqType : TCARD8;
      xvReqType : TCARD8;
      length : TCARD16;
      port : TXvPortID;
      attribute : TAtom;
      value : TINT32;
    end;

const
  sz_xvSetPortAttributeReq = 16;  
type
  PxvGetPortAttributeReq = ^TxvGetPortAttributeReq;
  TxvGetPortAttributeReq = record
      reqType : TCARD8;
      xvReqType : TCARD8;
      length : TCARD16;
      port : TXvPortID;
      attribute : TAtom;
    end;

const
  sz_xvGetPortAttributeReq = 12;  
type
  PxvQueryBestSizeReq = ^TxvQueryBestSizeReq;
  TxvQueryBestSizeReq = record
      reqType : TCARD8;
      xvReqType : TCARD8;
      length : TCARD16;
      port : TXvPortID;
      vid_w : TCARD16;
      vid_h : TCARD16;
      drw_w : TCARD16;
      drw_h : TCARD16;
      motion : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD16;
    end;

const
  sz_xvQueryBestSizeReq = 20;  
type
  PxvQueryPortAttributesReq = ^TxvQueryPortAttributesReq;
  TxvQueryPortAttributesReq = record
      reqType : TCARD8;
      xvReqType : TCARD8;
      length : TCARD16;
      port : TXvPortID;
    end;

const
  sz_xvQueryPortAttributesReq = 8;  
type
  PxvPutImageReq = ^TxvPutImageReq;
  TxvPutImageReq = record
      reqType : TCARD8;
      xvReqType : TCARD8;
      length : TCARD16;
      port : TXvPortID;
      drawable : TDrawable;
      gc : TGContext;
      id : TCARD32;
      src_x : TINT16;
      src_y : TINT16;
      src_w : TCARD16;
      src_h : TCARD16;
      drw_x : TINT16;
      drw_y : TINT16;
      drw_w : TCARD16;
      drw_h : TCARD16;
      width : TCARD16;
      height : TCARD16;
    end;

const
  sz_xvPutImageReq = 40;  
type
  PxvShmPutImageReq = ^TxvShmPutImageReq;
  TxvShmPutImageReq = record
      reqType : TCARD8;
      xvReqType : TCARD8;
      length : TCARD16;
      port : TXvPortID;
      drawable : TDrawable;
      gc : TGContext;
      shmseg : TShmSeg;
      id : TCARD32;
      offset : TCARD32;
      src_x : TINT16;
      src_y : TINT16;
      src_w : TCARD16;
      src_h : TCARD16;
      drw_x : TINT16;
      drw_y : TINT16;
      drw_w : TCARD16;
      drw_h : TCARD16;
      width : TCARD16;
      height : TCARD16;
      send_event : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD16;
    end;

const
  sz_xvShmPutImageReq = 52;  
type
  PxvListImageFormatsReq = ^TxvListImageFormatsReq;
  TxvListImageFormatsReq = record
      reqType : TCARD8;
      xvReqType : TCARD8;
      length : TCARD16;
      port : TXvPortID;
    end;

const
  sz_xvListImageFormatsReq = 8;  
type
  PxvQueryImageAttributesReq = ^TxvQueryImageAttributesReq;
  TxvQueryImageAttributesReq = record
      reqType : TCARD8;
      xvReqType : TCARD8;
      length : TCARD16;
      port : TCARD32;
      id : TCARD32;
      width : TCARD16;
      height : TCARD16;
    end;

const
  sz_xvQueryImageAttributesReq = 16;  


type
  PQueryExtensionReply = ^TQueryExtensionReply;
  TQueryExtensionReply = record
      _type : TBYTE;
      padb1 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      version : TCARD16;
      revision : TCARD16;
      padl4 : TCARD32;
      padl5 : TCARD32;
      padl6 : TCARD32;
      padl7 : TCARD32;
      padl8 : TCARD32;
    end;
  TxvQueryExtensionReply = TQueryExtensionReply;
  PxvQueryExtensionReply = ^TxvQueryExtensionReply;

const
  sz_xvQueryExtensionReply = 32;  

type
  PQueryAdaptorsReply = ^TQueryAdaptorsReply;
  TQueryAdaptorsReply = record
      _type : TBYTE;
      padb1 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      num_adaptors : TCARD16;
      pads3 : TCARD16;
      padl4 : TCARD32;
      padl5 : TCARD32;
      padl6 : TCARD32;
      padl7 : TCARD32;
      padl8 : TCARD32;
    end;
  TxvQueryAdaptorsReply = TQueryAdaptorsReply;
  PxvQueryAdaptorsReply = ^TxvQueryAdaptorsReply;

const
  sz_xvQueryAdaptorsReply = 32;  

type
  PQueryEncodingsReply = ^TQueryEncodingsReply;
  TQueryEncodingsReply = record
      _type : TBYTE;
      padb1 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      num_encodings : TCARD16;
      padl3 : TCARD16;
      padl4 : TCARD32;
      padl5 : TCARD32;
      padl6 : TCARD32;
      padl7 : TCARD32;
      padl8 : TCARD32;
    end;
  TxvQueryEncodingsReply = TQueryEncodingsReply;
  PxvQueryEncodingsReply = ^TxvQueryEncodingsReply;

const
  sz_xvQueryEncodingsReply = 32;  


type
  PxvGrabPortReply = ^TxvGrabPortReply;
  TxvGrabPortReply = record
      _type : TBYTE;
      result : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      padl3 : TCARD32;
      padl4 : TCARD32;
      padl5 : TCARD32;
      padl6 : TCARD32;
      padl7 : TCARD32;
      padl8 : TCARD32;
    end;

const
  sz_xvGrabPortReply = 32;  


type
  PxvGetPortAttributeReply = ^TxvGetPortAttributeReply;
  TxvGetPortAttributeReply = record
      _type : TBYTE;
      padb1 : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      value : TINT32;
      padl4 : TCARD32;
      padl5 : TCARD32;
      padl6 : TCARD32;
      padl7 : TCARD32;
      padl8 : TCARD32;
    end;

const
  sz_xvGetPortAttributeReply = 32;  


type
  PxvQueryBestSizeReply = ^TxvQueryBestSizeReply;
  TxvQueryBestSizeReply = record
      _type : TBYTE;
      padb1 : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      actual_width : TCARD16;
      actual_height : TCARD16;
      padl4 : TCARD32;
      padl5 : TCARD32;
      padl6 : TCARD32;
      padl7 : TCARD32;
      padl8 : TCARD32;
    end;

const
  sz_xvQueryBestSizeReply = 32;  


type
  PxvQueryPortAttributesReply = ^TxvQueryPortAttributesReply;
  TxvQueryPortAttributesReply = record
      _type : TBYTE;
      padb1 : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      num_attributes : TCARD32;
      text_size : TCARD32;
      padl5 : TCARD32;
      padl6 : TCARD32;
      padl7 : TCARD32;
      padl8 : TCARD32;
    end;

const
  sz_xvQueryPortAttributesReply = 32;  

type
  PxvListImageFormatsReply = ^TxvListImageFormatsReply;
  TxvListImageFormatsReply = record
      _type : TBYTE;
      padb1 : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      num_formats : TCARD32;
      padl4 : TCARD32;
      padl5 : TCARD32;
      padl6 : TCARD32;
      padl7 : TCARD32;
      padl8 : TCARD32;
    end;

const
  sz_xvListImageFormatsReply = 32;  

type
  PxvQueryImageAttributesReply = ^TxvQueryImageAttributesReply;
  TxvQueryImageAttributesReply = record
      _type : TBYTE;
      padb1 : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      num_planes : TCARD32;
      data_size : TCARD32;
      width : TCARD16;
      height : TCARD16;
      padl6 : TCARD32;
      padl7 : TCARD32;
      padl8 : TCARD32;
    end;

const
  sz_xvQueryImageAttributesReply = 32;  

type
  PxvEvent = ^TxvEvent;
  TxvEvent = record
      u : record
          case longint of
            0 : ( u : record
                _type : TBYTE;
                detail : TBYTE;
                sequenceNumber : TCARD16;
              end );
            1 : ( videoNotify : record
                _type : TBYTE;
                reason : TBYTE;
                sequenceNumber : TCARD16;
                time : TTime;
                drawable : TDrawable;
                port : TXvPortID;
                padl5 : TCARD32;
                padl6 : TCARD32;
                padl7 : TCARD32;
                padl8 : TCARD32;
              end );
            2 : ( portNotify : record
                _type : TBYTE;
                padb1 : TBYTE;
                sequenceNumber : TCARD16;
                time : TTime;
                port : TXvPortID;
                attribute : TAtom;
                value : TINT32;
                padl6 : TCARD32;
                padl7 : TCARD32;
                padl8 : TCARD32;
              end );
          end;
    end;
{$undef XvPortID}
{$undef XvEncodingID}
{$undef ShmSeg}
{$undef VisualID}
{$undef Drawable}
{$undef GContext}
{$undef Time}
{$undef Atom}
{$endif}


implementation


end.
