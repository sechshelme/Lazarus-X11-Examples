unit fp_xf86dri;

interface

uses
  fp_xcb;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


const
  XCB_XF86DRI_MAJOR_VERSION = 4;
  XCB_XF86DRI_MINOR_VERSION = 1;

var
  xcb_xf86dri_id: Txcb_extension_t; cvar;external libxcb_xf86dri;

type
  Txcb_xf86dri_drm_clip_rect_t = record
    x1: Tint16_t;
    y1: Tint16_t;
    x2: Tint16_t;
    x3: Tint16_t;
  end;
  Pxcb_xf86dri_drm_clip_rect_t = ^Txcb_xf86dri_drm_clip_rect_t;

  Txcb_xf86dri_drm_clip_rect_iterator_t = record
    data: Pxcb_xf86dri_drm_clip_rect_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xf86dri_drm_clip_rect_iterator_t = ^Txcb_xf86dri_drm_clip_rect_iterator_t;

  Txcb_xf86dri_query_version_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xf86dri_query_version_cookie_t = ^Txcb_xf86dri_query_version_cookie_t;

const
  XCB_XF86DRI_QUERY_VERSION_ = 0;

type
  Txcb_xf86dri_query_version_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_xf86dri_query_version_request_t = ^Txcb_xf86dri_query_version_request_t;

  Txcb_xf86dri_query_version_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    dri_major_version: Tuint16_t;
    dri_minor_version: Tuint16_t;
    dri_minor_patch: Tuint32_t;
  end;
  Pxcb_xf86dri_query_version_reply_t = ^Txcb_xf86dri_query_version_reply_t;

  Txcb_xf86dri_query_direct_rendering_capable_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xf86dri_query_direct_rendering_capable_cookie_t = ^Txcb_xf86dri_query_direct_rendering_capable_cookie_t;

const
  XCB_XF86DRI_QUERY_DIRECT_RENDERING_CAPABLE_ = 1;

type
  Txcb_xf86dri_query_direct_rendering_capable_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    screen: Tuint32_t;
  end;
  Pxcb_xf86dri_query_direct_rendering_capable_request_t = ^Txcb_xf86dri_query_direct_rendering_capable_request_t;

  Txcb_xf86dri_query_direct_rendering_capable_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    is_capable: Tuint8_t;
  end;
  Pxcb_xf86dri_query_direct_rendering_capable_reply_t = ^Txcb_xf86dri_query_direct_rendering_capable_reply_t;

  Txcb_xf86dri_open_connection_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xf86dri_open_connection_cookie_t = ^Txcb_xf86dri_open_connection_cookie_t;

const
  XCB_XF86DRI_OPEN_CONNECTION_ = 2;

type
  Txcb_xf86dri_open_connection_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    screen: Tuint32_t;
  end;
  Pxcb_xf86dri_open_connection_request_t = ^Txcb_xf86dri_open_connection_request_t;

  Txcb_xf86dri_open_connection_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    sarea_handle_low: Tuint32_t;
    sarea_handle_high: Tuint32_t;
    bus_id_len: Tuint32_t;
    pad1: array[0..11] of Tuint8_t;
  end;
  Pxcb_xf86dri_open_connection_reply_t = ^Txcb_xf86dri_open_connection_reply_t;

const
  XCB_XF86DRI_CLOSE_CONNECTION_ = 3;

type
  Txcb_xf86dri_close_connection_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    screen: Tuint32_t;
  end;
  Pxcb_xf86dri_close_connection_request_t = ^Txcb_xf86dri_close_connection_request_t;

  Txcb_xf86dri_get_client_driver_name_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xf86dri_get_client_driver_name_cookie_t = ^Txcb_xf86dri_get_client_driver_name_cookie_t;

const
  XCB_XF86DRI_GET_CLIENT_DRIVER_NAME_ = 4;

type
  Txcb_xf86dri_get_client_driver_name_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    screen: Tuint32_t;
  end;
  Pxcb_xf86dri_get_client_driver_name_request_t = ^Txcb_xf86dri_get_client_driver_name_request_t;

  Txcb_xf86dri_get_client_driver_name_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    client_driver_major_version: Tuint32_t;
    client_driver_minor_version: Tuint32_t;
    client_driver_patch_version: Tuint32_t;
    client_driver_name_len: Tuint32_t;
    pad1: array[0..7] of Tuint8_t;
  end;
  Pxcb_xf86dri_get_client_driver_name_reply_t = ^Txcb_xf86dri_get_client_driver_name_reply_t;

  Txcb_xf86dri_create_context_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xf86dri_create_context_cookie_t = ^Txcb_xf86dri_create_context_cookie_t;

