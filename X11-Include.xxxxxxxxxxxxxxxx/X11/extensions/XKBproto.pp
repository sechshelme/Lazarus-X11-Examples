
unit XKBproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XKBproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XKBproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XKBproto.pp
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
PxkbAccessXNotify  = ^xkbAccessXNotify;
PxkbActionMessage  = ^xkbActionMessage;
PxkbActionWireDesc  = ^xkbActionWireDesc;
PxkbAnyDoodadWireDesc  = ^xkbAnyDoodadWireDesc;
PxkbAnyEvent  = ^xkbAnyEvent;
PxkbBehaviorWireDesc  = ^xkbBehaviorWireDesc;
PxkbBell  = ^xkbBell;
PxkbBellNotify  = ^xkbBellNotify;
PxkbBellReq  = ^xkbBellReq;
PxkbCompatMapNotify  = ^xkbCompatMapNotify;
PxkbControlsNotify  = ^xkbControlsNotify;
PxkbDeviceLedsWireDesc  = ^xkbDeviceLedsWireDesc;
PxkbDoodadWireDesc  = ^xkbDoodadWireDesc;
PxkbEvent  = ^xkbEvent;
PxkbExtensionDeviceNotify  = ^xkbExtensionDeviceNotify;
PxkbGetCompatMap  = ^xkbGetCompatMap;
PxkbGetCompatMapReply  = ^xkbGetCompatMapReply;
PxkbGetCompatMapReq  = ^xkbGetCompatMapReq;
PxkbGetControls  = ^xkbGetControls;
PxkbGetControlsReply  = ^xkbGetControlsReply;
PxkbGetControlsReq  = ^xkbGetControlsReq;
PxkbGetDeviceInfo  = ^xkbGetDeviceInfo;
PxkbGetDeviceInfoReply  = ^xkbGetDeviceInfoReply;
PxkbGetDeviceInfoReq  = ^xkbGetDeviceInfoReq;
PxkbGetGeometry  = ^xkbGetGeometry;
PxkbGetGeometryReply  = ^xkbGetGeometryReply;
PxkbGetGeometryReq  = ^xkbGetGeometryReq;
PxkbGetIndicatorMap  = ^xkbGetIndicatorMap;
PxkbGetIndicatorMapReply  = ^xkbGetIndicatorMapReply;
PxkbGetIndicatorMapReq  = ^xkbGetIndicatorMapReq;
PxkbGetIndicatorState  = ^xkbGetIndicatorState;
PxkbGetIndicatorStateReply  = ^xkbGetIndicatorStateReply;
PxkbGetIndicatorStateReq  = ^xkbGetIndicatorStateReq;
PxkbGetKbdByName  = ^xkbGetKbdByName;
PxkbGetKbdByNameReply  = ^xkbGetKbdByNameReply;
PxkbGetKbdByNameReq  = ^xkbGetKbdByNameReq;
PxkbGetMap  = ^xkbGetMap;
PxkbGetMapReply  = ^xkbGetMapReply;
PxkbGetMapReq  = ^xkbGetMapReq;
PxkbGetNamedIndicator  = ^xkbGetNamedIndicator;
PxkbGetNamedIndicatorReply  = ^xkbGetNamedIndicatorReply;
PxkbGetNamedIndicatorReq  = ^xkbGetNamedIndicatorReq;
PxkbGetNames  = ^xkbGetNames;
PxkbGetNamesReply  = ^xkbGetNamesReply;
PxkbGetNamesReq  = ^xkbGetNamesReq;
PxkbGetState  = ^xkbGetState;
PxkbGetStateReply  = ^xkbGetStateReply;
PxkbGetStateReq  = ^xkbGetStateReq;
PxkbIndicatorDoodadWireDesc  = ^xkbIndicatorDoodadWireDesc;
PxkbIndicatorMapWireDesc  = ^xkbIndicatorMapWireDesc;
PxkbIndicatorNotify  = ^xkbIndicatorNotify;
PxkbKeyTypeWireDesc  = ^xkbKeyTypeWireDesc;
PxkbKeyWireDesc  = ^xkbKeyWireDesc;
PxkbKTMapEntryWireDesc  = ^xkbKTMapEntryWireDesc;
PxkbKTSetMapEntryWireDesc  = ^xkbKTSetMapEntryWireDesc;
PxkbLatchLockState  = ^xkbLatchLockState;
PxkbLatchLockStateReq  = ^xkbLatchLockStateReq;
PxkbListComponents  = ^xkbListComponents;
PxkbListComponentsReply  = ^xkbListComponentsReply;
PxkbListComponentsReq  = ^xkbListComponentsReq;
PxkbLogoDoodadWireDesc  = ^xkbLogoDoodadWireDesc;
PxkbMapNotify  = ^xkbMapNotify;
PxkbModsWireDesc  = ^xkbModsWireDesc;
PxkbNamesNotify  = ^xkbNamesNotify;
PxkbNewKeyboardNotify  = ^xkbNewKeyboardNotify;
PxkbOutlineWireDesc  = ^xkbOutlineWireDesc;
PxkbOverlayKeyWireDesc  = ^xkbOverlayKeyWireDesc;
PxkbOverlayRowWireDesc  = ^xkbOverlayRowWireDesc;
PxkbOverlayWireDesc  = ^xkbOverlayWireDesc;
PxkbPerClientFlags  = ^xkbPerClientFlags;
PxkbPerClientFlagsReply  = ^xkbPerClientFlagsReply;
PxkbPerClientFlagsReq  = ^xkbPerClientFlagsReq;
PxkbPointWireDesc  = ^xkbPointWireDesc;
PxkbRowWireDesc  = ^xkbRowWireDesc;
PxkbSectionWireDesc  = ^xkbSectionWireDesc;
PxkbSelectEvents  = ^xkbSelectEvents;
PxkbSelectEventsReq  = ^xkbSelectEventsReq;
PxkbSetCompatMap  = ^xkbSetCompatMap;
PxkbSetCompatMapReq  = ^xkbSetCompatMapReq;
PxkbSetControls  = ^xkbSetControls;
PxkbSetControlsReq  = ^xkbSetControlsReq;
PxkbSetDebuggingFlags  = ^xkbSetDebuggingFlags;
PxkbSetDebuggingFlagsReply  = ^xkbSetDebuggingFlagsReply;
PxkbSetDebuggingFlagsReq  = ^xkbSetDebuggingFlagsReq;
PxkbSetDeviceInfo  = ^xkbSetDeviceInfo;
PxkbSetDeviceInfoReq  = ^xkbSetDeviceInfoReq;
PxkbSetGeometry  = ^xkbSetGeometry;
PxkbSetGeometryReq  = ^xkbSetGeometryReq;
PxkbSetIndicatorMap  = ^xkbSetIndicatorMap;
PxkbSetIndicatorMapReq  = ^xkbSetIndicatorMapReq;
PxkbSetMap  = ^xkbSetMap;
PxkbSetMapReq  = ^xkbSetMapReq;
PxkbSetNamedIndicator  = ^xkbSetNamedIndicator;
PxkbSetNamedIndicatorReq  = ^xkbSetNamedIndicatorReq;
PxkbSetNames  = ^xkbSetNames;
PxkbSetNamesReq  = ^xkbSetNamesReq;
PxkbShapeDoodadWireDesc  = ^xkbShapeDoodadWireDesc;
PxkbShapeWireDesc  = ^xkbShapeWireDesc;
PxkbStateNotify  = ^xkbStateNotify;
PxkbSymInterpretWireDesc  = ^xkbSymInterpretWireDesc;
PxkbSymMapWireDesc  = ^xkbSymMapWireDesc;
PxkbTextDoodadWireDesc  = ^xkbTextDoodadWireDesc;
PxkbUseExtension  = ^xkbUseExtension;
PxkbUseExtensionReply  = ^xkbUseExtensionReply;
PxkbUseExtensionReq  = ^xkbUseExtensionReq;
PxkbVModMapWireDesc  = ^xkbVModMapWireDesc;
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
  PxkbUseExtension = ^TxkbUseExtension;
  TxkbUseExtension = record
      reqType : TCARD8;
      xkbReqType : TCARD8;
      length : TCARD16;
      wantedMajor : TCARD16;
      wantedMinor : TCARD16;
    end;
  TxkbUseExtensionReq = TxkbUseExtension;
  PxkbUseExtensionReq = ^TxkbUseExtensionReq;

