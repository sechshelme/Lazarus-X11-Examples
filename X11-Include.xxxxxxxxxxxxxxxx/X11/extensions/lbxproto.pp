
unit lbxproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/lbxproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/lbxproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/lbxproto.pp
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
PLbxAllowMotion  = ^LbxAllowMotion;
PLbxBeginLargeRequest  = ^LbxBeginLargeRequest;
PLbxChangeProperty  = ^LbxChangeProperty;
PLbxCloseClient  = ^LbxCloseClient;
PLbxCloseEvent  = ^LbxCloseEvent;
PLbxCopyArea  = ^LbxCopyArea;
PLbxCopyPlane  = ^LbxCopyPlane;
PLbxDelta  = ^LbxDelta;
PLbxEndLargeRequest  = ^LbxEndLargeRequest;
PLbxFillPoly  = ^LbxFillPoly;
PLbxFreeCellsEvent  = ^LbxFreeCellsEvent;
PLbxGetKeyboardMapping  = ^LbxGetKeyboardMapping;
PLbxGetModifierMapping  = ^LbxGetModifierMapping;
PLbxGetProperty  = ^LbxGetProperty;
PLbxGetWinAttrAndGeom  = ^LbxGetWinAttrAndGeom;
PLbxImageText  = ^LbxImageText;
PLbxIncrementPixel  = ^LbxIncrementPixel;
PLbxInternAtoms  = ^LbxInternAtoms;
PLbxInvalidateTag  = ^LbxInvalidateTag;
PLbxInvalidateTagEvent  = ^LbxInvalidateTagEvent;
PLbxLargeRequestData  = ^LbxLargeRequestData;
PLbxListenToAllEvent  = ^LbxListenToAllEvent;
PLbxListenToOneEvent  = ^LbxListenToOneEvent;
PLbxModifySequence  = ^LbxModifySequence;
PLbxNewClient  = ^LbxNewClient;
PLbxPolyPoint  = ^LbxPolyPoint;
PLbxPolyText  = ^LbxPolyText;
PLbxPutImage  = ^LbxPutImage;
PLbxQueryExtension  = ^LbxQueryExtension;
PLbxQueryExtensionReply  = ^LbxQueryExtensionReply;
PLbxQueryFont  = ^LbxQueryFont;
PLbxQueryVersion  = ^LbxQueryVersion;
PLbxReleaseCmapEvent  = ^LbxReleaseCmapEvent;
PLbxSendTagDataEvent  = ^LbxSendTagDataEvent;
PLbxStartProxy  = ^LbxStartProxy;
PLbxStopProxy  = ^LbxStopProxy;
PLbxSwitch  = ^LbxSwitch;
PLbxSwitchEvent  = ^LbxSwitchEvent;
PLbxTagData  = ^LbxTagData;
PxLbxAllocColorReq  = ^xLbxAllocColorReq;
PxLbxAllowMotionReq  = ^xLbxAllowMotionReq;
PxLbxBeginLargeRequestReq  = ^xLbxBeginLargeRequestReq;
PxLbxChangePropertyReply  = ^xLbxChangePropertyReply;
PxLbxChangePropertyReq  = ^xLbxChangePropertyReq;
PxLbxCharInfo  = ^xLbxCharInfo;
PxLbxCloseClientReq  = ^xLbxCloseClientReq;
PxLbxCloseEvent  = ^xLbxCloseEvent;
PxLbxConnSetupPrefix  = ^xLbxConnSetupPrefix;
PxLbxCopyAreaReq  = ^xLbxCopyAreaReq;
PxLbxCopyPlaneReq  = ^xLbxCopyPlaneReq;
PxLbxDeltaReq  = ^xLbxDeltaReq;
PxLbxDiffItem  = ^xLbxDiffItem;
PxLbxEndLargeRequestReq  = ^xLbxEndLargeRequestReq;
PxLbxFillPolyReq  = ^xLbxFillPolyReq;
PxLbxFontInfo  = ^xLbxFontInfo;
PxLbxFreeCellsEvent  = ^xLbxFreeCellsEvent;
PxLbxGetImageReply  = ^xLbxGetImageReply;
PxLbxGetImageReq  = ^xLbxGetImageReq;
PxLbxGetKeyboardMappingReply  = ^xLbxGetKeyboardMappingReply;
PxLbxGetKeyboardMappingReq  = ^xLbxGetKeyboardMappingReq;
PxLbxGetModifierMappingReply  = ^xLbxGetModifierMappingReply;
PxLbxGetModifierMappingReq  = ^xLbxGetModifierMappingReq;
PxLbxGetPropertyReply  = ^xLbxGetPropertyReply;
PxLbxGetPropertyReq  = ^xLbxGetPropertyReq;
PxLbxGetWinAttrAndGeomReply  = ^xLbxGetWinAttrAndGeomReply;
PxLbxGetWinAttrAndGeomReq  = ^xLbxGetWinAttrAndGeomReq;
PxLbxGrabCmapReply  = ^xLbxGrabCmapReply;
PxLbxGrabCmapReq  = ^xLbxGrabCmapReq;
PxLbxImageText16Req  = ^xLbxImageText16Req;
PxLbxImageText8Req  = ^xLbxImageText8Req;
PxLbxImageTextReq  = ^xLbxImageTextReq;
PxLbxIncrementPixelReq  = ^xLbxIncrementPixelReq;
PxLbxInternAtomsReply  = ^xLbxInternAtomsReply;
PxLbxInternAtomsReq  = ^xLbxInternAtomsReq;
PxLbxInvalidateTagEvent  = ^xLbxInvalidateTagEvent;
PxLbxInvalidateTagReq  = ^xLbxInvalidateTagReq;
PxLbxLargeRequestDataReq  = ^xLbxLargeRequestDataReq;
PxLbxListenToAllEvent  = ^xLbxListenToAllEvent;
PxLbxListenToOneEvent  = ^xLbxListenToOneEvent;
PxLbxModifySequenceReq  = ^xLbxModifySequenceReq;
PxLbxNewClientReq  = ^xLbxNewClientReq;
PxLbxPolyArcReq  = ^xLbxPolyArcReq;
PxLbxPolyFillArcReq  = ^xLbxPolyFillArcReq;
PxLbxPolyFillRectangleReq  = ^xLbxPolyFillRectangleReq;
PxLbxPolyLineReq  = ^xLbxPolyLineReq;
PxLbxPolyPointReq  = ^xLbxPolyPointReq;
PxLbxPolyRectangleReq  = ^xLbxPolyRectangleReq;
PxLbxPolySegmentReq  = ^xLbxPolySegmentReq;
PxLbxPolyText16Req  = ^xLbxPolyText16Req;
PxLbxPolyText8Req  = ^xLbxPolyText8Req;
PxLbxPolyTextReq  = ^xLbxPolyTextReq;
PxLbxPutImageReq  = ^xLbxPutImageReq;
PxLbxQueryExtensionReply  = ^xLbxQueryExtensionReply;
PxLbxQueryExtensionReq  = ^xLbxQueryExtensionReq;
PxLbxQueryFontReply  = ^xLbxQueryFontReply;
PxLbxQueryFontReq  = ^xLbxQueryFontReq;
PxLbxQueryVersionReply  = ^xLbxQueryVersionReply;
PxLbxQueryVersionReq  = ^xLbxQueryVersionReq;
PxLbxReleaseCmapEvent  = ^xLbxReleaseCmapEvent;
PxLbxReleaseCmapReq  = ^xLbxReleaseCmapReq;
PxLbxSendTagDataEvent  = ^xLbxSendTagDataEvent;
PxLbxStartProxyReq  = ^xLbxStartProxyReq;
PxLbxStartReply  = ^xLbxStartReply;
PxLbxStopProxyReq  = ^xLbxStopProxyReq;
PxLbxSwitchEvent  = ^xLbxSwitchEvent;
PxLbxSwitchReq  = ^xLbxSwitchReq;
PxLbxSyncReply  = ^xLbxSyncReply;
PxLbxSyncReq  = ^xLbxSyncReq;
PxLbxTagDataReq  = ^xLbxTagDataReq;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _LBXPROTO_H_}
{$define _LBXPROTO_H_}
{$include <X11/extensions/lbx.h>}


