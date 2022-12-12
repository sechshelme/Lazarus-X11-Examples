
unit XKBlib;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/XKBlib.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/XKBlib.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/XKBlib.pp
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
PDisplay  = ^Display;
PXkbAccessXNotify  = ^XkbAccessXNotify;
PXkbAccessXNotifyEvent  = ^XkbAccessXNotifyEvent;
PXkbActionMessage  = ^XkbActionMessage;
PXkbActionMessageEvent  = ^XkbActionMessageEvent;
PXkbAnyEvent  = ^XkbAnyEvent;
PXkbBellNotify  = ^XkbBellNotify;
PXkbBellNotifyEvent  = ^XkbBellNotifyEvent;
PXkbCompatMapNotify  = ^XkbCompatMapNotify;
PXkbCompatMapNotifyEvent  = ^XkbCompatMapNotifyEvent;
PXkbControlsNotify  = ^XkbControlsNotify;
PXkbControlsNotifyEvent  = ^XkbControlsNotifyEvent;
PXkbEvent  = ^XkbEvent;
PXkbExtensionDeviceNotify  = ^XkbExtensionDeviceNotify;
PXkbExtensionDeviceNotifyEvent  = ^XkbExtensionDeviceNotifyEvent;
PXkbIndicatorNotify  = ^XkbIndicatorNotify;
PXkbIndicatorNotifyEvent  = ^XkbIndicatorNotifyEvent;
PXkbMapNotifyEvent  = ^XkbMapNotifyEvent;
PXkbNamesNotify  = ^XkbNamesNotify;
PXkbNamesNotifyEvent  = ^XkbNamesNotifyEvent;
PXkbNewKeyboardNotify  = ^XkbNewKeyboardNotify;
PXkbNewKeyboardNotifyEvent  = ^XkbNewKeyboardNotifyEvent;
PXkbStateNotifyEvent  = ^XkbStateNotifyEvent;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _X11_XKBLIB_H_}
{$define _X11_XKBLIB_H_}
{$include <X11/Xlib.h>}
{$include <X11/extensions/XKBstr.h>}