const
  sz_xkbUseExtensionReq = 8;  

type
  PxkbUseExtensionReply = ^TxkbUseExtensionReply;
  TxkbUseExtensionReply = record
      _type : TBYTE;
      supported : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      serverMajor : TCARD16;
      serverMinor : TCARD16;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xkbUseExtensionReply = 32;  

type
  PxkbSelectEvents = ^TxkbSelectEvents;
  TxkbSelectEvents = record
      reqType : TCARD8;
      xkbReqType : TCARD8;
      length : TCARD16;
      deviceSpec : TCARD16;
      affectWhich : TCARD16;
      clear : TCARD16;
      selectAll : TCARD16;
      affectMap : TCARD16;
      map : TCARD16;
    end;
  TxkbSelectEventsReq = TxkbSelectEvents;
  PxkbSelectEventsReq = ^TxkbSelectEventsReq;

const
  sz_xkbSelectEventsReq = 16;  

type
  PxkbBell = ^TxkbBell;
  TxkbBell = record
      reqType : TCARD8;
      xkbReqType : TCARD8;
      length : TCARD16;
      deviceSpec : TCARD16;
      bellClass : TCARD16;
      bellID : TCARD16;
      percent : TINT8;
      forceSound : TBOOL;
      eventOnly : TBOOL;
      pad1 : TCARD8;
      pitch : TINT16;
      duration : TINT16;
      pad2 : TCARD16;
      name : TAtom;
      window : TWindow;
    end;
  TxkbBellReq = TxkbBell;
  PxkbBellReq = ^TxkbBellReq;

const
  sz_xkbBellReq = 28;  

type
  PxkbGetState = ^TxkbGetState;
  TxkbGetState = record
      reqType : TCARD8;
      xkbReqType : TCARD8;
      length : TCARD16;
      deviceSpec : TCARD16;
      pad : TCARD16;
    end;
  TxkbGetStateReq = TxkbGetState;
  PxkbGetStateReq = ^TxkbGetStateReq;

const
  sz_xkbGetStateReq = 8;  
type
  PxkbGetStateReply = ^TxkbGetStateReply;
  TxkbGetStateReply = record
      _type : TBYTE;
      deviceID : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      mods : TCARD8;
      baseMods : TCARD8;
      latchedMods : TCARD8;
      lockedMods : TCARD8;
      group : TCARD8;
      lockedGroup : TCARD8;
      baseGroup : TINT16;
      latchedGroup : TINT16;
      compatState : TCARD8;
      grabMods : TCARD8;
      compatGrabMods : TCARD8;
      lookupMods : TCARD8;
      compatLookupMods : TCARD8;
      pad1 : TCARD8;
      ptrBtnState : TCARD16;
      pad2 : TCARD16;
      pad3 : TCARD32;
    end;

const
  sz_xkbGetStateReply = 32;  

type
  PxkbLatchLockState = ^TxkbLatchLockState;
  TxkbLatchLockState = record
      reqType : TCARD8;
      xkbReqType : TCARD8;
      length : TCARD16;
      deviceSpec : TCARD16;
      affectModLocks : TCARD8;
      modLocks : TCARD8;
      lockGroup : TBOOL;
      groupLock : TCARD8;
      affectModLatches : TCARD8;
      modLatches : TCARD8;
      pad : TCARD8;
      latchGroup : TBOOL;
      groupLatch : TINT16;
    end;
  TxkbLatchLockStateReq = TxkbLatchLockState;
  PxkbLatchLockStateReq = ^TxkbLatchLockStateReq;

const
  sz_xkbLatchLockStateReq = 16;  

type
  PxkbGetControls = ^TxkbGetControls;
  TxkbGetControls = record
      reqType : TCARD8;
      xkbReqType : TCARD8;
      length : TCARD16;
      deviceSpec : TCARD16;
      pad : TCARD16;
    end;
  TxkbGetControlsReq = TxkbGetControls;
  PxkbGetControlsReq = ^TxkbGetControlsReq;

const
  sz_xkbGetControlsReq = 8;  

type
  PxkbGetControlsReply = ^TxkbGetControlsReply;
  TxkbGetControlsReply = record
      _type : TBYTE;
      deviceID : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      mkDfltBtn : TCARD8;
      numGroups : TCARD8;
      groupsWrap : TCARD8;
      internalMods : TCARD8;
      ignoreLockMods : TCARD8;
      internalRealMods : TCARD8;
      ignoreLockRealMods : TCARD8;
      pad1 : TCARD8;
      internalVMods : TCARD16;
      ignoreLockVMods : TCARD16;
      repeatDelay : TCARD16;
      repeatInterval : TCARD16;
      slowKeysDelay : TCARD16;
      debounceDelay : TCARD16;
      mkDelay : TCARD16;
      mkInterval : TCARD16;
      mkTimeToMax : TCARD16;
      mkMaxSpeed : TCARD16;
      mkCurve : TINT16;
      axOptions : TCARD16;
      axTimeout : TCARD16;
      axtOptsMask : TCARD16;
      axtOptsValues : TCARD16;
      pad2 : TCARD16;
      axtCtrlsMask : TCARD32;
      axtCtrlsValues : TCARD32;
      enabledCtrls : TCARD32;
      perKeyRepeat : array[0..(XkbPerKeyBitArraySize)-1] of TBYTE;
    end;

