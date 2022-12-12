
unit dri3proto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/dri3proto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/dri3proto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/dri3proto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _DRI3_PROTO_H_}
{$define _DRI3_PROTO_H_}  

  const
    DRI3_NAME = 'DRI3';    
    DRI3_MAJOR = 1;    
    DRI3_MINOR = 2;    
    DRI3NumberErrors = 0;    
    DRI3NumberEvents = 0;    
    X_DRI3QueryVersion = 0;    
    X_DRI3Open = 1;    
    X_DRI3PixmapFromBuffer = 2;    
    X_DRI3BufferFromPixmap = 3;    
    X_DRI3FenceFromFD = 4;    
    X_DRI3FDFromFence = 5;    

    xDRI3GetSupportedModifiers = 6;    
    xDRI3PixmapFromBuffers = 7;    
    xDRI3BuffersFromPixmap = 8;    
    DRI3NumberRequests = 9;    

  type
    xDRI3QueryVersionReq = record
        reqType : CARD8;
        dri3ReqType : CARD8;
        length : CARD16;
        majorVersion : CARD32;
        minorVersion : CARD32;
      end;

  const
    sz_xDRI3QueryVersionReq = 12;    


  type
    xDRI3QueryVersionReply = record
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
    sz_xDRI3QueryVersionReply = 32;    

  type
    xDRI3OpenReq = record
        reqType : CARD8;
        dri3ReqType : CARD8;
        length : CARD16;
        drawable : CARD32;
        provider : CARD32;
      end;

  const
    sz_xDRI3OpenReq = 12;    


  type
    xDRI3OpenReply = record
        _type : BYTE;
        nfd : CARD8;
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
    sz_xDRI3OpenReply = 32;    

  type
    xDRI3PixmapFromBufferReq = record
        reqType : CARD8;
        dri3ReqType : CARD8;
        length : CARD16;
        pixmap : CARD32;
        drawable : CARD32;
        size : CARD32;
        width : CARD16;
        height : CARD16;
        stride : CARD16;
        depth : CARD8;
        bpp : CARD8;
      end;

  const
    sz_xDRI3PixmapFromBufferReq = 24;    

  type
    xDRI3BufferFromPixmapReq = record
        reqType : CARD8;
        dri3ReqType : CARD8;
        length : CARD16;
        pixmap : CARD32;
      end;

  const
    sz_xDRI3BufferFromPixmapReq = 8;    



  type
    xDRI3BufferFromPixmapReply = record
        _type : BYTE;
        nfd : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        size : CARD32;
        width : CARD16;
        height : CARD16;
        stride : CARD16;
        depth : CARD8;
        bpp : CARD8;
        pad20 : CARD32;
        pad24 : CARD32;
        pad28 : CARD32;
      end;

  const
    sz_xDRI3BufferFromPixmapReply = 32;    

  type
    xDRI3FenceFromFDReq = record
        reqType : CARD8;
        dri3ReqType : CARD8;
        length : CARD16;
        drawable : CARD32;
        fence : CARD32;
        initially_triggered : BOOL;
        pad13 : CARD8;
        pad14 : CARD16;
      end;

  const
    sz_xDRI3FenceFromFDReq = 16;    

  type
    xDRI3FDFromFenceReq = record
        reqType : CARD8;
        dri3ReqType : CARD8;
        length : CARD16;
        drawable : CARD32;
        fence : CARD32;
      end;

  const
    sz_xDRI3FDFromFenceReq = 12;    



  type
    xDRI3FDFromFenceReply = record
        _type : BYTE;
        nfd : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        pad08 : CARD32;
        pad12 : CARD32;
        pad16 : CARD32;
        pad20 : CARD32;
        pad24 : CARD32;
        pad28 : CARD32;
      end;

  const
    sz_xDRI3FDFromFenceReply = 32;    


  type
    xDRI3GetSupportedModifiersReq = record
        reqType : CARD8;
        dri3ReqType : CARD8;
        length : CARD16;
        window : CARD32;
        depth : CARD8;
        bpp : CARD8;
        pad10 : CARD16;
      end;

  const
    sz_xDRI3GetSupportedModifiersReq = 12;    


  type
    xDRI3GetSupportedModifiersReply = record
        _type : BYTE;
        pad1 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        numWindowModifiers : CARD32;
        numScreenModifiers : CARD32;
        pad16 : CARD32;
        pad20 : CARD32;
        pad24 : CARD32;
        pad28 : CARD32;
      end;

  const
    sz_xDRI3GetSupportedModifiersReply = 32;    


  type
    xDRI3PixmapFromBuffersReq = record
        reqType : CARD8;
        dri3ReqType : CARD8;
        length : CARD16;
        pixmap : CARD32;
        window : CARD32;
        num_buffers : CARD8;
        pad13 : CARD8;
        pad14 : CARD16;
        width : CARD16;
        height : CARD16;
        stride0 : CARD32;
        offset0 : CARD32;
        stride1 : CARD32;
        offset1 : CARD32;
        stride2 : CARD32;
        offset2 : CARD32;
        stride3 : CARD32;
        offset3 : CARD32;
        depth : CARD8;
        bpp : CARD8;
        pad54 : CARD16;
        modifier : CARD64;
      end;

  const
    sz_xDRI3PixmapFromBuffersReq = 64;    

  type
    xDRI3BuffersFromPixmapReq = record
        reqType : CARD8;
        dri3ReqType : CARD8;
        length : CARD16;
        pixmap : CARD32;
      end;

  const
    sz_xDRI3BuffersFromPixmapReq = 8;    



  type
    xDRI3BuffersFromPixmapReply = record
        _type : BYTE;
        nfd : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        width : CARD16;
        height : CARD16;
        pad12 : CARD32;
        modifier : CARD64;
        depth : CARD8;
        bpp : CARD8;
        pad26 : CARD16;
        pad28 : CARD32;
      end;

  const
    sz_xDRI3BuffersFromPixmapReply = 32;    
{$endif}

implementation


end.
