unit fp_present;

interface

uses
  fp_xcb, fp_xfixes, fp_randr, fp_sync;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}



const
  XCB_PRESENT_MAJOR_VERSION = 1;
  XCB_PRESENT_MINOR_VERSION = 3;

var
  xcb_present_id: Txcb_extension_t; cvar;external libxcb_present;

type
  Pxcb_present_event_enum_t = ^Txcb_present_event_enum_t;
  Txcb_present_event_enum_t = longint;

const
  XCB_PRESENT_EVENT_CONFIGURE_NOTIFY = 0;
  XCB_PRESENT_EVENT_COMPLETE_NOTIFY = 1;
  XCB_PRESENT_EVENT_IDLE_NOTIFY = 2;
  XCB_PRESENT_EVENT_REDIRECT_NOTIFY = 3;

type
  Pxcb_present_event_mask_t = ^Txcb_present_event_mask_t;
  Txcb_present_event_mask_t = longint;

const
  XCB_PRESENT_EVENT_MASK_NO_EVENT = 0;
  XCB_PRESENT_EVENT_MASK_CONFIGURE_NOTIFY = 1;
  XCB_PRESENT_EVENT_MASK_COMPLETE_NOTIFY = 2;
  XCB_PRESENT_EVENT_MASK_IDLE_NOTIFY = 4;
  XCB_PRESENT_EVENT_MASK_REDIRECT_NOTIFY = 8;

type
  Pxcb_present_option_t = ^Txcb_present_option_t;
  Txcb_present_option_t = longint;

const
  XCB_PRESENT_OPTION_NONE = 0;
  XCB_PRESENT_OPTION_ASYNC = 1;
  XCB_PRESENT_OPTION_COPY = 2;
  XCB_PRESENT_OPTION_UST = 4;
  XCB_PRESENT_OPTION_SUBOPTIMAL = 8;
  XCB_PRESENT_OPTION_ASYNC_MAY_TEAR = 16;

type
  Pxcb_present_capability_t = ^Txcb_present_capability_t;
  Txcb_present_capability_t = longint;

const
  XCB_PRESENT_CAPABILITY_NONE = 0;
  XCB_PRESENT_CAPABILITY_ASYNC = 1;
  XCB_PRESENT_CAPABILITY_FENCE = 2;
  XCB_PRESENT_CAPABILITY_UST = 4;
  XCB_PRESENT_CAPABILITY_ASYNC_MAY_TEAR = 8;

type
  Pxcb_present_complete_kind_t = ^Txcb_present_complete_kind_t;
  Txcb_present_complete_kind_t = longint;

const
  XCB_PRESENT_COMPLETE_KIND_PIXMAP = 0;
  XCB_PRESENT_COMPLETE_KIND_NOTIFY_MSC = 1;

type
  Pxcb_present_complete_mode_t = ^Txcb_present_complete_mode_t;
  Txcb_present_complete_mode_t = longint;

const
  XCB_PRESENT_COMPLETE_MODE_COPY = 0;
  XCB_PRESENT_COMPLETE_MODE_FLIP = 1;
  XCB_PRESENT_COMPLETE_MODE_SKIP = 2;
  XCB_PRESENT_COMPLETE_MODE_SUBOPTIMAL_COPY = 3;

type
  Txcb_present_notify_t = record
    window: Txcb_window_t;
    serial: Tuint32_t;
  end;
  Pxcb_present_notify_t = ^Txcb_present_notify_t;

  Txcb_present_notify_iterator_t = record
    data: Pxcb_present_notify_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_present_notify_iterator_t = ^Txcb_present_notify_iterator_t;

  Txcb_present_query_version_cookie_t = record
    sequence: dword;
  end;
  Pxcb_present_query_version_cookie_t = ^Txcb_present_query_version_cookie_t;

const
  XCB_PRESENT_QUERY_VERSION_ = 0;

