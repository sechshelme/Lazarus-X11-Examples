
unit randrproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/randrproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/randrproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/randrproto.pp
}

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
    xScreenSizes = record
        widthInPixels : CARD16;
        heightInPixels : CARD16;
        widthInMillimeters : CARD16;
        heightInMillimeters : CARD16;
      end;

  const
    sz_xScreenSizes = 8;    


  type
    xRRQueryVersionReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        majorVersion : CARD32;
        minorVersion : CARD32;
      end;

  const
    sz_xRRQueryVersionReq = 12;    


  type
    xRRQueryVersionReply = record
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
    sz_xRRQueryVersionReply = 32;    

  type
    xRRGetScreenInfoReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        window : Window;
      end;

  const
    sz_xRRGetScreenInfoReq = 8;    



  type
    xRRGetScreenInfoReply = record
        _type : BYTE;
        setOfRotations : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        root : Window;
        timestamp : Time;
        configTimestamp : Time;
        nSizes : CARD16;
        sizeID : SizeID;
        rotation : Rotation;
        rate : CARD16;
        nrateEnts : CARD16;
        pad : CARD16;
      end;

  const
    sz_xRRGetScreenInfoReply = 32;    

  type
    xRR1_0SetScreenConfigReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        drawable : Drawable;
        timestamp : Time;
        configTimestamp : Time;
        sizeID : SizeID;
        rotation : Rotation;
      end;

  const
    sz_xRR1_0SetScreenConfigReq = 20;    

  type
    xRRSetScreenConfigReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        drawable : Drawable;
        timestamp : Time;
        configTimestamp : Time;
        sizeID : SizeID;
        rotation : Rotation;
        rate : CARD16;
        pad : CARD16;
      end;

  const
    sz_xRRSetScreenConfigReq = 24;    


  type
    xRRSetScreenConfigReply = record
        _type : BYTE;
        status : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        newTimestamp : Time;
        newConfigTimestamp : Time;
        root : Window;
        subpixelOrder : CARD16;
        pad4 : CARD16;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xRRSetScreenConfigReply = 32;    

  type
    xRRSelectInputReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        window : Window;
        enable : CARD16;
        pad2 : CARD16;
      end;

  const
    sz_xRRSelectInputReq = 12;    


  type
    _xRRModeInfo = record
        id : RRMode;
        width : CARD16;
        height : CARD16;
        dotClock : CARD32;
        hSyncStart : CARD16;
        hSyncEnd : CARD16;
        hTotal : CARD16;
        hSkew : CARD16;
        vSyncStart : CARD16;
        vSyncEnd : CARD16;
        vTotal : CARD16;
        nameLength : CARD16;
        modeFlags : RRModeFlags;
      end;
    xRRModeInfo = _xRRModeInfo;

  const
    sz_xRRModeInfo = 32;    

  type
    xRRGetScreenSizeRangeReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        window : Window;
      end;

  const
    sz_xRRGetScreenSizeRangeReq = 8;    


  type
    xRRGetScreenSizeRangeReply = record
        _type : BYTE;
        pad : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        minWidth : CARD16;
        minHeight : CARD16;
        maxWidth : CARD16;
        maxHeight : CARD16;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
      end;

  const
    sz_xRRGetScreenSizeRangeReply = 32;    

  type
    xRRSetScreenSizeReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        window : Window;
        width : CARD16;
        height : CARD16;
        widthInMillimeters : CARD32;
        heightInMillimeters : CARD32;
      end;

  const
    sz_xRRSetScreenSizeReq = 20;    

  type
    xRRGetScreenResourcesReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        window : Window;
      end;

  const
    sz_xRRGetScreenResourcesReq = 8;    

  type
    xRRGetScreenResourcesReply = record
        _type : BYTE;
        pad : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        timestamp : Time;
        configTimestamp : Time;
        nCrtcs : CARD16;
        nOutputs : CARD16;
        nModes : CARD16;
        nbytesNames : CARD16;
        pad1 : CARD32;
        pad2 : CARD32;
      end;

  const
    sz_xRRGetScreenResourcesReply = 32;    

  type
    xRRGetOutputInfoReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        output : RROutput;
        configTimestamp : Time;
      end;

  const
    sz_xRRGetOutputInfoReq = 12;    

  type
    xRRGetOutputInfoReply = record
        _type : BYTE;
        status : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        timestamp : Time;
        crtc : RRCrtc;
        mmWidth : CARD32;
        mmHeight : CARD32;
        connection : CARD8;
        subpixelOrder : CARD8;
        nCrtcs : CARD16;
        nModes : CARD16;
        nPreferred : CARD16;
        nClones : CARD16;
        nameLength : CARD16;
      end;

  const
    sz_xRRGetOutputInfoReply = 36;    

  type
    xRRListOutputPropertiesReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        output : RROutput;
      end;

  const
    sz_xRRListOutputPropertiesReq = 8;    

  type
    xRRListOutputPropertiesReply = record
        _type : BYTE;
        pad0 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        nAtoms : CARD16;
        pad1 : CARD16;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xRRListOutputPropertiesReply = 32;    

  type
    xRRQueryOutputPropertyReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        output : RROutput;
        _property : Atom;
      end;

  const
    sz_xRRQueryOutputPropertyReq = 12;    

  type
    xRRQueryOutputPropertyReply = record
        _type : BYTE;
        pad0 : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        pending : BOOL;
        range : BOOL;
        immutable : BOOL;
        pad1 : BYTE;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xRRQueryOutputPropertyReply = 32;    

  type
    xRRConfigureOutputPropertyReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        output : RROutput;
        _property : Atom;
        pending : BOOL;
        range : BOOL;
        pad : CARD16;
      end;

  const
    sz_xRRConfigureOutputPropertyReq = 16;    

  type
    xRRChangeOutputPropertyReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        output : RROutput;
        _property : Atom;
        _type : Atom;
        format : CARD8;
        mode : CARD8;
        pad : CARD16;
        nUnits : CARD32;
      end;

  const
    sz_xRRChangeOutputPropertyReq = 24;    

  type
    xRRDeleteOutputPropertyReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        output : RROutput;
        _property : Atom;
      end;

  const
    sz_xRRDeleteOutputPropertyReq = 12;    

  type
    xRRGetOutputPropertyReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        output : RROutput;
        _property : Atom;
        _type : Atom;
        longOffset : CARD32;
        longLength : CARD32;
        delete : BOOL;
        pending : BOOL;
        pad1 : CARD16;
      end;

  const
    sz_xRRGetOutputPropertyReq = 28;    

  type
    xRRGetOutputPropertyReply = record
        _type : BYTE;
        format : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        propertyType : Atom;
        bytesAfter : CARD32;
        nItems : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
      end;

  const
    sz_xRRGetOutputPropertyReply = 32;    

  type
    xRRCreateModeReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        window : Window;
        modeInfo : xRRModeInfo;
      end;

  const
    sz_xRRCreateModeReq = 40;    

  type
    xRRCreateModeReply = record
        _type : BYTE;
        pad0 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        mode : RRMode;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xRRCreateModeReply = 32;    

  type
    xRRDestroyModeReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        mode : RRMode;
      end;

  const
    sz_xRRDestroyModeReq = 8;    

  type
    xRRAddOutputModeReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        output : RROutput;
        mode : RRMode;
      end;

  const
    sz_xRRAddOutputModeReq = 12;    

  type
    xRRDeleteOutputModeReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        output : RROutput;
        mode : RRMode;
      end;

  const
    sz_xRRDeleteOutputModeReq = 12;    

  type
    xRRGetCrtcInfoReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        crtc : RRCrtc;
        configTimestamp : Time;
      end;

  const
    sz_xRRGetCrtcInfoReq = 12;    

  type
    xRRGetCrtcInfoReply = record
        _type : BYTE;
        status : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        timestamp : Time;
        x : INT16;
        y : INT16;
        width : CARD16;
        height : CARD16;
        mode : RRMode;
        rotation : Rotation;
        rotations : Rotation;
        nOutput : CARD16;
        nPossibleOutput : CARD16;
      end;

  const
    sz_xRRGetCrtcInfoReply = 32;    

  type
    xRRSetCrtcConfigReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        crtc : RRCrtc;
        timestamp : Time;
        configTimestamp : Time;
        x : INT16;
        y : INT16;
        mode : RRMode;
        rotation : Rotation;
        pad : CARD16;
      end;

  const
    sz_xRRSetCrtcConfigReq = 28;    

  type
    xRRSetCrtcConfigReply = record
        _type : BYTE;
        status : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        newTimestamp : Time;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xRRSetCrtcConfigReply = 32;    

  type
    xRRGetCrtcGammaSizeReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        crtc : RRCrtc;
      end;

  const
    sz_xRRGetCrtcGammaSizeReq = 8;    

  type
    xRRGetCrtcGammaSizeReply = record
        _type : BYTE;
        status : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        size : CARD16;
        pad1 : CARD16;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xRRGetCrtcGammaSizeReply = 32;    

  type
    xRRGetCrtcGammaReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        crtc : RRCrtc;
      end;

  const
    sz_xRRGetCrtcGammaReq = 8;    

  type
    xRRGetCrtcGammaReply = record
        _type : BYTE;
        status : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        size : CARD16;
        pad1 : CARD16;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xRRGetCrtcGammaReply = 32;    

  type
    xRRSetCrtcGammaReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        crtc : RRCrtc;
        size : CARD16;
        pad1 : CARD16;
      end;

  const
    sz_xRRSetCrtcGammaReq = 12;    


  type
    xRRGetScreenResourcesCurrentReq = xRRGetScreenResourcesReq;

  const
    sz_xRRGetScreenResourcesCurrentReq = sz_xRRGetScreenResourcesReq;    

  type
    xRRGetScreenResourcesCurrentReply = xRRGetScreenResourcesReply;

  const
    sz_xRRGetScreenResourcesCurrentReply = sz_xRRGetScreenResourcesReply;    


  type
    xRRSetCrtcTransformReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        crtc : RRCrtc;
        transform : xRenderTransform;
        nbytesFilter : CARD16;
        pad : CARD16;
      end;

  const
    sz_xRRSetCrtcTransformReq = 48;    

  type
    xRRGetCrtcTransformReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        crtc : RRCrtc;
      end;

  const
    sz_xRRGetCrtcTransformReq = 8;    





  type
    xRRGetCrtcTransformReply = record
        _type : BYTE;
        status : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        pendingTransform : xRenderTransform;
        hasTransforms : BYTE;
        pad0 : CARD8;
        pad1 : CARD16;
        currentTransform : xRenderTransform;
        pad2 : CARD32;
        pendingNbytesFilter : CARD16;
        pendingNparamsFilter : CARD16;
        currentNbytesFilter : CARD16;
        currentNparamsFilter : CARD16;
      end;

  const
    sz_xRRGetCrtcTransformReply = 96;    

  type
    xRRSetOutputPrimaryReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        window : Window;
        output : RROutput;
      end;

  const
    sz_xRRSetOutputPrimaryReq = 12;    

  type
    xRRGetOutputPrimaryReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        window : Window;
      end;

  const
    sz_xRRGetOutputPrimaryReq = 8;    

  type
    xRRGetOutputPrimaryReply = record
        _type : BYTE;
        pad : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        output : RROutput;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xRRGetOutputPrimaryReply = 32;    


  type
    xRRGetProvidersReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        window : Window;
      end;

  const
    sz_xRRGetProvidersReq = 8;    

  type
    xRRGetProvidersReply = record
        _type : BYTE;
        pad : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        timestamp : Time;
        nProviders : CARD16;
        pad1 : CARD16;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xRRGetProvidersReply = 32;    

  type
    xRRGetProviderInfoReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        provider : RRProvider;
        configTimestamp : Time;
      end;

  const
    sz_xRRGetProviderInfoReq = 12;    

  type
    xRRGetProviderInfoReply = record
        _type : BYTE;
        status : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        timestamp : Time;
        capabilities : CARD32;
        nCrtcs : CARD16;
        nOutputs : CARD16;
        nAssociatedProviders : CARD16;
        nameLength : CARD16;
        pad1 : CARD32;
        pad2 : CARD32;
      end;

  const
    sz_xRRGetProviderInfoReply = 32;    

  type
    xRRSetProviderOutputSourceReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        provider : RRProvider;
        source_provider : RRProvider;
        configTimestamp : Time;
      end;

  const
    sz_xRRSetProviderOutputSourceReq = 16;    

  type
    xRRSetProviderOffloadSinkReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        provider : RRProvider;
        sink_provider : RRProvider;
        configTimestamp : Time;
      end;

  const
    sz_xRRSetProviderOffloadSinkReq = 16;    

  type
    xRRListProviderPropertiesReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        provider : RRProvider;
      end;

  const
    sz_xRRListProviderPropertiesReq = 8;    

  type
    xRRListProviderPropertiesReply = record
        _type : BYTE;
        pad0 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        nAtoms : CARD16;
        pad1 : CARD16;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xRRListProviderPropertiesReply = 32;    

  type
    xRRQueryProviderPropertyReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        provider : RRProvider;
        _property : Atom;
      end;

  const
    sz_xRRQueryProviderPropertyReq = 12;    

  type
    xRRQueryProviderPropertyReply = record
        _type : BYTE;
        pad0 : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        pending : BOOL;
        range : BOOL;
        immutable : BOOL;
        pad1 : BYTE;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xRRQueryProviderPropertyReply = 32;    

  type
    xRRConfigureProviderPropertyReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        provider : RRProvider;
        _property : Atom;
        pending : BOOL;
        range : BOOL;
        pad : CARD16;
      end;

  const
    sz_xRRConfigureProviderPropertyReq = 16;    

  type
    xRRChangeProviderPropertyReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        provider : RRProvider;
        _property : Atom;
        _type : Atom;
        format : CARD8;
        mode : CARD8;
        pad : CARD16;
        nUnits : CARD32;
      end;

  const
    sz_xRRChangeProviderPropertyReq = 24;    

  type
    xRRDeleteProviderPropertyReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        provider : RRProvider;
        _property : Atom;
      end;

  const
    sz_xRRDeleteProviderPropertyReq = 12;    

  type
    xRRGetProviderPropertyReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        provider : RRProvider;
        _property : Atom;
        _type : Atom;
        longOffset : CARD32;
        longLength : CARD32;
        delete : BOOL;
        pending : BOOL;
        pad1 : CARD16;
      end;

  const
    sz_xRRGetProviderPropertyReq = 28;    

  type
    xRRGetProviderPropertyReply = record
        _type : BYTE;
        format : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        propertyType : Atom;
        bytesAfter : CARD32;
        nItems : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
      end;

  const
    sz_xRRGetProviderPropertyReply = 32;    


  type
    xRRCreateLeaseReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        window : Window;
        lid : RRLease;
        nCrtcs : CARD16;
        nOutputs : CARD16;
      end;

  const
    sz_xRRCreateLeaseReq = 16;    

  type
    xRRCreateLeaseReply = record
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
    sz_xRRCreateLeaseReply = 32;    

  type
    xRRFreeLeaseReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        lid : RRLease;
        terminate : BYTE;
        pad1 : CARD8;
        pad2 : CARD16;
      end;

  const
    sz_xRRFreeLeaseReq = 12;    











  type
    xRRScreenChangeNotifyEvent = record
        _type : CARD8;
        rotation : CARD8;
        sequenceNumber : CARD16;
        timestamp : Time;
        configTimestamp : Time;
        root : Window;
        window : Window;
        sizeID : SizeID;
        subpixelOrder : CARD16;
        widthInPixels : CARD16;
        heightInPixels : CARD16;
        widthInMillimeters : CARD16;
        heightInMillimeters : CARD16;
      end;

  const
    sz_xRRScreenChangeNotifyEvent = 32;    











  type
    xRRCrtcChangeNotifyEvent = record
        _type : CARD8;
        subCode : CARD8;
        sequenceNumber : CARD16;
        timestamp : Time;
        window : Window;
        crtc : RRCrtc;
        mode : RRMode;
        rotation : CARD16;
        pad1 : CARD16;
        x : INT16;
        y : INT16;
        width : CARD16;
        height : CARD16;
      end;

  const
    sz_xRRCrtcChangeNotifyEvent = 32;    












  type
    xRROutputChangeNotifyEvent = record
        _type : CARD8;
        subCode : CARD8;
        sequenceNumber : CARD16;
        timestamp : Time;
        configTimestamp : Time;
        window : Window;
        output : RROutput;
        crtc : RRCrtc;
        mode : RRMode;
        rotation : CARD16;
        connection : CARD8;
        subpixelOrder : CARD8;
      end;

  const
    sz_xRROutputChangeNotifyEvent = 32;    








  type
    xRROutputPropertyNotifyEvent = record
        _type : CARD8;
        subCode : CARD8;
        sequenceNumber : CARD16;
        window : Window;
        output : RROutput;
        atom : Atom;
        timestamp : Time;
        state : CARD8;
        pad1 : CARD8;
        pad2 : CARD16;
        pad3 : CARD32;
        pad4 : CARD32;
      end;

  const
    sz_xRROutputPropertyNotifyEvent = 32;    






  type
    xRRProviderChangeNotifyEvent = record
        _type : CARD8;
        subCode : CARD8;
        sequenceNumber : CARD16;
        timestamp : Time;
        window : Window;
        provider : RRProvider;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;

  const
    sz_xRRProviderChangeNotifyEvent = 32;    








  type
    xRRProviderPropertyNotifyEvent = record
        _type : CARD8;
        subCode : CARD8;
        sequenceNumber : CARD16;
        window : Window;
        provider : RRProvider;
        atom : Atom;
        timestamp : Time;
        state : CARD8;
        pad1 : CARD8;
        pad2 : CARD16;
        pad3 : CARD32;
        pad4 : CARD32;
      end;

  const
    sz_xRRProviderPropertyNotifyEvent = 32;    





  type
    xRRResourceChangeNotifyEvent = record
        _type : CARD8;
        subCode : CARD8;
        sequenceNumber : CARD16;
        timestamp : Time;
        window : Window;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xRRResourceChangeNotifyEvent = 32;    






  type
    xRRLeaseNotifyEvent = record
        _type : CARD8;
        subCode : CARD8;
        sequenceNumber : CARD16;
        timestamp : Time;
        window : Window;
        lease : RRLease;
        created : CARD8;
        pad0 : CARD8;
        pad1 : CARD16;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;

  const
    sz_xRRLeaseNotifyEvent = 32;    

  type
    xRRGetPanningReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        crtc : RRCrtc;
      end;

  const
    sz_xRRGetPanningReq = 8;    

  type
    xRRGetPanningReply = record
        _type : BYTE;
        status : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        timestamp : Time;
        left : CARD16;
        top : CARD16;
        width : CARD16;
        height : CARD16;
        track_left : CARD16;
        track_top : CARD16;
        track_width : CARD16;
        track_height : CARD16;
        border_left : INT16;
        border_top : INT16;
        border_right : INT16;
        border_bottom : INT16;
      end;

  const
    sz_xRRGetPanningReply = 36;    

  type
    xRRSetPanningReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        crtc : RRCrtc;
        timestamp : Time;
        left : CARD16;
        top : CARD16;
        width : CARD16;
        height : CARD16;
        track_left : CARD16;
        track_top : CARD16;
        track_width : CARD16;
        track_height : CARD16;
        border_left : INT16;
        border_top : INT16;
        border_right : INT16;
        border_bottom : INT16;
      end;

  const
    sz_xRRSetPanningReq = 36;    

  type
    xRRSetPanningReply = record
        _type : BYTE;
        status : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        newTimestamp : Time;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xRRSetPanningReply = 32;    

  type
    xRRMonitorInfo = record
        name : Atom;
        primary : BOOL;
        automatic : BOOL;
        noutput : CARD16;
        x : INT16;
        y : INT16;
        width : CARD16;
        height : CARD16;
        widthInMillimeters : CARD32;
        heightInMillimeters : CARD32;
      end;

  const
    sz_xRRMonitorInfo = 24;    

  type
    xRRGetMonitorsReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        window : Window;
        get_active : BOOL;
        pad : CARD8;
        pad2 : CARD16;
      end;

  const
    sz_xRRGetMonitorsReq = 12;    

  type
    xRRGetMonitorsReply = record
        _type : BYTE;
        status : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        timestamp : Time;
        nmonitors : CARD32;
        noutputs : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
      end;

  const
    sz_xRRGetMonitorsReply = 32;    

  type
    xRRSetMonitorReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        window : Window;
        monitor : xRRMonitorInfo;
      end;

  const
    sz_xRRSetMonitorReq = 32;    

  type
    xRRDeleteMonitorReq = record
        reqType : CARD8;
        randrReqType : CARD8;
        length : CARD16;
        window : Window;
        name : Atom;
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
