unit fp_shm;

interface

uses
  fp_xcb;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


const
  XCB_SHM_MAJOR_VERSION = 1;
  XCB_SHM_MINOR_VERSION = 2;

var
  xcb_shm_id: Txcb_extension_t; cvar;external libxcb_shm;

type
  Pxcb_shm_seg_t = ^Txcb_shm_seg_t;
  Txcb_shm_seg_t = Tuint32_t;

  Txcb_shm_seg_iterator_t = record
    data: Pxcb_shm_seg_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_shm_seg_iterator_t = ^Txcb_shm_seg_iterator_t;

const
  XCB_SHM_COMPLETION = 0;

type
  Txcb_shm_completion_event_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    drawable: Txcb_drawable_t;
    minor_event: Tuint16_t;
    major_event: Tuint8_t;
    pad1: Tuint8_t;
    shmseg: Txcb_shm_seg_t;
    offset: Tuint32_t;
  end;
  Pxcb_shm_completion_event_t = ^Txcb_shm_completion_event_t;

const
  XCB_SHM_BAD_SEG = 0;

type
  Pxcb_shm_bad_seg_error_t = ^Txcb_shm_bad_seg_error_t;
  Txcb_shm_bad_seg_error_t = Txcb_value_error_t;

  Txcb_shm_query_version_cookie_t = record
    sequence: dword;
  end;
  Pxcb_shm_query_version_cookie_t = ^Txcb_shm_query_version_cookie_t;

const
  XCB_SHM_QUERY_VERSION_ = 0;

type
  Txcb_shm_query_version_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_shm_query_version_request_t = ^Txcb_shm_query_version_request_t;

  Txcb_shm_query_version_reply_t = record
    response_type: Tuint8_t;
    shared_pixmaps: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    major_version: Tuint16_t;
    minor_version: Tuint16_t;
    uid: Tuint16_t;
    gid: Tuint16_t;
    pixmap_format: Tuint8_t;
    pad0: array[0..14] of Tuint8_t;
  end;
  Pxcb_shm_query_version_reply_t = ^Txcb_shm_query_version_reply_t;

const
  XCB_SHM_ATTACH_ = 1;

type
  Txcb_shm_attach_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    shmseg: Txcb_shm_seg_t;
    shmid: Tuint32_t;
    read_only: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_shm_attach_request_t = ^Txcb_shm_attach_request_t;

const
  XCB_SHM_DETACH_ = 2;

type
  Txcb_shm_detach_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    shmseg: Txcb_shm_seg_t;
  end;
  Pxcb_shm_detach_request_t = ^Txcb_shm_detach_request_t;

const
  XCB_SHM_PUT_IMAGE_ = 3;

type
  Txcb_shm_put_image_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
    gc: Txcb_gcontext_t;
    total_width: Tuint16_t;
    total_height: Tuint16_t;
    src_x: Tuint16_t;
    src_y: Tuint16_t;
    src_width: Tuint16_t;
    src_height: Tuint16_t;
    dst_x: Tint16_t;
    dst_y: Tint16_t;
    depth: Tuint8_t;
    format: Tuint8_t;
    send_event: Tuint8_t;
    pad0: Tuint8_t;
    shmseg: Txcb_shm_seg_t;
    offset: Tuint32_t;
  end;
  Pxcb_shm_put_image_request_t = ^Txcb_shm_put_image_request_t;

  Txcb_shm_get_image_cookie_t = record
    sequence: dword;
  end;
  Pxcb_shm_get_image_cookie_t = ^Txcb_shm_get_image_cookie_t;

const
  XCB_SHM_GET_IMAGE_ = 4;

type
  Txcb_shm_get_image_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
    x: Tint16_t;
    y: Tint16_t;
    width: Tuint16_t;
    height: Tuint16_t;
    plane_mask: Tuint32_t;
    format: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
    shmseg: Txcb_shm_seg_t;
    offset: Tuint32_t;
  end;
  Pxcb_shm_get_image_request_t = ^Txcb_shm_get_image_request_t;

  Txcb_shm_get_image_reply_t = record
    response_type: Tuint8_t;
    depth: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    visual: Txcb_visualid_t;
    size: Tuint32_t;
  end;
  Pxcb_shm_get_image_reply_t = ^Txcb_shm_get_image_reply_t;

const
  XCB_SHM_CREATE_PIXMAP_ = 5;

type
  Txcb_shm_create_pixmap_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    pid: Txcb_pixmap_t;
    drawable: Txcb_drawable_t;
    width: Tuint16_t;
    height: Tuint16_t;
    depth: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
    shmseg: Txcb_shm_seg_t;
    offset: Tuint32_t;
  end;
  Pxcb_shm_create_pixmap_request_t = ^Txcb_shm_create_pixmap_request_t;

const
  XCB_SHM_ATTACH_FD_ = 6;

type
  Txcb_shm_attach_fd_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    shmseg: Txcb_shm_seg_t;
    read_only: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_shm_attach_fd_request_t = ^Txcb_shm_attach_fd_request_t;

  Txcb_shm_create_segment_cookie_t = record
    sequence: dword;
  end;
  Pxcb_shm_create_segment_cookie_t = ^Txcb_shm_create_segment_cookie_t;

const
  XCB_SHM_CREATE_SEGMENT_ = 7;

type
  Txcb_shm_create_segment_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    shmseg: Txcb_shm_seg_t;
    size: Tuint32_t;
    read_only: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_shm_create_segment_request_t = ^Txcb_shm_create_segment_request_t;

  Txcb_shm_create_segment_reply_t = record
    response_type: Tuint8_t;
    nfd: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    pad0: array[0..23] of Tuint8_t;
  end;
  Pxcb_shm_create_segment_reply_t = ^Txcb_shm_create_segment_reply_t;

