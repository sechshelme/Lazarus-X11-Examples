
unit XIproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/XIproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/XIproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/XIproto.pp
}

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
    _XExtEventInfo = record
        mask : Mask;
        _type : BYTE;
        word : BYTE;
      end;
    XExtEventInfo = _XExtEventInfo;
{$ifndef _XITYPEDEF_POINTER}

  type
    Pointer = pointer;
{$endif}

  type
    tmask = record
        mask : Mask;
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
    xGetExtensionVersionReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        nbytes : CARD16;
        pad1 : CARD8;
        pad2 : CARD8;
      end;



    xGetExtensionVersionReply = record
        repType : CARD8;
        RepType : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        major_version : CARD16;
        minor_version : CARD16;
        present : BOOL;
        pad1 : CARD8;
        pad2 : CARD8;
        pad3 : CARD8;
        pad01 : CARD32;
        pad02 : CARD32;
        pad03 : CARD32;
        pad04 : CARD32;
      end;




    xListInputDevicesReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
      end;



    xListInputDevicesReply = record
        repType : CARD8;
        RepType : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        ndevices : CARD8;
        pad1 : CARD8;
        pad2 : CARD8;
        pad3 : CARD8;
        pad01 : CARD32;
        pad02 : CARD32;
        pad03 : CARD32;
        pad04 : CARD32;
        pad05 : CARD32;
      end;

    xDeviceInfoPtr = ^_xDeviceInfo;

    xAnyClassPtr = ^_xAnyClassinfo;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

  type
    _xAnyClassinfo = record
        c_class : CARD8;
        _class : CARD8;
        length : CARD8;
      end;
    xAnyClassInfo = _xAnyClassinfo;



    _xDeviceInfo = record
        _type : CARD32;
        id : CARD8;
        num_classes : CARD8;
        use : CARD8;
        attached : CARD8;
      end;
    xDeviceInfo = _xDeviceInfo;

    xKeyInfoPtr = ^_xKeyInfo;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

  type
    _xKeyInfo = record
        c_class : CARD8;
        _class : CARD8;
        length : CARD8;
        min_keycode : KeyCode;
        max_keycode : KeyCode;
        num_keys : CARD16;
        pad1 : CARD8;
        pad2 : CARD8;
      end;
    xKeyInfo = _xKeyInfo;

    xButtonInfoPtr = ^_xButtonInfo;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

  type
    _xButtonInfo = record
        c_class : CARD8;
        _class : CARD8;
        length : CARD8;
        num_buttons : CARD16;
      end;
    xButtonInfo = _xButtonInfo;

    xValuatorInfoPtr = ^_xValuatorInfo;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

  type
    _xValuatorInfo = record
        c_class : CARD8;
        _class : CARD8;
        length : CARD8;
        num_axes : CARD8;
        mode : CARD8;
        motion_buffer_size : CARD32;
      end;
    xValuatorInfo = _xValuatorInfo;

    xAxisInfoPtr = ^_xAxisInfo;

    _xAxisInfo = record
        resolution : CARD32;
        min_value : CARD32;
        max_value : CARD32;
      end;
    xAxisInfo = _xAxisInfo;




    xOpenDeviceReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        deviceid : CARD8;
        pad1 : BYTE;
        pad2 : BYTE;
        pad3 : BYTE;
      end;



    xOpenDeviceReply = record
        repType : CARD8;
        RepType : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        num_classes : CARD8;
        pad1 : BYTE;
        pad2 : BYTE;
        pad3 : BYTE;
        pad00 : CARD32;
        pad01 : CARD32;
        pad02 : CARD32;
        pad03 : CARD32;
        pad04 : CARD32;
      end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

  type
    xInputClassInfo = record
        c_class : CARD8;
        _class : CARD8;
        event_type_base : CARD8;
      end;




    xCloseDeviceReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        deviceid : CARD8;
        pad1 : BYTE;
        pad2 : BYTE;
        pad3 : BYTE;
      end;




    xSetDeviceModeReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        deviceid : CARD8;
        mode : CARD8;
        pad1 : BYTE;
        pad2 : BYTE;
      end;



    xSetDeviceModeReply = record
        repType : CARD8;
        RepType : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        status : CARD8;
        pad1 : BYTE;
        pad2 : BYTE;
        pad3 : BYTE;
        pad01 : CARD32;
        pad02 : CARD32;
        pad03 : CARD32;
        pad04 : CARD32;
        pad05 : CARD32;
      end;




    xSelectExtensionEventReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        window : Window;
        count : CARD16;
        pad00 : CARD16;
      end;




    xGetSelectedExtensionEventsReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        window : Window;
      end;



    xGetSelectedExtensionEventsReply = record
        repType : CARD8;
        RepType : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        this_client_count : CARD16;
        all_clients_count : CARD16;
        pad01 : CARD32;
        pad02 : CARD32;
        pad03 : CARD32;
        pad04 : CARD32;
        pad05 : CARD32;
      end;




    xChangeDeviceDontPropagateListReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        window : Window;
        count : CARD16;
        mode : CARD8;
        pad : BYTE;
      end;




    xGetDeviceDontPropagateListReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        window : Window;
      end;



    xGetDeviceDontPropagateListReply = record
        repType : CARD8;
        RepType : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        count : CARD16;
        pad00 : CARD16;
        pad01 : CARD32;
        pad02 : CARD32;
        pad03 : CARD32;
        pad04 : CARD32;
        pad05 : CARD32;
      end;




    xGetDeviceMotionEventsReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        start : Time;
        stop : Time;
        deviceid : CARD8;
        pad1 : BYTE;
        pad2 : BYTE;
        pad3 : BYTE;
      end;



    xGetDeviceMotionEventsReply = record
        repType : CARD8;
        RepType : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        nEvents : CARD32;
        axes : CARD8;
        mode : CARD8;
        pad1 : BYTE;
        pad2 : BYTE;
        pad01 : CARD32;
        pad02 : CARD32;
        pad03 : CARD32;
        pad04 : CARD32;
      end;




    xChangeKeyboardDeviceReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        deviceid : CARD8;
        pad1 : BYTE;
        pad2 : BYTE;
        pad3 : BYTE;
      end;




    xChangeKeyboardDeviceReply = record
        repType : CARD8;
        RepType : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        status : CARD8;
        pad1 : BYTE;
        pad2 : BYTE;
        pad3 : BYTE;
        pad01 : CARD32;
        pad02 : CARD32;
        pad03 : CARD32;
        pad04 : CARD32;
        pad05 : CARD32;
      end;




    xChangePointerDeviceReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        xaxis : CARD8;
        yaxis : CARD8;
        deviceid : CARD8;
        pad1 : BYTE;
      end;




    xChangePointerDeviceReply = record
        repType : CARD8;
        RepType : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        status : CARD8;
        pad1 : BYTE;
        pad2 : BYTE;
        pad3 : BYTE;
        pad01 : CARD32;
        pad02 : CARD32;
        pad03 : CARD32;
        pad04 : CARD32;
        pad05 : CARD32;
      end;




    xGrabDeviceReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        grabWindow : Window;
        time : Time;
        event_count : CARD16;
        this_device_mode : CARD8;
        other_devices_mode : CARD8;
        ownerEvents : BOOL;
        deviceid : CARD8;
        pad01 : CARD16;
      end;




    xGrabDeviceReply = record
        repType : CARD8;
        RepType : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        status : CARD8;
        pad1 : BYTE;
        pad2 : BYTE;
        pad3 : BYTE;
        pad01 : CARD32;
        pad02 : CARD32;
        pad03 : CARD32;
        pad04 : CARD32;
        pad05 : CARD32;
      end;




    xUngrabDeviceReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        time : Time;
        deviceid : CARD8;
        pad1 : BYTE;
        pad2 : BYTE;
        pad3 : BYTE;
      end;




    xGrabDeviceKeyReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        grabWindow : Window;
        event_count : CARD16;
        modifiers : CARD16;
        modifier_device : CARD8;
        grabbed_device : CARD8;
        key : CARD8;
        this_device_mode : BYTE;
        other_devices_mode : BYTE;
        ownerEvents : BOOL;
        pad1 : BYTE;
        pad2 : BYTE;
      end;




    xUngrabDeviceKeyReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        grabWindow : Window;
        modifiers : CARD16;
        modifier_device : CARD8;
        key : CARD8;
        grabbed_device : CARD8;
        pad1 : BYTE;
        pad2 : BYTE;
        pad3 : BYTE;
      end;




    xGrabDeviceButtonReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        grabWindow : Window;
        grabbed_device : CARD8;
        modifier_device : CARD8;
        event_count : CARD16;
        modifiers : CARD16;
        this_device_mode : BYTE;
        other_devices_mode : BYTE;
        button : CARD8;
        ownerEvents : BOOL;
        pad1 : BYTE;
        pad2 : BYTE;
      end;




    xUngrabDeviceButtonReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        grabWindow : Window;
        modifiers : CARD16;
        modifier_device : CARD8;
        button : CARD8;
        grabbed_device : CARD8;
        pad1 : BYTE;
        pad2 : BYTE;
        pad3 : BYTE;
      end;




    xAllowDeviceEventsReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        time : Time;
        mode : CARD8;
        deviceid : CARD8;
        pad1 : BYTE;
        pad2 : BYTE;
      end;




    xGetDeviceFocusReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        deviceid : CARD8;
        pad1 : BYTE;
        pad2 : BYTE;
        pad3 : BYTE;
      end;



    xGetDeviceFocusReply = record
        repType : CARD8;
        RepType : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        focus : CARD32;
        time : Time;
        revertTo : CARD8;
        pad1 : BYTE;
        pad2 : BYTE;
        pad3 : BYTE;
        pad01 : CARD32;
        pad02 : CARD32;
        pad03 : CARD32;
      end;




    xSetDeviceFocusReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        focus : Window;
        time : Time;
        revertTo : CARD8;
        device : CARD8;
        pad01 : CARD16;
      end;




    xGetFeedbackControlReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        deviceid : CARD8;
        pad1 : BYTE;
        pad2 : BYTE;
        pad3 : BYTE;
      end;



    xGetFeedbackControlReply = record
        repType : CARD8;
        RepType : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        num_feedbacks : CARD16;
        pad01 : CARD16;
        pad02 : CARD32;
        pad03 : CARD32;
        pad04 : CARD32;
        pad05 : CARD32;
        pad06 : CARD32;
      end;
{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}

