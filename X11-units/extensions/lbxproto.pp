
unit lbxproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/lbxproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/lbxproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/lbxproto.pp
}

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
    xLbxConnSetupPrefix = record
        success : BOOL;
        changeType : BOOL;
        majorVersion : CARD16;
        minorVersion : CARD16;
        length : CARD16;
        tag : CARD32;
      end;



    _LbxQueryVersion = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
      end;
    xLbxQueryVersionReq = _LbxQueryVersion;

  const
    sz_xLbxQueryVersionReq = 4;    




  type
    xLbxQueryVersionReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        majorVersion : CARD16;
        minorVersion : CARD16;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;

  const
    sz_xLbxQueryVersionReply = 32;    



  type
    _LbxStartProxy = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
      end;
    xLbxStartProxyReq = _LbxStartProxy;

  const
    sz_xLbxStartProxyReq = 4;    



  type
    _LbxStopProxy = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
      end;
    xLbxStopProxyReq = _LbxStopProxy;

  const
    sz_xLbxStopProxyReq = 4;    




  type
    _LbxSwitch = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
        client : CARD32;
      end;
    xLbxSwitchReq = _LbxSwitch;

  const
    sz_xLbxSwitchReq = 8;    




  type
    _LbxNewClient = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
        client : CARD32;
      end;
    xLbxNewClientReq = _LbxNewClient;

  const
    sz_xLbxNewClientReq = 8;    




  type
    _LbxCloseClient = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
        client : CARD32;
      end;
    xLbxCloseClientReq = _LbxCloseClient;

  const
    sz_xLbxCloseClientReq = 8;    



  type
    _LbxModifySequence = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
        adjust : CARD32;
      end;
    xLbxModifySequenceReq = _LbxModifySequence;

  const
    sz_xLbxModifySequenceReq = 8;    



  type
    _LbxAllowMotion = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
        num : CARD32;
      end;
    xLbxAllowMotionReq = _LbxAllowMotion;

  const
    sz_xLbxAllowMotionReq = 8;    



  type
    xLbxGrabCmapReq = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
        cmap : Colormap;
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
    xLbxGrabCmapReply = record
        _type : BYTE;
        flags : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xLbxGrabCmapReply = 32;    
    sz_xLbxGrabCmapReplyHdr = 8;    



  type
    xLbxReleaseCmapReq = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
        cmap : Colormap;
      end;

  const
    sz_xLbxReleaseCmapReq = 8;    



  type
    xLbxAllocColorReq = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
        cmap : Colormap;
        pixel : CARD32;
        red : CARD16;
        green : CARD16;
        blue : CARD16;
        pad : CARD16;
      end;

  const
    sz_xLbxAllocColorReq = 20;    



  type
    _LbxIncrementPixel = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
        cmap : CARD32;
        pixel : CARD32;
      end;
    xLbxIncrementPixelReq = _LbxIncrementPixel;

  const
    sz_xLbxIncrementPixelReq = 12;    






  type
    _LbxDelta = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
        diffs : CARD8;
        cindex : CARD8;
      end;
    xLbxDeltaReq = _LbxDelta;

  const
    sz_xLbxDeltaReq = 6;    



  type
    _LbxGetModifierMapping = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
      end;
    xLbxGetModifierMappingReq = _LbxGetModifierMapping;

  const
    sz_xLbxGetModifierMappingReq = 4;    


  type
    xLbxGetModifierMappingReply = record
        _type : BYTE;
        keyspermod : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        tag : CARD32;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;

  const
    sz_xLbxGetModifierMappingReply = 32;    



  type
    _LbxGetKeyboardMapping = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
        firstKeyCode : KeyCode;
        count : CARD8;
        pad1 : CARD16;
      end;
    xLbxGetKeyboardMappingReq = _LbxGetKeyboardMapping;

  const
    sz_xLbxGetKeyboardMappingReq = 8;    


  type
    xLbxGetKeyboardMappingReply = record
        _type : BYTE;
        keysperkeycode : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        tag : CARD32;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;

  const
    sz_xLbxGetKeyboardMappingReply = 32;    



  type
    _LbxQueryFont = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
        fid : CARD32;
      end;
    xLbxQueryFontReq = _LbxQueryFont;

  const
    sz_xLbxQueryFontReq = 8;    



  type
    _LbxInternAtoms = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
        num : CARD16;
      end;
    xLbxInternAtomsReq = _LbxInternAtoms;

  const
    sz_xLbxInternAtomsReq = 6;    


  type
    xLbxInternAtomsReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        atomsStart : CARD32;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;

  const
    sz_xLbxInternAtomsReply = 32;    
    sz_xLbxInternAtomsReplyHdr = 8;    




  type
    _LbxGetWinAttrAndGeom = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
        id : CARD32;
      end;
    xLbxGetWinAttrAndGeomReq = _LbxGetWinAttrAndGeom;

  const
    sz_xLbxGetWinAttrAndGeomReq = 8;    


