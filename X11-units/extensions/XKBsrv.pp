
unit XKBsrv;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/XKBsrv.h
  The following command line parameters were used:
    /usr/include/X11/extensions/XKBsrv.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/XKBsrv.pp
}

    Type
    P_xEvent  = ^_xEvent;
    PBool  = ^Bool;
    Pchar  = ^char;
    Pdword  = ^dword;
    PKeybdCtrl  = ^KeybdCtrl;
    PKeySym  = ^KeySym;
    Plongint  = ^longint;
    PxkbAccessXNotify  = ^xkbAccessXNotify;
    PXkbAction  = ^XkbAction;
    PxkbActionMessage  = ^xkbActionMessage;
    PxkbCompatMapNotify  = ^xkbCompatMapNotify;
    PxkbControlsNotify  = ^xkbControlsNotify;
    PxkbExtensionDeviceNotify  = ^xkbExtensionDeviceNotify;
    PxkbIndicatorNotify  = ^xkbIndicatorNotify;
    PxkbMapNotify  = ^xkbMapNotify;
    PxkbNamesNotify  = ^xkbNamesNotify;
    PxkbNewKeyboardNotify  = ^xkbNewKeyboardNotify;
    PxkbStateNotify  = ^xkbStateNotify;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XKBSRV_H_}
{$define _XKBSRV_H_}  
{$ifdef XKB_IN_SERVER}

  const
    XkbAllocClientMap = SrvXkbAllocClientMap;    
    XkbAllocServerMap = SrvXkbAllocServerMap;    
    XkbChangeTypesOfKey = SrvXkbChangeTypesOfKey;    
    XkbAddKeyType = SrvXkbAddKeyType;    
    XkbCopyKeyType = SrvXkbCopyKeyType;    
    XkbCopyKeyTypes = SrvXkbCopyKeyTypes;    
    XkbFreeClientMap = SrvXkbFreeClientMap;    
    XkbFreeServerMap = SrvXkbFreeServerMap;    
    XkbInitCanonicalKeyTypes = SrvXkbInitCanonicalKeyTypes;    
    XkbKeyTypesForCoreSymbols = SrvXkbKeyTypesForCoreSymbols;    
    XkbApplyCompatMapToKey = SrvXkbApplyCompatMapToKey;    
    XkbUpdateMapFromCore = SrvXkbUpdateMapFromCore;    
    XkbResizeKeyActions = SrvXkbResizeKeyActions;    
    XkbResizeKeySyms = SrvXkbResizeKeySyms;    
    XkbResizeKeyType = SrvXkbResizeKeyType;    
    XkbAllocCompatMap = SrvXkbAllocCompatMap;    
    XkbAllocControls = SrvXkbAllocControls;    
    XkbAllocIndicatorMaps = SrvXkbAllocIndicatorMaps;    
    XkbAllocKeyboard = SrvXkbAllocKeyboard;    
    XkbAllocNames = SrvXkbAllocNames;    
    XkbFreeCompatMap = SrvXkbFreeCompatMap;    
    XkbFreeControls = SrvXkbFreeControls;    
    XkbFreeIndicatorMaps = SrvXkbFreeIndicatorMaps;    
    XkbFreeKeyboard = SrvXkbFreeKeyboard;    
    XkbFreeNames = SrvXkbFreeNames;    
    XkbAddDeviceLedInfo = SrvXkbAddDeviceLedInfo;    
    XkbAllocDeviceInfo = SrvXkbAllocDeviceInfo;    
    XkbFreeDeviceInfo = SrvXkbFreeDeviceInfo;    
    XkbResizeDeviceButtonActions = SrvXkbResizeDeviceButtonActions;    
    XkbLatchModifiers = SrvXkbLatchModifiers;    
    XkbLatchGroup = SrvXkbLatchGroup;    
    XkbVirtualModsToReal = SrvXkbVirtualModsToReal;    
    XkbChangeKeycodeRange = SrvXkbChangeKeycodeRange;    
    XkbApplyVirtualModChanges = SrvXkbApplyVirtualModChanges;    
    XkbUpdateActionVirtualMods = SrvXkbUpdateActionVirtualMods;    
    XkbUpdateKeyTypeVirtualMods = SrvXkbUpdateKeyTypeVirtualMods;    
{$endif}
{$include <X11/extensions/XKBstr.h>}
{$include <X11/extensions/XKBproto.h>}
{$include "inputstr.h"}

  type
    _XkbInterest = record
        dev : DeviceIntPtr;
        client : ClientPtr;
        resource : XID;
        next : ^_XkbInterest;
        extDevNotifyMask : CARD16;
        stateNotifyMask : CARD16;
        namesNotifyMask : CARD16;
        ctrlsNotifyMask : CARD32;
        compatNotifyMask : CARD8;
        bellNotifyMask : BOOL;
        actionMessageMask : BOOL;
        accessXNotifyMask : CARD16;
        iStateNotifyMask : CARD32;
        iMapNotifyMask : CARD32;
        altSymsNotifyMask : CARD16;
        autoCtrls : CARD32;
        autoCtrlValues : CARD32;
      end;
    XkbInterestRec = _XkbInterest;
    XkbInterestPtr = ^_XkbInterest;

    _XkbRadioGroup = record
        flags : CARD8;
        nMembers : CARD8;
        dfltDown : CARD8;
        currentDown : CARD8;
        members : array[0..(XkbRGMaxMembers)-1] of CARD8;
      end;
    XkbRadioGroupRec = _XkbRadioGroup;
    XkbRadioGroupPtr = ^_XkbRadioGroup;

    _XkbEventCause = record
        kc : CARD8;
        event : CARD8;
        mjr : CARD8;
        mnr : CARD8;
        client : ClientPtr;
      end;
    XkbEventCauseRec = _XkbEventCause;
    XkbEventCausePtr = ^_XkbEventCause;
