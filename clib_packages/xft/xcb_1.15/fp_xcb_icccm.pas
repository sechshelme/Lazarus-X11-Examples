unit fp_xcb_icccm;

interface

uses
  fp_xcb;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


type
  Txcb_icccm_get_text_property_reply_t = record
    _reply: Pxcb_get_property_reply_t;
    encoding: Txcb_atom_t;
    name_len: Tuint32_t;
    name: pchar;
    format: Tuint8_t;
  end;
  Pxcb_icccm_get_text_property_reply_t = ^Txcb_icccm_get_text_property_reply_t;

function xcb_icccm_get_text_property(c: Pxcb_connection_t; window: Txcb_window_t; _property: Txcb_atom_t): Txcb_get_property_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_text_property_unchecked(c: Pxcb_connection_t; window: Txcb_window_t; _property: Txcb_atom_t): Txcb_get_property_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_text_property_reply(c: Pxcb_connection_t; cookie: Txcb_get_property_cookie_t; prop: Pxcb_icccm_get_text_property_reply_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_icccm;
procedure xcb_icccm_get_text_property_reply_wipe(prop: Pxcb_icccm_get_text_property_reply_t); cdecl; external libxcb_icccm;
function xcb_icccm_set_wm_name_checked(c: Pxcb_connection_t; window: Txcb_window_t; encoding: Txcb_atom_t; format: Tuint8_t; name_len: Tuint32_t;
  name: pchar): Txcb_void_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_set_wm_name(c: Pxcb_connection_t; window: Txcb_window_t; encoding: Txcb_atom_t; format: Tuint8_t; name_len: Tuint32_t;
  name: pchar): Txcb_void_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_name(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_name_unchecked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_name_reply(c: Pxcb_connection_t; cookie: Txcb_get_property_cookie_t; prop: Pxcb_icccm_get_text_property_reply_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_icccm;
function xcb_icccm_set_wm_icon_name_checked(c: Pxcb_connection_t; window: Txcb_window_t; encoding: Txcb_atom_t; format: Tuint8_t; name_len: Tuint32_t;
  name: pchar): Txcb_void_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_set_wm_icon_name(c: Pxcb_connection_t; window: Txcb_window_t; encoding: Txcb_atom_t; format: Tuint8_t; name_len: Tuint32_t;
  name: pchar): Txcb_void_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_icon_name(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_icon_name_unchecked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_icon_name_reply(c: Pxcb_connection_t; cookie: Txcb_get_property_cookie_t; prop: Pxcb_icccm_get_text_property_reply_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_icccm;
function xcb_icccm_set_wm_colormap_windows_checked(c: Pxcb_connection_t; window: Txcb_window_t; wm_colormap_windows_atom: Txcb_atom_t; list_len: Tuint32_t; list: Pxcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_set_wm_colormap_windows(c: Pxcb_connection_t; window: Txcb_window_t; wm_colormap_windows_atom: Txcb_atom_t; list_len: Tuint32_t; list: Pxcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_icccm;

type
  Txcb_icccm_get_wm_colormap_windows_reply_t = record
    windows_len: Tuint32_t;
    windows: Pxcb_window_t;
    _reply: Pxcb_get_property_reply_t;
  end;
  Pxcb_icccm_get_wm_colormap_windows_reply_t = ^Txcb_icccm_get_wm_colormap_windows_reply_t;

function xcb_icccm_get_wm_colormap_windows(c: Pxcb_connection_t; window: Txcb_window_t; wm_colormap_windows_atom: Txcb_atom_t): Txcb_get_property_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_colormap_windows_unchecked(c: Pxcb_connection_t; window: Txcb_window_t; wm_colormap_windows_atom: Txcb_atom_t): Txcb_get_property_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_colormap_windows_from_reply(reply: Pxcb_get_property_reply_t; colormap_windows: Pxcb_icccm_get_wm_colormap_windows_reply_t): Tuint8_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_colormap_windows_reply(c: Pxcb_connection_t; cookie: Txcb_get_property_cookie_t; windows: Pxcb_icccm_get_wm_colormap_windows_reply_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_icccm;
procedure xcb_icccm_get_wm_colormap_windows_reply_wipe(windows: Pxcb_icccm_get_wm_colormap_windows_reply_t); cdecl; external libxcb_icccm;
function xcb_icccm_set_wm_client_machine_checked(c: Pxcb_connection_t; window: Txcb_window_t; encoding: Txcb_atom_t; format: Tuint8_t; name_len: Tuint32_t;
  name: pchar): Txcb_void_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_set_wm_client_machine(c: Pxcb_connection_t; window: Txcb_window_t; encoding: Txcb_atom_t; format: Tuint8_t; name_len: Tuint32_t;
  name: pchar): Txcb_void_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_client_machine(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_client_machine_unchecked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_client_machine_reply(c: Pxcb_connection_t; cookie: Txcb_get_property_cookie_t; prop: Pxcb_icccm_get_text_property_reply_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_icccm;
function xcb_icccm_set_wm_class_checked(c: Pxcb_connection_t; window: Txcb_window_t; class_len: Tuint32_t; class_name: pchar): Txcb_void_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_set_wm_class(c: Pxcb_connection_t; window: Txcb_window_t; class_len: Tuint32_t; class_name: pchar): Txcb_void_cookie_t; cdecl; external libxcb_icccm;

type
  Txcb_icccm_get_wm_class_reply_t = record
    instance_name: pchar;
    class_name: pchar;
    _reply: Pxcb_get_property_reply_t;
  end;
  Pxcb_icccm_get_wm_class_reply_t = ^Txcb_icccm_get_wm_class_reply_t;

function xcb_icccm_get_wm_class(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_class_unchecked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_class_from_reply(prop: Pxcb_icccm_get_wm_class_reply_t; reply: Pxcb_get_property_reply_t): Tuint8_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_class_reply(c: Pxcb_connection_t; cookie: Txcb_get_property_cookie_t; prop: Pxcb_icccm_get_wm_class_reply_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_icccm;
procedure xcb_icccm_get_wm_class_reply_wipe(prop: Pxcb_icccm_get_wm_class_reply_t); cdecl; external libxcb_icccm;
function xcb_icccm_set_wm_transient_for_checked(c: Pxcb_connection_t; window: Txcb_window_t; transient_for_window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_set_wm_transient_for(c: Pxcb_connection_t; window: Txcb_window_t; transient_for_window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_transient_for(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_transient_for_unchecked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_transient_for_from_reply(prop: Pxcb_window_t; reply: Pxcb_get_property_reply_t): Tuint8_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_transient_for_reply(c: Pxcb_connection_t; cookie: Txcb_get_property_cookie_t; prop: Pxcb_window_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_icccm;

type
  Pxcb_icccm_size_hints_flags_t = ^Txcb_icccm_size_hints_flags_t;
  Txcb_icccm_size_hints_flags_t = longint;

const
  XCB_ICCCM_SIZE_HINT_US_POSITION = 1 shl 0;
  XCB_ICCCM_SIZE_HINT_US_SIZE = 1 shl 1;
  XCB_ICCCM_SIZE_HINT_P_POSITION = 1 shl 2;
  XCB_ICCCM_SIZE_HINT_P_SIZE = 1 shl 3;
  XCB_ICCCM_SIZE_HINT_P_MIN_SIZE = 1 shl 4;
  XCB_ICCCM_SIZE_HINT_P_MAX_SIZE = 1 shl 5;
  XCB_ICCCM_SIZE_HINT_P_RESIZE_INC = 1 shl 6;
  XCB_ICCCM_SIZE_HINT_P_ASPECT = 1 shl 7;
  XCB_ICCCM_SIZE_HINT_BASE_SIZE = 1 shl 8;
  XCB_ICCCM_SIZE_HINT_P_WIN_GRAVITY = 1 shl 9;

type
  Txcb_size_hints_t = record
    flags: Tuint32_t;
    x: Tint32_t;
    y: Tint32_t;
    width: Tint32_t;
    height: Tint32_t;
    min_width: Tint32_t;
    min_height: Tint32_t;
    max_width: Tint32_t;
    max_height: Tint32_t;
    width_inc: Tint32_t;
    height_inc: Tint32_t;
    min_aspect_num: Tint32_t;
    min_aspect_den: Tint32_t;
    max_aspect_num: Tint32_t;
    max_aspect_den: Tint32_t;
    base_width: Tint32_t;
    base_height: Tint32_t;
    win_gravity: Tuint32_t;
  end;
  Pxcb_size_hints_t = ^Txcb_size_hints_t;

const
  XCB_ICCCM_NUM_WM_SIZE_HINTS_ELEMENTS = 18;

procedure xcb_icccm_size_hints_set_position(hints: Pxcb_size_hints_t; user_specified: longint; x: Tint32_t; y: Tint32_t); cdecl; external libxcb_icccm;
procedure xcb_icccm_size_hints_set_size(hints: Pxcb_size_hints_t; user_specified: longint; width: Tint32_t; height: Tint32_t); cdecl; external libxcb_icccm;
procedure xcb_icccm_size_hints_set_min_size(hints: Pxcb_size_hints_t; min_width: Tint32_t; min_height: Tint32_t); cdecl; external libxcb_icccm;
procedure xcb_icccm_size_hints_set_max_size(hints: Pxcb_size_hints_t; max_width: Tint32_t; max_height: Tint32_t); cdecl; external libxcb_icccm;
procedure xcb_icccm_size_hints_set_resize_inc(hints: Pxcb_size_hints_t; width_inc: Tint32_t; height_inc: Tint32_t); cdecl; external libxcb_icccm;
procedure xcb_icccm_size_hints_set_aspect(hints: Pxcb_size_hints_t; min_aspect_num: Tint32_t; min_aspect_den: Tint32_t; max_aspect_num: Tint32_t; max_aspect_den: Tint32_t); cdecl; external libxcb_icccm;
procedure xcb_icccm_size_hints_set_base_size(hints: Pxcb_size_hints_t; base_width: Tint32_t; base_height: Tint32_t); cdecl; external libxcb_icccm;
procedure xcb_icccm_size_hints_set_win_gravity(hints: Pxcb_size_hints_t; win_gravity: Txcb_gravity_t); cdecl; external libxcb_icccm;
function xcb_icccm_set_wm_size_hints_checked(c: Pxcb_connection_t; window: Txcb_window_t; _property: Txcb_atom_t; hints: Pxcb_size_hints_t): Txcb_void_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_set_wm_size_hints(c: Pxcb_connection_t; window: Txcb_window_t; _property: Txcb_atom_t; hints: Pxcb_size_hints_t): Txcb_void_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_size_hints(c: Pxcb_connection_t; window: Txcb_window_t; _property: Txcb_atom_t): Txcb_get_property_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_size_hints_unchecked(c: Pxcb_connection_t; window: Txcb_window_t; _property: Txcb_atom_t): Txcb_get_property_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_size_hints_reply(c: Pxcb_connection_t; cookie: Txcb_get_property_cookie_t; hints: Pxcb_size_hints_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_icccm;
function xcb_icccm_set_wm_normal_hints_checked(c: Pxcb_connection_t; window: Txcb_window_t; hints: Pxcb_size_hints_t): Txcb_void_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_set_wm_normal_hints(c: Pxcb_connection_t; window: Txcb_window_t; hints: Pxcb_size_hints_t): Txcb_void_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_normal_hints(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_normal_hints_unchecked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_size_hints_from_reply(hints: Pxcb_size_hints_t; reply: Pxcb_get_property_reply_t): Tuint8_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_normal_hints_reply(c: Pxcb_connection_t; cookie: Txcb_get_property_cookie_t; hints: Pxcb_size_hints_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_icccm;

type
  Txcb_icccm_wm_hints_t = record
    flags: Tint32_t;
    input: Tuint32_t;
    initial_state: Tint32_t;
    icon_pixmap: Txcb_pixmap_t;
    icon_window: Txcb_window_t;
    icon_x: Tint32_t;
    icon_y: Tint32_t;
    icon_mask: Txcb_pixmap_t;
    window_group: Txcb_window_t;
  end;
  Pxcb_icccm_wm_hints_t = ^Txcb_icccm_wm_hints_t;

const
  XCB_ICCCM_NUM_WM_HINTS_ELEMENTS = 9;

type
  Pxcb_icccm_wm_state_t = ^Txcb_icccm_wm_state_t;
  Txcb_icccm_wm_state_t = longint;

const
  XCB_ICCCM_WM_STATE_WITHDRAWN = 0;
  XCB_ICCCM_WM_STATE_NORMAL = 1;
  XCB_ICCCM_WM_STATE_ICONIC = 3;

type
  Pxcb_icccm_wm_t = ^Txcb_icccm_wm_t;
  Txcb_icccm_wm_t = longint;

const
  XCB_ICCCM_WM_HINT_INPUT = 1 shl 0;
  XCB_ICCCM_WM_HINT_STATE = 1 shl 1;
  XCB_ICCCM_WM_HINT_ICON_PIXMAP = 1 shl 2;
  XCB_ICCCM_WM_HINT_ICON_WINDOW = 1 shl 3;
  XCB_ICCCM_WM_HINT_ICON_POSITION = 1 shl 4;
  XCB_ICCCM_WM_HINT_ICON_MASK = 1 shl 5;
  XCB_ICCCM_WM_HINT_WINDOW_GROUP = 1 shl 6;
  XCB_ICCCM_WM_HINT_X_URGENCY = 1 shl 8;

const
  XCB_ICCCM_WM_ALL_HINTS = XCB_ICCCM_WM_HINT_INPUT or XCB_ICCCM_WM_HINT_STATE or XCB_ICCCM_WM_HINT_ICON_PIXMAP or XCB_ICCCM_WM_HINT_ICON_WINDOW or XCB_ICCCM_WM_HINT_ICON_POSITION or XCB_ICCCM_WM_HINT_ICON_MASK or XCB_ICCCM_WM_HINT_WINDOW_GROUP;

function xcb_icccm_wm_hints_get_urgency(hints: Pxcb_icccm_wm_hints_t): Tuint32_t; cdecl; external libxcb_icccm;
procedure xcb_icccm_wm_hints_set_input(hints: Pxcb_icccm_wm_hints_t; input: Tuint8_t); cdecl; external libxcb_icccm;
procedure xcb_icccm_wm_hints_set_iconic(hints: Pxcb_icccm_wm_hints_t); cdecl; external libxcb_icccm;
procedure xcb_icccm_wm_hints_set_normal(hints: Pxcb_icccm_wm_hints_t); cdecl; external libxcb_icccm;
procedure xcb_icccm_wm_hints_set_withdrawn(hints: Pxcb_icccm_wm_hints_t); cdecl; external libxcb_icccm;
procedure xcb_icccm_wm_hints_set_none(hints: Pxcb_icccm_wm_hints_t); cdecl; external libxcb_icccm;
procedure xcb_icccm_wm_hints_set_icon_pixmap(hints: Pxcb_icccm_wm_hints_t; icon_pixmap: Txcb_pixmap_t); cdecl; external libxcb_icccm;
procedure xcb_icccm_wm_hints_set_icon_mask(hints: Pxcb_icccm_wm_hints_t; icon_mask: Txcb_pixmap_t); cdecl; external libxcb_icccm;
procedure xcb_icccm_wm_hints_set_icon_window(hints: Pxcb_icccm_wm_hints_t; icon_window: Txcb_window_t); cdecl; external libxcb_icccm;
procedure xcb_icccm_wm_hints_set_window_group(hints: Pxcb_icccm_wm_hints_t; window_group: Txcb_window_t); cdecl; external libxcb_icccm;
procedure xcb_icccm_wm_hints_set_urgency(hints: Pxcb_icccm_wm_hints_t); cdecl; external libxcb_icccm;
function xcb_icccm_set_wm_hints_checked(c: Pxcb_connection_t; window: Txcb_window_t; hints: Pxcb_icccm_wm_hints_t): Txcb_void_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_set_wm_hints(c: Pxcb_connection_t; window: Txcb_window_t; hints: Pxcb_icccm_wm_hints_t): Txcb_void_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_hints(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_hints_unchecked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_hints_from_reply(hints: Pxcb_icccm_wm_hints_t; reply: Pxcb_get_property_reply_t): Tuint8_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_hints_reply(c: Pxcb_connection_t; cookie: Txcb_get_property_cookie_t; hints: Pxcb_icccm_wm_hints_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_icccm;
function xcb_icccm_set_wm_protocols_checked(c: Pxcb_connection_t; window: Txcb_window_t; wm_protocols: Txcb_atom_t; list_len: Tuint32_t; list: Pxcb_atom_t): Txcb_void_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_set_wm_protocols(c: Pxcb_connection_t; window: Txcb_window_t; wm_protocols: Txcb_atom_t; list_len: Tuint32_t; list: Pxcb_atom_t): Txcb_void_cookie_t; cdecl; external libxcb_icccm;

type
  Txcb_icccm_get_wm_protocols_reply_t = record
    atoms_len: Tuint32_t;
    atoms: Pxcb_atom_t;
    _reply: Pxcb_get_property_reply_t;
  end;
  Pxcb_icccm_get_wm_protocols_reply_t = ^Txcb_icccm_get_wm_protocols_reply_t;

function xcb_icccm_get_wm_protocols(c: Pxcb_connection_t; window: Txcb_window_t; wm_protocol_atom: Txcb_atom_t): Txcb_get_property_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_protocols_unchecked(c: Pxcb_connection_t; window: Txcb_window_t; wm_protocol_atom: Txcb_atom_t): Txcb_get_property_cookie_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_protocols_from_reply(reply: Pxcb_get_property_reply_t; protocols: Pxcb_icccm_get_wm_protocols_reply_t): Tuint8_t; cdecl; external libxcb_icccm;
function xcb_icccm_get_wm_protocols_reply(c: Pxcb_connection_t; cookie: Txcb_get_property_cookie_t; protocols: Pxcb_icccm_get_wm_protocols_reply_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_icccm;
procedure xcb_icccm_get_wm_protocols_reply_wipe(protocols: Pxcb_icccm_get_wm_protocols_reply_t); cdecl; external libxcb_icccm;

// === Konventiert am: 12-10-25 16:22:05 ===


implementation



end.
