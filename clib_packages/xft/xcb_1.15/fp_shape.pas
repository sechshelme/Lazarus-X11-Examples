unit fp_shape;

interface

uses
  fp_xcb;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}



const
  XCB_SHAPE_MAJOR_VERSION = 1;
  XCB_SHAPE_MINOR_VERSION = 1;

var
  xcb_shape_id: Txcb_extension_t; cvar;external libxcb_shape;

type
  Pxcb_shape_op_t = ^Txcb_shape_op_t;
  Txcb_shape_op_t = Tuint8_t;

  Txcb_shape_op_iterator_t = record
    data: Pxcb_shape_op_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_shape_op_iterator_t = ^Txcb_shape_op_iterator_t;

  Pxcb_shape_kind_t = ^Txcb_shape_kind_t;
  Txcb_shape_kind_t = Tuint8_t;

  Txcb_shape_kind_iterator_t = record
    data: Pxcb_shape_kind_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_shape_kind_iterator_t = ^Txcb_shape_kind_iterator_t;

type
  Pxcb_shape_so_t = ^Txcb_shape_so_t;
  Txcb_shape_so_t = longint;

const
  XCB_SHAPE_SO_SET = 0;
  XCB_SHAPE_SO_UNION = 1;
  XCB_SHAPE_SO_INTERSECT = 2;
  XCB_SHAPE_SO_SUBTRACT = 3;
  XCB_SHAPE_SO_INVERT = 4;

type
  Pxcb_shape_sk_t = ^Txcb_shape_sk_t;
  Txcb_shape_sk_t = longint;

const
  XCB_SHAPE_SK_BOUNDING = 0;
  XCB_SHAPE_SK_CLIP = 1;
  XCB_SHAPE_SK_INPUT = 2;

const
  XCB_SHAPE_NOTIFY = 0;

type
  Txcb_shape_notify_event_t = record
    response_type: Tuint8_t;
    shape_kind: Txcb_shape_kind_t;
    sequence: Tuint16_t;
    affected_window: Txcb_window_t;
    extents_x: Tint16_t;
    extents_y: Tint16_t;
    extents_width: Tuint16_t;
    extents_height: Tuint16_t;
    server_time: Txcb_timestamp_t;
    shaped: Tuint8_t;
    pad0: array[0..10] of Tuint8_t;
  end;
  Pxcb_shape_notify_event_t = ^Txcb_shape_notify_event_t;

  Txcb_shape_query_version_cookie_t = record
    sequence: dword;
  end;
  Pxcb_shape_query_version_cookie_t = ^Txcb_shape_query_version_cookie_t;

const
  XCB_SHAPE_QUERY_VERSION_ = 0;

type
  Txcb_shape_query_version_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_shape_query_version_request_t = ^Txcb_shape_query_version_request_t;

  Txcb_shape_query_version_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    major_version: Tuint16_t;
    minor_version: Tuint16_t;
  end;
  Pxcb_shape_query_version_reply_t = ^Txcb_shape_query_version_reply_t;

const
  XCB_SHAPE_RECTANGLES_ = 1;

type
  Txcb_shape_rectangles_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    operation: Txcb_shape_op_t;
    destination_kind: Txcb_shape_kind_t;
    ordering: Tuint8_t;
    pad0: Tuint8_t;
    destination_window: Txcb_window_t;
    x_offset: Tint16_t;
    y_offset: Tint16_t;
  end;
  Pxcb_shape_rectangles_request_t = ^Txcb_shape_rectangles_request_t;

const
  XCB_SHAPE_MASK_ = 2;

type
  Txcb_shape_mask_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    operation: Txcb_shape_op_t;
    destination_kind: Txcb_shape_kind_t;
    pad0: array[0..1] of Tuint8_t;
    destination_window: Txcb_window_t;
    x_offset: Tint16_t;
    y_offset: Tint16_t;
    source_bitmap: Txcb_pixmap_t;
  end;
  Pxcb_shape_mask_request_t = ^Txcb_shape_mask_request_t;

const
  XCB_SHAPE_COMBINE_ = 3;

type
  Txcb_shape_combine_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    operation: Txcb_shape_op_t;
    destination_kind: Txcb_shape_kind_t;
    source_kind: Txcb_shape_kind_t;
    pad0: Tuint8_t;
    destination_window: Txcb_window_t;
    x_offset: Tint16_t;
    y_offset: Tint16_t;
    source_window: Txcb_window_t;
  end;
  Pxcb_shape_combine_request_t = ^Txcb_shape_combine_request_t;

const
  XCB_SHAPE_OFFSET_ = 4;

type
  Txcb_shape_offset_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    destination_kind: Txcb_shape_kind_t;
    pad0: array[0..2] of Tuint8_t;
    destination_window: Txcb_window_t;
    x_offset: Tint16_t;
    y_offset: Tint16_t;
  end;
  Pxcb_shape_offset_request_t = ^Txcb_shape_offset_request_t;

  Txcb_shape_query_extents_cookie_t = record
    sequence: dword;
  end;
  Pxcb_shape_query_extents_cookie_t = ^Txcb_shape_query_extents_cookie_t;

