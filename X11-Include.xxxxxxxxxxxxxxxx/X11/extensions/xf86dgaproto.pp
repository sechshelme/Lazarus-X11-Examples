
unit xf86dgaproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xf86dgaproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xf86dgaproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xf86dgaproto.pp
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
PdgaEvent  = ^dgaEvent;
PXDGACloseFramebuffer  = ^XDGACloseFramebuffer;
PXDGACopyArea  = ^XDGACopyArea;
PXDGACopyTransparentArea  = ^XDGACopyTransparentArea;
PXDGACreateColormap  = ^XDGACreateColormap;
PXDGAFillRectangle  = ^XDGAFillRectangle;
PXDGAGetViewportStatus  = ^XDGAGetViewportStatus;
PXDGAInstallColormap  = ^XDGAInstallColormap;
PXDGAOpenFramebuffer  = ^XDGAOpenFramebuffer;
PXDGAQueryModes  = ^XDGAQueryModes;
PXDGAQueryVersion  = ^XDGAQueryVersion;
PXDGASelectInput  = ^XDGASelectInput;
PXDGASetClientVersion  = ^XDGASetClientVersion;
PXDGASetMode  = ^XDGASetMode;
PXDGASetViewport  = ^XDGASetViewport;
PXDGASync  = ^XDGASync;
PxXDGAChangePixmapModeReply  = ^xXDGAChangePixmapModeReply;
PxXDGAChangePixmapModeReq  = ^xXDGAChangePixmapModeReq;
PxXDGACloseFramebufferReq  = ^xXDGACloseFramebufferReq;
PxXDGACopyAreaReq  = ^xXDGACopyAreaReq;
PxXDGACopyTransparentAreaReq  = ^xXDGACopyTransparentAreaReq;
PxXDGACreateColormapReq  = ^xXDGACreateColormapReq;
PxXDGAFillRectangleReq  = ^xXDGAFillRectangleReq;
PxXDGAGetViewportStatusReply  = ^xXDGAGetViewportStatusReply;
PxXDGAGetViewportStatusReq  = ^xXDGAGetViewportStatusReq;
PxXDGAInstallColormapReq  = ^xXDGAInstallColormapReq;
PxXDGAModeInfo  = ^xXDGAModeInfo;
PxXDGAOpenFramebufferReply  = ^xXDGAOpenFramebufferReply;
PxXDGAOpenFramebufferReq  = ^xXDGAOpenFramebufferReq;
PxXDGAQueryModesReply  = ^xXDGAQueryModesReply;
PxXDGAQueryModesReq  = ^xXDGAQueryModesReq;
PxXDGAQueryVersionReply  = ^xXDGAQueryVersionReply;
PxXDGAQueryVersionReq  = ^xXDGAQueryVersionReq;
PxXDGASelectInputReq  = ^xXDGASelectInputReq;
PxXDGASetClientVersionReq  = ^xXDGASetClientVersionReq;
PxXDGASetModeReply  = ^xXDGASetModeReply;
PxXDGASetModeReq  = ^xXDGASetModeReq;
PxXDGASetViewportReq  = ^xXDGASetViewportReq;
PxXDGASyncReply  = ^xXDGASyncReply;
PxXDGASyncReq  = ^xXDGASyncReq;
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
  PXDGAQueryVersion = ^TXDGAQueryVersion;
  TXDGAQueryVersion = record
      reqType : TCARD8;
      dgaReqType : TCARD8;
      length : TCARD16;
    end;
  TxXDGAQueryVersionReq = TXDGAQueryVersion;
  PxXDGAQueryVersionReq = ^TxXDGAQueryVersionReq;

const
  sz_xXDGAQueryVersionReq = 4;  



type
  PxXDGAQueryVersionReply = ^TxXDGAQueryVersionReply;
  TxXDGAQueryVersionReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      majorVersion : TCARD16;
      minorVersion : TCARD16;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xXDGAQueryVersionReply = 32;  
type
  PXDGAQueryModes = ^TXDGAQueryModes;
  TXDGAQueryModes = record
      reqType : TCARD8;
      dgaReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
    end;
  TxXDGAQueryModesReq = TXDGAQueryModes;
  PxXDGAQueryModesReq = ^TxXDGAQueryModesReq;

const
  sz_xXDGAQueryModesReq = 8;  


type
  PxXDGAQueryModesReply = ^TxXDGAQueryModesReply;
  TxXDGAQueryModesReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      number : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xXDGAQueryModesReply = 32;  