const
  sz_xkbGetControlsReply = 92;  

type
  PxkbSetControls = ^TxkbSetControls;
  TxkbSetControls = record
      reqType : TCARD8;
      xkbReqType : TCARD8;
      length : TCARD16;
      deviceSpec : TCARD16;
      affectInternalMods : TCARD8;
      internalMods : TCARD8;
      affectIgnoreLockMods : TCARD8;
      ignoreLockMods : TCARD8;
      affectInternalVMods : TCARD16;
      internalVMods : TCARD16;
      affectIgnoreLockVMods : TCARD16;
      ignoreLockVMods : TCARD16;
      mkDfltBtn : TCARD8;
      groupsWrap : TCARD8;
      axOptions : TCARD16;
      pad1 : TCARD16;
      affectEnabledCtrls : TCARD32;
      enabledCtrls : TCARD32;
      changeCtrls : TCARD32;
      repeatDelay : TCARD16;
      repeatInterval : TCARD16;
      slowKeysDelay : TCARD16;
      debounceDelay : TCARD16;
      mkDelay : TCARD16;
      mkInterval : TCARD16;
      mkTimeToMax : TCARD16;
      mkMaxSpeed : TCARD16;
      mkCurve : TINT16;
      axTimeout : TCARD16;
      axtCtrlsMask : TCARD32;
      axtCtrlsValues : TCARD32;
      axtOptsMask : TCARD16;
      axtOptsValues : TCARD16;
      perKeyRepeat : array[0..(XkbPerKeyBitArraySize)-1] of TBYTE;
    end;
  TxkbSetControlsReq = TxkbSetControls;
  PxkbSetControlsReq = ^TxkbSetControlsReq;

const
  sz_xkbSetControlsReq = 100;  
type
  PxkbKTMapEntryWireDesc = ^TxkbKTMapEntryWireDesc;
  TxkbKTMapEntryWireDesc = record
      active : TBOOL;
      mask : TCARD8;
      level : TCARD8;
      realMods : TCARD8;
      virtualMods : TCARD16;
      pad : TCARD16;
    end;

const
  sz_xkbKTMapEntryWireDesc = 8;  
type
  PxkbKTSetMapEntryWireDesc = ^TxkbKTSetMapEntryWireDesc;
  TxkbKTSetMapEntryWireDesc = record
      level : TCARD8;
      realMods : TCARD8;
      virtualMods : TCARD16;
    end;

const
  sz_xkbKTSetMapEntryWireDesc = 4;  

type
  PxkbModsWireDesc = ^TxkbModsWireDesc;
  TxkbModsWireDesc = record
      mask : TCARD8;
      realMods : TCARD8;
      virtualMods : TCARD16;
    end;

const
  sz_xkbModsWireDesc = 4;  
type
  PxkbKeyTypeWireDesc = ^TxkbKeyTypeWireDesc;
  TxkbKeyTypeWireDesc = record
      mask : TCARD8;
      realMods : TCARD8;
      virtualMods : TCARD16;
      numLevels : TCARD8;
      nMapEntries : TCARD8;
      preserve : TBOOL;
      pad : TCARD8;
    end;

const
  sz_xkbKeyTypeWireDesc = 8;  
type
  PxkbSymMapWireDesc = ^TxkbSymMapWireDesc;
  TxkbSymMapWireDesc = record
      ktIndex : array[0..(XkbNumKbdGroups)-1] of TCARD8;
      groupInfo : TCARD8;
      width : TCARD8;
      nSyms : TCARD16;
    end;

const
  sz_xkbSymMapWireDesc = 8;  
type
  PxkbVModMapWireDesc = ^TxkbVModMapWireDesc;
  TxkbVModMapWireDesc = record
      key : TKeyCode;
      pad : TCARD8;
      vmods : TCARD16;
    end;

const
  sz_xkbVModMapWireDesc = 4;  
type
  PxkbBehaviorWireDesc = ^TxkbBehaviorWireDesc;
  TxkbBehaviorWireDesc = record
      key : TCARD8;
      _type : TCARD8;
      data : TCARD8;
      pad : TCARD8;
    end;

const
  sz_xkbBehaviorWireDesc = 4;  
type
  PxkbActionWireDesc = ^TxkbActionWireDesc;
  TxkbActionWireDesc = record
      _type : TCARD8;
      data : array[0..6] of TCARD8;
    end;

const
  sz_xkbActionWireDesc = 8;  

type
  PxkbGetMap = ^TxkbGetMap;
  TxkbGetMap = record
      reqType : TCARD8;
      xkbReqType : TCARD8;
      length : TCARD16;
      deviceSpec : TCARD16;
      full : TCARD16;
      partial : TCARD16;
      firstType : TCARD8;
      nTypes : TCARD8;
      firstKeySym : TKeyCode;
      nKeySyms : TCARD8;
      firstKeyAct : TKeyCode;
      nKeyActs : TCARD8;
      firstKeyBehavior : TKeyCode;
      nKeyBehaviors : TCARD8;
      virtualMods : TCARD16;
      firstKeyExplicit : TKeyCode;
      nKeyExplicit : TCARD8;
      firstModMapKey : TKeyCode;
      nModMapKeys : TCARD8;
      firstVModMapKey : TKeyCode;
      nVModMapKeys : TCARD8;
      pad1 : TCARD16;
    end;
  TxkbGetMapReq = TxkbGetMap;
  PxkbGetMapReq = ^TxkbGetMapReq;

const
  sz_xkbGetMapReq = 28;  

type
  PxkbGetMapReply = ^TxkbGetMapReply;
  TxkbGetMapReply = record
      _type : TCARD8;
      deviceID : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      pad1 : TCARD16;
      minKeyCode : TKeyCode;
      maxKeyCode : TKeyCode;
      present : TCARD16;
      firstType : TCARD8;
      nTypes : TCARD8;
      totalTypes : TCARD8;
      firstKeySym : TKeyCode;
      totalSyms : TCARD16;
      nKeySyms : TCARD8;
      firstKeyAct : TKeyCode;
      totalActs : TCARD16;
      nKeyActs : TCARD8;
      firstKeyBehavior : TKeyCode;
      nKeyBehaviors : TCARD8;
      totalKeyBehaviors : TCARD8;
      firstKeyExplicit : TKeyCode;
      nKeyExplicit : TCARD8;
      totalKeyExplicit : TCARD8;
      firstModMapKey : TKeyCode;
      nModMapKeys : TCARD8;
      totalModMapKeys : TCARD8;
      firstVModMapKey : TKeyCode;
      nVModMapKeys : TCARD8;
      totalVModMapKeys : TCARD8;
      pad2 : TCARD8;
      virtualMods : TCARD16;
    end;

