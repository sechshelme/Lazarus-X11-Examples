
unit xf86driproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/dri/xf86driproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/dri/xf86driproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/dri/xf86driproto.pp
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
PXF86DRIAuthConnection  = ^XF86DRIAuthConnection;
PXF86DRICloseConnection  = ^XF86DRICloseConnection;
PXF86DRICloseFullScreen  = ^XF86DRICloseFullScreen;
PXF86DRICreateContext  = ^XF86DRICreateContext;
PXF86DRICreateDrawable  = ^XF86DRICreateDrawable;
PXF86DRIDestroyContext  = ^XF86DRIDestroyContext;
PXF86DRIDestroyDrawable  = ^XF86DRIDestroyDrawable;
PXF86DRIGetClientDriverName  = ^XF86DRIGetClientDriverName;
PXF86DRIGetDeviceInfo  = ^XF86DRIGetDeviceInfo;
PXF86DRIGetDrawableInfo  = ^XF86DRIGetDrawableInfo;
PXF86DRIOpenConnection  = ^XF86DRIOpenConnection;
PXF86DRIOpenFullScreen  = ^XF86DRIOpenFullScreen;
PXF86DRIQueryDirectRenderingCapable  = ^XF86DRIQueryDirectRenderingCapable;
PXF86DRIQueryVersion  = ^XF86DRIQueryVersion;
PxXF86DRIAuthConnectionReply  = ^xXF86DRIAuthConnectionReply;
PxXF86DRIAuthConnectionReq  = ^xXF86DRIAuthConnectionReq;
PxXF86DRICloseConnectionReq  = ^xXF86DRICloseConnectionReq;
PxXF86DRICloseFullScreenReply  = ^xXF86DRICloseFullScreenReply;
PxXF86DRICloseFullScreenReq  = ^xXF86DRICloseFullScreenReq;
PxXF86DRICreateContextReply  = ^xXF86DRICreateContextReply;
PxXF86DRICreateContextReq  = ^xXF86DRICreateContextReq;
PxXF86DRICreateDrawableReply  = ^xXF86DRICreateDrawableReply;
PxXF86DRICreateDrawableReq  = ^xXF86DRICreateDrawableReq;
PxXF86DRIDestroyContextReq  = ^xXF86DRIDestroyContextReq;
PxXF86DRIDestroyDrawableReq  = ^xXF86DRIDestroyDrawableReq;
PxXF86DRIGetClientDriverNameReply  = ^xXF86DRIGetClientDriverNameReply;
PxXF86DRIGetClientDriverNameReq  = ^xXF86DRIGetClientDriverNameReq;
PxXF86DRIGetDeviceInfoReply  = ^xXF86DRIGetDeviceInfoReply;
PxXF86DRIGetDeviceInfoReq  = ^xXF86DRIGetDeviceInfoReq;
PxXF86DRIGetDrawableInfoReply  = ^xXF86DRIGetDrawableInfoReply;
PxXF86DRIGetDrawableInfoReq  = ^xXF86DRIGetDrawableInfoReq;
PxXF86DRIOpenConnectionReply  = ^xXF86DRIOpenConnectionReply;
PxXF86DRIOpenConnectionReq  = ^xXF86DRIOpenConnectionReq;
PxXF86DRIOpenFullScreenReply  = ^xXF86DRIOpenFullScreenReply;
PxXF86DRIOpenFullScreenReq  = ^xXF86DRIOpenFullScreenReq;
PxXF86DRIQueryDirectRenderingCapableReply  = ^xXF86DRIQueryDirectRenderingCapableReply;
PxXF86DRIQueryDirectRenderingCapableReq  = ^xXF86DRIQueryDirectRenderingCapableReq;
PxXF86DRIQueryVersionReply  = ^xXF86DRIQueryVersionReply;
PxXF86DRIQueryVersionReq  = ^xXF86DRIQueryVersionReq;
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
  PXF86DRIQueryVersion = ^TXF86DRIQueryVersion;
  TXF86DRIQueryVersion = record
      reqType : TCARD8;
      driReqType : TCARD8;
      length : TCARD16;
    end;
  TxXF86DRIQueryVersionReq = TXF86DRIQueryVersion;
  PxXF86DRIQueryVersionReq = ^TxXF86DRIQueryVersionReq;

const
  sz_xXF86DRIQueryVersionReq = 4;  




type
  PxXF86DRIQueryVersionReply = ^TxXF86DRIQueryVersionReply;
  TxXF86DRIQueryVersionReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      majorVersion : TCARD16;
      minorVersion : TCARD16;
      patchVersion : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xXF86DRIQueryVersionReply = 32;  


