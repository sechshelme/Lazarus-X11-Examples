unit fp_dri2;

interface

uses
  fp_xcb;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


const
  XCB_DRI2_MAJOR_VERSION = 1;
  XCB_DRI2_MINOR_VERSION = 4;

var
  xcb_dri2_id: Txcb_extension_t; cvar;external libxcb_dri2;

type
  Pxcb_dri2_attachment_t = ^Txcb_dri2_attachment_t;
  Txcb_dri2_attachment_t = longint;

const
  XCB_DRI2_ATTACHMENT_BUFFER_FRONT_LEFT = 0;
  XCB_DRI2_ATTACHMENT_BUFFER_BACK_LEFT = 1;
  XCB_DRI2_ATTACHMENT_BUFFER_FRONT_RIGHT = 2;
  XCB_DRI2_ATTACHMENT_BUFFER_BACK_RIGHT = 3;
  XCB_DRI2_ATTACHMENT_BUFFER_DEPTH = 4;
  XCB_DRI2_ATTACHMENT_BUFFER_STENCIL = 5;
  XCB_DRI2_ATTACHMENT_BUFFER_ACCUM = 6;
  XCB_DRI2_ATTACHMENT_BUFFER_FAKE_FRONT_LEFT = 7;
  XCB_DRI2_ATTACHMENT_BUFFER_FAKE_FRONT_RIGHT = 8;
  XCB_DRI2_ATTACHMENT_BUFFER_DEPTH_STENCIL = 9;
  XCB_DRI2_ATTACHMENT_BUFFER_HIZ = 10;

type
  Pxcb_dri2_driver_type_t = ^Txcb_dri2_driver_type_t;
  Txcb_dri2_driver_type_t = longint;

const
  XCB_DRI2_DRIVER_TYPE_DRI = 0;
  XCB_DRI2_DRIVER_TYPE_VDPAU = 1;

type
  Pxcb_dri2_event_type_t = ^Txcb_dri2_event_type_t;
  Txcb_dri2_event_type_t = longint;

const
  XCB_DRI2_EVENT_TYPE_EXCHANGE_COMPLETE = 1;
  XCB_DRI2_EVENT_TYPE_BLIT_COMPLETE = 2;
  XCB_DRI2_EVENT_TYPE_FLIP_COMPLETE = 3;

type
  Txcb_dri2_dri2_buffer_t = record
    attachment: Tuint32_t;
    name: Tuint32_t;
    pitch: Tuint32_t;
    cpp: Tuint32_t;
    flags: Tuint32_t;
  end;
  Pxcb_dri2_dri2_buffer_t = ^Txcb_dri2_dri2_buffer_t;

  Txcb_dri2_dri2_buffer_iterator_t = record
    data: Pxcb_dri2_dri2_buffer_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_dri2_dri2_buffer_iterator_t = ^Txcb_dri2_dri2_buffer_iterator_t;

  Txcb_dri2_attach_format_t = record
    attachment: Tuint32_t;
    format: Tuint32_t;
  end;
  Pxcb_dri2_attach_format_t = ^Txcb_dri2_attach_format_t;

  Txcb_dri2_attach_format_iterator_t = record
    data: Pxcb_dri2_attach_format_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_dri2_attach_format_iterator_t = ^Txcb_dri2_attach_format_iterator_t;

  Txcb_dri2_query_version_cookie_t = record
    sequence: dword;
  end;
  Pxcb_dri2_query_version_cookie_t = ^Txcb_dri2_query_version_cookie_t;

const
  XCB_DRI2_QUERY_VERSION_ = 0;

type
  Txcb_dri2_query_version_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    major_version: Tuint32_t;
    minor_version: Tuint32_t;
  end;
  Pxcb_dri2_query_version_request_t = ^Txcb_dri2_query_version_request_t;

  Txcb_dri2_query_version_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    major_version: Tuint32_t;
    minor_version: Tuint32_t;
  end;
  Pxcb_dri2_query_version_reply_t = ^Txcb_dri2_query_version_reply_t;

  Txcb_dri2_connect_cookie_t = record
    sequence: dword;
  end;
  Pxcb_dri2_connect_cookie_t = ^Txcb_dri2_connect_cookie_t;