procedure xcb_shm_seg_next(i: Pxcb_shm_seg_iterator_t); cdecl; external libxcb_shm;
function xcb_shm_seg_end(i: Txcb_shm_seg_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_shm;
function xcb_shm_query_version(c: Pxcb_connection_t): Txcb_shm_query_version_cookie_t; cdecl; external libxcb_shm;
function xcb_shm_query_version_unchecked(c: Pxcb_connection_t): Txcb_shm_query_version_cookie_t; cdecl; external libxcb_shm;
function xcb_shm_query_version_reply(c: Pxcb_connection_t; cookie: Txcb_shm_query_version_cookie_t; e: PPxcb_generic_error_t): Pxcb_shm_query_version_reply_t; cdecl; external libxcb_shm;
function xcb_shm_attach_checked(c: Pxcb_connection_t; shmseg: Txcb_shm_seg_t; shmid: Tuint32_t; read_only: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_shm;
function xcb_shm_attach(c: Pxcb_connection_t; shmseg: Txcb_shm_seg_t; shmid: Tuint32_t; read_only: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_shm;
function xcb_shm_detach_checked(c: Pxcb_connection_t; shmseg: Txcb_shm_seg_t): Txcb_void_cookie_t; cdecl; external libxcb_shm;
function xcb_shm_detach(c: Pxcb_connection_t; shmseg: Txcb_shm_seg_t): Txcb_void_cookie_t; cdecl; external libxcb_shm;
function xcb_shm_put_image_checked(c: Pxcb_connection_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; total_width: Tuint16_t; total_height: Tuint16_t;
  src_x: Tuint16_t; src_y: Tuint16_t; src_width: Tuint16_t; src_height: Tuint16_t; dst_x: Tint16_t;
  dst_y: Tint16_t; depth: Tuint8_t; format: Tuint8_t; send_event: Tuint8_t; shmseg: Txcb_shm_seg_t;
  offset: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_shm;
function xcb_shm_put_image(c: Pxcb_connection_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; total_width: Tuint16_t; total_height: Tuint16_t;
  src_x: Tuint16_t; src_y: Tuint16_t; src_width: Tuint16_t; src_height: Tuint16_t; dst_x: Tint16_t;
  dst_y: Tint16_t; depth: Tuint8_t; format: Tuint8_t; send_event: Tuint8_t; shmseg: Txcb_shm_seg_t;
  offset: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_shm;
function xcb_shm_get_image(c: Pxcb_connection_t; drawable: Txcb_drawable_t; x: Tint16_t; y: Tint16_t; width: Tuint16_t;
  height: Tuint16_t; plane_mask: Tuint32_t; format: Tuint8_t; shmseg: Txcb_shm_seg_t; offset: Tuint32_t): Txcb_shm_get_image_cookie_t; cdecl; external libxcb_shm;
function xcb_shm_get_image_unchecked(c: Pxcb_connection_t; drawable: Txcb_drawable_t; x: Tint16_t; y: Tint16_t; width: Tuint16_t;
  height: Tuint16_t; plane_mask: Tuint32_t; format: Tuint8_t; shmseg: Txcb_shm_seg_t; offset: Tuint32_t): Txcb_shm_get_image_cookie_t; cdecl; external libxcb_shm;
function xcb_shm_get_image_reply(c: Pxcb_connection_t; cookie: Txcb_shm_get_image_cookie_t; e: PPxcb_generic_error_t): Pxcb_shm_get_image_reply_t; cdecl; external libxcb_shm;
function xcb_shm_create_pixmap_checked(c: Pxcb_connection_t; pid: Txcb_pixmap_t; drawable: Txcb_drawable_t; width: Tuint16_t; height: Tuint16_t;
  depth: Tuint8_t; shmseg: Txcb_shm_seg_t; offset: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_shm;
function xcb_shm_create_pixmap(c: Pxcb_connection_t; pid: Txcb_pixmap_t; drawable: Txcb_drawable_t; width: Tuint16_t; height: Tuint16_t;
  depth: Tuint8_t; shmseg: Txcb_shm_seg_t; offset: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_shm;
function xcb_shm_attach_fd_checked(c: Pxcb_connection_t; shmseg: Txcb_shm_seg_t; shm_fd: Tint32_t; read_only: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_shm;
function xcb_shm_attach_fd(c: Pxcb_connection_t; shmseg: Txcb_shm_seg_t; shm_fd: Tint32_t; read_only: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_shm;
function xcb_shm_create_segment(c: Pxcb_connection_t; shmseg: Txcb_shm_seg_t; size: Tuint32_t; read_only: Tuint8_t): Txcb_shm_create_segment_cookie_t; cdecl; external libxcb_shm;
function xcb_shm_create_segment_unchecked(c: Pxcb_connection_t; shmseg: Txcb_shm_seg_t; size: Tuint32_t; read_only: Tuint8_t): Txcb_shm_create_segment_cookie_t; cdecl; external libxcb_shm;
function xcb_shm_create_segment_reply(c: Pxcb_connection_t; cookie: Txcb_shm_create_segment_cookie_t; e: PPxcb_generic_error_t): Pxcb_shm_create_segment_reply_t; cdecl; external libxcb_shm;
function xcb_shm_create_segment_reply_fds(c: Pxcb_connection_t; reply: Pxcb_shm_create_segment_reply_t): Plongint; cdecl; external libxcb_shm;

// === Konventiert am: 12-10-25 13:46:13 ===


implementation



end.