{$endif}



  type
    xFeedbackState = record
        c_class : CARD8;
        _class : CARD8;
        id : CARD8;
        length : CARD16;
      end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

  type
    xKbdFeedbackState = record
        c_class : CARD8;
        _class : CARD8;
        id : CARD8;
        length : CARD16;
        pitch : CARD16;
        duration : CARD16;
        led_mask : CARD32;
        led_values : CARD32;
        global_auto_repeat : BOOL;
        click : CARD8;
        percent : CARD8;
        pad : BYTE;
        auto_repeats : array[0..31] of BYTE;
      end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

  type
    xPtrFeedbackState = record
        c_class : CARD8;
        _class : CARD8;
        id : CARD8;
        length : CARD16;
        pad1 : CARD8;
        pad2 : CARD8;
        accelNum : CARD16;
        accelDenom : CARD16;
        threshold : CARD16;
      end;
{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}

{$endif}


  type
    xIntegerFeedbackState = record
        c_class : CARD8;
        _class : CARD8;
        id : CARD8;
        length : CARD16;
        resolution : CARD32;
        min_value : INT32;
        max_value : INT32;
      end;
{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}

{$endif}


  type
    xStringFeedbackState = record
        c_class : CARD8;
        _class : CARD8;
        id : CARD8;
        length : CARD16;
        max_symbols : CARD16;
        num_syms_supported : CARD16;
      end;
{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}

