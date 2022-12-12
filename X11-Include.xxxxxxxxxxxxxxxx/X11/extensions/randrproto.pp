
unit randrproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/randrproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/randrproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/randrproto.pp
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
PxRR1_0SetScreenConfigReq  = ^xRR1_0SetScreenConfigReq;
PxRRAddOutputModeReq  = ^xRRAddOutputModeReq;
PxRRChangeOutputPropertyReq  = ^xRRChangeOutputPropertyReq;
PxRRChangeProviderPropertyReq  = ^xRRChangeProviderPropertyReq;
PxRRConfigureOutputPropertyReq  = ^xRRConfigureOutputPropertyReq;
PxRRConfigureProviderPropertyReq  = ^xRRConfigureProviderPropertyReq;
PxRRCreateLeaseReply  = ^xRRCreateLeaseReply;
PxRRCreateLeaseReq  = ^xRRCreateLeaseReq;
PxRRCreateModeReply  = ^xRRCreateModeReply;
PxRRCreateModeReq  = ^xRRCreateModeReq;
PxRRCrtcChangeNotifyEvent  = ^xRRCrtcChangeNotifyEvent;
PxRRDeleteMonitorReq  = ^xRRDeleteMonitorReq;
PxRRDeleteOutputModeReq  = ^xRRDeleteOutputModeReq;
PxRRDeleteOutputPropertyReq  = ^xRRDeleteOutputPropertyReq;
PxRRDeleteProviderPropertyReq  = ^xRRDeleteProviderPropertyReq;
PxRRDestroyModeReq  = ^xRRDestroyModeReq;
PxRRFreeLeaseReq  = ^xRRFreeLeaseReq;
PxRRGetCrtcGammaReply  = ^xRRGetCrtcGammaReply;
PxRRGetCrtcGammaReq  = ^xRRGetCrtcGammaReq;
PxRRGetCrtcGammaSizeReply  = ^xRRGetCrtcGammaSizeReply;
PxRRGetCrtcGammaSizeReq  = ^xRRGetCrtcGammaSizeReq;
PxRRGetCrtcInfoReply  = ^xRRGetCrtcInfoReply;
PxRRGetCrtcInfoReq  = ^xRRGetCrtcInfoReq;
PxRRGetCrtcTransformReply  = ^xRRGetCrtcTransformReply;
PxRRGetCrtcTransformReq  = ^xRRGetCrtcTransformReq;
PxRRGetMonitorsReply  = ^xRRGetMonitorsReply;
PxRRGetMonitorsReq  = ^xRRGetMonitorsReq;
PxRRGetOutputInfoReply  = ^xRRGetOutputInfoReply;
PxRRGetOutputInfoReq  = ^xRRGetOutputInfoReq;
PxRRGetOutputPrimaryReply  = ^xRRGetOutputPrimaryReply;
PxRRGetOutputPrimaryReq  = ^xRRGetOutputPrimaryReq;
PxRRGetOutputPropertyReply  = ^xRRGetOutputPropertyReply;
PxRRGetOutputPropertyReq  = ^xRRGetOutputPropertyReq;
PxRRGetPanningReply  = ^xRRGetPanningReply;
PxRRGetPanningReq  = ^xRRGetPanningReq;
PxRRGetProviderInfoReply  = ^xRRGetProviderInfoReply;
PxRRGetProviderInfoReq  = ^xRRGetProviderInfoReq;
PxRRGetProviderPropertyReply  = ^xRRGetProviderPropertyReply;
PxRRGetProviderPropertyReq  = ^xRRGetProviderPropertyReq;
PxRRGetProvidersReply  = ^xRRGetProvidersReply;
PxRRGetProvidersReq  = ^xRRGetProvidersReq;
PxRRGetScreenInfoReply  = ^xRRGetScreenInfoReply;
PxRRGetScreenInfoReq  = ^xRRGetScreenInfoReq;
PxRRGetScreenResourcesCurrentReply  = ^xRRGetScreenResourcesCurrentReply;
PxRRGetScreenResourcesCurrentReq  = ^xRRGetScreenResourcesCurrentReq;
PxRRGetScreenResourcesReply  = ^xRRGetScreenResourcesReply;
PxRRGetScreenResourcesReq  = ^xRRGetScreenResourcesReq;
PxRRGetScreenSizeRangeReply  = ^xRRGetScreenSizeRangeReply;
PxRRGetScreenSizeRangeReq  = ^xRRGetScreenSizeRangeReq;
PxRRLeaseNotifyEvent  = ^xRRLeaseNotifyEvent;
PxRRListOutputPropertiesReply  = ^xRRListOutputPropertiesReply;
PxRRListOutputPropertiesReq  = ^xRRListOutputPropertiesReq;
PxRRListProviderPropertiesReply  = ^xRRListProviderPropertiesReply;
PxRRListProviderPropertiesReq  = ^xRRListProviderPropertiesReq;
PxRRModeInfo  = ^xRRModeInfo;
PxRRMonitorInfo  = ^xRRMonitorInfo;
PxRROutputChangeNotifyEvent  = ^xRROutputChangeNotifyEvent;
PxRROutputPropertyNotifyEvent  = ^xRROutputPropertyNotifyEvent;
PxRRProviderChangeNotifyEvent  = ^xRRProviderChangeNotifyEvent;
PxRRProviderPropertyNotifyEvent  = ^xRRProviderPropertyNotifyEvent;
PxRRQueryOutputPropertyReply  = ^xRRQueryOutputPropertyReply;
PxRRQueryOutputPropertyReq  = ^xRRQueryOutputPropertyReq;
PxRRQueryProviderPropertyReply  = ^xRRQueryProviderPropertyReply;
PxRRQueryProviderPropertyReq  = ^xRRQueryProviderPropertyReq;
PxRRQueryVersionReply  = ^xRRQueryVersionReply;
PxRRQueryVersionReq  = ^xRRQueryVersionReq;
PxRRResourceChangeNotifyEvent  = ^xRRResourceChangeNotifyEvent;
PxRRScreenChangeNotifyEvent  = ^xRRScreenChangeNotifyEvent;
PxRRSelectInputReq  = ^xRRSelectInputReq;
PxRRSetCrtcConfigReply  = ^xRRSetCrtcConfigReply;
PxRRSetCrtcConfigReq  = ^xRRSetCrtcConfigReq;
PxRRSetCrtcGammaReq  = ^xRRSetCrtcGammaReq;
PxRRSetCrtcTransformReq  = ^xRRSetCrtcTransformReq;
PxRRSetMonitorReq  = ^xRRSetMonitorReq;
PxRRSetOutputPrimaryReq  = ^xRRSetOutputPrimaryReq;
PxRRSetPanningReply  = ^xRRSetPanningReply;
PxRRSetPanningReq  = ^xRRSetPanningReq;
PxRRSetProviderOffloadSinkReq  = ^xRRSetProviderOffloadSinkReq;
PxRRSetProviderOutputSourceReq  = ^xRRSetProviderOutputSourceReq;
PxRRSetScreenConfigReply  = ^xRRSetScreenConfigReply;
PxRRSetScreenConfigReq  = ^xRRSetScreenConfigReq;
PxRRSetScreenSizeReq  = ^xRRSetScreenSizeReq;
PxScreenSizes  = ^xScreenSizes;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _XRANDRP_H_}
{$define _XRANDRP_H_}
{$include <X11/extensions/randr.h>}
{$include <X11/extensions/renderproto.h>}

