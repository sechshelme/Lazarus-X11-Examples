
unit multibufproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/multibufproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/multibufproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/multibufproto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _MULTIBUFPROTO_H_}
{$define _MULTIBUFPROTO_H_}  
{$include <X11/extensions/multibufconst.h>}


  const
    Window = CARD32;    
    Drawable = CARD32;    
    VisualID = CARD32;    
    Multibuffer = CARD32;    
    X_MbufGetBufferVersion = 0;    
    X_MbufCreateImageBuffers = 1;    
    X_MbufDestroyImageBuffers = 2;    
    X_MbufDisplayImageBuffers = 3;    
    X_MbufSetMBufferAttributes = 4;    
    X_MbufGetMBufferAttributes = 5;    
    X_MbufSetBufferAttributes = 6;    
    X_MbufGetBufferAttributes = 7;    
    X_MbufGetBufferInfo = 8;    
    X_MbufCreateStereoWindow = 9;    
    X_MbufClearImageBufferArea = 10;    




  type
    xMbufBufferInfo = record
        visualID : CARD32;
        maxBuffers : CARD16;
        depth : CARD8;
        unused : CARD8;
      end;

  const
    sz_xMbufBufferInfo = 8;    



  type
    xMbufClobberNotifyEvent = record
        _type : BYTE;
        unused : BYTE;
        sequenceNumber : CARD16;
        buffer : CARD32;
        state : BYTE;
        unused1 : CARD8;
        unused2 : CARD16;
        unused3 : CARD32;
        unused4 : CARD32;
        unused5 : CARD32;
        unused6 : CARD32;
        unused7 : CARD32;
      end;



    xMbufUpdateNotifyEvent = record
        _type : BYTE;
        unused : BYTE;
        sequenceNumber : CARD16;
        buffer : CARD32;
        timeStamp : CARD32;
        unused1 : CARD32;
        unused2 : CARD32;
        unused3 : CARD32;
        unused4 : CARD32;
        unused5 : CARD32;
        unused6 : CARD32;
      end;



    xMbufGetBufferVersionReq = record
        reqType : CARD8;
        mbufReqType : CARD8;
        length : CARD16;
      end;

  const
    sz_xMbufGetBufferVersionReq = 4;    





  type
    xMbufGetBufferVersionReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        majorVersion : CARD8;
        minorVersion : CARD8;
        pad1 : CARD16;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xMbufGetBufferVersionReply = 32;    






  type
    xMbufCreateImageBuffersReq = record
        reqType : CARD8;
        mbufReqType : CARD8;
        length : CARD16;
        window : CARD32;
        updateAction : CARD8;
        updateHint : CARD8;
        unused : CARD16;
      end;


  const
    sz_xMbufCreateImageBuffersReq = 12;    




  type
    xMbufCreateImageBuffersReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        numberBuffer : CARD16;
        unused1 : CARD16;
        unused2 : CARD32;
        unused3 : CARD32;
        unused4 : CARD32;
        unused5 : CARD32;
        unused6 : CARD32;
      end;

  const
    sz_xMbufCreateImageBuffersReply = 32;    




  type
    xMbufDestroyImageBuffersReq = record
        reqType : CARD8;
        mbufReqType : CARD8;
        length : CARD16;
        window : CARD32;
      end;

  const
    sz_xMbufDestroyImageBuffersReq = 8;    





  type
    xMbufDisplayImageBuffersReq = record
        reqType : CARD8;
        mbufReqType : CARD8;
        length : CARD16;
        minDelay : CARD16;
        maxDelay : CARD16;
      end;


  const
    sz_xMbufDisplayImageBuffersReq = 8;    





  type
    xMbufSetMBufferAttributesReq = record
        reqType : CARD8;
        mbufReqType : CARD8;
        length : CARD16;
        window : CARD32;
        valueMask : CARD32;
      end;


  const
    sz_xMbufSetMBufferAttributesReq = 12;    




  type
    xMbufGetMBufferAttributesReq = record
        reqType : CARD8;
        mbufReqType : CARD8;
        length : CARD16;
        window : CARD32;
      end;

  const
    sz_xMbufGetMBufferAttributesReq = 8;    




  type
    xMbufGetMBufferAttributesReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        displayedBuffer : CARD16;
        updateAction : CARD8;
        updateHint : CARD8;
        windowMode : CARD8;
        unused0 : CARD8;
        unused1 : CARD16;
        unused2 : CARD32;
        unused3 : CARD32;
        unused4 : CARD32;
        unused5 : CARD32;
      end;

  const
    sz_xMbufGetMBufferAttributesReply = 32;    



  type
    xMbufSetBufferAttributesReq = record
        reqType : CARD8;
        mbufReqType : CARD8;
        length : CARD16;
        buffer : CARD32;
        valueMask : CARD32;
      end;


  const
    sz_xMbufSetBufferAttributesReq = 12;    



  type
    xMbufGetBufferAttributesReq = record
        reqType : CARD8;
        mbufReqType : CARD8;
        length : CARD16;
        buffer : CARD32;
      end;

  const
    sz_xMbufGetBufferAttributesReq = 8;    



  type
    xMbufGetBufferAttributesReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        window : CARD32;
        eventMask : CARD32;
        bufferIndex : CARD16;
        side : CARD8;
        unused0 : CARD8;
        unused1 : CARD32;
        unused2 : CARD32;
        unused3 : CARD32;
      end;

  const
    sz_xMbufGetBufferAttributesReply = 32;    



  type
    xMbufGetBufferInfoReq = record
        reqType : CARD8;
        mbufReqType : CARD8;
        length : CARD16;
        drawable : Drawable;
      end;

  const
    sz_xMbufGetBufferInfoReq = 8;    



  type
    xMbufGetBufferInfoReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        normalInfo : CARD16;
        stereoInfo : CARD16;
        unused1 : CARD32;
        unused2 : CARD32;
        unused3 : CARD32;
        unused4 : CARD32;
        unused5 : CARD32;
      end;


  const
    sz_xMbufGetBufferInfoReply = 32;    



{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

  type
    xMbufCreateStereoWindowReq = record
        reqType : CARD8;
        mbufReqType : CARD8;
        length : CARD16;
        unused0 : CARD8;
        unused1 : CARD8;
        unused2 : CARD8;
        depth : CARD8;
        wid : Window;
        parent : Window;
        left : Multibuffer;
        right : Multibuffer;
        x : INT16;
        y : INT16;
        width : CARD16;
        height : CARD16;
        borderWidth : CARD16;
        c_class : CARD16;
        _class : CARD16;
        visual : VisualID;
        mask : CARD32;
      end;


  const
    sz_xMbufCreateStereoWindowReq = 44;    



  type
    xMbufClearImageBufferAreaReq = record
        reqType : CARD8;
        mbufReqType : CARD8;
        length : CARD16;
        buffer : Multibuffer;
        x : INT16;
        y : INT16;
        width : CARD16;
        height : CARD16;
        unused0 : CARD8;
        unused1 : CARD8;
        unused2 : CARD8;
        exposures : BOOL;
      end;

  const
    sz_xMbufClearImageBufferAreaReq = 20;    
{$undef Window}
{$undef Drawable}
{$undef VisualID}
{$undef Multibuffer}
{$endif}


implementation


end.