const
  sz_xkbGetMapReply = 40;  
  XkbSetMapResizeTypes = 1 shl 0;  
  XkbSetMapRecomputeActions = 1 shl 1;  
  XkbSetMapAllFlags = $3;  

type
  PxkbSetMap = ^TxkbSetMap;
  TxkbSetMap = record
      reqType : TCARD8;
      xkbReqType : TCARD8;
      length : TCARD16;
      deviceSpec : TCARD16;
      present : TCARD16;
      flags : TCARD16;
      minKeyCode : TKeyCode;
      maxKeyCode : TKeyCode;
      firstType : TCARD8;
      nTypes : TCARD8;
      firstKeySym : TKeyCode;
      nKeySyms : TCARD8;
      totalSyms : TCARD16;
      firstKeyAct : TKeyCode;
      nKeyActs : TCARD8;
      totalActs : TCARD16;
      firstKeyBehavior : TKeyCode;
      nKeyBehaviors : TCARD8;
      totalKeyBehaviors : TCARD8;
      firstKeyExplicit : TKeyCode;
      nKeyExplicit : TCARD8;
      totalKeyExplicit : TCARD8;
      firstModMapKey : TKeyCode;
      nModMapKeys : TCARD8;
      totalModMapKeys : TCARD8;
      firstVModMapKey : TKeyCode;
      nVModMapKeys : TCARD8;
      totalVModMapKeys : TCARD8;
      virtualMods : TCARD16;
    end;
  TxkbSetMapReq = TxkbSetMap;
  PxkbSetMapReq = ^TxkbSetMapReq;

const
  sz_xkbSetMapReq = 36;  
type
  PxkbSymInterpretWireDesc = ^TxkbSymInterpretWireDesc;
  TxkbSymInterpretWireDesc = record
      sym : TCARD32;
      mods : TCARD8;
      match : TCARD8;
      virtualMod : TCARD8;
      flags : TCARD8;
      act : TxkbActionWireDesc;
    end;

const
  sz_xkbSymInterpretWireDesc = 16;  

type
  PxkbGetCompatMap = ^TxkbGetCompatMap;
  TxkbGetCompatMap = record
      reqType : TCARD8;
      xkbReqType : TCARD8;
      length : TCARD16;
      deviceSpec : TCARD16;
      groups : TCARD8;
      getAllSI : TBOOL;
      firstSI : TCARD16;
      nSI : TCARD16;
    end;
  TxkbGetCompatMapReq = TxkbGetCompatMap;
  PxkbGetCompatMapReq = ^TxkbGetCompatMapReq;

const
  sz_xkbGetCompatMapReq = 12;  

type
  PxkbGetCompatMapReply = ^TxkbGetCompatMapReply;
  TxkbGetCompatMapReply = record
      _type : TCARD8;
      deviceID : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      groups : TCARD8;
      pad1 : TCARD8;
      firstSI : TCARD16;
      nSI : TCARD16;
      nTotalSI : TCARD16;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xkbGetCompatMapReply = 32;  

type
  PxkbSetCompatMap = ^TxkbSetCompatMap;
  TxkbSetCompatMap = record
      reqType : TCARD8;
      xkbReqType : TCARD8;
      length : TCARD16;
      deviceSpec : TCARD16;
      pad1 : TCARD8;
      recomputeActions : TBOOL;
      truncateSI : TBOOL;
      groups : TCARD8;
      firstSI : TCARD16;
      nSI : TCARD16;
      pad2 : TCARD16;
    end;
  TxkbSetCompatMapReq = TxkbSetCompatMap;
  PxkbSetCompatMapReq = ^TxkbSetCompatMapReq;

const
  sz_xkbSetCompatMapReq = 16;  

type
  PxkbGetIndicatorState = ^TxkbGetIndicatorState;
  TxkbGetIndicatorState = record
      reqType : TCARD8;
      xkbReqType : TCARD8;
      length : TCARD16;
      deviceSpec : TCARD16;
      pad1 : TCARD16;
    end;
  TxkbGetIndicatorStateReq = TxkbGetIndicatorState;
  PxkbGetIndicatorStateReq = ^TxkbGetIndicatorStateReq;

const
  sz_xkbGetIndicatorStateReq = 8;  

type
  PxkbGetIndicatorStateReply = ^TxkbGetIndicatorStateReply;
  TxkbGetIndicatorStateReply = record
      _type : TCARD8;
      deviceID : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      state : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xkbGetIndicatorStateReply = 32;  

type
  PxkbGetIndicatorMap = ^TxkbGetIndicatorMap;
  TxkbGetIndicatorMap = record
      reqType : TCARD8;
      xkbReqType : TCARD8;
      length : TCARD16;
      deviceSpec : TCARD16;
      pad : TCARD16;
      which : TCARD32;
    end;
  TxkbGetIndicatorMapReq = TxkbGetIndicatorMap;
  PxkbGetIndicatorMapReq = ^TxkbGetIndicatorMapReq;

const
  sz_xkbGetIndicatorMapReq = 12;  

type
  PxkbGetIndicatorMapReply = ^TxkbGetIndicatorMapReply;
  TxkbGetIndicatorMapReply = record
      _type : TCARD8;
      deviceID : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      which : TCARD32;
      realIndicators : TCARD32;
      nIndicators : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD16;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xkbGetIndicatorMapReply = 32;  
type
  PxkbIndicatorMapWireDesc = ^TxkbIndicatorMapWireDesc;
  TxkbIndicatorMapWireDesc = record
      flags : TCARD8;
      whichGroups : TCARD8;
      groups : TCARD8;
      whichMods : TCARD8;
      mods : TCARD8;
      realMods : TCARD8;
      virtualMods : TCARD16;
      ctrls : TCARD32;
    end;

const
  sz_xkbIndicatorMapWireDesc = 12;  

type
  PxkbSetIndicatorMap = ^TxkbSetIndicatorMap;
  TxkbSetIndicatorMap = record
      reqType : TCARD8;
      xkbReqType : TCARD8;
      length : TCARD16;
      deviceSpec : TCARD16;
      pad1 : TCARD16;
      which : TCARD32;
    end;
  TxkbSetIndicatorMapReq = TxkbSetIndicatorMap;
  PxkbSetIndicatorMapReq = ^TxkbSetIndicatorMapReq;

const
  sz_xkbSetIndicatorMapReq = 12;  

type
  PxkbGetNamedIndicator = ^TxkbGetNamedIndicator;
  TxkbGetNamedIndicator = record
      reqType : TCARD8;
      xkbReqType : TCARD8;
      length : TCARD16;
      deviceSpec : TCARD16;
      ledClass : TCARD16;
      ledID : TCARD16;
      pad1 : TCARD16;
      indicator : TAtom;
    end;
  TxkbGetNamedIndicatorReq = TxkbGetNamedIndicator;
  PxkbGetNamedIndicatorReq = ^TxkbGetNamedIndicatorReq;

