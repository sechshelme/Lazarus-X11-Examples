
unit XIproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XIproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XIproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XIproto.pp
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
PchangeDeviceNotify  = ^changeDeviceNotify;
PdeviceButtonStateNotify  = ^deviceButtonStateNotify;
PdeviceFocus  = ^deviceFocus;
PdeviceKeyButtonPointer  = ^deviceKeyButtonPointer;
PdeviceKeyStateNotify  = ^deviceKeyStateNotify;
PdeviceMappingNotify  = ^deviceMappingNotify;
PdevicePresenceNotify  = ^devicePresenceNotify;
PdevicePropertyNotify  = ^devicePropertyNotify;
PdeviceStateNotify  = ^deviceStateNotify;
PdeviceValuator  = ^deviceValuator;
PPointer  = ^Pointer;
Ptmask  = ^tmask;
PxAllowDeviceEventsReq  = ^xAllowDeviceEventsReq;
PxAnyClassinfo  = ^xAnyClassinfo;
PxAnyClassPtr  = ^xAnyClassPtr;
PxAxisInfo  = ^xAxisInfo;
PxAxisInfoPtr  = ^xAxisInfoPtr;
PxBellFeedbackCtl  = ^xBellFeedbackCtl;
PxBellFeedbackState  = ^xBellFeedbackState;
PxButtonInfo  = ^xButtonInfo;
PxButtonInfoPtr  = ^xButtonInfoPtr;
PxButtonState  = ^xButtonState;
PxChangeDeviceControlReply  = ^xChangeDeviceControlReply;
PxChangeDeviceControlReq  = ^xChangeDeviceControlReq;
PxChangeDeviceDontPropagateListReq  = ^xChangeDeviceDontPropagateListReq;
PxChangeDeviceKeyMappingReq  = ^xChangeDeviceKeyMappingReq;
PxChangeDevicePropertyReq  = ^xChangeDevicePropertyReq;
PxChangeFeedbackControlReq  = ^xChangeFeedbackControlReq;
PxChangeKeyboardDeviceReply  = ^xChangeKeyboardDeviceReply;
PxChangeKeyboardDeviceReq  = ^xChangeKeyboardDeviceReq;
PxChangePointerDeviceReply  = ^xChangePointerDeviceReply;
PxChangePointerDeviceReq  = ^xChangePointerDeviceReq;
PxCloseDeviceReq  = ^xCloseDeviceReq;
PxDeleteDevicePropertyReq  = ^xDeleteDevicePropertyReq;
PxDeviceAbsAreaCtl  = ^xDeviceAbsAreaCtl;
PxDeviceAbsAreaState  = ^xDeviceAbsAreaState;
PxDeviceAbsCalibCtl  = ^xDeviceAbsCalibCtl;
PxDeviceAbsCalibState  = ^xDeviceAbsCalibState;
PxDeviceBellReq  = ^xDeviceBellReq;
PxDeviceCoreCtl  = ^xDeviceCoreCtl;
PxDeviceCoreState  = ^xDeviceCoreState;
PxDeviceCtl  = ^xDeviceCtl;
PxDeviceEnableCtl  = ^xDeviceEnableCtl;
PxDeviceEnableState  = ^xDeviceEnableState;
PxDeviceInfo  = ^xDeviceInfo;
PxDeviceInfoPtr  = ^xDeviceInfoPtr;
PxDeviceResolutionCtl  = ^xDeviceResolutionCtl;
PxDeviceResolutionState  = ^xDeviceResolutionState;
PxDeviceState  = ^xDeviceState;
PXExtEventInfo  = ^XExtEventInfo;
PxFeedbackCtl  = ^xFeedbackCtl;
PxFeedbackState  = ^xFeedbackState;
PxGetDeviceButtonMappingReply  = ^xGetDeviceButtonMappingReply;
PxGetDeviceButtonMappingReq  = ^xGetDeviceButtonMappingReq;
PxGetDeviceControlReply  = ^xGetDeviceControlReply;
PxGetDeviceControlReq  = ^xGetDeviceControlReq;
PxGetDeviceDontPropagateListReply  = ^xGetDeviceDontPropagateListReply;
PxGetDeviceDontPropagateListReq  = ^xGetDeviceDontPropagateListReq;
PxGetDeviceFocusReply  = ^xGetDeviceFocusReply;
PxGetDeviceFocusReq  = ^xGetDeviceFocusReq;
PxGetDeviceKeyMappingReply  = ^xGetDeviceKeyMappingReply;
PxGetDeviceKeyMappingReq  = ^xGetDeviceKeyMappingReq;
PxGetDeviceModifierMappingReply  = ^xGetDeviceModifierMappingReply;
PxGetDeviceModifierMappingReq  = ^xGetDeviceModifierMappingReq;
PxGetDeviceMotionEventsReply  = ^xGetDeviceMotionEventsReply;
PxGetDeviceMotionEventsReq  = ^xGetDeviceMotionEventsReq;
PxGetDevicePropertyReply  = ^xGetDevicePropertyReply;
PxGetDevicePropertyReq  = ^xGetDevicePropertyReq;
PxGetExtensionVersionReply  = ^xGetExtensionVersionReply;
PxGetExtensionVersionReq  = ^xGetExtensionVersionReq;
PxGetFeedbackControlReply  = ^xGetFeedbackControlReply;
PxGetFeedbackControlReq  = ^xGetFeedbackControlReq;
PxGetSelectedExtensionEventsReply  = ^xGetSelectedExtensionEventsReply;
PxGetSelectedExtensionEventsReq  = ^xGetSelectedExtensionEventsReq;
PxGrabDeviceButtonReq  = ^xGrabDeviceButtonReq;
PxGrabDeviceKeyReq  = ^xGrabDeviceKeyReq;
PxGrabDeviceReply  = ^xGrabDeviceReply;
PxGrabDeviceReq  = ^xGrabDeviceReq;
PxInputClassInfo  = ^xInputClassInfo;
PxIntegerFeedbackCtl  = ^xIntegerFeedbackCtl;
PxIntegerFeedbackState  = ^xIntegerFeedbackState;
PxKbdFeedbackCtl  = ^xKbdFeedbackCtl;
PxKbdFeedbackState  = ^xKbdFeedbackState;
PxKeyInfo  = ^xKeyInfo;
PxKeyInfoPtr  = ^xKeyInfoPtr;
PxKeyState  = ^xKeyState;
PxLedFeedbackCtl  = ^xLedFeedbackCtl;
PxLedFeedbackState  = ^xLedFeedbackState;
PxListDevicePropertiesReply  = ^xListDevicePropertiesReply;
PxListDevicePropertiesReq  = ^xListDevicePropertiesReq;
PxListInputDevicesReply  = ^xListInputDevicesReply;
PxListInputDevicesReq  = ^xListInputDevicesReq;
PxOpenDeviceReply  = ^xOpenDeviceReply;
PxOpenDeviceReq  = ^xOpenDeviceReq;
PxPtrFeedbackCtl  = ^xPtrFeedbackCtl;
PxPtrFeedbackState  = ^xPtrFeedbackState;
PxQueryDeviceStateReply  = ^xQueryDeviceStateReply;
PxQueryDeviceStateReq  = ^xQueryDeviceStateReq;
PxSelectExtensionEventReq  = ^xSelectExtensionEventReq;
PxSendExtensionEventReq  = ^xSendExtensionEventReq;
PxSetDeviceButtonMappingReply  = ^xSetDeviceButtonMappingReply;
PxSetDeviceButtonMappingReq  = ^xSetDeviceButtonMappingReq;
PxSetDeviceFocusReq  = ^xSetDeviceFocusReq;
PxSetDeviceModeReply  = ^xSetDeviceModeReply;
PxSetDeviceModeReq  = ^xSetDeviceModeReq;
PxSetDeviceModifierMappingReply  = ^xSetDeviceModifierMappingReply;
PxSetDeviceModifierMappingReq  = ^xSetDeviceModifierMappingReq;
PxSetDeviceValuatorsReply  = ^xSetDeviceValuatorsReply;
PxSetDeviceValuatorsReq  = ^xSetDeviceValuatorsReq;
PxStringFeedbackCtl  = ^xStringFeedbackCtl;
PxStringFeedbackState  = ^xStringFeedbackState;
PxUngrabDeviceButtonReq  = ^xUngrabDeviceButtonReq;
PxUngrabDeviceKeyReq  = ^xUngrabDeviceKeyReq;
PxUngrabDeviceReq  = ^xUngrabDeviceReq;
PxValuatorInfo  = ^xValuatorInfo;
PxValuatorInfoPtr  = ^xValuatorInfoPtr;
PxValuatorState  = ^xValuatorState;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XIPROTO_H}
{$define _XIPROTO_H}
{$include <X11/Xproto.h>}
{$include <X11/X.h>}


