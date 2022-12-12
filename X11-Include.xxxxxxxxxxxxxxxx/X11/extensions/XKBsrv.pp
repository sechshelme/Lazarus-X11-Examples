
unit XKBsrv;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XKBsrv.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XKBsrv.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XKBsrv.pp
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
    PAtom  = ^Atom;
    PBool  = ^Bool;
    Pchar  = ^char;
    Pdword  = ^dword;
    PFILE  = ^FILE;
    PKeybdCtrl  = ^KeybdCtrl;
    PKeySym  = ^KeySym;
    Plongint  = ^longint;
    PStatus  = ^Status;
    Pt  = ^t;
    PxEvent  = ^xEvent;
    PxkbAccessXNotify  = ^xkbAccessXNotify;
    PXkbAction  = ^XkbAction;
    PxkbActionMessage  = ^xkbActionMessage;
    PxkbCompatMapNotify  = ^xkbCompatMapNotify;
    PxkbControlsNotify  = ^xkbControlsNotify;
    PxkbDeviceInfoPtr  = ^xkbDeviceInfoPtr;
    PxkbDeviceInfoRec  = ^xkbDeviceInfoRec;
    PXkbEventCause  = ^XkbEventCause;
    PXkbEventCausePtr  = ^XkbEventCausePtr;
    PXkbEventCauseRec  = ^XkbEventCauseRec;
    PxkbExtensionDeviceNotify  = ^xkbExtensionDeviceNotify;
    PxkbIndicatorNotify  = ^xkbIndicatorNotify;
    PXkbInterest  = ^XkbInterest;
    PXkbInterestPtr  = ^XkbInterestPtr;
    PXkbInterestRec  = ^XkbInterestRec;
    PxkbMapNotify  = ^xkbMapNotify;
    PxkbNamesNotify  = ^xkbNamesNotify;
    PxkbNewKeyboardNotify  = ^xkbNewKeyboardNotify;
    PXkbRadioGroup  = ^XkbRadioGroup;
    PXkbRadioGroupPtr  = ^XkbRadioGroupPtr;
    PXkbRadioGroupRec  = ^XkbRadioGroupRec;
    PXkbSrvInfo  = ^XkbSrvInfo;
    PXkbSrvInfoPtr  = ^XkbSrvInfoPtr;
    PXkbSrvInfoRec  = ^XkbSrvInfoRec;
    PXkbSrvLedInfo  = ^XkbSrvLedInfo;
    PXkbSrvLedInfoPtr  = ^XkbSrvLedInfoPtr;
    PXkbSrvLedInfoRec  = ^XkbSrvLedInfoRec;
    PXkbSrvListInfo  = ^XkbSrvListInfo;
    PXkbSrvListInfoPtr  = ^XkbSrvListInfoPtr;
    PXkbSrvListInfoRec  = ^XkbSrvListInfoRec;
    PxkbStateNotify  = ^xkbStateNotify;
    PXPointer  = ^XPointer;
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
  PXkbInterest = ^TXkbInterest;
  TXkbInterest = record
      dev : TDeviceIntPtr;
      client : TClientPtr;
      resource : TXID;
      next : PXkbInterest;
      extDevNotifyMask : TCARD16;
      stateNotifyMask : TCARD16;
      namesNotifyMask : TCARD16;
      ctrlsNotifyMask : TCARD32;
      compatNotifyMask : TCARD8;
      bellNotifyMask : TBOOL;
      actionMessageMask : TBOOL;
      accessXNotifyMask : TCARD16;
      iStateNotifyMask : TCARD32;
      iMapNotifyMask : TCARD32;
      altSymsNotifyMask : TCARD16;
      autoCtrls : TCARD32;
      autoCtrlValues : TCARD32;
    end;
  TXkbInterestRec = TXkbInterest;
  PXkbInterestRec = ^TXkbInterestRec;
  TXkbInterestPtr = PXkbInterest;
  PXkbInterestPtr = ^TXkbInterestPtr;

  PXkbRadioGroup = ^TXkbRadioGroup;
  TXkbRadioGroup = record
      flags : TCARD8;
      nMembers : TCARD8;
      dfltDown : TCARD8;
      currentDown : TCARD8;
      members : array[0..(XkbRGMaxMembers)-1] of TCARD8;
    end;
  TXkbRadioGroupRec = TXkbRadioGroup;
  PXkbRadioGroupRec = ^TXkbRadioGroupRec;
  TXkbRadioGroupPtr = PXkbRadioGroup;
  PXkbRadioGroupPtr = ^TXkbRadioGroupPtr;

  PXkbEventCause = ^TXkbEventCause;
  TXkbEventCause = record
      kc : TCARD8;
      event : TCARD8;
      mjr : TCARD8;
      mnr : TCARD8;
      client : TClientPtr;
    end;
  TXkbEventCauseRec = TXkbEventCause;
  PXkbEventCauseRec = ^TXkbEventCauseRec;
  TXkbEventCausePtr = PXkbEventCause;
  PXkbEventCausePtr = ^TXkbEventCausePtr;
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
      PXkbSrvInfo = ^TXkbSrvInfo;
      TXkbSrvInfo = record
          prev_state : TXkbStateRec;
          state : TXkbStateRec;
          desc : TXkbDescPtr;
          device : TDeviceIntPtr;
          kbdProc : TKbdCtrlProcPtr;
          radioGroups : TXkbRadioGroupPtr;
          nRadioGroups : TCARD8;
          clearMods : TCARD8;
          setMods : TCARD8;
          groupChange : TINT16;
          dfltPtrDelta : TCARD16;
          mouseKeysCurve : Tdouble;
          mouseKeysCurveFactor : Tdouble;
          mouseKeysDX : TINT16;
          mouseKeysDY : TINT16;
          mouseKeysFlags : TCARD8;
          mouseKeysAccel : TBool;
          mouseKeysCounter : TCARD8;
          lockedPtrButtons : TCARD8;
          shiftKeyCount : TCARD8;
          mouseKey : TKeyCode;
          inactiveKey : TKeyCode;
          slowKey : TKeyCode;
          repeatKey : TKeyCode;
          krgTimerActive : TCARD8;
          beepType : TCARD8;
          beepCount : TCARD8;
          flags : TCARD32;
          lastPtrEventTime : TCARD32;
          lastShiftEventTime : TCARD32;
          beepTimer : TOsTimerPtr;
          mouseKeyTimer : TOsTimerPtr;
          slowKeysTimer : TOsTimerPtr;
          bounceKeysTimer : TOsTimerPtr;
          repeatKeyTimer : TOsTimerPtr;
          krgTimer : TOsTimerPtr;
        end;
      TXkbSrvInfoRec = TXkbSrvInfo;
      PXkbSrvInfoRec = ^TXkbSrvInfoRec;
      TXkbSrvInfoPtr = PXkbSrvInfo;
      PXkbSrvInfoPtr = ^TXkbSrvInfoPtr;

    const
      XkbSLI_IsDefault = 1 shl 0;      
      XkbSLI_HasOwnState = 1 shl 1;      
    type
      PXkbSrvLedInfo = ^TXkbSrvLedInfo;
      TXkbSrvLedInfo = record
          flags : TCARD16;
          _class : TCARD16;
          id : TCARD16;
          fb : record
              case longint of
                0 : ( kf : TKbdFeedbackPtr );
                1 : ( lf : TLedFeedbackPtr );
              end;
          physIndicators : TCARD32;
          autoState : TCARD32;
          explicitState : TCARD32;
          effectiveState : TCARD32;
          mapsPresent : TCARD32;
          namesPresent : TCARD32;
          maps : TXkbIndicatorMapPtr;
          names : PAtom;
          usesBase : TCARD32;
          usesLatched : TCARD32;
          usesLocked : TCARD32;
          usesEffective : TCARD32;
          usesCompat : TCARD32;
          usesControls : TCARD32;
          usedComponents : TCARD32;
        end;
      TXkbSrvLedInfoRec = TXkbSrvLedInfo;
      PXkbSrvLedInfoRec = ^TXkbSrvLedInfoRec;
      TXkbSrvLedInfoPtr = PXkbSrvLedInfo;
      PXkbSrvLedInfoPtr = ^TXkbSrvLedInfoPtr;


    const
      _XkbClientInitialized = 1 shl 15;      