const
  sz_xkbGetNamedIndicatorReq = 16;  
type
  PxkbGetNamedIndicatorReply = ^TxkbGetNamedIndicatorReply;
  TxkbGetNamedIndicatorReply = record
      _type : TBYTE;
      deviceID : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      indicator : TAtom;
      found : TBOOL;
      on : TBOOL;
      realIndicator : TBOOL;
      ndx : TCARD8;
      flags : TCARD8;
      whichGroups : TCARD8;
      groups : TCARD8;
      whichMods : TCARD8;
      mods : TCARD8;
      realMods : TCARD8;
      virtualMods : TCARD16;
      ctrls : TCARD32;
      supported : TBOOL;
      pad1 : TCARD8;
      pad2 : TCARD16;
    end;

const
  sz_xkbGetNamedIndicatorReply = 32;  

type
  PxkbSetNamedIndicator = ^TxkbSetNamedIndicator;
  TxkbSetNamedIndicator = record
      reqType : TCARD8;
      xkbReqType : TCARD8;
      length : TCARD16;
      deviceSpec : TCARD16;
      ledClass : TCARD16;
      ledID : TCARD16;
      pad1 : TCARD16;
      indicator : TAtom;
      setState : TBOOL;
      on : TBOOL;
      setMap : TBOOL;
      createMap : TBOOL;
      pad2 : TCARD8;
      flags : TCARD8;
      whichGroups : TCARD8;
      groups : TCARD8;
      whichMods : TCARD8;
      realMods : TCARD8;
      virtualMods : TCARD16;
      ctrls : TCARD32;
    end;
  TxkbSetNamedIndicatorReq = TxkbSetNamedIndicator;
  PxkbSetNamedIndicatorReq = ^TxkbSetNamedIndicatorReq;

const
  sz_xkbSetNamedIndicatorReq = 32;  

type
  PxkbGetNames = ^TxkbGetNames;
  TxkbGetNames = record
      reqType : TCARD8;
      xkbReqType : TCARD8;
      length : TCARD16;
      deviceSpec : TCARD16;
      pad : TCARD16;
      which : TCARD32;
    end;
  TxkbGetNamesReq = TxkbGetNames;
  PxkbGetNamesReq = ^TxkbGetNamesReq;

const
  sz_xkbGetNamesReq = 12;  
type
  PxkbGetNamesReply = ^TxkbGetNamesReply;
  TxkbGetNamesReply = record
      _type : TBYTE;
      deviceID : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      which : TCARD32;
      minKeyCode : TKeyCode;
      maxKeyCode : TKeyCode;
      nTypes : TCARD8;
      groupNames : TCARD8;
      virtualMods : TCARD16;
      firstKey : TKeyCode;
      nKeys : TCARD8;
      indicators : TCARD32;
      nRadioGroups : TCARD8;
      nKeyAliases : TCARD8;
      nKTLevels : TCARD16;
      pad3 : TCARD32;
    end;

const
  sz_xkbGetNamesReply = 32;  

type
  PxkbSetNames = ^TxkbSetNames;
  TxkbSetNames = record
      reqType : TCARD8;
      xkbReqType : TCARD8;
      length : TCARD16;
      deviceSpec : TCARD16;
      virtualMods : TCARD16;
      which : TCARD32;
      firstType : TCARD8;
      nTypes : TCARD8;
      firstKTLevel : TCARD8;
      nKTLevels : TCARD8;
      indicators : TCARD32;
      groupNames : TCARD8;
      nRadioGroups : TCARD8;
      firstKey : TKeyCode;
      nKeys : TCARD8;
      nKeyAliases : TCARD8;
      pad1 : TCARD8;
      totalKTLevelNames : TCARD16;
    end;
  TxkbSetNamesReq = TxkbSetNames;
  PxkbSetNamesReq = ^TxkbSetNamesReq;

const
  sz_xkbSetNamesReq = 28;  
type
  PxkbPointWireDesc = ^TxkbPointWireDesc;
  TxkbPointWireDesc = record
      x : TINT16;
      y : TINT16;
    end;

const
  sz_xkbPointWireDesc = 4;  
type
  PxkbOutlineWireDesc = ^TxkbOutlineWireDesc;
  TxkbOutlineWireDesc = record
      nPoints : TCARD8;
      cornerRadius : TCARD8;
      pad : TCARD16;
    end;

const
  sz_xkbOutlineWireDesc = 4;  
type
  PxkbShapeWireDesc = ^TxkbShapeWireDesc;
  TxkbShapeWireDesc = record
      name : TAtom;
      nOutlines : TCARD8;
      primaryNdx : TCARD8;
      approxNdx : TCARD8;
      pad : TCARD8;
    end;

const
  sz_xkbShapeWireDesc = 8;  
type
  PxkbSectionWireDesc = ^TxkbSectionWireDesc;
  TxkbSectionWireDesc = record
      name : TAtom;
      top : TINT16;
      left : TINT16;
      width : TCARD16;
      height : TCARD16;
      angle : TINT16;
      priority : TCARD8;
      nRows : TCARD8;
      nDoodads : TCARD8;
      nOverlays : TCARD8;
      pad : TCARD16;
    end;

const
  sz_xkbSectionWireDesc = 20;  
type
  PxkbRowWireDesc = ^TxkbRowWireDesc;
  TxkbRowWireDesc = record
      top : TINT16;
      left : TINT16;
      nKeys : TCARD8;
      vertical : TBOOL;
      pad : TCARD16;
    end;

const
  sz_xkbRowWireDesc = 8;  
(* error 
    CARD8	name[XkbKeyNameLength]	_X_NONSTRING;
 in declarator_list *)
type
  PxkbKeyWireDesc = ^TxkbKeyWireDesc;
  TxkbKeyWireDesc = record
      XkbKeyNameLength : TCARD8;
      gap : TINT16;
      shapeNdx : TCARD8;
      colorNdx : TCARD8;
    end;

const
  sz_xkbKeyWireDesc = 8;  
type
  PxkbOverlayWireDesc = ^TxkbOverlayWireDesc;
  TxkbOverlayWireDesc = record
      name : TAtom;
      nRows : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD16;
    end;

const
  sz_xkbOverlayWireDesc = 8;  
type
  PxkbOverlayRowWireDesc = ^TxkbOverlayRowWireDesc;
  TxkbOverlayRowWireDesc = record
      rowUnder : TCARD8;
      nKeys : TCARD8;
      pad1 : TCARD16;
    end;

const
  sz_xkbOverlayRowWireDesc = 4;  
(* error 
   CARD8	over[XkbKeyNameLength]	_X_NONSTRING;
 in declarator_list *)
(* error 
   CARD8	under[XkbKeyNameLength]	_X_NONSTRING;
 in declarator_list *)