const
  Window = CARD32;  
  Drawable = CARD32;  
  Font = CARD32;  
  Pixmap = CARD32;  
  Cursor = CARD32;  
  Colormap = CARD32;  
  GContext = CARD32;  
  Atom = CARD32;  
  Time = CARD32;  
  KeyCode = CARD8;  
  KeySym = CARD32;  
  RROutput = CARD32;  
  RRMode = CARD32;  
  RRCrtc = CARD32;  
  RRProvider = CARD32;  
  RRModeFlags = CARD32;  
  RRLease = CARD32;  
  Rotation = CARD16;  
  SizeID = CARD16;  
  SubpixelOrder = CARD16;  

type
  PxScreenSizes = ^TxScreenSizes;
  TxScreenSizes = record
      widthInPixels : TCARD16;
      heightInPixels : TCARD16;
      widthInMillimeters : TCARD16;
      heightInMillimeters : TCARD16;
    end;

const
  sz_xScreenSizes = 8;  

type
  PxRRQueryVersionReq = ^TxRRQueryVersionReq;
  TxRRQueryVersionReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      majorVersion : TCARD32;
      minorVersion : TCARD32;
    end;

const
  sz_xRRQueryVersionReq = 12;  

type
  PxRRQueryVersionReply = ^TxRRQueryVersionReply;
  TxRRQueryVersionReply = record
      _type : TBYTE;
      pad1 : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      majorVersion : TCARD32;
      minorVersion : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xRRQueryVersionReply = 32;  
type
  PxRRGetScreenInfoReq = ^TxRRGetScreenInfoReq;
  TxRRGetScreenInfoReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
    end;

const
  sz_xRRGetScreenInfoReq = 8;  


