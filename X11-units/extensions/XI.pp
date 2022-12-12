
unit XI;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/XI.h
  The following command line parameters were used:
    /usr/include/X11/extensions/XI.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/XI.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XI_H_}
{$define _XI_H_}  

  const
    sz_xGetExtensionVersionReq = 8;    
    sz_xGetExtensionVersionReply = 32;    
    sz_xListInputDevicesReq = 4;    
    sz_xListInputDevicesReply = 32;    
    sz_xOpenDeviceReq = 8;    
    sz_xOpenDeviceReply = 32;    
    sz_xCloseDeviceReq = 8;    
    sz_xSetDeviceModeReq = 8;    
    sz_xSetDeviceModeReply = 32;    
    sz_xSelectExtensionEventReq = 12;    
    sz_xGetSelectedExtensionEventsReq = 8;    
    sz_xGetSelectedExtensionEventsReply = 32;    
    sz_xChangeDeviceDontPropagateListReq = 12;    
    sz_xGetDeviceDontPropagateListReq = 8;    
    sz_xGetDeviceDontPropagateListReply = 32;    
    sz_xGetDeviceMotionEventsReq = 16;    
    sz_xGetDeviceMotionEventsReply = 32;    
    sz_xChangeKeyboardDeviceReq = 8;    
    sz_xChangeKeyboardDeviceReply = 32;    
    sz_xChangePointerDeviceReq = 8;    
    sz_xChangePointerDeviceReply = 32;    
    sz_xGrabDeviceReq = 20;    
    sz_xGrabDeviceReply = 32;    
    sz_xUngrabDeviceReq = 12;    
    sz_xGrabDeviceKeyReq = 20;    
    sz_xGrabDeviceKeyReply = 32;    
    sz_xUngrabDeviceKeyReq = 16;    
    sz_xGrabDeviceButtonReq = 20;    
    sz_xGrabDeviceButtonReply = 32;    
    sz_xUngrabDeviceButtonReq = 16;    
    sz_xAllowDeviceEventsReq = 12;    
    sz_xGetDeviceFocusReq = 8;    
    sz_xGetDeviceFocusReply = 32;    
    sz_xSetDeviceFocusReq = 16;    
    sz_xGetFeedbackControlReq = 8;    
    sz_xGetFeedbackControlReply = 32;    
    sz_xChangeFeedbackControlReq = 12;    
    sz_xGetDeviceKeyMappingReq = 8;    
    sz_xGetDeviceKeyMappingReply = 32;    
    sz_xChangeDeviceKeyMappingReq = 8;    
    sz_xGetDeviceModifierMappingReq = 8;    
    sz_xSetDeviceModifierMappingReq = 8;    
    sz_xSetDeviceModifierMappingReply = 32;    
    sz_xGetDeviceButtonMappingReq = 8;    
    sz_xGetDeviceButtonMappingReply = 32;    
    sz_xSetDeviceButtonMappingReq = 8;    
    sz_xSetDeviceButtonMappingReply = 32;    
    sz_xQueryDeviceStateReq = 8;    
    sz_xQueryDeviceStateReply = 32;    
    sz_xSendExtensionEventReq = 16;    
    sz_xDeviceBellReq = 8;    
    sz_xSetDeviceValuatorsReq = 8;    
    sz_xSetDeviceValuatorsReply = 32;    
    sz_xGetDeviceControlReq = 8;    
    sz_xGetDeviceControlReply = 32;    
    sz_xChangeDeviceControlReq = 8;    
    sz_xChangeDeviceControlReply = 32;    
    sz_xListDevicePropertiesReq = 8;    
    sz_xListDevicePropertiesReply = 32;    
    sz_xChangeDevicePropertyReq = 20;    
    sz_xDeleteDevicePropertyReq = 12;    
    sz_xGetDevicePropertyReq = 24;    
    sz_xGetDevicePropertyReply = 32;    
    INAME = 'XInputExtension';    
    XI_KEYBOARD = 'KEYBOARD';    
    XI_MOUSE = 'MOUSE';    
    XI_TABLET = 'TABLET';    
    XI_TOUCHSCREEN = 'TOUCHSCREEN';    
    XI_TOUCHPAD = 'TOUCHPAD';    
    XI_BARCODE = 'BARCODE';    
    XI_BUTTONBOX = 'BUTTONBOX';    
    XI_KNOB_BOX = 'KNOB_BOX';    
    XI_ONE_KNOB = 'ONE_KNOB';    
    XI_NINE_KNOB = 'NINE_KNOB';    
    XI_TRACKBALL = 'TRACKBALL';    
    XI_QUADRATURE = 'QUADRATURE';    
    XI_ID_MODULE = 'ID_MODULE';    
    XI_SPACEBALL = 'SPACEBALL';    
    XI_DATAGLOVE = 'DATAGLOVE';    
    XI_EYETRACKER = 'EYETRACKER';    
    XI_CURSORKEYS = 'CURSORKEYS';    
    XI_FOOTMOUSE = 'FOOTMOUSE';    
    XI_JOYSTICK = 'JOYSTICK';    

    Dont_Check = 0;    
    XInput_Initial_Release = 1;    
    XInput_Add_XDeviceBell = 2;    
    XInput_Add_XSetDeviceValuators = 3;    
    XInput_Add_XChangeDeviceControl = 4;    
    XInput_Add_DevicePresenceNotify = 5;    
    XInput_Add_DeviceProperties = 6;    

    XI_Absent = 0;    
    XI_Present = 1;    
    XI_Initial_Release_Major = 1;    
    XI_Initial_Release_Minor = 0;    
    XI_Add_XDeviceBell_Major = 1;    
    XI_Add_XDeviceBell_Minor = 1;    
    XI_Add_XSetDeviceValuators_Major = 1;    
    XI_Add_XSetDeviceValuators_Minor = 2;    
    XI_Add_XChangeDeviceControl_Major = 1;    
    XI_Add_XChangeDeviceControl_Minor = 3;    
    XI_Add_DevicePresenceNotify_Major = 1;    
    XI_Add_DevicePresenceNotify_Minor = 4;    
    XI_Add_DeviceProperties_Major = 1;    
    XI_Add_DeviceProperties_Minor = 5;    
    DEVICE_RESOLUTION = 1;    
    DEVICE_ABS_CALIB = 2;    
    DEVICE_CORE = 3;    
    DEVICE_ENABLE = 4;    
    DEVICE_ABS_AREA = 5;    
    NoSuchExtension = 1;    
    COUNT = 0;    
    CREATE = 1;    
    NewPointer = 0;    
    NewKeyboard = 1;    
    XPOINTER = 0;    
    XKEYBOARD = 1;    
    UseXKeyboard = $FF;    
    IsXPointer = 0;    
    IsXKeyboard = 1;    
    IsXExtensionDevice = 2;    
    IsXExtensionKeyboard = 3;    
    IsXExtensionPointer = 4;    
    AsyncThisDevice = 0;    
    SyncThisDevice = 1;    
    ReplayThisDevice = 2;    
    AsyncOtherDevices = 3;    
    AsyncAll = 4;    
    SyncAll = 5;    
    FollowKeyboard = 3;    
{$ifndef RevertToFollowKeyboard}

  const
    RevertToFollowKeyboard = 3;    
{$endif}

  const
    DvAccelNum = 1 shl 0;    
    DvAccelDenom = 1 shl 1;    
    DvThreshold = 1 shl 2;    
    DvKeyClickPercent = 1 shl 0;    
    DvPercent = 1 shl 1;    
    DvPitch = 1 shl 2;    
    DvDuration = 1 shl 3;    
    DvLed = 1 shl 4;    
    DvLedMode = 1 shl 5;    
    DvKey = 1 shl 6;    
    DvAutoRepeatMode = 1 shl 7;    
    DvString = 1 shl 0;    
    DvInteger = 1 shl 0;    
    DeviceMode = 1 shl 0;    
    Relative = 0;    
    Absolute = 1;    
    ProximityState = 1 shl 1;    
    InProximity = 0 shl 1;    
    OutOfProximity = 1 shl 1;    
    AddToList = 0;    
    DeleteFromList = 1;    
    KeyClass = 0;    
    ButtonClass = 1;    
    ValuatorClass = 2;    
    FeedbackClass = 3;    
    ProximityClass = 4;    
    FocusClass = 5;    
    OtherClass = 6;    
    AttachClass = 7;    
    KbdFeedbackClass = 0;    
    PtrFeedbackClass = 1;    
    StringFeedbackClass = 2;    
    IntegerFeedbackClass = 3;    
    LedFeedbackClass = 4;    
    BellFeedbackClass = 5;    
    _devicePointerMotionHint = 0;    
    _deviceButton1Motion = 1;    
    _deviceButton2Motion = 2;    
    _deviceButton3Motion = 3;    
    _deviceButton4Motion = 4;    
    _deviceButton5Motion = 5;    
    _deviceButtonMotion = 6;    
    _deviceButtonGrab = 7;    
    _deviceOwnerGrabButton = 8;    
    _noExtensionEvent = 9;    
    _devicePresence = 0;    
    _deviceEnter = 0;    
    _deviceLeave = 1;    

    DeviceAdded = 0;    
    DeviceRemoved = 1;    
    DeviceEnabled = 2;    
    DeviceDisabled = 3;    
    DeviceUnrecoverable = 4;    
    DeviceControlChanged = 5;    

    XI_BadDevice = 0;    
    XI_BadEvent = 1;    
    XI_BadMode = 2;    
    XI_DeviceBusy = 3;    
    XI_BadClass = 4;    

{$ifdef _XSERVER64}

  type
    XEventClass = dword;
{$else}

  type
    XEventClass = dword;
{$endif}


  type
    XExtensionVersion = record
        present : longint;
        major_version : smallint;
        minor_version : smallint;
      end;
{$endif}


implementation


end.