const
  XCB_XF86DRI_CREATE_CONTEXT_ = 5;

type
  Txcb_xf86dri_create_context_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    screen: Tuint32_t;
    visual: Tuint32_t;
    context: Tuint32_t;
  end;
  Pxcb_xf86dri_create_context_request_t = ^Txcb_xf86dri_create_context_request_t;

  Txcb_xf86dri_create_context_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    hw_context: Tuint32_t;
  end;
  Pxcb_xf86dri_create_context_reply_t = ^Txcb_xf86dri_create_context_reply_t;

const
  XCB_XF86DRI_DESTROY_CONTEXT_ = 6;

type
  Txcb_xf86dri_destroy_context_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    screen: Tuint32_t;
    context: Tuint32_t;
  end;
  Pxcb_xf86dri_destroy_context_request_t = ^Txcb_xf86dri_destroy_context_request_t;

  Txcb_xf86dri_create_drawable_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xf86dri_create_drawable_cookie_t = ^Txcb_xf86dri_create_drawable_cookie_t;

const
  XCB_XF86DRI_CREATE_DRAWABLE_ = 7;

type
  Txcb_xf86dri_create_drawable_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    screen: Tuint32_t;
    drawable: Tuint32_t;
  end;
  Pxcb_xf86dri_create_drawable_request_t = ^Txcb_xf86dri_create_drawable_request_t;

  Txcb_xf86dri_create_drawable_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    hw_drawable_handle: Tuint32_t;
  end;
  Pxcb_xf86dri_create_drawable_reply_t = ^Txcb_xf86dri_create_drawable_reply_t;

const
  XCB_XF86DRI_DESTROY_DRAWABLE_ = 8;

type
  Txcb_xf86dri_destroy_drawable_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    screen: Tuint32_t;
    drawable: Tuint32_t;
  end;
  Pxcb_xf86dri_destroy_drawable_request_t = ^Txcb_xf86dri_destroy_drawable_request_t;

  Txcb_xf86dri_get_drawable_info_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xf86dri_get_drawable_info_cookie_t = ^Txcb_xf86dri_get_drawable_info_cookie_t;

const
  XCB_XF86DRI_GET_DRAWABLE_INFO_ = 9;

type
  Txcb_xf86dri_get_drawable_info_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    screen: Tuint32_t;
    drawable: Tuint32_t;
  end;
  Pxcb_xf86dri_get_drawable_info_request_t = ^Txcb_xf86dri_get_drawable_info_request_t;

  Txcb_xf86dri_get_drawable_info_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    drawable_table_index: Tuint32_t;
    drawable_table_stamp: Tuint32_t;
    drawable_origin_X: Tint16_t;
    drawable_origin_Y: Tint16_t;
    drawable_size_W: Tint16_t;
    drawable_size_H: Tint16_t;
    num_clip_rects: Tuint32_t;
    back_x: Tint16_t;
    back_y: Tint16_t;
    num_back_clip_rects: Tuint32_t;
  end;
  Pxcb_xf86dri_get_drawable_info_reply_t = ^Txcb_xf86dri_get_drawable_info_reply_t;

  Txcb_xf86dri_get_device_info_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xf86dri_get_device_info_cookie_t = ^Txcb_xf86dri_get_device_info_cookie_t;

const
  XCB_XF86DRI_GET_DEVICE_INFO_ = 10;

type
  Txcb_xf86dri_get_device_info_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    screen: Tuint32_t;
  end;
  Pxcb_xf86dri_get_device_info_request_t = ^Txcb_xf86dri_get_device_info_request_t;

  Txcb_xf86dri_get_device_info_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    framebuffer_handle_low: Tuint32_t;
    framebuffer_handle_high: Tuint32_t;
    framebuffer_origin_offset: Tuint32_t;
    framebuffer_size: Tuint32_t;
    framebuffer_stride: Tuint32_t;
    device_private_size: Tuint32_t;
  end;
  Pxcb_xf86dri_get_device_info_reply_t = ^Txcb_xf86dri_get_device_info_reply_t;

  Txcb_xf86dri_auth_connection_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xf86dri_auth_connection_cookie_t = ^Txcb_xf86dri_auth_connection_cookie_t;