const
  Window = CARD32;  
  Time = CARD32;  
  KeyCode = CARD8;  
  Mask = CARD32;  
  Atom = CARD32;  
  Cursor = CARD32;  

  MORE_EVENTS = $80;  
  DEVICE_BITS = $7F;  

  InputClassBits = $3F;  

  ModeBitsShift = 6;  
  numInputClasses = 7;  

  IEVENTS = 17;  
  IERRORS = 5;  
  IREQUESTS = 39;  
  CLIENT_REQ = 1;  
type
  PXExtEventInfo = ^TXExtEventInfo;
  TXExtEventInfo = record
      mask : TMask;
      _type : TBYTE;
      word : TBYTE;
    end;
{$ifndef _XITYPEDEF_POINTER}
type
  PPointer = ^TPointer;
  TPointer = pointer;
{$endif}
type
  Ptmask = ^Ttmask;
  Ttmask = record
      mask : TMask;
      dev : pointer;
    end;



const
  XI_DeviceValuator = 0;  
  XI_DeviceKeyPress = 1;  
  XI_DeviceKeyRelease = 2;  
  XI_DeviceButtonPress = 3;  
  XI_DeviceButtonRelease = 4;  
  XI_DeviceMotionNotify = 5;  
  XI_DeviceFocusIn = 6;  
  XI_DeviceFocusOut = 7;  
  XI_ProximityIn = 8;  
  XI_ProximityOut = 9;  
  XI_DeviceStateNotify = 10;  
  XI_DeviceMappingNotify = 11;  
  XI_ChangeDeviceNotify = 12;  
  XI_DeviceKeystateNotify = 13;  
  XI_DeviceButtonstateNotify = 14;  
  XI_DevicePresenceNotify = 15;  
  XI_DevicePropertyNotify = 16;  

  X_GetExtensionVersion = 1;  
  X_ListInputDevices = 2;  
  X_OpenDevice = 3;  
  X_CloseDevice = 4;  
  X_SetDeviceMode = 5;  
  X_SelectExtensionEvent = 6;  
  X_GetSelectedExtensionEvents = 7;  
  X_ChangeDeviceDontPropagateList = 8;  
  X_GetDeviceDontPropagateList = 9;  
  X_GetDeviceMotionEvents = 10;  
  X_ChangeKeyboardDevice = 11;  
  X_ChangePointerDevice = 12;  
  X_GrabDevice = 13;  
  X_UngrabDevice = 14;  
  X_GrabDeviceKey = 15;  
  X_UngrabDeviceKey = 16;  
  X_GrabDeviceButton = 17;  
  X_UngrabDeviceButton = 18;  
  X_AllowDeviceEvents = 19;  
  X_GetDeviceFocus = 20;  
  X_SetDeviceFocus = 21;  
  X_GetFeedbackControl = 22;  
  X_ChangeFeedbackControl = 23;  
  X_GetDeviceKeyMapping = 24;  
  X_ChangeDeviceKeyMapping = 25;  
  X_GetDeviceModifierMapping = 26;  
  X_SetDeviceModifierMapping = 27;  
  X_GetDeviceButtonMapping = 28;  
  X_SetDeviceButtonMapping = 29;  
  X_QueryDeviceState = 30;  
  X_SendExtensionEvent = 31;  
  X_DeviceBell = 32;  
  X_SetDeviceValuators = 33;  
  X_GetDeviceControl = 34;  
  X_ChangeDeviceControl = 35;  

  X_ListDeviceProperties = 36;  
  X_ChangeDeviceProperty = 37;  
  X_DeleteDeviceProperty = 38;  
  X_GetDeviceProperty = 39;  