type
  PxRRGetScreenInfoReply = ^TxRRGetScreenInfoReply;
  TxRRGetScreenInfoReply = record
      _type : TBYTE;
      setOfRotations : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      root : TWindow;
      timestamp : TTime;
      configTimestamp : TTime;
      nSizes : TCARD16;
      sizeID : TSizeID;
      rotation : TRotation;
      rate : TCARD16;
      nrateEnts : TCARD16;
      pad : TCARD16;
    end;

const
  sz_xRRGetScreenInfoReply = 32;  
type
  PxRR1_0SetScreenConfigReq = ^TxRR1_0SetScreenConfigReq;
  TxRR1_0SetScreenConfigReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      drawable : TDrawable;
      timestamp : TTime;
      configTimestamp : TTime;
      sizeID : TSizeID;
      rotation : TRotation;
    end;

const
  sz_xRR1_0SetScreenConfigReq = 20;  
type
  PxRRSetScreenConfigReq = ^TxRRSetScreenConfigReq;
  TxRRSetScreenConfigReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      drawable : TDrawable;
      timestamp : TTime;
      configTimestamp : TTime;
      sizeID : TSizeID;
      rotation : TRotation;
      rate : TCARD16;
      pad : TCARD16;
    end;

const
  sz_xRRSetScreenConfigReq = 24;  

type
  PxRRSetScreenConfigReply = ^TxRRSetScreenConfigReply;
  TxRRSetScreenConfigReply = record
      _type : TBYTE;
      status : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      newTimestamp : TTime;
      newConfigTimestamp : TTime;
      root : TWindow;
      subpixelOrder : TCARD16;
      pad4 : TCARD16;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xRRSetScreenConfigReply = 32;  
type
  PxRRSelectInputReq = ^TxRRSelectInputReq;
  TxRRSelectInputReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
      enable : TCARD16;
      pad2 : TCARD16;
    end;

const
  sz_xRRSelectInputReq = 12;  

type
  PxRRModeInfo = ^TxRRModeInfo;
  TxRRModeInfo = record
      id : TRRMode;
      width : TCARD16;
      height : TCARD16;
      dotClock : TCARD32;
      hSyncStart : TCARD16;
      hSyncEnd : TCARD16;
      hTotal : TCARD16;
      hSkew : TCARD16;
      vSyncStart : TCARD16;
      vSyncEnd : TCARD16;
      vTotal : TCARD16;
      nameLength : TCARD16;
      modeFlags : TRRModeFlags;
    end;

const
  sz_xRRModeInfo = 32;  
type
  PxRRGetScreenSizeRangeReq = ^TxRRGetScreenSizeRangeReq;
  TxRRGetScreenSizeRangeReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
    end;

const
  sz_xRRGetScreenSizeRangeReq = 8;  

type
  PxRRGetScreenSizeRangeReply = ^TxRRGetScreenSizeRangeReply;
  TxRRGetScreenSizeRangeReply = record
      _type : TBYTE;
      pad : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      minWidth : TCARD16;
      minHeight : TCARD16;
      maxWidth : TCARD16;
      maxHeight : TCARD16;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
    end;

const
  sz_xRRGetScreenSizeRangeReply = 32;  
type
  PxRRSetScreenSizeReq = ^TxRRSetScreenSizeReq;
  TxRRSetScreenSizeReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
      width : TCARD16;
      height : TCARD16;
      widthInMillimeters : TCARD32;
      heightInMillimeters : TCARD32;
    end;

const
  sz_xRRSetScreenSizeReq = 20;  
type
  PxRRGetScreenResourcesReq = ^TxRRGetScreenResourcesReq;
  TxRRGetScreenResourcesReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
    end;

const
  sz_xRRGetScreenResourcesReq = 8;  
type
  PxRRGetScreenResourcesReply = ^TxRRGetScreenResourcesReply;
  TxRRGetScreenResourcesReply = record
      _type : TBYTE;
      pad : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      timestamp : TTime;
      configTimestamp : TTime;
      nCrtcs : TCARD16;
      nOutputs : TCARD16;
      nModes : TCARD16;
      nbytesNames : TCARD16;
      pad1 : TCARD32;
      pad2 : TCARD32;
    end;

const
  sz_xRRGetScreenResourcesReply = 32;  
type
  PxRRGetOutputInfoReq = ^TxRRGetOutputInfoReq;
  TxRRGetOutputInfoReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      output : TRROutput;
      configTimestamp : TTime;
    end;

const
  sz_xRRGetOutputInfoReq = 12;  
type
  PxRRGetOutputInfoReply = ^TxRRGetOutputInfoReply;
  TxRRGetOutputInfoReply = record
      _type : TBYTE;
      status : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      timestamp : TTime;
      crtc : TRRCrtc;
      mmWidth : TCARD32;
      mmHeight : TCARD32;
      connection : TCARD8;
      subpixelOrder : TCARD8;
      nCrtcs : TCARD16;
      nModes : TCARD16;
      nPreferred : TCARD16;
      nClones : TCARD16;
      nameLength : TCARD16;
    end;

