unit fp_xcb_keysyms;

interface

uses
  fp_xcb;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


type
  Pxcb_key_symbols_t = type Pointer;

function xcb_key_symbols_alloc(c: Pxcb_connection_t): Pxcb_key_symbols_t; cdecl; external libxcb_keysyms;
procedure xcb_key_symbols_free(syms: Pxcb_key_symbols_t); cdecl; external libxcb_keysyms;
function xcb_key_symbols_get_keysym(syms: Pxcb_key_symbols_t; keycode: Txcb_keycode_t; col: longint): Txcb_keysym_t; cdecl; external libxcb_keysyms;
function xcb_key_symbols_get_keycode(syms: Pxcb_key_symbols_t; keysym: Txcb_keysym_t): Pxcb_keycode_t; cdecl; external libxcb_keysyms;
function xcb_key_press_lookup_keysym(syms: Pxcb_key_symbols_t; event: Pxcb_key_press_event_t; col: longint): Txcb_keysym_t; cdecl; external libxcb_keysyms;
function xcb_key_release_lookup_keysym(syms: Pxcb_key_symbols_t; event: Pxcb_key_release_event_t; col: longint): Txcb_keysym_t; cdecl; external libxcb_keysyms;
function xcb_refresh_keyboard_mapping(syms: Pxcb_key_symbols_t; event: Pxcb_mapping_notify_event_t): longint; cdecl; external libxcb_keysyms;
function xcb_is_keypad_key(keysym: Txcb_keysym_t): longint; cdecl; external libxcb_keysyms;
function xcb_is_private_keypad_key(keysym: Txcb_keysym_t): longint; cdecl; external libxcb_keysyms;
function xcb_is_cursor_key(keysym: Txcb_keysym_t): longint; cdecl; external libxcb_keysyms;
function xcb_is_pf_key(keysym: Txcb_keysym_t): longint; cdecl; external libxcb_keysyms;
function xcb_is_function_key(keysym: Txcb_keysym_t): longint; cdecl; external libxcb_keysyms;
function xcb_is_misc_function_key(keysym: Txcb_keysym_t): longint; cdecl; external libxcb_keysyms;
function xcb_is_modifier_key(keysym: Txcb_keysym_t): longint; cdecl; external libxcb_keysyms;

// === Konventiert am: 8-10-25 19:43:53 ===


implementation



end.
