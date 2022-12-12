
unit dri2proto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/dri2proto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/dri2proto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/dri2proto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _DRI2_PROTO_H_}
{$define _DRI2_PROTO_H_}  

  const
    DRI2_NAME = 'DRI2';    
    DRI2_MAJOR = 1;    
    DRI2_MINOR = 4;    
    DRI2NumberErrors = 0;    
    DRI2NumberEvents = 2;    
    DRI2NumberRequests = 14;    
    X_DRI2QueryVersion = 0;    
    X_DRI2Connect = 1;    
    X_DRI2Authenticate = 2;    
    X_DRI2CreateDrawable = 3;    
    X_DRI2DestroyDrawable = 4;    
    X_DRI2GetBuffers = 5;    
    X_DRI2CopyRegion = 6;    
    X_DRI2GetBuffersWithFormat = 7;    
    X_DRI2SwapBuffers = 8;    
    X_DRI2GetMSC = 9;    
    X_DRI2WaitMSC = 10;    
    X_DRI2WaitSBC = 11;    
    X_DRI2SwapInterval = 12;    
    X_DRI2GetParam = 13;    

    DRI2_BufferSwapComplete = 0;    
    DRI2_InvalidateBuffers = 1;    

  type
    xDRI2Buffer = record
        attachment : CARD32;
        name : CARD32;
        pitch : CARD32;
        cpp : CARD32;
        flags : CARD32;
      end;

    xDRI2QueryVersionReq = record
        reqType : CARD8;
        dri2ReqType : CARD8;
        length : CARD16;
        majorVersion : CARD32;
        minorVersion : CARD32;
      end;

  const
    sz_xDRI2QueryVersionReq = 12;    


  type
    xDRI2QueryVersionReply = record
        _type : BYTE;
        pad1 : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        majorVersion : CARD32;
        minorVersion : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xDRI2QueryVersionReply = 32;    

  type
    xDRI2ConnectReq = record
        reqType : CARD8;
        dri2ReqType : CARD8;
        length : CARD16;
        window : CARD32;
        driverType : CARD32;
      end;

  const
    sz_xDRI2ConnectReq = 12;    


  type
    xDRI2ConnectReply = record
        _type : BYTE;
        pad1 : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        driverNameLength : CARD32;
        deviceNameLength : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xDRI2ConnectReply = 32;    

  type
    xDRI2AuthenticateReq = record
        reqType : CARD8;
        dri2ReqType : CARD8;
        length : CARD16;
        window : CARD32;
        magic : CARD32;
      end;

  const
    sz_xDRI2AuthenticateReq = 12;    


  type
    xDRI2AuthenticateReply = record
        _type : BYTE;
        pad1 : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        authenticated : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xDRI2AuthenticateReply = 32;    

  type
    xDRI2CreateDrawableReq = record
        reqType : CARD8;
        dri2ReqType : CARD8;
        length : CARD16;
        drawable : CARD32;
      end;

  const
    sz_xDRI2CreateDrawableReq = 8;    

  type
    xDRI2DestroyDrawableReq = record
        reqType : CARD8;
        dri2ReqType : CARD8;
        length : CARD16;
        drawable : CARD32;
      end;

  const
    sz_xDRI2DestroyDrawableReq = 8;    

  type
    xDRI2GetBuffersReq = record
        reqType : CARD8;
        dri2ReqType : CARD8;
        length : CARD16;
        drawable : CARD32;
        count : CARD32;
      end;

  const
    sz_xDRI2GetBuffersReq = 12;    


  type
    xDRI2GetBuffersReply = record
        _type : BYTE;
        pad1 : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        width : CARD32;
        height : CARD32;
        count : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;

  const
    sz_xDRI2GetBuffersReply = 32;    

  type
    xDRI2CopyRegionReq = record
        reqType : CARD8;
        dri2ReqType : CARD8;
        length : CARD16;
        drawable : CARD32;
        region : CARD32;
        dest : CARD32;
        src : CARD32;
      end;

  const
    sz_xDRI2CopyRegionReq = 20;    


  type
    xDRI2CopyRegionReply = record
        _type : BYTE;
        pad1 : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
        pad7 : CARD32;
      end;

  const
    sz_xDRI2CopyRegionReply = 32;    

  type
    xDRI2SwapBuffersReq = record
        reqType : CARD8;
        dri2ReqType : CARD8;
        length : CARD16;
        drawable : CARD32;
        target_msc_hi : CARD32;
        target_msc_lo : CARD32;
        divisor_hi : CARD32;
        divisor_lo : CARD32;
        remainder_hi : CARD32;
        remainder_lo : CARD32;
      end;

  const
    sz_xDRI2SwapBuffersReq = 32;    


  type
    xDRI2SwapBuffersReply = record
        _type : BYTE;
        pad1 : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        swap_hi : CARD32;
        swap_lo : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xDRI2SwapBuffersReply = 32;    

  type
    xDRI2GetMSCReq = record
        reqType : CARD8;
        dri2ReqType : CARD8;
        length : CARD16;
        drawable : CARD32;
      end;

  const
    sz_xDRI2GetMSCReq = 8;    

  type
    xDRI2WaitMSCReq = record
        reqType : CARD8;
        dri2ReqType : CARD8;
        length : CARD16;
        drawable : CARD32;
        target_msc_hi : CARD32;
        target_msc_lo : CARD32;
        divisor_hi : CARD32;
        divisor_lo : CARD32;
        remainder_hi : CARD32;
        remainder_lo : CARD32;
      end;

  const
    sz_xDRI2WaitMSCReq = 32;    

  type
    xDRI2WaitSBCReq = record
        reqType : CARD8;
        dri2ReqType : CARD8;
        length : CARD16;
        drawable : CARD32;
        target_sbc_hi : CARD32;
        target_sbc_lo : CARD32;
      end;

  const
    sz_xDRI2WaitSBCReq = 16;    

  type
    xDRI2MSCReply = record
        _type : CARD8;
        pad1 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        ust_hi : CARD32;
        ust_lo : CARD32;
        msc_hi : CARD32;
        msc_lo : CARD32;
        sbc_hi : CARD32;
        sbc_lo : CARD32;
      end;

  const
    sz_xDRI2MSCReply = 32;    

  type
    xDRI2SwapIntervalReq = record
        reqType : CARD8;
        dri2ReqType : CARD8;
        length : CARD16;
        drawable : CARD32;
        interval : CARD32;
      end;

  const
    sz_xDRI2SwapIntervalReq = 12;    

  type
    xDRI2BufferSwapComplete = record
        _type : CARD8;
        pad : CARD8;
        sequenceNumber : CARD16;
        event_type : CARD16;
        pad2 : CARD16;
        drawable : CARD32;
        ust_hi : CARD32;
        ust_lo : CARD32;
        msc_hi : CARD32;
        msc_lo : CARD32;
        sbc_hi : CARD32;
        sbc_lo : CARD32;
      end;

  const
    sz_xDRI2BufferSwapComplete = 32;    

  type
    xDRI2BufferSwapComplete2 = record
        _type : CARD8;
        pad : CARD8;
        sequenceNumber : CARD16;
        event_type : CARD16;
        pad2 : CARD16;
        drawable : CARD32;
        ust_hi : CARD32;
        ust_lo : CARD32;
        msc_hi : CARD32;
        msc_lo : CARD32;
        sbc : CARD32;
      end;

  const
    sz_xDRI2BufferSwapComplete2 = 32;    

  type
    xDRI2InvalidateBuffers = record
        _type : CARD8;
        pad : CARD8;
        sequenceNumber : CARD16;
        drawable : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xDRI2InvalidateBuffers = 32;    

  type
    xDRI2GetParamReq = record
        reqType : CARD8;
        dri2ReqType : CARD8;
        length : CARD16;
        drawable : CARD32;
        param : CARD32;
      end;

  const
    sz_xDRI2GetParamReq = 12;    


  type
    xDRI2GetParamReply = record
        _type : BYTE;
        is_param_recognized : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        value_hi : CARD32;
        value_lo : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;

  const
    sz_xDRI2GetParamReply = 32;    
{$endif}

implementation


end.