{$endif}


  type
    xBellFeedbackState = record
        c_class : CARD8;
        _class : CARD8;
        id : CARD8;
        length : CARD16;
        percent : CARD8;
        pad1 : BYTE;
        pad2 : BYTE;
        pad3 : BYTE;
        pitch : CARD16;
        duration : CARD16;
      end;
{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}

{$endif}


  type
    xLedFeedbackState = record
        c_class : CARD8;
        _class : CARD8;
        id : CARD8;
        length : CARD16;
        led_mask : CARD32;
        led_values : CARD32;
      end;




    xChangeFeedbackControlReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        mask : CARD32;
        deviceid : CARD8;
        feedbackid : CARD8;
        pad1 : BYTE;
        pad2 : BYTE;
      end;
{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}

{$endif}



  type
    xFeedbackCtl = record
        c_class : CARD8;
        _class : CARD8;
        id : CARD8;
        length : CARD16;
      end;
{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}

{$endif}



  type
    xKbdFeedbackCtl = record
        c_class : CARD8;
        _class : CARD8;
        id : CARD8;
        length : CARD16;
        key : KeyCode;
        auto_repeat_mode : CARD8;
        click : INT8;
        percent : INT8;
        pitch : INT16;
        duration : INT16;
        led_mask : CARD32;
        led_values : CARD32;
      end;
{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}