(* error 
#define	XkbSetCauseKey(c,k,e)	{ (c)->kc= (k),(c)->event= (e),\
in declaration at line 109 *)
(* error 
				  (c)->mjr= (c)->mnr= 0; \
(* error 
				  (c)->client= NULL; }
in declaration at line 110 *)
(* error 
				  (c)->client= NULL; }
in declaration at line 112 *)
(* error 
				  (c)->mjr= (j),(c)->mnr= (n);\
(* error 
				  (c)->client= (cl); }
in declaration at line 113 *)
(* error 
				  (c)->client= (cl); }
in define line 114 *)

    function XkbSetCauseXkbReq(c,e,cl : longint) : longint;    

  function XkbSetCauseUnknown(c : longint) : longint;  

  const
    _OFF_TIMER = 0;    
    _KRG_WARN_TIMER = 1;    
    _KRG_TIMER = 2;    
    _SK_TIMEOUT_TIMER = 3;    
    _ALL_TIMEOUT_TIMER = 4;    
    _BEEP_NONE = 0;    
    _BEEP_FEATURE_ON = 1;    
    _BEEP_FEATURE_OFF = 2;    
    _BEEP_FEATURE_CHANGE = 3;    
    _BEEP_SLOW_WARN = 4;    
    _BEEP_SLOW_PRESS = 5;    
    _BEEP_SLOW_ACCEPT = 6;    
    _BEEP_SLOW_REJECT = 7;    
    _BEEP_SLOW_RELEASE = 8;    
    _BEEP_STICKY_LATCH = 9;    
    _BEEP_STICKY_LOCK = 10;    
    _BEEP_STICKY_UNLOCK = 11;    
    _BEEP_LED_ON = 12;    
    _BEEP_LED_OFF = 13;    
    _BEEP_LED_CHANGE = 14;    
    _BEEP_BOUNCE_REJECT = 15;    

  type
    _XkbSrvInfo = record
        prev_state : XkbStateRec;
        state : XkbStateRec;
        desc : XkbDescPtr;
        device : DeviceIntPtr;
        kbdProc : KbdCtrlProcPtr;
        radioGroups : XkbRadioGroupPtr;
        nRadioGroups : CARD8;
        clearMods : CARD8;
        setMods : CARD8;
        groupChange : INT16;
        dfltPtrDelta : CARD16;
        mouseKeysCurve : double;
        mouseKeysCurveFactor : double;
        mouseKeysDX : INT16;
        mouseKeysDY : INT16;
        mouseKeysFlags : CARD8;
        mouseKeysAccel : Bool;
        mouseKeysCounter : CARD8;
        lockedPtrButtons : CARD8;
        shiftKeyCount : CARD8;
        mouseKey : KeyCode;
        inactiveKey : KeyCode;
        slowKey : KeyCode;
        repeatKey : KeyCode;
        krgTimerActive : CARD8;
        beepType : CARD8;
        beepCount : CARD8;
        flags : CARD32;
        lastPtrEventTime : CARD32;
        lastShiftEventTime : CARD32;
        beepTimer : OsTimerPtr;
        mouseKeyTimer : OsTimerPtr;
        slowKeysTimer : OsTimerPtr;
        bounceKeysTimer : OsTimerPtr;
        repeatKeyTimer : OsTimerPtr;
        krgTimer : OsTimerPtr;
      end;
    XkbSrvInfoRec = _XkbSrvInfo;
    XkbSrvInfoPtr = ^_XkbSrvInfo;

  const
    XkbSLI_IsDefault = 1 shl 0;    
    XkbSLI_HasOwnState = 1 shl 1;    

  type
    _XkbSrvLedInfo = record
        flags : CARD16;
        _class : CARD16;
        id : CARD16;
        fb : record
            case longint of
              0 : ( kf : KbdFeedbackPtr );
              1 : ( lf : LedFeedbackPtr );
            end;
        physIndicators : CARD32;
        autoState : CARD32;
        explicitState : CARD32;
        effectiveState : CARD32;
        mapsPresent : CARD32;
        namesPresent : CARD32;
        maps : XkbIndicatorMapPtr;
        names : ^Atom;
        usesBase : CARD32;
        usesLatched : CARD32;
        usesLocked : CARD32;
        usesEffective : CARD32;
        usesCompat : CARD32;
        usesControls : CARD32;
        usedComponents : CARD32;
      end;
    XkbSrvLedInfoRec = _XkbSrvLedInfo;
    XkbSrvLedInfoPtr = ^_XkbSrvLedInfo;


  const
    _XkbClientInitialized = 1 shl 15;    
