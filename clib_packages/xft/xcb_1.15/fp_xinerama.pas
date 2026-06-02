unit fp_xinerama;

interface

uses
  fp_xcb;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


const
  XCB_XINERAMA_MAJOR_VERSION = 1;
  XCB_XINERAMA_MINOR_VERSION = 1;

var
  xcb_xinerama_id: Txcb_extension_t; cvar;external libxcb_xinerama;

type
  Txcb_xinerama_screen_info_t = record
    x_org: Tint16_t;
    y_org: Tint16_t;
    width: Tuint16_t;
    height: Tuint16_t;
  end;
  Pxcb_xinerama_screen_info_t = ^Txcb_xinerama_screen_info_t;

  Txcb_xinerama_screen_info_iterator_t = record
    data: Pxcb_xinerama_screen_info_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xinerama_screen_info_iterator_t = ^Txcb_xinerama_screen_info_iterator_t;

  Txcb_xinerama_query_version_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xinerama_query_version_cookie_t = ^Txcb_xinerama_query_version_cookie_t;

const
  XCB_XINERAMA_QUERY_VERSION_ = 0;

type
  Txcb_xinerama_query_version_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    major: Tuint8_t;
    minor: Tuint8_t;
  end;
  Pxcb_xinerama_query_version_request_t = ^Txcb_xinerama_query_version_request_t;

  Txcb_xinerama_query_version_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    major: Tuint16_t;
    minor: Tuint16_t;
  end;
  Pxcb_xinerama_query_version_reply_t = ^Txcb_xinerama_query_version_reply_t;

  Txcb_xinerama_get_state_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xinerama_get_state_cookie_t = ^Txcb_xinerama_get_state_cookie_t;

const
  XCB_XINERAMA_GET_STATE_ = 1;

type
  Txcb_xinerama_get_state_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
  end;
  Pxcb_xinerama_get_state_request_t = ^Txcb_xinerama_get_state_request_t;

  Txcb_xinerama_get_state_reply_t = record
    response_type: Tuint8_t;
    state: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    window: Txcb_window_t;
  end;
  Pxcb_xinerama_get_state_reply_t = ^Txcb_xinerama_get_state_reply_t;

  Txcb_xinerama_get_screen_count_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xinerama_get_screen_count_cookie_t = ^Txcb_xinerama_get_screen_count_cookie_t;

const
  XCB_XINERAMA_GET_SCREEN_COUNT_ = 2;

type
  Txcb_xinerama_get_screen_count_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
  end;
  Pxcb_xinerama_get_screen_count_request_t = ^Txcb_xinerama_get_screen_count_request_t;

  Txcb_xinerama_get_screen_count_reply_t = record
    response_type: Tuint8_t;
    screen_count: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    window: Txcb_window_t;
  end;
  Pxcb_xinerama_get_screen_count_reply_t = ^Txcb_xinerama_get_screen_count_reply_t;

  Txcb_xinerama_get_screen_size_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xinerama_get_screen_size_cookie_t = ^Txcb_xinerama_get_screen_size_cookie_t;

const
  XCB_XINERAMA_GET_SCREEN_SIZE_ = 3;

type
  Txcb_xinerama_get_screen_size_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    screen: Tuint32_t;
  end;
  Pxcb_xinerama_get_screen_size_request_t = ^Txcb_xinerama_get_screen_size_request_t;

  Txcb_xinerama_get_screen_size_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    width: Tuint32_t;
    height: Tuint32_t;
    window: Txcb_window_t;
    screen: Tuint32_t;
  end;
  Pxcb_xinerama_get_screen_size_reply_t = ^Txcb_xinerama_get_screen_size_reply_t;

  Txcb_xinerama_is_active_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xinerama_is_active_cookie_t = ^Txcb_xinerama_is_active_cookie_t;

const
  XCB_XINERAMA_IS_ACTIVE_ = 4;

type
  Txcb_xinerama_is_active_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_xinerama_is_active_request_t = ^Txcb_xinerama_is_active_request_t;

  Txcb_xinerama_is_active_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    state: Tuint32_t;
  end;
  Pxcb_xinerama_is_active_reply_t = ^Txcb_xinerama_is_active_reply_t;

  Txcb_xinerama_query_screens_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xinerama_query_screens_cookie_t = ^Txcb_xinerama_query_screens_cookie_t;

const
  XCB_XINERAMA_QUERY_SCREENS_ = 5;

type
  Txcb_xinerama_query_screens_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_xinerama_query_screens_request_t = ^Txcb_xinerama_query_screens_request_t;

  Txcb_xinerama_query_screens_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    number: Tuint32_t;
    pad1: array[0..19] of Tuint8_t;
  end;
  Pxcb_xinerama_query_screens_reply_t = ^Txcb_xinerama_query_screens_reply_t;