const
  sz_xRRGetOutputInfoReply = 36;  
type
  PxRRListOutputPropertiesReq = ^TxRRListOutputPropertiesReq;
  TxRRListOutputPropertiesReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      output : TRROutput;
    end;

const
  sz_xRRListOutputPropertiesReq = 8;  
type
  PxRRListOutputPropertiesReply = ^TxRRListOutputPropertiesReply;
  TxRRListOutputPropertiesReply = record
      _type : TBYTE;
      pad0 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      nAtoms : TCARD16;
      pad1 : TCARD16;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xRRListOutputPropertiesReply = 32;  
type
  PxRRQueryOutputPropertyReq = ^TxRRQueryOutputPropertyReq;
  TxRRQueryOutputPropertyReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      output : TRROutput;
      _property : TAtom;
    end;

const
  sz_xRRQueryOutputPropertyReq = 12;  
type
  PxRRQueryOutputPropertyReply = ^TxRRQueryOutputPropertyReply;
  TxRRQueryOutputPropertyReply = record
      _type : TBYTE;
      pad0 : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      pending : TBOOL;
      range : TBOOL;
      immutable : TBOOL;
      pad1 : TBYTE;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xRRQueryOutputPropertyReply = 32;  
type
  PxRRConfigureOutputPropertyReq = ^TxRRConfigureOutputPropertyReq;
  TxRRConfigureOutputPropertyReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      output : TRROutput;
      _property : TAtom;
      pending : TBOOL;
      range : TBOOL;
      pad : TCARD16;
    end;

const
  sz_xRRConfigureOutputPropertyReq = 16;  
type
  PxRRChangeOutputPropertyReq = ^TxRRChangeOutputPropertyReq;
  TxRRChangeOutputPropertyReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      output : TRROutput;
      _property : TAtom;
      _type : TAtom;
      format : TCARD8;
      mode : TCARD8;
      pad : TCARD16;
      nUnits : TCARD32;
    end;

const
  sz_xRRChangeOutputPropertyReq = 24;  
type
  PxRRDeleteOutputPropertyReq = ^TxRRDeleteOutputPropertyReq;
  TxRRDeleteOutputPropertyReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      output : TRROutput;
      _property : TAtom;
    end;

const
  sz_xRRDeleteOutputPropertyReq = 12;  
type
  PxRRGetOutputPropertyReq = ^TxRRGetOutputPropertyReq;
  TxRRGetOutputPropertyReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      output : TRROutput;
      _property : TAtom;
      _type : TAtom;
      longOffset : TCARD32;
      longLength : TCARD32;
      delete : TBOOL;
      pending : TBOOL;
      pad1 : TCARD16;
    end;

const
  sz_xRRGetOutputPropertyReq = 28;  
type
  PxRRGetOutputPropertyReply = ^TxRRGetOutputPropertyReply;
  TxRRGetOutputPropertyReply = record
      _type : TBYTE;
      format : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      propertyType : TAtom;
      bytesAfter : TCARD32;
      nItems : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
    end;

const
  sz_xRRGetOutputPropertyReply = 32;  
type
  PxRRCreateModeReq = ^TxRRCreateModeReq;
  TxRRCreateModeReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
      modeInfo : TxRRModeInfo;
    end;

const
  sz_xRRCreateModeReq = 40;  
type
  PxRRCreateModeReply = ^TxRRCreateModeReply;
  TxRRCreateModeReply = record
      _type : TBYTE;
      pad0 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      mode : TRRMode;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xRRCreateModeReply = 32;  
type
  PxRRDestroyModeReq = ^TxRRDestroyModeReq;
  TxRRDestroyModeReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      mode : TRRMode;
    end;

const
  sz_xRRDestroyModeReq = 8;  
type
  PxRRAddOutputModeReq = ^TxRRAddOutputModeReq;
  TxRRAddOutputModeReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      output : TRROutput;
      mode : TRRMode;
    end;

const
  sz_xRRAddOutputModeReq = 12;  
type
  PxRRDeleteOutputModeReq = ^TxRRDeleteOutputModeReq;
  TxRRDeleteOutputModeReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      output : TRROutput;
      mode : TRRMode;
    end;

const
  sz_xRRDeleteOutputModeReq = 12;  
type
  PxRRGetCrtcInfoReq = ^TxRRGetCrtcInfoReq;
  TxRRGetCrtcInfoReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      crtc : TRRCrtc;
      configTimestamp : TTime;
    end;

const
  sz_xRRGetCrtcInfoReq = 12;  