const
  XCB_SHAPE_QUERY_EXTENTS_ = 5;

type
  Txcb_shape_query_extents_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    destination_window: Txcb_window_t;
  end;
  Pxcb_shape_query_extents_request_t = ^Txcb_shape_query_extents_request_t;

  Txcb_shape_query_extents_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    bounding_shaped: Tuint8_t;
    clip_shaped: Tuint8_t;
    pad1: array[0..1] of Tuint8_t;
    bounding_shape_extents_x: Tint16_t;
    bounding_shape_extents_y: Tint16_t;
    bounding_shape_extents_width: Tuint16_t;
    bounding_shape_extents_height: Tuint16_t;
    clip_shape_extents_x: Tint16_t;
    clip_shape_extents_y: Tint16_t;
    clip_shape_extents_width: Tuint16_t;
    clip_shape_extents_height: Tuint16_t;
  end;
  Pxcb_shape_query_extents_reply_t = ^Txcb_shape_query_extents_reply_t;

const
  XCB_SHAPE_SELECT_INPUT_ = 6;

type
  Txcb_shape_select_input_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    destination_window: Txcb_window_t;
    enable: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_shape_select_input_request_t = ^Txcb_shape_select_input_request_t;

  Txcb_shape_input_selected_cookie_t = record
    sequence: dword;
  end;
  Pxcb_shape_input_selected_cookie_t = ^Txcb_shape_input_selected_cookie_t;

const
  XCB_SHAPE_INPUT_SELECTED_ = 7;

type
  Txcb_shape_input_selected_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    destination_window: Txcb_window_t;
  end;
  Pxcb_shape_input_selected_request_t = ^Txcb_shape_input_selected_request_t;

  Txcb_shape_input_selected_reply_t = record
    response_type: Tuint8_t;
    enabled: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
  end;
  Pxcb_shape_input_selected_reply_t = ^Txcb_shape_input_selected_reply_t;

  Txcb_shape_get_rectangles_cookie_t = record
    sequence: dword;
  end;
  Pxcb_shape_get_rectangles_cookie_t = ^Txcb_shape_get_rectangles_cookie_t;

const
  XCB_SHAPE_GET_RECTANGLES_ = 8;

type
  Txcb_shape_get_rectangles_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    source_kind: Txcb_shape_kind_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_shape_get_rectangles_request_t = ^Txcb_shape_get_rectangles_request_t;

  Txcb_shape_get_rectangles_reply_t = record
    response_type: Tuint8_t;
    ordering: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    rectangles_len: Tuint32_t;
    pad0: array[0..19] of Tuint8_t;
  end;
  Pxcb_shape_get_rectangles_reply_t = ^Txcb_shape_get_rectangles_reply_t;