(* error 
	((c)->xkbClientFlags&XkbPCF_DetectableAutoRepeatMask)
in define line 225 *)

      _XkbStateNotifyInProgress = 1 shl 0;      
    type
      PxkbDeviceInfoRec = ^TxkbDeviceInfoRec;
      TxkbDeviceInfoRec = record
          processInputProc : TProcessInputProc;
          realInputProc : TProcessInputProc;
          unwrapProc : TDeviceUnwrapProc;
        end;
      TxkbDeviceInfoPtr = PxkbDeviceInfoRec;
      PxkbDeviceInfoPtr = ^TxkbDeviceInfoPtr;
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

    function XKBDEVICEINFO(dev : longint) : TxkbDeviceInfoPtr;    



    const
      XkbAX_KRGMask = XkbSlowKeysMask or XkbBounceKeysMask;      
      XkbAllFilteredEventsMask = ((XkbAccessXKeysMask or XkbRepeatKeysMask) or XkbMouseKeysAccelMask) or XkbAX_KRGMask;      

      var
        XkbReqCode : longint;cvar;external;
        XkbEventBase : longint;cvar;external;
        XkbKeyboardErrorCode : longint;cvar;external;
        XkbDisableLockActions : longint;cvar;external;
        XkbBaseDirectory : Pchar;cvar;external;
        XkbBinDirectory : Pchar;cvar;external;
        XkbInitialMap : Pchar;cvar;external;
        _XkbClientMajor : longint;cvar;external;
        _XkbClientMinor : longint;cvar;external;
        XkbXIUnsupported : dword;cvar;external;
        XkbModelUsed : Pchar;cvar;external;
        noXkbExtension : TBool;cvar;external;
        XkbWantRulesProp : TBool;cvar;external;
        XkbLastRepeatEvent : Tpointer;cvar;external;
        xkbDebugFlags : TCARD32;cvar;external;
        xkbDebugCtrls : TCARD32;cvar;external;

    function _XkbAlloc(s : longint) : longint;    

    function _XkbCalloc(n,s : longint) : longint;    

    function _XkbRealloc(o,s : longint) : longint;    

    function _XkbTypedAlloc(t : longint) : Pt;    

    function _XkbTypedCalloc(n,t : longint) : Pt;    

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
      PStatus = ^TStatus;
      TStatus = longint;

      PXPointer = ^TXPointer;
      TXPointer = Tpointer;
      TXDisplay = TDisplay;
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