type
  PXDGASetMode = ^TXDGASetMode;
  TXDGASetMode = record
      reqType : TCARD8;
      dgaReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
      mode : TCARD32;
      pid : TCARD32;
    end;
  TxXDGASetModeReq = TXDGASetMode;
  PxXDGASetModeReq = ^TxXDGASetModeReq;

const
  sz_xXDGASetModeReq = 16;  


type
  PxXDGASetModeReply = ^TxXDGASetModeReply;
  TxXDGASetModeReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      offset : TCARD32;
      flags : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xXDGASetModeReply = 32;  
type
  PxXDGAModeInfo = ^TxXDGAModeInfo;
  TxXDGAModeInfo = record
      byte_order : TCARD8;
      depth : TCARD8;
      num : TCARD16;
      bpp : TCARD16;
      name_size : TCARD16;
      vsync_num : TCARD32;
      vsync_den : TCARD32;
      flags : TCARD32;
      image_width : TCARD16;
      image_height : TCARD16;
      pixmap_width : TCARD16;
      pixmap_height : TCARD16;
      bytes_per_scanline : TCARD32;
      red_mask : TCARD32;
      green_mask : TCARD32;
      blue_mask : TCARD32;
      visual_class : TCARD16;
      pad1 : TCARD16;
      viewport_width : TCARD16;
      viewport_height : TCARD16;
      viewport_xstep : TCARD16;
      viewport_ystep : TCARD16;
      viewport_xmax : TCARD16;
      viewport_ymax : TCARD16;
      viewport_flags : TCARD32;
      reserved1 : TCARD32;
      reserved2 : TCARD32;
    end;

const
  sz_xXDGAModeInfo = 72;  
type
  PXDGAOpenFramebuffer = ^TXDGAOpenFramebuffer;
  TXDGAOpenFramebuffer = record
      reqType : TCARD8;
      dgaReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
    end;
  TxXDGAOpenFramebufferReq = TXDGAOpenFramebuffer;
  PxXDGAOpenFramebufferReq = ^TxXDGAOpenFramebufferReq;

const
  sz_xXDGAOpenFramebufferReq = 8;  







type
  PxXDGAOpenFramebufferReply = ^TxXDGAOpenFramebufferReply;
  TxXDGAOpenFramebufferReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      mem1 : TCARD32;
      mem2 : TCARD32;
      size : TCARD32;
      offset : TCARD32;
      extra : TCARD32;
      pad2 : TCARD32;
    end;

const
  sz_xXDGAOpenFramebufferReply = 32;  
type
  PXDGACloseFramebuffer = ^TXDGACloseFramebuffer;
  TXDGACloseFramebuffer = record
      reqType : TCARD8;
      dgaReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
    end;
  TxXDGACloseFramebufferReq = TXDGACloseFramebuffer;
  PxXDGACloseFramebufferReq = ^TxXDGACloseFramebufferReq;

const
  sz_xXDGACloseFramebufferReq = 8;  
type
  PXDGASetViewport = ^TXDGASetViewport;
  TXDGASetViewport = record
      reqType : TCARD8;
      dgaReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
      x : TCARD16;
      y : TCARD16;
      flags : TCARD32;
    end;
  TxXDGASetViewportReq = TXDGASetViewport;
  PxXDGASetViewportReq = ^TxXDGASetViewportReq;

const
  sz_xXDGASetViewportReq = 16;  
type
  PXDGAInstallColormap = ^TXDGAInstallColormap;
  TXDGAInstallColormap = record
      reqType : TCARD8;
      dgaReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
      cmap : TCARD32;
    end;
  TxXDGAInstallColormapReq = TXDGAInstallColormap;
  PxXDGAInstallColormapReq = ^TxXDGAInstallColormapReq;

const
  sz_xXDGAInstallColormapReq = 12;  
type
  PXDGASelectInput = ^TXDGASelectInput;
  TXDGASelectInput = record
      reqType : TCARD8;
      dgaReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
      mask : TCARD32;
    end;
  TxXDGASelectInputReq = TXDGASelectInput;
  PxXDGASelectInputReq = ^TxXDGASelectInputReq;

const
  sz_xXDGASelectInputReq = 12;  
type
  PXDGAFillRectangle = ^TXDGAFillRectangle;
  TXDGAFillRectangle = record
      reqType : TCARD8;
      dgaReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
      x : TCARD16;
      y : TCARD16;
      width : TCARD16;
      height : TCARD16;
      color : TCARD32;
    end;
  TxXDGAFillRectangleReq = TXDGAFillRectangle;
  PxXDGAFillRectangleReq = ^TxXDGAFillRectangleReq;

