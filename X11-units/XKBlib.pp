
unit XKBlib;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/XKBlib.h
  The following command line parameters were used:
    /usr/include/X11/XKBlib.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/XKBlib.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _X11_XKBLIB_H_}
{$define _X11_XKBLIB_H_}  
{$include <X11/Xlib.h>}
{$include <X11/extensions/XKBstr.h>}








  type
    _XkbAnyEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        time : Time;
        xkb_type : longint;
        device : dword;
      end;
    XkbAnyEvent = _XkbAnyEvent;
















    _XkbNewKeyboardNotify = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        time : Time;
        xkb_type : longint;
        device : longint;
        old_device : longint;
        min_key_code : longint;
        max_key_code : longint;
        old_min_key_code : longint;
        old_max_key_code : longint;
        changed : dword;
        req_major : char;
        req_minor : char;
      end;
    XkbNewKeyboardNotifyEvent = _XkbNewKeyboardNotify;













    _XkbMapNotifyEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        time : Time;
        xkb_type : longint;
        device : longint;
        changed : dword;
        flags : dword;
        first_type : longint;
        num_types : longint;
        min_key_code : KeyCode;
        max_key_code : KeyCode;
        first_key_sym : KeyCode;
        first_key_act : KeyCode;
        first_key_behavior : KeyCode;
        first_key_explicit : KeyCode;
        first_modmap_key : KeyCode;
        first_vmodmap_key : KeyCode;
        num_key_syms : longint;
        num_key_acts : longint;
        num_key_behaviors : longint;
        num_key_explicit : longint;
        num_modmap_keys : longint;
        num_vmodmap_keys : longint;
        vmods : dword;
      end;
    XkbMapNotifyEvent = _XkbMapNotifyEvent;



























    _XkbStateNotifyEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        time : Time;
        xkb_type : longint;
        device : longint;
        changed : dword;
        group : longint;
        base_group : longint;
        latched_group : longint;
        locked_group : longint;
        mods : dword;
        base_mods : dword;
        latched_mods : dword;
        locked_mods : dword;
        compat_state : longint;
        grab_mods : byte;
        compat_grab_mods : byte;
        lookup_mods : byte;
        compat_lookup_mods : byte;
        ptr_buttons : longint;
        keycode : KeyCode;
        event_type : char;
        req_major : char;
        req_minor : char;
      end;
    XkbStateNotifyEvent = _XkbStateNotifyEvent;
















    _XkbControlsNotify = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        time : Time;
        xkb_type : longint;
        device : longint;
        changed_ctrls : dword;
        enabled_ctrls : dword;
        enabled_ctrl_changes : dword;
        num_groups : longint;
        keycode : KeyCode;
        event_type : char;
        req_major : char;
        req_minor : char;
      end;
    XkbControlsNotifyEvent = _XkbControlsNotify;










    _XkbIndicatorNotify = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        time : Time;
        xkb_type : longint;
        device : longint;
        changed : dword;
        state : dword;
      end;
    XkbIndicatorNotifyEvent = _XkbIndicatorNotify;




















    _XkbNamesNotify = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        time : Time;
        xkb_type : longint;
        device : longint;
        changed : dword;
        first_type : longint;
        num_types : longint;
        first_lvl : longint;
        num_lvls : longint;
        num_aliases : longint;
        num_radio_groups : longint;
        changed_vmods : dword;
        changed_groups : dword;
        changed_indicators : dword;
        first_key : longint;
        num_keys : longint;
      end;
    XkbNamesNotifyEvent = _XkbNamesNotify;












    _XkbCompatMapNotify = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        time : Time;
        xkb_type : longint;
        device : longint;
        changed_groups : dword;
        first_si : longint;
        num_si : longint;
        num_total_si : longint;
      end;
    XkbCompatMapNotifyEvent = _XkbCompatMapNotify;
















    _XkbBellNotify = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        time : Time;
        xkb_type : longint;
        device : longint;
        percent : longint;
        pitch : longint;
        duration : longint;
        bell_class : longint;
        bell_id : longint;
        name : Atom;
        window : Window;
        event_only : Bool;
      end;
    XkbBellNotifyEvent = _XkbBellNotify;














    _XkbActionMessage = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        time : Time;
        xkb_type : longint;
        device : longint;
        keycode : KeyCode;
        press : Bool;
        key_event_follows : Bool;
        group : longint;
        mods : dword;
        message : array[0..(XkbActionMessageLength+1)-1] of char;
      end;
    XkbActionMessageEvent = _XkbActionMessage;












    _XkbAccessXNotify = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        time : Time;
        xkb_type : longint;
        device : longint;
        detail : longint;
        keycode : longint;
        sk_delay : longint;
        debounce_delay : longint;
      end;
    XkbAccessXNotifyEvent = _XkbAccessXNotify;


















    _XkbExtensionDeviceNotify = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        time : Time;
        xkb_type : longint;
        device : longint;
        reason : dword;
        supported : dword;
        unsupported : dword;
        first_btn : longint;
        num_btns : longint;
        leds_defined : dword;
        led_state : dword;
        led_class : longint;
        led_id : longint;
      end;
    XkbExtensionDeviceNotifyEvent = _XkbExtensionDeviceNotify;

    _XkbEvent = record
        case longint of
          0 : ( _type : longint );
          1 : ( any : XkbAnyEvent );
          2 : ( new_kbd : XkbNewKeyboardNotifyEvent );
          3 : ( map : XkbMapNotifyEvent );
          4 : ( state : XkbStateNotifyEvent );
          5 : ( ctrls : XkbControlsNotifyEvent );
          6 : ( indicators : XkbIndicatorNotifyEvent );
          7 : ( names : XkbNamesNotifyEvent );
          8 : ( compat : XkbCompatMapNotifyEvent );
          9 : ( bell : XkbBellNotifyEvent );
          10 : ( message : XkbActionMessageEvent );
          11 : ( accessx : XkbAccessXNotifyEvent );
          12 : ( device : XkbExtensionDeviceNotifyEvent );
          13 : ( core : XEvent );
        end;
    XkbEvent = _XkbEvent;
(* error 
typedef struct	_XkbKbdDpyState	XkbKbdDpyStateRec,*XkbKbdDpyStatePtr;












{$if NeedWidePrototypes}
{$else}
{$endif}




































































































































{$endif}


implementation


end.