function XkbProcessArguments(para1:longint; para2:PPchar; para3:longint):longint;cdecl;external;
procedure XkbSetExtension(device:TDeviceIntPtr; proc:TProcessInputProc);cdecl;external;

procedure XkbFreeCompatMap(para1:TXkbDescPtr; para2:dword; para3:TBool);cdecl;external;

procedure XkbFreeNames(para1:TXkbDescPtr; para2:dword; para3:TBool);cdecl;external;

function _XkbLookupAnyDevice(para1:longint; para2:Plongint):TDeviceIntPtr;cdecl;external;

function _XkbLookupKeyboard(para1:longint; para2:Plongint):TDeviceIntPtr;cdecl;external;

function _XkbLookupBellDevice(para1:longint; para2:Plongint):TDeviceIntPtr;cdecl;external;

function _XkbLookupLedDevice(para1:longint; para2:Plongint):TDeviceIntPtr;cdecl;external;

function _XkbLookupButtonDevice(para1:longint; para2:Plongint):TDeviceIntPtr;cdecl;external;
function XkbAllocKeyboard:TXkbDescPtr;cdecl;external;

function XkbAllocClientMap(para1:TXkbDescPtr; para2:dword; para3:dword):TStatus;cdecl;external;

function XkbAllocServerMap(para1:TXkbDescPtr; para2:dword; para3:dword):TStatus;cdecl;external;

