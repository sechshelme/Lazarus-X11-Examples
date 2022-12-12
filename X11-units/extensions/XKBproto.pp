
unit XKBproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/XKBproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/XKBproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/XKBproto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XKBPROTO_H_}
{$define _XKBPROTO_H_}  
{$include <X11/Xmd.h>}
{$include <X11/Xfuncproto.h>}
{$include <X11/extensions/XKB.h>}

  const
    Window = CARD32;    
    Atom = CARD32;    
    Time = CARD32;    
    KeyCode = CARD8;    
    KeySym = CARD32;    

  function XkbPaddedSize(n : longint) : longint;  



  type
    _xkbUseExtension = record
        reqType : CARD8;
        xkbReqType : CARD8;
        length : CARD16;
        wantedMajor : CARD16;
        wantedMinor : CARD16;
      end;
    xkbUseExtensionReq = _xkbUseExtension;

  const
    sz_xkbUseExtensionReq = 8;    


  type
    _xkbUseExtensionReply = record
        _type : BYTE;
        supported : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        serverMajor : CARD16;
        serverMinor : CARD16;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;
    xkbUseExtensionReply = _xkbUseExtensionReply;

  const
    sz_xkbUseExtensionReply = 32;    


  type
    _xkbSelectEvents = record
        reqType : CARD8;
        xkbReqType : CARD8;
        length : CARD16;
        deviceSpec : CARD16;
        affectWhich : CARD16;
        clear : CARD16;
        selectAll : CARD16;
        affectMap : CARD16;
        map : CARD16;
      end;
    xkbSelectEventsReq = _xkbSelectEvents;

  const
    sz_xkbSelectEventsReq = 16;    


  type
    _xkbBell = record
        reqType : CARD8;
        xkbReqType : CARD8;
        length : CARD16;
        deviceSpec : CARD16;
        bellClass : CARD16;
        bellID : CARD16;
        percent : INT8;
        forceSound : BOOL;
        eventOnly : BOOL;
        pad1 : CARD8;
        pitch : INT16;
        duration : INT16;
        pad2 : CARD16;
        name : Atom;
        window : Window;
      end;
    xkbBellReq = _xkbBell;

  const
    sz_xkbBellReq = 28;    


  type
    _xkbGetState = record
        reqType : CARD8;
        xkbReqType : CARD8;
        length : CARD16;
        deviceSpec : CARD16;
        pad : CARD16;
      end;
    xkbGetStateReq = _xkbGetState;

  const
    sz_xkbGetStateReq = 8;    

  type
    _xkbGetStateReply = record
        _type : BYTE;
        deviceID : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        mods : CARD8;
        baseMods : CARD8;
        latchedMods : CARD8;
        lockedMods : CARD8;
        group : CARD8;
        lockedGroup : CARD8;
        baseGroup : INT16;
        latchedGroup : INT16;
        compatState : CARD8;
        grabMods : CARD8;
        compatGrabMods : CARD8;
        lookupMods : CARD8;
        compatLookupMods : CARD8;
        pad1 : CARD8;
        ptrBtnState : CARD16;
        pad2 : CARD16;
        pad3 : CARD32;
      end;
    xkbGetStateReply = _xkbGetStateReply;

  const
    sz_xkbGetStateReply = 32;    


  type
    _xkbLatchLockState = record
        reqType : CARD8;
        xkbReqType : CARD8;
        length : CARD16;
        deviceSpec : CARD16;
        affectModLocks : CARD8;
        modLocks : CARD8;
        lockGroup : BOOL;
        groupLock : CARD8;
        affectModLatches : CARD8;
        modLatches : CARD8;
        pad : CARD8;
        latchGroup : BOOL;
        groupLatch : INT16;
      end;
    xkbLatchLockStateReq = _xkbLatchLockState;

  const
    sz_xkbLatchLockStateReq = 16;    


  type
    _xkbGetControls = record
        reqType : CARD8;
        xkbReqType : CARD8;
        length : CARD16;
        deviceSpec : CARD16;
        pad : CARD16;
      end;
    xkbGetControlsReq = _xkbGetControls;

  const
    sz_xkbGetControlsReq = 8;    


  type
    _xkbGetControlsReply = record
        _type : BYTE;
        deviceID : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        mkDfltBtn : CARD8;
        numGroups : CARD8;
        groupsWrap : CARD8;
        internalMods : CARD8;
        ignoreLockMods : CARD8;
        internalRealMods : CARD8;
        ignoreLockRealMods : CARD8;
        pad1 : CARD8;
        internalVMods : CARD16;
        ignoreLockVMods : CARD16;
        repeatDelay : CARD16;
        repeatInterval : CARD16;
        slowKeysDelay : CARD16;
        debounceDelay : CARD16;
        mkDelay : CARD16;
        mkInterval : CARD16;
        mkTimeToMax : CARD16;
        mkMaxSpeed : CARD16;
        mkCurve : INT16;
        axOptions : CARD16;
        axTimeout : CARD16;
        axtOptsMask : CARD16;
        axtOptsValues : CARD16;
        pad2 : CARD16;
        axtCtrlsMask : CARD32;
        axtCtrlsValues : CARD32;
        enabledCtrls : CARD32;
        perKeyRepeat : array[0..(XkbPerKeyBitArraySize)-1] of BYTE;
      end;
    xkbGetControlsReply = _xkbGetControlsReply;

  const
    sz_xkbGetControlsReply = 92;    


  type
    _xkbSetControls = record
        reqType : CARD8;
        xkbReqType : CARD8;
        length : CARD16;
        deviceSpec : CARD16;
        affectInternalMods : CARD8;
        internalMods : CARD8;
        affectIgnoreLockMods : CARD8;
        ignoreLockMods : CARD8;
        affectInternalVMods : CARD16;
        internalVMods : CARD16;
        affectIgnoreLockVMods : CARD16;
        ignoreLockVMods : CARD16;
        mkDfltBtn : CARD8;
        groupsWrap : CARD8;
        axOptions : CARD16;
        pad1 : CARD16;
        affectEnabledCtrls : CARD32;
        enabledCtrls : CARD32;
        changeCtrls : CARD32;
        repeatDelay : CARD16;
        repeatInterval : CARD16;
        slowKeysDelay : CARD16;
        debounceDelay : CARD16;
        mkDelay : CARD16;
        mkInterval : CARD16;
        mkTimeToMax : CARD16;
        mkMaxSpeed : CARD16;
        mkCurve : INT16;
        axTimeout : CARD16;
        axtCtrlsMask : CARD32;
        axtCtrlsValues : CARD32;
        axtOptsMask : CARD16;
        axtOptsValues : CARD16;
        perKeyRepeat : array[0..(XkbPerKeyBitArraySize)-1] of BYTE;
      end;
    xkbSetControlsReq = _xkbSetControls;

  const
    sz_xkbSetControlsReq = 100;    

  type
    _xkbKTMapEntryWireDesc = record
        active : BOOL;
        mask : CARD8;
        level : CARD8;
        realMods : CARD8;
        virtualMods : CARD16;
        pad : CARD16;
      end;
    xkbKTMapEntryWireDesc = _xkbKTMapEntryWireDesc;

  const
    sz_xkbKTMapEntryWireDesc = 8;    

  type
    _xkbKTSetMapEntryWireDesc = record
        level : CARD8;
        realMods : CARD8;
        virtualMods : CARD16;
      end;
    xkbKTSetMapEntryWireDesc = _xkbKTSetMapEntryWireDesc;

  const
    sz_xkbKTSetMapEntryWireDesc = 4;    


  type
    _xkbModsWireDesc = record
        mask : CARD8;
        realMods : CARD8;
        virtualMods : CARD16;
      end;
    xkbModsWireDesc = _xkbModsWireDesc;

  const
    sz_xkbModsWireDesc = 4;    

  type
    _xkbKeyTypeWireDesc = record
        mask : CARD8;
        realMods : CARD8;
        virtualMods : CARD16;
        numLevels : CARD8;
        nMapEntries : CARD8;
        preserve : BOOL;
        pad : CARD8;
      end;
    xkbKeyTypeWireDesc = _xkbKeyTypeWireDesc;

  const
    sz_xkbKeyTypeWireDesc = 8;    

  type
    _xkbSymMapWireDesc = record
        ktIndex : array[0..(XkbNumKbdGroups)-1] of CARD8;
        groupInfo : CARD8;
        width : CARD8;
        nSyms : CARD16;
      end;
    xkbSymMapWireDesc = _xkbSymMapWireDesc;

  const
    sz_xkbSymMapWireDesc = 8;    

  type
    _xkbVModMapWireDesc = record
        key : KeyCode;
        pad : CARD8;
        vmods : CARD16;
      end;
    xkbVModMapWireDesc = _xkbVModMapWireDesc;

  const
    sz_xkbVModMapWireDesc = 4;    

  type
    _xkbBehaviorWireDesc = record
        key : CARD8;
        _type : CARD8;
        data : CARD8;
        pad : CARD8;
      end;
    xkbBehaviorWireDesc = _xkbBehaviorWireDesc;

  const
    sz_xkbBehaviorWireDesc = 4;    

  type
    _xkbActionWireDesc = record
        _type : CARD8;
        data : array[0..6] of CARD8;
      end;
    xkbActionWireDesc = _xkbActionWireDesc;

  const
    sz_xkbActionWireDesc = 8;    


  type
    _xkbGetMap = record
        reqType : CARD8;
        xkbReqType : CARD8;
        length : CARD16;
        deviceSpec : CARD16;
        full : CARD16;
        partial : CARD16;
        firstType : CARD8;
        nTypes : CARD8;
        firstKeySym : KeyCode;
        nKeySyms : CARD8;
        firstKeyAct : KeyCode;
        nKeyActs : CARD8;
        firstKeyBehavior : KeyCode;
        nKeyBehaviors : CARD8;
        virtualMods : CARD16;
        firstKeyExplicit : KeyCode;
        nKeyExplicit : CARD8;
        firstModMapKey : KeyCode;
        nModMapKeys : CARD8;
        firstVModMapKey : KeyCode;
        nVModMapKeys : CARD8;
        pad1 : CARD16;
      end;
    xkbGetMapReq = _xkbGetMap;

  const
    sz_xkbGetMapReq = 28;    


  type
    _xkbGetMapReply = record
        _type : CARD8;
        deviceID : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        pad1 : CARD16;
        minKeyCode : KeyCode;
        maxKeyCode : KeyCode;
        present : CARD16;
        firstType : CARD8;
        nTypes : CARD8;
        totalTypes : CARD8;
        firstKeySym : KeyCode;
        totalSyms : CARD16;
        nKeySyms : CARD8;
        firstKeyAct : KeyCode;
        totalActs : CARD16;
        nKeyActs : CARD8;
        firstKeyBehavior : KeyCode;
        nKeyBehaviors : CARD8;
        totalKeyBehaviors : CARD8;
        firstKeyExplicit : KeyCode;
        nKeyExplicit : CARD8;
        totalKeyExplicit : CARD8;
        firstModMapKey : KeyCode;
        nModMapKeys : CARD8;
        totalModMapKeys : CARD8;
        firstVModMapKey : KeyCode;
        nVModMapKeys : CARD8;
        totalVModMapKeys : CARD8;
        pad2 : CARD8;
        virtualMods : CARD16;
      end;
    xkbGetMapReply = _xkbGetMapReply;

  const
    sz_xkbGetMapReply = 40;    
    XkbSetMapResizeTypes = 1 shl 0;    
    XkbSetMapRecomputeActions = 1 shl 1;    
    XkbSetMapAllFlags = $3;    


  type
    _xkbSetMap = record
        reqType : CARD8;
        xkbReqType : CARD8;
        length : CARD16;
        deviceSpec : CARD16;
        present : CARD16;
        flags : CARD16;
        minKeyCode : KeyCode;
        maxKeyCode : KeyCode;
        firstType : CARD8;
        nTypes : CARD8;
        firstKeySym : KeyCode;
        nKeySyms : CARD8;
        totalSyms : CARD16;
        firstKeyAct : KeyCode;
        nKeyActs : CARD8;
        totalActs : CARD16;
        firstKeyBehavior : KeyCode;
        nKeyBehaviors : CARD8;
        totalKeyBehaviors : CARD8;
        firstKeyExplicit : KeyCode;
        nKeyExplicit : CARD8;
        totalKeyExplicit : CARD8;
        firstModMapKey : KeyCode;
        nModMapKeys : CARD8;
        totalModMapKeys : CARD8;
        firstVModMapKey : KeyCode;
        nVModMapKeys : CARD8;
        totalVModMapKeys : CARD8;
        virtualMods : CARD16;
      end;
    xkbSetMapReq = _xkbSetMap;

  const
    sz_xkbSetMapReq = 36;    

  type
    _xkbSymInterpretWireDesc = record
        sym : CARD32;
        mods : CARD8;
        match : CARD8;
        virtualMod : CARD8;
        flags : CARD8;
        act : xkbActionWireDesc;
      end;
    xkbSymInterpretWireDesc = _xkbSymInterpretWireDesc;

  const
    sz_xkbSymInterpretWireDesc = 16;    


  type
    _xkbGetCompatMap = record
        reqType : CARD8;
        xkbReqType : CARD8;
        length : CARD16;
        deviceSpec : CARD16;
        groups : CARD8;
        getAllSI : BOOL;
        firstSI : CARD16;
        nSI : CARD16;
      end;
    xkbGetCompatMapReq = _xkbGetCompatMap;

  const
    sz_xkbGetCompatMapReq = 12;    


  type
    _xkbGetCompatMapReply = record
        _type : CARD8;
        deviceID : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        groups : CARD8;
        pad1 : CARD8;
        firstSI : CARD16;
        nSI : CARD16;
        nTotalSI : CARD16;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;
    xkbGetCompatMapReply = _xkbGetCompatMapReply;

  const
    sz_xkbGetCompatMapReply = 32;    


  type
    _xkbSetCompatMap = record
        reqType : CARD8;
        xkbReqType : CARD8;
        length : CARD16;
        deviceSpec : CARD16;
        pad1 : CARD8;
        recomputeActions : BOOL;
        truncateSI : BOOL;
        groups : CARD8;
        firstSI : CARD16;
        nSI : CARD16;
        pad2 : CARD16;
      end;
    xkbSetCompatMapReq = _xkbSetCompatMap;

  const
    sz_xkbSetCompatMapReq = 16;    


  type
    _xkbGetIndicatorState = record
        reqType : CARD8;
        xkbReqType : CARD8;
        length : CARD16;
        deviceSpec : CARD16;
        pad1 : CARD16;
      end;
    xkbGetIndicatorStateReq = _xkbGetIndicatorState;

  const
    sz_xkbGetIndicatorStateReq = 8;    


  type
    _xkbGetIndicatorStateReply = record
        _type : CARD8;
        deviceID : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        state : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;
    xkbGetIndicatorStateReply = _xkbGetIndicatorStateReply;

  const
    sz_xkbGetIndicatorStateReply = 32;    


  type
    _xkbGetIndicatorMap = record
        reqType : CARD8;
        xkbReqType : CARD8;
        length : CARD16;
        deviceSpec : CARD16;
        pad : CARD16;
        which : CARD32;
      end;
    xkbGetIndicatorMapReq = _xkbGetIndicatorMap;

  const
    sz_xkbGetIndicatorMapReq = 12;    


  type
    _xkbGetIndicatorMapReply = record
        _type : CARD8;
        deviceID : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        which : CARD32;
        realIndicators : CARD32;
        nIndicators : CARD8;
        pad1 : CARD8;
        pad2 : CARD16;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;
    xkbGetIndicatorMapReply = _xkbGetIndicatorMapReply;

  const
    sz_xkbGetIndicatorMapReply = 32;    

  type
    _xkbIndicatorMapWireDesc = record
        flags : CARD8;
        whichGroups : CARD8;
        groups : CARD8;
        whichMods : CARD8;
        mods : CARD8;
        realMods : CARD8;
        virtualMods : CARD16;
        ctrls : CARD32;
      end;
    xkbIndicatorMapWireDesc = _xkbIndicatorMapWireDesc;

  const
    sz_xkbIndicatorMapWireDesc = 12;    


  type
    _xkbSetIndicatorMap = record
        reqType : CARD8;
        xkbReqType : CARD8;
        length : CARD16;
        deviceSpec : CARD16;
        pad1 : CARD16;
        which : CARD32;
      end;
    xkbSetIndicatorMapReq = _xkbSetIndicatorMap;

  const
    sz_xkbSetIndicatorMapReq = 12;    


  type
    _xkbGetNamedIndicator = record
        reqType : CARD8;
        xkbReqType : CARD8;
        length : CARD16;
        deviceSpec : CARD16;
        ledClass : CARD16;
        ledID : CARD16;
        pad1 : CARD16;
        indicator : Atom;
      end;
    xkbGetNamedIndicatorReq = _xkbGetNamedIndicator;

  const
    sz_xkbGetNamedIndicatorReq = 16;    

  type
    _xkbGetNamedIndicatorReply = record
        _type : BYTE;
        deviceID : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        indicator : Atom;
        found : BOOL;
        on : BOOL;
        realIndicator : BOOL;
        ndx : CARD8;
        flags : CARD8;
        whichGroups : CARD8;
        groups : CARD8;
        whichMods : CARD8;
        mods : CARD8;
        realMods : CARD8;
        virtualMods : CARD16;
        ctrls : CARD32;
        supported : BOOL;
        pad1 : CARD8;
        pad2 : CARD16;
      end;
    xkbGetNamedIndicatorReply = _xkbGetNamedIndicatorReply;

  const
    sz_xkbGetNamedIndicatorReply = 32;    


  type
    _xkbSetNamedIndicator = record
        reqType : CARD8;
        xkbReqType : CARD8;
        length : CARD16;
        deviceSpec : CARD16;
        ledClass : CARD16;
        ledID : CARD16;
        pad1 : CARD16;
        indicator : Atom;
        setState : BOOL;
        on : BOOL;
        setMap : BOOL;
        createMap : BOOL;
        pad2 : CARD8;
        flags : CARD8;
        whichGroups : CARD8;
        groups : CARD8;
        whichMods : CARD8;
        realMods : CARD8;
        virtualMods : CARD16;
        ctrls : CARD32;
      end;
    xkbSetNamedIndicatorReq = _xkbSetNamedIndicator;

  const
    sz_xkbSetNamedIndicatorReq = 32;    


  type
    _xkbGetNames = record
        reqType : CARD8;
        xkbReqType : CARD8;
        length : CARD16;
        deviceSpec : CARD16;
        pad : CARD16;
        which : CARD32;
      end;
    xkbGetNamesReq = _xkbGetNames;

  const
    sz_xkbGetNamesReq = 12;    

  type
    _xkbGetNamesReply = record
        _type : BYTE;
        deviceID : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        which : CARD32;
        minKeyCode : KeyCode;
        maxKeyCode : KeyCode;
        nTypes : CARD8;
        groupNames : CARD8;
        virtualMods : CARD16;
        firstKey : KeyCode;
        nKeys : CARD8;
        indicators : CARD32;
        nRadioGroups : CARD8;
        nKeyAliases : CARD8;
        nKTLevels : CARD16;
        pad3 : CARD32;
      end;
    xkbGetNamesReply = _xkbGetNamesReply;

  const
    sz_xkbGetNamesReply = 32;    


  type
    _xkbSetNames = record
        reqType : CARD8;
        xkbReqType : CARD8;
        length : CARD16;
        deviceSpec : CARD16;
        virtualMods : CARD16;
        which : CARD32;
        firstType : CARD8;
        nTypes : CARD8;
        firstKTLevel : CARD8;
        nKTLevels : CARD8;
        indicators : CARD32;
        groupNames : CARD8;
        nRadioGroups : CARD8;
        firstKey : KeyCode;
        nKeys : CARD8;
        nKeyAliases : CARD8;
        pad1 : CARD8;
        totalKTLevelNames : CARD16;
      end;
    xkbSetNamesReq = _xkbSetNames;

  const
    sz_xkbSetNamesReq = 28;    

  type
    _xkbPointWireDesc = record
        x : INT16;
        y : INT16;
      end;
    xkbPointWireDesc = _xkbPointWireDesc;

  const
    sz_xkbPointWireDesc = 4;    

  type
    _xkbOutlineWireDesc = record
        nPoints : CARD8;
        cornerRadius : CARD8;
        pad : CARD16;
      end;
    xkbOutlineWireDesc = _xkbOutlineWireDesc;

  const
    sz_xkbOutlineWireDesc = 4;    

  type
    _xkbShapeWireDesc = record
        name : Atom;
        nOutlines : CARD8;
        primaryNdx : CARD8;
        approxNdx : CARD8;
        pad : CARD8;
      end;
    xkbShapeWireDesc = _xkbShapeWireDesc;

  const
    sz_xkbShapeWireDesc = 8;    

  type
    _xkbSectionWireDesc = record
        name : Atom;
        top : INT16;
        left : INT16;
        width : CARD16;
        height : CARD16;
        angle : INT16;
        priority : CARD8;
        nRows : CARD8;
        nDoodads : CARD8;
        nOverlays : CARD8;
        pad : CARD16;
      end;
    xkbSectionWireDesc = _xkbSectionWireDesc;

  const
    sz_xkbSectionWireDesc = 20;    

  type
    _xkbRowWireDesc = record
        top : INT16;
        left : INT16;
        nKeys : CARD8;
        vertical : BOOL;
        pad : CARD16;
      end;
    xkbRowWireDesc = _xkbRowWireDesc;

  const
    sz_xkbRowWireDesc = 8;    