type
  PxRRGetCrtcInfoReply = ^TxRRGetCrtcInfoReply;
  TxRRGetCrtcInfoReply = record
      _type : TBYTE;
      status : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      timestamp : TTime;
      x : TINT16;
      y : TINT16;
      width : TCARD16;
      height : TCARD16;
      mode : TRRMode;
      rotation : TRotation;
      rotations : TRotation;
      nOutput : TCARD16;
      nPossibleOutput : TCARD16;
    end;

const
  sz_xRRGetCrtcInfoReply = 32;  
type
  PxRRSetCrtcConfigReq = ^TxRRSetCrtcConfigReq;
  TxRRSetCrtcConfigReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      crtc : TRRCrtc;
      timestamp : TTime;
      configTimestamp : TTime;
      x : TINT16;
      y : TINT16;
      mode : TRRMode;
      rotation : TRotation;
      pad : TCARD16;
    end;

const
  sz_xRRSetCrtcConfigReq = 28;  
type
  PxRRSetCrtcConfigReply = ^TxRRSetCrtcConfigReply;
  TxRRSetCrtcConfigReply = record
      _type : TBYTE;
      status : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      newTimestamp : TTime;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xRRSetCrtcConfigReply = 32;  
type
  PxRRGetCrtcGammaSizeReq = ^TxRRGetCrtcGammaSizeReq;
  TxRRGetCrtcGammaSizeReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      crtc : TRRCrtc;
    end;

const
  sz_xRRGetCrtcGammaSizeReq = 8;  
type
  PxRRGetCrtcGammaSizeReply = ^TxRRGetCrtcGammaSizeReply;
  TxRRGetCrtcGammaSizeReply = record
      _type : TBYTE;
      status : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      size : TCARD16;
      pad1 : TCARD16;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xRRGetCrtcGammaSizeReply = 32;  
type
  PxRRGetCrtcGammaReq = ^TxRRGetCrtcGammaReq;
  TxRRGetCrtcGammaReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      crtc : TRRCrtc;
    end;

const
  sz_xRRGetCrtcGammaReq = 8;  
type
  PxRRGetCrtcGammaReply = ^TxRRGetCrtcGammaReply;
  TxRRGetCrtcGammaReply = record
      _type : TBYTE;
      status : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      size : TCARD16;
      pad1 : TCARD16;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xRRGetCrtcGammaReply = 32;  
type
  PxRRSetCrtcGammaReq = ^TxRRSetCrtcGammaReq;
  TxRRSetCrtcGammaReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      crtc : TRRCrtc;
      size : TCARD16;
      pad1 : TCARD16;
    end;

const
  sz_xRRSetCrtcGammaReq = 12;  

type
  PxRRGetScreenResourcesCurrentReq = ^TxRRGetScreenResourcesCurrentReq;
  TxRRGetScreenResourcesCurrentReq = TxRRGetScreenResourcesReq;

const
  sz_xRRGetScreenResourcesCurrentReq = sz_xRRGetScreenResourcesReq;  
type
  PxRRGetScreenResourcesCurrentReply = ^TxRRGetScreenResourcesCurrentReply;
  TxRRGetScreenResourcesCurrentReply = TxRRGetScreenResourcesReply;

const
  sz_xRRGetScreenResourcesCurrentReply = sz_xRRGetScreenResourcesReply;  

type
  PxRRSetCrtcTransformReq = ^TxRRSetCrtcTransformReq;
  TxRRSetCrtcTransformReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      crtc : TRRCrtc;
      transform : TxRenderTransform;
      nbytesFilter : TCARD16;
      pad : TCARD16;
    end;

const
  sz_xRRSetCrtcTransformReq = 48;  
type
  PxRRGetCrtcTransformReq = ^TxRRGetCrtcTransformReq;
  TxRRGetCrtcTransformReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      crtc : TRRCrtc;
    end;

const
  sz_xRRGetCrtcTransformReq = 8;  




type
  PxRRGetCrtcTransformReply = ^TxRRGetCrtcTransformReply;
  TxRRGetCrtcTransformReply = record
      _type : TBYTE;
      status : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      pendingTransform : TxRenderTransform;
      hasTransforms : TBYTE;
      pad0 : TCARD8;
      pad1 : TCARD16;
      currentTransform : TxRenderTransform;
      pad2 : TCARD32;
      pendingNbytesFilter : TCARD16;
      pendingNparamsFilter : TCARD16;
      currentNbytesFilter : TCARD16;
      currentNparamsFilter : TCARD16;
    end;

const
  sz_xRRGetCrtcTransformReply = 96;  
type
  PxRRSetOutputPrimaryReq = ^TxRRSetOutputPrimaryReq;
  TxRRSetOutputPrimaryReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
      output : TRROutput;
    end;