type
  PxkbOverlayKeyWireDesc = ^TxkbOverlayKeyWireDesc;
  TxkbOverlayKeyWireDesc = record
      XkbKeyNameLength : TCARD8;
      XkbKeyNameLength : TCARD8;
    end;

const
  sz_xkbOverlayKeyWireDesc = 8;  
type
  PxkbShapeDoodadWireDesc = ^TxkbShapeDoodadWireDesc;
  TxkbShapeDoodadWireDesc = record
      name : TAtom;
      _type : TCARD8;
      priority : TCARD8;
      top : TINT16;
      left : TINT16;
      angle : TINT16;
      colorNdx : TCARD8;
      shapeNdx : TCARD8;
      pad1 : TCARD16;
      pad2 : TCARD32;
    end;

const
  sz_xkbShapeDoodadWireDesc = 20;  
type
  PxkbTextDoodadWireDesc = ^TxkbTextDoodadWireDesc;
  TxkbTextDoodadWireDesc = record
      name : TAtom;
      _type : TCARD8;
      priority : TCARD8;
      top : TINT16;
      left : TINT16;
      angle : TINT16;
      width : TCARD16;
      height : TCARD16;
      colorNdx : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD16;
    end;

const
  sz_xkbTextDoodadWireDesc = 20;  
type
  PxkbIndicatorDoodadWireDesc = ^TxkbIndicatorDoodadWireDesc;
  TxkbIndicatorDoodadWireDesc = record
      name : TAtom;
      _type : TCARD8;
      priority : TCARD8;
      top : TINT16;
      left : TINT16;
      angle : TINT16;
      shapeNdx : TCARD8;
      onColorNdx : TCARD8;
      offColorNdx : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD32;
    end;

const
  sz_xkbIndicatorDoodadWireDesc = 20;  
type
  PxkbLogoDoodadWireDesc = ^TxkbLogoDoodadWireDesc;
  TxkbLogoDoodadWireDesc = record
      name : TAtom;
      _type : TCARD8;
      priority : TCARD8;
      top : TINT16;
      left : TINT16;
      angle : TINT16;
      colorNdx : TCARD8;
      shapeNdx : TCARD8;
      pad1 : TCARD16;
      pad2 : TCARD32;
    end;

const
  sz_xkbLogoDoodadWireDesc = 20;  
type
  PxkbAnyDoodadWireDesc = ^TxkbAnyDoodadWireDesc;
  TxkbAnyDoodadWireDesc = record
      name : TAtom;
      _type : TCARD8;
      priority : TCARD8;
      top : TINT16;
      left : TINT16;
      angle : TINT16;
      pad2 : TCARD32;
      pad3 : TCARD32;
    end;

const
  sz_xkbAnyDoodadWireDesc = 20;  
type
  PxkbDoodadWireDesc = ^TxkbDoodadWireDesc;
  TxkbDoodadWireDesc = record
      case longint of
        0 : ( any : TxkbAnyDoodadWireDesc );
        1 : ( shape : TxkbShapeDoodadWireDesc );
        2 : ( text : TxkbTextDoodadWireDesc );
        3 : ( indicator : TxkbIndicatorDoodadWireDesc );
        4 : ( logo : TxkbLogoDoodadWireDesc );
      end;

const
  sz_xkbDoodadWireDesc = 20;  

type
  PxkbGetGeometry = ^TxkbGetGeometry;
  TxkbGetGeometry = record
      reqType : TCARD8;
      xkbReqType : TCARD8;
      length : TCARD16;
      deviceSpec : TCARD16;
      pad : TCARD16;
      name : TAtom;
    end;
  TxkbGetGeometryReq = TxkbGetGeometry;
  PxkbGetGeometryReq = ^TxkbGetGeometryReq;

const
  sz_xkbGetGeometryReq = 12;  

type
  PxkbGetGeometryReply = ^TxkbGetGeometryReply;
  TxkbGetGeometryReply = record
      _type : TCARD8;
      deviceID : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      name : TAtom;
      found : TBOOL;
      pad : TCARD8;
      widthMM : TCARD16;
      heightMM : TCARD16;
      nProperties : TCARD16;
      nColors : TCARD16;
      nShapes : TCARD16;
      nSections : TCARD16;
      nDoodads : TCARD16;
      nKeyAliases : TCARD16;
      baseColorNdx : TCARD8;
      labelColorNdx : TCARD8;
    end;

const
  sz_xkbGetGeometryReply = 32;  

type
  PxkbSetGeometry = ^TxkbSetGeometry;
  TxkbSetGeometry = record
      reqType : TCARD8;
      xkbReqType : TCARD8;
      length : TCARD16;
      deviceSpec : TCARD16;
      nShapes : TCARD8;
      nSections : TCARD8;
      name : TAtom;
      widthMM : TCARD16;
      heightMM : TCARD16;
      nProperties : TCARD16;
      nColors : TCARD16;
      nDoodads : TCARD16;
      nKeyAliases : TCARD16;
      baseColorNdx : TCARD8;
      labelColorNdx : TCARD8;
      pad : TCARD16;
    end;
  TxkbSetGeometryReq = TxkbSetGeometry;
  PxkbSetGeometryReq = ^TxkbSetGeometryReq;

const
  sz_xkbSetGeometryReq = 28;  

type
  PxkbPerClientFlags = ^TxkbPerClientFlags;
  TxkbPerClientFlags = record
      reqType : TCARD8;
      xkbReqType : TCARD8;
      length : TCARD16;
      deviceSpec : TCARD16;
      pad1 : TCARD16;
      change : TCARD32;
      value : TCARD32;
      ctrlsToChange : TCARD32;
      autoCtrls : TCARD32;
      autoCtrlValues : TCARD32;
    end;
  TxkbPerClientFlagsReq = TxkbPerClientFlags;
  PxkbPerClientFlagsReq = ^TxkbPerClientFlagsReq;

const
  sz_xkbPerClientFlagsReq = 28;  

type
  PxkbPerClientFlagsReply = ^TxkbPerClientFlagsReply;
  TxkbPerClientFlagsReply = record
      _type : TCARD8;
      deviceID : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      supported : TCARD32;
      value : TCARD32;
      autoCtrls : TCARD32;
      autoCtrlValues : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
    end;

const
  sz_xkbPerClientFlagsReply = 32;  

type
  PxkbListComponents = ^TxkbListComponents;
  TxkbListComponents = record
      reqType : TCARD8;
      xkbReqType : TCARD8;
      length : TCARD16;
      deviceSpec : TCARD16;
      maxNames : TCARD16;
    end;
  TxkbListComponentsReq = TxkbListComponents;
  PxkbListComponentsReq = ^TxkbListComponentsReq;

const
  sz_xkbListComponentsReq = 8;  

