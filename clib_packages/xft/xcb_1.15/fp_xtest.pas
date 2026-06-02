unit fp_xtest;

interface

uses
  fp_xcb;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


const
  XCB_TEST_MAJOR_VERSION = 2;
  XCB_TEST_MINOR_VERSION = 2;

var
  xcb_test_id: Txcb_extension_t; cvar;external libxcb_xtest;

type
  Txcb_test_get_version_cookie_t = record
    sequence: dword;
  end;
  Pxcb_test_get_version_cookie_t = ^Txcb_test_get_version_cookie_t;

const
  XCB_TEST_GET_VERSION_ = 0;

type
  Txcb_test_get_version_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    major_version: Tuint8_t;
    pad0: Tuint8_t;
    minor_version: Tuint16_t;
  end;
  Pxcb_test_get_version_request_t = ^Txcb_test_get_version_request_t;

  Txcb_test_get_version_reply_t = record
    response_type: Tuint8_t;
    major_version: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    minor_version: Tuint16_t;
  end;
  Pxcb_test_get_version_reply_t = ^Txcb_test_get_version_reply_t;

type
  Pxcb_test_cursor_t = ^Txcb_test_cursor_t;
  Txcb_test_cursor_t = longint;

const
  XCB_TEST_CURSOR_NONE = 0;
  XCB_TEST_CURSOR_CURRENT = 1;

type
  Txcb_test_compare_cursor_cookie_t = record
    sequence: dword;
  end;
  Pxcb_test_compare_cursor_cookie_t = ^Txcb_test_compare_cursor_cookie_t;

const
  XCB_TEST_COMPARE_CURSOR_ = 1;

type
  Txcb_test_compare_cursor_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    cursor: Txcb_cursor_t;
  end;
  Pxcb_test_compare_cursor_request_t = ^Txcb_test_compare_cursor_request_t;

  Txcb_test_compare_cursor_reply_t = record
    response_type: Tuint8_t;
    same: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
  end;
  Pxcb_test_compare_cursor_reply_t = ^Txcb_test_compare_cursor_reply_t;

const
  XCB_TEST_FAKE_INPUT_ = 2;

type
  Txcb_test_fake_input_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    _type: Tuint8_t;
    detail: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
    time: Tuint32_t;
    root: Txcb_window_t;
    pad1: array[0..7] of Tuint8_t;
    rootX: Tint16_t;
    rootY: Tint16_t;
    pad2: array[0..6] of Tuint8_t;
    deviceid: Tuint8_t;
  end;
  Pxcb_test_fake_input_request_t = ^Txcb_test_fake_input_request_t;

const
  XCB_TEST_GRAB_CONTROL_ = 3;

type
  Txcb_test_grab_control_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    impervious: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_test_grab_control_request_t = ^Txcb_test_grab_control_request_t;

function xcb_test_get_version(c: Pxcb_connection_t; major_version: Tuint8_t; minor_version: Tuint16_t): Txcb_test_get_version_cookie_t; cdecl; external libxcb_xtest;
function xcb_test_get_version_unchecked(c: Pxcb_connection_t; major_version: Tuint8_t; minor_version: Tuint16_t): Txcb_test_get_version_cookie_t; cdecl; external libxcb_xtest;
function xcb_test_get_version_reply(c: Pxcb_connection_t; cookie: Txcb_test_get_version_cookie_t; e: PPxcb_generic_error_t): Pxcb_test_get_version_reply_t; cdecl; external libxcb_xtest;
function xcb_test_compare_cursor(c: Pxcb_connection_t; window: Txcb_window_t; cursor: Txcb_cursor_t): Txcb_test_compare_cursor_cookie_t; cdecl; external libxcb_xtest;
function xcb_test_compare_cursor_unchecked(c: Pxcb_connection_t; window: Txcb_window_t; cursor: Txcb_cursor_t): Txcb_test_compare_cursor_cookie_t; cdecl; external libxcb_xtest;
function xcb_test_compare_cursor_reply(c: Pxcb_connection_t; cookie: Txcb_test_compare_cursor_cookie_t; e: PPxcb_generic_error_t): Pxcb_test_compare_cursor_reply_t; cdecl; external libxcb_xtest;
function xcb_test_fake_input_checked(c: Pxcb_connection_t; _type: Tuint8_t; detail: Tuint8_t; time: Tuint32_t; root: Txcb_window_t;
  rootX: Tint16_t; rootY: Tint16_t; deviceid: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_xtest;
function xcb_test_fake_input(c: Pxcb_connection_t; _type: Tuint8_t; detail: Tuint8_t; time: Tuint32_t; root: Txcb_window_t;
  rootX: Tint16_t; rootY: Tint16_t; deviceid: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_xtest;
function xcb_test_grab_control_checked(c: Pxcb_connection_t; impervious: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_xtest;
function xcb_test_grab_control(c: Pxcb_connection_t; impervious: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_xtest;

// === Konventiert am: 14-10-25 15:39:20 ===


implementation



end.