const
  sz_xRRSetOutputPrimaryReq = 12;  
type
  PxRRGetOutputPrimaryReq = ^TxRRGetOutputPrimaryReq;
  TxRRGetOutputPrimaryReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
    end;

const
  sz_xRRGetOutputPrimaryReq = 8;  
type
  PxRRGetOutputPrimaryReply = ^TxRRGetOutputPrimaryReply;
  TxRRGetOutputPrimaryReply = record
      _type : TBYTE;
      pad : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      output : TRROutput;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xRRGetOutputPrimaryReply = 32;  

type
  PxRRGetProvidersReq = ^TxRRGetProvidersReq;
  TxRRGetProvidersReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
    end;

const
  sz_xRRGetProvidersReq = 8;  
type
  PxRRGetProvidersReply = ^TxRRGetProvidersReply;
  TxRRGetProvidersReply = record
      _type : TBYTE;
      pad : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      timestamp : TTime;
      nProviders : TCARD16;
      pad1 : TCARD16;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xRRGetProvidersReply = 32;  
type
  PxRRGetProviderInfoReq = ^TxRRGetProviderInfoReq;
  TxRRGetProviderInfoReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      provider : TRRProvider;
      configTimestamp : TTime;
    end;

const
  sz_xRRGetProviderInfoReq = 12;  
type
  PxRRGetProviderInfoReply = ^TxRRGetProviderInfoReply;
  TxRRGetProviderInfoReply = record
      _type : TBYTE;
      status : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      timestamp : TTime;
      capabilities : TCARD32;
      nCrtcs : TCARD16;
      nOutputs : TCARD16;
      nAssociatedProviders : TCARD16;
      nameLength : TCARD16;
      pad1 : TCARD32;
      pad2 : TCARD32;
    end;

const
  sz_xRRGetProviderInfoReply = 32;  
type
  PxRRSetProviderOutputSourceReq = ^TxRRSetProviderOutputSourceReq;
  TxRRSetProviderOutputSourceReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      provider : TRRProvider;
      source_provider : TRRProvider;
      configTimestamp : TTime;
    end;

const
  sz_xRRSetProviderOutputSourceReq = 16;  
type
  PxRRSetProviderOffloadSinkReq = ^TxRRSetProviderOffloadSinkReq;
  TxRRSetProviderOffloadSinkReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      provider : TRRProvider;
      sink_provider : TRRProvider;
      configTimestamp : TTime;
    end;

const
  sz_xRRSetProviderOffloadSinkReq = 16;  
type
  PxRRListProviderPropertiesReq = ^TxRRListProviderPropertiesReq;
  TxRRListProviderPropertiesReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      provider : TRRProvider;
    end;

const
  sz_xRRListProviderPropertiesReq = 8;  
type
  PxRRListProviderPropertiesReply = ^TxRRListProviderPropertiesReply;
  TxRRListProviderPropertiesReply = record
      _type : TBYTE;
      pad0 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      nAtoms : TCARD16;
      pad1 : TCARD16;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xRRListProviderPropertiesReply = 32;  
type
  PxRRQueryProviderPropertyReq = ^TxRRQueryProviderPropertyReq;
  TxRRQueryProviderPropertyReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      provider : TRRProvider;
      _property : TAtom;
    end;

const
  sz_xRRQueryProviderPropertyReq = 12;  
type
  PxRRQueryProviderPropertyReply = ^TxRRQueryProviderPropertyReply;
  TxRRQueryProviderPropertyReply = record
      _type : TBYTE;
      pad0 : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      pending : TBOOL;
      range : TBOOL;
      immutable : TBOOL;
      pad1 : TBYTE;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xRRQueryProviderPropertyReply = 32;  
type
  PxRRConfigureProviderPropertyReq = ^TxRRConfigureProviderPropertyReq;
  TxRRConfigureProviderPropertyReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      provider : TRRProvider;
      _property : TAtom;
      pending : TBOOL;
      range : TBOOL;
      pad : TCARD16;
    end;

const
  sz_xRRConfigureProviderPropertyReq = 16;  
type
  PxRRChangeProviderPropertyReq = ^TxRRChangeProviderPropertyReq;
  TxRRChangeProviderPropertyReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      provider : TRRProvider;
      _property : TAtom;
      _type : TAtom;
      format : TCARD8;
      mode : TCARD8;
      pad : TCARD16;
      nUnits : TCARD32;
    end;

const
  sz_xRRChangeProviderPropertyReq = 24;  
type
  PxRRDeleteProviderPropertyReq = ^TxRRDeleteProviderPropertyReq;
  TxRRDeleteProviderPropertyReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      provider : TRRProvider;
      _property : TAtom;
    end;

