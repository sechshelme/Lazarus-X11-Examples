
unit XInput2;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XInput2.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XInput2.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XInput2.pp
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
    PBarrierEventID  = ^BarrierEventID;
    Pbyte  = ^byte;
    Pchar  = ^char;
    PDisplay  = ^Display;
    Pdouble  = ^double;
    Pdword  = ^dword;
    Plongint  = ^longint;
    PWindow  = ^Window;
    PXIAddMasterInfo  = ^XIAddMasterInfo;
    PXIAnyClassInfo  = ^XIAnyClassInfo;
    PXIAnyHierarchyChangeInfo  = ^XIAnyHierarchyChangeInfo;
    PXIAttachSlaveInfo  = ^XIAttachSlaveInfo;
    PXIBarrierEvent  = ^XIBarrierEvent;
    PXIBarrierReleasePointerInfo  = ^XIBarrierReleasePointerInfo;
    PXIButtonClassInfo  = ^XIButtonClassInfo;
    PXIButtonState  = ^XIButtonState;
    PXIDetachSlaveInfo  = ^XIDetachSlaveInfo;
    PXIDeviceChangedEvent  = ^XIDeviceChangedEvent;
    PXIDeviceEvent  = ^XIDeviceEvent;
    PXIDeviceInfo  = ^XIDeviceInfo;
    PXIEnterEvent  = ^XIEnterEvent;
    PXIEvent  = ^XIEvent;
    PXIEventMask  = ^XIEventMask;
    PXIFocusInEvent  = ^XIFocusInEvent;
    PXIFocusOutEvent  = ^XIFocusOutEvent;
    PXIGestureClassInfo  = ^XIGestureClassInfo;
    PXIGesturePinchEvent  = ^XIGesturePinchEvent;
    PXIGestureSwipeEvent  = ^XIGestureSwipeEvent;
    PXIGrabModifiers  = ^XIGrabModifiers;
    PXIGroupState  = ^XIGroupState;
    PXIHierarchyEvent  = ^XIHierarchyEvent;
    PXIHierarchyInfo  = ^XIHierarchyInfo;
    PXIKeyClassInfo  = ^XIKeyClassInfo;
    PXILeaveEvent  = ^XILeaveEvent;
    PXIModifierState  = ^XIModifierState;
    PXIPropertyEvent  = ^XIPropertyEvent;
    PXIRawEvent  = ^XIRawEvent;
    PXIRemoveMasterInfo  = ^XIRemoveMasterInfo;
    PXIScrollClassInfo  = ^XIScrollClassInfo;
    PXITouchClassInfo  = ^XITouchClassInfo;
    PXITouchOwnershipEvent  = ^XITouchOwnershipEvent;
    PXIValuatorClassInfo  = ^XIValuatorClassInfo;
    PXIValuatorState  = ^XIValuatorState;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XINPUT2_H_}
{$define _XINPUT2_H_}
{$include <X11/Xlib.h>}
{$include <X11/extensions/XI2.h>}
{$include <X11/extensions/Xge.h>}
{$include <X11/extensions/Xfixes.h> /* PointerBarrier */}