type
  PXF86DRIQueryDirectRenderingCapable = ^TXF86DRIQueryDirectRenderingCapable;
  TXF86DRIQueryDirectRenderingCapable = record
      reqType : TCARD8;
      driReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
    end;
  TxXF86DRIQueryDirectRenderingCapableReq = TXF86DRIQueryDirectRenderingCapable;
  PxXF86DRIQueryDirectRenderingCapableReq = ^TxXF86DRIQueryDirectRenderingCapableReq;

const
  sz_xXF86DRIQueryDirectRenderingCapableReq = 8;  

type
  PxXF86DRIQueryDirectRenderingCapableReply = ^TxXF86DRIQueryDirectRenderingCapableReply;
  TxXF86DRIQueryDirectRenderingCapableReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      isCapable : TBOOL;
      pad2 : TBOOL;
      pad3 : TBOOL;
      pad4 : TBOOL;
      pad5 : TCARD32;
      pad6 : TCARD32;
      pad7 : TCARD32;
      pad8 : TCARD32;
      pad9 : TCARD32;
    end;

const
  sz_xXF86DRIQueryDirectRenderingCapableReply = 32;  


type
  PXF86DRIOpenConnection = ^TXF86DRIOpenConnection;
  TXF86DRIOpenConnection = record
      reqType : TCARD8;
      driReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
    end;
  TxXF86DRIOpenConnectionReq = TXF86DRIOpenConnection;
  PxXF86DRIOpenConnectionReq = ^TxXF86DRIOpenConnectionReq;

const
  sz_xXF86DRIOpenConnectionReq = 8;  

type
  PxXF86DRIOpenConnectionReply = ^TxXF86DRIOpenConnectionReply;
  TxXF86DRIOpenConnectionReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      hSAREALow : TCARD32;
      hSAREAHigh : TCARD32;
      busIdStringLength : TCARD32;
      pad6 : TCARD32;
      pad7 : TCARD32;
      pad8 : TCARD32;
    end;

const
  sz_xXF86DRIOpenConnectionReply = 32;  


type
  PXF86DRIAuthConnection = ^TXF86DRIAuthConnection;
  TXF86DRIAuthConnection = record
      reqType : TCARD8;
      driReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
      magic : TCARD32;
    end;
  TxXF86DRIAuthConnectionReq = TXF86DRIAuthConnection;
  PxXF86DRIAuthConnectionReq = ^TxXF86DRIAuthConnectionReq;

const
  sz_xXF86DRIAuthConnectionReq = 12;  
type
  PxXF86DRIAuthConnectionReply = ^TxXF86DRIAuthConnectionReply;
  TxXF86DRIAuthConnectionReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      authenticated : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  zx_xXF86DRIAuthConnectionReply = 32;  


type
  PXF86DRICloseConnection = ^TXF86DRICloseConnection;
  TXF86DRICloseConnection = record
      reqType : TCARD8;
      driReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
    end;
  TxXF86DRICloseConnectionReq = TXF86DRICloseConnection;
  PxXF86DRICloseConnectionReq = ^TxXF86DRICloseConnectionReq;

const
  sz_xXF86DRICloseConnectionReq = 8;  


type
  PXF86DRIGetClientDriverName = ^TXF86DRIGetClientDriverName;
  TXF86DRIGetClientDriverName = record
      reqType : TCARD8;
      driReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
    end;
  TxXF86DRIGetClientDriverNameReq = TXF86DRIGetClientDriverName;
  PxXF86DRIGetClientDriverNameReq = ^TxXF86DRIGetClientDriverNameReq;

const
  sz_xXF86DRIGetClientDriverNameReq = 8;  

type
  PxXF86DRIGetClientDriverNameReply = ^TxXF86DRIGetClientDriverNameReply;
  TxXF86DRIGetClientDriverNameReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      ddxDriverMajorVersion : TCARD32;
      ddxDriverMinorVersion : TCARD32;
      ddxDriverPatchVersion : TCARD32;
      clientDriverNameLength : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xXF86DRIGetClientDriverNameReply = 32;  


type
  PXF86DRICreateContext = ^TXF86DRICreateContext;
  TXF86DRICreateContext = record
      reqType : TCARD8;
      driReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
      visual : TCARD32;
      context : TCARD32;
    end;
  TxXF86DRICreateContextReq = TXF86DRICreateContext;
  PxXF86DRICreateContextReq = ^TxXF86DRICreateContextReq;

const
  sz_xXF86DRICreateContextReq = 16;  

type
  PxXF86DRICreateContextReply = ^TxXF86DRICreateContextReply;
  TxXF86DRICreateContextReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      hHWContext : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xXF86DRICreateContextReply = 32;  


type
  PXF86DRIDestroyContext = ^TXF86DRIDestroyContext;
  TXF86DRIDestroyContext = record
      reqType : TCARD8;
      driReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
      context : TCARD32;
    end;
  TxXF86DRIDestroyContextReq = TXF86DRIDestroyContext;
  PxXF86DRIDestroyContextReq = ^TxXF86DRIDestroyContextReq;