{$endif}



  type
    xPtrFeedbackCtl = record
        c_class : CARD8;
        _class : CARD8;
        id : CARD8;
        length : CARD16;
        pad1 : CARD8;
        pad2 : CARD8;
        num : INT16;
        denom : INT16;
        thresh : INT16;
      end;
{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}

{$endif}



  type
    xIntegerFeedbackCtl = record
        c_class : CARD8;
        _class : CARD8;
        id : CARD8;
        length : CARD16;
        int_to_display : INT32;
      end;
{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}

{$endif}



  type
    xStringFeedbackCtl = record
        c_class : CARD8;
        _class : CARD8;
        id : CARD8;
        length : CARD16;
        pad1 : CARD8;
        pad2 : CARD8;
        num_keysyms : CARD16;
      end;
{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}

{$endif}



  type
    xBellFeedbackCtl = record
        c_class : CARD8;
        _class : CARD8;
        id : CARD8;
        length : CARD16;
        percent : INT8;
        pad1 : BYTE;
        pad2 : BYTE;
        pad3 : BYTE;
        pitch : INT16;
        duration : INT16;
      end;
{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}

{$endif}



  type
    xLedFeedbackCtl = record
        c_class : CARD8;
        _class : CARD8;
        id : CARD8;
        length : CARD16;
        led_mask : CARD32;
        led_values : CARD32;
      end;




    xGetDeviceKeyMappingReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        deviceid : CARD8;
        firstKeyCode : KeyCode;
        count : CARD8;
        pad1 : BYTE;
      end;



    xGetDeviceKeyMappingReply = record
        repType : CARD8;
        RepType : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        keySymsPerKeyCode : CARD8;
        pad0 : CARD8;
        pad1 : CARD16;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;




    xChangeDeviceKeyMappingReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        deviceid : CARD8;
        firstKeyCode : KeyCode;
        keySymsPerKeyCode : CARD8;
        keyCodes : CARD8;
      end;




    xGetDeviceModifierMappingReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        deviceid : CARD8;
        pad1 : BYTE;
        pad2 : BYTE;
        pad3 : BYTE;
      end;



    xGetDeviceModifierMappingReply = record
        repType : CARD8;
        RepType : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        numKeyPerModifier : CARD8;
        pad0 : CARD8;
        pad1 : CARD16;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;




    xSetDeviceModifierMappingReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        deviceid : CARD8;
        numKeyPerModifier : CARD8;
        pad1 : CARD16;
      end;



    xSetDeviceModifierMappingReply = record
        repType : CARD8;
        RepType : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        success : CARD8;
        pad0 : CARD8;
        pad1 : CARD16;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;




    xGetDeviceButtonMappingReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        deviceid : CARD8;
        pad1 : BYTE;
        pad2 : BYTE;
        pad3 : BYTE;
      end;



    xGetDeviceButtonMappingReply = record
        repType : CARD8;
        RepType : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        nElts : CARD8;
        pad1 : BYTE;
        pad2 : BYTE;
        pad3 : BYTE;
        pad01 : CARD32;
        pad02 : CARD32;
        pad03 : CARD32;
        pad04 : CARD32;
        pad05 : CARD32;
      end;




    xSetDeviceButtonMappingReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        deviceid : CARD8;
        map_length : CARD8;
        pad1 : BYTE;
        pad2 : BYTE;
      end;



    xSetDeviceButtonMappingReply = record
        repType : CARD8;
        RepType : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        status : CARD8;
        pad0 : BYTE;
        pad1 : CARD16;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;



    xQueryDeviceStateReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        deviceid : CARD8;
        pad1 : BYTE;
        pad2 : BYTE;
        pad3 : BYTE;
      end;



    xQueryDeviceStateReply = record
        repType : CARD8;
        RepType : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        num_classes : CARD8;
        pad0 : BYTE;
        pad1 : CARD16;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

  type
    xKeyState = record
        c_class : CARD8;
        _class : CARD8;
        length : CARD8;
        num_keys : CARD8;
        pad1 : BYTE;
        keys : array[0..31] of CARD8;
      end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

  type
    xButtonState = record
        c_class : CARD8;
        _class : CARD8;
        length : CARD8;
        num_buttons : CARD8;
        pad1 : BYTE;
        buttons : array[0..31] of CARD8;
      end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

  type
    xValuatorState = record
        c_class : CARD8;
        _class : CARD8;
        length : CARD8;
        num_valuators : CARD8;
        mode : CARD8;
      end;



    xSendExtensionEventReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        destination : Window;
        deviceid : CARD8;
        propagate : BOOL;
        count : CARD16;
        num_events : CARD8;
        pad1 : BYTE;
        pad2 : BYTE;
        pad3 : BYTE;
      end;



    xDeviceBellReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        deviceid : CARD8;
        feedbackid : CARD8;
        feedbackclass : CARD8;
        percent : INT8;
      end;




    xSetDeviceValuatorsReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        deviceid : CARD8;
        first_valuator : CARD8;
        num_valuators : CARD8;
        pad1 : BYTE;
      end;



    xSetDeviceValuatorsReply = record
        repType : CARD8;
        RepType : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        status : CARD8;
        pad1 : BYTE;
        pad2 : BYTE;
        pad3 : BYTE;
        pad01 : CARD32;
        pad02 : CARD32;
        pad03 : CARD32;
        pad04 : CARD32;
        pad05 : CARD32;
      end;




    xGetDeviceControlReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        control : CARD16;
        deviceid : CARD8;
        pad2 : BYTE;
      end;



    xGetDeviceControlReply = record
        repType : CARD8;
        RepType : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        status : CARD8;
        pad1 : BYTE;
        pad2 : BYTE;
        pad3 : BYTE;
        pad01 : CARD32;
        pad02 : CARD32;
        pad03 : CARD32;
        pad04 : CARD32;
        pad05 : CARD32;
      end;



    xDeviceState = record
        control : CARD16;
        length : CARD16;
      end;




    xDeviceResolutionState = record
        control : CARD16;
        length : CARD16;
        num_valuators : CARD32;
      end;

    xDeviceAbsCalibState = record
        control : CARD16;
        length : CARD16;
        min_x : INT32;
        max_x : INT32;
        min_y : INT32;
        max_y : INT32;
        flip_x : CARD32;
        flip_y : CARD32;
        rotation : CARD32;
        button_threshold : CARD32;
      end;

    xDeviceAbsAreaState = record
        control : CARD16;
        length : CARD16;
        offset_x : CARD32;
        offset_y : CARD32;
        width : CARD32;
        height : CARD32;
        screen : CARD32;
        following : CARD32;
      end;



    xDeviceCoreState = record
        control : CARD16;
        length : CARD16;
        status : CARD8;
        iscore : CARD8;
        pad1 : CARD16;
      end;



    xDeviceEnableState = record
        control : CARD16;
        length : CARD16;
        enable : CARD8;
        pad0 : CARD8;
        pad1 : CARD16;
      end;




    xChangeDeviceControlReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        control : CARD16;
        deviceid : CARD8;
        pad0 : BYTE;
      end;



    xChangeDeviceControlReply = record
        repType : CARD8;
        RepType : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        status : CARD8;
        pad1 : BYTE;
        pad2 : BYTE;
        pad3 : BYTE;
        pad01 : CARD32;
        pad02 : CARD32;
        pad03 : CARD32;
        pad04 : CARD32;
        pad05 : CARD32;
      end;



    xDeviceCtl = record
        control : CARD16;
        length : CARD16;
      end;





    xDeviceResolutionCtl = record
        control : CARD16;
        length : CARD16;
        first_valuator : CARD8;
        num_valuators : CARD8;
        pad1 : CARD8;
        pad2 : CARD8;
      end;

    xDeviceAbsCalibCtl = record
        control : CARD16;
        length : CARD16;
        min_x : INT32;
        max_x : INT32;
        min_y : INT32;
        max_y : INT32;
        flip_x : CARD32;
        flip_y : CARD32;
        rotation : CARD32;
        button_threshold : CARD32;
      end;

    xDeviceAbsAreaCtl = record
        control : CARD16;
        length : CARD16;
        offset_x : CARD32;
        offset_y : CARD32;
        width : INT32;
        height : INT32;
        screen : INT32;
        following : CARD32;
      end;

    xDeviceCoreCtl = record
        control : CARD16;
        length : CARD16;
        status : CARD8;
        pad0 : CARD8;
        pad1 : CARD16;
      end;

    xDeviceEnableCtl = record
        control : CARD16;
        length : CARD16;
        enable : CARD8;
        pad0 : CARD8;
        pad1 : CARD16;
      end;





    xListDevicePropertiesReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        deviceid : CARD8;
        pad0 : CARD8;
        pad1 : CARD16;
      end;



    xListDevicePropertiesReply = record
        repType : CARD8;
        RepType : CARD8;
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




    xChangeDevicePropertyReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        _property : Atom;
        _type : Atom;
        deviceid : CARD8;
        format : CARD8;
        mode : CARD8;
        pad : CARD8;
        nUnits : CARD32;
      end;




    xDeleteDevicePropertyReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        _property : Atom;
        deviceid : CARD8;
        pad0 : CARD8;
        pad1 : CARD16;
      end;