type
  PXkbAnyEvent = ^TXkbAnyEvent;
  TXkbAnyEvent = record
      _type : longint;
      serial : dword;
      send_event : TBool;
      display : PDisplay;
      time : TTime;
      xkb_type : longint;
      device : dword;
    end;
















  PXkbNewKeyboardNotify = ^TXkbNewKeyboardNotify;
  TXkbNewKeyboardNotify = record
      _type : longint;
      serial : dword;
      send_event : TBool;
      display : PDisplay;
      time : TTime;
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
  TXkbNewKeyboardNotifyEvent = TXkbNewKeyboardNotify;
  PXkbNewKeyboardNotifyEvent = ^TXkbNewKeyboardNotifyEvent;













  PXkbMapNotifyEvent = ^TXkbMapNotifyEvent;
  TXkbMapNotifyEvent = record
      _type : longint;
      serial : dword;
      send_event : TBool;
      display : PDisplay;
      time : TTime;
      xkb_type : longint;
      device : longint;
      changed : dword;
      flags : dword;
      first_type : longint;
      num_types : longint;
      min_key_code : TKeyCode;
      max_key_code : TKeyCode;
      first_key_sym : TKeyCode;
      first_key_act : TKeyCode;
      first_key_behavior : TKeyCode;
      first_key_explicit : TKeyCode;
      first_modmap_key : TKeyCode;
      first_vmodmap_key : TKeyCode;
      num_key_syms : longint;
      num_key_acts : longint;
      num_key_behaviors : longint;
      num_key_explicit : longint;
      num_modmap_keys : longint;
      num_vmodmap_keys : longint;
      vmods : dword;
    end;



























  PXkbStateNotifyEvent = ^TXkbStateNotifyEvent;
  TXkbStateNotifyEvent = record
      _type : longint;
      serial : dword;
      send_event : TBool;
      display : PDisplay;
      time : TTime;
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
      keycode : TKeyCode;
      event_type : char;
      req_major : char;
      req_minor : char;
    end;
















  PXkbControlsNotify = ^TXkbControlsNotify;
  TXkbControlsNotify = record
      _type : longint;
      serial : dword;
      send_event : TBool;
      display : PDisplay;
      time : TTime;
      xkb_type : longint;
      device : longint;
      changed_ctrls : dword;
      enabled_ctrls : dword;
      enabled_ctrl_changes : dword;
      num_groups : longint;
      keycode : TKeyCode;
      event_type : char;
      req_major : char;
      req_minor : char;
    end;
  TXkbControlsNotifyEvent = TXkbControlsNotify;
  PXkbControlsNotifyEvent = ^TXkbControlsNotifyEvent;










  PXkbIndicatorNotify = ^TXkbIndicatorNotify;
  TXkbIndicatorNotify = record
      _type : longint;
      serial : dword;
      send_event : TBool;
      display : PDisplay;
      time : TTime;
      xkb_type : longint;
      device : longint;
      changed : dword;
      state : dword;
    end;
  TXkbIndicatorNotifyEvent = TXkbIndicatorNotify;
  PXkbIndicatorNotifyEvent = ^TXkbIndicatorNotifyEvent;




















  PXkbNamesNotify = ^TXkbNamesNotify;
  TXkbNamesNotify = record
      _type : longint;
      serial : dword;
      send_event : TBool;
      display : PDisplay;
      time : TTime;
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
  TXkbNamesNotifyEvent = TXkbNamesNotify;
  PXkbNamesNotifyEvent = ^TXkbNamesNotifyEvent;












  PXkbCompatMapNotify = ^TXkbCompatMapNotify;
  TXkbCompatMapNotify = record
      _type : longint;
      serial : dword;
      send_event : TBool;
      display : PDisplay;
      time : TTime;
      xkb_type : longint;
      device : longint;
      changed_groups : dword;
      first_si : longint;
      num_si : longint;
      num_total_si : longint;
    end;
  TXkbCompatMapNotifyEvent = TXkbCompatMapNotify;
  PXkbCompatMapNotifyEvent = ^TXkbCompatMapNotifyEvent;
















  PXkbBellNotify = ^TXkbBellNotify;
  TXkbBellNotify = record
      _type : longint;
      serial : dword;
      send_event : TBool;
      display : PDisplay;
      time : TTime;
      xkb_type : longint;
      device : longint;
      percent : longint;
      pitch : longint;
      duration : longint;
      bell_class : longint;
      bell_id : longint;
      name : TAtom;
      window : TWindow;
      event_only : TBool;
    end;
  TXkbBellNotifyEvent = TXkbBellNotify;
  PXkbBellNotifyEvent = ^TXkbBellNotifyEvent;














  PXkbActionMessage = ^TXkbActionMessage;
  TXkbActionMessage = record
      _type : longint;
      serial : dword;
      send_event : TBool;
      display : PDisplay;
      time : TTime;
      xkb_type : longint;
      device : longint;
      keycode : TKeyCode;
      press : TBool;
      key_event_follows : TBool;
      group : longint;
      mods : dword;
      message : array[0..(XkbActionMessageLength+1)-1] of char;
    end;
  TXkbActionMessageEvent = TXkbActionMessage;
  PXkbActionMessageEvent = ^TXkbActionMessageEvent;












  PXkbAccessXNotify = ^TXkbAccessXNotify;
  TXkbAccessXNotify = record
      _type : longint;
      serial : dword;
      send_event : TBool;
      display : PDisplay;
      time : TTime;
      xkb_type : longint;
      device : longint;
      detail : longint;
      keycode : longint;
      sk_delay : longint;
      debounce_delay : longint;
    end;
  TXkbAccessXNotifyEvent = TXkbAccessXNotify;
  PXkbAccessXNotifyEvent = ^TXkbAccessXNotifyEvent;


















  PXkbExtensionDeviceNotify = ^TXkbExtensionDeviceNotify;
  TXkbExtensionDeviceNotify = record
      _type : longint;
      serial : dword;
      send_event : TBool;
      display : PDisplay;
      time : TTime;
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
  TXkbExtensionDeviceNotifyEvent = TXkbExtensionDeviceNotify;
  PXkbExtensionDeviceNotifyEvent = ^TXkbExtensionDeviceNotifyEvent;

  PXkbEvent = ^TXkbEvent;
  TXkbEvent = record
      case longint of
        0 : ( _type : longint );
        1 : ( any : TXkbAnyEvent );
        2 : ( new_kbd : TXkbNewKeyboardNotifyEvent );
        3 : ( map : TXkbMapNotifyEvent );
        4 : ( state : TXkbStateNotifyEvent );
        5 : ( ctrls : TXkbControlsNotifyEvent );
        6 : ( indicators : TXkbIndicatorNotifyEvent );
        7 : ( names : TXkbNamesNotifyEvent );
        8 : ( compat : TXkbCompatMapNotifyEvent );
        9 : ( bell : TXkbBellNotifyEvent );
        10 : ( message : TXkbActionMessageEvent );
        11 : ( accessx : TXkbAccessXNotifyEvent );
        12 : ( device : TXkbExtensionDeviceNotifyEvent );
        13 : ( core : TXEvent );
      end;
(* error 
typedef struct	_XkbKbdDpyState	XkbKbdDpyStateRec,*XkbKbdDpyStatePtr;












{$if NeedWidePrototypes}
{$else}
{$endif}




































































































































{$endif}


implementation


end.