const
  XCB_DRI2_CONNECT_ = 1;

type
  Txcb_dri2_connect_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    driver_type: Tuint32_t;
  end;
  Pxcb_dri2_connect_request_t = ^Txcb_dri2_connect_request_t;

  Txcb_dri2_connect_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    driver_name_length: Tuint32_t;
    device_name_length: Tuint32_t;
    pad1: array[0..15] of Tuint8_t;
  end;
  Pxcb_dri2_connect_reply_t = ^Txcb_dri2_connect_reply_t;

  Txcb_dri2_authenticate_cookie_t = record
    sequence: dword;
  end;
  Pxcb_dri2_authenticate_cookie_t = ^Txcb_dri2_authenticate_cookie_t;

const
  XCB_DRI2_AUTHENTICATE_ = 2;

type
  Txcb_dri2_authenticate_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    magic: Tuint32_t;
  end;
  Pxcb_dri2_authenticate_request_t = ^Txcb_dri2_authenticate_request_t;

  Txcb_dri2_authenticate_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    authenticated: Tuint32_t;
  end;
  Pxcb_dri2_authenticate_reply_t = ^Txcb_dri2_authenticate_reply_t;

const
  XCB_DRI2_CREATE_DRAWABLE_ = 3;

type
  Txcb_dri2_create_drawable_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
  end;
  Pxcb_dri2_create_drawable_request_t = ^Txcb_dri2_create_drawable_request_t;

const
  XCB_DRI2_DESTROY_DRAWABLE_ = 4;

type
  Txcb_dri2_destroy_drawable_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
  end;
  Pxcb_dri2_destroy_drawable_request_t = ^Txcb_dri2_destroy_drawable_request_t;

  Txcb_dri2_get_buffers_cookie_t = record
    sequence: dword;
  end;
  Pxcb_dri2_get_buffers_cookie_t = ^Txcb_dri2_get_buffers_cookie_t;

const
  XCB_DRI2_GET_BUFFERS_ = 5;

type
  Txcb_dri2_get_buffers_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
    count: Tuint32_t;
  end;
  Pxcb_dri2_get_buffers_request_t = ^Txcb_dri2_get_buffers_request_t;

  Txcb_dri2_get_buffers_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    width: Tuint32_t;
    height: Tuint32_t;
    count: Tuint32_t;
    pad1: array[0..11] of Tuint8_t;
  end;
  Pxcb_dri2_get_buffers_reply_t = ^Txcb_dri2_get_buffers_reply_t;

  Txcb_dri2_copy_region_cookie_t = record
    sequence: dword;
  end;
  Pxcb_dri2_copy_region_cookie_t = ^Txcb_dri2_copy_region_cookie_t;

const
  XCB_DRI2_COPY_REGION_ = 6;

type
  Txcb_dri2_copy_region_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
    region: Tuint32_t;
    dest: Tuint32_t;
    src: Tuint32_t;
  end;
  Pxcb_dri2_copy_region_request_t = ^Txcb_dri2_copy_region_request_t;

  Txcb_dri2_copy_region_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
  end;
  Pxcb_dri2_copy_region_reply_t = ^Txcb_dri2_copy_region_reply_t;

  Txcb_dri2_get_buffers_with_format_cookie_t = record
    sequence: dword;
  end;
  Pxcb_dri2_get_buffers_with_format_cookie_t = ^Txcb_dri2_get_buffers_with_format_cookie_t;

const
  XCB_DRI2_GET_BUFFERS_WITH_FORMAT_ = 7;