type
  Txcb_present_query_version_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    major_version: Tuint32_t;
    minor_version: Tuint32_t;
  end;
  Pxcb_present_query_version_request_t = ^Txcb_present_query_version_request_t;

  Txcb_present_query_version_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    major_version: Tuint32_t;
    minor_version: Tuint32_t;
  end;
  Pxcb_present_query_version_reply_t = ^Txcb_present_query_version_reply_t;

const
  XCB_PRESENT_PIXMAP_ = 1;

type
  Txcb_present_pixmap_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    pixmap: Txcb_pixmap_t;
    serial: Tuint32_t;
    valid: Txcb_xfixes_region_t;
    update: Txcb_xfixes_region_t;
    x_off: Tint16_t;
    y_off: Tint16_t;
    target_crtc: Txcb_randr_crtc_t;
    wait_fence: Txcb_sync_fence_t;
    idle_fence: Txcb_sync_fence_t;
    options: Tuint32_t;
    pad0: array[0..3] of Tuint8_t;
    target_msc: Tuint64_t;
    divisor: Tuint64_t;
    remainder: Tuint64_t;
  end;
  Pxcb_present_pixmap_request_t = ^Txcb_present_pixmap_request_t;

const
  XCB_PRESENT_NOTIFY_MSC_ = 2;

type
  Txcb_present_notify_msc_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    serial: Tuint32_t;
    pad0: array[0..3] of Tuint8_t;
    target_msc: Tuint64_t;
    divisor: Tuint64_t;
    remainder: Tuint64_t;
  end;
  Pxcb_present_notify_msc_request_t = ^Txcb_present_notify_msc_request_t;

  Pxcb_present_event_t = ^Txcb_present_event_t;
  Txcb_present_event_t = Tuint32_t;

  Txcb_present_event_iterator_t = record
    data: Pxcb_present_event_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_present_event_iterator_t = ^Txcb_present_event_iterator_t;

const
  XCB_PRESENT_SELECT_INPUT_ = 3;

type
  Txcb_present_select_input_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    eid: Txcb_present_event_t;
    window: Txcb_window_t;
    event_mask: Tuint32_t;
  end;
  Pxcb_present_select_input_request_t = ^Txcb_present_select_input_request_t;

  Txcb_present_query_capabilities_cookie_t = record
    sequence: dword;
  end;
  Pxcb_present_query_capabilities_cookie_t = ^Txcb_present_query_capabilities_cookie_t;

const
  XCB_PRESENT_QUERY_CAPABILITIES_ = 4;

type
  Txcb_present_query_capabilities_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    target: Tuint32_t;
  end;
  Pxcb_present_query_capabilities_request_t = ^Txcb_present_query_capabilities_request_t;

  Txcb_present_query_capabilities_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    capabilities: Tuint32_t;
  end;
  Pxcb_present_query_capabilities_reply_t = ^Txcb_present_query_capabilities_reply_t;

const
  XCB_PRESENT_GENERIC = 0;

type
  Txcb_present_generic_event_t = record
    response_type: Tuint8_t;
    extension: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    evtype: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
    event: Txcb_present_event_t;
  end;
  Pxcb_present_generic_event_t = ^Txcb_present_generic_event_t;

const
  XCB_PRESENT_CONFIGURE_NOTIFY = 0;

type
  Txcb_present_configure_notify_event_t = record
    response_type: Tuint8_t;
    extension: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    event_type: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
    event: Txcb_present_event_t;
    window: Txcb_window_t;
    x: Tint16_t;
    y: Tint16_t;
    width: Tuint16_t;
    height: Tuint16_t;
    off_x: Tint16_t;
    off_y: Tint16_t;
    full_sequence: Tuint32_t;
    pixmap_width: Tuint16_t;
    pixmap_height: Tuint16_t;
    pixmap_flags: Tuint32_t;
  end;
  Pxcb_present_configure_notify_event_t = ^Txcb_present_configure_notify_event_t;

