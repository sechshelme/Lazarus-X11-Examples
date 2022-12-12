
unit XInput;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/XInput.h
  The following command line parameters were used:
    /usr/include/X11/extensions/XInput.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/XInput.pp
}

    Type
    PAtom  = ^Atom;
    Pbyte  = ^byte;
    PDisplay  = ^Display;
    Pdword  = ^dword;
    PKeySym  = ^KeySym;
    Plongint  = ^longint;
    PTime  = ^Time;
    PWindow  = ^Window;
    PXDevice  = ^XDevice;
    PXDeviceControl  = ^XDeviceControl;
    PXDeviceInfo  = ^XDeviceInfo;
    PXDeviceState  = ^XDeviceState;
    PXDeviceTimeCoord  = ^XDeviceTimeCoord;
    PXEvent  = ^XEvent;
    PXEventClass  = ^XEventClass;
    PXFeedbackControl  = ^XFeedbackControl;
    PXFeedbackState  = ^XFeedbackState;
    PXModifierKeymap  = ^XModifierKeymap;
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
        _ip : ^XInputClassInfo;cvar;public;
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

    procedure _xibaddevice(dpy:PDisplay; error:Plongint);cdecl;

    procedure _xibadclass(dpy:PDisplay; error:Plongint);cdecl;

    procedure _xibadevent(dpy:PDisplay; error:Plongint);cdecl;

    procedure _xibadmode(dpy:PDisplay; error:Plongint);cdecl;

    procedure _xidevicebusy(dpy:PDisplay; error:Plongint);cdecl;

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
  XAnyClassPtr = ^_XAnyClassinfo;

















  XDeviceKeyEvent = record
      _type : longint;
      serial : dword;
      send_event : Bool;
      display : ^Display;
      window : Window;
      deviceid : XID;
      root : Window;
      subwindow : Window;
      time : Time;
      x : longint;
      y : longint;
      x_root : longint;
      y_root : longint;
      state : dword;
      keycode : dword;
      same_screen : Bool;
      device_state : dword;
      axes_count : byte;
      first_axis : byte;
      axis_data : array[0..5] of longint;
    end;

  XDeviceKeyPressedEvent = XDeviceKeyEvent;

  XDeviceKeyReleasedEvent = XDeviceKeyEvent;

















  XDeviceButtonEvent = record
      _type : longint;
      serial : dword;
      send_event : Bool;
      display : ^Display;
      window : Window;
      deviceid : XID;
      root : Window;
      subwindow : Window;
      time : Time;
      x : longint;
      y : longint;
      x_root : longint;
      y_root : longint;
      state : dword;
      button : dword;
      same_screen : Bool;
      device_state : dword;
      axes_count : byte;
      first_axis : byte;
      axis_data : array[0..5] of longint;
    end;

  XDeviceButtonPressedEvent = XDeviceButtonEvent;

  XDeviceButtonReleasedEvent = XDeviceButtonEvent;

















  XDeviceMotionEvent = record
      _type : longint;
      serial : dword;
      send_event : Bool;
      display : ^Display;
      window : Window;
      deviceid : XID;
      root : Window;
      subwindow : Window;
      time : Time;
      x : longint;
      y : longint;
      x_root : longint;
      y_root : longint;
      state : dword;
      is_hint : char;
      same_screen : Bool;
      device_state : dword;
      axes_count : byte;
      first_axis : byte;
      axis_data : array[0..5] of longint;
    end;









  XDeviceFocusChangeEvent = record
      _type : longint;
      serial : dword;
      send_event : Bool;
      display : ^Display;
      window : Window;
      deviceid : XID;
      mode : longint;
      detail : longint;
      time : Time;
    end;

  XDeviceFocusInEvent = XDeviceFocusChangeEvent;

  XDeviceFocusOutEvent = XDeviceFocusChangeEvent;






  XProximityNotifyEvent = record
      _type : longint;
      serial : dword;
      send_event : Bool;
      display : ^Display;
      window : Window;
      deviceid : XID;
      root : Window;
      subwindow : Window;
      time : Time;
      x : longint;
      y : longint;
      x_root : longint;
      y_root : longint;
      state : dword;
      same_screen : Bool;
      device_state : dword;
      axes_count : byte;
      first_axis : byte;
      axis_data : array[0..5] of longint;
    end;

  XProximityInEvent = XProximityNotifyEvent;

  XProximityOutEvent = XProximityNotifyEvent;