{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

  type
    xLbxGetWinAttrAndGeomReply = record
        _type : BYTE;
        backingStore : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        visualID : VisualID;
        c_class : CARD16;
        _class : CARD16;
        bitGravity : CARD8;
        winGravity : CARD8;
        backingBitPlanes : CARD32;
        backingPixel : CARD32;
        saveUnder : BOOL;
        mapInstalled : BOOL;
        mapState : CARD8;
        override : BOOL;
        colormap : Colormap;
        allEventMasks : CARD32;
        yourEventMask : CARD32;
        doNotPropagateMask : CARD16;
        pad1 : CARD16;
        root : Window;
        x : INT16;
        y : INT16;
        width : CARD16;
        height : CARD16;
        borderWidth : CARD16;
        depth : CARD8;
        pad2 : CARD8;
      end;

  const
    sz_xLbxGetWinAttrAndGeomReply = 60;    



  type
    xLbxSyncReq = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
      end;

  const
    sz_xLbxSyncReq = 4;    


  type
    xLbxSyncReply = record
        _type : BYTE;
        pad0 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
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
    xLbxCharInfo = record
        metrics : CARD32;
      end;


{$ifndef WORD64}
{$endif}
{$ifndef WORD64}
{$endif}



  type
    xLbxFontInfo = record
        minBounds : xCharInfo;
        walign1 : CARD32;
        maxBounds : xCharInfo;
        walign2 : CARD32;
        minCharOrByte2 : CARD16;
        maxCharOrByte2 : CARD16;
        defaultChar : CARD16;
        nFontProps : CARD16;
        drawDirection : CARD8;
        minByte1 : CARD8;
        maxByte1 : CARD8;
        allCharsExist : BOOL;
        fontAscent : INT16;
        fontDescent : INT16;
        nCharInfos : CARD32;
      end;



    xLbxQueryFontReply = record
        _type : BYTE;
        compression : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        tag : CARD32;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;

  const
    sz_xLbxQueryFontReply = 32;    



  type
    _LbxChangeProperty = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
        window : Window;
        _property : Atom;
        _type : Atom;
        format : CARD8;
        mode : CARD8;
        pad : array[0..1] of BYTE;
        nUnits : CARD32;
      end;
    xLbxChangePropertyReq = _LbxChangeProperty;

  const
    sz_xLbxChangePropertyReq = 24;    


  type
    xLbxChangePropertyReply = record
        _type : BYTE;
        pad : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        tag : CARD32;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;

  const
    sz_xLbxChangePropertyReply = 32;    



  type
    _LbxGetProperty = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
        window : Window;
        _property : Atom;
        _type : Atom;
        delete : CARD8;
        pad : array[0..2] of BYTE;
        longOffset : CARD32;
        longLength : CARD32;
      end;
    xLbxGetPropertyReq = _LbxGetProperty;

  const
    sz_xLbxGetPropertyReq = 28;    


  type
    xLbxGetPropertyReply = record
        _type : BYTE;
        format : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        propertyType : Atom;
        bytesAfter : CARD32;
        nItems : CARD32;
        tag : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
      end;

  const
    sz_xLbxGetPropertyReply = 32;    




  type
    _LbxTagData = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
        tag : XID;
        real_length : CARD32;
      end;
    xLbxTagDataReq = _LbxTagData;

  const
    sz_xLbxTagDataReq = 12;    



  type
    _LbxInvalidateTag = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
        tag : CARD32;
      end;
    xLbxInvalidateTagReq = _LbxInvalidateTag;

  const
    sz_xLbxInvalidateTagReq = 8;    




  type
    _LbxPutImage = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
        compressionMethod : CARD8;
        cacheEnts : CARD8;
        bitPacked : CARD8;
      end;
    xLbxPutImageReq = _LbxPutImage;

  const
    sz_xLbxPutImageReq = 7;    



  type
    xLbxGetImageReq = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
        drawable : Drawable;
        x : INT16;
        y : INT16;
        width : CARD16;
        height : CARD16;
        planeMask : CARD32;
        format : CARD8;
        pad1 : CARD8;
        pad2 : CARD16;
      end;

  const
    sz_xLbxGetImageReq = 24;    


  type
    xLbxGetImageReply = record
        _type : BYTE;
        depth : CARD8;
        sequenceNumber : CARD16;
        lbxLength : CARD32;
        xLength : CARD32;
        visual : VisualID;
        compressionMethod : CARD8;
        pad1 : CARD8;
        pad2 : CARD16;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xLbxGetImageReply = 32;    

    GFX_CACHE_SIZE = 15;    

  function GFXdCacheEnt(e : longint) : e;  

  function GFXgCacheEnt(e : longint) : longint;  

  function GFXCacheEnts(d,g : longint) : longint;  

  const
    GFXCacheNone = $f;    


  type
    _LbxPolyPoint = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
        cacheEnts : CARD8;
        padBytes : CARD8;
      end;
    xLbxPolyPointReq = _LbxPolyPoint;

  const
    sz_xLbxPolyPointReq = 6;    

  type
    xLbxPolyLineReq = xLbxPolyPointReq;

    xLbxPolySegmentReq = xLbxPolyPointReq;

    xLbxPolyRectangleReq = xLbxPolyPointReq;

    xLbxPolyArcReq = xLbxPolyPointReq;

    xLbxPolyFillRectangleReq = xLbxPolyPointReq;

    xLbxPolyFillArcReq = xLbxPolyPointReq;

  const
    sz_xLbxPolyLineReq = sz_xLbxPolyPointReq;    
    sz_xLbxPolySegmentReq = sz_xLbxPolyPointReq;    
    sz_xLbxPolyRectangleReq = sz_xLbxPolyPointReq;    
    sz_xLbxPolyArcReq = sz_xLbxPolyPointReq;    
    sz_xLbxPolyFillRectangleReq = sz_xLbxPolyPointReq;    
    sz_xLbxPolyFillArc = sz_xLbxPolyPointReq;    


  type
    _LbxFillPoly = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
        cacheEnts : CARD8;
        shape : BYTE;
        padBytes : CARD8;
      end;
    xLbxFillPolyReq = _LbxFillPoly;

  const
    sz_xLbxFillPolyReq = 7;    





  type
    _LbxCopyArea = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
        srcCache : CARD8;
        cacheEnts : CARD8;
      end;
    xLbxCopyAreaReq = _LbxCopyArea;

  const
    sz_xLbxCopyAreaReq = 6;    





  type
    _LbxCopyPlane = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
        bitPlane : CARD32;
        srcCache : CARD8;
        cacheEnts : CARD8;
      end;
    xLbxCopyPlaneReq = _LbxCopyPlane;

  const
    sz_xLbxCopyPlaneReq = 10;    



  type
    _LbxPolyText = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
        cacheEnts : CARD8;
      end;
    xLbxPolyTextReq = _LbxPolyText;

  const
    sz_xLbxPolyTextReq = 5;    

  type
    xLbxPolyText8Req = xLbxPolyTextReq;

    xLbxPolyText16Req = xLbxPolyTextReq;

  const
    sz_xLbxPolyTextReq = 5;    
    sz_xLbxPolyText8Req = 5;    
    sz_xLbxPolyText16Req = 5;    



  type
    _LbxImageText = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
        cacheEnts : CARD8;
        nChars : CARD8;
      end;
    xLbxImageTextReq = _LbxImageText;

    xLbxImageText8Req = xLbxImageTextReq;

    xLbxImageText16Req = xLbxImageTextReq;

  const
    sz_xLbxImageTextReq = 6;    
    sz_xLbxImageText8Req = 6;    
    sz_xLbxImageText16Req = 6;    

  type
    xLbxDiffItem = record
        offset : CARD8;
        diff : CARD8;
      end;

  const
    sz_xLbxDiffItem = 2;    


  type
    xLbxStartReply = record
        _type : BYTE;
        nOpts : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        optDataStart : CARD32;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;

  const
    sz_xLbxStartReply = 32;    
    sz_xLbxStartReplyHdr = 8;    



  type
    _LbxQueryExtension = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
        nbytes : CARD32;
      end;
    xLbxQueryExtensionReq = _LbxQueryExtension;

  const
    sz_xLbxQueryExtensionReq = 8;    



  type
    _LbxQueryExtensionReply = record
        _type : BYTE;
        numReqs : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        present : BOOL;
        major_opcode : CARD8;
        first_event : CARD8;
        first_error : CARD8;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;
    xLbxQueryExtensionReply = _LbxQueryExtensionReply;

  const
    sz_xLbxQueryExtensionReply = 32;    



  type
    _LbxBeginLargeRequest = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
        largeReqLength : CARD32;
      end;
    xLbxBeginLargeRequestReq = _LbxBeginLargeRequest;

  const
    sz_BeginLargeRequestReq = 8;    




  type
    _LbxLargeRequestData = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
      end;
    xLbxLargeRequestDataReq = _LbxLargeRequestData;

  const
    sz_LargeRequestDataReq = 4;    



  type
    _LbxEndLargeRequest = record
        reqType : CARD8;
        lbxReqType : CARD8;
        length : CARD16;
      end;
    xLbxEndLargeRequestReq = _LbxEndLargeRequest;

  const
    sz_EndLargeRequestReq = 4;    



  type
    _LbxSwitchEvent = record
        _type : BYTE;
        lbxType : BYTE;
        pad : CARD16;
        client : CARD32;
      end;
    xLbxSwitchEvent = _LbxSwitchEvent;

  const
    sz_xLbxSwitchEvent = 8;    



  type
    _LbxCloseEvent = record
        _type : BYTE;
        lbxType : BYTE;
        sequenceNumber : CARD16;
        client : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;
    xLbxCloseEvent = _LbxCloseEvent;

  const
    sz_xLbxCloseEvent = 32;    



  type
    _LbxInvalidateTagEvent = record
        _type : BYTE;
        lbxType : BYTE;
        sequenceNumber : CARD16;
        tag : CARD32;
        tagType : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;
    xLbxInvalidateTagEvent = _LbxInvalidateTagEvent;

  const
    sz_xLbxInvalidateTagEvent = 32;    



  type
    _LbxSendTagDataEvent = record
        _type : BYTE;
        lbxType : BYTE;
        sequenceNumber : CARD16;
        tag : CARD32;
        tagType : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;
    xLbxSendTagDataEvent = _LbxSendTagDataEvent;

  const
    sz_xLbxSendTagDataEvent = 32;    



  type
    _LbxListenToOneEvent = record
        _type : BYTE;
        lbxType : BYTE;
        sequenceNumber : CARD16;
        client : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;
    xLbxListenToOneEvent = _LbxListenToOneEvent;

  const
    sz_xLbxListenToOneEvent = 32;    



  type
    _LbxListenToAllEvent = record
        _type : BYTE;
        lbxType : BYTE;
        sequenceNumber : CARD16;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
        pad7 : CARD32;
      end;
    xLbxListenToAllEvent = _LbxListenToAllEvent;

  const
    sz_xLbxListenToOneEvent = 32;    



  type
    _LbxReleaseCmapEvent = record
        _type : BYTE;
        lbxType : BYTE;
        sequenceNumber : CARD16;
        colormap : Colormap;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;
    xLbxReleaseCmapEvent = _LbxReleaseCmapEvent;

  const
    sz_xLbxReleaseCmapEvent = 32;    



  type
    _LbxFreeCellsEvent = record
        _type : BYTE;
        lbxType : BYTE;
        sequenceNumber : CARD16;
        colormap : Colormap;
        pixelStart : CARD32;
        pixelEnd : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;
    xLbxFreeCellsEvent = _LbxFreeCellsEvent;

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
    LBX_MASK_BITS:=dword(val(@((1 shl n)-1)));
  end;

  function GFXdCacheEnt(e : longint) : e;
  begin
    GFXdCacheEnt:=e(@($f));
  end;

  function GFXgCacheEnt(e : longint) : longint;
  begin
    GFXgCacheEnt:=(e shr 4) and $f;
  end;

  function GFXCacheEnts(d,g : longint) : longint;
  begin
    GFXCacheEnts:=(d(@($f))) or ((g(@($f))) shl 4);
  end;


end.