procedure xcb_xinerama_screen_info_next(i: Pxcb_xinerama_screen_info_iterator_t); cdecl; external libxcb_xinerama;
function xcb_xinerama_screen_info_end(i: Txcb_xinerama_screen_info_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinerama;
function xcb_xinerama_query_version(c: Pxcb_connection_t; major: Tuint8_t; minor: Tuint8_t): Txcb_xinerama_query_version_cookie_t; cdecl; external libxcb_xinerama;
function xcb_xinerama_query_version_unchecked(c: Pxcb_connection_t; major: Tuint8_t; minor: Tuint8_t): Txcb_xinerama_query_version_cookie_t; cdecl; external libxcb_xinerama;
function xcb_xinerama_query_version_reply(c: Pxcb_connection_t; cookie: Txcb_xinerama_query_version_cookie_t; e: PPxcb_generic_error_t): Pxcb_xinerama_query_version_reply_t; cdecl; external libxcb_xinerama;
function xcb_xinerama_get_state(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_xinerama_get_state_cookie_t; cdecl; external libxcb_xinerama;
function xcb_xinerama_get_state_unchecked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_xinerama_get_state_cookie_t; cdecl; external libxcb_xinerama;
function xcb_xinerama_get_state_reply(c: Pxcb_connection_t; cookie: Txcb_xinerama_get_state_cookie_t; e: PPxcb_generic_error_t): Pxcb_xinerama_get_state_reply_t; cdecl; external libxcb_xinerama;
function xcb_xinerama_get_screen_count(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_xinerama_get_screen_count_cookie_t; cdecl; external libxcb_xinerama;
function xcb_xinerama_get_screen_count_unchecked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_xinerama_get_screen_count_cookie_t; cdecl; external libxcb_xinerama;
function xcb_xinerama_get_screen_count_reply(c: Pxcb_connection_t; cookie: Txcb_xinerama_get_screen_count_cookie_t; e: PPxcb_generic_error_t): Pxcb_xinerama_get_screen_count_reply_t; cdecl; external libxcb_xinerama;
function xcb_xinerama_get_screen_size(c: Pxcb_connection_t; window: Txcb_window_t; screen: Tuint32_t): Txcb_xinerama_get_screen_size_cookie_t; cdecl; external libxcb_xinerama;
function xcb_xinerama_get_screen_size_unchecked(c: Pxcb_connection_t; window: Txcb_window_t; screen: Tuint32_t): Txcb_xinerama_get_screen_size_cookie_t; cdecl; external libxcb_xinerama;
function xcb_xinerama_get_screen_size_reply(c: Pxcb_connection_t; cookie: Txcb_xinerama_get_screen_size_cookie_t; e: PPxcb_generic_error_t): Pxcb_xinerama_get_screen_size_reply_t; cdecl; external libxcb_xinerama;
function xcb_xinerama_is_active(c: Pxcb_connection_t): Txcb_xinerama_is_active_cookie_t; cdecl; external libxcb_xinerama;
function xcb_xinerama_is_active_unchecked(c: Pxcb_connection_t): Txcb_xinerama_is_active_cookie_t; cdecl; external libxcb_xinerama;
function xcb_xinerama_is_active_reply(c: Pxcb_connection_t; cookie: Txcb_xinerama_is_active_cookie_t; e: PPxcb_generic_error_t): Pxcb_xinerama_is_active_reply_t; cdecl; external libxcb_xinerama;
function xcb_xinerama_query_screens_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinerama;
function xcb_xinerama_query_screens(c: Pxcb_connection_t): Txcb_xinerama_query_screens_cookie_t; cdecl; external libxcb_xinerama;
function xcb_xinerama_query_screens_unchecked(c: Pxcb_connection_t): Txcb_xinerama_query_screens_cookie_t; cdecl; external libxcb_xinerama;
function xcb_xinerama_query_screens_screen_info(R: Pxcb_xinerama_query_screens_reply_t): Pxcb_xinerama_screen_info_t; cdecl; external libxcb_xinerama;
function xcb_xinerama_query_screens_screen_info_length(R: Pxcb_xinerama_query_screens_reply_t): longint; cdecl; external libxcb_xinerama;
function xcb_xinerama_query_screens_screen_info_iterator(R: Pxcb_xinerama_query_screens_reply_t): Txcb_xinerama_screen_info_iterator_t; cdecl; external libxcb_xinerama;
function xcb_xinerama_query_screens_reply(c: Pxcb_connection_t; cookie: Txcb_xinerama_query_screens_cookie_t; e: PPxcb_generic_error_t): Pxcb_xinerama_query_screens_reply_t; cdecl; external libxcb_xinerama;

// === Konventiert am: 14-10-25 15:39:17 ===


implementation



end.