type
  PxGetExtensionVersionReq = ^TxGetExtensionVersionReq;
  TxGetExtensionVersionReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      nbytes : TCARD16;
      pad1 : TCARD8;
      pad2 : TCARD8;
    end;



  PxGetExtensionVersionReply = ^TxGetExtensionVersionReply;
  TxGetExtensionVersionReply = record
      repType : TCARD8;
      RepType : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      major_version : TCARD16;
      minor_version : TCARD16;
      present : TBOOL;
      pad1 : TCARD8;
      pad2 : TCARD8;
      pad3 : TCARD8;
      pad01 : TCARD32;
      pad02 : TCARD32;
      pad03 : TCARD32;
      pad04 : TCARD32;
    end;




  PxListInputDevicesReq = ^TxListInputDevicesReq;
  TxListInputDevicesReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
    end;



  PxListInputDevicesReply = ^TxListInputDevicesReply;
  TxListInputDevicesReply = record
      repType : TCARD8;
      RepType : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      ndevices : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD8;
      pad3 : TCARD8;
      pad01 : TCARD32;
      pad02 : TCARD32;
      pad03 : TCARD32;
      pad04 : TCARD32;
      pad05 : TCARD32;
    end;

  PxDeviceInfoPtr = ^TxDeviceInfoPtr;
  TxDeviceInfoPtr = PxDeviceInfo;

  PxAnyClassPtr = ^TxAnyClassPtr;
  TxAnyClassPtr = PxAnyClassinfo;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
type
  PxAnyClassinfo = ^TxAnyClassinfo;
  TxAnyClassinfo = record
      c_class : TCARD8;
      _class : TCARD8;
      length : TCARD8;
    end;



  PxDeviceInfo = ^TxDeviceInfo;
  TxDeviceInfo = record
      _type : TCARD32;
      id : TCARD8;
      num_classes : TCARD8;
      use : TCARD8;
      attached : TCARD8;
    end;

  PxKeyInfoPtr = ^TxKeyInfoPtr;
  TxKeyInfoPtr = PxKeyInfo;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
type
  PxKeyInfo = ^TxKeyInfo;
  TxKeyInfo = record
      c_class : TCARD8;
      _class : TCARD8;
      length : TCARD8;
      min_keycode : TKeyCode;
      max_keycode : TKeyCode;
      num_keys : TCARD16;
      pad1 : TCARD8;
      pad2 : TCARD8;
    end;

  PxButtonInfoPtr = ^TxButtonInfoPtr;
  TxButtonInfoPtr = PxButtonInfo;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
type
  PxButtonInfo = ^TxButtonInfo;
  TxButtonInfo = record
      c_class : TCARD8;
      _class : TCARD8;
      length : TCARD8;
      num_buttons : TCARD16;
    end;

  PxValuatorInfoPtr = ^TxValuatorInfoPtr;
  TxValuatorInfoPtr = PxValuatorInfo;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
type
  PxValuatorInfo = ^TxValuatorInfo;
  TxValuatorInfo = record
      c_class : TCARD8;
      _class : TCARD8;
      length : TCARD8;
      num_axes : TCARD8;
      mode : TCARD8;
      motion_buffer_size : TCARD32;
    end;

  PxAxisInfoPtr = ^TxAxisInfoPtr;
  TxAxisInfoPtr = PxAxisInfo;

  PxAxisInfo = ^TxAxisInfo;
  TxAxisInfo = record
      resolution : TCARD32;
      min_value : TCARD32;
      max_value : TCARD32;
    end;




  PxOpenDeviceReq = ^TxOpenDeviceReq;
  TxOpenDeviceReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      deviceid : TCARD8;
      pad1 : TBYTE;
      pad2 : TBYTE;
      pad3 : TBYTE;
    end;



  PxOpenDeviceReply = ^TxOpenDeviceReply;
  TxOpenDeviceReply = record
      repType : TCARD8;
      RepType : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      num_classes : TCARD8;
      pad1 : TBYTE;
      pad2 : TBYTE;
      pad3 : TBYTE;
      pad00 : TCARD32;
      pad01 : TCARD32;
      pad02 : TCARD32;
      pad03 : TCARD32;
      pad04 : TCARD32;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