procedure xcb_shape_op_next(i: Pxcb_shape_op_iterator_t); cdecl; external libxcb_shape;
function xcb_shape_op_end(i: Txcb_shape_op_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_shape;
procedure xcb_shape_kind_next(i: Pxcb_shape_kind_iterator_t); cdecl; external libxcb_shape;
function xcb_shape_kind_end(i: Txcb_shape_kind_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_shape;
function xcb_shape_query_version(c: Pxcb_connection_t): Txcb_shape_query_version_cookie_t; cdecl; external libxcb_shape;
function xcb_shape_query_version_unchecked(c: Pxcb_connection_t): Txcb_shape_query_version_cookie_t; cdecl; external libxcb_shape;
function xcb_shape_query_version_reply(c: Pxcb_connection_t; cookie: Txcb_shape_query_version_cookie_t; e: PPxcb_generic_error_t): Pxcb_shape_query_version_reply_t; cdecl; external libxcb_shape;
function xcb_shape_rectangles_sizeof(_buffer: pointer; rectangles_len: Tuint32_t): longint; cdecl; external libxcb_shape;
function xcb_shape_rectangles_checked(c: Pxcb_connection_t; operation: Txcb_shape_op_t; destination_kind: Txcb_shape_kind_t; ordering: Tuint8_t; destination_window: Txcb_window_t;
  x_offset: Tint16_t; y_offset: Tint16_t; rectangles_len: Tuint32_t; rectangles: Pxcb_rectangle_t): Txcb_void_cookie_t; cdecl; external libxcb_shape;
function xcb_shape_rectangles(c: Pxcb_connection_t; operation: Txcb_shape_op_t; destination_kind: Txcb_shape_kind_t; ordering: Tuint8_t; destination_window: Txcb_window_t;
  x_offset: Tint16_t; y_offset: Tint16_t; rectangles_len: Tuint32_t; rectangles: Pxcb_rectangle_t): Txcb_void_cookie_t; cdecl; external libxcb_shape;
function xcb_shape_rectangles_rectangles(R: Pxcb_shape_rectangles_request_t): Pxcb_rectangle_t; cdecl; external libxcb_shape;
function xcb_shape_rectangles_rectangles_length(R: Pxcb_shape_rectangles_request_t): longint; cdecl; external libxcb_shape;
function xcb_shape_rectangles_rectangles_iterator(R: Pxcb_shape_rectangles_request_t): Txcb_rectangle_iterator_t; cdecl; external libxcb_shape;
function xcb_shape_mask_checked(c: Pxcb_connection_t; operation: Txcb_shape_op_t; destination_kind: Txcb_shape_kind_t; destination_window: Txcb_window_t; x_offset: Tint16_t;
  y_offset: Tint16_t; source_bitmap: Txcb_pixmap_t): Txcb_void_cookie_t; cdecl; external libxcb_shape;
function xcb_shape_mask(c: Pxcb_connection_t; operation: Txcb_shape_op_t; destination_kind: Txcb_shape_kind_t; destination_window: Txcb_window_t; x_offset: Tint16_t;
  y_offset: Tint16_t; source_bitmap: Txcb_pixmap_t): Txcb_void_cookie_t; cdecl; external libxcb_shape;
function xcb_shape_combine_checked(c: Pxcb_connection_t; operation: Txcb_shape_op_t; destination_kind: Txcb_shape_kind_t; source_kind: Txcb_shape_kind_t; destination_window: Txcb_window_t;
  x_offset: Tint16_t; y_offset: Tint16_t; source_window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_shape;
function xcb_shape_combine(c: Pxcb_connection_t; operation: Txcb_shape_op_t; destination_kind: Txcb_shape_kind_t; source_kind: Txcb_shape_kind_t; destination_window: Txcb_window_t;
  x_offset: Tint16_t; y_offset: Tint16_t; source_window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_shape;
function xcb_shape_offset_checked(c: Pxcb_connection_t; destination_kind: Txcb_shape_kind_t; destination_window: Txcb_window_t; x_offset: Tint16_t; y_offset: Tint16_t): Txcb_void_cookie_t; cdecl; external libxcb_shape;
function xcb_shape_offset(c: Pxcb_connection_t; destination_kind: Txcb_shape_kind_t; destination_window: Txcb_window_t; x_offset: Tint16_t; y_offset: Tint16_t): Txcb_void_cookie_t; cdecl; external libxcb_shape;
function xcb_shape_query_extents(c: Pxcb_connection_t; destination_window: Txcb_window_t): Txcb_shape_query_extents_cookie_t; cdecl; external libxcb_shape;
function xcb_shape_query_extents_unchecked(c: Pxcb_connection_t; destination_window: Txcb_window_t): Txcb_shape_query_extents_cookie_t; cdecl; external libxcb_shape;
function xcb_shape_query_extents_reply(c: Pxcb_connection_t; cookie: Txcb_shape_query_extents_cookie_t; e: PPxcb_generic_error_t): Pxcb_shape_query_extents_reply_t; cdecl; external libxcb_shape;
function xcb_shape_select_input_checked(c: Pxcb_connection_t; destination_window: Txcb_window_t; enable: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_shape;
function xcb_shape_select_input(c: Pxcb_connection_t; destination_window: Txcb_window_t; enable: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_shape;
function xcb_shape_input_selected(c: Pxcb_connection_t; destination_window: Txcb_window_t): Txcb_shape_input_selected_cookie_t; cdecl; external libxcb_shape;
function xcb_shape_input_selected_unchecked(c: Pxcb_connection_t; destination_window: Txcb_window_t): Txcb_shape_input_selected_cookie_t; cdecl; external libxcb_shape;
function xcb_shape_input_selected_reply(c: Pxcb_connection_t; cookie: Txcb_shape_input_selected_cookie_t; e: PPxcb_generic_error_t): Pxcb_shape_input_selected_reply_t; cdecl; external libxcb_shape;
function xcb_shape_get_rectangles_sizeof(_buffer: pointer): longint; cdecl; external libxcb_shape;
function xcb_shape_get_rectangles(c: Pxcb_connection_t; window: Txcb_window_t; source_kind: Txcb_shape_kind_t): Txcb_shape_get_rectangles_cookie_t; cdecl; external libxcb_shape;
function xcb_shape_get_rectangles_unchecked(c: Pxcb_connection_t; window: Txcb_window_t; source_kind: Txcb_shape_kind_t): Txcb_shape_get_rectangles_cookie_t; cdecl; external libxcb_shape;
function xcb_shape_get_rectangles_rectangles(R: Pxcb_shape_get_rectangles_reply_t): Pxcb_rectangle_t; cdecl; external libxcb_shape;
function xcb_shape_get_rectangles_rectangles_length(R: Pxcb_shape_get_rectangles_reply_t): longint; cdecl; external libxcb_shape;
function xcb_shape_get_rectangles_rectangles_iterator(R: Pxcb_shape_get_rectangles_reply_t): Txcb_rectangle_iterator_t; cdecl; external libxcb_shape;
function xcb_shape_get_rectangles_reply(c: Pxcb_connection_t; cookie: Txcb_shape_get_rectangles_cookie_t; e: PPxcb_generic_error_t): Pxcb_shape_get_rectangles_reply_t; cdecl; external libxcb_shape;

// === Konventiert am: 10-10-25 17:39:52 ===


implementation



end.