const
  XCB_PRESENT_COMPLETE_NOTIFY = 1;

type
  Txcb_present_complete_notify_event_t = record
    response_type: Tuint8_t;
    extension: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    event_type: Tuint16_t;
    kind: Tuint8_t;
    mode: Tuint8_t;
    event: Txcb_present_event_t;
    window: Txcb_window_t;
    serial: Tuint32_t;
    ust: Tuint64_t;
    full_sequence: Tuint32_t;
    msc: Tuint64_t;
  end;
  Pxcb_present_complete_notify_event_t = ^Txcb_present_complete_notify_event_t;

const
  XCB_PRESENT_IDLE_NOTIFY = 2;

type
  Txcb_present_idle_notify_event_t = record
    response_type: Tuint8_t;
    extension: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    event_type: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
    event: Txcb_present_event_t;
    window: Txcb_window_t;
    serial: Tuint32_t;
    pixmap: Txcb_pixmap_t;
    idle_fence: Txcb_sync_fence_t;
    full_sequence: Tuint32_t;
  end;
  Pxcb_present_idle_notify_event_t = ^Txcb_present_idle_notify_event_t;

const
  XCB_PRESENT_REDIRECT_NOTIFY = 3;

type
  Txcb_present_redirect_notify_event_t = record
    response_type: Tuint8_t;
    extension: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    event_type: Tuint16_t;
    update_window: Tuint8_t;
    pad0: Tuint8_t;
    event: Txcb_present_event_t;
    event_window: Txcb_window_t;
    window: Txcb_window_t;
    pixmap: Txcb_pixmap_t;
    serial: Tuint32_t;
    full_sequence: Tuint32_t;
    valid_region: Txcb_xfixes_region_t;
    update_region: Txcb_xfixes_region_t;
    valid_rect: Txcb_rectangle_t;
    update_rect: Txcb_rectangle_t;
    x_off: Tint16_t;
    y_off: Tint16_t;
    target_crtc: Txcb_randr_crtc_t;
    wait_fence: Txcb_sync_fence_t;
    idle_fence: Txcb_sync_fence_t;
    options: Tuint32_t;
    pad1: array[0..3] of Tuint8_t;
    target_msc: Tuint64_t;
    divisor: Tuint64_t;
    remainder: Tuint64_t;
  end;
  Pxcb_present_redirect_notify_event_t = ^Txcb_present_redirect_notify_event_t;