{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

  type
    xGetDevicePropertyReq = record
        reqType : CARD8;
        ReqType : CARD8;
        length : CARD16;
        _property : Atom;
        _type : Atom;
        longOffset : CARD32;
        longLength : CARD32;
        deviceid : CARD8;
        c_delete : BOOL;
        delete : BOOL;
        pad : CARD16;
      end;



    xGetDevicePropertyReply = record
        repType : CARD8;
        RepType : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        propertyType : Atom;
        bytesAfter : CARD32;
        nItems : CARD32;
        format : CARD8;
        deviceid : CARD8;
        pad1 : CARD16;
        pad2 : CARD32;
        pad3 : CARD32;
      end;


    deviceValuator = record
        _type : BYTE;
        deviceid : CARD8;
        sequenceNumber : CARD16;
        device_state : KeyButMask;
        num_valuators : CARD8;
        first_valuator : CARD8;
        valuator0 : INT32;
        valuator1 : INT32;
        valuator2 : INT32;
        valuator3 : INT32;
        valuator4 : INT32;
        valuator5 : INT32;
      end;


    deviceKeyButtonPointer = record
        _type : BYTE;
        detail : BYTE;
        sequenceNumber : CARD16;
        time : Time;
        root : Window;
        event : Window;
        child : Window;
        root_x : INT16;
        root_y : INT16;
        event_x : INT16;
        event_y : INT16;
        state : KeyButMask;
        same_screen : BOOL;
        deviceid : CARD8;
      end;


    deviceFocus = record
        _type : BYTE;
        detail : BYTE;
        sequenceNumber : CARD16;
        time : Time;
        window : Window;
        mode : BYTE;
        deviceid : CARD8;
        pad1 : BYTE;
        pad2 : BYTE;
        pad00 : CARD32;
        pad01 : CARD32;
        pad02 : CARD32;
        pad03 : CARD32;
      end;


    deviceStateNotify = record
        _type : BYTE;
        deviceid : BYTE;
        sequenceNumber : CARD16;
        time : Time;
        num_keys : CARD8;
        num_buttons : CARD8;
        num_valuators : CARD8;
        classes_reported : CARD8;
        buttons : array[0..3] of CARD8;
        keys : array[0..3] of CARD8;
        valuator0 : INT32;
        valuator1 : INT32;
        valuator2 : INT32;
      end;


    deviceKeyStateNotify = record
        _type : BYTE;
        deviceid : BYTE;
        sequenceNumber : CARD16;
        keys : array[0..27] of CARD8;
      end;


    deviceButtonStateNotify = record
        _type : BYTE;
        deviceid : BYTE;
        sequenceNumber : CARD16;
        buttons : array[0..27] of CARD8;
      end;


    deviceMappingNotify = record
        _type : BYTE;
        deviceid : BYTE;
        sequenceNumber : CARD16;
        request : CARD8;
        firstKeyCode : KeyCode;
        count : CARD8;
        pad1 : BYTE;
        time : Time;
        pad00 : CARD32;
        pad01 : CARD32;
        pad02 : CARD32;
        pad03 : CARD32;
        pad04 : CARD32;
      end;


    changeDeviceNotify = record
        _type : BYTE;
        deviceid : BYTE;
        sequenceNumber : CARD16;
        time : Time;
        request : CARD8;
        pad1 : BYTE;
        pad2 : BYTE;
        pad3 : BYTE;
        pad00 : CARD32;
        pad01 : CARD32;
        pad02 : CARD32;
        pad03 : CARD32;
        pad04 : CARD32;
      end;



    devicePresenceNotify = record
        _type : BYTE;
        pad00 : BYTE;
        sequenceNumber : CARD16;
        time : Time;
        devchange : BYTE;
        deviceid : BYTE;
        control : CARD16;
        pad02 : CARD32;
        pad03 : CARD32;
        pad04 : CARD32;
        pad05 : CARD32;
        pad06 : CARD32;
      end;





    devicePropertyNotify = record
        _type : BYTE;
        state : BYTE;
        sequenceNumber : CARD16;
        time : CARD32;
        atom : Atom;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad5 : CARD16;
        pad4 : CARD8;
        deviceid : CARD8;
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