type
  PxInputClassInfo = ^TxInputClassInfo;
  TxInputClassInfo = record
      c_class : TCARD8;
      _class : TCARD8;
      event_type_base : TCARD8;
    end;




  PxCloseDeviceReq = ^TxCloseDeviceReq;
  TxCloseDeviceReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      deviceid : TCARD8;
      pad1 : TBYTE;
      pad2 : TBYTE;
      pad3 : TBYTE;
    end;




  PxSetDeviceModeReq = ^TxSetDeviceModeReq;
  TxSetDeviceModeReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      deviceid : TCARD8;
      mode : TCARD8;
      pad1 : TBYTE;
      pad2 : TBYTE;
    end;



  PxSetDeviceModeReply = ^TxSetDeviceModeReply;
  TxSetDeviceModeReply = record
      repType : TCARD8;
      RepType : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      status : TCARD8;
      pad1 : TBYTE;
      pad2 : TBYTE;
      pad3 : TBYTE;
      pad01 : TCARD32;
      pad02 : TCARD32;
      pad03 : TCARD32;
      pad04 : TCARD32;
      pad05 : TCARD32;
    end;




  PxSelectExtensionEventReq = ^TxSelectExtensionEventReq;
  TxSelectExtensionEventReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
      count : TCARD16;
      pad00 : TCARD16;
    end;




  PxGetSelectedExtensionEventsReq = ^TxGetSelectedExtensionEventsReq;
  TxGetSelectedExtensionEventsReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
    end;



  PxGetSelectedExtensionEventsReply = ^TxGetSelectedExtensionEventsReply;
  TxGetSelectedExtensionEventsReply = record
      repType : TCARD8;
      RepType : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      this_client_count : TCARD16;
      all_clients_count : TCARD16;
      pad01 : TCARD32;
      pad02 : TCARD32;
      pad03 : TCARD32;
      pad04 : TCARD32;
      pad05 : TCARD32;
    end;




  PxChangeDeviceDontPropagateListReq = ^TxChangeDeviceDontPropagateListReq;
  TxChangeDeviceDontPropagateListReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
      count : TCARD16;
      mode : TCARD8;
      pad : TBYTE;
    end;




  PxGetDeviceDontPropagateListReq = ^TxGetDeviceDontPropagateListReq;
  TxGetDeviceDontPropagateListReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
    end;



  PxGetDeviceDontPropagateListReply = ^TxGetDeviceDontPropagateListReply;
  TxGetDeviceDontPropagateListReply = record
      repType : TCARD8;
      RepType : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      count : TCARD16;
      pad00 : TCARD16;
      pad01 : TCARD32;
      pad02 : TCARD32;
      pad03 : TCARD32;
      pad04 : TCARD32;
      pad05 : TCARD32;
    end;




  PxGetDeviceMotionEventsReq = ^TxGetDeviceMotionEventsReq;
  TxGetDeviceMotionEventsReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      start : TTime;
      stop : TTime;
      deviceid : TCARD8;
      pad1 : TBYTE;
      pad2 : TBYTE;
      pad3 : TBYTE;
    end;



  PxGetDeviceMotionEventsReply = ^TxGetDeviceMotionEventsReply;
  TxGetDeviceMotionEventsReply = record
      repType : TCARD8;
      RepType : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      nEvents : TCARD32;
      axes : TCARD8;
      mode : TCARD8;
      pad1 : TBYTE;
      pad2 : TBYTE;
      pad01 : TCARD32;
      pad02 : TCARD32;
      pad03 : TCARD32;
      pad04 : TCARD32;
    end;




  PxChangeKeyboardDeviceReq = ^TxChangeKeyboardDeviceReq;
  TxChangeKeyboardDeviceReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      deviceid : TCARD8;
      pad1 : TBYTE;
      pad2 : TBYTE;
      pad3 : TBYTE;
    end;




  PxChangeKeyboardDeviceReply = ^TxChangeKeyboardDeviceReply;
  TxChangeKeyboardDeviceReply = record
      repType : TCARD8;
      RepType : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      status : TCARD8;
      pad1 : TBYTE;
      pad2 : TBYTE;
      pad3 : TBYTE;
      pad01 : TCARD32;
      pad02 : TCARD32;
      pad03 : TCARD32;
      pad04 : TCARD32;
      pad05 : TCARD32;
    end;




  PxChangePointerDeviceReq = ^TxChangePointerDeviceReq;
  TxChangePointerDeviceReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      xaxis : TCARD8;
      yaxis : TCARD8;
      deviceid : TCARD8;
      pad1 : TBYTE;
    end;




  PxChangePointerDeviceReply = ^TxChangePointerDeviceReply;
  TxChangePointerDeviceReply = record
      repType : TCARD8;
      RepType : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      status : TCARD8;
      pad1 : TBYTE;
      pad2 : TBYTE;
      pad3 : TBYTE;
      pad01 : TCARD32;
      pad02 : TCARD32;
      pad03 : TCARD32;
      pad04 : TCARD32;
      pad05 : TCARD32;
    end;




  PxGrabDeviceReq = ^TxGrabDeviceReq;
  TxGrabDeviceReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      grabWindow : TWindow;
      time : TTime;
      event_count : TCARD16;
      this_device_mode : TCARD8;
      other_devices_mode : TCARD8;
      ownerEvents : TBOOL;
      deviceid : TCARD8;
      pad01 : TCARD16;
    end;




  PxGrabDeviceReply = ^TxGrabDeviceReply;
  TxGrabDeviceReply = record
      repType : TCARD8;
      RepType : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      status : TCARD8;
      pad1 : TBYTE;
      pad2 : TBYTE;
      pad3 : TBYTE;
      pad01 : TCARD32;
      pad02 : TCARD32;
      pad03 : TCARD32;
      pad04 : TCARD32;
      pad05 : TCARD32;
    end;




  PxUngrabDeviceReq = ^TxUngrabDeviceReq;
  TxUngrabDeviceReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      time : TTime;
      deviceid : TCARD8;
      pad1 : TBYTE;
      pad2 : TBYTE;
      pad3 : TBYTE;
    end;




  PxGrabDeviceKeyReq = ^TxGrabDeviceKeyReq;
  TxGrabDeviceKeyReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      grabWindow : TWindow;
      event_count : TCARD16;
      modifiers : TCARD16;
      modifier_device : TCARD8;
      grabbed_device : TCARD8;
      key : TCARD8;
      this_device_mode : TBYTE;
      other_devices_mode : TBYTE;
      ownerEvents : TBOOL;
      pad1 : TBYTE;
      pad2 : TBYTE;
    end;




  PxUngrabDeviceKeyReq = ^TxUngrabDeviceKeyReq;
  TxUngrabDeviceKeyReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      grabWindow : TWindow;
      modifiers : TCARD16;
      modifier_device : TCARD8;
      key : TCARD8;
      grabbed_device : TCARD8;
      pad1 : TBYTE;
      pad2 : TBYTE;
      pad3 : TBYTE;
    end;




  PxGrabDeviceButtonReq = ^TxGrabDeviceButtonReq;
  TxGrabDeviceButtonReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      grabWindow : TWindow;
      grabbed_device : TCARD8;
      modifier_device : TCARD8;
      event_count : TCARD16;
      modifiers : TCARD16;
      this_device_mode : TBYTE;
      other_devices_mode : TBYTE;
      button : TCARD8;
      ownerEvents : TBOOL;
      pad1 : TBYTE;
      pad2 : TBYTE;
    end;




  PxUngrabDeviceButtonReq = ^TxUngrabDeviceButtonReq;
  TxUngrabDeviceButtonReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      grabWindow : TWindow;
      modifiers : TCARD16;
      modifier_device : TCARD8;
      button : TCARD8;
      grabbed_device : TCARD8;
      pad1 : TBYTE;
      pad2 : TBYTE;
      pad3 : TBYTE;
    end;




  PxAllowDeviceEventsReq = ^TxAllowDeviceEventsReq;
  TxAllowDeviceEventsReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      time : TTime;
      mode : TCARD8;
      deviceid : TCARD8;
      pad1 : TBYTE;
      pad2 : TBYTE;
    end;




  PxGetDeviceFocusReq = ^TxGetDeviceFocusReq;
  TxGetDeviceFocusReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      deviceid : TCARD8;
      pad1 : TBYTE;
      pad2 : TBYTE;
      pad3 : TBYTE;
    end;



  PxGetDeviceFocusReply = ^TxGetDeviceFocusReply;
  TxGetDeviceFocusReply = record
      repType : TCARD8;
      RepType : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      focus : TCARD32;
      time : TTime;
      revertTo : TCARD8;
      pad1 : TBYTE;
      pad2 : TBYTE;
      pad3 : TBYTE;
      pad01 : TCARD32;
      pad02 : TCARD32;
      pad03 : TCARD32;
    end;




  PxSetDeviceFocusReq = ^TxSetDeviceFocusReq;
  TxSetDeviceFocusReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      focus : TWindow;
      time : TTime;
      revertTo : TCARD8;
      device : TCARD8;
      pad01 : TCARD16;
    end;




  PxGetFeedbackControlReq = ^TxGetFeedbackControlReq;
  TxGetFeedbackControlReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      deviceid : TCARD8;
      pad1 : TBYTE;
      pad2 : TBYTE;
      pad3 : TBYTE;
    end;



  PxGetFeedbackControlReply = ^TxGetFeedbackControlReply;
  TxGetFeedbackControlReply = record
      repType : TCARD8;
      RepType : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      num_feedbacks : TCARD16;
      pad01 : TCARD16;
      pad02 : TCARD32;
      pad03 : TCARD32;
      pad04 : TCARD32;
      pad05 : TCARD32;
      pad06 : TCARD32;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}