type
  PxkbListComponentsReply = ^TxkbListComponentsReply;
  TxkbListComponentsReply = record
      _type : TCARD8;
      deviceID : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      nKeymaps : TCARD16;
      nKeycodes : TCARD16;
      nTypes : TCARD16;
      nCompatMaps : TCARD16;
      nSymbols : TCARD16;
      nGeometries : TCARD16;
      extra : TCARD16;
      pad1 : TCARD16;
      pad2 : TCARD32;
      pad3 : TCARD32;
    end;

const
  sz_xkbListComponentsReply = 32;  



type
  PxkbGetKbdByName = ^TxkbGetKbdByName;
  TxkbGetKbdByName = record
      reqType : TCARD8;
      xkbReqType : TCARD8;
      length : TCARD16;
      deviceSpec : TCARD16;
      need : TCARD16;
      want : TCARD16;
      load : TBOOL;
      pad : TCARD8;
    end;
  TxkbGetKbdByNameReq = TxkbGetKbdByName;
  PxkbGetKbdByNameReq = ^TxkbGetKbdByNameReq;

const
  sz_xkbGetKbdByNameReq = 12;  



type
  PxkbGetKbdByNameReply = ^TxkbGetKbdByNameReply;
  TxkbGetKbdByNameReply = record
      _type : TCARD8;
      deviceID : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      minKeyCode : TKeyCode;
      maxKeyCode : TKeyCode;
      loaded : TBOOL;
      newKeyboard : TBOOL;
      found : TCARD16;
      reported : TCARD16;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xkbGetKbdByNameReply = 32;  
type
  PxkbDeviceLedsWireDesc = ^TxkbDeviceLedsWireDesc;
  TxkbDeviceLedsWireDesc = record
      ledClass : TCARD16;
      ledID : TCARD16;
      namesPresent : TCARD32;
      mapsPresent : TCARD32;
      physIndicators : TCARD32;
      state : TCARD32;
    end;

const
  sz_xkbDeviceLedsWireDesc = 20;  

type
  PxkbGetDeviceInfo = ^TxkbGetDeviceInfo;
  TxkbGetDeviceInfo = record
      reqType : TCARD8;
      xkbReqType : TCARD8;
      length : TCARD16;
      deviceSpec : TCARD16;
      wanted : TCARD16;
      allBtns : TBOOL;
      firstBtn : TCARD8;
      nBtns : TCARD8;
      pad : TCARD8;
      ledClass : TCARD16;
      ledID : TCARD16;
    end;
  TxkbGetDeviceInfoReq = TxkbGetDeviceInfo;
  PxkbGetDeviceInfoReq = ^TxkbGetDeviceInfoReq;

const
  sz_xkbGetDeviceInfoReq = 16;  

type
  PxkbGetDeviceInfoReply = ^TxkbGetDeviceInfoReply;
  TxkbGetDeviceInfoReply = record
      _type : TCARD8;
      deviceID : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      present : TCARD16;
      supported : TCARD16;
      unsupported : TCARD16;
      nDeviceLedFBs : TCARD16;
      firstBtnWanted : TCARD8;
      nBtnsWanted : TCARD8;
      firstBtnRtrn : TCARD8;
      nBtnsRtrn : TCARD8;
      totalBtns : TCARD8;
      hasOwnState : TBOOL;
      dfltKbdFB : TCARD16;
      dfltLedFB : TCARD16;
      pad : TCARD16;
      devType : TAtom;
    end;

const
  sz_xkbGetDeviceInfoReply = 32;  

type
  PxkbSetDeviceInfo = ^TxkbSetDeviceInfo;
  TxkbSetDeviceInfo = record
      reqType : TCARD8;
      xkbReqType : TCARD8;
      length : TCARD16;
      deviceSpec : TCARD16;
      firstBtn : TCARD8;
      nBtns : TCARD8;
      change : TCARD16;
      nDeviceLedFBs : TCARD16;
    end;
  TxkbSetDeviceInfoReq = TxkbSetDeviceInfo;
  PxkbSetDeviceInfoReq = ^TxkbSetDeviceInfoReq;

const
  sz_xkbSetDeviceInfoReq = 12;  

type
  PxkbSetDebuggingFlags = ^TxkbSetDebuggingFlags;
  TxkbSetDebuggingFlags = record
      reqType : TCARD8;
      xkbReqType : TCARD8;
      length : TCARD16;
      msgLength : TCARD16;
      pad : TCARD16;
      affectFlags : TCARD32;
      flags : TCARD32;
      affectCtrls : TCARD32;
      ctrls : TCARD32;
    end;
  TxkbSetDebuggingFlagsReq = TxkbSetDebuggingFlags;
  PxkbSetDebuggingFlagsReq = ^TxkbSetDebuggingFlagsReq;

const
  sz_xkbSetDebuggingFlagsReq = 24;  

type
  PxkbSetDebuggingFlagsReply = ^TxkbSetDebuggingFlagsReply;
  TxkbSetDebuggingFlagsReply = record
      _type : TBYTE;
      pad0 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      currentFlags : TCARD32;
      currentCtrls : TCARD32;
      supportedFlags : TCARD32;
      supportedCtrls : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
    end;

const
  sz_xkbSetDebuggingFlagsReply = 32;  

type
  PxkbAnyEvent = ^TxkbAnyEvent;
  TxkbAnyEvent = record
      _type : TBYTE;
      xkbType : TBYTE;
      sequenceNumber : TCARD16;
      time : TTime;
      deviceID : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD16;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
      pad7 : TCARD32;
    end;

const
  sz_xkbAnyEvent = 32;  
type
  PxkbNewKeyboardNotify = ^TxkbNewKeyboardNotify;
  TxkbNewKeyboardNotify = record
      _type : TBYTE;
      xkbType : TBYTE;
      sequenceNumber : TCARD16;
      time : TTime;
      deviceID : TCARD8;
      oldDeviceID : TCARD8;
      minKeyCode : TKeyCode;
      maxKeyCode : TKeyCode;
      oldMinKeyCode : TKeyCode;
      oldMaxKeyCode : TKeyCode;
      requestMajor : TCARD8;
      requestMinor : TCARD8;
      changed : TCARD16;
      detail : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xkbNewKeyboardNotify = 32;  
type
  PxkbMapNotify = ^TxkbMapNotify;
  TxkbMapNotify = record
      _type : TBYTE;
      xkbType : TBYTE;
      sequenceNumber : TCARD16;
      time : TTime;
      deviceID : TCARD8;
      ptrBtnActions : TCARD8;
      changed : TCARD16;
      minKeyCode : TKeyCode;
      maxKeyCode : TKeyCode;
      firstType : TCARD8;
      nTypes : TCARD8;
      firstKeySym : TKeyCode;
      nKeySyms : TCARD8;
      firstKeyAct : TKeyCode;
      nKeyActs : TCARD8;
      firstKeyBehavior : TKeyCode;
      nKeyBehaviors : TCARD8;
      firstKeyExplicit : TKeyCode;
      nKeyExplicit : TCARD8;
      firstModMapKey : TKeyCode;
      nModMapKeys : TCARD8;
      firstVModMapKey : TKeyCode;
      nVModMapKeys : TCARD8;
      virtualMods : TCARD16;
      pad1 : TCARD16;
    end;