const
  sz_xXDGAFillRectangleReq = 20;  
type
  PXDGACopyArea = ^TXDGACopyArea;
  TXDGACopyArea = record
      reqType : TCARD8;
      dgaReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
      srcx : TCARD16;
      srcy : TCARD16;
      width : TCARD16;
      height : TCARD16;
      dstx : TCARD16;
      dsty : TCARD16;
    end;
  TxXDGACopyAreaReq = TXDGACopyArea;
  PxXDGACopyAreaReq = ^TxXDGACopyAreaReq;

const
  sz_xXDGACopyAreaReq = 20;  
type
  PXDGACopyTransparentArea = ^TXDGACopyTransparentArea;
  TXDGACopyTransparentArea = record
      reqType : TCARD8;
      dgaReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
      srcx : TCARD16;
      srcy : TCARD16;
      width : TCARD16;
      height : TCARD16;
      dstx : TCARD16;
      dsty : TCARD16;
      key : TCARD32;
    end;
  TxXDGACopyTransparentAreaReq = TXDGACopyTransparentArea;
  PxXDGACopyTransparentAreaReq = ^TxXDGACopyTransparentAreaReq;

const
  sz_xXDGACopyTransparentAreaReq = 24;  
type
  PXDGAGetViewportStatus = ^TXDGAGetViewportStatus;
  TXDGAGetViewportStatus = record
      reqType : TCARD8;
      dgaReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
    end;
  TxXDGAGetViewportStatusReq = TXDGAGetViewportStatus;
  PxXDGAGetViewportStatusReq = ^TxXDGAGetViewportStatusReq;

const
  sz_xXDGAGetViewportStatusReq = 8;  
type
  PxXDGAGetViewportStatusReply = ^TxXDGAGetViewportStatusReply;
  TxXDGAGetViewportStatusReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      status : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xXDGAGetViewportStatusReply = 32;  
type
  PXDGASync = ^TXDGASync;
  TXDGASync = record
      reqType : TCARD8;
      dgaReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
    end;
  TxXDGASyncReq = TXDGASync;
  PxXDGASyncReq = ^TxXDGASyncReq;

const
  sz_xXDGASyncReq = 8;  
type
  PxXDGASyncReply = ^TxXDGASyncReply;
  TxXDGASyncReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
      pad7 : TCARD32;
    end;

const
  sz_xXDGASyncReply = 32;  
type
  PXDGASetClientVersion = ^TXDGASetClientVersion;
  TXDGASetClientVersion = record
      reqType : TCARD8;
      dgaReqType : TCARD8;
      length : TCARD16;
      major : TCARD16;
      minor : TCARD16;
    end;
  TxXDGASetClientVersionReq = TXDGASetClientVersion;
  PxXDGASetClientVersionReq = ^TxXDGASetClientVersionReq;

const
  sz_xXDGASetClientVersionReq = 8;  
type
  PxXDGAChangePixmapModeReq = ^TxXDGAChangePixmapModeReq;
  TxXDGAChangePixmapModeReq = record
      reqType : TCARD8;
      dgaReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
      x : TCARD16;
      y : TCARD16;
      flags : TCARD32;
    end;

const
  sz_xXDGAChangePixmapModeReq = 16;  
type
  PxXDGAChangePixmapModeReply = ^TxXDGAChangePixmapModeReply;
  TxXDGAChangePixmapModeReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      x : TCARD16;
      y : TCARD16;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
      pad7 : TCARD32;
    end;

const
  sz_xXDGAChangePixmapModeReply = 32;  
type
  PXDGACreateColormap = ^TXDGACreateColormap;
  TXDGACreateColormap = record
      reqType : TCARD8;
      dgaReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
      id : TCARD32;
      mode : TCARD32;
      alloc : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD16;
    end;
  TxXDGACreateColormapReq = TXDGACreateColormap;
  PxXDGACreateColormapReq = ^TxXDGACreateColormapReq;

const
  sz_xXDGACreateColormapReq = 20;  
type
  PdgaEvent = ^TdgaEvent;
  TdgaEvent = record
      u : record
          case longint of
            0 : ( u : record
                _type : TBYTE;
                detail : TBYTE;
                sequenceNumber : TCARD16;
              end );
            1 : ( event : record
                pad0 : TCARD32;
                time : TCARD32;
                dx : TINT16;
                dy : TINT16;
                screen : TINT16;
                state : TCARD16;
                pad1 : TCARD32;
                pad2 : TCARD32;
                pad3 : TCARD32;
                pad4 : TCARD32;
              end );
          end;
    end;
{$endif}


implementation


end.