const
  sz_xRRDeleteProviderPropertyReq = 12;  
type
  PxRRGetProviderPropertyReq = ^TxRRGetProviderPropertyReq;
  TxRRGetProviderPropertyReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      provider : TRRProvider;
      _property : TAtom;
      _type : TAtom;
      longOffset : TCARD32;
      longLength : TCARD32;
      delete : TBOOL;
      pending : TBOOL;
      pad1 : TCARD16;
    end;

const
  sz_xRRGetProviderPropertyReq = 28;  
type
  PxRRGetProviderPropertyReply = ^TxRRGetProviderPropertyReply;
  TxRRGetProviderPropertyReply = record
      _type : TBYTE;
      format : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      propertyType : TAtom;
      bytesAfter : TCARD32;
      nItems : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
    end;

const
  sz_xRRGetProviderPropertyReply = 32;  

type
  PxRRCreateLeaseReq = ^TxRRCreateLeaseReq;
  TxRRCreateLeaseReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
      lid : TRRLease;
      nCrtcs : TCARD16;
      nOutputs : TCARD16;
    end;

const
  sz_xRRCreateLeaseReq = 16;  
type
  PxRRCreateLeaseReply = ^TxRRCreateLeaseReply;
  TxRRCreateLeaseReply = record
      _type : TBYTE;
      nfd : TCARD8;
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
  sz_xRRCreateLeaseReply = 32;  
type
  PxRRFreeLeaseReq = ^TxRRFreeLeaseReq;
  TxRRFreeLeaseReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      lid : TRRLease;
      terminate : TBYTE;
      pad1 : TCARD8;
      pad2 : TCARD16;
    end;

const
  sz_xRRFreeLeaseReq = 12;  










type
  PxRRScreenChangeNotifyEvent = ^TxRRScreenChangeNotifyEvent;
  TxRRScreenChangeNotifyEvent = record
      _type : TCARD8;
      rotation : TCARD8;
      sequenceNumber : TCARD16;
      timestamp : TTime;
      configTimestamp : TTime;
      root : TWindow;
      window : TWindow;
      sizeID : TSizeID;
      subpixelOrder : TCARD16;
      widthInPixels : TCARD16;
      heightInPixels : TCARD16;
      widthInMillimeters : TCARD16;
      heightInMillimeters : TCARD16;
    end;

const
  sz_xRRScreenChangeNotifyEvent = 32;  










type
  PxRRCrtcChangeNotifyEvent = ^TxRRCrtcChangeNotifyEvent;
  TxRRCrtcChangeNotifyEvent = record
      _type : TCARD8;
      subCode : TCARD8;
      sequenceNumber : TCARD16;
      timestamp : TTime;
      window : TWindow;
      crtc : TRRCrtc;
      mode : TRRMode;
      rotation : TCARD16;
      pad1 : TCARD16;
      x : TINT16;
      y : TINT16;
      width : TCARD16;
      height : TCARD16;
    end;

const
  sz_xRRCrtcChangeNotifyEvent = 32;  











type
  PxRROutputChangeNotifyEvent = ^TxRROutputChangeNotifyEvent;
  TxRROutputChangeNotifyEvent = record
      _type : TCARD8;
      subCode : TCARD8;
      sequenceNumber : TCARD16;
      timestamp : TTime;
      configTimestamp : TTime;
      window : TWindow;
      output : TRROutput;
      crtc : TRRCrtc;
      mode : TRRMode;
      rotation : TCARD16;
      connection : TCARD8;
      subpixelOrder : TCARD8;
    end;

const
  sz_xRROutputChangeNotifyEvent = 32;  







type
  PxRROutputPropertyNotifyEvent = ^TxRROutputPropertyNotifyEvent;
  TxRROutputPropertyNotifyEvent = record
      _type : TCARD8;
      subCode : TCARD8;
      sequenceNumber : TCARD16;
      window : TWindow;
      output : TRROutput;
      atom : TAtom;
      timestamp : TTime;
      state : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD16;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xRROutputPropertyNotifyEvent = 32;  





type
  PxRRProviderChangeNotifyEvent = ^TxRRProviderChangeNotifyEvent;
  TxRRProviderChangeNotifyEvent = record
      _type : TCARD8;
      subCode : TCARD8;
      sequenceNumber : TCARD16;
      timestamp : TTime;
      window : TWindow;
      provider : TRRProvider;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xRRProviderChangeNotifyEvent = 32;  







type
  PxRRProviderPropertyNotifyEvent = ^TxRRProviderPropertyNotifyEvent;
  TxRRProviderPropertyNotifyEvent = record
      _type : TCARD8;
      subCode : TCARD8;
      sequenceNumber : TCARD16;
      window : TWindow;
      provider : TRRProvider;
      atom : TAtom;
      timestamp : TTime;
      state : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD16;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xRRProviderPropertyNotifyEvent = 32;  