const
  X_LbxQueryVersion = 0;  
  X_LbxStartProxy = 1;  
  X_LbxStopProxy = 2;  
  X_LbxSwitch = 3;  
  X_LbxNewClient = 4;  
  X_LbxCloseClient = 5;  
  X_LbxModifySequence = 6;  
  X_LbxAllowMotion = 7;  
  X_LbxIncrementPixel = 8;  
  X_LbxDelta = 9;  
  X_LbxGetModifierMapping = 10;  
  X_LbxInvalidateTag = 12;  
  X_LbxPolyPoint = 13;  
  X_LbxPolyLine = 14;  
  X_LbxPolySegment = 15;  
  X_LbxPolyRectangle = 16;  
  X_LbxPolyArc = 17;  
  X_LbxFillPoly = 18;  
  X_LbxPolyFillRectangle = 19;  
  X_LbxPolyFillArc = 20;  
  X_LbxGetKeyboardMapping = 21;  
  X_LbxQueryFont = 22;  
  X_LbxChangeProperty = 23;  
  X_LbxGetProperty = 24;  
  X_LbxTagData = 25;  
  X_LbxCopyArea = 26;  
  X_LbxCopyPlane = 27;  
  X_LbxPolyText8 = 28;  
  X_LbxPolyText16 = 29;  
  X_LbxImageText8 = 30;  
  X_LbxImageText16 = 31;  
  X_LbxQueryExtension = 32;  
  X_LbxPutImage = 33;  
  X_LbxGetImage = 34;  
  X_LbxBeginLargeRequest = 35;  
  X_LbxLargeRequestData = 36;  
  X_LbxEndLargeRequest = 37;  
  X_LbxInternAtoms = 38;  
  X_LbxGetWinAttrAndGeom = 39;  
  X_LbxGrabCmap = 40;  
  X_LbxReleaseCmap = 41;  
  X_LbxAllocColor = 42;  
  X_LbxSync = 43;  

  XID = CARD32;  
  Atom = CARD32;  
  Colormap = CARD32;  
  Drawable = CARD32;  
  VisualID = CARD32;  
  Window = CARD32;  