procedure xcb_present_notify_next(i: Pxcb_present_notify_iterator_t); cdecl; external libxcb_present;
function xcb_present_notify_end(i: Txcb_present_notify_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_present;
function xcb_present_query_version(c: Pxcb_connection_t; major_version: Tuint32_t; minor_version: Tuint32_t): Txcb_present_query_version_cookie_t; cdecl; external libxcb_present;
function xcb_present_query_version_unchecked(c: Pxcb_connection_t; major_version: Tuint32_t; minor_version: Tuint32_t): Txcb_present_query_version_cookie_t; cdecl; external libxcb_present;
function xcb_present_query_version_reply(c: Pxcb_connection_t; cookie: Txcb_present_query_version_cookie_t; e: PPxcb_generic_error_t): Pxcb_present_query_version_reply_t; cdecl; external libxcb_present;
function xcb_present_pixmap_sizeof(_buffer: pointer; notifies_len: Tuint32_t): longint; cdecl; external libxcb_present;
function xcb_present_pixmap_checked(c: Pxcb_connection_t; window: Txcb_window_t; pixmap: Txcb_pixmap_t; serial: Tuint32_t; valid: Txcb_xfixes_region_t;
  update: Txcb_xfixes_region_t; x_off: Tint16_t; y_off: Tint16_t; target_crtc: Txcb_randr_crtc_t; wait_fence: Txcb_sync_fence_t;
  idle_fence: Txcb_sync_fence_t; options: Tuint32_t; target_msc: Tuint64_t; divisor: Tuint64_t; remainder: Tuint64_t;
  notifies_len: Tuint32_t; notifies: Pxcb_present_notify_t): Txcb_void_cookie_t; cdecl; external libxcb_present;
function xcb_present_pixmap(c: Pxcb_connection_t; window: Txcb_window_t; pixmap: Txcb_pixmap_t; serial: Tuint32_t; valid: Txcb_xfixes_region_t;
  update: Txcb_xfixes_region_t; x_off: Tint16_t; y_off: Tint16_t; target_crtc: Txcb_randr_crtc_t; wait_fence: Txcb_sync_fence_t;
  idle_fence: Txcb_sync_fence_t; options: Tuint32_t; target_msc: Tuint64_t; divisor: Tuint64_t; remainder: Tuint64_t;
  notifies_len: Tuint32_t; notifies: Pxcb_present_notify_t): Txcb_void_cookie_t; cdecl; external libxcb_present;
function xcb_present_pixmap_notifies(R: Pxcb_present_pixmap_request_t): Pxcb_present_notify_t; cdecl; external libxcb_present;
function xcb_present_pixmap_notifies_length(R: Pxcb_present_pixmap_request_t): longint; cdecl; external libxcb_present;
function xcb_present_pixmap_notifies_iterator(R: Pxcb_present_pixmap_request_t): Txcb_present_notify_iterator_t; cdecl; external libxcb_present;
function xcb_present_notify_msc_checked(c: Pxcb_connection_t; window: Txcb_window_t; serial: Tuint32_t; target_msc: Tuint64_t; divisor: Tuint64_t;
  remainder: Tuint64_t): Txcb_void_cookie_t; cdecl; external libxcb_present;
function xcb_present_notify_msc(c: Pxcb_connection_t; window: Txcb_window_t; serial: Tuint32_t; target_msc: Tuint64_t; divisor: Tuint64_t;
  remainder: Tuint64_t): Txcb_void_cookie_t; cdecl; external libxcb_present;
procedure xcb_present_event_next(i: Pxcb_present_event_iterator_t); cdecl; external libxcb_present;
function xcb_present_event_end(i: Txcb_present_event_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_present;
function xcb_present_select_input_checked(c: Pxcb_connection_t; eid: Txcb_present_event_t; window: Txcb_window_t; event_mask: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_present;
function xcb_present_select_input(c: Pxcb_connection_t; eid: Txcb_present_event_t; window: Txcb_window_t; event_mask: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_present;
function xcb_present_query_capabilities(c: Pxcb_connection_t; target: Tuint32_t): Txcb_present_query_capabilities_cookie_t; cdecl; external libxcb_present;
function xcb_present_query_capabilities_unchecked(c: Pxcb_connection_t; target: Tuint32_t): Txcb_present_query_capabilities_cookie_t; cdecl; external libxcb_present;
function xcb_present_query_capabilities_reply(c: Pxcb_connection_t; cookie: Txcb_present_query_capabilities_cookie_t; e: PPxcb_generic_error_t): Pxcb_present_query_capabilities_reply_t; cdecl; external libxcb_present;
function xcb_present_redirect_notify_sizeof(_buffer: pointer; notifies_len: Tuint32_t): longint; cdecl; external libxcb_present;
function xcb_present_redirect_notify_notifies(R: Pxcb_present_redirect_notify_event_t): Pxcb_present_notify_t; cdecl; external libxcb_present;
function xcb_present_redirect_notify_notifies_length(R: Pxcb_present_redirect_notify_event_t): longint; cdecl; external libxcb_present;
function xcb_present_redirect_notify_notifies_iterator(R: Pxcb_present_redirect_notify_event_t): Txcb_present_notify_iterator_t; cdecl; external libxcb_present;

// === Konventiert am: 14-10-25 15:38:59 ===


implementation



end.
