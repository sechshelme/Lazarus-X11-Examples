
unit XI2;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XI2.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XI2.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XI2.pp
}

    { Pointers to basic pascal types, inserted by h2pas conversion program.}
    Type
      PLongint  = ^Longint;
      PSmallInt = ^SmallInt;
      PByte     = ^Byte;
      PWord     = ^Word;
      PDWord    = ^DWord;
      PDouble   = ^Double;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XI2_H_}
{$define _XI2_H_}

const
  XInput_2_0 = 7;  

  XI_2_Major = 2;  
  XI_2_Minor = 4;  

  XIPropertyDeleted = 0;  
  XIPropertyCreated = 1;  
  XIPropertyModified = 2;  

  XIPropModeReplace = 0;  
  XIPropModePrepend = 1;  
  XIPropModeAppend = 2;  

  XIAnyPropertyType = 0;  

  XINotifyNormal = 0;  
  XINotifyGrab = 1;  
  XINotifyUngrab = 2;  
  XINotifyWhileGrabbed = 3;  
  XINotifyPassiveGrab = 4;  
  XINotifyPassiveUngrab = 5;  

  XINotifyAncestor = 0;  
  XINotifyVirtual = 1;  
  XINotifyInferior = 2;  
  XINotifyNonlinear = 3;  
  XINotifyNonlinearVirtual = 4;  
  XINotifyPointer = 5;  
  XINotifyPointerRoot = 6;  
  XINotifyDetailNone = 7;  

  XIGrabModeSync = 0;  
  XIGrabModeAsync = 1;  
  XIGrabModeTouch = 2;  

  XIGrabSuccess = 0;  
  XIAlreadyGrabbed = 1;  
  XIGrabInvalidTime = 2;  
  XIGrabNotViewable = 3;  
  XIGrabFrozen = 4;  

  XIOwnerEvents = _True;  
  XINoOwnerEvents = _False;  

  XIGrabtypeButton = 0;  
  XIGrabtypeKeycode = 1;  
  XIGrabtypeEnter = 2;  
  XIGrabtypeFocusIn = 3;  
  XIGrabtypeTouchBegin = 4;  
  XIGrabtypeGesturePinchBegin = 5;  
  XIGrabtypeGestureSwipeBegin = 6;  

  XIAnyModifier = 1 shl 31;  
  XIAnyButton = 0;  
  XIAnyKeycode = 0;  

  XIAsyncDevice = 0;  
  XISyncDevice = 1;  
  XIReplayDevice = 2;  
  XIAsyncPairedDevice = 3;  
  XIAsyncPair = 4;  
  XISyncPair = 5;  
  XIAcceptTouch = 6;  
  XIRejectTouch = 7;  

  XISlaveSwitch = 1;  
  XIDeviceChange = 2;  

  XIMasterAdded = 1 shl 0;  
  XIMasterRemoved = 1 shl 1;  
  XISlaveAdded = 1 shl 2;  
  XISlaveRemoved = 1 shl 3;  
  XISlaveAttached = 1 shl 4;  
  XISlaveDetached = 1 shl 5;  
  XIDeviceEnabled = 1 shl 6;  
  XIDeviceDisabled = 1 shl 7;  

  XIAddMaster = 1;  
  XIRemoveMaster = 2;  
  XIAttachSlave = 3;  
  XIDetachSlave = 4;  
  XIAttachToMaster = 1;  
  XIFloating = 2;  

  XIModeRelative = 0;  
  XIModeAbsolute = 1;  

  XIMasterPointer = 1;  
  XIMasterKeyboard = 2;  
  XISlavePointer = 3;  
  XISlaveKeyboard = 4;  
  XIFloatingSlave = 5;  

  XIKeyClass = 0;  
  XIButtonClass = 1;  
  XIValuatorClass = 2;  
  XIScrollClass = 3;  
  XITouchClass = 8;  
  XIGestureClass = 9;  

  XIScrollTypeVertical = 1;  
  XIScrollTypeHorizontal = 2;  

  XIScrollFlagNoEmulation = 1 shl 0;  
  XIScrollFlagPreferred = 1 shl 1;  


  XIKeyRepeat = 1 shl 16;  

  XIPointerEmulated = 1 shl 16;  

  XITouchPendingEnd = 1 shl 16;  
  XITouchEmulatingPointer = 1 shl 17;  

  XIBarrierPointerReleased = 1 shl 0;  
  XIBarrierDeviceIsGrabbed = 1 shl 1;  

  XIGesturePinchEventCancelled = 1 shl 0;  

  XIGestureSwipeEventCancelled = 1 shl 0;  

  XIDirectTouch = 1;  
  XIDependentTouch = 2;  

