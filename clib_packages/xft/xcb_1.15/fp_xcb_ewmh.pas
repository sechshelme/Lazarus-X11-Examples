unit fp_xcb_ewmh;

interface

uses
  fp_xcb;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  Txcb_ewmh_connection_t = record
    connection: Pxcb_connection_t;
    screens: ^Pxcb_screen_t;
    nb_screens: longint;
    _NET_WM_CM_Sn: Pxcb_atom_t;
    _NET_SUPPORTED: Txcb_atom_t;
    _NET_CLIENT_LIST: Txcb_atom_t;
    _NET_CLIENT_LIST_STACKING: Txcb_atom_t;
    _NET_NUMBER_OF_DESKTOPS: Txcb_atom_t;
    _NET_DESKTOP_GEOMETRY: Txcb_atom_t;
    _NET_DESKTOP_VIEWPORT: Txcb_atom_t;
    _NET_CURRENT_DESKTOP: Txcb_atom_t;
    _NET_DESKTOP_NAMES: Txcb_atom_t;
    _NET_ACTIVE_WINDOW: Txcb_atom_t;
    _NET_WORKAREA: Txcb_atom_t;
    _NET_SUPPORTING_WM_CHECK: Txcb_atom_t;
    _NET_VIRTUAL_ROOTS: Txcb_atom_t;
    _NET_DESKTOP_LAYOUT: Txcb_atom_t;
    _NET_SHOWING_DESKTOP: Txcb_atom_t;
    _NET_CLOSE_WINDOW: Txcb_atom_t;
    _NET_MOVERESIZE_WINDOW: Txcb_atom_t;
    _NET_WM_MOVERESIZE: Txcb_atom_t;
    _NET_RESTACK_WINDOW: Txcb_atom_t;
    _NET_REQUEST_FRAME_EXTENTS: Txcb_atom_t;
    _NET_WM_NAME: Txcb_atom_t;
    _NET_WM_VISIBLE_NAME: Txcb_atom_t;
    _NET_WM_ICON_NAME: Txcb_atom_t;
    _NET_WM_VISIBLE_ICON_NAME: Txcb_atom_t;
    _NET_WM_DESKTOP: Txcb_atom_t;
    _NET_WM_WINDOW_TYPE: Txcb_atom_t;
    _NET_WM_STATE: Txcb_atom_t;
    _NET_WM_ALLOWED_ACTIONS: Txcb_atom_t;
    _NET_WM_STRUT: Txcb_atom_t;
    _NET_WM_STRUT_PARTIAL: Txcb_atom_t;
    _NET_WM_ICON_GEOMETRY: Txcb_atom_t;
    _NET_WM_ICON: Txcb_atom_t;
    _NET_WM_PID: Txcb_atom_t;
    _NET_WM_HANDLED_ICONS: Txcb_atom_t;
    _NET_WM_USER_TIME: Txcb_atom_t;
    _NET_WM_USER_TIME_WINDOW: Txcb_atom_t;
    _NET_FRAME_EXTENTS: Txcb_atom_t;
    _NET_WM_PING: Txcb_atom_t;
    _NET_WM_SYNC_REQUEST: Txcb_atom_t;
    _NET_WM_SYNC_REQUEST_COUNTER: Txcb_atom_t;
    _NET_WM_FULLSCREEN_MONITORS: Txcb_atom_t;
    _NET_WM_FULL_PLACEMENT: Txcb_atom_t;
    UTF8_STRING: Txcb_atom_t;
    WM_PROTOCOLS: Txcb_atom_t;
    MANAGER: Txcb_atom_t;
    _NET_WM_WINDOW_TYPE_DESKTOP: Txcb_atom_t;
    _NET_WM_WINDOW_TYPE_DOCK: Txcb_atom_t;
    _NET_WM_WINDOW_TYPE_TOOLBAR: Txcb_atom_t;
    _NET_WM_WINDOW_TYPE_MENU: Txcb_atom_t;
    _NET_WM_WINDOW_TYPE_UTILITY: Txcb_atom_t;
    _NET_WM_WINDOW_TYPE_SPLASH: Txcb_atom_t;
    _NET_WM_WINDOW_TYPE_DIALOG: Txcb_atom_t;
    _NET_WM_WINDOW_TYPE_DROPDOWN_MENU: Txcb_atom_t;
    _NET_WM_WINDOW_TYPE_POPUP_MENU: Txcb_atom_t;
    _NET_WM_WINDOW_TYPE_TOOLTIP: Txcb_atom_t;
    _NET_WM_WINDOW_TYPE_NOTIFICATION: Txcb_atom_t;
    _NET_WM_WINDOW_TYPE_COMBO: Txcb_atom_t;
    _NET_WM_WINDOW_TYPE_DND: Txcb_atom_t;
    _NET_WM_WINDOW_TYPE_NORMAL: Txcb_atom_t;
    _NET_WM_STATE_MODAL: Txcb_atom_t;
    _NET_WM_STATE_STICKY: Txcb_atom_t;
    _NET_WM_STATE_MAXIMIZED_VERT: Txcb_atom_t;
    _NET_WM_STATE_MAXIMIZED_HORZ: Txcb_atom_t;
    _NET_WM_STATE_SHADED: Txcb_atom_t;
    _NET_WM_STATE_SKIP_TASKBAR: Txcb_atom_t;
    _NET_WM_STATE_SKIP_PAGER: Txcb_atom_t;
    _NET_WM_STATE_HIDDEN: Txcb_atom_t;
    _NET_WM_STATE_FULLSCREEN: Txcb_atom_t;
    _NET_WM_STATE_ABOVE: Txcb_atom_t;
    _NET_WM_STATE_BELOW: Txcb_atom_t;
    _NET_WM_STATE_DEMANDS_ATTENTION: Txcb_atom_t;
    _NET_WM_ACTION_MOVE: Txcb_atom_t;
    _NET_WM_ACTION_RESIZE: Txcb_atom_t;
    _NET_WM_ACTION_MINIMIZE: Txcb_atom_t;
    _NET_WM_ACTION_SHADE: Txcb_atom_t;
    _NET_WM_ACTION_STICK: Txcb_atom_t;
    _NET_WM_ACTION_MAXIMIZE_HORZ: Txcb_atom_t;
    _NET_WM_ACTION_MAXIMIZE_VERT: Txcb_atom_t;
    _NET_WM_ACTION_FULLSCREEN: Txcb_atom_t;
    _NET_WM_ACTION_CHANGE_DESKTOP: Txcb_atom_t;
    _NET_WM_ACTION_CLOSE: Txcb_atom_t;
    _NET_WM_ACTION_ABOVE: Txcb_atom_t;
    _NET_WM_ACTION_BELOW: Txcb_atom_t;
  end;
  Pxcb_ewmh_connection_t = ^Txcb_ewmh_connection_t;

  Txcb_ewmh_get_atoms_reply_t = record
    atoms_len: Tuint32_t;
    atoms: Pxcb_atom_t;
    _reply: Pxcb_get_property_reply_t;
  end;
  Pxcb_ewmh_get_atoms_reply_t = ^Txcb_ewmh_get_atoms_reply_t;

  Txcb_ewmh_get_windows_reply_t = record
    windows_len: Tuint32_t;
    windows: Pxcb_window_t;
    _reply: Pxcb_get_property_reply_t;
  end;
  Pxcb_ewmh_get_windows_reply_t = ^Txcb_ewmh_get_windows_reply_t;

  Txcb_ewmh_get_utf8_strings_reply_t = record
    strings_len: Tuint32_t;
    strings: pchar;
    _reply: Pxcb_get_property_reply_t;
  end;
  Pxcb_ewmh_get_utf8_strings_reply_t = ^Txcb_ewmh_get_utf8_strings_reply_t;

  Txcb_ewmh_coordinates_t = record
    x: Tuint32_t;
    y: Tuint32_t;
  end;
  Pxcb_ewmh_coordinates_t = ^Txcb_ewmh_coordinates_t;

  Txcb_ewmh_get_desktop_viewport_reply_t = record
    desktop_viewport_len: Tuint32_t;
    desktop_viewport: Pxcb_ewmh_coordinates_t;
    _reply: Pxcb_get_property_reply_t;
  end;
  Pxcb_ewmh_get_desktop_viewport_reply_t = ^Txcb_ewmh_get_desktop_viewport_reply_t;

  Txcb_ewmh_geometry_t = record
    x: Tuint32_t;
    y: Tuint32_t;
    width: Tuint32_t;
    height: Tuint32_t;
  end;
  Pxcb_ewmh_geometry_t = ^Txcb_ewmh_geometry_t;

  Txcb_ewmh_get_workarea_reply_t = record
    workarea_len: Tuint32_t;
    workarea: Pxcb_ewmh_geometry_t;
    _reply: Pxcb_get_property_reply_t;
  end;
  Pxcb_ewmh_get_workarea_reply_t = ^Txcb_ewmh_get_workarea_reply_t;