type
  PXIAddMasterInfo = ^TXIAddMasterInfo;
  TXIAddMasterInfo = record
      _type : longint;
      name : Pchar;
      send_core : TBool;
      enable : TBool;
    end;


  PXIRemoveMasterInfo = ^TXIRemoveMasterInfo;
  TXIRemoveMasterInfo = record
      _type : longint;
      deviceid : longint;
      return_mode : longint;
      return_pointer : longint;
      return_keyboard : longint;
    end;

  PXIAttachSlaveInfo = ^TXIAttachSlaveInfo;
  TXIAttachSlaveInfo = record
      _type : longint;
      deviceid : longint;
      new_master : longint;
    end;

  PXIDetachSlaveInfo = ^TXIDetachSlaveInfo;
  TXIDetachSlaveInfo = record
      _type : longint;
      deviceid : longint;
    end;


  PXIAnyHierarchyChangeInfo = ^TXIAnyHierarchyChangeInfo;
  TXIAnyHierarchyChangeInfo = record
      case longint of
        0 : ( _type : longint );
        1 : ( add : TXIAddMasterInfo );
        2 : ( remove : TXIRemoveMasterInfo );
        3 : ( attach : TXIAttachSlaveInfo );
        4 : ( detach : TXIDetachSlaveInfo );
      end;

  PXIModifierState = ^TXIModifierState;
  TXIModifierState = record
      base : longint;
      latched : longint;
      locked : longint;
      effective : longint;
    end;

  PXIGroupState = ^TXIGroupState;
  TXIGroupState = TXIModifierState;

  PXIButtonState = ^TXIButtonState;
  TXIButtonState = record
      mask_len : longint;
      mask : Pbyte;
    end;

  PXIValuatorState = ^TXIValuatorState;
  TXIValuatorState = record
      mask_len : longint;
      mask : Pbyte;
      values : Pdouble;
    end;

  PXIEventMask = ^TXIEventMask;
  TXIEventMask = record
      deviceid : longint;
      mask_len : longint;
      mask : Pbyte;
    end;

  PXIAnyClassInfo = ^TXIAnyClassInfo;
  TXIAnyClassInfo = record
      _type : longint;
      sourceid : longint;
    end;

  PXIButtonClassInfo = ^TXIButtonClassInfo;
  TXIButtonClassInfo = record
      _type : longint;
      sourceid : longint;
      num_buttons : longint;
      labels : PAtom;
      state : TXIButtonState;
    end;

  PXIKeyClassInfo = ^TXIKeyClassInfo;
  TXIKeyClassInfo = record
      _type : longint;
      sourceid : longint;
      num_keycodes : longint;
      keycodes : Plongint;
    end;

  PXIValuatorClassInfo = ^TXIValuatorClassInfo;
  TXIValuatorClassInfo = record
      _type : longint;
      sourceid : longint;
      number : longint;
      _label : TAtom;
      min : Tdouble;
      max : Tdouble;
      value : Tdouble;
      resolution : longint;
      mode : longint;
    end;


  PXIScrollClassInfo = ^TXIScrollClassInfo;
  TXIScrollClassInfo = record
      _type : longint;
      sourceid : longint;
      number : longint;
      scroll_type : longint;
      increment : Tdouble;
      flags : longint;
    end;

  PXITouchClassInfo = ^TXITouchClassInfo;
  TXITouchClassInfo = record
      _type : longint;
      sourceid : longint;
      mode : longint;
      num_touches : longint;
    end;


  PXIGestureClassInfo = ^TXIGestureClassInfo;
  TXIGestureClassInfo = record
      _type : longint;
      sourceid : longint;
      num_touches : longint;
    end;

  PXIDeviceInfo = ^TXIDeviceInfo;
  TXIDeviceInfo = record
      deviceid : longint;
      name : Pchar;
      use : longint;
      attachment : longint;
      enabled : TBool;
      num_classes : longint;
      classes : ^PXIAnyClassInfo;
    end;

  PXIGrabModifiers = ^TXIGrabModifiers;
  TXIGrabModifiers = record
      modifiers : longint;
      status : longint;
    end;

  PBarrierEventID = ^TBarrierEventID;
  TBarrierEventID = dword;

  PXIBarrierReleasePointerInfo = ^TXIBarrierReleasePointerInfo;
  TXIBarrierReleasePointerInfo = record
      deviceid : longint;
      barrier : TPointerBarrier;
      eventid : TBarrierEventID;
    end;







  PXIEvent = ^TXIEvent;
  TXIEvent = record
      _type : longint;
      serial : dword;
      send_event : TBool;
      display : PDisplay;
      extension : longint;
      evtype : longint;
      time : TTime;
    end;

  PXIHierarchyInfo = ^TXIHierarchyInfo;
  TXIHierarchyInfo = record
      deviceid : longint;
      attachment : longint;
      use : longint;
      enabled : TBool;
      flags : longint;
    end;








  PXIHierarchyEvent = ^TXIHierarchyEvent;
  TXIHierarchyEvent = record
      _type : longint;
      serial : dword;
      send_event : TBool;
      display : PDisplay;
      extension : longint;
      evtype : longint;
      time : TTime;
      flags : longint;
      num_info : longint;
      info : PXIHierarchyInfo;
    end;












  PXIDeviceChangedEvent = ^TXIDeviceChangedEvent;
  TXIDeviceChangedEvent = record
      _type : longint;
      serial : dword;
      send_event : TBool;
      display : PDisplay;
      extension : longint;
      evtype : longint;
      time : TTime;
      deviceid : longint;
      sourceid : longint;
      reason : longint;
      num_classes : longint;
      classes : ^PXIAnyClassInfo;
    end;






  PXIDeviceEvent = ^TXIDeviceEvent;
  TXIDeviceEvent = record
      _type : longint;
      serial : dword;
      send_event : TBool;
      display : PDisplay;
      extension : longint;
      evtype : longint;
      time : TTime;
      deviceid : longint;
      sourceid : longint;
      detail : longint;
      root : TWindow;
      event : TWindow;
      child : TWindow;
      root_x : Tdouble;
      root_y : Tdouble;
      event_x : Tdouble;
      event_y : Tdouble;
      flags : longint;
      buttons : TXIButtonState;
      valuators : TXIValuatorState;
      mods : TXIModifierState;
      group : TXIGroupState;
    end;








  PXIRawEvent = ^TXIRawEvent;
  TXIRawEvent = record
      _type : longint;
      serial : dword;
      send_event : TBool;
      display : PDisplay;
      extension : longint;
      evtype : longint;
      time : TTime;
      deviceid : longint;
      sourceid : longint;
      detail : longint;
      flags : longint;
      valuators : TXIValuatorState;
      raw_values : Pdouble;
    end;






  PXIEnterEvent = ^TXIEnterEvent;
  TXIEnterEvent = record
      _type : longint;
      serial : dword;
      send_event : TBool;
      display : PDisplay;
      extension : longint;
      evtype : longint;
      time : TTime;
      deviceid : longint;
      sourceid : longint;
      detail : longint;
      root : TWindow;
      event : TWindow;
      child : TWindow;
      root_x : Tdouble;
      root_y : Tdouble;
      event_x : Tdouble;
      event_y : Tdouble;
      mode : longint;
      focus : TBool;
      same_screen : TBool;
      buttons : TXIButtonState;
      mods : TXIModifierState;
      group : TXIGroupState;
    end;

  PXILeaveEvent = ^TXILeaveEvent;
  TXILeaveEvent = TXIEnterEvent;

  PXIFocusInEvent = ^TXIFocusInEvent;
  TXIFocusInEvent = TXIEnterEvent;

  PXIFocusOutEvent = ^TXIFocusOutEvent;
  TXIFocusOutEvent = TXIEnterEvent;








  PXIPropertyEvent = ^TXIPropertyEvent;
  TXIPropertyEvent = record
      _type : longint;
      serial : dword;
      send_event : TBool;
      display : PDisplay;
      extension : longint;
      evtype : longint;
      time : TTime;
      deviceid : longint;
      _property : TAtom;
      what : longint;
    end;






  PXITouchOwnershipEvent = ^TXITouchOwnershipEvent;
  TXITouchOwnershipEvent = record
      _type : longint;
      serial : dword;
      send_event : TBool;
      display : PDisplay;
      extension : longint;
      evtype : longint;
      time : TTime;
      deviceid : longint;
      sourceid : longint;
      touchid : dword;
      root : TWindow;
      event : TWindow;
      child : TWindow;
      flags : longint;
    end;






  PXIBarrierEvent = ^TXIBarrierEvent;
  TXIBarrierEvent = record
      _type : longint;
      serial : dword;
      send_event : TBool;
      display : PDisplay;
      extension : longint;
      evtype : longint;
      time : TTime;
      deviceid : longint;
      sourceid : longint;
      event : TWindow;
      root : TWindow;
      root_x : Tdouble;
      root_y : Tdouble;
      dx : Tdouble;
      dy : Tdouble;
      dtime : longint;
      flags : longint;
      barrier : TPointerBarrier;
      eventid : TBarrierEventID;
    end;






  PXIGesturePinchEvent = ^TXIGesturePinchEvent;
  TXIGesturePinchEvent = record
      _type : longint;
      serial : dword;
      send_event : TBool;
      display : PDisplay;
      extension : longint;
      evtype : longint;
      time : TTime;
      deviceid : longint;
      sourceid : longint;
      detail : longint;
      root : TWindow;
      event : TWindow;
      child : TWindow;
      root_x : Tdouble;
      root_y : Tdouble;
      event_x : Tdouble;
      event_y : Tdouble;
      delta_x : Tdouble;
      delta_y : Tdouble;
      delta_unaccel_x : Tdouble;
      delta_unaccel_y : Tdouble;
      scale : Tdouble;
      delta_angle : Tdouble;
      flags : longint;
      mods : TXIModifierState;
      group : TXIGroupState;
    end;






  PXIGestureSwipeEvent = ^TXIGestureSwipeEvent;
  TXIGestureSwipeEvent = record
      _type : longint;
      serial : dword;
      send_event : TBool;
      display : PDisplay;
      extension : longint;
      evtype : longint;
      time : TTime;
      deviceid : longint;
      sourceid : longint;
      detail : longint;
      root : TWindow;
      event : TWindow;
      child : TWindow;
      root_x : Tdouble;
      root_y : Tdouble;
      event_x : Tdouble;
      event_y : Tdouble;
      delta_x : Tdouble;
      delta_y : Tdouble;
      delta_unaccel_x : Tdouble;
      delta_unaccel_y : Tdouble;
      flags : longint;
      mods : TXIModifierState;
      group : TXIGroupState;
    end;
