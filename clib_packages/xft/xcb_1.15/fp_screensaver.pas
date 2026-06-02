unit fp_screensaver;

interface

uses
  fp_xcb;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}



const
  XCB_SCREENSAVER_MAJOR_VERSION = 1;
  XCB_SCREENSAVER_MINOR_VERSION = 1;

var
  xcb_screensaver_id: Txcb_extension_t; cvar;external libxcb_screensaver;

type
  Pxcb_screensaver_kind_t = ^Txcb_screensaver_kind_t;
  Txcb_screensaver_kind_t = longint;

const
  XCB_SCREENSAVER_KIND_BLANKED = 0;
  XCB_SCREENSAVER_KIND_INTERNAL = 1;
  XCB_SCREENSAVER_KIND_EXTERNAL = 2;

type
  Pxcb_screensaver_event_t = ^Txcb_screensaver_event_t;
  Txcb_screensaver_event_t = longint;

const
  XCB_SCREENSAVER_EVENT_NOTIFY_MASK = 1;
  XCB_SCREENSAVER_EVENT_CYCLE_MASK = 2;

type
  Pxcb_screensaver_state_t = ^Txcb_screensaver_state_t;
  Txcb_screensaver_state_t = longint;

const
  XCB_SCREENSAVER_STATE_OFF = 0;
  XCB_SCREENSAVER_STATE_ON = 1;
  XCB_SCREENSAVER_STATE_CYCLE = 2;
  XCB_SCREENSAVER_STATE_DISABLED = 3;

type
  Txcb_screensaver_query_version_cookie_t = record
    sequence: dword;
  end;
  Pxcb_screensaver_query_version_cookie_t = ^Txcb_screensaver_query_version_cookie_t;

const
  XCB_SCREENSAVER_QUERY_VERSION_ = 0;

type
  Txcb_screensaver_query_version_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    client_major_version: Tuint8_t;
    client_minor_version: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_screensaver_query_version_request_t = ^Txcb_screensaver_query_version_request_t;

  Txcb_screensaver_query_version_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    server_major_version: Tuint16_t;
    server_minor_version: Tuint16_t;
    pad1: array[0..19] of Tuint8_t;
  end;
  Pxcb_screensaver_query_version_reply_t = ^Txcb_screensaver_query_version_reply_t;

  Txcb_screensaver_query_info_cookie_t = record
    sequence: dword;
  end;
  Pxcb_screensaver_query_info_cookie_t = ^Txcb_screensaver_query_info_cookie_t;

const
  XCB_SCREENSAVER_QUERY_INFO_ = 1;

type
  Txcb_screensaver_query_info_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
  end;
  Pxcb_screensaver_query_info_request_t = ^Txcb_screensaver_query_info_request_t;

  Txcb_screensaver_query_info_reply_t = record
    response_type: Tuint8_t;
    state: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    saver_window: Txcb_window_t;
    ms_until_server: Tuint32_t;
    ms_since_user_input: Tuint32_t;
    event_mask: Tuint32_t;
    kind: Tuint8_t;
    pad0: array[0..6] of Tuint8_t;
  end;
  Pxcb_screensaver_query_info_reply_t = ^Txcb_screensaver_query_info_reply_t;

const
  XCB_SCREENSAVER_SELECT_INPUT_ = 2;

type
  Txcb_screensaver_select_input_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
    event_mask: Tuint32_t;
  end;
  Pxcb_screensaver_select_input_request_t = ^Txcb_screensaver_select_input_request_t;

  Txcb_screensaver_set_attributes_value_list_t = record
    background_pixmap: Txcb_pixmap_t;
    background_pixel: Tuint32_t;
    border_pixmap: Txcb_pixmap_t;
    border_pixel: Tuint32_t;
    bit_gravity: Tuint32_t;
    win_gravity: Tuint32_t;
    backing_store: Tuint32_t;
    backing_planes: Tuint32_t;
    backing_pixel: Tuint32_t;
    override_redirect: Txcb_bool32_t;
    save_under: Txcb_bool32_t;
    event_mask: Tuint32_t;
    do_not_propogate_mask: Tuint32_t;
    colormap: Txcb_colormap_t;
    cursor: Txcb_cursor_t;
  end;
  Pxcb_screensaver_set_attributes_value_list_t = ^Txcb_screensaver_set_attributes_value_list_t;

const
  XCB_SCREENSAVER_SET_ATTRIBUTES_ = 3;

type
  Txcb_screensaver_set_attributes_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
    x: Tint16_t;
    y: Tint16_t;
    width: Tuint16_t;
    height: Tuint16_t;
    border_width: Tuint16_t;
    _class: Tuint8_t;
    depth: Tuint8_t;
    visual: Txcb_visualid_t;
    value_mask: Tuint32_t;
  end;
  Pxcb_screensaver_set_attributes_request_t = ^Txcb_screensaver_set_attributes_request_t;

const
  XCB_SCREENSAVER_UNSET_ATTRIBUTES_ = 4;

type
  Txcb_screensaver_unset_attributes_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
  end;
  Pxcb_screensaver_unset_attributes_request_t = ^Txcb_screensaver_unset_attributes_request_t;

const
  XCB_SCREENSAVER_SUSPEND_ = 5;

type
  Txcb_screensaver_suspend_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    suspend: Tuint32_t;
  end;
  Pxcb_screensaver_suspend_request_t = ^Txcb_screensaver_suspend_request_t;

const
  XCB_SCREENSAVER_NOTIFY = 0;

