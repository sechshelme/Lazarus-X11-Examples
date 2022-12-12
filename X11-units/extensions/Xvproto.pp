
unit Xvproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/Xvproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/Xvproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/Xvproto.pp
}

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
    xvRational = record
        numerator : INT32;
        denominator : INT32;
      end;

  const
    sz_xvRational = 8;    

  type
    xvAdaptorInfo = record
        base_id : XvPortID;
        name_size : CARD16;
        num_ports : CARD16;
        num_formats : CARD16;
        _type : CARD8;
        pad : CARD8;
      end;

  const
    sz_xvAdaptorInfo = 12;    

  type
    xvEncodingInfo = record
        encoding : XvEncodingID;
        name_size : CARD16;
        width : CARD16;
        height : CARD16;
        pad : CARD16;
        rate : xvRational;
      end;

  const
    sz_xvEncodingInfo = 12+sz_xvRational;    

  type
    xvFormat = record
        visual : VisualID;
        depth : CARD8;
        pad1 : CARD8;
        pad2 : CARD16;
      end;

  const
    sz_xvFormat = 8;    

  type
    xvAttributeInfo = record
        flags : CARD32;
        min : INT32;
        max : INT32;
        size : CARD32;
      end;

  const
    sz_xvAttributeInfo = 16;    

  type
    xvImageFormatInfo = record
        id : CARD32;
        _type : CARD8;
        byte_order : CARD8;
        pad1 : CARD16;
        guid : array[0..15] of CARD8;
        bpp : CARD8;
        num_planes : CARD8;
        pad2 : CARD16;
        depth : CARD8;
        pad3 : CARD8;
        pad4 : CARD16;
        red_mask : CARD32;
        green_mask : CARD32;
        blue_mask : CARD32;
        format : CARD8;
        pad5 : CARD8;
        pad6 : CARD16;
        y_sample_bits : CARD32;
        u_sample_bits : CARD32;
        v_sample_bits : CARD32;
        horz_y_period : CARD32;
        horz_u_period : CARD32;
        horz_v_period : CARD32;
        vert_y_period : CARD32;
        vert_u_period : CARD32;
        vert_v_period : CARD32;
        comp_order : array[0..31] of CARD8;
        scanline_order : CARD8;
        pad7 : CARD8;
        pad8 : CARD16;
        pad9 : CARD32;
        pad10 : CARD32;
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
    xvQueryExtensionReq = record
        reqType : CARD8;
        xvReqType : CARD8;
        length : CARD16;
      end;

  const
    sz_xvQueryExtensionReq = 4;    

  type
    xvQueryAdaptorsReq = record
        reqType : CARD8;
        xvReqType : CARD8;
        length : CARD16;
        window : CARD32;
      end;

  const
    sz_xvQueryAdaptorsReq = 8;    

  type
    xvQueryEncodingsReq = record
        reqType : CARD8;
        xvReqType : CARD8;
        length : CARD16;
        port : CARD32;
      end;

  const
    sz_xvQueryEncodingsReq = 8;    

  type
    xvPutVideoReq = record
        reqType : CARD8;
        xvReqType : CARD8;
        length : CARD16;
        port : XvPortID;
        drawable : Drawable;
        gc : GContext;
        vid_x : INT16;
        vid_y : INT16;
        vid_w : CARD16;
        vid_h : CARD16;
        drw_x : INT16;
        drw_y : INT16;
        drw_w : CARD16;
        drw_h : CARD16;
      end;

  const
    sz_xvPutVideoReq = 32;    

  type
    xvPutStillReq = record
        reqType : CARD8;
        xvReqType : CARD8;
        length : CARD16;
        port : XvPortID;
        drawable : Drawable;
        gc : GContext;
        vid_x : INT16;
        vid_y : INT16;
        vid_w : CARD16;
        vid_h : CARD16;
        drw_x : INT16;
        drw_y : INT16;
        drw_w : CARD16;
        drw_h : CARD16;
      end;

  const
    sz_xvPutStillReq = 32;    

  type
    xvGetVideoReq = record
        reqType : CARD8;
        xvReqType : CARD8;
        length : CARD16;
        port : XvPortID;
        drawable : Drawable;
        gc : GContext;
        vid_x : INT16;
        vid_y : INT16;
        vid_w : CARD16;
        vid_h : CARD16;
        drw_x : INT16;
        drw_y : INT16;
        drw_w : CARD16;
        drw_h : CARD16;
      end;

  const
    sz_xvGetVideoReq = 32;    

  type
    xvGetStillReq = record
        reqType : CARD8;
        xvReqType : CARD8;
        length : CARD16;
        port : XvPortID;
        drawable : Drawable;
        gc : GContext;
        vid_x : INT16;
        vid_y : INT16;
        vid_w : CARD16;
        vid_h : CARD16;
        drw_x : INT16;
        drw_y : INT16;
        drw_w : CARD16;
        drw_h : CARD16;
      end;

  const
    sz_xvGetStillReq = 32;    

  type
    xvGrabPortReq = record
        reqType : CARD8;
        xvReqType : CARD8;
        length : CARD16;
        port : XvPortID;
        time : Time;
      end;

  const
    sz_xvGrabPortReq = 12;    

  type
    xvUngrabPortReq = record
        reqType : CARD8;
        xvReqType : CARD8;
        length : CARD16;
        port : XvPortID;
        time : Time;
      end;

  const
    sz_xvUngrabPortReq = 12;    

  type
    xvSelectVideoNotifyReq = record
        reqType : CARD8;
        xvReqType : CARD8;
        length : CARD16;
        drawable : Drawable;
        onoff : BOOL;
        pad1 : CARD8;
        pad2 : CARD16;
      end;

  const
    sz_xvSelectVideoNotifyReq = 12;    

  type
    xvSelectPortNotifyReq = record
        reqType : CARD8;
        xvReqType : CARD8;
        length : CARD16;
        port : XvPortID;
        onoff : BOOL;
        pad1 : CARD8;
        pad2 : CARD16;
      end;

  const
    sz_xvSelectPortNotifyReq = 12;    

  type
    xvStopVideoReq = record
        reqType : CARD8;
        xvReqType : CARD8;
        length : CARD16;
        port : XvPortID;
        drawable : Drawable;
      end;

  const
    sz_xvStopVideoReq = 12;    

  type
    xvSetPortAttributeReq = record
        reqType : CARD8;
        xvReqType : CARD8;
        length : CARD16;
        port : XvPortID;
        attribute : Atom;
        value : INT32;
      end;

  const
    sz_xvSetPortAttributeReq = 16;    

  type
    xvGetPortAttributeReq = record
        reqType : CARD8;
        xvReqType : CARD8;
        length : CARD16;
        port : XvPortID;
        attribute : Atom;
      end;

  const
    sz_xvGetPortAttributeReq = 12;    

  type
    xvQueryBestSizeReq = record
        reqType : CARD8;
        xvReqType : CARD8;
        length : CARD16;
        port : XvPortID;
        vid_w : CARD16;
        vid_h : CARD16;
        drw_w : CARD16;
        drw_h : CARD16;
        motion : CARD8;
        pad1 : CARD8;
        pad2 : CARD16;
      end;

  const
    sz_xvQueryBestSizeReq = 20;    

  type
    xvQueryPortAttributesReq = record
        reqType : CARD8;
        xvReqType : CARD8;
        length : CARD16;
        port : XvPortID;
      end;

  const
    sz_xvQueryPortAttributesReq = 8;    

  type
    xvPutImageReq = record
        reqType : CARD8;
        xvReqType : CARD8;
        length : CARD16;
        port : XvPortID;
        drawable : Drawable;
        gc : GContext;
        id : CARD32;
        src_x : INT16;
        src_y : INT16;
        src_w : CARD16;
        src_h : CARD16;
        drw_x : INT16;
        drw_y : INT16;
        drw_w : CARD16;
        drw_h : CARD16;
        width : CARD16;
        height : CARD16;
      end;

  const
    sz_xvPutImageReq = 40;    

  type
    xvShmPutImageReq = record
        reqType : CARD8;
        xvReqType : CARD8;
        length : CARD16;
        port : XvPortID;
        drawable : Drawable;
        gc : GContext;
        shmseg : ShmSeg;
        id : CARD32;
        offset : CARD32;
        src_x : INT16;
        src_y : INT16;
        src_w : CARD16;
        src_h : CARD16;
        drw_x : INT16;
        drw_y : INT16;
        drw_w : CARD16;
        drw_h : CARD16;
        width : CARD16;
        height : CARD16;
        send_event : CARD8;
        pad1 : CARD8;
        pad2 : CARD16;
      end;

  const
    sz_xvShmPutImageReq = 52;    

  type
    xvListImageFormatsReq = record
        reqType : CARD8;
        xvReqType : CARD8;
        length : CARD16;
        port : XvPortID;
      end;

  const
    sz_xvListImageFormatsReq = 8;    

  type
    xvQueryImageAttributesReq = record
        reqType : CARD8;
        xvReqType : CARD8;
        length : CARD16;
        port : CARD32;
        id : CARD32;
        width : CARD16;
        height : CARD16;
      end;

  const
    sz_xvQueryImageAttributesReq = 16;    



  type
    _QueryExtensionReply = record
        _type : BYTE;
        padb1 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        version : CARD16;
        revision : CARD16;
        padl4 : CARD32;
        padl5 : CARD32;
        padl6 : CARD32;
        padl7 : CARD32;
        padl8 : CARD32;
      end;
    xvQueryExtensionReply = _QueryExtensionReply;

  const
    sz_xvQueryExtensionReply = 32;    


  type
    _QueryAdaptorsReply = record
        _type : BYTE;
        padb1 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        num_adaptors : CARD16;
        pads3 : CARD16;
        padl4 : CARD32;
        padl5 : CARD32;
        padl6 : CARD32;
        padl7 : CARD32;
        padl8 : CARD32;
      end;
    xvQueryAdaptorsReply = _QueryAdaptorsReply;

  const
    sz_xvQueryAdaptorsReply = 32;    


  type
    _QueryEncodingsReply = record
        _type : BYTE;
        padb1 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        num_encodings : CARD16;
        padl3 : CARD16;
        padl4 : CARD32;
        padl5 : CARD32;
        padl6 : CARD32;
        padl7 : CARD32;
        padl8 : CARD32;
      end;
    xvQueryEncodingsReply = _QueryEncodingsReply;

  const
    sz_xvQueryEncodingsReply = 32;    



  type
    xvGrabPortReply = record
        _type : BYTE;
        result : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        padl3 : CARD32;
        padl4 : CARD32;
        padl5 : CARD32;
        padl6 : CARD32;
        padl7 : CARD32;
        padl8 : CARD32;
      end;

  const
    sz_xvGrabPortReply = 32;    



  type
    xvGetPortAttributeReply = record
        _type : BYTE;
        padb1 : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        value : INT32;
        padl4 : CARD32;
        padl5 : CARD32;
        padl6 : CARD32;
        padl7 : CARD32;
        padl8 : CARD32;
      end;

  const
    sz_xvGetPortAttributeReply = 32;    



  type
    xvQueryBestSizeReply = record
        _type : BYTE;
        padb1 : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        actual_width : CARD16;
        actual_height : CARD16;
        padl4 : CARD32;
        padl5 : CARD32;
        padl6 : CARD32;
        padl7 : CARD32;
        padl8 : CARD32;
      end;

  const
    sz_xvQueryBestSizeReply = 32;    



  type
    xvQueryPortAttributesReply = record
        _type : BYTE;
        padb1 : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        num_attributes : CARD32;
        text_size : CARD32;
        padl5 : CARD32;
        padl6 : CARD32;
        padl7 : CARD32;
        padl8 : CARD32;
      end;

  const
    sz_xvQueryPortAttributesReply = 32;    


  type
    xvListImageFormatsReply = record
        _type : BYTE;
        padb1 : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        num_formats : CARD32;
        padl4 : CARD32;
        padl5 : CARD32;
        padl6 : CARD32;
        padl7 : CARD32;
        padl8 : CARD32;
      end;

  const
    sz_xvListImageFormatsReply = 32;    


  type
    xvQueryImageAttributesReply = record
        _type : BYTE;
        padb1 : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        num_planes : CARD32;
        data_size : CARD32;
        width : CARD16;
        height : CARD16;
        padl6 : CARD32;
        padl7 : CARD32;
        padl8 : CARD32;
      end;

  const
    sz_xvQueryImageAttributesReply = 32;    


  type
    xvEvent = record
        u : record
            case longint of
              0 : ( u : record
                  _type : BYTE;
                  detail : BYTE;
                  sequenceNumber : CARD16;
                end );
              1 : ( videoNotify : record
                  _type : BYTE;
                  reason : BYTE;
                  sequenceNumber : CARD16;
                  time : Time;
                  drawable : Drawable;
                  port : XvPortID;
                  padl5 : CARD32;
                  padl6 : CARD32;
                  padl7 : CARD32;
                  padl8 : CARD32;
                end );
              2 : ( portNotify : record
                  _type : BYTE;
                  padb1 : BYTE;
                  sequenceNumber : CARD16;
                  time : Time;
                  port : XvPortID;
                  attribute : Atom;
                  value : INT32;
                  padl6 : CARD32;
                  padl7 : CARD32;
                  padl8 : CARD32;
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