(* error 
extern Bool     XIQueryPointer(
in declaration at line 442 *)

function XIWarpPointer(display:PDisplay; deviceid:longint; src_win:TWindow; dst_win:TWindow; src_x:Tdouble; 
               src_y:Tdouble; src_width:dword; src_height:dword; dst_x:Tdouble; dst_y:Tdouble):TBool;cdecl;external;
function XIDefineCursor(display:PDisplay; deviceid:longint; win:TWindow; cursor:TCursor):TStatus;cdecl;external;
function XIUndefineCursor(display:PDisplay; deviceid:longint; win:TWindow):TStatus;cdecl;external;
function XIChangeHierarchy(display:PDisplay; changes:PXIAnyHierarchyChangeInfo; num_changes:longint):TStatus;cdecl;external;
function XISetClientPointer(dpy:PDisplay; win:TWindow; deviceid:longint):TStatus;cdecl;external;
function XIGetClientPointer(dpy:PDisplay; win:TWindow; deviceid:Plongint):TBool;cdecl;external;
function XISelectEvents(dpy:PDisplay; win:TWindow; masks:PXIEventMask; num_masks:longint):longint;cdecl;external;
function XIGetSelectedEvents(dpy:PDisplay; win:TWindow; num_masks_return:Plongint):PXIEventMask;cdecl;external;
function XIQueryVersion(dpy:PDisplay; major_version_inout:Plongint; minor_version_inout:Plongint):TStatus;cdecl;external;
function XIQueryDevice(dpy:PDisplay; deviceid:longint; ndevices_return:Plongint):PXIDeviceInfo;cdecl;external;
function XISetFocus(dpy:PDisplay; deviceid:longint; focus:TWindow; time:TTime):TStatus;cdecl;external;
function XIGetFocus(dpy:PDisplay; deviceid:longint; focus_return:PWindow):TStatus;cdecl;external;
function XIGrabDevice(dpy:PDisplay; deviceid:longint; grab_window:TWindow; time:TTime; cursor:TCursor; 
               grab_mode:longint; paired_device_mode:longint; owner_events:TBool; mask:PXIEventMask):TStatus;cdecl;external;
function XIUngrabDevice(dpy:PDisplay; deviceid:longint; time:TTime):TStatus;cdecl;external;
function XIAllowEvents(display:PDisplay; deviceid:longint; event_mode:longint; time:TTime):TStatus;cdecl;external;
function XIAllowTouchEvents(display:PDisplay; deviceid:longint; touchid:dword; grab_window:TWindow; event_mode:longint):TStatus;cdecl;external;
function XIGrabButton(display:PDisplay; deviceid:longint; button:longint; grab_window:TWindow; cursor:TCursor; 
               grab_mode:longint; paired_device_mode:longint; owner_events:longint; mask:PXIEventMask; num_modifiers:longint; 
               modifiers_inout:PXIGrabModifiers):longint;cdecl;external;
function XIGrabKeycode(display:PDisplay; deviceid:longint; keycode:longint; grab_window:TWindow; grab_mode:longint; 
               paired_device_mode:longint; owner_events:longint; mask:PXIEventMask; num_modifiers:longint; modifiers_inout:PXIGrabModifiers):longint;cdecl;external;
function XIGrabEnter(display:PDisplay; deviceid:longint; grab_window:TWindow; cursor:TCursor; grab_mode:longint; 
               paired_device_mode:longint; owner_events:longint; mask:PXIEventMask; num_modifiers:longint; modifiers_inout:PXIGrabModifiers):longint;cdecl;external;
function XIGrabFocusIn(display:PDisplay; deviceid:longint; grab_window:TWindow; grab_mode:longint; paired_device_mode:longint; 
               owner_events:longint; mask:PXIEventMask; num_modifiers:longint; modifiers_inout:PXIGrabModifiers):longint;cdecl;external;
function XIGrabTouchBegin(display:PDisplay; deviceid:longint; grab_window:TWindow; owner_events:longint; mask:PXIEventMask; 
               num_modifiers:longint; modifiers_inout:PXIGrabModifiers):longint;cdecl;external;
function XIGrabPinchGestureBegin(display:PDisplay; deviceid:longint; grab_window:TWindow; grab_mode:longint; paired_device_mode:longint; 
               owner_events:longint; mask:PXIEventMask; num_modifiers:longint; modifiers_inout:PXIGrabModifiers):longint;cdecl;external;
function XIGrabSwipeGestureBegin(display:PDisplay; deviceid:longint; grab_window:TWindow; grab_mode:longint; paired_device_mode:longint; 
               owner_events:longint; mask:PXIEventMask; num_modifiers:longint; modifiers_inout:PXIGrabModifiers):longint;cdecl;external;
function XIUngrabButton(display:PDisplay; deviceid:longint; button:longint; grab_window:TWindow; num_modifiers:longint; 
               modifiers:PXIGrabModifiers):TStatus;cdecl;external;
function XIUngrabKeycode(display:PDisplay; deviceid:longint; keycode:longint; grab_window:TWindow; num_modifiers:longint; 
               modifiers:PXIGrabModifiers):TStatus;cdecl;external;
function XIUngrabEnter(display:PDisplay; deviceid:longint; grab_window:TWindow; num_modifiers:longint; modifiers:PXIGrabModifiers):TStatus;cdecl;external;
function XIUngrabFocusIn(display:PDisplay; deviceid:longint; grab_window:TWindow; num_modifiers:longint; modifiers:PXIGrabModifiers):TStatus;cdecl;external;
function XIUngrabTouchBegin(display:PDisplay; deviceid:longint; grab_window:TWindow; num_modifiers:longint; modifiers:PXIGrabModifiers):TStatus;cdecl;external;
function XIUngrabPinchGestureBegin(display:PDisplay; deviceid:longint; grab_window:TWindow; num_modifiers:longint; modifiers:PXIGrabModifiers):TStatus;cdecl;external;
function XIUngrabSwipeGestureBegin(display:PDisplay; deviceid:longint; grab_window:TWindow; num_modifiers:longint; modifiers:PXIGrabModifiers):TStatus;cdecl;external;
function XIListProperties(display:PDisplay; deviceid:longint; num_props_return:Plongint):PAtom;cdecl;external;
procedure XIChangeProperty(display:PDisplay; deviceid:longint; _property:TAtom; _type:TAtom; format:longint; 
                mode:longint; data:Pbyte; num_items:longint);cdecl;external;
procedure XIDeleteProperty(display:PDisplay; deviceid:longint; _property:TAtom);cdecl;external;
function XIGetProperty(display:PDisplay; deviceid:longint; _property:TAtom; offset:longint; length:longint; 
               delete_property:TBool; _type:TAtom; type_return:PAtom; format_return:Plongint; num_items_return:Pdword; 
               bytes_after_return:Pdword; data:PPbyte):TStatus;cdecl;external;
procedure XIBarrierReleasePointers(display:PDisplay; barriers:PXIBarrierReleasePointerInfo; num_barriers:longint);cdecl;external;
procedure XIBarrierReleasePointer(display:PDisplay; deviceid:longint; barrier:TPointerBarrier; eventid:TBarrierEventID);cdecl;external;
procedure XIFreeDeviceInfo(info:PXIDeviceInfo);cdecl;external;
{$endif}

(* error 
#endif /* XINPUT2_H */

implementation


end.
