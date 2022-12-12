
unit XInput;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XInput.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XInput.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XInput.pp
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
    Pbyte  = ^byte;
    Pchar  = ^char;
    PDisplay  = ^Display;
    Pdword  = ^dword;
    PKeySym  = ^KeySym;
    Plongint  = ^longint;
    PTime  = ^Time;
    PWindow  = ^Window;
    PXAnyClassinfo  = ^XAnyClassinfo;
    PXAnyClassPtr  = ^XAnyClassPtr;
    PXAxisInfo  = ^XAxisInfo;
    PXAxisInfoPtr  = ^XAxisInfoPtr;
    PXBellFeedbackControl  = ^XBellFeedbackControl;
    PXBellFeedbackState  = ^XBellFeedbackState;
    PXButtonInfo  = ^XButtonInfo;
    PXButtonInfoPtr  = ^XButtonInfoPtr;
    PXButtonState  = ^XButtonState;
    PXButtonStatus  = ^XButtonStatus;
    PXChangeDeviceNotifyEvent  = ^XChangeDeviceNotifyEvent;
    PXDevice  = ^XDevice;
    PXDeviceAbsAreaControl  = ^XDeviceAbsAreaControl;
    PXDeviceAbsAreaState  = ^XDeviceAbsAreaState;
    PXDeviceAbsCalibControl  = ^XDeviceAbsCalibControl;
    PXDeviceAbsCalibState  = ^XDeviceAbsCalibState;
    PXDeviceButtonEvent  = ^XDeviceButtonEvent;
    PXDeviceButtonPressedEvent  = ^XDeviceButtonPressedEvent;
    PXDeviceButtonReleasedEvent  = ^XDeviceButtonReleasedEvent;
    PXDeviceControl  = ^XDeviceControl;
    PXDeviceCoreControl  = ^XDeviceCoreControl;
    PXDeviceCoreState  = ^XDeviceCoreState;
    PXDeviceEnableControl  = ^XDeviceEnableControl;
    PXDeviceEnableState  = ^XDeviceEnableState;
    PXDeviceFocusChangeEvent  = ^XDeviceFocusChangeEvent;
    PXDeviceFocusInEvent  = ^XDeviceFocusInEvent;
    PXDeviceFocusOutEvent  = ^XDeviceFocusOutEvent;
    PXDeviceInfo  = ^XDeviceInfo;
    PXDeviceInfoPtr  = ^XDeviceInfoPtr;
    PXDeviceKeyEvent  = ^XDeviceKeyEvent;
    PXDeviceKeyPressedEvent  = ^XDeviceKeyPressedEvent;
    PXDeviceKeyReleasedEvent  = ^XDeviceKeyReleasedEvent;
    PXDeviceMappingEvent  = ^XDeviceMappingEvent;
    PXDeviceMotionEvent  = ^XDeviceMotionEvent;
    PXDevicePresenceNotifyEvent  = ^XDevicePresenceNotifyEvent;
    PXDevicePropertyNotifyEvent  = ^XDevicePropertyNotifyEvent;
    PXDeviceResolutionControl  = ^XDeviceResolutionControl;
    PXDeviceResolutionState  = ^XDeviceResolutionState;
    PXDeviceState  = ^XDeviceState;
    PXDeviceStateNotifyEvent  = ^XDeviceStateNotifyEvent;
    PXDeviceTimeCoord  = ^XDeviceTimeCoord;
    PXEvent  = ^XEvent;
    PXEventClass  = ^XEventClass;
    PXEventList  = ^XEventList;
    PXFeedbackControl  = ^XFeedbackControl;
    PXFeedbackState  = ^XFeedbackState;
    PXInputClass  = ^XInputClass;
    PXInputClassInfo  = ^XInputClassInfo;
    PXIntegerFeedbackControl  = ^XIntegerFeedbackControl;
    PXIntegerFeedbackState  = ^XIntegerFeedbackState;
    PXKbdFeedbackControl  = ^XKbdFeedbackControl;
    PXKbdFeedbackState  = ^XKbdFeedbackState;
    PXKeyInfo  = ^XKeyInfo;
    PXKeyInfoPtr  = ^XKeyInfoPtr;
    PXKeyState  = ^XKeyState;
    PXKeyStatus  = ^XKeyStatus;
    PXLedFeedbackControl  = ^XLedFeedbackControl;
    PXLedFeedbackState  = ^XLedFeedbackState;
    PXModifierKeymap  = ^XModifierKeymap;
    PXProximityInEvent  = ^XProximityInEvent;
    PXProximityNotifyEvent  = ^XProximityNotifyEvent;
    PXProximityOutEvent  = ^XProximityOutEvent;
    PXPtrFeedbackControl  = ^XPtrFeedbackControl;
    PXPtrFeedbackState  = ^XPtrFeedbackState;
    PXStringFeedbackControl  = ^XStringFeedbackControl;
    PXStringFeedbackState  = ^XStringFeedbackState;
    PXValuatorInfo  = ^XValuatorInfo;
    PXValuatorInfoPtr  = ^XValuatorInfoPtr;
    PXValuatorState  = ^XValuatorState;
    PXValuatorStatus  = ^XValuatorStatus;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XINPUT_H_}
{$define _XINPUT_H_}
{$include <X11/Xlib.h>}
{$include <X11/extensions/XI.h>}