procedure XkbFreeClientMap(para1:TXkbDescPtr; para2:dword; para3:TBool);cdecl;external;

procedure XkbFreeServerMap(para1:TXkbDescPtr; para2:dword; para3:TBool);cdecl;external;

function XkbAllocIndicatorMaps(para1:TXkbDescPtr):TStatus;cdecl;external;

function XkbAllocCompatMap(para1:TXkbDescPtr; para2:dword; para3:dword):TStatus;cdecl;external;

function XkbAllocNames(para1:TXkbDescPtr; para2:dword; para3:longint; para4:longint):TStatus;cdecl;external;

function XkbAllocControls(para1:TXkbDescPtr; para2:dword):TStatus;cdecl;external;

function XkbCopyKeyType(para1:TXkbKeyTypePtr; para2:TXkbKeyTypePtr):TStatus;cdecl;external;

function XkbCopyKeyTypes(para1:TXkbKeyTypePtr; para2:TXkbKeyTypePtr; para3:longint):TStatus;cdecl;external;

function XkbResizeKeyType(para1:TXkbDescPtr; para2:longint; para3:longint; para4:TBool; para5:longint):TStatus;cdecl;external;

procedure XkbFreeKeyboard(para1:TXkbDescPtr; para2:dword; para3:TBool);cdecl;external;

procedure XkbSetActionKeyMods(para1:TXkbDescPtr; para2:PXkbAction; para3:dword);cdecl;external;

function XkbCheckActionVMods(para1:TXkbDescPtr; para2:PXkbAction; para3:dword):TBool;cdecl;external;

function XkbApplyVModChanges(para1:TXkbSrvInfoPtr; para2:dword; para3:TXkbChangesPtr; para4:Pdword; para5:TXkbEventCausePtr):TBool;cdecl;external;

procedure XkbApplyVModChangesToAllDevices(para1:TDeviceIntPtr; para2:TXkbDescPtr; para3:dword; para4:TXkbEventCausePtr);cdecl;external;

function XkbMaskForVMask(para1:TXkbDescPtr; para2:dword):dword;cdecl;external;

function XkbVirtualModsToReal(para1:TXkbDescPtr; para2:dword; para3:Pdword):TBool;cdecl;external;

function XkbAdjustGroup(para1:longint; para2:TXkbControlsPtr):dword;cdecl;external;

function XkbResizeKeySyms(para1:TXkbDescPtr; para2:longint; para3:longint):PKeySym;cdecl;external;

function XkbResizeKeyActions(para1:TXkbDescPtr; para2:longint; para3:longint):PXkbAction;cdecl;external;

procedure XkbUpdateKeyTypesFromCore(para1:TDeviceIntPtr; para2:TKeyCode; para3:TCARD8; para4:TXkbChangesPtr);cdecl;external;

procedure XkbUpdateDescActions(para1:TXkbDescPtr; para2:TKeyCode; para3:TCARD8; para4:TXkbChangesPtr);cdecl;external;

procedure XkbUpdateActions(para1:TDeviceIntPtr; para2:TKeyCode; para3:TCARD8; para4:TXkbChangesPtr; para5:Pdword; 
                para6:TXkbEventCausePtr);cdecl;external;

procedure XkbUpdateCoreDescription(para1:TDeviceIntPtr; para2:TBool);cdecl;external;

procedure XkbApplyMappingChange(para1:TDeviceIntPtr; para2:TCARD8; para3:TKeyCode; para4:TCARD8; para5:TClientPtr);cdecl;external;

procedure XkbSetIndicators(para1:TDeviceIntPtr; para2:TCARD32; para3:TCARD32; para4:TXkbEventCausePtr);cdecl;external;

