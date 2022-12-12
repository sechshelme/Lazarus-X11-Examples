
unit xf86dgaproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/xf86dgaproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/xf86dgaproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/xf86dgaproto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XF86DGAPROTO_H_}
{$define _XF86DGAPROTO_H_}  
{$include <X11/extensions/xf86dga1proto.h>}
{$include <X11/extensions/xf86dgaconst.h>}

  const
    XF86DGANAME = 'XFree86-DGA';    

    XDGA_MAJOR_VERSION = 2;    
    XDGA_MINOR_VERSION = 0;    



  type
    _XDGAQueryVersion = record
        reqType : CARD8;
        dgaReqType : CARD8;
        length : CARD16;
      end;
    xXDGAQueryVersionReq = _XDGAQueryVersion;

  const
    sz_xXDGAQueryVersionReq = 4;    




  type
    xXDGAQueryVersionReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        majorVersion : CARD16;
        minorVersion : CARD16;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xXDGAQueryVersionReply = 32;    

  type
    _XDGAQueryModes = record
        reqType : CARD8;
        dgaReqType : CARD8;
        length : CARD16;
        screen : CARD32;
      end;
    xXDGAQueryModesReq = _XDGAQueryModes;

  const
    sz_xXDGAQueryModesReq = 8;    



  type
    xXDGAQueryModesReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        number : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xXDGAQueryModesReply = 32;    



  type
    _XDGASetMode = record
        reqType : CARD8;
        dgaReqType : CARD8;
        length : CARD16;
        screen : CARD32;
        mode : CARD32;
        pid : CARD32;
      end;
    xXDGASetModeReq = _XDGASetMode;

  const
    sz_xXDGASetModeReq = 16;    



  type
    xXDGASetModeReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        offset : CARD32;
        flags : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xXDGASetModeReply = 32;    

  type
    xXDGAModeInfo = record
        byte_order : CARD8;
        depth : CARD8;
        num : CARD16;
        bpp : CARD16;
        name_size : CARD16;
        vsync_num : CARD32;
        vsync_den : CARD32;
        flags : CARD32;
        image_width : CARD16;
        image_height : CARD16;
        pixmap_width : CARD16;
        pixmap_height : CARD16;
        bytes_per_scanline : CARD32;
        red_mask : CARD32;
        green_mask : CARD32;
        blue_mask : CARD32;
        visual_class : CARD16;
        pad1 : CARD16;
        viewport_width : CARD16;
        viewport_height : CARD16;
        viewport_xstep : CARD16;
        viewport_ystep : CARD16;
        viewport_xmax : CARD16;
        viewport_ymax : CARD16;
        viewport_flags : CARD32;
        reserved1 : CARD32;
        reserved2 : CARD32;
      end;

  const
    sz_xXDGAModeInfo = 72;    

  type
    _XDGAOpenFramebuffer = record
        reqType : CARD8;
        dgaReqType : CARD8;
        length : CARD16;
        screen : CARD32;
      end;
    xXDGAOpenFramebufferReq = _XDGAOpenFramebuffer;

  const
    sz_xXDGAOpenFramebufferReq = 8;    








  type
    xXDGAOpenFramebufferReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        mem1 : CARD32;
        mem2 : CARD32;
        size : CARD32;
        offset : CARD32;
        extra : CARD32;
        pad2 : CARD32;
      end;

  const
    sz_xXDGAOpenFramebufferReply = 32;    

  type
    _XDGACloseFramebuffer = record
        reqType : CARD8;
        dgaReqType : CARD8;
        length : CARD16;
        screen : CARD32;
      end;
    xXDGACloseFramebufferReq = _XDGACloseFramebuffer;

  const
    sz_xXDGACloseFramebufferReq = 8;    

  type
    _XDGASetViewport = record
        reqType : CARD8;
        dgaReqType : CARD8;
        length : CARD16;
        screen : CARD32;
        x : CARD16;
        y : CARD16;
        flags : CARD32;
      end;
    xXDGASetViewportReq = _XDGASetViewport;

  const
    sz_xXDGASetViewportReq = 16;    

  type
    _XDGAInstallColormap = record
        reqType : CARD8;
        dgaReqType : CARD8;
        length : CARD16;
        screen : CARD32;
        cmap : CARD32;
      end;
    xXDGAInstallColormapReq = _XDGAInstallColormap;

  const
    sz_xXDGAInstallColormapReq = 12;    

  type
    _XDGASelectInput = record
        reqType : CARD8;
        dgaReqType : CARD8;
        length : CARD16;
        screen : CARD32;
        mask : CARD32;
      end;
    xXDGASelectInputReq = _XDGASelectInput;

  const
    sz_xXDGASelectInputReq = 12;    

  type
    _XDGAFillRectangle = record
        reqType : CARD8;
        dgaReqType : CARD8;
        length : CARD16;
        screen : CARD32;
        x : CARD16;
        y : CARD16;
        width : CARD16;
        height : CARD16;
        color : CARD32;
      end;
    xXDGAFillRectangleReq = _XDGAFillRectangle;

  const
    sz_xXDGAFillRectangleReq = 20;    

  type
    _XDGACopyArea = record
        reqType : CARD8;
        dgaReqType : CARD8;
        length : CARD16;
        screen : CARD32;
        srcx : CARD16;
        srcy : CARD16;
        width : CARD16;
        height : CARD16;
        dstx : CARD16;
        dsty : CARD16;
      end;
    xXDGACopyAreaReq = _XDGACopyArea;

  const
    sz_xXDGACopyAreaReq = 20;    

  type
    _XDGACopyTransparentArea = record
        reqType : CARD8;
        dgaReqType : CARD8;
        length : CARD16;
        screen : CARD32;
        srcx : CARD16;
        srcy : CARD16;
        width : CARD16;
        height : CARD16;
        dstx : CARD16;
        dsty : CARD16;
        key : CARD32;
      end;
    xXDGACopyTransparentAreaReq = _XDGACopyTransparentArea;

  const
    sz_xXDGACopyTransparentAreaReq = 24;    

  type
    _XDGAGetViewportStatus = record
        reqType : CARD8;
        dgaReqType : CARD8;
        length : CARD16;
        screen : CARD32;
      end;
    xXDGAGetViewportStatusReq = _XDGAGetViewportStatus;

  const
    sz_xXDGAGetViewportStatusReq = 8;    

  type
    xXDGAGetViewportStatusReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        status : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xXDGAGetViewportStatusReply = 32;    

  type
    _XDGASync = record
        reqType : CARD8;
        dgaReqType : CARD8;
        length : CARD16;
        screen : CARD32;
      end;
    xXDGASyncReq = _XDGASync;

  const
    sz_xXDGASyncReq = 8;    

  type
    xXDGASyncReply = record
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
    sz_xXDGASyncReply = 32;    

  type
    _XDGASetClientVersion = record
        reqType : CARD8;
        dgaReqType : CARD8;
        length : CARD16;
        major : CARD16;
        minor : CARD16;
      end;
    xXDGASetClientVersionReq = _XDGASetClientVersion;

  const
    sz_xXDGASetClientVersionReq = 8;    

  type
    xXDGAChangePixmapModeReq = record
        reqType : CARD8;
        dgaReqType : CARD8;
        length : CARD16;
        screen : CARD32;
        x : CARD16;
        y : CARD16;
        flags : CARD32;
      end;

  const
    sz_xXDGAChangePixmapModeReq = 16;    

  type
    xXDGAChangePixmapModeReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        x : CARD16;
        y : CARD16;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
        pad7 : CARD32;
      end;

  const
    sz_xXDGAChangePixmapModeReply = 32;    

  type
    _XDGACreateColormap = record
        reqType : CARD8;
        dgaReqType : CARD8;
        length : CARD16;
        screen : CARD32;
        id : CARD32;
        mode : CARD32;
        alloc : CARD8;
        pad1 : CARD8;
        pad2 : CARD16;
      end;
    xXDGACreateColormapReq = _XDGACreateColormap;

  const
    sz_xXDGACreateColormapReq = 20;    

  type
    dgaEvent = record
        u : record
            case longint of
              0 : ( u : record
                  _type : BYTE;
                  detail : BYTE;
                  sequenceNumber : CARD16;
                end );
              1 : ( event : record
                  pad0 : CARD32;
                  time : CARD32;
                  dx : INT16;
                  dy : INT16;
                  screen : INT16;
                  state : CARD16;
                  pad1 : CARD32;
                  pad2 : CARD32;
                  pad3 : CARD32;
                  pad4 : CARD32;
                end );
            end;
      end;
{$endif}


implementation


end.