type
  Pxcb_ewmh_client_source_type_t = ^Txcb_ewmh_client_source_type_t;
  Txcb_ewmh_client_source_type_t = longint;

const
  XCB_EWMH_CLIENT_SOURCE_TYPE_NONE = 0;
  XCB_EWMH_CLIENT_SOURCE_TYPE_NORMAL = 1;
  XCB_EWMH_CLIENT_SOURCE_TYPE_OTHER = 2;

type
  Pxcb_ewmh_desktop_layout_orientation_t = ^Txcb_ewmh_desktop_layout_orientation_t;
  Txcb_ewmh_desktop_layout_orientation_t = longint;

const
  XCB_EWMH_WM_ORIENTATION_HORZ = 0;
  XCB_EWMH_WM_ORIENTATION_VERT = 1;

type
  Pxcb_ewmh_desktop_layout_starting_corner_t = ^Txcb_ewmh_desktop_layout_starting_corner_t;
  Txcb_ewmh_desktop_layout_starting_corner_t = longint;

const
  XCB_EWMH_WM_TOPLEFT = 0;
  XCB_EWMH_WM_TOPRIGHT = 1;
  XCB_EWMH_WM_BOTTOMRIGHT = 2;
  XCB_EWMH_WM_BOTTOMLEFT = 3;

type
  Txcb_ewmh_get_desktop_layout_reply_t = record
    orientation: Tuint32_t;
    columns: Tuint32_t;
    rows: Tuint32_t;
    starting_corner: Tuint32_t;
  end;
  Pxcb_ewmh_get_desktop_layout_reply_t = ^Txcb_ewmh_get_desktop_layout_reply_t;

type
  Pxcb_ewmh_moveresize_window_opt_flags_t = ^Txcb_ewmh_moveresize_window_opt_flags_t;
  Txcb_ewmh_moveresize_window_opt_flags_t = longint;

const
  XCB_EWMH_MOVERESIZE_WINDOW_X = 1 shl 8;
  XCB_EWMH_MOVERESIZE_WINDOW_Y = 1 shl 9;
  XCB_EWMH_MOVERESIZE_WINDOW_WIDTH = 1 shl 10;
  XCB_EWMH_MOVERESIZE_WINDOW_HEIGHT = 1 shl 11;

type
  Pxcb_ewmh_moveresize_direction_t = ^Txcb_ewmh_moveresize_direction_t;
  Txcb_ewmh_moveresize_direction_t = longint;

const
  XCB_EWMH_WM_MOVERESIZE_SIZE_TOPLEFT = 0;
  XCB_EWMH_WM_MOVERESIZE_SIZE_TOP = 1;
  XCB_EWMH_WM_MOVERESIZE_SIZE_TOPRIGHT = 2;
  XCB_EWMH_WM_MOVERESIZE_SIZE_RIGHT = 3;
  XCB_EWMH_WM_MOVERESIZE_SIZE_BOTTOMRIGHT = 4;
  XCB_EWMH_WM_MOVERESIZE_SIZE_BOTTOM = 5;
  XCB_EWMH_WM_MOVERESIZE_SIZE_BOTTOMLEFT = 6;
  XCB_EWMH_WM_MOVERESIZE_SIZE_LEFT = 7;
  XCB_EWMH_WM_MOVERESIZE_MOVE = 8;
  XCB_EWMH_WM_MOVERESIZE_SIZE_KEYBOARD = 9;
  XCB_EWMH_WM_MOVERESIZE_MOVE_KEYBOARD = 10;
  XCB_EWMH_WM_MOVERESIZE_CANCEL = 11;

type
  Pxcb_ewmh_wm_state_action_t = ^Txcb_ewmh_wm_state_action_t;
  Txcb_ewmh_wm_state_action_t = longint;

const
  XCB_EWMH_WM_STATE_REMOVE = 0;
  XCB_EWMH_WM_STATE_ADD = 1;
  XCB_EWMH_WM_STATE_TOGGLE = 2;