procedure XkbUpdateIndicators(para1:TDeviceIntPtr; para2:TCARD32; para3:TBool; para4:TXkbChangesPtr; para5:TXkbEventCausePtr);cdecl;external;

function XkbAllocSrvLedInfo(para1:TDeviceIntPtr; para2:TKbdFeedbackPtr; para3:TLedFeedbackPtr; para4:dword):TXkbSrvLedInfoPtr;cdecl;external;

function XkbFindSrvLedInfo(para1:TDeviceIntPtr; para2:dword; para3:dword; para4:dword):TXkbSrvLedInfoPtr;cdecl;external;

procedure XkbApplyLedNameChanges(para1:TDeviceIntPtr; para2:TXkbSrvLedInfoPtr; para3:dword; para4:PxkbExtensionDeviceNotify; para5:TXkbChangesPtr; 
                para6:TXkbEventCausePtr);cdecl;external;

procedure XkbApplyLedMapChanges(para1:TDeviceIntPtr; para2:TXkbSrvLedInfoPtr; para3:dword; para4:PxkbExtensionDeviceNotify; para5:TXkbChangesPtr; 
                para6:TXkbEventCausePtr);cdecl;external;

procedure XkbApplyLedStateChanges(para1:TDeviceIntPtr; para2:TXkbSrvLedInfoPtr; para3:dword; para4:PxkbExtensionDeviceNotify; para5:TXkbChangesPtr; 
                para6:TXkbEventCausePtr);cdecl;external;

procedure XkbUpdateLedAutoState(para1:TDeviceIntPtr; para2:TXkbSrvLedInfoPtr; para3:dword; para4:PxkbExtensionDeviceNotify; para5:TXkbChangesPtr; 
                para6:TXkbEventCausePtr);cdecl;external;

procedure XkbFlushLedEvents(para1:TDeviceIntPtr; para2:TDeviceIntPtr; para3:TXkbSrvLedInfoPtr; para4:PxkbExtensionDeviceNotify; para5:TXkbChangesPtr; 
                para6:TXkbEventCausePtr);cdecl;external;

procedure XkbUpdateAllDeviceIndicators(para1:TXkbChangesPtr; para2:TXkbEventCausePtr);cdecl;external;

function XkbIndicatorsToUpdate(para1:TDeviceIntPtr; para2:dword; para3:TBool):dword;cdecl;external;

procedure XkbComputeDerivedState(para1:TXkbSrvInfoPtr);cdecl;external;

procedure XkbCheckSecondaryEffects(para1:TXkbSrvInfoPtr; para2:dword; para3:TXkbChangesPtr; para4:TXkbEventCausePtr);cdecl;external;

procedure XkbCheckIndicatorMaps(para1:TDeviceIntPtr; para2:TXkbSrvLedInfoPtr; para3:dword);cdecl;external;

function XkbStateChangedFlags(para1:TXkbStatePtr; para2:TXkbStatePtr):dword;cdecl;external;

procedure XkbSendStateNotify(para1:TDeviceIntPtr; para2:PxkbStateNotify);cdecl;external;

procedure XkbSendMapNotify(para1:TDeviceIntPtr; para2:PxkbMapNotify);cdecl;external;

function XkbComputeControlsNotify(para1:TDeviceIntPtr; para2:TXkbControlsPtr; para3:TXkbControlsPtr; para4:PxkbControlsNotify; para5:TBool):longint;cdecl;external;

procedure XkbSendControlsNotify(para1:TDeviceIntPtr; para2:PxkbControlsNotify);cdecl;external;

procedure XkbSendCompatMapNotify(para1:TDeviceIntPtr; para2:PxkbCompatMapNotify);cdecl;external;

procedure XkbSendIndicatorNotify(para1:TDeviceIntPtr; para2:longint; para3:PxkbIndicatorNotify);cdecl;external;