const
  XCB_XF86DRI_AUTH_CONNECTION_ = 11;

type
  Txcb_xf86dri_auth_connection_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    screen: Tuint32_t;
    magic: Tuint32_t;
  end;
  Pxcb_xf86dri_auth_connection_request_t = ^Txcb_xf86dri_auth_connection_request_t;

  Txcb_xf86dri_auth_connection_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    authenticated: Tuint32_t;
  end;
  Pxcb_xf86dri_auth_connection_reply_t = ^Txcb_xf86dri_auth_connection_reply_t;

procedure xcb_xf86dri_drm_clip_rect_next(i: Pxcb_xf86dri_drm_clip_rect_iterator_t); cdecl; external libxcb_xf86dri;
function xcb_xf86dri_drm_clip_rect_end(i: Txcb_xf86dri_drm_clip_rect_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_query_version(c: Pxcb_connection_t): Txcb_xf86dri_query_version_cookie_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_query_version_unchecked(c: Pxcb_connection_t): Txcb_xf86dri_query_version_cookie_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_query_version_reply(c: Pxcb_connection_t; cookie: Txcb_xf86dri_query_version_cookie_t; e: PPxcb_generic_error_t): Pxcb_xf86dri_query_version_reply_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_query_direct_rendering_capable(c: Pxcb_connection_t; screen: Tuint32_t): Txcb_xf86dri_query_direct_rendering_capable_cookie_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_query_direct_rendering_capable_unchecked(c: Pxcb_connection_t; screen: Tuint32_t): Txcb_xf86dri_query_direct_rendering_capable_cookie_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_query_direct_rendering_capable_reply(c: Pxcb_connection_t; cookie: Txcb_xf86dri_query_direct_rendering_capable_cookie_t; e: PPxcb_generic_error_t): Pxcb_xf86dri_query_direct_rendering_capable_reply_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_open_connection_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_open_connection(c: Pxcb_connection_t; screen: Tuint32_t): Txcb_xf86dri_open_connection_cookie_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_open_connection_unchecked(c: Pxcb_connection_t; screen: Tuint32_t): Txcb_xf86dri_open_connection_cookie_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_open_connection_bus_id(R: Pxcb_xf86dri_open_connection_reply_t): pchar; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_open_connection_bus_id_length(R: Pxcb_xf86dri_open_connection_reply_t): longint; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_open_connection_bus_id_end(R: Pxcb_xf86dri_open_connection_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_open_connection_reply(c: Pxcb_connection_t; cookie: Txcb_xf86dri_open_connection_cookie_t; e: PPxcb_generic_error_t): Pxcb_xf86dri_open_connection_reply_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_close_connection_checked(c: Pxcb_connection_t; screen: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_close_connection(c: Pxcb_connection_t; screen: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_get_client_driver_name_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_get_client_driver_name(c: Pxcb_connection_t; screen: Tuint32_t): Txcb_xf86dri_get_client_driver_name_cookie_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_get_client_driver_name_unchecked(c: Pxcb_connection_t; screen: Tuint32_t): Txcb_xf86dri_get_client_driver_name_cookie_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_get_client_driver_name_client_driver_name(R: Pxcb_xf86dri_get_client_driver_name_reply_t): pchar; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_get_client_driver_name_client_driver_name_length(R: Pxcb_xf86dri_get_client_driver_name_reply_t): longint; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_get_client_driver_name_client_driver_name_end(R: Pxcb_xf86dri_get_client_driver_name_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_get_client_driver_name_reply(c: Pxcb_connection_t; cookie: Txcb_xf86dri_get_client_driver_name_cookie_t; e: PPxcb_generic_error_t): Pxcb_xf86dri_get_client_driver_name_reply_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_create_context(c: Pxcb_connection_t; screen: Tuint32_t; visual: Tuint32_t; context: Tuint32_t): Txcb_xf86dri_create_context_cookie_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_create_context_unchecked(c: Pxcb_connection_t; screen: Tuint32_t; visual: Tuint32_t; context: Tuint32_t): Txcb_xf86dri_create_context_cookie_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_create_context_reply(c: Pxcb_connection_t; cookie: Txcb_xf86dri_create_context_cookie_t; e: PPxcb_generic_error_t): Pxcb_xf86dri_create_context_reply_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_destroy_context_checked(c: Pxcb_connection_t; screen: Tuint32_t; context: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_destroy_context(c: Pxcb_connection_t; screen: Tuint32_t; context: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_create_drawable(c: Pxcb_connection_t; screen: Tuint32_t; drawable: Tuint32_t): Txcb_xf86dri_create_drawable_cookie_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_create_drawable_unchecked(c: Pxcb_connection_t; screen: Tuint32_t; drawable: Tuint32_t): Txcb_xf86dri_create_drawable_cookie_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_create_drawable_reply(c: Pxcb_connection_t; cookie: Txcb_xf86dri_create_drawable_cookie_t; e: PPxcb_generic_error_t): Pxcb_xf86dri_create_drawable_reply_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_destroy_drawable_checked(c: Pxcb_connection_t; screen: Tuint32_t; drawable: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_destroy_drawable(c: Pxcb_connection_t; screen: Tuint32_t; drawable: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_get_drawable_info_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_get_drawable_info(c: Pxcb_connection_t; screen: Tuint32_t; drawable: Tuint32_t): Txcb_xf86dri_get_drawable_info_cookie_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_get_drawable_info_unchecked(c: Pxcb_connection_t; screen: Tuint32_t; drawable: Tuint32_t): Txcb_xf86dri_get_drawable_info_cookie_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_get_drawable_info_clip_rects(R: Pxcb_xf86dri_get_drawable_info_reply_t): Pxcb_xf86dri_drm_clip_rect_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_get_drawable_info_clip_rects_length(R: Pxcb_xf86dri_get_drawable_info_reply_t): longint; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_get_drawable_info_clip_rects_iterator(R: Pxcb_xf86dri_get_drawable_info_reply_t): Txcb_xf86dri_drm_clip_rect_iterator_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_get_drawable_info_back_clip_rects(R: Pxcb_xf86dri_get_drawable_info_reply_t): Pxcb_xf86dri_drm_clip_rect_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_get_drawable_info_back_clip_rects_length(R: Pxcb_xf86dri_get_drawable_info_reply_t): longint; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_get_drawable_info_back_clip_rects_iterator(R: Pxcb_xf86dri_get_drawable_info_reply_t): Txcb_xf86dri_drm_clip_rect_iterator_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_get_drawable_info_reply(c: Pxcb_connection_t; cookie: Txcb_xf86dri_get_drawable_info_cookie_t; e: PPxcb_generic_error_t): Pxcb_xf86dri_get_drawable_info_reply_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_get_device_info_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_get_device_info(c: Pxcb_connection_t; screen: Tuint32_t): Txcb_xf86dri_get_device_info_cookie_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_get_device_info_unchecked(c: Pxcb_connection_t; screen: Tuint32_t): Txcb_xf86dri_get_device_info_cookie_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_get_device_info_device_private(R: Pxcb_xf86dri_get_device_info_reply_t): Puint32_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_get_device_info_device_private_length(R: Pxcb_xf86dri_get_device_info_reply_t): longint; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_get_device_info_device_private_end(R: Pxcb_xf86dri_get_device_info_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_get_device_info_reply(c: Pxcb_connection_t; cookie: Txcb_xf86dri_get_device_info_cookie_t; e: PPxcb_generic_error_t): Pxcb_xf86dri_get_device_info_reply_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_auth_connection(c: Pxcb_connection_t; screen: Tuint32_t; magic: Tuint32_t): Txcb_xf86dri_auth_connection_cookie_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_auth_connection_unchecked(c: Pxcb_connection_t; screen: Tuint32_t; magic: Tuint32_t): Txcb_xf86dri_auth_connection_cookie_t; cdecl; external libxcb_xf86dri;
function xcb_xf86dri_auth_connection_reply(c: Pxcb_connection_t; cookie: Txcb_xf86dri_auth_connection_cookie_t; e: PPxcb_generic_error_t): Pxcb_xf86dri_auth_connection_reply_t; cdecl; external libxcb_xf86dri;

// === Konventiert am: 12-10-25 19:29:50 ===


implementation



end.
