unit fp_composite;

interface

uses
  fp_xcb, fp_xfixes;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}



const
  XCB_COMPOSITE_MAJOR_VERSION = 0;
  XCB_COMPOSITE_MINOR_VERSION = 4;

var
  xcb_composite_id: Txcb_extension_t; cvar;external libxcb_composite;

type
  Pxcb_composite_redirect_t = ^Txcb_composite_redirect_t;
  Txcb_composite_redirect_t = longint;

const
  XCB_COMPOSITE_REDIRECT_AUTOMATIC = 0;
  XCB_COMPOSITE_REDIRECT_MANUAL = 1;

type
  Txcb_composite_query_version_cookie_t = record
    sequence: dword;
  end;
  Pxcb_composite_query_version_cookie_t = ^Txcb_composite_query_version_cookie_t;

const
  XCB_COMPOSITE_QUERY_VERSION_ = 0;

type
  Txcb_composite_query_version_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    client_major_version: Tuint32_t;
    client_minor_version: Tuint32_t;
  end;
  Pxcb_composite_query_version_request_t = ^Txcb_composite_query_version_request_t;

  Txcb_composite_query_version_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    major_version: Tuint32_t;
    minor_version: Tuint32_t;
    pad1: array[0..15] of Tuint8_t;
  end;
  Pxcb_composite_query_version_reply_t = ^Txcb_composite_query_version_reply_t;

const
  XCB_COMPOSITE_REDIRECT_WINDOW_ = 1;

type
  Txcb_composite_redirect_window_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    update: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_composite_redirect_window_request_t = ^Txcb_composite_redirect_window_request_t;

const
  XCB_COMPOSITE_REDIRECT_SUBWINDOWS_ = 2;

type
  Txcb_composite_redirect_subwindows_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    update: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_composite_redirect_subwindows_request_t = ^Txcb_composite_redirect_subwindows_request_t;

const
  XCB_COMPOSITE_UNREDIRECT_WINDOW_ = 3;

type
  Txcb_composite_unredirect_window_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    update: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_composite_unredirect_window_request_t = ^Txcb_composite_unredirect_window_request_t;

const
  XCB_COMPOSITE_UNREDIRECT_SUBWINDOWS_ = 4;

type
  Txcb_composite_unredirect_subwindows_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    update: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_composite_unredirect_subwindows_request_t = ^Txcb_composite_unredirect_subwindows_request_t;

const
  XCB_COMPOSITE_CREATE_REGION_FROM_BORDER_CLIP_ = 5;

type
  Txcb_composite_create_region_from_border_clip_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    region: Txcb_xfixes_region_t;
    window: Txcb_window_t;
  end;
  Pxcb_composite_create_region_from_border_clip_request_t = ^Txcb_composite_create_region_from_border_clip_request_t;

const
  XCB_COMPOSITE_NAME_WINDOW_PIXMAP_ = 6;

type
  Txcb_composite_name_window_pixmap_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    pixmap: Txcb_pixmap_t;
  end;
  Pxcb_composite_name_window_pixmap_request_t = ^Txcb_composite_name_window_pixmap_request_t;

  Txcb_composite_get_overlay_window_cookie_t = record
    sequence: dword;
  end;
  Pxcb_composite_get_overlay_window_cookie_t = ^Txcb_composite_get_overlay_window_cookie_t;

const
  XCB_COMPOSITE_GET_OVERLAY_WINDOW_ = 7;

type
  Txcb_composite_get_overlay_window_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
  end;
  Pxcb_composite_get_overlay_window_request_t = ^Txcb_composite_get_overlay_window_request_t;

  Txcb_composite_get_overlay_window_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    overlay_win: Txcb_window_t;
    pad1: array[0..19] of Tuint8_t;
  end;
  Pxcb_composite_get_overlay_window_reply_t = ^Txcb_composite_get_overlay_window_reply_t;

const
  XCB_COMPOSITE_RELEASE_OVERLAY_WINDOW_ = 8;

type
  Txcb_composite_release_overlay_window_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
  end;
  Pxcb_composite_release_overlay_window_request_t = ^Txcb_composite_release_overlay_window_request_t;

function xcb_composite_query_version(c: Pxcb_connection_t; client_major_version: Tuint32_t; client_minor_version: Tuint32_t): Txcb_composite_query_version_cookie_t; cdecl; external libxcb_composite;
function xcb_composite_query_version_unchecked(c: Pxcb_connection_t; client_major_version: Tuint32_t; client_minor_version: Tuint32_t): Txcb_composite_query_version_cookie_t; cdecl; external libxcb_composite;
function xcb_composite_query_version_reply(c: Pxcb_connection_t; cookie: Txcb_composite_query_version_cookie_t; e: PPxcb_generic_error_t): Pxcb_composite_query_version_reply_t; cdecl; external libxcb_composite;
function xcb_composite_redirect_window_checked(c: Pxcb_connection_t; window: Txcb_window_t; update: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_composite;
function xcb_composite_redirect_window(c: Pxcb_connection_t; window: Txcb_window_t; update: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_composite;
function xcb_composite_redirect_subwindows_checked(c: Pxcb_connection_t; window: Txcb_window_t; update: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_composite;
function xcb_composite_redirect_subwindows(c: Pxcb_connection_t; window: Txcb_window_t; update: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_composite;
function xcb_composite_unredirect_window_checked(c: Pxcb_connection_t; window: Txcb_window_t; update: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_composite;
function xcb_composite_unredirect_window(c: Pxcb_connection_t; window: Txcb_window_t; update: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_composite;
function xcb_composite_unredirect_subwindows_checked(c: Pxcb_connection_t; window: Txcb_window_t; update: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_composite;
function xcb_composite_unredirect_subwindows(c: Pxcb_connection_t; window: Txcb_window_t; update: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_composite;
function xcb_composite_create_region_from_border_clip_checked(c: Pxcb_connection_t; region: Txcb_xfixes_region_t; window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_composite;
function xcb_composite_create_region_from_border_clip(c: Pxcb_connection_t; region: Txcb_xfixes_region_t; window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_composite;
function xcb_composite_name_window_pixmap_checked(c: Pxcb_connection_t; window: Txcb_window_t; pixmap: Txcb_pixmap_t): Txcb_void_cookie_t; cdecl; external libxcb_composite;
function xcb_composite_name_window_pixmap(c: Pxcb_connection_t; window: Txcb_window_t; pixmap: Txcb_pixmap_t): Txcb_void_cookie_t; cdecl; external libxcb_composite;
function xcb_composite_get_overlay_window(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_composite_get_overlay_window_cookie_t; cdecl; external libxcb_composite;
function xcb_composite_get_overlay_window_unchecked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_composite_get_overlay_window_cookie_t; cdecl; external libxcb_composite;
function xcb_composite_get_overlay_window_reply(c: Pxcb_connection_t; cookie: Txcb_composite_get_overlay_window_cookie_t; e: PPxcb_generic_error_t): Pxcb_composite_get_overlay_window_reply_t; cdecl; external libxcb_composite;
function xcb_composite_release_overlay_window_checked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_composite;
function xcb_composite_release_overlay_window(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_composite;

// === Konventiert am: 14-10-25 15:38:51 ===


implementation



end.
