
unit xf86driproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/dri/xf86driproto.h
  The following command line parameters were used:
    /usr/include/X11/dri/xf86driproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/dri/xf86driproto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XF86DRISTR_H_}
{$define _XF86DRISTR_H_}  
{$include "xf86dri.h"}

  const
    XF86DRINAME = 'XFree86-DRI';    

    XF86DRI_MAJOR_VERSION = 4;    
    XF86DRI_MINOR_VERSION = 1;    
    XF86DRI_PATCH_VERSION = 0;    



  type
    _XF86DRIQueryVersion = record
        reqType : CARD8;
        driReqType : CARD8;
        length : CARD16;
      end;
    xXF86DRIQueryVersionReq = _XF86DRIQueryVersion;

  const
    sz_xXF86DRIQueryVersionReq = 4;    





  type
    xXF86DRIQueryVersionReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        majorVersion : CARD16;
        minorVersion : CARD16;
        patchVersion : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xXF86DRIQueryVersionReply = 32;    



  type
    _XF86DRIQueryDirectRenderingCapable = record
        reqType : CARD8;
        driReqType : CARD8;
        length : CARD16;
        screen : CARD32;
      end;
    xXF86DRIQueryDirectRenderingCapableReq = _XF86DRIQueryDirectRenderingCapable;

  const
    sz_xXF86DRIQueryDirectRenderingCapableReq = 8;    


  type
    xXF86DRIQueryDirectRenderingCapableReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        isCapable : BOOL;
        pad2 : BOOL;
        pad3 : BOOL;
        pad4 : BOOL;
        pad5 : CARD32;
        pad6 : CARD32;
        pad7 : CARD32;
        pad8 : CARD32;
        pad9 : CARD32;
      end;

  const
    sz_xXF86DRIQueryDirectRenderingCapableReply = 32;    



  type
    _XF86DRIOpenConnection = record
        reqType : CARD8;
        driReqType : CARD8;
        length : CARD16;
        screen : CARD32;
      end;
    xXF86DRIOpenConnectionReq = _XF86DRIOpenConnection;

  const
    sz_xXF86DRIOpenConnectionReq = 8;    


  type
    xXF86DRIOpenConnectionReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        hSAREALow : CARD32;
        hSAREAHigh : CARD32;
        busIdStringLength : CARD32;
        pad6 : CARD32;
        pad7 : CARD32;
        pad8 : CARD32;
      end;

  const
    sz_xXF86DRIOpenConnectionReply = 32;    



  type
    _XF86DRIAuthConnection = record
        reqType : CARD8;
        driReqType : CARD8;
        length : CARD16;
        screen : CARD32;
        magic : CARD32;
      end;
    xXF86DRIAuthConnectionReq = _XF86DRIAuthConnection;

  const
    sz_xXF86DRIAuthConnectionReq = 12;    

  type
    xXF86DRIAuthConnectionReply = record
        _type : BYTE;
        pad1 : BOOL;
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
    zx_xXF86DRIAuthConnectionReply = 32;    



  type
    _XF86DRICloseConnection = record
        reqType : CARD8;
        driReqType : CARD8;
        length : CARD16;
        screen : CARD32;
      end;
    xXF86DRICloseConnectionReq = _XF86DRICloseConnection;

  const
    sz_xXF86DRICloseConnectionReq = 8;    



  type
    _XF86DRIGetClientDriverName = record
        reqType : CARD8;
        driReqType : CARD8;
        length : CARD16;
        screen : CARD32;
      end;
    xXF86DRIGetClientDriverNameReq = _XF86DRIGetClientDriverName;

  const
    sz_xXF86DRIGetClientDriverNameReq = 8;    


  type
    xXF86DRIGetClientDriverNameReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        ddxDriverMajorVersion : CARD32;
        ddxDriverMinorVersion : CARD32;
        ddxDriverPatchVersion : CARD32;
        clientDriverNameLength : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xXF86DRIGetClientDriverNameReply = 32;    



  type
    _XF86DRICreateContext = record
        reqType : CARD8;
        driReqType : CARD8;
        length : CARD16;
        screen : CARD32;
        visual : CARD32;
        context : CARD32;
      end;
    xXF86DRICreateContextReq = _XF86DRICreateContext;

  const
    sz_xXF86DRICreateContextReq = 16;    


  type
    xXF86DRICreateContextReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        hHWContext : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xXF86DRICreateContextReply = 32;    



  type
    _XF86DRIDestroyContext = record
        reqType : CARD8;
        driReqType : CARD8;
        length : CARD16;
        screen : CARD32;
        context : CARD32;
      end;
    xXF86DRIDestroyContextReq = _XF86DRIDestroyContext;

  const
    sz_xXF86DRIDestroyContextReq = 12;    



  type
    _XF86DRICreateDrawable = record
        reqType : CARD8;
        driReqType : CARD8;
        length : CARD16;
        screen : CARD32;
        drawable : CARD32;
      end;
    xXF86DRICreateDrawableReq = _XF86DRICreateDrawable;

  const
    sz_xXF86DRICreateDrawableReq = 12;    


  type
    xXF86DRICreateDrawableReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        hHWDrawable : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xXF86DRICreateDrawableReply = 32;    



  type
    _XF86DRIDestroyDrawable = record
        reqType : CARD8;
        driReqType : CARD8;
        length : CARD16;
        screen : CARD32;
        drawable : CARD32;
      end;
    xXF86DRIDestroyDrawableReq = _XF86DRIDestroyDrawable;

  const
    sz_xXF86DRIDestroyDrawableReq = 12;    



  type
    _XF86DRIGetDrawableInfo = record
        reqType : CARD8;
        driReqType : CARD8;
        length : CARD16;
        screen : CARD32;
        drawable : CARD32;
      end;
    xXF86DRIGetDrawableInfoReq = _XF86DRIGetDrawableInfo;

  const
    sz_xXF86DRIGetDrawableInfoReq = 12;    


  type
    xXF86DRIGetDrawableInfoReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        drawableTableIndex : CARD32;
        drawableTableStamp : CARD32;
        drawableX : INT16;
        drawableY : INT16;
        drawableWidth : INT16;
        drawableHeight : INT16;
        numClipRects : CARD32;
        backX : INT16;
        backY : INT16;
        numBackClipRects : CARD32;
      end;

  const
    sz_xXF86DRIGetDrawableInfoReply = 36;    



  type
    _XF86DRIGetDeviceInfo = record
        reqType : CARD8;
        driReqType : CARD8;
        length : CARD16;
        screen : CARD32;
      end;
    xXF86DRIGetDeviceInfoReq = _XF86DRIGetDeviceInfo;

  const
    sz_xXF86DRIGetDeviceInfoReq = 8;    


  type
    xXF86DRIGetDeviceInfoReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        hFrameBufferLow : CARD32;
        hFrameBufferHigh : CARD32;
        framebufferOrigin : CARD32;
        framebufferSize : CARD32;
        framebufferStride : CARD32;
        devPrivateSize : CARD32;
      end;

  const
    sz_xXF86DRIGetDeviceInfoReply = 32;    



  type
    _XF86DRIOpenFullScreen = record
        reqType : CARD8;
        driReqType : CARD8;
        length : CARD16;
        screen : CARD32;
        drawable : CARD32;
      end;
    xXF86DRIOpenFullScreenReq = _XF86DRIOpenFullScreen;

  const
    sz_xXF86DRIOpenFullScreenReq = 12;    

  type
    xXF86DRIOpenFullScreenReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        isFullScreen : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xXF86DRIOpenFullScreenReply = 32;    



  type
    _XF86DRICloseFullScreen = record
        reqType : CARD8;
        driReqType : CARD8;
        length : CARD16;
        screen : CARD32;
        drawable : CARD32;
      end;
    xXF86DRICloseFullScreenReq = _XF86DRICloseFullScreen;

  const
    sz_xXF86DRICloseFullScreenReq = 12;    

  type
    xXF86DRICloseFullScreenReply = record
        _type : BYTE;
        pad1 : BOOL;
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
    sz_xXF86DRICloseFullScreenReply = 32;    
{$endif}


implementation


end.