type
  Txcb_dri2_get_buffers_with_format_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
    count: Tuint32_t;
  end;
  Pxcb_dri2_get_buffers_with_format_request_t = ^Txcb_dri2_get_buffers_with_format_request_t;

  Txcb_dri2_get_buffers_with_format_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    width: Tuint32_t;
    height: Tuint32_t;
    count: Tuint32_t;
    pad1: array[0..11] of Tuint8_t;
  end;
  Pxcb_dri2_get_buffers_with_format_reply_t = ^Txcb_dri2_get_buffers_with_format_reply_t;

  Txcb_dri2_swap_buffers_cookie_t = record
    sequence: dword;
  end;
  Pxcb_dri2_swap_buffers_cookie_t = ^Txcb_dri2_swap_buffers_cookie_t;

const
  XCB_DRI2_SWAP_BUFFERS_ = 8;

type
  Txcb_dri2_swap_buffers_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
    target_msc_hi: Tuint32_t;
    target_msc_lo: Tuint32_t;
    divisor_hi: Tuint32_t;
    divisor_lo: Tuint32_t;
    remainder_hi: Tuint32_t;
    remainder_lo: Tuint32_t;
  end;
  Pxcb_dri2_swap_buffers_request_t = ^Txcb_dri2_swap_buffers_request_t;

  Txcb_dri2_swap_buffers_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    swap_hi: Tuint32_t;
    swap_lo: Tuint32_t;
  end;
  Pxcb_dri2_swap_buffers_reply_t = ^Txcb_dri2_swap_buffers_reply_t;

  Txcb_dri2_get_msc_cookie_t = record
    sequence: dword;
  end;
  Pxcb_dri2_get_msc_cookie_t = ^Txcb_dri2_get_msc_cookie_t;

const
  XCB_DRI2_GET_MSC_ = 9;

type
  Txcb_dri2_get_msc_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
  end;
  Pxcb_dri2_get_msc_request_t = ^Txcb_dri2_get_msc_request_t;

  Txcb_dri2_get_msc_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    ust_hi: Tuint32_t;
    ust_lo: Tuint32_t;
    msc_hi: Tuint32_t;
    msc_lo: Tuint32_t;
    sbc_hi: Tuint32_t;
    sbc_lo: Tuint32_t;
  end;
  Pxcb_dri2_get_msc_reply_t = ^Txcb_dri2_get_msc_reply_t;

  Txcb_dri2_wait_msc_cookie_t = record
    sequence: dword;
  end;
  Pxcb_dri2_wait_msc_cookie_t = ^Txcb_dri2_wait_msc_cookie_t;

const
  XCB_DRI2_WAIT_MSC_ = 10;

type
  Txcb_dri2_wait_msc_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
    target_msc_hi: Tuint32_t;
    target_msc_lo: Tuint32_t;
    divisor_hi: Tuint32_t;
    divisor_lo: Tuint32_t;
    remainder_hi: Tuint32_t;
    remainder_lo: Tuint32_t;
  end;
  Pxcb_dri2_wait_msc_request_t = ^Txcb_dri2_wait_msc_request_t;

  Txcb_dri2_wait_msc_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    ust_hi: Tuint32_t;
    ust_lo: Tuint32_t;
    msc_hi: Tuint32_t;
    msc_lo: Tuint32_t;
    sbc_hi: Tuint32_t;
    sbc_lo: Tuint32_t;
  end;
  Pxcb_dri2_wait_msc_reply_t = ^Txcb_dri2_wait_msc_reply_t;

  Txcb_dri2_wait_sbc_cookie_t = record
    sequence: dword;
  end;
  Pxcb_dri2_wait_sbc_cookie_t = ^Txcb_dri2_wait_sbc_cookie_t;

const
  XCB_DRI2_WAIT_SBC_ = 11;

type
  Txcb_dri2_wait_sbc_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
    target_sbc_hi: Tuint32_t;
    target_sbc_lo: Tuint32_t;
  end;
  Pxcb_dri2_wait_sbc_request_t = ^Txcb_dri2_wait_sbc_request_t;

  Txcb_dri2_wait_sbc_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    ust_hi: Tuint32_t;
    ust_lo: Tuint32_t;
    msc_hi: Tuint32_t;
    msc_lo: Tuint32_t;
    sbc_hi: Tuint32_t;
    sbc_lo: Tuint32_t;
  end;
  Pxcb_dri2_wait_sbc_reply_t = ^Txcb_dri2_wait_sbc_reply_t;