{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

type
  XInputClass = record
      c_class : byte;
      _class : byte;
      length : byte;
    end;




  XDeviceStateNotifyEvent = record
      _type : longint;
      serial : dword;
      send_event : Bool;
      display : ^Display;
      window : Window;
      deviceid : XID;
      time : Time;
      num_classes : longint;
      data : array[0..63] of char;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

type
  XValuatorStatus = record
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
  XKeyStatus = record
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
  XButtonStatus = record
      c_class : byte;
      _class : byte;
      length : byte;
      num_buttons : smallint;
      buttons : array[0..31] of char;
    end;









  XDeviceMappingEvent = record
      _type : longint;
      serial : dword;
      send_event : Bool;
      display : ^Display;
      window : Window;
      deviceid : XID;
      time : Time;
      request : longint;
      first_keycode : longint;
      count : longint;
    end;







  XChangeDeviceNotifyEvent = record
      _type : longint;
      serial : dword;
      send_event : Bool;
      display : ^Display;
      window : Window;
      deviceid : XID;
      time : Time;
      request : longint;
    end;






  XDevicePresenceNotifyEvent = record
      _type : longint;
      serial : dword;
      send_event : Bool;
      display : ^Display;
      window : Window;
      time : Time;
      devchange : Bool;
      deviceid : XID;
      control : XID;
    end;









  XDevicePropertyNotifyEvent = record
      _type : longint;
      serial : dword;
      send_event : Bool;
      display : ^Display;
      window : Window;
      time : Time;
      deviceid : XID;
      atom : Atom;
      state : longint;
    end;

{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

type
  XFeedbackState = record
      c_class : XID;
      _class : XID;
      length : longint;
      id : XID;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

type
  XKbdFeedbackState = record
      c_class : XID;
      _class : XID;
      length : longint;
      id : XID;
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
  XPtrFeedbackState = record
      c_class : XID;
      _class : XID;
      length : longint;
      id : XID;
      accelNum : longint;
      accelDenom : longint;
      threshold : longint;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

type
  XIntegerFeedbackState = record
      c_class : XID;
      _class : XID;
      length : longint;
      id : XID;
      resolution : longint;
      minVal : longint;
      maxVal : longint;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

type
  XStringFeedbackState = record
      c_class : XID;
      _class : XID;
      length : longint;
      id : XID;
      max_symbols : longint;
      num_syms_supported : longint;
      syms_supported : ^KeySym;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

type
  XBellFeedbackState = record
      c_class : XID;
      _class : XID;
      length : longint;
      id : XID;
      percent : longint;
      pitch : longint;
      duration : longint;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

type
  XLedFeedbackState = record
      c_class : XID;
      _class : XID;
      length : longint;
      id : XID;
      led_values : longint;
      led_mask : longint;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

type
  XFeedbackControl = record
      c_class : XID;
      _class : XID;
      length : longint;
      id : XID;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

type
  XPtrFeedbackControl = record
      c_class : XID;
      _class : XID;
      length : longint;
      id : XID;
      accelNum : longint;
      accelDenom : longint;
      threshold : longint;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

type
  XKbdFeedbackControl = record
      c_class : XID;
      _class : XID;
      length : longint;
      id : XID;
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
  XStringFeedbackControl = record
      c_class : XID;
      _class : XID;
      length : longint;
      id : XID;
      num_keysyms : longint;
      syms_to_display : ^KeySym;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

type
  XIntegerFeedbackControl = record
      c_class : XID;
      _class : XID;
      length : longint;
      id : XID;
      int_to_display : longint;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

type
  XBellFeedbackControl = record
      c_class : XID;
      _class : XID;
      length : longint;
      id : XID;
      percent : longint;
      pitch : longint;
      duration : longint;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

type
  XLedFeedbackControl = record
      c_class : XID;
      _class : XID;
      length : longint;
      id : XID;
      led_mask : longint;
      led_values : longint;
    end;


  XDeviceControl = record
      control : XID;
      length : longint;
    end;

  XDeviceResolutionControl = record
      control : XID;
      length : longint;
      first_valuator : longint;
      num_valuators : longint;
      resolutions : ^longint;
    end;

  XDeviceResolutionState = record
      control : XID;
      length : longint;
      num_valuators : longint;
      resolutions : ^longint;
      min_resolutions : ^longint;
      max_resolutions : ^longint;
    end;

  XDeviceAbsCalibControl = record
      control : XID;
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
  XDeviceAbsCalibState = XDeviceAbsCalibControl;

  XDeviceAbsAreaControl = record
      control : XID;
      length : longint;
      offset_x : longint;
      offset_y : longint;
      width : longint;
      height : longint;
      screen : longint;
      following : XID;
    end;
  XDeviceAbsAreaState = XDeviceAbsAreaControl;

  XDeviceCoreControl = record
      control : XID;
      length : longint;
      status : longint;
    end;

  XDeviceCoreState = record
      control : XID;
      length : longint;
      status : longint;
      iscore : longint;
    end;

  XDeviceEnableControl = record
      control : XID;
      length : longint;
      enable : longint;
    end;
  XDeviceEnableState = XDeviceEnableControl;

{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

type
  _XAnyClassinfo = record
      c_class : XID;
      _class : XID;
      length : longint;
    end;
  XAnyClassInfo = _XAnyClassinfo;

  XDeviceInfoPtr = ^_XDeviceInfo;

  _XDeviceInfo = record
      id : XID;
      _type : Atom;
      name : ^char;
      num_classes : longint;
      use : longint;
      inputclassinfo : XAnyClassPtr;
    end;
  XDeviceInfo = _XDeviceInfo;

  XKeyInfoPtr = ^_XKeyInfo;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

type
  _XKeyInfo = record
      c_class : XID;
      _class : XID;
      length : longint;
      min_keycode : word;
      max_keycode : word;
      num_keys : word;
    end;
  XKeyInfo = _XKeyInfo;

  XButtonInfoPtr = ^_XButtonInfo;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

type
  _XButtonInfo = record
      c_class : XID;
      _class : XID;
      length : longint;
      num_buttons : smallint;
    end;
  XButtonInfo = _XButtonInfo;

  XAxisInfoPtr = ^_XAxisInfo;

  _XAxisInfo = record
      resolution : longint;
      min_value : longint;
      max_value : longint;
    end;
  XAxisInfo = _XAxisInfo;

  XValuatorInfoPtr = ^_XValuatorInfo;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

type
  _XValuatorInfo = record
      c_class : XID;
      _class : XID;
      length : longint;
      num_axes : byte;
      mode : byte;
      motion_buffer : dword;
      axes : XAxisInfoPtr;
    end;
  XValuatorInfo = _XValuatorInfo;


  XInputClassInfo = record
      input_class : byte;
      event_type_base : byte;
    end;

  XDevice = record
      device_id : XID;
      num_classes : longint;
      classes : ^XInputClassInfo;
    end;


  XEventList = record
      event_type : XEventClass;
      device : XID;
    end;


  XDeviceTimeCoord = record
      time : Time;
      data : ^longint;
    end;


  XDeviceState = record
      device_id : XID;
      num_classes : longint;
      data : ^XInputClass;
    end;

{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

type
  XValuatorState = record
      c_class : byte;
      _class : byte;
      length : byte;
      num_valuators : byte;
      mode : byte;
      valuators : ^longint;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

type
  XKeyState = record
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
  XButtonState = record
      c_class : byte;
      _class : byte;
      length : byte;
      num_buttons : smallint;
      buttons : array[0..31] of char;
    end;

(* error 
extern int	XChangeKeyboardDevice(

in declaration at line 950 *)


    function XChangePointerDevice(_para1:PDisplay; _para2:PXDevice; _para3:longint; _para4:longint):longint;cdecl;


    function XGrabDevice(_para1:PDisplay; _para2:PXDevice; _para3:Window; _para4:Bool; _para5:longint; 
               _para6:PXEventClass; _para7:longint; _para8:longint; _para9:Time):longint;cdecl;


    function XUngrabDevice(_para1:PDisplay; _para2:PXDevice; _para3:Time):longint;cdecl;


    function XGrabDeviceKey(_para1:PDisplay; _para2:PXDevice; _para3:dword; _para4:dword; _para5:PXDevice; 
               _para6:Window; _para7:Bool; _para8:dword; _para9:PXEventClass; _para10:longint; 
               _para11:longint):longint;cdecl;


    function XUngrabDeviceKey(_para1:PDisplay; _para2:PXDevice; _para3:dword; _para4:dword; _para5:PXDevice; 
               _para6:Window):longint;cdecl;


    function XGrabDeviceButton(_para1:PDisplay; _para2:PXDevice; _para3:dword; _para4:dword; _para5:PXDevice; 
               _para6:Window; _para7:Bool; _para8:dword; _para9:PXEventClass; _para10:longint; 
               _para11:longint):longint;cdecl;


    function XUngrabDeviceButton(_para1:PDisplay; _para2:PXDevice; _para3:dword; _para4:dword; _para5:PXDevice; 
               _para6:Window):longint;cdecl;


    function XAllowDeviceEvents(_para1:PDisplay; _para2:PXDevice; _para3:longint; _para4:Time):longint;cdecl;


    function XGetDeviceFocus(_para1:PDisplay; _para2:PXDevice; _para3:PWindow; _para4:Plongint; _para5:PTime):longint;cdecl;


    function XSetDeviceFocus(_para1:PDisplay; _para2:PXDevice; _para3:Window; _para4:longint; _para5:Time):longint;cdecl;


    function XGetFeedbackControl(_para1:PDisplay; _para2:PXDevice; _para3:Plongint):^XFeedbackState;cdecl;


    procedure XFreeFeedbackList(_para1:PXFeedbackState);cdecl;


    function XChangeFeedbackControl(_para1:PDisplay; _para2:PXDevice; _para3:dword; _para4:PXFeedbackControl):longint;cdecl;


    function XDeviceBell(_para1:PDisplay; _para2:PXDevice; _para3:XID; _para4:XID; _para5:longint):longint;cdecl;

{$if NeedWidePrototypes}
{$else}
{$endif}


    function XGetDeviceKeyMapping(_para1:PDisplay; _para2:PXDevice; _para3:dword; _para4:KeyCode; _para5:longint; 
               _para6:Plongint):^KeySym;cdecl;


    function XChangeDeviceKeyMapping(_para1:PDisplay; _para2:PXDevice; _para3:longint; _para4:longint; _para5:PKeySym; 
               _para6:longint):longint;cdecl;


    function XGetDeviceModifierMapping(_para1:PDisplay; _para2:PXDevice):^XModifierKeymap;cdecl;


    function XSetDeviceModifierMapping(_para1:PDisplay; _para2:PXDevice; _para3:PXModifierKeymap):longint;cdecl;


    function XSetDeviceButtonMapping(_para1:PDisplay; _para2:PXDevice; _para3:Pbyte; _para4:longint):longint;cdecl;


    function XGetDeviceButtonMapping(_para1:PDisplay; _para2:PXDevice; _para3:Pbyte; _para4:dword):longint;cdecl;


    function XQueryDeviceState(_para1:PDisplay; _para2:PXDevice):^XDeviceState;cdecl;


    procedure XFreeDeviceState(_para1:PXDeviceState);cdecl;

(* error 
    _Xconst char*	/* name */

 in declarator_list *)

    function XListInputDevices(_para1:PDisplay; _para2:Plongint):^XDeviceInfo;cdecl;


    procedure XFreeDeviceList(_para1:PXDeviceInfo);cdecl;


    function XOpenDevice(_para1:PDisplay; _para2:XID):^XDevice;cdecl;


    function XCloseDevice(_para1:PDisplay; _para2:PXDevice):longint;cdecl;


    function XSetDeviceMode(_para1:PDisplay; _para2:PXDevice; _para3:longint):longint;cdecl;


    function XSetDeviceValuators(_para1:PDisplay; _para2:PXDevice; _para3:Plongint; _para4:longint; _para5:longint):longint;cdecl;


    function XGetDeviceControl(_para1:PDisplay; _para2:PXDevice; _para3:longint):^XDeviceControl;cdecl;


    function XChangeDeviceControl(_para1:PDisplay; _para2:PXDevice; _para3:longint; _para4:PXDeviceControl):longint;cdecl;


    function XSelectExtensionEvent(_para1:PDisplay; _para2:Window; _para3:PXEventClass; _para4:longint):longint;cdecl;


    function XGetSelectedExtensionEvents(_para1:PDisplay; _para2:Window; _para3:Plongint; _para4:PPXEventClass; _para5:Plongint; 
               _para6:PPXEventClass):longint;cdecl;


    function XChangeDeviceDontPropagateList(_para1:PDisplay; _para2:Window; _para3:longint; _para4:PXEventClass; _para5:longint):longint;cdecl;


    function XGetDeviceDontPropagateList(_para1:PDisplay; _para2:Window; _para3:Plongint):^XEventClass;cdecl;


    function XSendExtensionEvent(_para1:PDisplay; _para2:PXDevice; _para3:Window; _para4:Bool; _para5:longint; 
               _para6:PXEventClass; _para7:PXEvent):Status;cdecl;


    function XGetDeviceMotionEvents(_para1:PDisplay; _para2:PXDevice; _para3:Time; _para4:Time; _para5:Plongint; 
               _para6:Plongint; _para7:Plongint):^XDeviceTimeCoord;cdecl;


    procedure XFreeDeviceMotionEvents(_para1:PXDeviceTimeCoord);cdecl;


    procedure XFreeDeviceControl(_para1:PXDeviceControl);cdecl;


    function XListDeviceProperties(_para1:PDisplay; _para2:PXDevice; _para3:Plongint):^Atom;cdecl;

(* error 
    _Xconst unsigned char * /*data */,
(* error 
    int                 /* nelements */

 in declarator_list *)
 in declarator_list *)

    procedure XDeleteDeviceProperty(_para1:PDisplay; _para2:PXDevice; _para3:Atom);cdecl;


    function XGetDeviceProperty(_para1:PDisplay; _para2:PXDevice; _para3:Atom; _para4:longint; _para5:longint; 
               _para6:Bool; _para7:Atom; _para8:PAtom; _para9:Plongint; _para10:Pdword; 
               _para11:Pdword; _para12:PPbyte):Status;cdecl;

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