{$endif}


type
  PxFeedbackState = ^TxFeedbackState;
  TxFeedbackState = record
      c_class : TCARD8;
      _class : TCARD8;
      id : TCARD8;
      length : TCARD16;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
type
  PxKbdFeedbackState = ^TxKbdFeedbackState;
  TxKbdFeedbackState = record
      c_class : TCARD8;
      _class : TCARD8;
      id : TCARD8;
      length : TCARD16;
      pitch : TCARD16;
      duration : TCARD16;
      led_mask : TCARD32;
      led_values : TCARD32;
      global_auto_repeat : TBOOL;
      click : TCARD8;
      percent : TCARD8;
      pad : TBYTE;
      auto_repeats : array[0..31] of TBYTE;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
type
  PxPtrFeedbackState = ^TxPtrFeedbackState;
  TxPtrFeedbackState = record
      c_class : TCARD8;
      _class : TCARD8;
      id : TCARD8;
      length : TCARD16;
      pad1 : TCARD8;
      pad2 : TCARD8;
      accelNum : TCARD16;
      accelDenom : TCARD16;
      threshold : TCARD16;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}

{$endif}

type
  PxIntegerFeedbackState = ^TxIntegerFeedbackState;
  TxIntegerFeedbackState = record
      c_class : TCARD8;
      _class : TCARD8;
      id : TCARD8;
      length : TCARD16;
      resolution : TCARD32;
      min_value : TINT32;
      max_value : TINT32;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}

{$endif}

type
  PxStringFeedbackState = ^TxStringFeedbackState;
  TxStringFeedbackState = record
      c_class : TCARD8;
      _class : TCARD8;
      id : TCARD8;
      length : TCARD16;
      max_symbols : TCARD16;
      num_syms_supported : TCARD16;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}

{$endif}

type
  PxBellFeedbackState = ^TxBellFeedbackState;
  TxBellFeedbackState = record
      c_class : TCARD8;
      _class : TCARD8;
      id : TCARD8;
      length : TCARD16;
      percent : TCARD8;
      pad1 : TBYTE;
      pad2 : TBYTE;
      pad3 : TBYTE;
      pitch : TCARD16;
      duration : TCARD16;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}

{$endif}

type
  PxLedFeedbackState = ^TxLedFeedbackState;
  TxLedFeedbackState = record
      c_class : TCARD8;
      _class : TCARD8;
      id : TCARD8;
      length : TCARD16;
      led_mask : TCARD32;
      led_values : TCARD32;
    end;




  PxChangeFeedbackControlReq = ^TxChangeFeedbackControlReq;
  TxChangeFeedbackControlReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      mask : TCARD32;
      deviceid : TCARD8;
      feedbackid : TCARD8;
      pad1 : TBYTE;
      pad2 : TBYTE;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}

{$endif}


type
  PxFeedbackCtl = ^TxFeedbackCtl;
  TxFeedbackCtl = record
      c_class : TCARD8;
      _class : TCARD8;
      id : TCARD8;
      length : TCARD16;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}

{$endif}


type
  PxKbdFeedbackCtl = ^TxKbdFeedbackCtl;
  TxKbdFeedbackCtl = record
      c_class : TCARD8;
      _class : TCARD8;
      id : TCARD8;
      length : TCARD16;
      key : TKeyCode;
      auto_repeat_mode : TCARD8;
      click : TINT8;
      percent : TINT8;
      pitch : TINT16;
      duration : TINT16;
      led_mask : TCARD32;
      led_values : TCARD32;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}

{$endif}


type
  PxPtrFeedbackCtl = ^TxPtrFeedbackCtl;
  TxPtrFeedbackCtl = record
      c_class : TCARD8;
      _class : TCARD8;
      id : TCARD8;
      length : TCARD16;
      pad1 : TCARD8;
      pad2 : TCARD8;
      num : TINT16;
      denom : TINT16;
      thresh : TINT16;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}

{$endif}


type
  PxIntegerFeedbackCtl = ^TxIntegerFeedbackCtl;
  TxIntegerFeedbackCtl = record
      c_class : TCARD8;
      _class : TCARD8;
      id : TCARD8;
      length : TCARD16;
      int_to_display : TINT32;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}