const
  XCB_DRI2_SWAP_INTERVAL_ = 12;

type
  Txcb_dri2_swap_interval_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
    interval: Tuint32_t;
  end;
  Pxcb_dri2_swap_interval_request_t = ^Txcb_dri2_swap_interval_request_t;

  Txcb_dri2_get_param_cookie_t = record
    sequence: dword;
  end;
  Pxcb_dri2_get_param_cookie_t = ^Txcb_dri2_get_param_cookie_t;

const
  XCB_DRI2_GET_PARAM_ = 13;

type
  Txcb_dri2_get_param_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
    param: Tuint32_t;
  end;
  Pxcb_dri2_get_param_request_t = ^Txcb_dri2_get_param_request_t;

  Txcb_dri2_get_param_reply_t = record
    response_type: Tuint8_t;
    is_param_recognized: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    value_hi: Tuint32_t;
    value_lo: Tuint32_t;
  end;
  Pxcb_dri2_get_param_reply_t = ^Txcb_dri2_get_param_reply_t;

const
  XCB_DRI2_BUFFER_SWAP_COMPLETE = 0;

type
  Txcb_dri2_buffer_swap_complete_event_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    event_type: Tuint16_t;
    pad1: array[0..1] of Tuint8_t;
    drawable: Txcb_drawable_t;
    ust_hi: Tuint32_t;
    ust_lo: Tuint32_t;
    msc_hi: Tuint32_t;
    msc_lo: Tuint32_t;
    sbc: Tuint32_t;
  end;
  Pxcb_dri2_buffer_swap_complete_event_t = ^Txcb_dri2_buffer_swap_complete_event_t;

const
  XCB_DRI2_INVALIDATE_BUFFERS = 1;

type
  Txcb_dri2_invalidate_buffers_event_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    drawable: Txcb_drawable_t;
  end;
  Pxcb_dri2_invalidate_buffers_event_t = ^Txcb_dri2_invalidate_buffers_event_t;