(* error 
	((c)->xkbClientFlags&XkbPCF_DetectableAutoRepeatMask)
in define line 225 *)

      _XkbStateNotifyInProgress = 1 shl 0;      

    type
      xkbDeviceInfoRec = record
          processInputProc : ProcessInputProc;
          realInputProc : ProcessInputProc;
          unwrapProc : DeviceUnwrapProc;
        end;
      xkbDeviceInfoPtr = ^xkbDeviceInfoRec;
(* error 
	device->public.processInputProc = proc; \
in declaration at line 240 *)
(* error 
	device->public.processInputProc = proc; \
(* error 
	oldprocs->processInputProc = \
in declaration at line 242 *)
(* error 
	oldprocs->realInputProc = device->public.realInputProc; \
(* error 
	device->public.realInputProc = proc; \
in declaration at line 243 *)
(* error 
	device->public.realInputProc = proc; \
(* error 
	oldprocs->unwrapProc = device->unwrapProc; \
in declaration at line 244 *)
(* error 
	oldprocs->unwrapProc = device->unwrapProc; \
(* error 
	device->unwrapProc = unwrapproc;
in declaration at line 245 *)
(* error 
	    device->public.processInputProc = proc; \
in declaration at line 249 *)
(* error 
	    device->public.processInputProc = proc; \
(* error 
	oldprocs->processInputProc = \
in declaration at line 251 *)
(* error 
	oldprocs->realInputProc = device->public.realInputProc; \
(* error 
	device->public.realInputProc = proc; \
in declaration at line 252 *)
(* error 
	device->public.realInputProc = proc; \
(* error 
	oldprocs->unwrapProc = device->unwrapProc; \
in declaration at line 253 *)
(* error 
	oldprocs->unwrapProc = device->unwrapProc; \
(* error 
	device->unwrapProc = unwrapproc;
in declaration at line 254 *)
(* error 
	device->public.processInputProc = oldprocs->processInputProc; \
in declaration at line 257 *)
(* error 
	device->public.processInputProc = oldprocs->processInputProc; \
(* error 
	device->public.realInputProc = oldprocs->realInputProc; \
in declaration at line 258 *)
(* error 
	device->public.realInputProc = oldprocs->realInputProc; \
(* error 
	device->unwrapProc = oldprocs->unwrapProc;
in declaration at line 259 *)

    function XKBDEVICEINFO(dev : longint) : xkbDeviceInfoPtr;    



  const
    XkbAX_KRGMask = XkbSlowKeysMask or XkbBounceKeysMask;    
    XkbAllFilteredEventsMask = ((XkbAccessXKeysMask or XkbRepeatKeysMask) or XkbMouseKeysAccelMask) or XkbAX_KRGMask;    


    var
      XkbReqCode : longint;cvar;external;
      XkbEventBase : longint;cvar;external;
      XkbKeyboardErrorCode : longint;cvar;external;
      XkbDisableLockActions : longint;cvar;external;
      XkbBaseDirectory : ^char;cvar;external;
      XkbBinDirectory : ^char;cvar;external;
      XkbInitialMap : ^char;cvar;external;
      _XkbClientMajor : longint;cvar;external;
      _XkbClientMinor : longint;cvar;external;
      XkbXIUnsupported : dword;cvar;external;
      XkbModelUsed : ^char;cvar;external;
      noXkbExtension : Bool;cvar;external;
      XkbWantRulesProp : Bool;cvar;external;
      XkbLastRepeatEvent : pointer;cvar;external;
      xkbDebugFlags : CARD32;cvar;external;
      xkbDebugCtrls : CARD32;cvar;external;

  function _XkbAlloc(s : longint) : longint;  

function _XkbCalloc(n,s : longint) : longint;

function _XkbRealloc(o,s : longint) : longint;

function _XkbTypedAlloc(t : longint) : pt;

function _XkbTypedCalloc(n,t : longint) : pt;

function _XkbTypedRealloc(o,n,t : longint) : longint;

(* error 
#define	_XkbClearElems(a,f,l,t)	bzero(&(a)[f],((l)-(f)+1)*sizeof(t))
in define line 301 *)
    function _XkbFree(p : longint) : longint;    

(* error 
	{ _XkbErrCode= (c); _XkbErrLocation= (l); _XkbErrData= (d); }
in declaration at line 305 *)
(* error 
	{ _XkbErrCode= (c); _XkbErrLocation= (l); _XkbErrData= (d); }
in declaration at line 305 *)
(* error 
	{ _XkbErrCode= (c); _XkbErrLocation= (l); _XkbErrData= (d); }
in declaration at line 305 *)
(* error 
	{ _XkbErrCode= (c); _XkbErrLocation= (l); _XkbErrData= (d); }
in define line 306 *)
    function _XkbErrCode3(a,b,c : longint) : longint;    

  function _XkbErrCode4(a,b,c,d : longint) : longint;  


  var
    DeviceKeyPress : longint;cvar;external;
    DeviceButtonPress : longint;cvar;external;
{$ifdef XINPUT}
(* error 
#define	_XkbIsPressEvent(t)	(((t)==KeyPress)||((t)==DeviceKeyPress))
in define line 314 *)
(* error 
#define	_XkbIsReleaseEvent(t)	(((t)==KeyRelease)||((t)==DeviceKeyRelease))
in define line 315 *)
{$else}

    function _XkbIsPressEvent(t : longint) : longint;    

  function _XkbIsReleaseEvent(t : longint) : longint;  

{$endif}

function _XkbCoreKeycodeInRange(c,k : longint) : longint;

function _XkbCoreNumKeys(c : longint) : longint;

function XConvertCase(s,l,u : longint) : longint;

{$undef	IsKeypadKey}
function IsKeypadKey(s : longint) : longint;


type
  Status = longint;

  XPointer = pointer;
  _XDisplay = Display;
{$ifndef True}

const
  True = 1;  
  False = 0;  
{$endif}
{$ifndef PATH_MAX}
{$ifdef MAXPATHLEN}

const
  PATH_MAX = MAXPATHLEN;  
{$else}

const
  PATH_MAX = 1024;  
{$endif}
{$endif}
(* error 
extern void XkbUseMsg(
in declaration at line 351 *)


    function XkbProcessArguments(_para1:longint; _para2:PPchar; _para3:longint):longint;cdecl;

    procedure XkbSetExtension(device:DeviceIntPtr; proc:ProcessInputProc);cdecl;


    procedure XkbFreeCompatMap(_para1:XkbDescPtr; _para2:dword; _para3:Bool);cdecl;


    procedure XkbFreeNames(_para1:XkbDescPtr; _para2:dword; _para3:Bool);cdecl;


    function _XkbLookupAnyDevice(_para1:longint; _para2:Plongint):DeviceIntPtr;cdecl;


    function _XkbLookupKeyboard(_para1:longint; _para2:Plongint):DeviceIntPtr;cdecl;


    function _XkbLookupBellDevice(_para1:longint; _para2:Plongint):DeviceIntPtr;cdecl;


    function _XkbLookupLedDevice(_para1:longint; _para2:Plongint):DeviceIntPtr;cdecl;


    function _XkbLookupButtonDevice(_para1:longint; _para2:Plongint):DeviceIntPtr;cdecl;

    function XkbAllocKeyboard:XkbDescPtr;cdecl;


    function XkbAllocClientMap(_para1:XkbDescPtr; _para2:dword; _para3:dword):Status;cdecl;


    function XkbAllocServerMap(_para1:XkbDescPtr; _para2:dword; _para3:dword):Status;cdecl;


    procedure XkbFreeClientMap(_para1:XkbDescPtr; _para2:dword; _para3:Bool);cdecl;


    procedure XkbFreeServerMap(_para1:XkbDescPtr; _para2:dword; _para3:Bool);cdecl;


    function XkbAllocIndicatorMaps(_para1:XkbDescPtr):Status;cdecl;


    function XkbAllocCompatMap(_para1:XkbDescPtr; _para2:dword; _para3:dword):Status;cdecl;


    function XkbAllocNames(_para1:XkbDescPtr; _para2:dword; _para3:longint; _para4:longint):Status;cdecl;


    function XkbAllocControls(_para1:XkbDescPtr; _para2:dword):Status;cdecl;


    function XkbCopyKeyType(_para1:XkbKeyTypePtr; _para2:XkbKeyTypePtr):Status;cdecl;


    function XkbCopyKeyTypes(_para1:XkbKeyTypePtr; _para2:XkbKeyTypePtr; _para3:longint):Status;cdecl;


    function XkbResizeKeyType(_para1:XkbDescPtr; _para2:longint; _para3:longint; _para4:Bool; _para5:longint):Status;cdecl;


    procedure XkbFreeKeyboard(_para1:XkbDescPtr; _para2:dword; _para3:Bool);cdecl;


    procedure XkbSetActionKeyMods(_para1:XkbDescPtr; _para2:PXkbAction; _para3:dword);cdecl;


    function XkbCheckActionVMods(_para1:XkbDescPtr; _para2:PXkbAction; _para3:dword):Bool;cdecl;


    function XkbApplyVModChanges(_para1:XkbSrvInfoPtr; _para2:dword; _para3:XkbChangesPtr; _para4:Pdword; _para5:XkbEventCausePtr):Bool;cdecl;


    procedure XkbApplyVModChangesToAllDevices(_para1:DeviceIntPtr; _para2:XkbDescPtr; _para3:dword; _para4:XkbEventCausePtr);cdecl;


    function XkbMaskForVMask(_para1:XkbDescPtr; _para2:dword):dword;cdecl;


    function XkbVirtualModsToReal(_para1:XkbDescPtr; _para2:dword; _para3:Pdword):Bool;cdecl;


    function XkbAdjustGroup(_para1:longint; _para2:XkbControlsPtr):dword;cdecl;


    function XkbResizeKeySyms(_para1:XkbDescPtr; _para2:longint; _para3:longint):^KeySym;cdecl;


    function XkbResizeKeyActions(_para1:XkbDescPtr; _para2:longint; _para3:longint):^XkbAction;cdecl;


    procedure XkbUpdateKeyTypesFromCore(_para1:DeviceIntPtr; _para2:KeyCode; _para3:CARD8; _para4:XkbChangesPtr);cdecl;


    procedure XkbUpdateDescActions(_para1:XkbDescPtr; _para2:KeyCode; _para3:CARD8; _para4:XkbChangesPtr);cdecl;


    procedure XkbUpdateActions(_para1:DeviceIntPtr; _para2:KeyCode; _para3:CARD8; _para4:XkbChangesPtr; _para5:Pdword; 
                _para6:XkbEventCausePtr);cdecl;


    procedure XkbUpdateCoreDescription(_para1:DeviceIntPtr; _para2:Bool);cdecl;


    procedure XkbApplyMappingChange(_para1:DeviceIntPtr; _para2:CARD8; _para3:KeyCode; _para4:CARD8; _para5:ClientPtr);cdecl;


    procedure XkbSetIndicators(_para1:DeviceIntPtr; _para2:CARD32; _para3:CARD32; _para4:XkbEventCausePtr);cdecl;


    procedure XkbUpdateIndicators(_para1:DeviceIntPtr; _para2:CARD32; _para3:Bool; _para4:XkbChangesPtr; _para5:XkbEventCausePtr);cdecl;


    function XkbAllocSrvLedInfo(_para1:DeviceIntPtr; _para2:KbdFeedbackPtr; _para3:LedFeedbackPtr; _para4:dword):XkbSrvLedInfoPtr;cdecl;


    function XkbFindSrvLedInfo(_para1:DeviceIntPtr; _para2:dword; _para3:dword; _para4:dword):XkbSrvLedInfoPtr;cdecl;


    procedure XkbApplyLedNameChanges(_para1:DeviceIntPtr; _para2:XkbSrvLedInfoPtr; _para3:dword; _para4:PxkbExtensionDeviceNotify; _para5:XkbChangesPtr; 
                _para6:XkbEventCausePtr);cdecl;


    procedure XkbApplyLedMapChanges(_para1:DeviceIntPtr; _para2:XkbSrvLedInfoPtr; _para3:dword; _para4:PxkbExtensionDeviceNotify; _para5:XkbChangesPtr; 
                _para6:XkbEventCausePtr);cdecl;


    procedure XkbApplyLedStateChanges(_para1:DeviceIntPtr; _para2:XkbSrvLedInfoPtr; _para3:dword; _para4:PxkbExtensionDeviceNotify; _para5:XkbChangesPtr; 
                _para6:XkbEventCausePtr);cdecl;


    procedure XkbUpdateLedAutoState(_para1:DeviceIntPtr; _para2:XkbSrvLedInfoPtr; _para3:dword; _para4:PxkbExtensionDeviceNotify; _para5:XkbChangesPtr; 
                _para6:XkbEventCausePtr);cdecl;


    procedure XkbFlushLedEvents(_para1:DeviceIntPtr; _para2:DeviceIntPtr; _para3:XkbSrvLedInfoPtr; _para4:PxkbExtensionDeviceNotify; _para5:XkbChangesPtr; 
                _para6:XkbEventCausePtr);cdecl;


    procedure XkbUpdateAllDeviceIndicators(_para1:XkbChangesPtr; _para2:XkbEventCausePtr);cdecl;


    function XkbIndicatorsToUpdate(_para1:DeviceIntPtr; _para2:dword; _para3:Bool):dword;cdecl;


    procedure XkbComputeDerivedState(_para1:XkbSrvInfoPtr);cdecl;


    procedure XkbCheckSecondaryEffects(_para1:XkbSrvInfoPtr; _para2:dword; _para3:XkbChangesPtr; _para4:XkbEventCausePtr);cdecl;


    procedure XkbCheckIndicatorMaps(_para1:DeviceIntPtr; _para2:XkbSrvLedInfoPtr; _para3:dword);cdecl;


    function XkbStateChangedFlags(_para1:XkbStatePtr; _para2:XkbStatePtr):dword;cdecl;


    procedure XkbSendStateNotify(_para1:DeviceIntPtr; _para2:PxkbStateNotify);cdecl;


    procedure XkbSendMapNotify(_para1:DeviceIntPtr; _para2:PxkbMapNotify);cdecl;


    function XkbComputeControlsNotify(_para1:DeviceIntPtr; _para2:XkbControlsPtr; _para3:XkbControlsPtr; _para4:PxkbControlsNotify; _para5:Bool):longint;cdecl;


    procedure XkbSendControlsNotify(_para1:DeviceIntPtr; _para2:PxkbControlsNotify);cdecl;


    procedure XkbSendCompatMapNotify(_para1:DeviceIntPtr; _para2:PxkbCompatMapNotify);cdecl;


    procedure XkbSendIndicatorNotify(_para1:DeviceIntPtr; _para2:longint; _para3:PxkbIndicatorNotify);cdecl;


    procedure XkbHandleBell(_para1:BOOL; _para2:BOOL; _para3:DeviceIntPtr; _para4:CARD8; _para5:pointer; 
                _para6:CARD8; _para7:Atom; _para8:WindowPtr; _para9:ClientPtr);cdecl;


    procedure XkbSendAccessXNotify(_para1:DeviceIntPtr; _para2:PxkbAccessXNotify);cdecl;


    procedure XkbSendNamesNotify(_para1:DeviceIntPtr; _para2:PxkbNamesNotify);cdecl;


    procedure XkbSendCompatNotify(_para1:DeviceIntPtr; _para2:PxkbCompatMapNotify);cdecl;


    procedure XkbSendActionMessage(_para1:DeviceIntPtr; _para2:PxkbActionMessage);cdecl;


    procedure XkbSendExtensionDeviceNotify(_para1:DeviceIntPtr; _para2:ClientPtr; _para3:PxkbExtensionDeviceNotify);cdecl;


    procedure XkbSendNotification(_para1:DeviceIntPtr; _para2:XkbChangesPtr; _para3:XkbEventCausePtr);cdecl;


    procedure XkbProcessKeyboardEvent(_para1:P_xEvent; _para2:DeviceIntPtr; _para3:longint);cdecl;


    procedure XkbProcessOtherEvent(_para1:P_xEvent; _para2:DeviceIntPtr; _para3:longint);cdecl;


    procedure XkbHandleActions(_para1:DeviceIntPtr; _para2:DeviceIntPtr; _para3:P_xEvent; _para4:longint);cdecl;


    function XkbEnableDisableControls(_para1:XkbSrvInfoPtr; _para2:dword; _para3:dword; _para4:XkbChangesPtr; _para5:XkbEventCausePtr):Bool;cdecl;


    procedure AccessXInit(_para1:DeviceIntPtr);cdecl;

(* error 
    register struct _xEvent *	/* xE */,
(* error 
    register DeviceIntPtr	/* keybd */,
(* error 
    int				/* count */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    register struct _xEvent *	/* xE */,
(* error 
    register DeviceIntPtr	/* keybd */,
(* error 
    int				/* count */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

    procedure AccessXCancelRepeatKey(_para1:XkbSrvInfoPtr; _para2:KeyCode);cdecl;


    procedure AccessXComputeCurveFactor(_para1:XkbSrvInfoPtr; _para2:XkbControlsPtr);cdecl;


    function XkbAddDeviceLedInfo(_para1:XkbDeviceInfoPtr; _para2:dword; _para3:dword):XkbDeviceLedInfoPtr;cdecl;


    function XkbAllocDeviceInfo(_para1:dword; _para2:dword; _para3:dword):XkbDeviceInfoPtr;cdecl;


    procedure XkbFreeDeviceInfo(_para1:XkbDeviceInfoPtr; _para2:dword; _para3:Bool);cdecl;


    function XkbResizeDeviceButtonActions(_para1:XkbDeviceInfoPtr; _para2:dword):Status;cdecl;


    function XkbFindClientResource(_para1:DevicePtr; _para2:ClientPtr):XkbInterestPtr;cdecl;


    function XkbAddClientResource(_para1:DevicePtr; _para2:ClientPtr; _para3:XID):XkbInterestPtr;cdecl;


    function XkbRemoveClient(_para1:DevicePtr; _para2:ClientPtr):longint;cdecl;


    function XkbRemoveResourceClient(_para1:DevicePtr; _para2:XID):longint;cdecl;


    function XkbDDXInitDevice(_para1:DeviceIntPtr):longint;cdecl;


    function XkbDDXAccessXBeep(_para1:DeviceIntPtr; _para2:dword; _para3:dword):longint;cdecl;


    procedure XkbDDXKeyClick(_para1:DeviceIntPtr; _para2:longint; _para3:longint);cdecl;


    function XkbDDXUsesSoftRepeat(_para1:DeviceIntPtr):longint;cdecl;


    procedure XkbDDXKeybdCtrlProc(_para1:DeviceIntPtr; _para2:PKeybdCtrl);cdecl;


    procedure XkbDDXChangeControls(_para1:DeviceIntPtr; _para2:XkbControlsPtr; _para3:XkbControlsPtr);cdecl;


    procedure XkbDDXUpdateIndicators(_para1:DeviceIntPtr; _para2:CARD32);cdecl;


    procedure XkbDDXUpdateDeviceIndicators(_para1:DeviceIntPtr; _para2:XkbSrvLedInfoPtr; _para3:CARD32);cdecl;


    procedure XkbDDXFakePointerButton(_para1:longint; _para2:longint);cdecl;


    procedure XkbDDXFakePointerMotion(_para1:dword; _para2:longint; _para3:longint);cdecl;


    procedure XkbDDXFakeDeviceButton(_para1:DeviceIntPtr; _para2:Bool; _para3:longint);cdecl;


    function XkbDDXTerminateServer(_para1:DeviceIntPtr; _para2:KeyCode; _para3:PXkbAction):longint;cdecl;


    function XkbDDXSwitchScreen(_para1:DeviceIntPtr; _para2:KeyCode; _para3:PXkbAction):longint;cdecl;


    function XkbDDXPrivate(_para1:DeviceIntPtr; _para2:KeyCode; _para3:PXkbAction):longint;cdecl;


    procedure XkbDisableComputedAutoRepeats(_para1:DeviceIntPtr; _para2:dword);cdecl;


    procedure XkbSetRepeatKeys(_para1:DeviceIntPtr; _para2:longint; _para3:longint);cdecl;


    function XkbLatchModifiers(_para1:DeviceIntPtr; _para2:CARD8; _para3:CARD8):longint;cdecl;


    function XkbLatchGroup(_para1:DeviceIntPtr; _para2:longint):longint;cdecl;


    procedure XkbClearAllLatchesAndLocks(_para1:DeviceIntPtr; _para2:XkbSrvInfoPtr; _para3:Bool; _para4:XkbEventCausePtr);cdecl;


    procedure XkbSetRulesDflts(_para1:Pchar; _para2:Pchar; _para3:Pchar; _para4:Pchar; _para5:Pchar);cdecl;


    procedure XkbInitDevice(_para1:DeviceIntPtr);cdecl;

(* error 
	CARD8 			/* pMods */[],
 in declarator_list *)

(* error 
);
 in declarator_list *)

    function SProcXkbDispatch(_para1:ClientPtr):longint;cdecl;


    function XkbLookupNamedGeometry(_para1:DeviceIntPtr; _para2:Atom; _para3:PBool):XkbGeometryPtr;cdecl;


    function _XkbDupString(_para1:Pchar):^char;cdecl;


    procedure XkbConvertCase(_para1:KeySym; _para2:PKeySym; _para3:PKeySym);cdecl;


    function XkbChangeKeycodeRange(_para1:XkbDescPtr; _para2:longint; _para3:longint; _para4:XkbChangesPtr):Status;cdecl;


    function XkbFinishDeviceInit(_para1:DeviceIntPtr):longint;cdecl;


    procedure XkbFreeSrvLedInfo(_para1:XkbSrvLedInfoPtr);cdecl;


    procedure XkbFreeInfo(_para1:XkbSrvInfoPtr);cdecl;


    function XkbChangeTypesOfKey(_para1:XkbDescPtr; _para2:longint; _para3:longint; _para4:dword; _para5:Plongint; 
               _para6:XkbMapChangesPtr):Status;cdecl;


    function XkbAddKeyType(_para1:XkbDescPtr; _para2:Atom; _para3:longint; _para4:Bool; _para5:longint):XkbKeyTypePtr;cdecl;


    function XkbInitCanonicalKeyTypes(_para1:XkbDescPtr; _para2:dword; _para3:longint):Status;cdecl;


    function XkbKeyTypesForCoreSymbols(_para1:XkbDescPtr; _para2:longint; _para3:PKeySym; _para4:dword; _para5:Plongint; 
               _para6:PKeySym):longint;cdecl;


    function XkbApplyCompatMapToKey(_para1:XkbDescPtr; _para2:KeyCode; _para3:XkbChangesPtr):Bool;cdecl;


    function XkbUpdateMapFromCore(_para1:XkbDescPtr; _para2:KeyCode; _para3:longint; _para4:longint; _para5:PKeySym; 
               _para6:XkbChangesPtr):Bool;cdecl;


    procedure XkbFreeControls(_para1:XkbDescPtr; _para2:dword; _para3:Bool);cdecl;


    procedure XkbFreeIndicatorMaps(_para1:XkbDescPtr);cdecl;


    function XkbApplyVirtualModChanges(_para1:XkbDescPtr; _para2:dword; _para3:XkbChangesPtr):Bool;cdecl;


    function XkbUpdateActionVirtualMods(_para1:XkbDescPtr; _para2:PXkbAction; _para3:dword):Bool;cdecl;


    procedure XkbUpdateKeyTypeVirtualMods(_para1:XkbDescPtr; _para2:XkbKeyTypePtr; _para3:dword; _para4:XkbChangesPtr);cdecl;


    procedure XkbSendNewKeyboardNotify(_para1:DeviceIntPtr; _para2:PxkbNewKeyboardNotify);cdecl;

{$ifdef XKBSRV_NEED_FILE_FUNCS}
{$include <X11/extensions/XKMformat.h>}
{$include <X11/extensions/XKBfile.h>}
{$include <X11/extensions/XKBrules.h>}

    const
      _XkbListKeymaps = 0;      
      _XkbListKeycodes = 1;      
      _XkbListTypes = 2;      
      _XkbListCompat = 3;      
      _XkbListSymbols = 4;      
      _XkbListGeometry = 5;      
      _XkbListNumComponents = 6;      

    type
      _XkbSrvListInfo = record
          szPool : longint;
          nPool : longint;
          pool : ^char;
          maxRtrn : longint;
          nTotal : longint;
          pattern : array[0..(_XkbListNumComponents)-1] of ^char;
          nFound : array[0..(_XkbListNumComponents)-1] of longint;
        end;
      XkbSrvListInfoRec = _XkbSrvListInfo;
      XkbSrvListInfoPtr = ^_XkbSrvListInfo;


    function XkbGetRulesDflts(_para1:XkbRF_VarDefsPtr):^char;


    procedure XkbSetRulesUsed(_para1:XkbRF_VarDefsPtr);cdecl;


    function XkbDDXList(_para1:DeviceIntPtr; _para2:XkbSrvListInfoPtr; _para3:ClientPtr):Status;cdecl;


    function XkbDDXLoadKeymapByNames(_para1:DeviceIntPtr; _para2:XkbComponentNamesPtr; _para3:dword; _para4:dword; _para5:XkbFileInfoPtr; 
               _para6:Pchar; _para7:longint):dword;cdecl;


    function XkbDDXNamesFromRules(_para1:DeviceIntPtr; _para2:Pchar; _para3:XkbRF_VarDefsPtr; _para4:XkbComponentNamesPtr):Bool;cdecl;


    function XkbDDXOpenConfigFile(_para1:Pchar; _para2:Pchar; _para3:longint):^FILE;cdecl;


    function XkbDDXApplyConfig(_para1:XPointer; _para2:XkbSrvInfoPtr):Bool;cdecl;


    function XkbDDXPreloadConfig(_para1:PPchar; _para2:XkbRF_VarDefsPtr; _para3:XkbComponentNamesPtr; _para4:DeviceIntPtr):XPointer;cdecl;


    function _XkbStrCaseCmp(_para1:Pchar; _para2:Pchar):longint;cdecl;

{$endif}

(* error 
#define	XkbAtomGetString(d,s)	NameForAtom(s)
in define line 1180 *)
{$endif}


implementation

    function XkbSetCauseXkbReq(c,e,cl : longint) : longint;
    begin
      XkbSetCauseXkbReq:=XkbSetCauseReq(c,XkbReqCode,e,cl);
    end;

  function XkbSetCauseUnknown(c : longint) : longint;
  begin
    XkbSetCauseUnknown:=XkbSetCauseKey(c,0,0);
  end;

    function XKBDEVICEINFO(dev : longint) : xkbDeviceInfoPtr;
    begin
      XKBDEVICEINFO:=xkbDeviceInfoPtr(dev^.((devPrivates[xkbDevicePrivateIndex]).ptr));
    end;

  function _XkbAlloc(s : longint) : longint;
  begin
    _XkbAlloc:=xalloc(s);
  end;

function _XkbCalloc(n,s : longint) : longint;
begin
  _XkbCalloc:=Xcalloc(n*s);
end;

function _XkbRealloc(o,s : longint) : longint;
begin
  _XkbRealloc:=Xrealloc(o,s);
end;

function _XkbTypedAlloc(t : longint) : pt;
begin
  _XkbTypedAlloc:=pt(xalloc(sizeof(t)));
end;

function _XkbTypedCalloc(n,t : longint) : pt;
begin
  _XkbTypedCalloc:=pt(Xcalloc(n*(sizeof(t))));
end;

function _XkbTypedRealloc(o,n,t : longint) : longint;
var
   if_local1 : longint;
(* result types are not known *)
begin
  if o then
    if_local1:=pt(Xrealloc(o,n*(sizeof(t))))
  else
    if_local1:=_XkbTypedCalloc(n,t);
  _XkbTypedRealloc:=if_local1;
end;

    function _XkbFree(p : longint) : longint;
    begin
      _XkbFree:=Xfree(p);
    end;

    function _XkbErrCode3(a,b,c : longint) : longint;
    begin
      _XkbErrCode3:=_XkbErrCode2(a,((dword(b)) shl 16) or c);
    end;

  function _XkbErrCode4(a,b,c,d : longint) : longint;
  begin
    _XkbErrCode4:=_XkbErrCode3(a,b,((dword(c)) shl 8) or d);
  end;

    function _XkbIsPressEvent(t : longint) : longint;
    begin
      _XkbIsPressEvent:=t=KeyPress;
    end;

  function _XkbIsReleaseEvent(t : longint) : longint;
  begin
    _XkbIsReleaseEvent:=t=KeyRelease;
  end;

function _XkbCoreKeycodeInRange(c,k : longint) : longint;
begin
  _XkbCoreKeycodeInRange:=(k>=(c^.(curKeySyms.minKeyCode))) and (@(k<=(c^.(curKeySyms.maxKeyCode))));
end;

function _XkbCoreNumKeys(c : longint) : longint;
begin
  _XkbCoreNumKeys:=((c^.(curKeySyms.maxKeyCode))-(c^.(curKeySyms.minKeyCode)))+1;
end;

function XConvertCase(s,l,u : longint) : longint;
begin
  XConvertCase:=XkbConvertCase(s,l,u);
end;

function IsKeypadKey(s : longint) : longint;
begin
  IsKeypadKey:=XkbKSIsKeypad(s);
end;

    function XkbGetRulesDflts(_para1:XkbRF_VarDefsPtr):Pchar;
    begin
      { You must implement this function }
    end;

end.