procedure XkbHandleBell(para1:TBOOL; para2:TBOOL; para3:TDeviceIntPtr; para4:TCARD8; para5:Tpointer; 
                para6:TCARD8; para7:TAtom; para8:TWindowPtr; para9:TClientPtr);cdecl;external;

procedure XkbSendAccessXNotify(para1:TDeviceIntPtr; para2:PxkbAccessXNotify);cdecl;external;

procedure XkbSendNamesNotify(para1:TDeviceIntPtr; para2:PxkbNamesNotify);cdecl;external;

procedure XkbSendCompatNotify(para1:TDeviceIntPtr; para2:PxkbCompatMapNotify);cdecl;external;

procedure XkbSendActionMessage(para1:TDeviceIntPtr; para2:PxkbActionMessage);cdecl;external;

procedure XkbSendExtensionDeviceNotify(para1:TDeviceIntPtr; para2:TClientPtr; para3:PxkbExtensionDeviceNotify);cdecl;external;

procedure XkbSendNotification(para1:TDeviceIntPtr; para2:TXkbChangesPtr; para3:TXkbEventCausePtr);cdecl;external;

procedure XkbProcessKeyboardEvent(para1:PxEvent; para2:TDeviceIntPtr; para3:longint);cdecl;external;

procedure XkbProcessOtherEvent(para1:PxEvent; para2:TDeviceIntPtr; para3:longint);cdecl;external;

procedure XkbHandleActions(para1:TDeviceIntPtr; para2:TDeviceIntPtr; para3:PxEvent; para4:longint);cdecl;external;

function XkbEnableDisableControls(para1:TXkbSrvInfoPtr; para2:dword; para3:dword; para4:TXkbChangesPtr; para5:TXkbEventCausePtr):TBool;cdecl;external;

procedure AccessXInit(para1:TDeviceIntPtr);cdecl;external;
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

procedure AccessXCancelRepeatKey(para1:TXkbSrvInfoPtr; para2:TKeyCode);cdecl;external;

procedure AccessXComputeCurveFactor(para1:TXkbSrvInfoPtr; para2:TXkbControlsPtr);cdecl;external;

function XkbAddDeviceLedInfo(para1:TXkbDeviceInfoPtr; para2:dword; para3:dword):TXkbDeviceLedInfoPtr;cdecl;external;

function XkbAllocDeviceInfo(para1:dword; para2:dword; para3:dword):TXkbDeviceInfoPtr;cdecl;external;

procedure XkbFreeDeviceInfo(para1:TXkbDeviceInfoPtr; para2:dword; para3:TBool);cdecl;external;

function XkbResizeDeviceButtonActions(para1:TXkbDeviceInfoPtr; para2:dword):TStatus;cdecl;external;

function XkbFindClientResource(para1:TDevicePtr; para2:TClientPtr):TXkbInterestPtr;cdecl;external;

function XkbAddClientResource(para1:TDevicePtr; para2:TClientPtr; para3:TXID):TXkbInterestPtr;cdecl;external;

function XkbRemoveClient(para1:TDevicePtr; para2:TClientPtr):longint;cdecl;external;

function XkbRemoveResourceClient(para1:TDevicePtr; para2:TXID):longint;cdecl;external;

function XkbDDXInitDevice(para1:TDeviceIntPtr):longint;cdecl;external;

function XkbDDXAccessXBeep(para1:TDeviceIntPtr; para2:dword; para3:dword):longint;cdecl;external;

procedure XkbDDXKeyClick(para1:TDeviceIntPtr; para2:longint; para3:longint);cdecl;external;

function XkbDDXUsesSoftRepeat(para1:TDeviceIntPtr):longint;cdecl;external;

procedure XkbDDXKeybdCtrlProc(para1:TDeviceIntPtr; para2:PKeybdCtrl);cdecl;external;

procedure XkbDDXChangeControls(para1:TDeviceIntPtr; para2:TXkbControlsPtr; para3:TXkbControlsPtr);cdecl;external;