type
  Txcb_ewmh_wm_strut_partial_t = record
    left: Tuint32_t;
    right: Tuint32_t;
    top: Tuint32_t;
    bottom: Tuint32_t;
    left_start_y: Tuint32_t;
    left_end_y: Tuint32_t;
    right_start_y: Tuint32_t;
    right_end_y: Tuint32_t;
    top_start_x: Tuint32_t;
    top_end_x: Tuint32_t;
    bottom_start_x: Tuint32_t;
    bottom_end_x: Tuint32_t;
  end;
  Pxcb_ewmh_wm_strut_partial_t = ^Txcb_ewmh_wm_strut_partial_t;

  Txcb_ewmh_wm_icon_iterator_t = record
    width: Tuint32_t;
    height: Tuint32_t;
    data: Puint32_t;
    rem: dword;
    index: dword;
  end;
  Pxcb_ewmh_wm_icon_iterator_t = ^Txcb_ewmh_wm_icon_iterator_t;

  Txcb_ewmh_get_wm_icon_reply_t = record
    num_icons: dword;
    _reply: Pxcb_get_property_reply_t;
  end;
  Pxcb_ewmh_get_wm_icon_reply_t = ^Txcb_ewmh_get_wm_icon_reply_t;

  Txcb_ewmh_get_extents_reply_t = record
    left: Tuint32_t;
    right: Tuint32_t;
    top: Tuint32_t;
    bottom: Tuint32_t;
  end;
  Pxcb_ewmh_get_extents_reply_t = ^Txcb_ewmh_get_extents_reply_t;

  Txcb_ewmh_get_wm_fullscreen_monitors_reply_t = record
    top: Tuint32_t;
    bottom: Tuint32_t;
    left: Tuint32_t;
    right: Tuint32_t;
  end;
  Pxcb_ewmh_get_wm_fullscreen_monitors_reply_t = ^Txcb_ewmh_get_wm_fullscreen_monitors_reply_t;