(* error 
    CARD8	name[XkbKeyNameLength]	_X_NONSTRING;
 in declarator_list *)

  type
    _xkbKeyWireDesc = record
        XkbKeyNameLength : CARD8;
        gap : INT16;
        shapeNdx : CARD8;
        colorNdx : CARD8;
      end;
    xkbKeyWireDesc = _xkbKeyWireDesc;

  const
    sz_xkbKeyWireDesc = 8;    

  type
    _xkbOverlayWireDesc = record
        name : Atom;
        nRows : CARD8;
        pad1 : CARD8;
        pad2 : CARD16;
      end;
    xkbOverlayWireDesc = _xkbOverlayWireDesc;

  const
    sz_xkbOverlayWireDesc = 8;    

  type
    _xkbOverlayRowWireDesc = record
        rowUnder : CARD8;
        nKeys : CARD8;
        pad1 : CARD16;
      end;
    xkbOverlayRowWireDesc = _xkbOverlayRowWireDesc;

  const
    sz_xkbOverlayRowWireDesc = 4;    
(* error 
   CARD8	over[XkbKeyNameLength]	_X_NONSTRING;
 in declarator_list *)
(* error 
   CARD8	under[XkbKeyNameLength]	_X_NONSTRING;
 in declarator_list *)

  type
    _xkbOverlayKeyWireDesc = record
        XkbKeyNameLength : CARD8;
        XkbKeyNameLength : CARD8;
      end;
    xkbOverlayKeyWireDesc = _xkbOverlayKeyWireDesc;

  const
    sz_xkbOverlayKeyWireDesc = 8;    

  type
    _xkbShapeDoodadWireDesc = record
        name : Atom;
        _type : CARD8;
        priority : CARD8;
        top : INT16;
        left : INT16;
        angle : INT16;
        colorNdx : CARD8;
        shapeNdx : CARD8;
        pad1 : CARD16;
        pad2 : CARD32;
      end;
    xkbShapeDoodadWireDesc = _xkbShapeDoodadWireDesc;

  const
    sz_xkbShapeDoodadWireDesc = 20;    

  type
    _xkbTextDoodadWireDesc = record
        name : Atom;
        _type : CARD8;
        priority : CARD8;
        top : INT16;
        left : INT16;
        angle : INT16;
        width : CARD16;
        height : CARD16;
        colorNdx : CARD8;
        pad1 : CARD8;
        pad2 : CARD16;
      end;
    xkbTextDoodadWireDesc = _xkbTextDoodadWireDesc;

  const
    sz_xkbTextDoodadWireDesc = 20;    

  type
    _xkbIndicatorDoodadWireDesc = record
        name : Atom;
        _type : CARD8;
        priority : CARD8;
        top : INT16;
        left : INT16;
        angle : INT16;
        shapeNdx : CARD8;
        onColorNdx : CARD8;
        offColorNdx : CARD8;
        pad1 : CARD8;
        pad2 : CARD32;
      end;
    xkbIndicatorDoodadWireDesc = _xkbIndicatorDoodadWireDesc;

  const
    sz_xkbIndicatorDoodadWireDesc = 20;    

  type
    _xkbLogoDoodadWireDesc = record
        name : Atom;
        _type : CARD8;
        priority : CARD8;
        top : INT16;
        left : INT16;
        angle : INT16;
        colorNdx : CARD8;
        shapeNdx : CARD8;
        pad1 : CARD16;
        pad2 : CARD32;
      end;
    xkbLogoDoodadWireDesc = _xkbLogoDoodadWireDesc;

  const
    sz_xkbLogoDoodadWireDesc = 20;    

  type
    _xkbAnyDoodadWireDesc = record
        name : Atom;
        _type : CARD8;
        priority : CARD8;
        top : INT16;
        left : INT16;
        angle : INT16;
        pad2 : CARD32;
        pad3 : CARD32;
      end;
    xkbAnyDoodadWireDesc = _xkbAnyDoodadWireDesc;

  const
    sz_xkbAnyDoodadWireDesc = 20;    

  type
    _xkbDoodadWireDesc = record
        case longint of
          0 : ( any : xkbAnyDoodadWireDesc );
          1 : ( shape : xkbShapeDoodadWireDesc );
          2 : ( text : xkbTextDoodadWireDesc );
          3 : ( indicator : xkbIndicatorDoodadWireDesc );
          4 : ( logo : xkbLogoDoodadWireDesc );
        end;
    xkbDoodadWireDesc = _xkbDoodadWireDesc;

  const
    sz_xkbDoodadWireDesc = 20;    


  type
    _xkbGetGeometry = record
        reqType : CARD8;
        xkbReqType : CARD8;
        length : CARD16;
        deviceSpec : CARD16;
        pad : CARD16;
        name : Atom;
      end;
    xkbGetGeometryReq = _xkbGetGeometry;

  const
    sz_xkbGetGeometryReq = 12;    


  type
    _xkbGetGeometryReply = record
        _type : CARD8;
        deviceID : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        name : Atom;
        found : BOOL;
        pad : CARD8;
        widthMM : CARD16;
        heightMM : CARD16;
        nProperties : CARD16;
        nColors : CARD16;
        nShapes : CARD16;
        nSections : CARD16;
        nDoodads : CARD16;
        nKeyAliases : CARD16;
        baseColorNdx : CARD8;
        labelColorNdx : CARD8;
      end;
    xkbGetGeometryReply = _xkbGetGeometryReply;

  const
    sz_xkbGetGeometryReply = 32;    


  type
    _xkbSetGeometry = record
        reqType : CARD8;
        xkbReqType : CARD8;
        length : CARD16;
        deviceSpec : CARD16;
        nShapes : CARD8;
        nSections : CARD8;
        name : Atom;
        widthMM : CARD16;
        heightMM : CARD16;
        nProperties : CARD16;
        nColors : CARD16;
        nDoodads : CARD16;
        nKeyAliases : CARD16;
        baseColorNdx : CARD8;
        labelColorNdx : CARD8;
        pad : CARD16;
      end;
    xkbSetGeometryReq = _xkbSetGeometry;

  const
    sz_xkbSetGeometryReq = 28;    


  type
    _xkbPerClientFlags = record
        reqType : CARD8;
        xkbReqType : CARD8;
        length : CARD16;
        deviceSpec : CARD16;
        pad1 : CARD16;
        change : CARD32;
        value : CARD32;
        ctrlsToChange : CARD32;
        autoCtrls : CARD32;
        autoCtrlValues : CARD32;
      end;
    xkbPerClientFlagsReq = _xkbPerClientFlags;

  const
    sz_xkbPerClientFlagsReq = 28;    


  type
    _xkbPerClientFlagsReply = record
        _type : CARD8;
        deviceID : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        supported : CARD32;
        value : CARD32;
        autoCtrls : CARD32;
        autoCtrlValues : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
      end;
    xkbPerClientFlagsReply = _xkbPerClientFlagsReply;

  const
    sz_xkbPerClientFlagsReply = 32;    


  type
    _xkbListComponents = record
        reqType : CARD8;
        xkbReqType : CARD8;
        length : CARD16;
        deviceSpec : CARD16;
        maxNames : CARD16;
      end;
    xkbListComponentsReq = _xkbListComponents;

  const
    sz_xkbListComponentsReq = 8;    


  type
    _xkbListComponentsReply = record
        _type : CARD8;
        deviceID : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        nKeymaps : CARD16;
        nKeycodes : CARD16;
        nTypes : CARD16;
        nCompatMaps : CARD16;
        nSymbols : CARD16;
        nGeometries : CARD16;
        extra : CARD16;
        pad1 : CARD16;
        pad2 : CARD32;
        pad3 : CARD32;
      end;
    xkbListComponentsReply = _xkbListComponentsReply;

  const
    sz_xkbListComponentsReply = 32;    




  type
    _xkbGetKbdByName = record
        reqType : CARD8;
        xkbReqType : CARD8;
        length : CARD16;
        deviceSpec : CARD16;
        need : CARD16;
        want : CARD16;
        load : BOOL;
        pad : CARD8;
      end;
    xkbGetKbdByNameReq = _xkbGetKbdByName;

  const
    sz_xkbGetKbdByNameReq = 12;    




  type
    _xkbGetKbdByNameReply = record
        _type : CARD8;
        deviceID : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        minKeyCode : KeyCode;
        maxKeyCode : KeyCode;
        loaded : BOOL;
        newKeyboard : BOOL;
        found : CARD16;
        reported : CARD16;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;
    xkbGetKbdByNameReply = _xkbGetKbdByNameReply;

  const
    sz_xkbGetKbdByNameReply = 32;    

  type
    _xkbDeviceLedsWireDesc = record
        ledClass : CARD16;
        ledID : CARD16;
        namesPresent : CARD32;
        mapsPresent : CARD32;
        physIndicators : CARD32;
        state : CARD32;
      end;
    xkbDeviceLedsWireDesc = _xkbDeviceLedsWireDesc;

  const
    sz_xkbDeviceLedsWireDesc = 20;    


  type
    _xkbGetDeviceInfo = record
        reqType : CARD8;
        xkbReqType : CARD8;
        length : CARD16;
        deviceSpec : CARD16;
        wanted : CARD16;
        allBtns : BOOL;
        firstBtn : CARD8;
        nBtns : CARD8;
        pad : CARD8;
        ledClass : CARD16;
        ledID : CARD16;
      end;
    xkbGetDeviceInfoReq = _xkbGetDeviceInfo;

  const
    sz_xkbGetDeviceInfoReq = 16;    


  type
    _xkbGetDeviceInfoReply = record
        _type : CARD8;
        deviceID : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        present : CARD16;
        supported : CARD16;
        unsupported : CARD16;
        nDeviceLedFBs : CARD16;
        firstBtnWanted : CARD8;
        nBtnsWanted : CARD8;
        firstBtnRtrn : CARD8;
        nBtnsRtrn : CARD8;
        totalBtns : CARD8;
        hasOwnState : BOOL;
        dfltKbdFB : CARD16;
        dfltLedFB : CARD16;
        pad : CARD16;
        devType : Atom;
      end;
    xkbGetDeviceInfoReply = _xkbGetDeviceInfoReply;

  const
    sz_xkbGetDeviceInfoReply = 32;    


  type
    _xkbSetDeviceInfo = record
        reqType : CARD8;
        xkbReqType : CARD8;
        length : CARD16;
        deviceSpec : CARD16;
        firstBtn : CARD8;
        nBtns : CARD8;
        change : CARD16;
        nDeviceLedFBs : CARD16;
      end;
    xkbSetDeviceInfoReq = _xkbSetDeviceInfo;

  const
    sz_xkbSetDeviceInfoReq = 12;    


  type
    _xkbSetDebuggingFlags = record
        reqType : CARD8;
        xkbReqType : CARD8;
        length : CARD16;
        msgLength : CARD16;
        pad : CARD16;
        affectFlags : CARD32;
        flags : CARD32;
        affectCtrls : CARD32;
        ctrls : CARD32;
      end;
    xkbSetDebuggingFlagsReq = _xkbSetDebuggingFlags;

  const
    sz_xkbSetDebuggingFlagsReq = 24;    


  type
    _xkbSetDebuggingFlagsReply = record
        _type : BYTE;
        pad0 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        currentFlags : CARD32;
        currentCtrls : CARD32;
        supportedFlags : CARD32;
        supportedCtrls : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
      end;
    xkbSetDebuggingFlagsReply = _xkbSetDebuggingFlagsReply;

  const
    sz_xkbSetDebuggingFlagsReply = 32;    


  type
    _xkbAnyEvent = record
        _type : BYTE;
        xkbType : BYTE;
        sequenceNumber : CARD16;
        time : Time;
        deviceID : CARD8;
        pad1 : CARD8;
        pad2 : CARD16;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
        pad7 : CARD32;
      end;
    xkbAnyEvent = _xkbAnyEvent;

  const
    sz_xkbAnyEvent = 32;    

  type
    _xkbNewKeyboardNotify = record
        _type : BYTE;
        xkbType : BYTE;
        sequenceNumber : CARD16;
        time : Time;
        deviceID : CARD8;
        oldDeviceID : CARD8;
        minKeyCode : KeyCode;
        maxKeyCode : KeyCode;
        oldMinKeyCode : KeyCode;
        oldMaxKeyCode : KeyCode;
        requestMajor : CARD8;
        requestMinor : CARD8;
        changed : CARD16;
        detail : CARD8;
        pad1 : CARD8;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;
    xkbNewKeyboardNotify = _xkbNewKeyboardNotify;

  const
    sz_xkbNewKeyboardNotify = 32;    

  type
    _xkbMapNotify = record
        _type : BYTE;
        xkbType : BYTE;
        sequenceNumber : CARD16;
        time : Time;
        deviceID : CARD8;
        ptrBtnActions : CARD8;
        changed : CARD16;
        minKeyCode : KeyCode;
        maxKeyCode : KeyCode;
        firstType : CARD8;
        nTypes : CARD8;
        firstKeySym : KeyCode;
        nKeySyms : CARD8;
        firstKeyAct : KeyCode;
        nKeyActs : CARD8;
        firstKeyBehavior : KeyCode;
        nKeyBehaviors : CARD8;
        firstKeyExplicit : KeyCode;
        nKeyExplicit : CARD8;
        firstModMapKey : KeyCode;
        nModMapKeys : CARD8;
        firstVModMapKey : KeyCode;
        nVModMapKeys : CARD8;
        virtualMods : CARD16;
        pad1 : CARD16;
      end;
    xkbMapNotify = _xkbMapNotify;

  const
    sz_xkbMapNotify = 32;    

  type
    _xkbStateNotify = record
        _type : BYTE;
        xkbType : BYTE;
        sequenceNumber : CARD16;
        time : Time;
        deviceID : CARD8;
        mods : CARD8;
        baseMods : CARD8;
        latchedMods : CARD8;
        lockedMods : CARD8;
        group : CARD8;
        baseGroup : INT16;
        latchedGroup : INT16;
        lockedGroup : CARD8;
        compatState : CARD8;
        grabMods : CARD8;
        compatGrabMods : CARD8;
        lookupMods : CARD8;
        compatLookupMods : CARD8;
        ptrBtnState : CARD16;
        changed : CARD16;
        keycode : KeyCode;
        eventType : CARD8;
        requestMajor : CARD8;
        requestMinor : CARD8;
      end;
    xkbStateNotify = _xkbStateNotify;

  const
    sz_xkbStateNotify = 32;    

  type
    _xkbControlsNotify = record
        _type : BYTE;
        xkbType : BYTE;
        sequenceNumber : CARD16;
        time : Time;
        deviceID : CARD8;
        numGroups : CARD8;
        pad1 : CARD16;
        changedControls : CARD32;
        enabledControls : CARD32;
        enabledControlChanges : CARD32;
        keycode : KeyCode;
        eventType : CARD8;
        requestMajor : CARD8;
        requestMinor : CARD8;
        pad2 : CARD32;
      end;
    xkbControlsNotify = _xkbControlsNotify;

  const
    sz_xkbControlsNotify = 32;    

  type
    _xkbIndicatorNotify = record
        _type : BYTE;
        xkbType : BYTE;
        sequenceNumber : CARD16;
        time : Time;
        deviceID : CARD8;
        pad1 : CARD8;
        pad2 : CARD16;
        state : CARD32;
        changed : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;
    xkbIndicatorNotify = _xkbIndicatorNotify;

  const
    sz_xkbIndicatorNotify = 32;    

  type
    _xkbNamesNotify = record
        _type : BYTE;
        xkbType : BYTE;
        sequenceNumber : CARD16;
        time : Time;
        deviceID : CARD8;
        pad1 : CARD8;
        changed : CARD16;
        firstType : CARD8;
        nTypes : CARD8;
        firstLevelName : CARD8;
        nLevelNames : CARD8;
        pad2 : CARD8;
        nRadioGroups : CARD8;
        nAliases : CARD8;
        changedGroupNames : CARD8;
        changedVirtualMods : CARD16;
        firstKey : CARD8;
        nKeys : CARD8;
        changedIndicators : CARD32;
        pad3 : CARD32;
      end;
    xkbNamesNotify = _xkbNamesNotify;

  const
    sz_xkbNamesNotify = 32;    

  type
    _xkbCompatMapNotify = record
        _type : BYTE;
        xkbType : BYTE;
        sequenceNumber : CARD16;
        time : Time;
        deviceID : CARD8;
        changedGroups : CARD8;
        firstSI : CARD16;
        nSI : CARD16;
        nTotalSI : CARD16;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;
    xkbCompatMapNotify = _xkbCompatMapNotify;

  const
    sz_xkbCompatMapNotify = 32;    

  type
    _xkbBellNotify = record
        _type : BYTE;
        xkbType : BYTE;
        sequenceNumber : CARD16;
        time : Time;
        deviceID : CARD8;
        bellClass : CARD8;
        bellID : CARD8;
        percent : CARD8;
        pitch : CARD16;
        duration : CARD16;
        name : Atom;
        window : Window;
        eventOnly : BOOL;
        pad1 : CARD8;
        pad2 : CARD16;
        pad3 : CARD32;
      end;
    xkbBellNotify = _xkbBellNotify;

  const
    sz_xkbBellNotify = 32;    

  type
    _xkbActionMessage = record
        _type : BYTE;
        xkbType : BYTE;
        sequenceNumber : CARD16;
        time : Time;
        deviceID : CARD8;
        keycode : KeyCode;
        press : BOOL;
        keyEventFollows : BOOL;
        mods : CARD8;
        group : CARD8;
        message : array[0..7] of CARD8;
        pad1 : CARD16;
        pad2 : CARD32;
        pad3 : CARD32;
      end;
    xkbActionMessage = _xkbActionMessage;

  const
    sz_xkbActionMessage = 32;    

  type
    _xkbAccessXNotify = record
        _type : BYTE;
        xkbType : BYTE;
        sequenceNumber : CARD16;
        time : Time;
        deviceID : CARD8;
        keycode : KeyCode;
        detail : CARD16;
        slowKeysDelay : CARD16;
        debounceDelay : CARD16;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;
    xkbAccessXNotify = _xkbAccessXNotify;

  const
    sz_xkbAccessXNotify = 32;    

  type
    _xkbExtensionDeviceNotify = record
        _type : BYTE;
        xkbType : BYTE;
        sequenceNumber : CARD16;
        time : Time;
        deviceID : CARD8;
        pad1 : CARD8;
        reason : CARD16;
        ledClass : CARD16;
        ledID : CARD16;
        ledsDefined : CARD32;
        ledState : CARD32;
        firstBtn : CARD8;
        nBtns : CARD8;
        supported : CARD16;
        unsupported : CARD16;
        pad3 : CARD16;
      end;
    xkbExtensionDeviceNotify = _xkbExtensionDeviceNotify;

  const
    sz_xkbExtensionDeviceNotify = 32;    

  type
    _xkbEvent = record
        u : record
            case longint of
              0 : ( any : xkbAnyEvent );
              1 : ( new_kbd : xkbNewKeyboardNotify );
              2 : ( map : xkbMapNotify );
              3 : ( state : xkbStateNotify );
              4 : ( ctrls : xkbControlsNotify );
              5 : ( indicators : xkbIndicatorNotify );
              6 : ( names : xkbNamesNotify );
              7 : ( compat : xkbCompatMapNotify );
              8 : ( bell : xkbBellNotify );
              9 : ( message : xkbActionMessage );
              10 : ( accessx : xkbAccessXNotify );
              11 : ( device : xkbExtensionDeviceNotify );
            end;
      end;
    xkbEvent = _xkbEvent;

  const
    sz_xkbEvent = 32;    
{$undef Window}
{$undef Atom}
{$undef Time}
{$undef KeyCode}
{$undef KeySym}
{$endif}


implementation

  function XkbPaddedSize(n : longint) : longint;
  begin
    XkbPaddedSize:=((dword(n(+(3)))) shr 2) shl 2;
  end;


end.