type
  PxLbxConnSetupPrefix = ^TxLbxConnSetupPrefix;
  TxLbxConnSetupPrefix = record
      success : TBOOL;
      changeType : TBOOL;
      majorVersion : TCARD16;
      minorVersion : TCARD16;
      length : TCARD16;
      tag : TCARD32;
    end;



  PLbxQueryVersion = ^TLbxQueryVersion;
  TLbxQueryVersion = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
    end;
  TxLbxQueryVersionReq = TLbxQueryVersion;
  PxLbxQueryVersionReq = ^TxLbxQueryVersionReq;

const
  sz_xLbxQueryVersionReq = 4;  



type
  PxLbxQueryVersionReply = ^TxLbxQueryVersionReply;
  TxLbxQueryVersionReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      majorVersion : TCARD16;
      minorVersion : TCARD16;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xLbxQueryVersionReply = 32;  


type
  PLbxStartProxy = ^TLbxStartProxy;
  TLbxStartProxy = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
    end;
  TxLbxStartProxyReq = TLbxStartProxy;
  PxLbxStartProxyReq = ^TxLbxStartProxyReq;

const
  sz_xLbxStartProxyReq = 4;  


type
  PLbxStopProxy = ^TLbxStopProxy;
  TLbxStopProxy = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
    end;
  TxLbxStopProxyReq = TLbxStopProxy;
  PxLbxStopProxyReq = ^TxLbxStopProxyReq;

const
  sz_xLbxStopProxyReq = 4;  



type
  PLbxSwitch = ^TLbxSwitch;
  TLbxSwitch = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
      client : TCARD32;
    end;
  TxLbxSwitchReq = TLbxSwitch;
  PxLbxSwitchReq = ^TxLbxSwitchReq;

const
  sz_xLbxSwitchReq = 8;  



type
  PLbxNewClient = ^TLbxNewClient;
  TLbxNewClient = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
      client : TCARD32;
    end;
  TxLbxNewClientReq = TLbxNewClient;
  PxLbxNewClientReq = ^TxLbxNewClientReq;

const
  sz_xLbxNewClientReq = 8;  



type
  PLbxCloseClient = ^TLbxCloseClient;
  TLbxCloseClient = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
      client : TCARD32;
    end;
  TxLbxCloseClientReq = TLbxCloseClient;
  PxLbxCloseClientReq = ^TxLbxCloseClientReq;

const
  sz_xLbxCloseClientReq = 8;  


type
  PLbxModifySequence = ^TLbxModifySequence;
  TLbxModifySequence = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
      adjust : TCARD32;
    end;
  TxLbxModifySequenceReq = TLbxModifySequence;
  PxLbxModifySequenceReq = ^TxLbxModifySequenceReq;

const
  sz_xLbxModifySequenceReq = 8;  


type
  PLbxAllowMotion = ^TLbxAllowMotion;
  TLbxAllowMotion = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
      num : TCARD32;
    end;
  TxLbxAllowMotionReq = TLbxAllowMotion;
  PxLbxAllowMotionReq = ^TxLbxAllowMotionReq;

const
  sz_xLbxAllowMotionReq = 8;  


type
  PxLbxGrabCmapReq = ^TxLbxGrabCmapReq;
  TxLbxGrabCmapReq = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
      cmap : TColormap;
    end;

const
  sz_xLbxGrabCmapReq = 8;  
  LBX_SMART_GRAB = $80;  
  LBX_AUTO_RELEASE = $40;  
  LBX_3CHANNELS = $20;  
  LBX_2BYTE_PIXELS = $10;  
  LBX_RGB_BITS_MASK = $0f;  
  LBX_LIST_END = 0;  
  LBX_PIXEL_PRIVATE = 1;  
  LBX_PIXEL_SHARED = 2;  
  LBX_PIXEL_RANGE_PRIVATE = 3;  
  LBX_PIXEL_RANGE_SHARED = 4;  
  LBX_NEXT_CHANNEL = 5;  

type
  PxLbxGrabCmapReply = ^TxLbxGrabCmapReply;
  TxLbxGrabCmapReply = record
      _type : TBYTE;
      flags : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xLbxGrabCmapReply = 32;  
  sz_xLbxGrabCmapReplyHdr = 8;  


type
  PxLbxReleaseCmapReq = ^TxLbxReleaseCmapReq;
  TxLbxReleaseCmapReq = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
      cmap : TColormap;
    end;

const
  sz_xLbxReleaseCmapReq = 8;  


type
  PxLbxAllocColorReq = ^TxLbxAllocColorReq;
  TxLbxAllocColorReq = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
      cmap : TColormap;
      pixel : TCARD32;
      red : TCARD16;
      green : TCARD16;
      blue : TCARD16;
      pad : TCARD16;
    end;

const
  sz_xLbxAllocColorReq = 20;  


