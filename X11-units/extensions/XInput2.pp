
unit XInput2;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/XInput2.h
  The following command line parameters were used:
    /usr/include/X11/extensions/XInput2.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/XInput2.pp
}

    Type
    PAtom  = ^Atom;
    Pbyte  = ^byte;
    PDisplay  = ^Display;
    Pdword  = ^dword;
    Plongint  = ^longint;
    PWindow  = ^Window;
    PXIAnyHierarchyChangeInfo  = ^XIAnyHierarchyChangeInfo;
    PXIBarrierReleasePointerInfo  = ^XIBarrierReleasePointerInfo;
    PXIDeviceInfo  = ^XIDeviceInfo;
    PXIEventMask  = ^XIEventMask;
    PXIGrabModifiers  = ^XIGrabModifiers;
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
    XIAddMasterInfo = record
        _type : longint;
        name : ^char;
        send_core : Bool;
        enable : Bool;
      end;


    XIRemoveMasterInfo = record
        _type : longint;
        deviceid : longint;
        return_mode : longint;
        return_pointer : longint;
        return_keyboard : longint;
      end;

    XIAttachSlaveInfo = record
        _type : longint;
        deviceid : longint;
        new_master : longint;
      end;

    XIDetachSlaveInfo = record
        _type : longint;
        deviceid : longint;
      end;


    XIAnyHierarchyChangeInfo = record
        case longint of
          0 : ( _type : longint );
          1 : ( add : XIAddMasterInfo );
          2 : ( remove : XIRemoveMasterInfo );
          3 : ( attach : XIAttachSlaveInfo );
          4 : ( detach : XIDetachSlaveInfo );
        end;

    XIModifierState = record
        base : longint;
        latched : longint;
        locked : longint;
        effective : longint;
      end;

    XIGroupState = XIModifierState;

    XIButtonState = record
        mask_len : longint;
        mask : ^byte;
      end;

    XIValuatorState = record
        mask_len : longint;
        mask : ^byte;
        values : ^double;
      end;

    XIEventMask = record
        deviceid : longint;
        mask_len : longint;
        mask : ^byte;
      end;

    XIAnyClassInfo = record
        _type : longint;
        sourceid : longint;
      end;

    XIButtonClassInfo = record
        _type : longint;
        sourceid : longint;
        num_buttons : longint;
        labels : ^Atom;
        state : XIButtonState;
      end;

    XIKeyClassInfo = record
        _type : longint;
        sourceid : longint;
        num_keycodes : longint;
        keycodes : ^longint;
      end;

    XIValuatorClassInfo = record
        _type : longint;
        sourceid : longint;
        number : longint;
        _label : Atom;
        min : double;
        max : double;
        value : double;
        resolution : longint;
        mode : longint;
      end;


    XIScrollClassInfo = record
        _type : longint;
        sourceid : longint;
        number : longint;
        scroll_type : longint;
        increment : double;
        flags : longint;
      end;

    XITouchClassInfo = record
        _type : longint;
        sourceid : longint;
        mode : longint;
        num_touches : longint;
      end;


    XIGestureClassInfo = record
        _type : longint;
        sourceid : longint;
        num_touches : longint;
      end;

    XIDeviceInfo = record
        deviceid : longint;
        name : ^char;
        use : longint;
        attachment : longint;
        enabled : Bool;
        num_classes : longint;
        classes : ^^XIAnyClassInfo;
      end;

    XIGrabModifiers = record
        modifiers : longint;
        status : longint;
      end;

    BarrierEventID = dword;

    XIBarrierReleasePointerInfo = record
        deviceid : longint;
        barrier : PointerBarrier;
        eventid : BarrierEventID;
      end;







    XIEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        extension : longint;
        evtype : longint;
        time : Time;
      end;

    XIHierarchyInfo = record
        deviceid : longint;
        attachment : longint;
        use : longint;
        enabled : Bool;
        flags : longint;
      end;








    XIHierarchyEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        extension : longint;
        evtype : longint;
        time : Time;
        flags : longint;
        num_info : longint;
        info : ^XIHierarchyInfo;
      end;












    XIDeviceChangedEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        extension : longint;
        evtype : longint;
        time : Time;
        deviceid : longint;
        sourceid : longint;
        reason : longint;
        num_classes : longint;
        classes : ^^XIAnyClassInfo;
      end;






    XIDeviceEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        extension : longint;
        evtype : longint;
        time : Time;
        deviceid : longint;
        sourceid : longint;
        detail : longint;
        root : Window;
        event : Window;
        child : Window;
        root_x : double;
        root_y : double;
        event_x : double;
        event_y : double;
        flags : longint;
        buttons : XIButtonState;
        valuators : XIValuatorState;
        mods : XIModifierState;
        group : XIGroupState;
      end;








    XIRawEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        extension : longint;
        evtype : longint;
        time : Time;
        deviceid : longint;
        sourceid : longint;
        detail : longint;
        flags : longint;
        valuators : XIValuatorState;
        raw_values : ^double;
      end;






    XIEnterEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        extension : longint;
        evtype : longint;
        time : Time;
        deviceid : longint;
        sourceid : longint;
        detail : longint;
        root : Window;
        event : Window;
        child : Window;
        root_x : double;
        root_y : double;
        event_x : double;
        event_y : double;
        mode : longint;
        focus : Bool;
        same_screen : Bool;
        buttons : XIButtonState;
        mods : XIModifierState;
        group : XIGroupState;
      end;

    XILeaveEvent = XIEnterEvent;

    XIFocusInEvent = XIEnterEvent;

    XIFocusOutEvent = XIEnterEvent;








    XIPropertyEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        extension : longint;
        evtype : longint;
        time : Time;
        deviceid : longint;
        _property : Atom;
        what : longint;
      end;






    XITouchOwnershipEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        extension : longint;
        evtype : longint;
        time : Time;
        deviceid : longint;
        sourceid : longint;
        touchid : dword;
        root : Window;
        event : Window;
        child : Window;
        flags : longint;
      end;






    XIBarrierEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        extension : longint;
        evtype : longint;
        time : Time;
        deviceid : longint;
        sourceid : longint;
        event : Window;
        root : Window;
        root_x : double;
        root_y : double;
        dx : double;
        dy : double;
        dtime : longint;
        flags : longint;
        barrier : PointerBarrier;
        eventid : BarrierEventID;
      end;






    XIGesturePinchEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        extension : longint;
        evtype : longint;
        time : Time;
        deviceid : longint;
        sourceid : longint;
        detail : longint;
        root : Window;
        event : Window;
        child : Window;
        root_x : double;
        root_y : double;
        event_x : double;
        event_y : double;
        delta_x : double;
        delta_y : double;
        delta_unaccel_x : double;
        delta_unaccel_y : double;
        scale : double;
        delta_angle : double;
        flags : longint;
        mods : XIModifierState;
        group : XIGroupState;
      end;






    XIGestureSwipeEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        extension : longint;
        evtype : longint;
        time : Time;
        deviceid : longint;
        sourceid : longint;
        detail : longint;
        root : Window;
        event : Window;
        child : Window;
        root_x : double;
        root_y : double;
        event_x : double;
        event_y : double;
        delta_x : double;
        delta_y : double;
        delta_unaccel_x : double;
        delta_unaccel_y : double;
        flags : longint;
        mods : XIModifierState;
        group : XIGroupState;
      end;