const
  sz_xXF86DRIDestroyContextReq = 12;  


type
  PXF86DRICreateDrawable = ^TXF86DRICreateDrawable;
  TXF86DRICreateDrawable = record
      reqType : TCARD8;
      driReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
      drawable : TCARD32;
    end;
  TxXF86DRICreateDrawableReq = TXF86DRICreateDrawable;
  PxXF86DRICreateDrawableReq = ^TxXF86DRICreateDrawableReq;

const
  sz_xXF86DRICreateDrawableReq = 12;  

type
  PxXF86DRICreateDrawableReply = ^TxXF86DRICreateDrawableReply;
  TxXF86DRICreateDrawableReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      hHWDrawable : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xXF86DRICreateDrawableReply = 32;  


type
  PXF86DRIDestroyDrawable = ^TXF86DRIDestroyDrawable;
  TXF86DRIDestroyDrawable = record
      reqType : TCARD8;
      driReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
      drawable : TCARD32;
    end;
  TxXF86DRIDestroyDrawableReq = TXF86DRIDestroyDrawable;
  PxXF86DRIDestroyDrawableReq = ^TxXF86DRIDestroyDrawableReq;

const
  sz_xXF86DRIDestroyDrawableReq = 12;  


type
  PXF86DRIGetDrawableInfo = ^TXF86DRIGetDrawableInfo;
  TXF86DRIGetDrawableInfo = record
      reqType : TCARD8;
      driReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
      drawable : TCARD32;
    end;
  TxXF86DRIGetDrawableInfoReq = TXF86DRIGetDrawableInfo;
  PxXF86DRIGetDrawableInfoReq = ^TxXF86DRIGetDrawableInfoReq;

const
  sz_xXF86DRIGetDrawableInfoReq = 12;  

type
  PxXF86DRIGetDrawableInfoReply = ^TxXF86DRIGetDrawableInfoReply;
  TxXF86DRIGetDrawableInfoReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      drawableTableIndex : TCARD32;
      drawableTableStamp : TCARD32;
      drawableX : TINT16;
      drawableY : TINT16;
      drawableWidth : TINT16;
      drawableHeight : TINT16;
      numClipRects : TCARD32;
      backX : TINT16;
      backY : TINT16;
      numBackClipRects : TCARD32;
    end;

const
  sz_xXF86DRIGetDrawableInfoReply = 36;  


type
  PXF86DRIGetDeviceInfo = ^TXF86DRIGetDeviceInfo;
  TXF86DRIGetDeviceInfo = record
      reqType : TCARD8;
      driReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
    end;
  TxXF86DRIGetDeviceInfoReq = TXF86DRIGetDeviceInfo;
  PxXF86DRIGetDeviceInfoReq = ^TxXF86DRIGetDeviceInfoReq;

const
  sz_xXF86DRIGetDeviceInfoReq = 8;  

type
  PxXF86DRIGetDeviceInfoReply = ^TxXF86DRIGetDeviceInfoReply;
  TxXF86DRIGetDeviceInfoReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      hFrameBufferLow : TCARD32;
      hFrameBufferHigh : TCARD32;
      framebufferOrigin : TCARD32;
      framebufferSize : TCARD32;
      framebufferStride : TCARD32;
      devPrivateSize : TCARD32;
    end;

const
  sz_xXF86DRIGetDeviceInfoReply = 32;  


type
  PXF86DRIOpenFullScreen = ^TXF86DRIOpenFullScreen;
  TXF86DRIOpenFullScreen = record
      reqType : TCARD8;
      driReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
      drawable : TCARD32;
    end;
  TxXF86DRIOpenFullScreenReq = TXF86DRIOpenFullScreen;
  PxXF86DRIOpenFullScreenReq = ^TxXF86DRIOpenFullScreenReq;

const
  sz_xXF86DRIOpenFullScreenReq = 12;  
type
  PxXF86DRIOpenFullScreenReply = ^TxXF86DRIOpenFullScreenReply;
  TxXF86DRIOpenFullScreenReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      isFullScreen : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xXF86DRIOpenFullScreenReply = 32;  


type
  PXF86DRICloseFullScreen = ^TXF86DRICloseFullScreen;
  TXF86DRICloseFullScreen = record
      reqType : TCARD8;
      driReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
      drawable : TCARD32;
    end;
  TxXF86DRICloseFullScreenReq = TXF86DRICloseFullScreen;
  PxXF86DRICloseFullScreenReq = ^TxXF86DRICloseFullScreenReq;

const
  sz_xXF86DRICloseFullScreenReq = 12;  
type
  PxXF86DRICloseFullScreenReply = ^TxXF86DRICloseFullScreenReply;
  TxXF86DRICloseFullScreenReply = record
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
  sz_xXF86DRICloseFullScreenReply = 32;  
{$endif}


implementation


end.