type
  PLbxIncrementPixel = ^TLbxIncrementPixel;
  TLbxIncrementPixel = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
      cmap : TCARD32;
      pixel : TCARD32;
    end;
  TxLbxIncrementPixelReq = TLbxIncrementPixel;
  PxLbxIncrementPixelReq = ^TxLbxIncrementPixelReq;

const
  sz_xLbxIncrementPixelReq = 12;  





type
  PLbxDelta = ^TLbxDelta;
  TLbxDelta = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
      diffs : TCARD8;
      cindex : TCARD8;
    end;
  TxLbxDeltaReq = TLbxDelta;
  PxLbxDeltaReq = ^TxLbxDeltaReq;

const
  sz_xLbxDeltaReq = 6;  


type
  PLbxGetModifierMapping = ^TLbxGetModifierMapping;
  TLbxGetModifierMapping = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
    end;
  TxLbxGetModifierMappingReq = TLbxGetModifierMapping;
  PxLbxGetModifierMappingReq = ^TxLbxGetModifierMappingReq;

const
  sz_xLbxGetModifierMappingReq = 4;  

type
  PxLbxGetModifierMappingReply = ^TxLbxGetModifierMappingReply;
  TxLbxGetModifierMappingReply = record
      _type : TBYTE;
      keyspermod : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      tag : TCARD32;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xLbxGetModifierMappingReply = 32;  


type
  PLbxGetKeyboardMapping = ^TLbxGetKeyboardMapping;
  TLbxGetKeyboardMapping = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
      firstKeyCode : TKeyCode;
      count : TCARD8;
      pad1 : TCARD16;
    end;
  TxLbxGetKeyboardMappingReq = TLbxGetKeyboardMapping;
  PxLbxGetKeyboardMappingReq = ^TxLbxGetKeyboardMappingReq;

const
  sz_xLbxGetKeyboardMappingReq = 8;  

type
  PxLbxGetKeyboardMappingReply = ^TxLbxGetKeyboardMappingReply;
  TxLbxGetKeyboardMappingReply = record
      _type : TBYTE;
      keysperkeycode : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      tag : TCARD32;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xLbxGetKeyboardMappingReply = 32;  


type
  PLbxQueryFont = ^TLbxQueryFont;
  TLbxQueryFont = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
      fid : TCARD32;
    end;
  TxLbxQueryFontReq = TLbxQueryFont;
  PxLbxQueryFontReq = ^TxLbxQueryFontReq;

const
  sz_xLbxQueryFontReq = 8;  


type
  PLbxInternAtoms = ^TLbxInternAtoms;
  TLbxInternAtoms = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
      num : TCARD16;
    end;
  TxLbxInternAtomsReq = TLbxInternAtoms;
  PxLbxInternAtomsReq = ^TxLbxInternAtomsReq;

const
  sz_xLbxInternAtomsReq = 6;  

type
  PxLbxInternAtomsReply = ^TxLbxInternAtomsReply;
  TxLbxInternAtomsReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      atomsStart : TCARD32;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xLbxInternAtomsReply = 32;  
  sz_xLbxInternAtomsReplyHdr = 8;  



type
  PLbxGetWinAttrAndGeom = ^TLbxGetWinAttrAndGeom;
  TLbxGetWinAttrAndGeom = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
      id : TCARD32;
    end;
  TxLbxGetWinAttrAndGeomReq = TLbxGetWinAttrAndGeom;
  PxLbxGetWinAttrAndGeomReq = ^TxLbxGetWinAttrAndGeomReq;

const
  sz_xLbxGetWinAttrAndGeomReq = 8;  