type
  PxRRResourceChangeNotifyEvent = ^TxRRResourceChangeNotifyEvent;
  TxRRResourceChangeNotifyEvent = record
      _type : TCARD8;
      subCode : TCARD8;
      sequenceNumber : TCARD16;
      timestamp : TTime;
      window : TWindow;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xRRResourceChangeNotifyEvent = 32;  





type
  PxRRLeaseNotifyEvent = ^TxRRLeaseNotifyEvent;
  TxRRLeaseNotifyEvent = record
      _type : TCARD8;
      subCode : TCARD8;
      sequenceNumber : TCARD16;
      timestamp : TTime;
      window : TWindow;
      lease : TRRLease;
      created : TCARD8;
      pad0 : TCARD8;
      pad1 : TCARD16;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xRRLeaseNotifyEvent = 32;  
type
  PxRRGetPanningReq = ^TxRRGetPanningReq;
  TxRRGetPanningReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      crtc : TRRCrtc;
    end;

const
  sz_xRRGetPanningReq = 8;  
type
  PxRRGetPanningReply = ^TxRRGetPanningReply;
  TxRRGetPanningReply = record
      _type : TBYTE;
      status : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      timestamp : TTime;
      left : TCARD16;
      top : TCARD16;
      width : TCARD16;
      height : TCARD16;
      track_left : TCARD16;
      track_top : TCARD16;
      track_width : TCARD16;
      track_height : TCARD16;
      border_left : TINT16;
      border_top : TINT16;
      border_right : TINT16;
      border_bottom : TINT16;
    end;

const
  sz_xRRGetPanningReply = 36;  
type
  PxRRSetPanningReq = ^TxRRSetPanningReq;
  TxRRSetPanningReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      crtc : TRRCrtc;
      timestamp : TTime;
      left : TCARD16;
      top : TCARD16;
      width : TCARD16;
      height : TCARD16;
      track_left : TCARD16;
      track_top : TCARD16;
      track_width : TCARD16;
      track_height : TCARD16;
      border_left : TINT16;
      border_top : TINT16;
      border_right : TINT16;
      border_bottom : TINT16;
    end;

const
  sz_xRRSetPanningReq = 36;  
type
  PxRRSetPanningReply = ^TxRRSetPanningReply;
  TxRRSetPanningReply = record
      _type : TBYTE;
      status : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      newTimestamp : TTime;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xRRSetPanningReply = 32;  
type
  PxRRMonitorInfo = ^TxRRMonitorInfo;
  TxRRMonitorInfo = record
      name : TAtom;
      primary : TBOOL;
      automatic : TBOOL;
      noutput : TCARD16;
      x : TINT16;
      y : TINT16;
      width : TCARD16;
      height : TCARD16;
      widthInMillimeters : TCARD32;
      heightInMillimeters : TCARD32;
    end;

const
  sz_xRRMonitorInfo = 24;  
type
  PxRRGetMonitorsReq = ^TxRRGetMonitorsReq;
  TxRRGetMonitorsReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
      get_active : TBOOL;
      pad : TCARD8;
      pad2 : TCARD16;
    end;

const
  sz_xRRGetMonitorsReq = 12;  
type
  PxRRGetMonitorsReply = ^TxRRGetMonitorsReply;
  TxRRGetMonitorsReply = record
      _type : TBYTE;
      status : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      timestamp : TTime;
      nmonitors : TCARD32;
      noutputs : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
    end;

const
  sz_xRRGetMonitorsReply = 32;  
type
  PxRRSetMonitorReq = ^TxRRSetMonitorReq;
  TxRRSetMonitorReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
      monitor : TxRRMonitorInfo;
    end;

const
  sz_xRRSetMonitorReq = 32;  
type
  PxRRDeleteMonitorReq = ^TxRRDeleteMonitorReq;
  TxRRDeleteMonitorReq = record
      reqType : TCARD8;
      randrReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
      name : TAtom;
    end;

const
  sz_xRRDeleteMonitorReq = 12;  
{$undef RRLease}
{$undef RRModeFlags}
{$undef RRCrtc}
{$undef RRMode}
{$undef RROutput}
{$undef RRMode}
{$undef RRCrtc}
{$undef RRProvider}
{$undef Drawable}
{$undef Window}
{$undef Font}
{$undef Pixmap}
{$undef Cursor}
{$undef Colormap}
{$undef GContext}
{$undef Atom}
{$undef Time}
{$undef KeyCode}
{$undef KeySym}
{$undef Rotation}
{$undef SizeID}
{$undef SubpixelOrder}
{$endif}


implementation


end.