{$endif}


type
  PxStringFeedbackCtl = ^TxStringFeedbackCtl;
  TxStringFeedbackCtl = record
      c_class : TCARD8;
      _class : TCARD8;
      id : TCARD8;
      length : TCARD16;
      pad1 : TCARD8;
      pad2 : TCARD8;
      num_keysyms : TCARD16;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}

{$endif}


type
  PxBellFeedbackCtl = ^TxBellFeedbackCtl;
  TxBellFeedbackCtl = record
      c_class : TCARD8;
      _class : TCARD8;
      id : TCARD8;
      length : TCARD16;
      percent : TINT8;
      pad1 : TBYTE;
      pad2 : TBYTE;
      pad3 : TBYTE;
      pitch : TINT16;
      duration : TINT16;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}

{$endif}


type
  PxLedFeedbackCtl = ^TxLedFeedbackCtl;
  TxLedFeedbackCtl = record
      c_class : TCARD8;
      _class : TCARD8;
      id : TCARD8;
      length : TCARD16;
      led_mask : TCARD32;
      led_values : TCARD32;
    end;




  PxGetDeviceKeyMappingReq = ^TxGetDeviceKeyMappingReq;
  TxGetDeviceKeyMappingReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      deviceid : TCARD8;
      firstKeyCode : TKeyCode;
      count : TCARD8;
      pad1 : TBYTE;
    end;



  PxGetDeviceKeyMappingReply = ^TxGetDeviceKeyMappingReply;
  TxGetDeviceKeyMappingReply = record
      repType : TCARD8;
      RepType : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      keySymsPerKeyCode : TCARD8;
      pad0 : TCARD8;
      pad1 : TCARD16;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;




  PxChangeDeviceKeyMappingReq = ^TxChangeDeviceKeyMappingReq;
  TxChangeDeviceKeyMappingReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      deviceid : TCARD8;
      firstKeyCode : TKeyCode;
      keySymsPerKeyCode : TCARD8;
      keyCodes : TCARD8;
    end;




  PxGetDeviceModifierMappingReq = ^TxGetDeviceModifierMappingReq;
  TxGetDeviceModifierMappingReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      deviceid : TCARD8;
      pad1 : TBYTE;
      pad2 : TBYTE;
      pad3 : TBYTE;
    end;



  PxGetDeviceModifierMappingReply = ^TxGetDeviceModifierMappingReply;
  TxGetDeviceModifierMappingReply = record
      repType : TCARD8;
      RepType : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      numKeyPerModifier : TCARD8;
      pad0 : TCARD8;
      pad1 : TCARD16;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;




  PxSetDeviceModifierMappingReq = ^TxSetDeviceModifierMappingReq;
  TxSetDeviceModifierMappingReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      deviceid : TCARD8;
      numKeyPerModifier : TCARD8;
      pad1 : TCARD16;
    end;



  PxSetDeviceModifierMappingReply = ^TxSetDeviceModifierMappingReply;
  TxSetDeviceModifierMappingReply = record
      repType : TCARD8;
      RepType : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      success : TCARD8;
      pad0 : TCARD8;
      pad1 : TCARD16;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;




  PxGetDeviceButtonMappingReq = ^TxGetDeviceButtonMappingReq;
  TxGetDeviceButtonMappingReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      deviceid : TCARD8;
      pad1 : TBYTE;
      pad2 : TBYTE;
      pad3 : TBYTE;
    end;



  PxGetDeviceButtonMappingReply = ^TxGetDeviceButtonMappingReply;
  TxGetDeviceButtonMappingReply = record
      repType : TCARD8;
      RepType : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      nElts : TCARD8;
      pad1 : TBYTE;
      pad2 : TBYTE;
      pad3 : TBYTE;
      pad01 : TCARD32;
      pad02 : TCARD32;
      pad03 : TCARD32;
      pad04 : TCARD32;
      pad05 : TCARD32;
    end;




  PxSetDeviceButtonMappingReq = ^TxSetDeviceButtonMappingReq;
  TxSetDeviceButtonMappingReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      deviceid : TCARD8;
      map_length : TCARD8;
      pad1 : TBYTE;
      pad2 : TBYTE;
    end;



  PxSetDeviceButtonMappingReply = ^TxSetDeviceButtonMappingReply;
  TxSetDeviceButtonMappingReply = record
      repType : TCARD8;
      RepType : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      status : TCARD8;
      pad0 : TBYTE;
      pad1 : TCARD16;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;



  PxQueryDeviceStateReq = ^TxQueryDeviceStateReq;
  TxQueryDeviceStateReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      deviceid : TCARD8;
      pad1 : TBYTE;
      pad2 : TBYTE;
      pad3 : TBYTE;
    end;



  PxQueryDeviceStateReply = ^TxQueryDeviceStateReply;
  TxQueryDeviceStateReply = record
      repType : TCARD8;
      RepType : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      num_classes : TCARD8;
      pad0 : TBYTE;
      pad1 : TCARD16;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
type
  PxKeyState = ^TxKeyState;
  TxKeyState = record
      c_class : TCARD8;
      _class : TCARD8;
      length : TCARD8;
      num_keys : TCARD8;
      pad1 : TBYTE;
      keys : array[0..31] of TCARD8;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
type
  PxButtonState = ^TxButtonState;
  TxButtonState = record
      c_class : TCARD8;
      _class : TCARD8;
      length : TCARD8;
      num_buttons : TCARD8;
      pad1 : TBYTE;
      buttons : array[0..31] of TCARD8;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