const
  _deviceKeyPress = 0;  
  _deviceKeyRelease = 1;  
  _deviceButtonPress = 0;  
  _deviceButtonRelease = 1;  
  _deviceMotionNotify = 0;  
  _deviceFocusIn = 0;  
  _deviceFocusOut = 1;  
  _proximityIn = 0;  
  _proximityOut = 1;  
  _deviceStateNotify = 0;  
  _deviceMappingNotify = 1;  
  _changeDeviceNotify = 2;  

  _propertyNotify = 6;  
(* error 
    { int _i; XInputClassInfo *_ip; \
in declaration at line 78 *)
      var
        _ip : PXInputClassInfo;cvar;public;
(* error 
    { int _i; XInputClassInfo *_ip; \
(* error 
    type = 0; _class = 0; \
in declaration at line 79 *)
(* error 
    type = 0; _class = 0; \
in declaration at line 79 *)
(* error 
    type = 0; _class = 0; \
(* error 
    for (_i=0, _ip= ((XDevice *) d)->classes; \
in declaration at line 80 *)
(* error 
    for (_i=0, _ip= ((XDevice *) d)->classes; \
(* error 
	 _i< ((XDevice *) d)->num_classes; \
in declaration at line 81 *)
(* error 
	 _i< ((XDevice *) d)->num_classes; \
(* error 
	 _i++, _ip++) \
in declaration at line 84 *)
(* error 
	    {type =  _ip->event_type_base + offset; \
(* error 
	     _class =  ((XDevice *) d)->device_id << 8 | type;}}
in declaration at line 85 *)
(* error 
	     _class =  ((XDevice *) d)->device_id << 8 | type;}}
in define line 88 *)

    function DeviceKeyRelease(d,_type,_class : longint) : longint;    

    function DeviceButtonPress(d,_type,_class : longint) : longint;    

    function DeviceButtonRelease(d,_type,_class : longint) : longint;    

    function DeviceMotionNotify(d,_type,_class : longint) : longint;    

    function DeviceFocusIn(d,_type,_class : longint) : longint;    

    function DeviceFocusOut(d,_type,_class : longint) : longint;    

    function ProximityIn(d,_type,_class : longint) : longint;    

    function ProximityOut(d,_type,_class : longint) : longint;    

    function DeviceStateNotify(d,_type,_class : longint) : longint;    

    function DeviceMappingNotify(d,_type,_class : longint) : longint;    

    function ChangeDeviceNotify(d,_type,_class : longint) : longint;    

    function DevicePropertyNotify(d,_type,_class : longint) : longint;    

(* error 
    { _class =  ((XDevice *) d)->device_id << 8 | _devicePointerMotionHint;}
in declaration at line 127 *)
(* error 
    { _class =  ((XDevice *) d)->device_id << 8 | _devicePointerMotionHint;}
in declaration at line 130 *)
(* error 
    { _class =  ((XDevice *) d)->device_id << 8 | _deviceButton1Motion;}
in declaration at line 133 *)
(* error 
    { _class =  ((XDevice *) d)->device_id << 8 | _deviceButton2Motion;}
in declaration at line 136 *)
(* error 
    { _class =  ((XDevice *) d)->device_id << 8 | _deviceButton3Motion;}
in declaration at line 139 *)
(* error 
    { _class =  ((XDevice *) d)->device_id << 8 | _deviceButton4Motion;}
in declaration at line 142 *)
(* error 
    { _class =  ((XDevice *) d)->device_id << 8 | _deviceButton5Motion;}
in declaration at line 145 *)
(* error 
    { _class =  ((XDevice *) d)->device_id << 8 | _deviceButtonMotion;}
in declaration at line 148 *)
(* error 
    { _class =  ((XDevice *) d)->device_id << 8 | _deviceOwnerGrabButton;}
in declaration at line 151 *)
(* error 
    { _class =  ((XDevice *) d)->device_id << 8 | _deviceButtonGrab;}
in declaration at line 154 *)
(* error 
    { _class =  ((XDevice *) d)->device_id << 8 | _noExtensionEvent;}

{$if defined(__cplusplus) || defined(c_plusplus)}
{$endif}
in declaration at line 161 *)

procedure _xibaddevice(dpy:PDisplay; error:Plongint);cdecl;external;
procedure _xibadclass(dpy:PDisplay; error:Plongint);cdecl;external;
procedure _xibadevent(dpy:PDisplay; error:Plongint);cdecl;external;
procedure _xibadmode(dpy:PDisplay; error:Plongint);cdecl;external;
procedure _xidevicebusy(dpy:PDisplay; error:Plongint);cdecl;external;
{$if defined(__cplusplus) || defined(c_plusplus)}
(* error 
}
{$endif}
in declaration at line 173 *)
(* error 
        type = _XiGetDevicePresenceNotifyEvent(dpy);            \
(* error 
        _class =  (0x10000 | _devicePresence);                  \
in declaration at line 174 *)
(* error 
        _class =  (0x10000 | _devicePresence);                  \
(* error 
    }

in define line 178 *)

    function BadClass(dpy,error : longint) : longint;    

    function BadEvent(dpy,error : longint) : longint;    

    function BadMode(dpy,error : longint) : longint;    

    function DeviceBusy(dpy,error : longint) : longint;    

    type
      PXAnyClassPtr = ^TXAnyClassPtr;
      TXAnyClassPtr = PXAnyClassinfo;

















      PXDeviceKeyEvent = ^TXDeviceKeyEvent;
      TXDeviceKeyEvent = record
          _type : longint;
          serial : dword;
          send_event : TBool;
          display : PDisplay;
          window : TWindow;
          deviceid : TXID;
          root : TWindow;
          subwindow : TWindow;
          time : TTime;
          x : longint;
          y : longint;
          x_root : longint;
          y_root : longint;
          state : dword;
          keycode : dword;
          same_screen : TBool;
          device_state : dword;
          axes_count : byte;
          first_axis : byte;
          axis_data : array[0..5] of longint;
        end;

      PXDeviceKeyPressedEvent = ^TXDeviceKeyPressedEvent;
      TXDeviceKeyPressedEvent = TXDeviceKeyEvent;

      PXDeviceKeyReleasedEvent = ^TXDeviceKeyReleasedEvent;
      TXDeviceKeyReleasedEvent = TXDeviceKeyEvent;

















      PXDeviceButtonEvent = ^TXDeviceButtonEvent;
      TXDeviceButtonEvent = record
          _type : longint;
          serial : dword;
          send_event : TBool;
          display : PDisplay;
          window : TWindow;
          deviceid : TXID;
          root : TWindow;
          subwindow : TWindow;
          time : TTime;
          x : longint;
          y : longint;
          x_root : longint;
          y_root : longint;
          state : dword;
          button : dword;
          same_screen : TBool;
          device_state : dword;
          axes_count : byte;
          first_axis : byte;
          axis_data : array[0..5] of longint;
        end;

      PXDeviceButtonPressedEvent = ^TXDeviceButtonPressedEvent;
      TXDeviceButtonPressedEvent = TXDeviceButtonEvent;

      PXDeviceButtonReleasedEvent = ^TXDeviceButtonReleasedEvent;
      TXDeviceButtonReleasedEvent = TXDeviceButtonEvent;

















      PXDeviceMotionEvent = ^TXDeviceMotionEvent;
      TXDeviceMotionEvent = record
          _type : longint;
          serial : dword;
          send_event : TBool;
          display : PDisplay;
          window : TWindow;
          deviceid : TXID;
          root : TWindow;
          subwindow : TWindow;
          time : TTime;
          x : longint;
          y : longint;
          x_root : longint;
          y_root : longint;
          state : dword;
          is_hint : char;
          same_screen : TBool;
          device_state : dword;
          axes_count : byte;
          first_axis : byte;
          axis_data : array[0..5] of longint;
        end;









      PXDeviceFocusChangeEvent = ^TXDeviceFocusChangeEvent;
      TXDeviceFocusChangeEvent = record
          _type : longint;
          serial : dword;
          send_event : TBool;
          display : PDisplay;
          window : TWindow;
          deviceid : TXID;
          mode : longint;
          detail : longint;
          time : TTime;
        end;

      PXDeviceFocusInEvent = ^TXDeviceFocusInEvent;
      TXDeviceFocusInEvent = TXDeviceFocusChangeEvent;

      PXDeviceFocusOutEvent = ^TXDeviceFocusOutEvent;
      TXDeviceFocusOutEvent = TXDeviceFocusChangeEvent;






      PXProximityNotifyEvent = ^TXProximityNotifyEvent;
      TXProximityNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : TBool;
          display : PDisplay;
          window : TWindow;
          deviceid : TXID;
          root : TWindow;
          subwindow : TWindow;
          time : TTime;
          x : longint;
          y : longint;
          x_root : longint;
          y_root : longint;
          state : dword;
          same_screen : TBool;
          device_state : dword;
          axes_count : byte;
          first_axis : byte;
          axis_data : array[0..5] of longint;
        end;

      PXProximityInEvent = ^TXProximityInEvent;
      TXProximityInEvent = TXProximityNotifyEvent;

      PXProximityOutEvent = ^TXProximityOutEvent;
      TXProximityOutEvent = TXProximityNotifyEvent;

{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
    type
      PXInputClass = ^TXInputClass;
      TXInputClass = record
          c_class : byte;
          _class : byte;
          length : byte;
        end;




      PXDeviceStateNotifyEvent = ^TXDeviceStateNotifyEvent;
      TXDeviceStateNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : TBool;
          display : PDisplay;
          window : TWindow;
          deviceid : TXID;
          time : TTime;
          num_classes : longint;
          data : array[0..63] of char;
        end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
    type
      PXValuatorStatus = ^TXValuatorStatus;
      TXValuatorStatus = record
          c_class : byte;
          _class : byte;
          length : byte;
          num_valuators : byte;
          mode : byte;
          valuators : array[0..5] of longint;
        end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
    type
      PXKeyStatus = ^TXKeyStatus;
      TXKeyStatus = record
          c_class : byte;
          _class : byte;
          length : byte;
          num_keys : smallint;
          keys : array[0..31] of char;
        end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
    type
      PXButtonStatus = ^TXButtonStatus;
      TXButtonStatus = record
          c_class : byte;
          _class : byte;
          length : byte;
          num_buttons : smallint;
          buttons : array[0..31] of char;
        end;









      PXDeviceMappingEvent = ^TXDeviceMappingEvent;
      TXDeviceMappingEvent = record
          _type : longint;
          serial : dword;
          send_event : TBool;
          display : PDisplay;
          window : TWindow;
          deviceid : TXID;
          time : TTime;
          request : longint;
          first_keycode : longint;
          count : longint;
        end;







      PXChangeDeviceNotifyEvent = ^TXChangeDeviceNotifyEvent;
      TXChangeDeviceNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : TBool;
          display : PDisplay;
          window : TWindow;
          deviceid : TXID;
          time : TTime;
          request : longint;
        end;






      PXDevicePresenceNotifyEvent = ^TXDevicePresenceNotifyEvent;
      TXDevicePresenceNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : TBool;
          display : PDisplay;
          window : TWindow;
          time : TTime;
          devchange : TBool;
          deviceid : TXID;
          control : TXID;
        end;









      PXDevicePropertyNotifyEvent = ^TXDevicePropertyNotifyEvent;
      TXDevicePropertyNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : TBool;
          display : PDisplay;
          window : TWindow;
          time : TTime;
          deviceid : TXID;
          atom : TAtom;
          state : longint;
        end;

{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
    type
      PXFeedbackState = ^TXFeedbackState;
      TXFeedbackState = record
          c_class : TXID;
          _class : TXID;
          length : longint;
          id : TXID;
        end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
    type
      PXKbdFeedbackState = ^TXKbdFeedbackState;
      TXKbdFeedbackState = record
          c_class : TXID;
          _class : TXID;
          length : longint;
          id : TXID;
          click : longint;
          percent : longint;
          pitch : longint;
          duration : longint;
          led_mask : longint;
          global_auto_repeat : longint;
          auto_repeats : array[0..31] of char;
        end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
    type
      PXPtrFeedbackState = ^TXPtrFeedbackState;
      TXPtrFeedbackState = record
          c_class : TXID;
          _class : TXID;
          length : longint;
          id : TXID;
          accelNum : longint;
          accelDenom : longint;
          threshold : longint;
        end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
    type
      PXIntegerFeedbackState = ^TXIntegerFeedbackState;
      TXIntegerFeedbackState = record
          c_class : TXID;
          _class : TXID;
          length : longint;
          id : TXID;
          resolution : longint;
          minVal : longint;
          maxVal : longint;
        end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
    type
      PXStringFeedbackState = ^TXStringFeedbackState;
      TXStringFeedbackState = record
          c_class : TXID;
          _class : TXID;
          length : longint;
          id : TXID;
          max_symbols : longint;
          num_syms_supported : longint;
          syms_supported : PKeySym;
        end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
    type
      PXBellFeedbackState = ^TXBellFeedbackState;
      TXBellFeedbackState = record
          c_class : TXID;
          _class : TXID;
          length : longint;
          id : TXID;
          percent : longint;
          pitch : longint;
          duration : longint;
        end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
    type
      PXLedFeedbackState = ^TXLedFeedbackState;
      TXLedFeedbackState = record
          c_class : TXID;
          _class : TXID;
          length : longint;
          id : TXID;
          led_values : longint;
          led_mask : longint;
        end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
    type
      PXFeedbackControl = ^TXFeedbackControl;
      TXFeedbackControl = record
          c_class : TXID;
          _class : TXID;
          length : longint;
          id : TXID;
        end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
    type
      PXPtrFeedbackControl = ^TXPtrFeedbackControl;
      TXPtrFeedbackControl = record
          c_class : TXID;
          _class : TXID;
          length : longint;
          id : TXID;
          accelNum : longint;
          accelDenom : longint;
          threshold : longint;
        end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
    type
      PXKbdFeedbackControl = ^TXKbdFeedbackControl;
      TXKbdFeedbackControl = record
          c_class : TXID;
          _class : TXID;
          length : longint;
          id : TXID;
          click : longint;
          percent : longint;
          pitch : longint;
          duration : longint;
          led_mask : longint;
          led_value : longint;
          key : longint;
          auto_repeat_mode : longint;
        end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
    type
      PXStringFeedbackControl = ^TXStringFeedbackControl;
      TXStringFeedbackControl = record
          c_class : TXID;
          _class : TXID;
          length : longint;
          id : TXID;
          num_keysyms : longint;
          syms_to_display : PKeySym;
        end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
    type
      PXIntegerFeedbackControl = ^TXIntegerFeedbackControl;
      TXIntegerFeedbackControl = record
          c_class : TXID;
          _class : TXID;
          length : longint;
          id : TXID;
          int_to_display : longint;
        end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
    type
      PXBellFeedbackControl = ^TXBellFeedbackControl;
      TXBellFeedbackControl = record
          c_class : TXID;
          _class : TXID;
          length : longint;
          id : TXID;
          percent : longint;
          pitch : longint;
          duration : longint;
        end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
    type
      PXLedFeedbackControl = ^TXLedFeedbackControl;
      TXLedFeedbackControl = record
          c_class : TXID;
          _class : TXID;
          length : longint;
          id : TXID;
          led_mask : longint;
          led_values : longint;
        end;


      PXDeviceControl = ^TXDeviceControl;
      TXDeviceControl = record
          control : TXID;
          length : longint;
        end;

      PXDeviceResolutionControl = ^TXDeviceResolutionControl;
      TXDeviceResolutionControl = record
          control : TXID;
          length : longint;
          first_valuator : longint;
          num_valuators : longint;
          resolutions : Plongint;
        end;

      PXDeviceResolutionState = ^TXDeviceResolutionState;
      TXDeviceResolutionState = record
          control : TXID;
          length : longint;
          num_valuators : longint;
          resolutions : Plongint;
          min_resolutions : Plongint;
          max_resolutions : Plongint;
        end;

      PXDeviceAbsCalibControl = ^TXDeviceAbsCalibControl;
      TXDeviceAbsCalibControl = record
          control : TXID;
          length : longint;
          min_x : longint;
          max_x : longint;
          min_y : longint;
          max_y : longint;
          flip_x : longint;
          flip_y : longint;
          rotation : longint;
          button_threshold : longint;
        end;
      TXDeviceAbsCalibState = TXDeviceAbsCalibControl;
      PXDeviceAbsCalibState = ^TXDeviceAbsCalibState;

      PXDeviceAbsAreaControl = ^TXDeviceAbsAreaControl;
      TXDeviceAbsAreaControl = record
          control : TXID;
          length : longint;
          offset_x : longint;
          offset_y : longint;
          width : longint;
          height : longint;
          screen : longint;
          following : TXID;
        end;
      TXDeviceAbsAreaState = TXDeviceAbsAreaControl;
      PXDeviceAbsAreaState = ^TXDeviceAbsAreaState;

      PXDeviceCoreControl = ^TXDeviceCoreControl;
      TXDeviceCoreControl = record
          control : TXID;
          length : longint;
          status : longint;
        end;

      PXDeviceCoreState = ^TXDeviceCoreState;
      TXDeviceCoreState = record
          control : TXID;
          length : longint;
          status : longint;
          iscore : longint;
        end;

      PXDeviceEnableControl = ^TXDeviceEnableControl;
      TXDeviceEnableControl = record
          control : TXID;
          length : longint;
          enable : longint;
        end;
      TXDeviceEnableState = TXDeviceEnableControl;
      PXDeviceEnableState = ^TXDeviceEnableState;

{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
    type
      PXAnyClassinfo = ^TXAnyClassinfo;
      TXAnyClassinfo = record
          c_class : TXID;
          _class : TXID;
          length : longint;
        end;

      PXDeviceInfoPtr = ^TXDeviceInfoPtr;
      TXDeviceInfoPtr = PXDeviceInfo;

      PXDeviceInfo = ^TXDeviceInfo;
      TXDeviceInfo = record
          id : TXID;
          _type : TAtom;
          name : Pchar;
          num_classes : longint;
          use : longint;
          inputclassinfo : TXAnyClassPtr;
        end;

      PXKeyInfoPtr = ^TXKeyInfoPtr;
      TXKeyInfoPtr = PXKeyInfo;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
    type
      PXKeyInfo = ^TXKeyInfo;
      TXKeyInfo = record
          c_class : TXID;
          _class : TXID;
          length : longint;
          min_keycode : word;
          max_keycode : word;
          num_keys : word;
        end;

      PXButtonInfoPtr = ^TXButtonInfoPtr;
      TXButtonInfoPtr = PXButtonInfo;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
    type
      PXButtonInfo = ^TXButtonInfo;
      TXButtonInfo = record
          c_class : TXID;
          _class : TXID;
          length : longint;
          num_buttons : smallint;
        end;

      PXAxisInfoPtr = ^TXAxisInfoPtr;
      TXAxisInfoPtr = PXAxisInfo;

      PXAxisInfo = ^TXAxisInfo;
      TXAxisInfo = record
          resolution : longint;
          min_value : longint;
          max_value : longint;
        end;

      PXValuatorInfoPtr = ^TXValuatorInfoPtr;
      TXValuatorInfoPtr = PXValuatorInfo;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
    type
      PXValuatorInfo = ^TXValuatorInfo;
      TXValuatorInfo = record
          c_class : TXID;
          _class : TXID;
          length : longint;
          num_axes : byte;
          mode : byte;
          motion_buffer : dword;
          axes : TXAxisInfoPtr;
        end;


      PXInputClassInfo = ^TXInputClassInfo;
      TXInputClassInfo = record
          input_class : byte;
          event_type_base : byte;
        end;

      PXDevice = ^TXDevice;
      TXDevice = record
          device_id : TXID;
          num_classes : longint;
          classes : PXInputClassInfo;
        end;


      PXEventList = ^TXEventList;
      TXEventList = record
          event_type : TXEventClass;
          device : TXID;
        end;


      PXDeviceTimeCoord = ^TXDeviceTimeCoord;
      TXDeviceTimeCoord = record
          time : TTime;
          data : Plongint;
        end;


      PXDeviceState = ^TXDeviceState;
      TXDeviceState = record
          device_id : TXID;
          num_classes : longint;
          data : PXInputClass;
        end;

{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
    type
      PXValuatorState = ^TXValuatorState;
      TXValuatorState = record
          c_class : byte;
          _class : byte;
          length : byte;
          num_valuators : byte;
          mode : byte;
          valuators : Plongint;
        end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
    type
      PXKeyState = ^TXKeyState;
      TXKeyState = record
          c_class : byte;
          _class : byte;
          length : byte;
          num_keys : smallint;
          keys : array[0..31] of char;
        end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
    type
      PXButtonState = ^TXButtonState;
      TXButtonState = record
          c_class : byte;
          _class : byte;
          length : byte;
          num_buttons : smallint;
          buttons : array[0..31] of char;
        end;

(* error 
extern int	XChangeKeyboardDevice(

in declaration at line 950 *)


function XChangePointerDevice(para1:PDisplay; para2:PXDevice; para3:longint; para4:longint):longint;cdecl;external;

function XGrabDevice(para1:PDisplay; para2:PXDevice; para3:TWindow; para4:TBool; para5:longint; 
               para6:PXEventClass; para7:longint; para8:longint; para9:TTime):longint;cdecl;external;

function XUngrabDevice(para1:PDisplay; para2:PXDevice; para3:TTime):longint;cdecl;external;

function XGrabDeviceKey(para1:PDisplay; para2:PXDevice; para3:dword; para4:dword; para5:PXDevice; 
               para6:TWindow; para7:TBool; para8:dword; para9:PXEventClass; para10:longint; 
               para11:longint):longint;cdecl;external;

function XUngrabDeviceKey(para1:PDisplay; para2:PXDevice; para3:dword; para4:dword; para5:PXDevice; 
               para6:TWindow):longint;cdecl;external;

function XGrabDeviceButton(para1:PDisplay; para2:PXDevice; para3:dword; para4:dword; para5:PXDevice; 
               para6:TWindow; para7:TBool; para8:dword; para9:PXEventClass; para10:longint; 
               para11:longint):longint;cdecl;external;

function XUngrabDeviceButton(para1:PDisplay; para2:PXDevice; para3:dword; para4:dword; para5:PXDevice; 
               para6:TWindow):longint;cdecl;external;

function XAllowDeviceEvents(para1:PDisplay; para2:PXDevice; para3:longint; para4:TTime):longint;cdecl;external;

function XGetDeviceFocus(para1:PDisplay; para2:PXDevice; para3:PWindow; para4:Plongint; para5:PTime):longint;cdecl;external;

function XSetDeviceFocus(para1:PDisplay; para2:PXDevice; para3:TWindow; para4:longint; para5:TTime):longint;cdecl;external;

function XGetFeedbackControl(para1:PDisplay; para2:PXDevice; para3:Plongint):PXFeedbackState;cdecl;external;

procedure XFreeFeedbackList(para1:PXFeedbackState);cdecl;external;

function XChangeFeedbackControl(para1:PDisplay; para2:PXDevice; para3:dword; para4:PXFeedbackControl):longint;cdecl;external;

function XDeviceBell(para1:PDisplay; para2:PXDevice; para3:TXID; para4:TXID; para5:longint):longint;cdecl;external;
{$if NeedWidePrototypes}
{$else}
{$endif}


function XGetDeviceKeyMapping(para1:PDisplay; para2:PXDevice; para3:dword; para4:TKeyCode; para5:longint; 
               para6:Plongint):PKeySym;cdecl;external;

function XChangeDeviceKeyMapping(para1:PDisplay; para2:PXDevice; para3:longint; para4:longint; para5:PKeySym; 
               para6:longint):longint;cdecl;external;

function XGetDeviceModifierMapping(para1:PDisplay; para2:PXDevice):PXModifierKeymap;cdecl;external;

function XSetDeviceModifierMapping(para1:PDisplay; para2:PXDevice; para3:PXModifierKeymap):longint;cdecl;external;

function XSetDeviceButtonMapping(para1:PDisplay; para2:PXDevice; para3:Pbyte; para4:longint):longint;cdecl;external;

function XGetDeviceButtonMapping(para1:PDisplay; para2:PXDevice; para3:Pbyte; para4:dword):longint;cdecl;external;

function XQueryDeviceState(para1:PDisplay; para2:PXDevice):PXDeviceState;cdecl;external;

procedure XFreeDeviceState(para1:PXDeviceState);cdecl;external;
(* error 
    _Xconst char*	/* name */

 in declarator_list *)

function XListInputDevices(para1:PDisplay; para2:Plongint):PXDeviceInfo;cdecl;external;

procedure XFreeDeviceList(para1:PXDeviceInfo);cdecl;external;

function XOpenDevice(para1:PDisplay; para2:TXID):PXDevice;cdecl;external;

function XCloseDevice(para1:PDisplay; para2:PXDevice):longint;cdecl;external;

function XSetDeviceMode(para1:PDisplay; para2:PXDevice; para3:longint):longint;cdecl;external;

function XSetDeviceValuators(para1:PDisplay; para2:PXDevice; para3:Plongint; para4:longint; para5:longint):longint;cdecl;external;

function XGetDeviceControl(para1:PDisplay; para2:PXDevice; para3:longint):PXDeviceControl;cdecl;external;

function XChangeDeviceControl(para1:PDisplay; para2:PXDevice; para3:longint; para4:PXDeviceControl):longint;cdecl;external;

function XSelectExtensionEvent(para1:PDisplay; para2:TWindow; para3:PXEventClass; para4:longint):longint;cdecl;external;

function XGetSelectedExtensionEvents(para1:PDisplay; para2:TWindow; para3:Plongint; para4:PPXEventClass; para5:Plongint; 
               para6:PPXEventClass):longint;cdecl;external;

function XChangeDeviceDontPropagateList(para1:PDisplay; para2:TWindow; para3:longint; para4:PXEventClass; para5:longint):longint;cdecl;external;

function XGetDeviceDontPropagateList(para1:PDisplay; para2:TWindow; para3:Plongint):PXEventClass;cdecl;external;

function XSendExtensionEvent(para1:PDisplay; para2:PXDevice; para3:TWindow; para4:TBool; para5:longint; 
               para6:PXEventClass; para7:PXEvent):TStatus;cdecl;external;

function XGetDeviceMotionEvents(para1:PDisplay; para2:PXDevice; para3:TTime; para4:TTime; para5:Plongint; 
               para6:Plongint; para7:Plongint):PXDeviceTimeCoord;cdecl;external;

procedure XFreeDeviceMotionEvents(para1:PXDeviceTimeCoord);cdecl;external;

procedure XFreeDeviceControl(para1:PXDeviceControl);cdecl;external;

function XListDeviceProperties(para1:PDisplay; para2:PXDevice; para3:Plongint):PAtom;cdecl;external;
(* error 
    _Xconst unsigned char * /*data */,
(* error 
    int                 /* nelements */

 in declarator_list *)
 in declarator_list *)

procedure XDeleteDeviceProperty(para1:PDisplay; para2:PXDevice; para3:TAtom);cdecl;external;

function XGetDeviceProperty(para1:PDisplay; para2:PXDevice; para3:TAtom; para4:longint; para5:longint; 
               para6:TBool; para7:TAtom; para8:PAtom; para9:Plongint; para10:Pdword; 
               para11:Pdword; para12:PPbyte):TStatus;cdecl;external;
{$endif}

(* error 
#endif /* _XINPUT_H_ */

implementation

    function DeviceKeyRelease(d,_type,_class : longint) : longint;
    begin
      DeviceKeyRelease:=FindTypeAndClass(d,_type,_class,KeyClass,_deviceKeyRelease);
    end;

    function DeviceButtonPress(d,_type,_class : longint) : longint;
    begin
      DeviceButtonPress:=FindTypeAndClass(d,_type,_class,ButtonClass,_deviceButtonPress);
    end;

    function DeviceButtonRelease(d,_type,_class : longint) : longint;
    begin
      DeviceButtonRelease:=FindTypeAndClass(d,_type,_class,ButtonClass,_deviceButtonRelease);
    end;

    function DeviceMotionNotify(d,_type,_class : longint) : longint;
    begin
      DeviceMotionNotify:=FindTypeAndClass(d,_type,_class,ValuatorClass,_deviceMotionNotify);
    end;

    function DeviceFocusIn(d,_type,_class : longint) : longint;
    begin
      DeviceFocusIn:=FindTypeAndClass(d,_type,_class,FocusClass,_deviceFocusIn);
    end;

    function DeviceFocusOut(d,_type,_class : longint) : longint;
    begin
      DeviceFocusOut:=FindTypeAndClass(d,_type,_class,FocusClass,_deviceFocusOut);
    end;

    function ProximityIn(d,_type,_class : longint) : longint;
    begin
      ProximityIn:=FindTypeAndClass(d,_type,_class,ProximityClass,_proximityIn);
    end;

    function ProximityOut(d,_type,_class : longint) : longint;
    begin
      ProximityOut:=FindTypeAndClass(d,_type,_class,ProximityClass,_proximityOut);
    end;

    function DeviceStateNotify(d,_type,_class : longint) : longint;
    begin
      DeviceStateNotify:=FindTypeAndClass(d,_type,_class,OtherClass,_deviceStateNotify);
    end;

    function DeviceMappingNotify(d,_type,_class : longint) : longint;
    begin
      DeviceMappingNotify:=FindTypeAndClass(d,_type,_class,OtherClass,_deviceMappingNotify);
    end;

    function ChangeDeviceNotify(d,_type,_class : longint) : longint;
    begin
      ChangeDeviceNotify:=FindTypeAndClass(d,_type,_class,OtherClass,_changeDeviceNotify);
    end;

    function DevicePropertyNotify(d,_type,_class : longint) : longint;
    begin
      DevicePropertyNotify:=FindTypeAndClass(d,_type,_class,OtherClass,_propertyNotify);
    end;

    function BadClass(dpy,error : longint) : longint;
    begin
      BadClass:=_xibadclass(dpy,@(error));
    end;

    function BadEvent(dpy,error : longint) : longint;
    begin
      BadEvent:=_xibadevent(dpy,@(error));
    end;

    function BadMode(dpy,error : longint) : longint;
    begin
      BadMode:=_xibadmode(dpy,@(error));
    end;

    function DeviceBusy(dpy,error : longint) : longint;
    begin
      DeviceBusy:=_xidevicebusy(dpy,@(error));
    end;


end.