procedure XkbDDXUpdateIndicators(para1:TDeviceIntPtr; para2:TCARD32);cdecl;external;

procedure XkbDDXUpdateDeviceIndicators(para1:TDeviceIntPtr; para2:TXkbSrvLedInfoPtr; para3:TCARD32);cdecl;external;

procedure XkbDDXFakePointerButton(para1:longint; para2:longint);cdecl;external;

procedure XkbDDXFakePointerMotion(para1:dword; para2:longint; para3:longint);cdecl;external;

procedure XkbDDXFakeDeviceButton(para1:TDeviceIntPtr; para2:TBool; para3:longint);cdecl;external;

function XkbDDXTerminateServer(para1:TDeviceIntPtr; para2:TKeyCode; para3:PXkbAction):longint;cdecl;external;

function XkbDDXSwitchScreen(para1:TDeviceIntPtr; para2:TKeyCode; para3:PXkbAction):longint;cdecl;external;

function XkbDDXPrivate(para1:TDeviceIntPtr; para2:TKeyCode; para3:PXkbAction):longint;cdecl;external;

procedure XkbDisableComputedAutoRepeats(para1:TDeviceIntPtr; para2:dword);cdecl;external;

procedure XkbSetRepeatKeys(para1:TDeviceIntPtr; para2:longint; para3:longint);cdecl;external;

function XkbLatchModifiers(para1:TDeviceIntPtr; para2:TCARD8; para3:TCARD8):longint;cdecl;external;

function XkbLatchGroup(para1:TDeviceIntPtr; para2:longint):longint;cdecl;external;

procedure XkbClearAllLatchesAndLocks(para1:TDeviceIntPtr; para2:TXkbSrvInfoPtr; para3:TBool; para4:TXkbEventCausePtr);cdecl;external;

procedure XkbSetRulesDflts(para1:Pchar; para2:Pchar; para3:Pchar; para4:Pchar; para5:Pchar);cdecl;external;

procedure XkbInitDevice(para1:TDeviceIntPtr);cdecl;external;
(* error 
	CARD8 			/* pMods */[],
 in declarator_list *)

(* error 
);
 in declarator_list *)

function SProcXkbDispatch(para1:TClientPtr):longint;cdecl;external;

function XkbLookupNamedGeometry(para1:TDeviceIntPtr; para2:TAtom; para3:PBool):TXkbGeometryPtr;cdecl;external;

function _XkbDupString(para1:Pchar):Pchar;cdecl;external;

procedure XkbConvertCase(para1:TKeySym; para2:PKeySym; para3:PKeySym);cdecl;external;

function XkbChangeKeycodeRange(para1:TXkbDescPtr; para2:longint; para3:longint; para4:TXkbChangesPtr):TStatus;cdecl;external;

function XkbFinishDeviceInit(para1:TDeviceIntPtr):longint;cdecl;external;

procedure XkbFreeSrvLedInfo(para1:TXkbSrvLedInfoPtr);cdecl;external;

procedure XkbFreeInfo(para1:TXkbSrvInfoPtr);cdecl;external;

function XkbChangeTypesOfKey(para1:TXkbDescPtr; para2:longint; para3:longint; para4:dword; para5:Plongint; 
               para6:TXkbMapChangesPtr):TStatus;cdecl;external;

function XkbAddKeyType(para1:TXkbDescPtr; para2:TAtom; para3:longint; para4:TBool; para5:longint):TXkbKeyTypePtr;cdecl;external;

function XkbInitCanonicalKeyTypes(para1:TXkbDescPtr; para2:dword; para3:longint):TStatus;cdecl;external;

function XkbKeyTypesForCoreSymbols(para1:TXkbDescPtr; para2:longint; para3:PKeySym; para4:dword; para5:Plongint; 
               para6:PKeySym):longint;cdecl;external;

function XkbApplyCompatMapToKey(para1:TXkbDescPtr; para2:TKeyCode; para3:TXkbChangesPtr):TBool;cdecl;external;