type
  PxValuatorState = ^TxValuatorState;
  TxValuatorState = record
      c_class : TCARD8;
      _class : TCARD8;
      length : TCARD8;
      num_valuators : TCARD8;
      mode : TCARD8;
    end;



  PxSendExtensionEventReq = ^TxSendExtensionEventReq;
  TxSendExtensionEventReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      destination : TWindow;
      deviceid : TCARD8;
      propagate : TBOOL;
      count : TCARD16;
      num_events : TCARD8;
      pad1 : TBYTE;
      pad2 : TBYTE;
      pad3 : TBYTE;
    end;



  PxDeviceBellReq = ^TxDeviceBellReq;
  TxDeviceBellReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      deviceid : TCARD8;
      feedbackid : TCARD8;
      feedbackclass : TCARD8;
      percent : TINT8;
    end;




  PxSetDeviceValuatorsReq = ^TxSetDeviceValuatorsReq;
  TxSetDeviceValuatorsReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      deviceid : TCARD8;
      first_valuator : TCARD8;
      num_valuators : TCARD8;
      pad1 : TBYTE;
    end;



  PxSetDeviceValuatorsReply = ^TxSetDeviceValuatorsReply;
  TxSetDeviceValuatorsReply = record
      repType : TCARD8;
      RepType : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      status : TCARD8;
      pad1 : TBYTE;
      pad2 : TBYTE;
      pad3 : TBYTE;
      pad01 : TCARD32;
      pad02 : TCARD32;
      pad03 : TCARD32;
      pad04 : TCARD32;
      pad05 : TCARD32;
    end;




  PxGetDeviceControlReq = ^TxGetDeviceControlReq;
  TxGetDeviceControlReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      control : TCARD16;
      deviceid : TCARD8;
      pad2 : TBYTE;
    end;



  PxGetDeviceControlReply = ^TxGetDeviceControlReply;
  TxGetDeviceControlReply = record
      repType : TCARD8;
      RepType : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      status : TCARD8;
      pad1 : TBYTE;
      pad2 : TBYTE;
      pad3 : TBYTE;
      pad01 : TCARD32;
      pad02 : TCARD32;
      pad03 : TCARD32;
      pad04 : TCARD32;
      pad05 : TCARD32;
    end;



  PxDeviceState = ^TxDeviceState;
  TxDeviceState = record
      control : TCARD16;
      length : TCARD16;
    end;




  PxDeviceResolutionState = ^TxDeviceResolutionState;
  TxDeviceResolutionState = record
      control : TCARD16;
      length : TCARD16;
      num_valuators : TCARD32;
    end;

  PxDeviceAbsCalibState = ^TxDeviceAbsCalibState;
  TxDeviceAbsCalibState = record
      control : TCARD16;
      length : TCARD16;
      min_x : TINT32;
      max_x : TINT32;
      min_y : TINT32;
      max_y : TINT32;
      flip_x : TCARD32;
      flip_y : TCARD32;
      rotation : TCARD32;
      button_threshold : TCARD32;
    end;

  PxDeviceAbsAreaState = ^TxDeviceAbsAreaState;
  TxDeviceAbsAreaState = record
      control : TCARD16;
      length : TCARD16;
      offset_x : TCARD32;
      offset_y : TCARD32;
      width : TCARD32;
      height : TCARD32;
      screen : TCARD32;
      following : TCARD32;
    end;



  PxDeviceCoreState = ^TxDeviceCoreState;
  TxDeviceCoreState = record
      control : TCARD16;
      length : TCARD16;
      status : TCARD8;
      iscore : TCARD8;
      pad1 : TCARD16;
    end;



  PxDeviceEnableState = ^TxDeviceEnableState;
  TxDeviceEnableState = record
      control : TCARD16;
      length : TCARD16;
      enable : TCARD8;
      pad0 : TCARD8;
      pad1 : TCARD16;
    end;




  PxChangeDeviceControlReq = ^TxChangeDeviceControlReq;
  TxChangeDeviceControlReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      control : TCARD16;
      deviceid : TCARD8;
      pad0 : TBYTE;
    end;



  PxChangeDeviceControlReply = ^TxChangeDeviceControlReply;
  TxChangeDeviceControlReply = record
      repType : TCARD8;
      RepType : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      status : TCARD8;
      pad1 : TBYTE;
      pad2 : TBYTE;
      pad3 : TBYTE;
      pad01 : TCARD32;
      pad02 : TCARD32;
      pad03 : TCARD32;
      pad04 : TCARD32;
      pad05 : TCARD32;
    end;



  PxDeviceCtl = ^TxDeviceCtl;
  TxDeviceCtl = record
      control : TCARD16;
      length : TCARD16;
    end;





  PxDeviceResolutionCtl = ^TxDeviceResolutionCtl;
  TxDeviceResolutionCtl = record
      control : TCARD16;
      length : TCARD16;
      first_valuator : TCARD8;
      num_valuators : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD8;
    end;

  PxDeviceAbsCalibCtl = ^TxDeviceAbsCalibCtl;
  TxDeviceAbsCalibCtl = record
      control : TCARD16;
      length : TCARD16;
      min_x : TINT32;
      max_x : TINT32;
      min_y : TINT32;
      max_y : TINT32;
      flip_x : TCARD32;
      flip_y : TCARD32;
      rotation : TCARD32;
      button_threshold : TCARD32;
    end;

  PxDeviceAbsAreaCtl = ^TxDeviceAbsAreaCtl;
  TxDeviceAbsAreaCtl = record
      control : TCARD16;
      length : TCARD16;
      offset_x : TCARD32;
      offset_y : TCARD32;
      width : TINT32;
      height : TINT32;
      screen : TINT32;
      following : TCARD32;
    end;

  PxDeviceCoreCtl = ^TxDeviceCoreCtl;
  TxDeviceCoreCtl = record
      control : TCARD16;
      length : TCARD16;
      status : TCARD8;
      pad0 : TCARD8;
      pad1 : TCARD16;
    end;

  PxDeviceEnableCtl = ^TxDeviceEnableCtl;
  TxDeviceEnableCtl = record
      control : TCARD16;
      length : TCARD16;
      enable : TCARD8;
      pad0 : TCARD8;
      pad1 : TCARD16;
    end;





  PxListDevicePropertiesReq = ^TxListDevicePropertiesReq;
  TxListDevicePropertiesReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      deviceid : TCARD8;
      pad0 : TCARD8;
      pad1 : TCARD16;
    end;



  PxListDevicePropertiesReply = ^TxListDevicePropertiesReply;
  TxListDevicePropertiesReply = record
      repType : TCARD8;
      RepType : TCARD8;
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




  PxChangeDevicePropertyReq = ^TxChangeDevicePropertyReq;
  TxChangeDevicePropertyReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      _property : TAtom;
      _type : TAtom;
      deviceid : TCARD8;
      format : TCARD8;
      mode : TCARD8;
      pad : TCARD8;
      nUnits : TCARD32;
    end;




  PxDeleteDevicePropertyReq = ^TxDeleteDevicePropertyReq;
  TxDeleteDevicePropertyReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      _property : TAtom;
      deviceid : TCARD8;
      pad0 : TCARD8;
      pad1 : TCARD16;
    end;



