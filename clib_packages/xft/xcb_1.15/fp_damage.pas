unit fp_damage;

interface

uses
  fp_xcb, fp_xfixes;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


const
  XCB_DAMAGE_MAJOR_VERSION = 1;
  XCB_DAMAGE_MINOR_VERSION = 1;

var
  xcb_damage_id: Txcb_extension_t; cvar;external libxcb_damage;

type
  Pxcb_damage_damage_t = ^Txcb_damage_damage_t;
  Txcb_damage_damage_t = Tuint32_t;

  Txcb_damage_damage_iterator_t = record
    data: Pxcb_damage_damage_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_damage_damage_iterator_t = ^Txcb_damage_damage_iterator_t;

type
  Pxcb_damage_report_level_t = ^Txcb_damage_report_level_t;
  Txcb_damage_report_level_t = longint;

const
  XCB_DAMAGE_REPORT_LEVEL_RAW_RECTANGLES = 0;
  XCB_DAMAGE_REPORT_LEVEL_DELTA_RECTANGLES = 1;
  XCB_DAMAGE_REPORT_LEVEL_BOUNDING_BOX = 2;
  XCB_DAMAGE_REPORT_LEVEL_NON_EMPTY = 3;

const
  XCB_DAMAGE_BAD_DAMAGE = 0;

type
  Txcb_damage_bad_damage_error_t = record
    response_type: Tuint8_t;
    error_code: Tuint8_t;
    sequence: Tuint16_t;
    bad_value: Tuint32_t;
    minor_opcode: Tuint16_t;
    major_opcode: Tuint8_t;
  end;
  Pxcb_damage_bad_damage_error_t = ^Txcb_damage_bad_damage_error_t;

  Txcb_damage_query_version_cookie_t = record
    sequence: dword;
  end;
  Pxcb_damage_query_version_cookie_t = ^Txcb_damage_query_version_cookie_t;

const
  XCB_DAMAGE_QUERY_VERSION_ = 0;

type
  Txcb_damage_query_version_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    client_major_version: Tuint32_t;
    client_minor_version: Tuint32_t;
  end;
  Pxcb_damage_query_version_request_t = ^Txcb_damage_query_version_request_t;

  Txcb_damage_query_version_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    major_version: Tuint32_t;
    minor_version: Tuint32_t;
    pad1: array[0..15] of Tuint8_t;
  end;
  Pxcb_damage_query_version_reply_t = ^Txcb_damage_query_version_reply_t;

const
  XCB_DAMAGE_CREATE_ = 1;

type
  Txcb_damage_create_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    damage: Txcb_damage_damage_t;
    drawable: Txcb_drawable_t;
    level: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_damage_create_request_t = ^Txcb_damage_create_request_t;

const
  XCB_DAMAGE_DESTROY_ = 2;

type
  Txcb_damage_destroy_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    damage: Txcb_damage_damage_t;
  end;
  Pxcb_damage_destroy_request_t = ^Txcb_damage_destroy_request_t;

const
  XCB_DAMAGE_SUBTRACT_ = 3;

type
  Txcb_damage_subtract_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    damage: Txcb_damage_damage_t;
    repair: Txcb_xfixes_region_t;
    parts: Txcb_xfixes_region_t;
  end;
  Pxcb_damage_subtract_request_t = ^Txcb_damage_subtract_request_t;

const
  XCB_DAMAGE_ADD_ = 4;

type
  Txcb_damage_add_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
    region: Txcb_xfixes_region_t;
  end;
  Pxcb_damage_add_request_t = ^Txcb_damage_add_request_t;

const
  XCB_DAMAGE_NOTIFY_ = 0;

type
  Txcb_damage_notify_event_t = record
    response_type: Tuint8_t;
    level: Tuint8_t;
    sequence: Tuint16_t;
    drawable: Txcb_drawable_t;
    damage: Txcb_damage_damage_t;
    timestamp: Txcb_timestamp_t;
    area: Txcb_rectangle_t;
    geometry: Txcb_rectangle_t;
  end;
  Pxcb_damage_notify_event_t = ^Txcb_damage_notify_event_t;

procedure xcb_damage_damage_next(i: Pxcb_damage_damage_iterator_t); cdecl; external libxcb_damage;
function xcb_damage_damage_end(i: Txcb_damage_damage_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_damage;
function xcb_damage_query_version(c: Pxcb_connection_t; client_major_version: Tuint32_t; client_minor_version: Tuint32_t): Txcb_damage_query_version_cookie_t; cdecl; external libxcb_damage;
function xcb_damage_query_version_unchecked(c: Pxcb_connection_t; client_major_version: Tuint32_t; client_minor_version: Tuint32_t): Txcb_damage_query_version_cookie_t; cdecl; external libxcb_damage;
function xcb_damage_query_version_reply(c: Pxcb_connection_t; cookie: Txcb_damage_query_version_cookie_t; e: PPxcb_generic_error_t): Pxcb_damage_query_version_reply_t; cdecl; external libxcb_damage;
function xcb_damage_create_checked(c: Pxcb_connection_t; damage: Txcb_damage_damage_t; drawable: Txcb_drawable_t; level: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_damage;
function xcb_damage_create(c: Pxcb_connection_t; damage: Txcb_damage_damage_t; drawable: Txcb_drawable_t; level: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_damage;
function xcb_damage_destroy_checked(c: Pxcb_connection_t; damage: Txcb_damage_damage_t): Txcb_void_cookie_t; cdecl; external libxcb_damage;
function xcb_damage_destroy(c: Pxcb_connection_t; damage: Txcb_damage_damage_t): Txcb_void_cookie_t; cdecl; external libxcb_damage;
function xcb_damage_subtract_checked(c: Pxcb_connection_t; damage: Txcb_damage_damage_t; repair: Txcb_xfixes_region_t; parts: Txcb_xfixes_region_t): Txcb_void_cookie_t; cdecl; external libxcb_damage;
function xcb_damage_subtract(c: Pxcb_connection_t; damage: Txcb_damage_damage_t; repair: Txcb_xfixes_region_t; parts: Txcb_xfixes_region_t): Txcb_void_cookie_t; cdecl; external libxcb_damage;
function xcb_damage_add_checked(c: Pxcb_connection_t; drawable: Txcb_drawable_t; region: Txcb_xfixes_region_t): Txcb_void_cookie_t; cdecl; external libxcb_damage;
function xcb_damage_add(c: Pxcb_connection_t; drawable: Txcb_drawable_t; region: Txcb_xfixes_region_t): Txcb_void_cookie_t; cdecl; external libxcb_damage;

// === Konventiert am: 14-10-25 15:38:54 ===


implementation



end.