const
  sz_xkbMapNotify = 32;  
type
  PxkbStateNotify = ^TxkbStateNotify;
  TxkbStateNotify = record
      _type : TBYTE;
      xkbType : TBYTE;
      sequenceNumber : TCARD16;
      time : TTime;
      deviceID : TCARD8;
      mods : TCARD8;
      baseMods : TCARD8;
      latchedMods : TCARD8;
      lockedMods : TCARD8;
      group : TCARD8;
      baseGroup : TINT16;
      latchedGroup : TINT16;
      lockedGroup : TCARD8;
      compatState : TCARD8;
      grabMods : TCARD8;
      compatGrabMods : TCARD8;
      lookupMods : TCARD8;
      compatLookupMods : TCARD8;
      ptrBtnState : TCARD16;
      changed : TCARD16;
      keycode : TKeyCode;
      eventType : TCARD8;
      requestMajor : TCARD8;
      requestMinor : TCARD8;
    end;

const
  sz_xkbStateNotify = 32;  
type
  PxkbControlsNotify = ^TxkbControlsNotify;
  TxkbControlsNotify = record
      _type : TBYTE;
      xkbType : TBYTE;
      sequenceNumber : TCARD16;
      time : TTime;
      deviceID : TCARD8;
      numGroups : TCARD8;
      pad1 : TCARD16;
      changedControls : TCARD32;
      enabledControls : TCARD32;
      enabledControlChanges : TCARD32;
      keycode : TKeyCode;
      eventType : TCARD8;
      requestMajor : TCARD8;
      requestMinor : TCARD8;
      pad2 : TCARD32;
    end;

const
  sz_xkbControlsNotify = 32;  
type
  PxkbIndicatorNotify = ^TxkbIndicatorNotify;
  TxkbIndicatorNotify = record
      _type : TBYTE;
      xkbType : TBYTE;
      sequenceNumber : TCARD16;
      time : TTime;
      deviceID : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD16;
      state : TCARD32;
      changed : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xkbIndicatorNotify = 32;  
type
  PxkbNamesNotify = ^TxkbNamesNotify;
  TxkbNamesNotify = record
      _type : TBYTE;
      xkbType : TBYTE;
      sequenceNumber : TCARD16;
      time : TTime;
      deviceID : TCARD8;
      pad1 : TCARD8;
      changed : TCARD16;
      firstType : TCARD8;
      nTypes : TCARD8;
      firstLevelName : TCARD8;
      nLevelNames : TCARD8;
      pad2 : TCARD8;
      nRadioGroups : TCARD8;
      nAliases : TCARD8;
      changedGroupNames : TCARD8;
      changedVirtualMods : TCARD16;
      firstKey : TCARD8;
      nKeys : TCARD8;
      changedIndicators : TCARD32;
      pad3 : TCARD32;
    end;

const
  sz_xkbNamesNotify = 32;  
type
  PxkbCompatMapNotify = ^TxkbCompatMapNotify;
  TxkbCompatMapNotify = record
      _type : TBYTE;
      xkbType : TBYTE;
      sequenceNumber : TCARD16;
      time : TTime;
      deviceID : TCARD8;
      changedGroups : TCARD8;
      firstSI : TCARD16;
      nSI : TCARD16;
      nTotalSI : TCARD16;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xkbCompatMapNotify = 32;  
type
  PxkbBellNotify = ^TxkbBellNotify;
  TxkbBellNotify = record
      _type : TBYTE;
      xkbType : TBYTE;
      sequenceNumber : TCARD16;
      time : TTime;
      deviceID : TCARD8;
      bellClass : TCARD8;
      bellID : TCARD8;
      percent : TCARD8;
      pitch : TCARD16;
      duration : TCARD16;
      name : TAtom;
      window : TWindow;
      eventOnly : TBOOL;
      pad1 : TCARD8;
      pad2 : TCARD16;
      pad3 : TCARD32;
    end;

const
  sz_xkbBellNotify = 32;  
type
  PxkbActionMessage = ^TxkbActionMessage;
  TxkbActionMessage = record
      _type : TBYTE;
      xkbType : TBYTE;
      sequenceNumber : TCARD16;
      time : TTime;
      deviceID : TCARD8;
      keycode : TKeyCode;
      press : TBOOL;
      keyEventFollows : TBOOL;
      mods : TCARD8;
      group : TCARD8;
      message : array[0..7] of TCARD8;
      pad1 : TCARD16;
      pad2 : TCARD32;
      pad3 : TCARD32;
    end;

const
  sz_xkbActionMessage = 32;  
type
  PxkbAccessXNotify = ^TxkbAccessXNotify;
  TxkbAccessXNotify = record
      _type : TBYTE;
      xkbType : TBYTE;
      sequenceNumber : TCARD16;
      time : TTime;
      deviceID : TCARD8;
      keycode : TKeyCode;
      detail : TCARD16;
      slowKeysDelay : TCARD16;
      debounceDelay : TCARD16;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xkbAccessXNotify = 32;  
type
  PxkbExtensionDeviceNotify = ^TxkbExtensionDeviceNotify;
  TxkbExtensionDeviceNotify = record
      _type : TBYTE;
      xkbType : TBYTE;
      sequenceNumber : TCARD16;
      time : TTime;
      deviceID : TCARD8;
      pad1 : TCARD8;
      reason : TCARD16;
      ledClass : TCARD16;
      ledID : TCARD16;
      ledsDefined : TCARD32;
      ledState : TCARD32;
      firstBtn : TCARD8;
      nBtns : TCARD8;
      supported : TCARD16;
      unsupported : TCARD16;
      pad3 : TCARD16;
    end;

const
  sz_xkbExtensionDeviceNotify = 32;  
type
  PxkbEvent = ^TxkbEvent;
  TxkbEvent = record
      u : record
          case longint of
            0 : ( any : TxkbAnyEvent );
            1 : ( new_kbd : TxkbNewKeyboardNotify );
            2 : ( map : TxkbMapNotify );
            3 : ( state : TxkbStateNotify );
            4 : ( ctrls : TxkbControlsNotify );
            5 : ( indicators : TxkbIndicatorNotify );
            6 : ( names : TxkbNamesNotify );
            7 : ( compat : TxkbCompatMapNotify );
            8 : ( bell : TxkbBellNotify );
            9 : ( message : TxkbActionMessage );
            10 : ( accessx : TxkbAccessXNotify );
            11 : ( device : TxkbExtensionDeviceNotify );
          end;
    end;

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
  XkbPaddedSize:=((dword(Tn(+(3)))) shr 2) shl 2;
end;


end.