{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
type
  PxGetDevicePropertyReq = ^TxGetDevicePropertyReq;
  TxGetDevicePropertyReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      _property : TAtom;
      _type : TAtom;
      longOffset : TCARD32;
      longLength : TCARD32;
      deviceid : TCARD8;
      c_delete : TBOOL;
      delete : TBOOL;
      pad : TCARD16;
    end;



  PxGetDevicePropertyReply = ^TxGetDevicePropertyReply;
  TxGetDevicePropertyReply = record
      repType : TCARD8;
      RepType : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      propertyType : TAtom;
      bytesAfter : TCARD32;
      nItems : TCARD32;
      format : TCARD8;
      deviceid : TCARD8;
      pad1 : TCARD16;
      pad2 : TCARD32;
      pad3 : TCARD32;
    end;


  PdeviceValuator = ^TdeviceValuator;
  TdeviceValuator = record
      _type : TBYTE;
      deviceid : TCARD8;
      sequenceNumber : TCARD16;
      device_state : TKeyButMask;
      num_valuators : TCARD8;
      first_valuator : TCARD8;
      valuator0 : TINT32;
      valuator1 : TINT32;
      valuator2 : TINT32;
      valuator3 : TINT32;
      valuator4 : TINT32;
      valuator5 : TINT32;
    end;


  PdeviceKeyButtonPointer = ^TdeviceKeyButtonPointer;
  TdeviceKeyButtonPointer = record
      _type : TBYTE;
      detail : TBYTE;
      sequenceNumber : TCARD16;
      time : TTime;
      root : TWindow;
      event : TWindow;
      child : TWindow;
      root_x : TINT16;
      root_y : TINT16;
      event_x : TINT16;
      event_y : TINT16;
      state : TKeyButMask;
      same_screen : TBOOL;
      deviceid : TCARD8;
    end;


  PdeviceFocus = ^TdeviceFocus;
  TdeviceFocus = record
      _type : TBYTE;
      detail : TBYTE;
      sequenceNumber : TCARD16;
      time : TTime;
      window : TWindow;
      mode : TBYTE;
      deviceid : TCARD8;
      pad1 : TBYTE;
      pad2 : TBYTE;
      pad00 : TCARD32;
      pad01 : TCARD32;
      pad02 : TCARD32;
      pad03 : TCARD32;
    end;


  PdeviceStateNotify = ^TdeviceStateNotify;
  TdeviceStateNotify = record
      _type : TBYTE;
      deviceid : TBYTE;
      sequenceNumber : TCARD16;
      time : TTime;
      num_keys : TCARD8;
      num_buttons : TCARD8;
      num_valuators : TCARD8;
      classes_reported : TCARD8;
      buttons : array[0..3] of TCARD8;
      keys : array[0..3] of TCARD8;
      valuator0 : TINT32;
      valuator1 : TINT32;
      valuator2 : TINT32;
    end;


  PdeviceKeyStateNotify = ^TdeviceKeyStateNotify;
  TdeviceKeyStateNotify = record
      _type : TBYTE;
      deviceid : TBYTE;
      sequenceNumber : TCARD16;
      keys : array[0..27] of TCARD8;
    end;


  PdeviceButtonStateNotify = ^TdeviceButtonStateNotify;
  TdeviceButtonStateNotify = record
      _type : TBYTE;
      deviceid : TBYTE;
      sequenceNumber : TCARD16;
      buttons : array[0..27] of TCARD8;
    end;


  PdeviceMappingNotify = ^TdeviceMappingNotify;
  TdeviceMappingNotify = record
      _type : TBYTE;
      deviceid : TBYTE;
      sequenceNumber : TCARD16;
      request : TCARD8;
      firstKeyCode : TKeyCode;
      count : TCARD8;
      pad1 : TBYTE;
      time : TTime;
      pad00 : TCARD32;
      pad01 : TCARD32;
      pad02 : TCARD32;
      pad03 : TCARD32;
      pad04 : TCARD32;
    end;


  PchangeDeviceNotify = ^TchangeDeviceNotify;
  TchangeDeviceNotify = record
      _type : TBYTE;
      deviceid : TBYTE;
      sequenceNumber : TCARD16;
      time : TTime;
      request : TCARD8;
      pad1 : TBYTE;
      pad2 : TBYTE;
      pad3 : TBYTE;
      pad00 : TCARD32;
      pad01 : TCARD32;
      pad02 : TCARD32;
      pad03 : TCARD32;
      pad04 : TCARD32;
    end;



  PdevicePresenceNotify = ^TdevicePresenceNotify;
  TdevicePresenceNotify = record
      _type : TBYTE;
      pad00 : TBYTE;
      sequenceNumber : TCARD16;
      time : TTime;
      devchange : TBYTE;
      deviceid : TBYTE;
      control : TCARD16;
      pad02 : TCARD32;
      pad03 : TCARD32;
      pad04 : TCARD32;
      pad05 : TCARD32;
      pad06 : TCARD32;
    end;





  PdevicePropertyNotify = ^TdevicePropertyNotify;
  TdevicePropertyNotify = record
      _type : TBYTE;
      state : TBYTE;
      sequenceNumber : TCARD16;
      time : TCARD32;
      atom : TAtom;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad5 : TCARD16;
      pad4 : TCARD8;
      deviceid : TCARD8;
    end;
{$undef Window}
{$undef Time}
{$undef KeyCode}
{$undef Mask}
{$undef Atom}
{$undef Cursor}
{$endif}

implementation


end.