(* error 
extern Bool     XIQueryPointer(
in declaration at line 442 *)

    function XIWarpPointer(display:PDisplay; deviceid:longint; src_win:Window; dst_win:Window; src_x:double; 
               src_y:double; src_width:dword; src_height:dword; dst_x:double; dst_y:double):Bool;cdecl;

    function XIDefineCursor(display:PDisplay; deviceid:longint; win:Window; cursor:Cursor):Status;cdecl;

    function XIUndefineCursor(display:PDisplay; deviceid:longint; win:Window):Status;cdecl;

    function XIChangeHierarchy(display:PDisplay; changes:PXIAnyHierarchyChangeInfo; num_changes:longint):Status;cdecl;

    function XISetClientPointer(dpy:PDisplay; win:Window; deviceid:longint):Status;cdecl;

    function XIGetClientPointer(dpy:PDisplay; win:Window; deviceid:Plongint):Bool;cdecl;

    function XISelectEvents(dpy:PDisplay; win:Window; masks:PXIEventMask; num_masks:longint):longint;cdecl;

    function XIGetSelectedEvents(dpy:PDisplay; win:Window; num_masks_return:Plongint):^XIEventMask;cdecl;

    function XIQueryVersion(dpy:PDisplay; major_version_inout:Plongint; minor_version_inout:Plongint):Status;cdecl;

    function XIQueryDevice(dpy:PDisplay; deviceid:longint; ndevices_return:Plongint):^XIDeviceInfo;cdecl;

    function XISetFocus(dpy:PDisplay; deviceid:longint; focus:Window; time:Time):Status;cdecl;

    function XIGetFocus(dpy:PDisplay; deviceid:longint; focus_return:PWindow):Status;cdecl;

    function XIGrabDevice(dpy:PDisplay; deviceid:longint; grab_window:Window; time:Time; cursor:Cursor; 
               grab_mode:longint; paired_device_mode:longint; owner_events:Bool; mask:PXIEventMask):Status;cdecl;

    function XIUngrabDevice(dpy:PDisplay; deviceid:longint; time:Time):Status;cdecl;

    function XIAllowEvents(display:PDisplay; deviceid:longint; event_mode:longint; time:Time):Status;cdecl;

    function XIAllowTouchEvents(display:PDisplay; deviceid:longint; touchid:dword; grab_window:Window; event_mode:longint):Status;cdecl;

    function XIGrabButton(display:PDisplay; deviceid:longint; button:longint; grab_window:Window; cursor:Cursor; 
               grab_mode:longint; paired_device_mode:longint; owner_events:longint; mask:PXIEventMask; num_modifiers:longint; 
               modifiers_inout:PXIGrabModifiers):longint;cdecl;

    function XIGrabKeycode(display:PDisplay; deviceid:longint; keycode:longint; grab_window:Window; grab_mode:longint; 
               paired_device_mode:longint; owner_events:longint; mask:PXIEventMask; num_modifiers:longint; modifiers_inout:PXIGrabModifiers):longint;cdecl;

    function XIGrabEnter(display:PDisplay; deviceid:longint; grab_window:Window; cursor:Cursor; grab_mode:longint; 
               paired_device_mode:longint; owner_events:longint; mask:PXIEventMask; num_modifiers:longint; modifiers_inout:PXIGrabModifiers):longint;cdecl;

    function XIGrabFocusIn(display:PDisplay; deviceid:longint; grab_window:Window; grab_mode:longint; paired_device_mode:longint; 
               owner_events:longint; mask:PXIEventMask; num_modifiers:longint; modifiers_inout:PXIGrabModifiers):longint;cdecl;

    function XIGrabTouchBegin(display:PDisplay; deviceid:longint; grab_window:Window; owner_events:longint; mask:PXIEventMask; 
               num_modifiers:longint; modifiers_inout:PXIGrabModifiers):longint;cdecl;

    function XIGrabPinchGestureBegin(display:PDisplay; deviceid:longint; grab_window:Window; grab_mode:longint; paired_device_mode:longint; 
               owner_events:longint; mask:PXIEventMask; num_modifiers:longint; modifiers_inout:PXIGrabModifiers):longint;cdecl;

    function XIGrabSwipeGestureBegin(display:PDisplay; deviceid:longint; grab_window:Window; grab_mode:longint; paired_device_mode:longint; 
               owner_events:longint; mask:PXIEventMask; num_modifiers:longint; modifiers_inout:PXIGrabModifiers):longint;cdecl;

    function XIUngrabButton(display:PDisplay; deviceid:longint; button:longint; grab_window:Window; num_modifiers:longint; 
               modifiers:PXIGrabModifiers):Status;cdecl;

    function XIUngrabKeycode(display:PDisplay; deviceid:longint; keycode:longint; grab_window:Window; num_modifiers:longint; 
               modifiers:PXIGrabModifiers):Status;cdecl;

    function XIUngrabEnter(display:PDisplay; deviceid:longint; grab_window:Window; num_modifiers:longint; modifiers:PXIGrabModifiers):Status;cdecl;

    function XIUngrabFocusIn(display:PDisplay; deviceid:longint; grab_window:Window; num_modifiers:longint; modifiers:PXIGrabModifiers):Status;cdecl;

    function XIUngrabTouchBegin(display:PDisplay; deviceid:longint; grab_window:Window; num_modifiers:longint; modifiers:PXIGrabModifiers):Status;cdecl;

    function XIUngrabPinchGestureBegin(display:PDisplay; deviceid:longint; grab_window:Window; num_modifiers:longint; modifiers:PXIGrabModifiers):Status;cdecl;

    function XIUngrabSwipeGestureBegin(display:PDisplay; deviceid:longint; grab_window:Window; num_modifiers:longint; modifiers:PXIGrabModifiers):Status;cdecl;

    function XIListProperties(display:PDisplay; deviceid:longint; num_props_return:Plongint):^Atom;cdecl;

    procedure XIChangeProperty(display:PDisplay; deviceid:longint; _property:Atom; _type:Atom; format:longint; 
                mode:longint; data:Pbyte; num_items:longint);cdecl;

    procedure XIDeleteProperty(display:PDisplay; deviceid:longint; _property:Atom);cdecl;

    function XIGetProperty(display:PDisplay; deviceid:longint; _property:Atom; offset:longint; length:longint; 
               delete_property:Bool; _type:Atom; type_return:PAtom; format_return:Plongint; num_items_return:Pdword; 
               bytes_after_return:Pdword; data:PPbyte):Status;cdecl;

    procedure XIBarrierReleasePointers(display:PDisplay; barriers:PXIBarrierReleasePointerInfo; num_barriers:longint);cdecl;

    procedure XIBarrierReleasePointer(display:PDisplay; deviceid:longint; barrier:PointerBarrier; eventid:BarrierEventID);cdecl;

    procedure XIFreeDeviceInfo(info:PXIDeviceInfo);cdecl;

{$endif}

(* error 
#endif /* XINPUT2_H */

implementation


end.