type
  Txcb_screensaver_notify_event_t = record
    response_type: Tuint8_t;
    state: Tuint8_t;
    sequence: Tuint16_t;
    time: Txcb_timestamp_t;
    root: Txcb_window_t;
    window: Txcb_window_t;
    kind: Tuint8_t;
    forced: Tuint8_t;
    pad0: array[0..13] of Tuint8_t;
  end;
  Pxcb_screensaver_notify_event_t = ^Txcb_screensaver_notify_event_t;

function xcb_screensaver_query_version(c: Pxcb_connection_t; client_major_version: Tuint8_t; client_minor_version: Tuint8_t): Txcb_screensaver_query_version_cookie_t; cdecl; external libxcb_screensaver;
function xcb_screensaver_query_version_unchecked(c: Pxcb_connection_t; client_major_version: Tuint8_t; client_minor_version: Tuint8_t): Txcb_screensaver_query_version_cookie_t; cdecl; external libxcb_screensaver;
function xcb_screensaver_query_version_reply(c: Pxcb_connection_t; cookie: Txcb_screensaver_query_version_cookie_t; e: PPxcb_generic_error_t): Pxcb_screensaver_query_version_reply_t; cdecl; external libxcb_screensaver;
function xcb_screensaver_query_info(c: Pxcb_connection_t; drawable: Txcb_drawable_t): Txcb_screensaver_query_info_cookie_t; cdecl; external libxcb_screensaver;
function xcb_screensaver_query_info_unchecked(c: Pxcb_connection_t; drawable: Txcb_drawable_t): Txcb_screensaver_query_info_cookie_t; cdecl; external libxcb_screensaver;
function xcb_screensaver_query_info_reply(c: Pxcb_connection_t; cookie: Txcb_screensaver_query_info_cookie_t; e: PPxcb_generic_error_t): Pxcb_screensaver_query_info_reply_t; cdecl; external libxcb_screensaver;
function xcb_screensaver_select_input_checked(c: Pxcb_connection_t; drawable: Txcb_drawable_t; event_mask: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_screensaver;
function xcb_screensaver_select_input(c: Pxcb_connection_t; drawable: Txcb_drawable_t; event_mask: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_screensaver;
function xcb_screensaver_set_attributes_value_list_serialize(_buffer: Ppointer; value_mask: Tuint32_t; _aux: Pxcb_screensaver_set_attributes_value_list_t): longint; cdecl; external libxcb_screensaver;
function xcb_screensaver_set_attributes_value_list_unpack(_buffer: pointer; value_mask: Tuint32_t; _aux: Pxcb_screensaver_set_attributes_value_list_t): longint; cdecl; external libxcb_screensaver;
function xcb_screensaver_set_attributes_value_list_sizeof(_buffer: pointer; value_mask: Tuint32_t): longint; cdecl; external libxcb_screensaver;
function xcb_screensaver_set_attributes_sizeof(_buffer: pointer): longint; cdecl; external libxcb_screensaver;
function xcb_screensaver_set_attributes_checked(c: Pxcb_connection_t; drawable: Txcb_drawable_t; x: Tint16_t; y: Tint16_t; width: Tuint16_t;
  height: Tuint16_t; border_width: Tuint16_t; _class: Tuint8_t; depth: Tuint8_t; visual: Txcb_visualid_t;
  value_mask: Tuint32_t; value_list: pointer): Txcb_void_cookie_t; cdecl; external libxcb_screensaver;
function xcb_screensaver_set_attributes(c: Pxcb_connection_t; drawable: Txcb_drawable_t; x: Tint16_t; y: Tint16_t; width: Tuint16_t;
  height: Tuint16_t; border_width: Tuint16_t; _class: Tuint8_t; depth: Tuint8_t; visual: Txcb_visualid_t;
  value_mask: Tuint32_t; value_list: pointer): Txcb_void_cookie_t; cdecl; external libxcb_screensaver;
function xcb_screensaver_set_attributes_aux_checked(c: Pxcb_connection_t; drawable: Txcb_drawable_t; x: Tint16_t; y: Tint16_t; width: Tuint16_t;
  height: Tuint16_t; border_width: Tuint16_t; _class: Tuint8_t; depth: Tuint8_t; visual: Txcb_visualid_t;
  value_mask: Tuint32_t; value_list: Pxcb_screensaver_set_attributes_value_list_t): Txcb_void_cookie_t; cdecl; external libxcb_screensaver;
function xcb_screensaver_set_attributes_aux(c: Pxcb_connection_t; drawable: Txcb_drawable_t; x: Tint16_t; y: Tint16_t; width: Tuint16_t;
  height: Tuint16_t; border_width: Tuint16_t; _class: Tuint8_t; depth: Tuint8_t; visual: Txcb_visualid_t;
  value_mask: Tuint32_t; value_list: Pxcb_screensaver_set_attributes_value_list_t): Txcb_void_cookie_t; cdecl; external libxcb_screensaver;
function xcb_screensaver_set_attributes_value_list(R: Pxcb_screensaver_set_attributes_request_t): pointer; cdecl; external libxcb_screensaver;
function xcb_screensaver_unset_attributes_checked(c: Pxcb_connection_t; drawable: Txcb_drawable_t): Txcb_void_cookie_t; cdecl; external libxcb_screensaver;
function xcb_screensaver_unset_attributes(c: Pxcb_connection_t; drawable: Txcb_drawable_t): Txcb_void_cookie_t; cdecl; external libxcb_screensaver;
function xcb_screensaver_suspend_checked(c: Pxcb_connection_t; suspend: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_screensaver;
function xcb_screensaver_suspend(c: Pxcb_connection_t; suspend: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_screensaver;

// === Konventiert am: 14-10-25 15:39:04 ===


implementation



end.