{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
type
  PxLbxGetWinAttrAndGeomReply = ^TxLbxGetWinAttrAndGeomReply;
  TxLbxGetWinAttrAndGeomReply = record
      _type : TBYTE;
      backingStore : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      visualID : TVisualID;
      c_class : TCARD16;
      _class : TCARD16;
      bitGravity : TCARD8;
      winGravity : TCARD8;
      backingBitPlanes : TCARD32;
      backingPixel : TCARD32;
      saveUnder : TBOOL;
      mapInstalled : TBOOL;
      mapState : TCARD8;
      override : TBOOL;
      colormap : TColormap;
      allEventMasks : TCARD32;
      yourEventMask : TCARD32;
      doNotPropagateMask : TCARD16;
      pad1 : TCARD16;
      root : TWindow;
      x : TINT16;
      y : TINT16;
      width : TCARD16;
      height : TCARD16;
      borderWidth : TCARD16;
      depth : TCARD8;
      pad2 : TCARD8;
    end;

const
  sz_xLbxGetWinAttrAndGeomReply = 60;  


type
  PxLbxSyncReq = ^TxLbxSyncReq;
  TxLbxSyncReq = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
    end;

const
  sz_xLbxSyncReq = 4;  

type
  PxLbxSyncReply = ^TxLbxSyncReply;
  TxLbxSyncReply = record
      _type : TBYTE;
      pad0 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xLbxSyncReply = 32;  

  LBX_WIDTH_SHIFT = 26;  
  LBX_LEFT_SHIFT = 20;  
  LBX_RIGHT_SHIFT = 13;  
  LBX_ASCENT_SHIFT = 7;  
  LBX_DESCENT_SHIFT = 0;  
  LBX_WIDTH_BITS = 6;  
  LBX_LEFT_BITS = 6;  
  LBX_RIGHT_BITS = 7;  
  LBX_ASCENT_BITS = 6;  
  LBX_DESCENT_BITS = 7;  
  LBX_WIDTH_MASK = $fc000000;  
  LBX_LEFT_MASK = $03f00000;  
  LBX_RIGHT_MASK = $000fe000;  
  LBX_ASCENT_MASK = $00001f80;  
  LBX_DESCENT_MASK = $0000007f;  

function LBX_MASK_BITS(val,n : longint) : dword;

type
  PxLbxCharInfo = ^TxLbxCharInfo;
  TxLbxCharInfo = record
      metrics : TCARD32;
    end;


{$ifndef WORD64}
{$endif}
{$ifndef WORD64}
{$endif}


type
  PxLbxFontInfo = ^TxLbxFontInfo;
  TxLbxFontInfo = record
      minBounds : TxCharInfo;
      walign1 : TCARD32;
      maxBounds : TxCharInfo;
      walign2 : TCARD32;
      minCharOrByte2 : TCARD16;
      maxCharOrByte2 : TCARD16;
      defaultChar : TCARD16;
      nFontProps : TCARD16;
      drawDirection : TCARD8;
      minByte1 : TCARD8;
      maxByte1 : TCARD8;
      allCharsExist : TBOOL;
      fontAscent : TINT16;
      fontDescent : TINT16;
      nCharInfos : TCARD32;
    end;



  PxLbxQueryFontReply = ^TxLbxQueryFontReply;
  TxLbxQueryFontReply = record
      _type : TBYTE;
      compression : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      tag : TCARD32;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xLbxQueryFontReply = 32;  


type
  PLbxChangeProperty = ^TLbxChangeProperty;
  TLbxChangeProperty = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
      _property : TAtom;
      _type : TAtom;
      format : TCARD8;
      mode : TCARD8;
      pad : array[0..1] of TBYTE;
      nUnits : TCARD32;
    end;
  TxLbxChangePropertyReq = TLbxChangeProperty;
  PxLbxChangePropertyReq = ^TxLbxChangePropertyReq;

const
  sz_xLbxChangePropertyReq = 24;  

type
  PxLbxChangePropertyReply = ^TxLbxChangePropertyReply;
  TxLbxChangePropertyReply = record
      _type : TBYTE;
      pad : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      tag : TCARD32;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xLbxChangePropertyReply = 32;  


type
  PLbxGetProperty = ^TLbxGetProperty;
  TLbxGetProperty = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
      _property : TAtom;
      _type : TAtom;
      delete : TCARD8;
      pad : array[0..2] of TBYTE;
      longOffset : TCARD32;
      longLength : TCARD32;
    end;
  TxLbxGetPropertyReq = TLbxGetProperty;
  PxLbxGetPropertyReq = ^TxLbxGetPropertyReq;

const
  sz_xLbxGetPropertyReq = 28;  

type
  PxLbxGetPropertyReply = ^TxLbxGetPropertyReply;
  TxLbxGetPropertyReply = record
      _type : TBYTE;
      format : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      propertyType : TAtom;
      bytesAfter : TCARD32;
      nItems : TCARD32;
      tag : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
    end;

const
  sz_xLbxGetPropertyReply = 32;  



type
  PLbxTagData = ^TLbxTagData;
  TLbxTagData = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
      tag : TXID;
      real_length : TCARD32;
    end;
  TxLbxTagDataReq = TLbxTagData;
  PxLbxTagDataReq = ^TxLbxTagDataReq;

const
  sz_xLbxTagDataReq = 12;  


type
  PLbxInvalidateTag = ^TLbxInvalidateTag;
  TLbxInvalidateTag = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
      tag : TCARD32;
    end;
  TxLbxInvalidateTagReq = TLbxInvalidateTag;
  PxLbxInvalidateTagReq = ^TxLbxInvalidateTagReq;

const
  sz_xLbxInvalidateTagReq = 8;  



type
  PLbxPutImage = ^TLbxPutImage;
  TLbxPutImage = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
      compressionMethod : TCARD8;
      cacheEnts : TCARD8;
      bitPacked : TCARD8;
    end;
  TxLbxPutImageReq = TLbxPutImage;
  PxLbxPutImageReq = ^TxLbxPutImageReq;

const
  sz_xLbxPutImageReq = 7;  


type
  PxLbxGetImageReq = ^TxLbxGetImageReq;
  TxLbxGetImageReq = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
      drawable : TDrawable;
      x : TINT16;
      y : TINT16;
      width : TCARD16;
      height : TCARD16;
      planeMask : TCARD32;
      format : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD16;
    end;

const
  sz_xLbxGetImageReq = 24;  

type
  PxLbxGetImageReply = ^TxLbxGetImageReply;
  TxLbxGetImageReply = record
      _type : TBYTE;
      depth : TCARD8;
      sequenceNumber : TCARD16;
      lbxLength : TCARD32;
      xLength : TCARD32;
      visual : TVisualID;
      compressionMethod : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD16;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xLbxGetImageReply = 32;  

  GFX_CACHE_SIZE = 15;  

function GFXdCacheEnt(e : longint) : Te;

function GFXgCacheEnt(e : longint) : longint;

function GFXCacheEnts(d,g : longint) : longint;

const
  GFXCacheNone = $f;  

type
  PLbxPolyPoint = ^TLbxPolyPoint;
  TLbxPolyPoint = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
      cacheEnts : TCARD8;
      padBytes : TCARD8;
    end;
  TxLbxPolyPointReq = TLbxPolyPoint;
  PxLbxPolyPointReq = ^TxLbxPolyPointReq;

const
  sz_xLbxPolyPointReq = 6;  
type
  PxLbxPolyLineReq = ^TxLbxPolyLineReq;
  TxLbxPolyLineReq = TxLbxPolyPointReq;

  PxLbxPolySegmentReq = ^TxLbxPolySegmentReq;
  TxLbxPolySegmentReq = TxLbxPolyPointReq;

  PxLbxPolyRectangleReq = ^TxLbxPolyRectangleReq;
  TxLbxPolyRectangleReq = TxLbxPolyPointReq;

  PxLbxPolyArcReq = ^TxLbxPolyArcReq;
  TxLbxPolyArcReq = TxLbxPolyPointReq;

  PxLbxPolyFillRectangleReq = ^TxLbxPolyFillRectangleReq;
  TxLbxPolyFillRectangleReq = TxLbxPolyPointReq;

  PxLbxPolyFillArcReq = ^TxLbxPolyFillArcReq;
  TxLbxPolyFillArcReq = TxLbxPolyPointReq;

const
  sz_xLbxPolyLineReq = sz_xLbxPolyPointReq;  
  sz_xLbxPolySegmentReq = sz_xLbxPolyPointReq;  
  sz_xLbxPolyRectangleReq = sz_xLbxPolyPointReq;  
  sz_xLbxPolyArcReq = sz_xLbxPolyPointReq;  
  sz_xLbxPolyFillRectangleReq = sz_xLbxPolyPointReq;  
  sz_xLbxPolyFillArc = sz_xLbxPolyPointReq;  

type
  PLbxFillPoly = ^TLbxFillPoly;
  TLbxFillPoly = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
      cacheEnts : TCARD8;
      shape : TBYTE;
      padBytes : TCARD8;
    end;
  TxLbxFillPolyReq = TLbxFillPoly;
  PxLbxFillPolyReq = ^TxLbxFillPolyReq;

const
  sz_xLbxFillPolyReq = 7;  




type
  PLbxCopyArea = ^TLbxCopyArea;
  TLbxCopyArea = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
      srcCache : TCARD8;
      cacheEnts : TCARD8;
    end;
  TxLbxCopyAreaReq = TLbxCopyArea;
  PxLbxCopyAreaReq = ^TxLbxCopyAreaReq;

const
  sz_xLbxCopyAreaReq = 6;  




type
  PLbxCopyPlane = ^TLbxCopyPlane;
  TLbxCopyPlane = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
      bitPlane : TCARD32;
      srcCache : TCARD8;
      cacheEnts : TCARD8;
    end;
  TxLbxCopyPlaneReq = TLbxCopyPlane;
  PxLbxCopyPlaneReq = ^TxLbxCopyPlaneReq;

const
  sz_xLbxCopyPlaneReq = 10;  


type
  PLbxPolyText = ^TLbxPolyText;
  TLbxPolyText = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
      cacheEnts : TCARD8;
    end;
  TxLbxPolyTextReq = TLbxPolyText;
  PxLbxPolyTextReq = ^TxLbxPolyTextReq;

const
  sz_xLbxPolyTextReq = 5;  
type
  PxLbxPolyText8Req = ^TxLbxPolyText8Req;
  TxLbxPolyText8Req = TxLbxPolyTextReq;

  PxLbxPolyText16Req = ^TxLbxPolyText16Req;
  TxLbxPolyText16Req = TxLbxPolyTextReq;

const
  sz_xLbxPolyTextReq = 5;  
  sz_xLbxPolyText8Req = 5;  
  sz_xLbxPolyText16Req = 5;  


type
  PLbxImageText = ^TLbxImageText;
  TLbxImageText = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
      cacheEnts : TCARD8;
      nChars : TCARD8;
    end;
  TxLbxImageTextReq = TLbxImageText;
  PxLbxImageTextReq = ^TxLbxImageTextReq;

  PxLbxImageText8Req = ^TxLbxImageText8Req;
  TxLbxImageText8Req = TxLbxImageTextReq;

  PxLbxImageText16Req = ^TxLbxImageText16Req;
  TxLbxImageText16Req = TxLbxImageTextReq;

const
  sz_xLbxImageTextReq = 6;  
  sz_xLbxImageText8Req = 6;  
  sz_xLbxImageText16Req = 6;  
type
  PxLbxDiffItem = ^TxLbxDiffItem;
  TxLbxDiffItem = record
      offset : TCARD8;
      diff : TCARD8;
    end;

const
  sz_xLbxDiffItem = 2;  

type
  PxLbxStartReply = ^TxLbxStartReply;
  TxLbxStartReply = record
      _type : TBYTE;
      nOpts : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      optDataStart : TCARD32;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xLbxStartReply = 32;  
  sz_xLbxStartReplyHdr = 8;  


type
  PLbxQueryExtension = ^TLbxQueryExtension;
  TLbxQueryExtension = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
      nbytes : TCARD32;
    end;
  TxLbxQueryExtensionReq = TLbxQueryExtension;
  PxLbxQueryExtensionReq = ^TxLbxQueryExtensionReq;

const
  sz_xLbxQueryExtensionReq = 8;  


type
  PLbxQueryExtensionReply = ^TLbxQueryExtensionReply;
  TLbxQueryExtensionReply = record
      _type : TBYTE;
      numReqs : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      present : TBOOL;
      major_opcode : TCARD8;
      first_event : TCARD8;
      first_error : TCARD8;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;
  TxLbxQueryExtensionReply = TLbxQueryExtensionReply;
  PxLbxQueryExtensionReply = ^TxLbxQueryExtensionReply;

const
  sz_xLbxQueryExtensionReply = 32;  


type
  PLbxBeginLargeRequest = ^TLbxBeginLargeRequest;
  TLbxBeginLargeRequest = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
      largeReqLength : TCARD32;
    end;
  TxLbxBeginLargeRequestReq = TLbxBeginLargeRequest;
  PxLbxBeginLargeRequestReq = ^TxLbxBeginLargeRequestReq;

const
  sz_BeginLargeRequestReq = 8;  



type
  PLbxLargeRequestData = ^TLbxLargeRequestData;
  TLbxLargeRequestData = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
    end;
  TxLbxLargeRequestDataReq = TLbxLargeRequestData;
  PxLbxLargeRequestDataReq = ^TxLbxLargeRequestDataReq;

const
  sz_LargeRequestDataReq = 4;  


type
  PLbxEndLargeRequest = ^TLbxEndLargeRequest;
  TLbxEndLargeRequest = record
      reqType : TCARD8;
      lbxReqType : TCARD8;
      length : TCARD16;
    end;
  TxLbxEndLargeRequestReq = TLbxEndLargeRequest;
  PxLbxEndLargeRequestReq = ^TxLbxEndLargeRequestReq;

const
  sz_EndLargeRequestReq = 4;  


type
  PLbxSwitchEvent = ^TLbxSwitchEvent;
  TLbxSwitchEvent = record
      _type : TBYTE;
      lbxType : TBYTE;
      pad : TCARD16;
      client : TCARD32;
    end;
  TxLbxSwitchEvent = TLbxSwitchEvent;
  PxLbxSwitchEvent = ^TxLbxSwitchEvent;

const
  sz_xLbxSwitchEvent = 8;  


type
  PLbxCloseEvent = ^TLbxCloseEvent;
  TLbxCloseEvent = record
      _type : TBYTE;
      lbxType : TBYTE;
      sequenceNumber : TCARD16;
      client : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;
  TxLbxCloseEvent = TLbxCloseEvent;
  PxLbxCloseEvent = ^TxLbxCloseEvent;

const
  sz_xLbxCloseEvent = 32;  


type
  PLbxInvalidateTagEvent = ^TLbxInvalidateTagEvent;
  TLbxInvalidateTagEvent = record
      _type : TBYTE;
      lbxType : TBYTE;
      sequenceNumber : TCARD16;
      tag : TCARD32;
      tagType : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;
  TxLbxInvalidateTagEvent = TLbxInvalidateTagEvent;
  PxLbxInvalidateTagEvent = ^TxLbxInvalidateTagEvent;

const
  sz_xLbxInvalidateTagEvent = 32;  


type
  PLbxSendTagDataEvent = ^TLbxSendTagDataEvent;
  TLbxSendTagDataEvent = record
      _type : TBYTE;
      lbxType : TBYTE;
      sequenceNumber : TCARD16;
      tag : TCARD32;
      tagType : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;
  TxLbxSendTagDataEvent = TLbxSendTagDataEvent;
  PxLbxSendTagDataEvent = ^TxLbxSendTagDataEvent;

const
  sz_xLbxSendTagDataEvent = 32;  


type
  PLbxListenToOneEvent = ^TLbxListenToOneEvent;
  TLbxListenToOneEvent = record
      _type : TBYTE;
      lbxType : TBYTE;
      sequenceNumber : TCARD16;
      client : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;
  TxLbxListenToOneEvent = TLbxListenToOneEvent;
  PxLbxListenToOneEvent = ^TxLbxListenToOneEvent;

const
  sz_xLbxListenToOneEvent = 32;  


type
  PLbxListenToAllEvent = ^TLbxListenToAllEvent;
  TLbxListenToAllEvent = record
      _type : TBYTE;
      lbxType : TBYTE;
      sequenceNumber : TCARD16;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
      pad7 : TCARD32;
    end;
  TxLbxListenToAllEvent = TLbxListenToAllEvent;
  PxLbxListenToAllEvent = ^TxLbxListenToAllEvent;

const
  sz_xLbxListenToOneEvent = 32;  


type
  PLbxReleaseCmapEvent = ^TLbxReleaseCmapEvent;
  TLbxReleaseCmapEvent = record
      _type : TBYTE;
      lbxType : TBYTE;
      sequenceNumber : TCARD16;
      colormap : TColormap;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;
  TxLbxReleaseCmapEvent = TLbxReleaseCmapEvent;
  PxLbxReleaseCmapEvent = ^TxLbxReleaseCmapEvent;

const
  sz_xLbxReleaseCmapEvent = 32;  


type
  PLbxFreeCellsEvent = ^TLbxFreeCellsEvent;
  TLbxFreeCellsEvent = record
      _type : TBYTE;
      lbxType : TBYTE;
      sequenceNumber : TCARD16;
      colormap : TColormap;
      pixelStart : TCARD32;
      pixelEnd : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;
  TxLbxFreeCellsEvent = TLbxFreeCellsEvent;
  PxLbxFreeCellsEvent = ^TxLbxFreeCellsEvent;

const
  sz_xLbxFreeCellsEvent = 32;  

  lbxsz_KeyButtonEvent = 32;  
  lbxupsz_KeyButtonEvent = 31;  
  lbxsz_EnterLeaveEvent = 32;  
  lbxupsz_EnterLeaveEvent = 32;  
  lbxsz_FocusEvent = 12;  
  lbxupsz_FocusEvent = 9;  
  lbxsz_KeymapEvent = 32;  
  lbxupsz_KeymapEvent = 32;  
  lbxsz_ExposeEvent = 20;  
  lbxupsz_ExposeEvent = 18;  
  lbxsz_GfxExposeEvent = 24;  
  lbxupsz_GfxExposeEvent = 21;  
  lbxsz_NoExposeEvent = 12;  
  lbxupsz_NoExposeEvent = 11;  
  lbxsz_VisibilityEvent = 12;  
  lbxupsz_VisibilityEvent = 9;  
  lbxsz_CreateNotifyEvent = 24;  
  lbxupsz_CreateNotifyEvent = 23;  
  lbxsz_DestroyNotifyEvent = 12;  
  lbxupsz_DestroyNotifyEvent = 12;  
  lbxsz_UnmapNotifyEvent = 16;  
  lbxupsz_UnmapNotifyEvent = 13;  
  lbxsz_MapNotifyEvent = 16;  
  lbxupsz_MapNotifyEvent = 13;  
  lbxsz_MapRequestEvent = 12;  
  lbxupsz_MapRequestEvent = 12;  
  lbxsz_ReparentEvent = 24;  
  lbxupsz_ReparentEvent = 21;  
  lbxsz_ConfigureNotifyEvent = 28;  
  lbxupsz_ConfigureNotifyEvent = 27;  
  lbxsz_ConfigureRequestEvent = 28;  
  lbxupsz_ConfigureRequestEvent = 28;  
  lbxsz_GravityEvent = 16;  
  lbxupsz_GravityEvent = 16;  
  lbxsz_ResizeRequestEvent = 12;  
  lbxupsz_ResizeRequestEvent = 12;  
  lbxsz_CirculateEvent = 20;  
  lbxupsz_CirculateEvent = 17;  
  lbxsz_PropertyEvent = 20;  
  lbxupsz_PropertyEvent = 17;  
  lbxsz_SelectionClearEvent = 16;  
  lbxupsz_SelectionClearEvent = 16;  
  lbxsz_SelectionRequestEvent = 28;  
  lbxupsz_SelectionRequestEvent = 28;  
  lbxsz_SelectionNotifyEvent = 24;  
  lbxupsz_SelectionNotifyEvent = 24;  
  lbxsz_ColormapEvent = 16;  
  lbxupsz_ColormapEvent = 14;  
  lbxsz_MappingNotifyEvent = 8;  
  lbxupsz_MappingNotifyEvent = 7;  
  lbxsz_ClientMessageEvent = 32;  
  lbxupsz_ClientMessageEvent = 32;  
  lbxsz_UnknownEvent = 32;  
{$ifdef DEBUG}
  DBG_SWITCH = $00000001;  
  DBG_CLOSE = $00000002;  
  DBG_IO = $00000004;  
  DBG_READ_REQ = $00000008;  
  DBG_LEN = $00000010;  
  DBG_BLOCK = $00000020;  
  DBG_CLIENT = $00000040;  
  DBG_DELTA = $00000080;  
{$endif}

{$undef XID}
{$undef Atom}
{$undef Colormap}
{$undef Drawable}
{$undef VisualID}
{$undef Window}
{$endif}


implementation

function LBX_MASK_BITS(val,n : longint) : dword;
begin
  LBX_MASK_BITS:=dword(Tval(@((1 shl n)-1)));
end;

function GFXdCacheEnt(e : longint) : Te;
begin
  GFXdCacheEnt:=Te(@($f));
end;

function GFXgCacheEnt(e : longint) : longint;
begin
  GFXgCacheEnt:=(e shr 4) and $f;
end;

function GFXCacheEnts(d,g : longint) : longint;
begin
  GFXCacheEnts:=(Td(@($f))) or ((Tg(@($f))) shl 4);
end;


end.
