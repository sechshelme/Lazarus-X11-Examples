{$IFDEF read_interface}


const
  X_PROTOCOL = 11;
  X_PROTOCOL_REVISION = 0;
  X_TCP_PORT = 6000;
  XCB_CONN_ERROR = 1;
  XCB_CONN_CLOSED_EXT_NOTSUPPORTED = 2;
  XCB_CONN_CLOSED_MEM_INSUFFICIENT = 3;
  XCB_CONN_CLOSED_REQ_LEN_EXCEED = 4;
  XCB_CONN_CLOSED_PARSE_ERR = 5;
  XCB_CONN_CLOSED_INVALID_SCREEN = 6;
  XCB_CONN_CLOSED_FDPASSING_FAILED = 7;

type
  Pxcb_connection_t = type Pointer;

type
  Txcb_generic_iterator_t = record
    data: pointer;
    rem: longint;
    index: longint;
  end;
  Pxcb_generic_iterator_t = ^Txcb_generic_iterator_t;

  Txcb_generic_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
  end;
  Pxcb_generic_reply_t = ^Txcb_generic_reply_t;

  Txcb_generic_event_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    pad: array[0..6] of Tuint32_t;
    full_sequence: Tuint32_t;
  end;
  Pxcb_generic_event_t = ^Txcb_generic_event_t;

  Txcb_raw_generic_event_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    pad: array[0..6] of Tuint32_t;
  end;
  Pxcb_raw_generic_event_t = ^Txcb_raw_generic_event_t;

  Txcb_ge_event_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    event_type: Tuint16_t;
    pad1: Tuint16_t;
    pad: array[0..4] of Tuint32_t;
    full_sequence: Tuint32_t;
  end;
  Pxcb_ge_event_t = ^Txcb_ge_event_t;

  Txcb_generic_error_t = record
    response_type: Tuint8_t;
    error_code: Tuint8_t;
    sequence: Tuint16_t;
    resource_id: Tuint32_t;
    minor_code: Tuint16_t;
    major_code: Tuint8_t;
    pad0: Tuint8_t;
    pad: array[0..4] of Tuint32_t;
    full_sequence: Tuint32_t;
  end;
  Pxcb_generic_error_t = ^Txcb_generic_error_t;
  PPxcb_generic_error_t = ^Pxcb_generic_error_t;

  Txcb_void_cookie_t = record
    sequence: dword;
  end;
  Pxcb_void_cookie_t = ^Txcb_void_cookie_t;

const
  XCB_NONE = 0;
  XCB_COPY_FROM_PARENT = 0;
  XCB_CURRENT_TIME = 0;
  XCB_NO_SYMBOL = 0;

type
  Txcb_auth_info_t = record
    namelen: longint;
    name: pchar;
    datalen: longint;
    data: pchar;
  end;
  Pxcb_auth_info_t = ^Txcb_auth_info_t;

function xcb_flush(c: Pxcb_connection_t): longint; cdecl; external libxcb;
function xcb_get_maximum_request_length(c: Pxcb_connection_t): Tuint32_t; cdecl; external libxcb;
procedure xcb_prefetch_maximum_request_length(c: Pxcb_connection_t); cdecl; external libxcb;
function xcb_wait_for_event(c: Pxcb_connection_t): Pxcb_generic_event_t; cdecl; external libxcb;
function xcb_poll_for_event(c: Pxcb_connection_t): Pxcb_generic_event_t; cdecl; external libxcb;
function xcb_poll_for_queued_event(c: Pxcb_connection_t): Pxcb_generic_event_t; cdecl; external libxcb;

type
  Pxcb_special_event_t = type Pointer;

function xcb_poll_for_special_event(c: Pxcb_connection_t; se: Pxcb_special_event_t): Pxcb_generic_event_t; cdecl; external libxcb;
function xcb_wait_for_special_event(c: Pxcb_connection_t; se: Pxcb_special_event_t): Pxcb_generic_event_t; cdecl; external libxcb;

type
  Txcb_extension_t = record
    name: pchar;
    global_id: longint;
  end;
  Pxcb_extension_t = ^Txcb_extension_t;

function xcb_register_for_special_xge(c: Pxcb_connection_t; ext: Pxcb_extension_t; eid: Tuint32_t; stamp: Puint32_t): Pxcb_special_event_t; cdecl; external libxcb;
procedure xcb_unregister_for_special_event(c: Pxcb_connection_t; se: Pxcb_special_event_t); cdecl; external libxcb;
function xcb_request_check(c: Pxcb_connection_t; cookie: Txcb_void_cookie_t): Pxcb_generic_error_t; cdecl; external libxcb;
procedure xcb_discard_reply(c: Pxcb_connection_t; sequence: dword); cdecl; external libxcb;
procedure xcb_discard_reply64(c: Pxcb_connection_t; sequence: Tuint64_t); cdecl; external libxcb;
function xcb_get_extension_data(c: Pxcb_connection_t; ext: Pxcb_extension_t): Pxcb_query_extension_reply_t_; cdecl; external libxcb;
procedure xcb_prefetch_extension_data(c: Pxcb_connection_t; ext: Pxcb_extension_t); cdecl; external libxcb;
function xcb_get_setup(c: Pxcb_connection_t): Pxcb_setup_t_; cdecl; external libxcb;
function xcb_get_file_descriptor(c: Pxcb_connection_t): longint; cdecl; external libxcb;
function xcb_connection_has_error(c: Pxcb_connection_t): longint; cdecl; external libxcb;
function xcb_connect_to_fd(fd: longint; auth_info: Pxcb_auth_info_t): Pxcb_connection_t; cdecl; external libxcb;
procedure xcb_disconnect(c: Pxcb_connection_t); cdecl; external libxcb;
function xcb_parse_display(name: pchar; host: PPchar; display: Plongint; screen: Plongint): longint; cdecl; external libxcb;
function xcb_connect(displayname: pchar; screenp: Plongint): Pxcb_connection_t; cdecl; external libxcb;
function xcb_connect_to_display_with_auth_info(display: pchar; auth: Pxcb_auth_info_t; screen: Plongint): Pxcb_connection_t; cdecl; external libxcb;
function xcb_generate_id(c: Pxcb_connection_t): Tuint32_t; cdecl; external libxcb;
function xcb_total_read(c: Pxcb_connection_t): Tuint64_t; cdecl; external libxcb;
function xcb_total_written(c: Pxcb_connection_t): Tuint64_t; cdecl; external libxcb;

// === Konventiert am: 8-10-25 15:28:00 ===


{$ENDIF read_interface}


{$IFDEF read_implementation}


{$ENDIF read_implementation}