(* error 
#define XISetMask(ptr, event)   (((unsigned char*)(ptr))[(event)>>3] |=  (1 << ((event) & 7)))
in define line 181 *)
(* error 
#define XIClearMask(ptr, event) (((unsigned char*)(ptr))[(event)>>3] &= ~(1 << ((event) & 7)))
in define line 182 *)
(* error 
#define XIMaskIsSet(ptr, event) (((unsigned char*)(ptr))[(event)>>3] &   (1 << ((event) & 7)))
in define line 183 *)

    function XIMaskLen(event : longint) : longint;    


    const
      XIAllDevices = 0;      
      XIAllMasterDevices = 1;      

      XI_DeviceChanged = 1;      
      XI_KeyPress = 2;      
      XI_KeyRelease = 3;      
      XI_ButtonPress = 4;      
      XI_ButtonRelease = 5;      
      XI_Motion = 6;      
      XI_Enter = 7;      
      XI_Leave = 8;      
      XI_FocusIn = 9;      
      XI_FocusOut = 10;      
      XI_HierarchyChanged = 11;      
      XI_PropertyEvent = 12;      
      XI_RawKeyPress = 13;      
      XI_RawKeyRelease = 14;      
      XI_RawButtonPress = 15;      
      XI_RawButtonRelease = 16;      
      XI_RawMotion = 17;      

      XI_TouchBegin = 18;      
      XI_TouchUpdate = 19;      
      XI_TouchEnd = 20;      
      XI_TouchOwnership = 21;      
      XI_RawTouchBegin = 22;      
      XI_RawTouchUpdate = 23;      
      XI_RawTouchEnd = 24;      

      XI_BarrierHit = 25;      
      XI_BarrierLeave = 26;      

      XI_GesturePinchBegin = 27;      
      XI_GesturePinchUpdate = 28;      
      XI_GesturePinchEnd = 29;      
      XI_GestureSwipeBegin = 30;      
      XI_GestureSwipeUpdate = 31;      
      XI_GestureSwipeEnd = 32;      
      XI_LASTEVENT = XI_GestureSwipeEnd;      


      XI_DeviceChangedMask = 1 shl XI_DeviceChanged;      
      XI_KeyPressMask = 1 shl XI_KeyPress;      
      XI_KeyReleaseMask = 1 shl XI_KeyRelease;      
      XI_ButtonPressMask = 1 shl XI_ButtonPress;      
      XI_ButtonReleaseMask = 1 shl XI_ButtonRelease;      
      XI_MotionMask = 1 shl XI_Motion;      
      XI_EnterMask = 1 shl XI_Enter;      
      XI_LeaveMask = 1 shl XI_Leave;      
      XI_FocusInMask = 1 shl XI_FocusIn;      
      XI_FocusOutMask = 1 shl XI_FocusOut;      
      XI_HierarchyChangedMask = 1 shl XI_HierarchyChanged;      
      XI_PropertyEventMask = 1 shl XI_PropertyEvent;      
      XI_RawKeyPressMask = 1 shl XI_RawKeyPress;      
      XI_RawKeyReleaseMask = 1 shl XI_RawKeyRelease;      
      XI_RawButtonPressMask = 1 shl XI_RawButtonPress;      
      XI_RawButtonReleaseMask = 1 shl XI_RawButtonRelease;      
      XI_RawMotionMask = 1 shl XI_RawMotion;      
      XI_TouchBeginMask = 1 shl XI_TouchBegin;      
      XI_TouchEndMask = 1 shl XI_TouchEnd;      
      XI_TouchOwnershipChangedMask = 1 shl XI_TouchOwnership;      
      XI_TouchUpdateMask = 1 shl XI_TouchUpdate;      
      XI_RawTouchBeginMask = 1 shl XI_RawTouchBegin;      
      XI_RawTouchEndMask = 1 shl XI_RawTouchEnd;      
      XI_RawTouchUpdateMask = 1 shl XI_RawTouchUpdate;      
      XI_BarrierHitMask = 1 shl XI_BarrierHit;      
      XI_BarrierLeaveMask = 1 shl XI_BarrierLeave;      
{$endif}


implementation

    function XIMaskLen(event : longint) : longint;
    begin
      XIMaskLen:=(event shr 3)+1;
    end;


end.