procedure xcb_dri2_dri2_buffer_next(i: Pxcb_dri2_dri2_buffer_iterator_t); cdecl; external libxcb_dri2;
function xcb_dri2_dri2_buffer_end(i: Txcb_dri2_dri2_buffer_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_dri2;
procedure xcb_dri2_attach_format_next(i: Pxcb_dri2_attach_format_iterator_t); cdecl; external libxcb_dri2;
function xcb_dri2_attach_format_end(i: Txcb_dri2_attach_format_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_dri2;
function xcb_dri2_query_version(c: Pxcb_connection_t; major_version: Tuint32_t; minor_version: Tuint32_t): Txcb_dri2_query_version_cookie_t; cdecl; external libxcb_dri2;
function xcb_dri2_query_version_unchecked(c: Pxcb_connection_t; major_version: Tuint32_t; minor_version: Tuint32_t): Txcb_dri2_query_version_cookie_t; cdecl; external libxcb_dri2;
function xcb_dri2_query_version_reply(c: Pxcb_connection_t; cookie: Txcb_dri2_query_version_cookie_t; e: PPxcb_generic_error_t): Pxcb_dri2_query_version_reply_t; cdecl; external libxcb_dri2;
function xcb_dri2_connect_sizeof(_buffer: pointer): longint; cdecl; external libxcb_dri2;
function xcb_dri2_connect(c: Pxcb_connection_t; window: Txcb_window_t; driver_type: Tuint32_t): Txcb_dri2_connect_cookie_t; cdecl; external libxcb_dri2;
function xcb_dri2_connect_unchecked(c: Pxcb_connection_t; window: Txcb_window_t; driver_type: Tuint32_t): Txcb_dri2_connect_cookie_t; cdecl; external libxcb_dri2;
function xcb_dri2_connect_driver_name(R: Pxcb_dri2_connect_reply_t): pchar; cdecl; external libxcb_dri2;
function xcb_dri2_connect_driver_name_length(R: Pxcb_dri2_connect_reply_t): longint; cdecl; external libxcb_dri2;
function xcb_dri2_connect_driver_name_end(R: Pxcb_dri2_connect_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_dri2;
function xcb_dri2_connect_alignment_pad(R: Pxcb_dri2_connect_reply_t): pointer; cdecl; external libxcb_dri2;
function xcb_dri2_connect_alignment_pad_length(R: Pxcb_dri2_connect_reply_t): longint; cdecl; external libxcb_dri2;
function xcb_dri2_connect_alignment_pad_end(R: Pxcb_dri2_connect_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_dri2;
function xcb_dri2_connect_device_name(R: Pxcb_dri2_connect_reply_t): pchar; cdecl; external libxcb_dri2;
function xcb_dri2_connect_device_name_length(R: Pxcb_dri2_connect_reply_t): longint; cdecl; external libxcb_dri2;
function xcb_dri2_connect_device_name_end(R: Pxcb_dri2_connect_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_dri2;
function xcb_dri2_connect_reply(c: Pxcb_connection_t; cookie: Txcb_dri2_connect_cookie_t; e: PPxcb_generic_error_t): Pxcb_dri2_connect_reply_t; cdecl; external libxcb_dri2;
function xcb_dri2_authenticate(c: Pxcb_connection_t; window: Txcb_window_t; magic: Tuint32_t): Txcb_dri2_authenticate_cookie_t; cdecl; external libxcb_dri2;
function xcb_dri2_authenticate_unchecked(c: Pxcb_connection_t; window: Txcb_window_t; magic: Tuint32_t): Txcb_dri2_authenticate_cookie_t; cdecl; external libxcb_dri2;
function xcb_dri2_authenticate_reply(c: Pxcb_connection_t; cookie: Txcb_dri2_authenticate_cookie_t; e: PPxcb_generic_error_t): Pxcb_dri2_authenticate_reply_t; cdecl; external libxcb_dri2;
function xcb_dri2_create_drawable_checked(c: Pxcb_connection_t; drawable: Txcb_drawable_t): Txcb_void_cookie_t; cdecl; external libxcb_dri2;
function xcb_dri2_create_drawable(c: Pxcb_connection_t; drawable: Txcb_drawable_t): Txcb_void_cookie_t; cdecl; external libxcb_dri2;
function xcb_dri2_destroy_drawable_checked(c: Pxcb_connection_t; drawable: Txcb_drawable_t): Txcb_void_cookie_t; cdecl; external libxcb_dri2;
function xcb_dri2_destroy_drawable(c: Pxcb_connection_t; drawable: Txcb_drawable_t): Txcb_void_cookie_t; cdecl; external libxcb_dri2;
function xcb_dri2_get_buffers_sizeof(_buffer: pointer; attachments_len: Tuint32_t): longint; cdecl; external libxcb_dri2;
function xcb_dri2_get_buffers(c: Pxcb_connection_t; drawable: Txcb_drawable_t; count: Tuint32_t; attachments_len: Tuint32_t; attachments: Puint32_t): Txcb_dri2_get_buffers_cookie_t; cdecl; external libxcb_dri2;
function xcb_dri2_get_buffers_unchecked(c: Pxcb_connection_t; drawable: Txcb_drawable_t; count: Tuint32_t; attachments_len: Tuint32_t; attachments: Puint32_t): Txcb_dri2_get_buffers_cookie_t; cdecl; external libxcb_dri2;
function xcb_dri2_get_buffers_buffers(R: Pxcb_dri2_get_buffers_reply_t): Pxcb_dri2_dri2_buffer_t; cdecl; external libxcb_dri2;
function xcb_dri2_get_buffers_buffers_length(R: Pxcb_dri2_get_buffers_reply_t): longint; cdecl; external libxcb_dri2;
function xcb_dri2_get_buffers_buffers_iterator(R: Pxcb_dri2_get_buffers_reply_t): Txcb_dri2_dri2_buffer_iterator_t; cdecl; external libxcb_dri2;
function xcb_dri2_get_buffers_reply(c: Pxcb_connection_t; cookie: Txcb_dri2_get_buffers_cookie_t; e: PPxcb_generic_error_t): Pxcb_dri2_get_buffers_reply_t; cdecl; external libxcb_dri2;
function xcb_dri2_copy_region(c: Pxcb_connection_t; drawable: Txcb_drawable_t; region: Tuint32_t; dest: Tuint32_t; src: Tuint32_t): Txcb_dri2_copy_region_cookie_t; cdecl; external libxcb_dri2;
function xcb_dri2_copy_region_unchecked(c: Pxcb_connection_t; drawable: Txcb_drawable_t; region: Tuint32_t; dest: Tuint32_t; src: Tuint32_t): Txcb_dri2_copy_region_cookie_t; cdecl; external libxcb_dri2;
function xcb_dri2_copy_region_reply(c: Pxcb_connection_t; cookie: Txcb_dri2_copy_region_cookie_t; e: PPxcb_generic_error_t): Pxcb_dri2_copy_region_reply_t; cdecl; external libxcb_dri2;
function xcb_dri2_get_buffers_with_format_sizeof(_buffer: pointer; attachments_len: Tuint32_t): longint; cdecl; external libxcb_dri2;
function xcb_dri2_get_buffers_with_format(c: Pxcb_connection_t; drawable: Txcb_drawable_t; count: Tuint32_t; attachments_len: Tuint32_t; attachments: Pxcb_dri2_attach_format_t): Txcb_dri2_get_buffers_with_format_cookie_t; cdecl; external libxcb_dri2;
function xcb_dri2_get_buffers_with_format_unchecked(c: Pxcb_connection_t; drawable: Txcb_drawable_t; count: Tuint32_t; attachments_len: Tuint32_t; attachments: Pxcb_dri2_attach_format_t): Txcb_dri2_get_buffers_with_format_cookie_t; cdecl; external libxcb_dri2;
function xcb_dri2_get_buffers_with_format_buffers(R: Pxcb_dri2_get_buffers_with_format_reply_t): Pxcb_dri2_dri2_buffer_t; cdecl; external libxcb_dri2;
function xcb_dri2_get_buffers_with_format_buffers_length(R: Pxcb_dri2_get_buffers_with_format_reply_t): longint; cdecl; external libxcb_dri2;
function xcb_dri2_get_buffers_with_format_buffers_iterator(R: Pxcb_dri2_get_buffers_with_format_reply_t): Txcb_dri2_dri2_buffer_iterator_t; cdecl; external libxcb_dri2;
function xcb_dri2_get_buffers_with_format_reply(c: Pxcb_connection_t; cookie: Txcb_dri2_get_buffers_with_format_cookie_t; e: PPxcb_generic_error_t): Pxcb_dri2_get_buffers_with_format_reply_t; cdecl; external libxcb_dri2;
function xcb_dri2_swap_buffers(c: Pxcb_connection_t; drawable: Txcb_drawable_t; target_msc_hi: Tuint32_t; target_msc_lo: Tuint32_t; divisor_hi: Tuint32_t;
  divisor_lo: Tuint32_t; remainder_hi: Tuint32_t; remainder_lo: Tuint32_t): Txcb_dri2_swap_buffers_cookie_t; cdecl; external libxcb_dri2;
function xcb_dri2_swap_buffers_unchecked(c: Pxcb_connection_t; drawable: Txcb_drawable_t; target_msc_hi: Tuint32_t; target_msc_lo: Tuint32_t; divisor_hi: Tuint32_t;
  divisor_lo: Tuint32_t; remainder_hi: Tuint32_t; remainder_lo: Tuint32_t): Txcb_dri2_swap_buffers_cookie_t; cdecl; external libxcb_dri2;
function xcb_dri2_swap_buffers_reply(c: Pxcb_connection_t; cookie: Txcb_dri2_swap_buffers_cookie_t; e: PPxcb_generic_error_t): Pxcb_dri2_swap_buffers_reply_t; cdecl; external libxcb_dri2;
function xcb_dri2_get_msc(c: Pxcb_connection_t; drawable: Txcb_drawable_t): Txcb_dri2_get_msc_cookie_t; cdecl; external libxcb_dri2;
function xcb_dri2_get_msc_unchecked(c: Pxcb_connection_t; drawable: Txcb_drawable_t): Txcb_dri2_get_msc_cookie_t; cdecl; external libxcb_dri2;
function xcb_dri2_get_msc_reply(c: Pxcb_connection_t; cookie: Txcb_dri2_get_msc_cookie_t; e: PPxcb_generic_error_t): Pxcb_dri2_get_msc_reply_t; cdecl; external libxcb_dri2;
function xcb_dri2_wait_msc(c: Pxcb_connection_t; drawable: Txcb_drawable_t; target_msc_hi: Tuint32_t; target_msc_lo: Tuint32_t; divisor_hi: Tuint32_t;
  divisor_lo: Tuint32_t; remainder_hi: Tuint32_t; remainder_lo: Tuint32_t): Txcb_dri2_wait_msc_cookie_t; cdecl; external libxcb_dri2;
function xcb_dri2_wait_msc_unchecked(c: Pxcb_connection_t; drawable: Txcb_drawable_t; target_msc_hi: Tuint32_t; target_msc_lo: Tuint32_t; divisor_hi: Tuint32_t;
  divisor_lo: Tuint32_t; remainder_hi: Tuint32_t; remainder_lo: Tuint32_t): Txcb_dri2_wait_msc_cookie_t; cdecl; external libxcb_dri2;
function xcb_dri2_wait_msc_reply(c: Pxcb_connection_t; cookie: Txcb_dri2_wait_msc_cookie_t; e: PPxcb_generic_error_t): Pxcb_dri2_wait_msc_reply_t; cdecl; external libxcb_dri2;
function xcb_dri2_wait_sbc(c: Pxcb_connection_t; drawable: Txcb_drawable_t; target_sbc_hi: Tuint32_t; target_sbc_lo: Tuint32_t): Txcb_dri2_wait_sbc_cookie_t; cdecl; external libxcb_dri2;
function xcb_dri2_wait_sbc_unchecked(c: Pxcb_connection_t; drawable: Txcb_drawable_t; target_sbc_hi: Tuint32_t; target_sbc_lo: Tuint32_t): Txcb_dri2_wait_sbc_cookie_t; cdecl; external libxcb_dri2;
function xcb_dri2_wait_sbc_reply(c: Pxcb_connection_t; cookie: Txcb_dri2_wait_sbc_cookie_t; e: PPxcb_generic_error_t): Pxcb_dri2_wait_sbc_reply_t; cdecl; external libxcb_dri2;
function xcb_dri2_swap_interval_checked(c: Pxcb_connection_t; drawable: Txcb_drawable_t; interval: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_dri2;
function xcb_dri2_swap_interval(c: Pxcb_connection_t; drawable: Txcb_drawable_t; interval: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_dri2;
function xcb_dri2_get_param(c: Pxcb_connection_t; drawable: Txcb_drawable_t; param: Tuint32_t): Txcb_dri2_get_param_cookie_t; cdecl; external libxcb_dri2;
function xcb_dri2_get_param_unchecked(c: Pxcb_connection_t; drawable: Txcb_drawable_t; param: Tuint32_t): Txcb_dri2_get_param_cookie_t; cdecl; external libxcb_dri2;
function xcb_dri2_get_param_reply(c: Pxcb_connection_t; cookie: Txcb_dri2_get_param_cookie_t; e: PPxcb_generic_error_t): Pxcb_dri2_get_param_reply_t; cdecl; external libxcb_dri2;

// === Konventiert am: 12-10-25 19:10:17 ===


implementation



end.