function XkbUpdateMapFromCore(para1:TXkbDescPtr; para2:TKeyCode; para3:longint; para4:longint; para5:PKeySym; 
               para6:TXkbChangesPtr):TBool;cdecl;external;

procedure XkbFreeControls(para1:TXkbDescPtr; para2:dword; para3:TBool);cdecl;external;

procedure XkbFreeIndicatorMaps(para1:TXkbDescPtr);cdecl;external;

function XkbApplyVirtualModChanges(para1:TXkbDescPtr; para2:dword; para3:TXkbChangesPtr):TBool;cdecl;external;

function XkbUpdateActionVirtualMods(para1:TXkbDescPtr; para2:PXkbAction; para3:dword):TBool;cdecl;external;

procedure XkbUpdateKeyTypeVirtualMods(para1:TXkbDescPtr; para2:TXkbKeyTypePtr; para3:dword; para4:TXkbChangesPtr);cdecl;external;

procedure XkbSendNewKeyboardNotify(para1:TDeviceIntPtr; para2:PxkbNewKeyboardNotify);cdecl;external;
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
      PXkbSrvListInfo = ^TXkbSrvListInfo;
      TXkbSrvListInfo = record
          szPool : longint;
          nPool : longint;
          pool : Pchar;
          maxRtrn : longint;
          nTotal : longint;
          pattern : array[0..(_XkbListNumComponents)-1] of Pchar;
          nFound : array[0..(_XkbListNumComponents)-1] of longint;
        end;
      TXkbSrvListInfoRec = TXkbSrvListInfo;
      PXkbSrvListInfoRec = ^TXkbSrvListInfoRec;
      TXkbSrvListInfoPtr = PXkbSrvListInfo;
      PXkbSrvListInfoPtr = ^TXkbSrvListInfoPtr;


function XkbGetRulesDflts(para1:TXkbRF_VarDefsPtr):Pchar;cdecl;external;

procedure XkbSetRulesUsed(para1:TXkbRF_VarDefsPtr);cdecl;external;

function XkbDDXList(para1:TDeviceIntPtr; para2:TXkbSrvListInfoPtr; para3:TClientPtr):TStatus;cdecl;external;

function XkbDDXLoadKeymapByNames(para1:TDeviceIntPtr; para2:TXkbComponentNamesPtr; para3:dword; para4:dword; para5:TXkbFileInfoPtr; 
               para6:Pchar; para7:longint):dword;cdecl;external;

function XkbDDXNamesFromRules(para1:TDeviceIntPtr; para2:Pchar; para3:TXkbRF_VarDefsPtr; para4:TXkbComponentNamesPtr):TBool;cdecl;external;

function XkbDDXOpenConfigFile(para1:Pchar; para2:Pchar; para3:longint):PFILE;cdecl;external;

function XkbDDXApplyConfig(para1:TXPointer; para2:TXkbSrvInfoPtr):TBool;cdecl;external;

function XkbDDXPreloadConfig(para1:PPchar; para2:TXkbRF_VarDefsPtr; para3:TXkbComponentNamesPtr; para4:TDeviceIntPtr):TXPointer;cdecl;external;

function _XkbStrCaseCmp(para1:Pchar; para2:Pchar):longint;cdecl;external;
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

    function XKBDEVICEINFO(dev : longint) : TxkbDeviceInfoPtr;
    begin
      XKBDEVICEINFO:=TxkbDeviceInfoPtr(dev^.((devPrivates[xkbDevicePrivateIndex]).ptr));
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

    function _XkbTypedAlloc(t : longint) : Pt;
    begin
      _XkbTypedAlloc:=Pt(xalloc(sizeof(t)));
    end;

    function _XkbTypedCalloc(n,t : longint) : Pt;
    begin
      _XkbTypedCalloc:=Pt(Xcalloc(n*(sizeof(t))));
    end;

    function _XkbTypedRealloc(o,n,t : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      if o then
        if_local1:=Pt(Xrealloc(o,n*(sizeof(t))))
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


end.