function xcb_ewmh_init_atoms(c: Pxcb_connection_t; ewmh: Pxcb_ewmh_connection_t): Pxcb_intern_atom_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_init_atoms_replies(ewmh: Pxcb_ewmh_connection_t; ewmh_cookies: Pxcb_intern_atom_cookie_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_send_client_message(c: Pxcb_connection_t; window: Txcb_window_t; dest: Txcb_window_t; atom: Txcb_atom_t; data_len: Tuint32_t;
  data: Puint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_window_from_reply(window: Pxcb_window_t; r: Pxcb_get_property_reply_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_window_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; window: Pxcb_window_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_cardinal_from_reply(cardinal: Puint32_t; r: Pxcb_get_property_reply_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_cardinal_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; cardinal: Puint32_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_atoms_from_reply(atoms: Pxcb_ewmh_get_atoms_reply_t; r: Pxcb_get_property_reply_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_atoms_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; atoms: Pxcb_ewmh_get_atoms_reply_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_ewmh;
procedure xcb_ewmh_get_atoms_reply_wipe(data: Pxcb_ewmh_get_atoms_reply_t); cdecl; external libxcb_ewmh;
function xcb_ewmh_get_windows_from_reply(atoms: Pxcb_ewmh_get_windows_reply_t; r: Pxcb_get_property_reply_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_utf8_strings_from_reply(ewmh: Pxcb_ewmh_connection_t; data: Pxcb_ewmh_get_utf8_strings_reply_t; r: Pxcb_get_property_reply_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_utf8_strings_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; data: Pxcb_ewmh_get_utf8_strings_reply_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_windows_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; atoms: Pxcb_ewmh_get_windows_reply_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_ewmh;
procedure xcb_ewmh_get_windows_reply_wipe(data: Pxcb_ewmh_get_windows_reply_t); cdecl; external libxcb_ewmh;
procedure xcb_ewmh_get_utf8_strings_reply_wipe(data: Pxcb_ewmh_get_utf8_strings_reply_t); cdecl; external libxcb_ewmh;
function xcb_ewmh_set_supported(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; list_len: Tuint32_t; list: Pxcb_atom_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_supported_checked(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; list_len: Tuint32_t; list: Pxcb_atom_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_supported_unchecked(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_supported(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_client_list(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; list_len: Tuint32_t; list: Pxcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_client_list_checked(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; list_len: Tuint32_t; list: Pxcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_client_list_unchecked(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_client_list(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_client_list_stacking(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; list_len: Tuint32_t; list: Pxcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_client_list_stacking_checked(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; list_len: Tuint32_t; list: Pxcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_client_list_stacking_unchecked(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_client_list_stacking(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_number_of_desktops(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; number_of_desktops: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_number_of_desktops_checked(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; number_of_desktops: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_number_of_desktops_unchecked(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_number_of_desktops(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_desktop_geometry(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; new_width: Tuint32_t; new_height: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_desktop_geometry_checked(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; new_width: Tuint32_t; new_height: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_desktop_geometry_unchecked(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_desktop_geometry(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_request_change_desktop_geometry(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; new_width: Tuint32_t; new_height: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_desktop_geometry_from_reply(width: Puint32_t; height: Puint32_t; r: Pxcb_get_property_reply_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_desktop_geometry_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; width: Puint32_t; height: Puint32_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_desktop_viewport(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; list_len: Tuint32_t; list: Pxcb_ewmh_coordinates_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_desktop_viewport_checked(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; list_len: Tuint32_t; list: Pxcb_ewmh_coordinates_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_desktop_viewport_unchecked(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_desktop_viewport(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_request_change_desktop_viewport(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; x: Tuint32_t; y: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_desktop_viewport_from_reply(vp: Pxcb_ewmh_get_desktop_viewport_reply_t; r: Pxcb_get_property_reply_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_desktop_viewport_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; vp: Pxcb_ewmh_get_desktop_viewport_reply_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_ewmh;
procedure xcb_ewmh_get_desktop_viewport_reply_wipe(r: Pxcb_ewmh_get_desktop_viewport_reply_t); cdecl; external libxcb_ewmh;
function xcb_ewmh_set_current_desktop(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; new_current_desktop: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_current_desktop_checked(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; new_current_desktop: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_current_desktop_unchecked(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_current_desktop(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_request_change_current_desktop(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; new_desktop: Tuint32_t; timestamp: Txcb_timestamp_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_desktop_names(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; strings_len: Tuint32_t; strings: pchar): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_desktop_names_checked(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; strings_len: Tuint32_t; strings: pchar): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_desktop_names_unchecked(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_desktop_names(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_active_window(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; new_active_window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_active_window_checked(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; new_active_window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_request_change_active_window(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; window_to_activate: Txcb_window_t; source_indication: Txcb_ewmh_client_source_type_t; timestamp: Txcb_timestamp_t;
  current_active_window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_active_window_unchecked(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_active_window(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_workarea(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; list_len: Tuint32_t; list: Pxcb_ewmh_geometry_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_workarea_checked(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; list_len: Tuint32_t; list: Pxcb_ewmh_geometry_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_workarea_unchecked(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_workarea(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_workarea_from_reply(wa: Pxcb_ewmh_get_workarea_reply_t; r: Pxcb_get_property_reply_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_workarea_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; wa: Pxcb_ewmh_get_workarea_reply_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_ewmh;
procedure xcb_ewmh_get_workarea_reply_wipe(r: Pxcb_ewmh_get_workarea_reply_t); cdecl; external libxcb_ewmh;
function xcb_ewmh_set_supporting_wm_check(ewmh: Pxcb_ewmh_connection_t; parent_window: Txcb_window_t; child_window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_supporting_wm_check_checked(ewmh: Pxcb_ewmh_connection_t; parent_window: Txcb_window_t; child_window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_supporting_wm_check_unchecked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_supporting_wm_check(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_virtual_roots(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; list_len: Tuint32_t; list: Pxcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_virtual_roots_checked(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; list_len: Tuint32_t; list: Pxcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_virtual_roots_unchecked(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_virtual_roots(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_desktop_layout(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; orientation: Txcb_ewmh_desktop_layout_orientation_t; columns: Tuint32_t; rows: Tuint32_t;
  starting_corner: Txcb_ewmh_desktop_layout_starting_corner_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_desktop_layout_checked(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; orientation: Txcb_ewmh_desktop_layout_orientation_t; columns: Tuint32_t; rows: Tuint32_t;
  starting_corner: Txcb_ewmh_desktop_layout_starting_corner_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_desktop_layout_unchecked(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_desktop_layout(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_desktop_layout_from_reply(desktop_layouts: Pxcb_ewmh_get_desktop_layout_reply_t; r: Pxcb_get_property_reply_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_desktop_layout_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; desktop_layouts: Pxcb_ewmh_get_desktop_layout_reply_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_showing_desktop(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; desktop: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_showing_desktop_checked(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; desktop: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_showing_desktop_unchecked(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_showing_desktop(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_request_close_window(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; window_to_close: Txcb_window_t; timestamp: Txcb_timestamp_t; source_indication: Txcb_ewmh_client_source_type_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_request_moveresize_window(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; moveresize_window: Txcb_window_t; gravity: Txcb_gravity_t; source_indication: Txcb_ewmh_client_source_type_t;
  flags: Txcb_ewmh_moveresize_window_opt_flags_t; x: Tuint32_t; y: Tuint32_t; width: Tuint32_t; height: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_request_wm_moveresize(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; moveresize_window: Txcb_window_t; x_root: Tuint32_t; y_root: Tuint32_t;
  direction: Txcb_ewmh_moveresize_direction_t; button: Txcb_button_index_t; source_indication: Txcb_ewmh_client_source_type_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_request_restack_window(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; window_to_restack: Txcb_window_t; sibling_window: Txcb_window_t; detail: Txcb_stack_mode_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_name(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; strings_len: Tuint32_t; strings: pchar): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_name_checked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; strings_len: Tuint32_t; strings: pchar): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_name_unchecked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_name(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_visible_name(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; strings_len: Tuint32_t; strings: pchar): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_visible_name_checked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; strings_len: Tuint32_t; strings: pchar): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_visible_name_unchecked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_visible_name(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_icon_name(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; strings_len: Tuint32_t; strings: pchar): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_icon_name_checked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; strings_len: Tuint32_t; strings: pchar): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_icon_name_unchecked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_icon_name(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_visible_icon_name(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; strings_len: Tuint32_t; strings: pchar): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_visible_icon_name_checked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; strings_len: Tuint32_t; strings: pchar): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_visible_icon_name_unchecked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_visible_icon_name(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_desktop(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; desktop: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_desktop_checked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; desktop: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_desktop_unchecked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_desktop(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_request_change_wm_desktop(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; client_window: Txcb_window_t; new_desktop: Tuint32_t; source_indication: Txcb_ewmh_client_source_type_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_window_type(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; list_len: Tuint32_t; list: Pxcb_atom_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_window_type_checked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; list_len: Tuint32_t; list: Pxcb_atom_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_window_type_unchecked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_window_type(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_window_type_from_reply(wtypes: Pxcb_ewmh_get_atoms_reply_t; r: Pxcb_get_property_reply_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_window_type_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; name: Pxcb_ewmh_get_atoms_reply_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_state(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; list_len: Tuint32_t; list: Pxcb_atom_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_state_checked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; list_len: Tuint32_t; list: Pxcb_atom_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_state_unchecked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_state(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_state_from_reply(wtypes: Pxcb_ewmh_get_atoms_reply_t; r: Pxcb_get_property_reply_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_state_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; name: Pxcb_ewmh_get_atoms_reply_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_request_change_wm_state(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; client_window: Txcb_window_t; action: Txcb_ewmh_wm_state_action_t; first_property: Txcb_atom_t;
  second_property: Txcb_atom_t; source_indication: Txcb_ewmh_client_source_type_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_allowed_actions(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; list_len: Tuint32_t; list: Pxcb_atom_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_allowed_actions_checked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; list_len: Tuint32_t; list: Pxcb_atom_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_allowed_actions_unchecked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_allowed_actions(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_allowed_actions_from_reply(wtypes: Pxcb_ewmh_get_atoms_reply_t; r: Pxcb_get_property_reply_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_allowed_actions_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; name: Pxcb_ewmh_get_atoms_reply_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_strut(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; left: Tuint32_t; right: Tuint32_t; top: Tuint32_t;
  bottom: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_strut_checked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; left: Tuint32_t; right: Tuint32_t; top: Tuint32_t;
  bottom: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_strut_unchecked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_strut(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_strut_from_reply(struts: Pxcb_ewmh_get_extents_reply_t; r: Pxcb_get_property_reply_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_strut_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; struts: Pxcb_ewmh_get_extents_reply_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_strut_partial(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; wm_strut: Txcb_ewmh_wm_strut_partial_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_strut_partial_checked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; wm_strut: Txcb_ewmh_wm_strut_partial_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_strut_partial_unchecked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_strut_partial(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_strut_partial_from_reply(struts: Pxcb_ewmh_wm_strut_partial_t; r: Pxcb_get_property_reply_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_strut_partial_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; struts: Pxcb_ewmh_wm_strut_partial_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_icon_geometry(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; left: Tuint32_t; right: Tuint32_t; top: Tuint32_t;
  bottom: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_icon_geometry_checked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; left: Tuint32_t; right: Tuint32_t; top: Tuint32_t;
  bottom: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_icon_geometry_unchecked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_icon_geometry(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_icon_geometry_from_reply(icons: Pxcb_ewmh_geometry_t; r: Pxcb_get_property_reply_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_icon_geometry_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; icons: Pxcb_ewmh_geometry_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_append_wm_icon_checked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; width: Tuint32_t; height: Tuint32_t; img_len: Tuint32_t;
  img: Puint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_append_wm_icon(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; width: Tuint32_t; height: Tuint32_t; img_len: Tuint32_t;
  img: Puint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_icon_unchecked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_icon(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_icon_from_reply(wm_icon: Pxcb_ewmh_get_wm_icon_reply_t; r: Pxcb_get_property_reply_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_icon_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; wm_icon: Pxcb_ewmh_get_wm_icon_reply_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_icon_iterator(wm_icon: Pxcb_ewmh_get_wm_icon_reply_t): Txcb_ewmh_wm_icon_iterator_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_icon_length(wm_icon: Pxcb_ewmh_get_wm_icon_reply_t): dword; cdecl; external libxcb_ewmh;
procedure xcb_ewmh_get_wm_icon_next(iterator: Pxcb_ewmh_wm_icon_iterator_t); cdecl; external libxcb_ewmh;
procedure xcb_ewmh_get_wm_icon_reply_wipe(wm_icon: Pxcb_ewmh_get_wm_icon_reply_t); cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_pid(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; pid: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_pid_checked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; pid: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_pid_unchecked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_pid(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_handled_icons(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; handled_icons: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_handled_icons_checked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; handled_icons: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_handled_icons_unchecked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_handled_icons(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_user_time(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; xtime: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_user_time_checked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; pid: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_user_time_unchecked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_user_time(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_user_time_window(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; xtime: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_user_time_window_checked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; pid: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_user_time_window_unchecked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_user_time_window(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_frame_extents(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; left: Tuint32_t; right: Tuint32_t; top: Tuint32_t;
  bottom: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_frame_extents_checked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; left: Tuint32_t; right: Tuint32_t; top: Tuint32_t;
  bottom: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_frame_extents_unchecked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_frame_extents(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_frame_extents_from_reply(frame_extents: Pxcb_ewmh_get_extents_reply_t; r: Pxcb_get_property_reply_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_frame_extents_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; frame_extents: Pxcb_ewmh_get_extents_reply_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_send_wm_ping(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; timestamp: Txcb_timestamp_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_sync_request_counter(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; wm_sync_request_counter_atom: Txcb_atom_t; low: Tuint32_t; high: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_sync_request_counter_checked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; wm_sync_request_counter_atom: Txcb_atom_t; low: Tuint32_t; high: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_sync_request_counter_unchecked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_sync_request_counter(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_sync_request_counter_from_reply(counter: Puint64_t; r: Pxcb_get_property_reply_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_sync_request_counter_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; counter: Puint64_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_send_wm_sync_request(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; wm_protocols_atom: Txcb_atom_t; wm_sync_request_atom: Txcb_atom_t; timestamp: Txcb_timestamp_t;
  counter: Tuint64_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_fullscreen_monitors(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; top: Tuint32_t; bottom: Tuint32_t; left: Tuint32_t;
  right: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_fullscreen_monitors_checked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t; top: Tuint32_t; bottom: Tuint32_t; left: Tuint32_t;
  right: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_fullscreen_monitors_unchecked(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_fullscreen_monitors(ewmh: Pxcb_ewmh_connection_t; window: Txcb_window_t): Txcb_get_property_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_fullscreen_monitors_from_reply(monitors: Pxcb_ewmh_get_wm_fullscreen_monitors_reply_t; r: Pxcb_get_property_reply_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_fullscreen_monitors_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; monitors: Pxcb_ewmh_get_wm_fullscreen_monitors_reply_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_request_change_wm_fullscreen_monitors(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; window: Txcb_window_t; top: Tuint32_t; bottom: Tuint32_t;
  left: Tuint32_t; right: Tuint32_t; source_indication: Txcb_ewmh_client_source_type_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_cm_owner(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; owner: Txcb_window_t; timestamp: Txcb_timestamp_t; selection_data1: Tuint32_t;
  selection_data2: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_set_wm_cm_owner_checked(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint; owner: Txcb_window_t; timestamp: Txcb_timestamp_t; selection_data1: Tuint32_t;
  selection_data2: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_cm_owner_unchecked(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint): Txcb_get_selection_owner_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_cm_owner(ewmh: Pxcb_ewmh_connection_t; screen_nbr: longint): Txcb_get_selection_owner_cookie_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_cm_owner_from_reply(owner: Pxcb_window_t; r: Pxcb_get_selection_owner_reply_t): Tuint8_t; cdecl; external libxcb_ewmh;
function xcb_ewmh_get_wm_cm_owner_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_selection_owner_cookie_t; owner: Pxcb_window_t; e: PPxcb_generic_error_t): Tuint8_t; cdecl; external libxcb_ewmh;

// === Konventiert am: 11-10-25 19:41:57 ===

procedure xcb_ewmh_connection_wipe(ewmh: Pxcb_ewmh_connection_t); inline;
function xcb_ewmh_get_supported_from_reply(supported: Pxcb_ewmh_get_atoms_reply_t; r: Pxcb_get_property_reply_t): byte; inline;
function xcb_ewmh_get_supported_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; supported: Pxcb_ewmh_get_atoms_reply_t; e: PPxcb_generic_error_t): byte; inline;
function xcb_ewmh_get_client_list_from_reply(clients: Pxcb_ewmh_get_windows_reply_t; r: Pxcb_get_property_reply_t): byte; inline;
function xcb_ewmh_get_client_list_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; clients: Pxcb_ewmh_get_windows_reply_t; e: PPxcb_generic_error_t): byte; inline;
function xcb_ewmh_get_client_list_stacking_from_reply(clients: Pxcb_ewmh_get_windows_reply_t; r: Pxcb_get_property_reply_t): byte; inline;
function xcb_ewmh_get_client_list_stacking_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; clients: Pxcb_ewmh_get_windows_reply_t; e: PPxcb_generic_error_t): byte; inline;
function xcb_ewmh_get_number_of_desktops_from_reply(number_of_desktops: PCardinal; r: Pxcb_get_property_reply_t): byte; inline;
function xcb_ewmh_get_number_of_desktops_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; number_of_desktops: PCardinal; e: PPxcb_generic_error_t): byte; inline;
function xcb_ewmh_request_change_number_of_desktops(ewmh: Pxcb_ewmh_connection_t; screen_nbr: integer; new_number_of_desktops: cardinal): Txcb_void_cookie_t; inline;
function xcb_ewmh_get_current_desktop_from_reply(current_desktop: PCardinal; r: Pxcb_get_property_reply_t): byte; inline;
function xcb_ewmh_get_current_desktop_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; current_desktop: PCardinal; e: PPxcb_generic_error_t): byte; inline;
function xcb_ewmh_get_desktop_names_from_reply(ewmh: Pxcb_ewmh_connection_t; names: Pxcb_ewmh_get_utf8_strings_reply_t; r: Pxcb_get_property_reply_t): byte; inline;
function xcb_ewmh_get_desktop_names_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; names: Pxcb_ewmh_get_utf8_strings_reply_t; e: PPxcb_generic_error_t): byte; inline;
function xcb_ewmh_get_active_window_from_reply(active_window: Pxcb_window_t; r: Pxcb_get_property_reply_t): byte; inline;
function xcb_ewmh_get_active_window_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; active_window: Pxcb_window_t; e: PPxcb_generic_error_t): byte; inline;
function xcb_ewmh_get_supporting_wm_check_from_reply(window: Pxcb_window_t; r: Pxcb_get_property_reply_t): byte; inline;
function xcb_ewmh_get_supporting_wm_check_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; window: Pxcb_window_t; e: PPxcb_generic_error_t): byte; inline;
function xcb_ewmh_get_virtual_roots_from_reply(virtual_roots: Pxcb_ewmh_get_windows_reply_t; r: Pxcb_get_property_reply_t): byte; inline;
function xcb_ewmh_get_virtual_roots_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; virtual_roots: Pxcb_ewmh_get_windows_reply_t; e: PPxcb_generic_error_t): byte; inline;
function xcb_ewmh_get_showing_desktop_from_reply(desktop: PCardinal; r: Pxcb_get_property_reply_t): byte; inline;
function xcb_ewmh_get_showing_desktop_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; desktop: PCardinal; e: PPxcb_generic_error_t): byte; inline;
function xcb_ewmh_request_change_showing_desktop(ewmh: Pxcb_ewmh_connection_t; screen_nbr: integer; enter: cardinal): Txcb_void_cookie_t; inline;
function xcb_ewmh_request_frame_extents(ewmh: Pxcb_ewmh_connection_t; screen_nbr: integer; client_window: Txcb_window_t): Txcb_void_cookie_t; inline;
function xcb_ewmh_get_wm_name_from_reply(ewmh: Pxcb_ewmh_connection_t; data: Pxcb_ewmh_get_utf8_strings_reply_t; r: Pxcb_get_property_reply_t): byte; inline;
function xcb_ewmh_get_wm_name_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; data: Pxcb_ewmh_get_utf8_strings_reply_t; e: PPxcb_generic_error_t): byte; inline;
function xcb_ewmh_get_wm_visible_name_from_reply(ewmh: Pxcb_ewmh_connection_t; data: Pxcb_ewmh_get_utf8_strings_reply_t; r: Pxcb_get_property_reply_t): byte; inline;
function xcb_ewmh_get_wm_visible_name_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; data: Pxcb_ewmh_get_utf8_strings_reply_t; e: PPxcb_generic_error_t): byte; inline;
function xcb_ewmh_get_wm_icon_name_from_reply(ewmh: Pxcb_ewmh_connection_t; data: Pxcb_ewmh_get_utf8_strings_reply_t; r: Pxcb_get_property_reply_t): byte; inline;
function xcb_ewmh_get_wm_icon_name_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; data: Pxcb_ewmh_get_utf8_strings_reply_t; e: PPxcb_generic_error_t): byte; inline;
function xcb_ewmh_get_wm_visible_icon_name_from_reply(ewmh: Pxcb_ewmh_connection_t; data: Pxcb_ewmh_get_utf8_strings_reply_t; r: Pxcb_get_property_reply_t): byte; inline;
function xcb_ewmh_get_wm_visible_icon_name_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; data: Pxcb_ewmh_get_utf8_strings_reply_t; e: PPxcb_generic_error_t): byte; inline;
function xcb_ewmh_get_wm_desktop_from_reply(desktop: PCardinal; r: Pxcb_get_property_reply_t): byte; inline;
function xcb_ewmh_get_wm_desktop_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; desktop: PCardinal; e: PPxcb_generic_error_t): byte; inline;
function xcb_ewmh_set_wm_icon_checked(ewmh: Pxcb_ewmh_connection_t; mode: byte; window: Txcb_window_t; data_len: cardinal; data: PCardinal): Txcb_void_cookie_t; inline;
function xcb_ewmh_set_wm_icon(ewmh: Pxcb_ewmh_connection_t; mode: byte; window: Txcb_window_t; data_len: cardinal; data: PCardinal): Txcb_void_cookie_t; inline;
function xcb_ewmh_get_wm_pid_from_reply(pid: PCardinal; r: Pxcb_get_property_reply_t): byte; inline;
function xcb_ewmh_get_wm_pid_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; pid: PCardinal; e: PPxcb_generic_error_t): byte; inline;
function xcb_ewmh_get_wm_handled_icons_from_reply(handled_icons: PCardinal; r: Pxcb_get_property_reply_t): byte; inline;
function xcb_ewmh_get_wm_handled_icons_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; handled_icons: PCardinal; e: PPxcb_generic_error_t): byte; inline;
function xcb_ewmh_get_wm_user_time_from_reply(xtime: PCardinal; r: Pxcb_get_property_reply_t): byte; inline;
function xcb_ewmh_get_wm_user_time_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; xtime: PCardinal; e: PPxcb_generic_error_t): byte; inline;
function xcb_ewmh_get_wm_user_time_window_from_reply(xtime: PCardinal; r: Pxcb_get_property_reply_t): byte; inline;
function xcb_ewmh_get_wm_user_time_window_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; xtime: PCardinal; e: PPxcb_generic_error_t): byte; inline;


implementation

procedure xcb_ewmh_connection_wipe(ewmh: Pxcb_ewmh_connection_t); inline;
begin
  free(ewmh^.screens);
  free(ewmh^._NET_WM_CM_Sn);
end;

function xcb_ewmh_get_supported_from_reply(supported: Pxcb_ewmh_get_atoms_reply_t; r: Pxcb_get_property_reply_t): byte; inline;
begin
  Result := xcb_ewmh_get_atoms_from_reply(supported, r);
end;

function xcb_ewmh_get_supported_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; supported: Pxcb_ewmh_get_atoms_reply_t; e: PPxcb_generic_error_t): byte; inline;
begin
  Result := xcb_ewmh_get_atoms_reply(ewmh, cookie, supported, e);
end;

function xcb_ewmh_get_client_list_from_reply(clients: Pxcb_ewmh_get_windows_reply_t; r: Pxcb_get_property_reply_t): byte; inline;
begin
  Result := xcb_ewmh_get_windows_from_reply(clients, r);
end;

function xcb_ewmh_get_client_list_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; clients: Pxcb_ewmh_get_windows_reply_t; e: PPxcb_generic_error_t): byte; inline;
begin
  Result := xcb_ewmh_get_windows_reply(ewmh, cookie, clients, e);
end;

function xcb_ewmh_get_client_list_stacking_from_reply(clients: Pxcb_ewmh_get_windows_reply_t; r: Pxcb_get_property_reply_t): byte; inline;
begin
  Result := xcb_ewmh_get_windows_from_reply(clients, r);
end;

function xcb_ewmh_get_client_list_stacking_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; clients: Pxcb_ewmh_get_windows_reply_t; e: PPxcb_generic_error_t): byte; inline;
begin
  Result := xcb_ewmh_get_windows_reply(ewmh, cookie, clients, e);
end;

function xcb_ewmh_get_number_of_desktops_from_reply(number_of_desktops: PCardinal; r: Pxcb_get_property_reply_t): byte; inline;
begin
  Result := xcb_ewmh_get_cardinal_from_reply(number_of_desktops, r);
end;

function xcb_ewmh_get_number_of_desktops_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; number_of_desktops: PCardinal; e: PPxcb_generic_error_t): byte; inline;
begin
  Result := xcb_ewmh_get_cardinal_reply(ewmh, cookie, number_of_desktops, e);
end;

function xcb_ewmh_request_change_number_of_desktops(ewmh: Pxcb_ewmh_connection_t; screen_nbr: integer; new_number_of_desktops: cardinal): Txcb_void_cookie_t; inline;
begin
  Result := xcb_ewmh_send_client_message(ewmh^.Connection, XCB_NONE, ewmh^.screens[screen_nbr]^.root, ewmh^._NET_NUMBER_OF_DESKTOPS, SizeOf(new_number_of_desktops), @new_number_of_desktops);
end;

function xcb_ewmh_get_current_desktop_from_reply(current_desktop: PCardinal; r: Pxcb_get_property_reply_t): byte; inline;
begin
  Result := xcb_ewmh_get_cardinal_from_reply(current_desktop, r);
end;

function xcb_ewmh_get_current_desktop_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; current_desktop: PCardinal; e: PPxcb_generic_error_t): byte; inline;
begin
  Result := xcb_ewmh_get_cardinal_reply(ewmh, cookie, current_desktop, e);
end;

function xcb_ewmh_get_desktop_names_from_reply(ewmh: Pxcb_ewmh_connection_t; names: Pxcb_ewmh_get_utf8_strings_reply_t; r: Pxcb_get_property_reply_t): byte; inline;
begin
  Result := xcb_ewmh_get_utf8_strings_from_reply(ewmh, names, r);
end;

function xcb_ewmh_get_desktop_names_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; names: Pxcb_ewmh_get_utf8_strings_reply_t; e: PPxcb_generic_error_t): byte; inline;
begin
  Result := xcb_ewmh_get_utf8_strings_reply(ewmh, cookie, names, e);
end;

function xcb_ewmh_get_active_window_from_reply(active_window: Pxcb_window_t; r: Pxcb_get_property_reply_t): byte; inline;
begin
  Result := xcb_ewmh_get_window_from_reply(active_window, r);
end;

function xcb_ewmh_get_active_window_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; active_window: Pxcb_window_t; e: PPxcb_generic_error_t): byte; inline;
begin
  Result := xcb_ewmh_get_window_reply(ewmh, cookie, active_window, e);
end;

function xcb_ewmh_get_supporting_wm_check_from_reply(window: Pxcb_window_t; r: Pxcb_get_property_reply_t): byte; inline;
begin
  Result := xcb_ewmh_get_window_from_reply(window, r);
end;

function xcb_ewmh_get_supporting_wm_check_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; window: Pxcb_window_t; e: PPxcb_generic_error_t): byte; inline;
begin
  Result := xcb_ewmh_get_window_reply(ewmh, cookie, window, e);
end;

function xcb_ewmh_get_virtual_roots_from_reply(virtual_roots: Pxcb_ewmh_get_windows_reply_t; r: Pxcb_get_property_reply_t): byte; inline;
begin
  Result := xcb_ewmh_get_windows_from_reply(virtual_roots, r);
end;

function xcb_ewmh_get_virtual_roots_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; virtual_roots: Pxcb_ewmh_get_windows_reply_t; e: PPxcb_generic_error_t): byte; inline;
begin
  Result := xcb_ewmh_get_windows_reply(ewmh, cookie, virtual_roots, e);
end;

function xcb_ewmh_get_showing_desktop_from_reply(desktop: PCardinal; r: Pxcb_get_property_reply_t): byte; inline;
begin
  Result := xcb_ewmh_get_cardinal_from_reply(desktop, r);
end;

function xcb_ewmh_get_showing_desktop_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; desktop: PCardinal; e: PPxcb_generic_error_t): byte; inline;
begin
  Result := xcb_ewmh_get_cardinal_reply(ewmh, cookie, desktop, e);
end;

function xcb_ewmh_request_change_showing_desktop(ewmh: Pxcb_ewmh_connection_t; screen_nbr: integer; enter: cardinal): Txcb_void_cookie_t; inline;
begin
  Result := xcb_ewmh_send_client_message(ewmh^.Connection, XCB_NONE, ewmh^.screens[screen_nbr]^.root, ewmh^._NET_SHOWING_DESKTOP, SizeOf(enter), @enter);
end;

function xcb_ewmh_request_frame_extents(ewmh: Pxcb_ewmh_connection_t; screen_nbr: integer; client_window: Txcb_window_t): Txcb_void_cookie_t; inline;
begin
  Result := xcb_ewmh_send_client_message(ewmh^.Connection, client_window, ewmh^.screens[screen_nbr]^.root, ewmh^._NET_REQUEST_FRAME_EXTENTS, 0, nil);
end;

function xcb_ewmh_get_wm_name_from_reply(ewmh: Pxcb_ewmh_connection_t; data: Pxcb_ewmh_get_utf8_strings_reply_t; r: Pxcb_get_property_reply_t): byte; inline;
begin
  Result := xcb_ewmh_get_utf8_strings_from_reply(ewmh, data, r);
end;

function xcb_ewmh_get_wm_name_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; data: Pxcb_ewmh_get_utf8_strings_reply_t; e: PPxcb_generic_error_t): byte; inline;
begin
  Result := xcb_ewmh_get_utf8_strings_reply(ewmh, cookie, data, e);
end;

function xcb_ewmh_get_wm_visible_name_from_reply(ewmh: Pxcb_ewmh_connection_t; data: Pxcb_ewmh_get_utf8_strings_reply_t; r: Pxcb_get_property_reply_t): byte; inline;
begin
  Result := xcb_ewmh_get_utf8_strings_from_reply(ewmh, data, r);
end;

function xcb_ewmh_get_wm_visible_name_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; data: Pxcb_ewmh_get_utf8_strings_reply_t; e: PPxcb_generic_error_t): byte; inline;
begin
  Result := xcb_ewmh_get_utf8_strings_reply(ewmh, cookie, data, e);
end;

function xcb_ewmh_get_wm_icon_name_from_reply(ewmh: Pxcb_ewmh_connection_t; data: Pxcb_ewmh_get_utf8_strings_reply_t; r: Pxcb_get_property_reply_t): byte; inline;
begin
  Result := xcb_ewmh_get_utf8_strings_from_reply(ewmh, data, r);
end;

function xcb_ewmh_get_wm_icon_name_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; data: Pxcb_ewmh_get_utf8_strings_reply_t; e: PPxcb_generic_error_t): byte; inline;
begin
  Result := xcb_ewmh_get_utf8_strings_reply(ewmh, cookie, data, e);
end;

function xcb_ewmh_get_wm_visible_icon_name_from_reply(ewmh: Pxcb_ewmh_connection_t; data: Pxcb_ewmh_get_utf8_strings_reply_t; r: Pxcb_get_property_reply_t): byte; inline;
begin
  Result := xcb_ewmh_get_utf8_strings_from_reply(ewmh, data, r);
end;

function xcb_ewmh_get_wm_visible_icon_name_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; data: Pxcb_ewmh_get_utf8_strings_reply_t; e: PPxcb_generic_error_t): byte; inline;
begin
  Result := xcb_ewmh_get_utf8_strings_reply(ewmh, cookie, data, e);
end;

function xcb_ewmh_get_wm_desktop_from_reply(desktop: PCardinal; r: Pxcb_get_property_reply_t): byte; inline;
begin
  Result := xcb_ewmh_get_cardinal_from_reply(desktop, r);
end;

function xcb_ewmh_get_wm_desktop_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; desktop: PCardinal; e: PPxcb_generic_error_t): byte; inline;
begin
  Result := xcb_ewmh_get_cardinal_reply(ewmh, cookie, desktop, e);
end;

function xcb_ewmh_set_wm_icon_checked(ewmh: Pxcb_ewmh_connection_t; mode: byte; window: Txcb_window_t; data_len: cardinal; data: PCardinal): Txcb_void_cookie_t; inline;
begin
  Result := xcb_change_property_checked(ewmh^.Connection, mode, window, ewmh^._NET_WM_ICON, XCB_ATOM_CARDINAL, 32, data_len, data);
end;

function xcb_ewmh_set_wm_icon(ewmh: Pxcb_ewmh_connection_t; mode: byte; window: Txcb_window_t; data_len: cardinal; data: PCardinal): Txcb_void_cookie_t; inline;
begin
  Result := xcb_change_property(ewmh^.Connection, mode, window, ewmh^._NET_WM_ICON, XCB_ATOM_CARDINAL, 32, data_len, data);
end;

function xcb_ewmh_get_wm_pid_from_reply(pid: PCardinal; r: Pxcb_get_property_reply_t): byte; inline;
begin
  Result := xcb_ewmh_get_cardinal_from_reply(pid, r);
end;

function xcb_ewmh_get_wm_pid_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; pid: PCardinal; e: PPxcb_generic_error_t): byte; inline;
begin
  Result := xcb_ewmh_get_cardinal_reply(ewmh, cookie, pid, e);
end;

function xcb_ewmh_get_wm_handled_icons_from_reply(handled_icons: PCardinal; r: Pxcb_get_property_reply_t): byte; inline;
begin
  Result := xcb_ewmh_get_cardinal_from_reply(handled_icons, r);
end;

function xcb_ewmh_get_wm_handled_icons_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; handled_icons: PCardinal; e: PPxcb_generic_error_t): byte; inline;
begin
  Result := xcb_ewmh_get_cardinal_reply(ewmh, cookie, handled_icons, e);
end;

function xcb_ewmh_get_wm_user_time_from_reply(xtime: PCardinal; r: Pxcb_get_property_reply_t): byte; inline;
begin
  Result := xcb_ewmh_get_cardinal_from_reply(xtime, r);
end;

function xcb_ewmh_get_wm_user_time_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; xtime: PCardinal; e: PPxcb_generic_error_t): byte; inline;
begin
  Result := xcb_ewmh_get_cardinal_reply(ewmh, cookie, xtime, e);
end;

function xcb_ewmh_get_wm_user_time_window_from_reply(xtime: PCardinal; r: Pxcb_get_property_reply_t): byte; inline;
begin
  Result := xcb_ewmh_get_cardinal_from_reply(xtime, r);
end;

function xcb_ewmh_get_wm_user_time_window_reply(ewmh: Pxcb_ewmh_connection_t; cookie: Txcb_get_property_cookie_t; xtime: PCardinal; e: PPxcb_generic_error_t): byte; inline;
begin
  Result := xcb_ewmh_get_cardinal_reply(ewmh, cookie, xtime, e);
end;

end.
