unit fp_xvmc;

interface

uses
  fp_xcb, fp_xv;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


const
  XCB_XVMC_MAJOR_VERSION = 1;
  XCB_XVMC_MINOR_VERSION = 1;

var
  xcb_xvmc_id: Txcb_extension_t; cvar;external libxcb_xvmc;

type
  Pxcb_xvmc_context_t = ^Txcb_xvmc_context_t;
  Txcb_xvmc_context_t = Tuint32_t;

  Txcb_xvmc_context_iterator_t = record
    data: Pxcb_xvmc_context_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xvmc_context_iterator_t = ^Txcb_xvmc_context_iterator_t;

  Pxcb_xvmc_surface_t = ^Txcb_xvmc_surface_t;
  Txcb_xvmc_surface_t = Tuint32_t;

  Txcb_xvmc_surface_iterator_t = record
    data: Pxcb_xvmc_surface_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xvmc_surface_iterator_t = ^Txcb_xvmc_surface_iterator_t;

  Pxcb_xvmc_subpicture_t = ^Txcb_xvmc_subpicture_t;
  Txcb_xvmc_subpicture_t = Tuint32_t;

  Txcb_xvmc_subpicture_iterator_t = record
    data: Pxcb_xvmc_subpicture_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xvmc_subpicture_iterator_t = ^Txcb_xvmc_subpicture_iterator_t;

  Txcb_xvmc_surface_info_t = record
    id: Txcb_xvmc_surface_t;
    chroma_format: Tuint16_t;
    pad0: Tuint16_t;
    max_width: Tuint16_t;
    max_height: Tuint16_t;
    subpicture_max_width: Tuint16_t;
    subpicture_max_height: Tuint16_t;
    mc_type: Tuint32_t;
    flags: Tuint32_t;
  end;
  Pxcb_xvmc_surface_info_t = ^Txcb_xvmc_surface_info_t;

  Txcb_xvmc_surface_info_iterator_t = record
    data: Pxcb_xvmc_surface_info_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xvmc_surface_info_iterator_t = ^Txcb_xvmc_surface_info_iterator_t;

  Txcb_xvmc_query_version_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xvmc_query_version_cookie_t = ^Txcb_xvmc_query_version_cookie_t;

const
  XCB_XVMC_QUERY_VERSION_ = 0;

type
  Txcb_xvmc_query_version_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_xvmc_query_version_request_t = ^Txcb_xvmc_query_version_request_t;

  Txcb_xvmc_query_version_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    major: Tuint32_t;
    minor: Tuint32_t;
  end;
  Pxcb_xvmc_query_version_reply_t = ^Txcb_xvmc_query_version_reply_t;

  Txcb_xvmc_list_surface_types_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xvmc_list_surface_types_cookie_t = ^Txcb_xvmc_list_surface_types_cookie_t;

const
  XCB_XVMC_LIST_SURFACE_TYPES_ = 1;

type
  Txcb_xvmc_list_surface_types_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    port_id: Txcb_xv_port_t;
  end;
  Pxcb_xvmc_list_surface_types_request_t = ^Txcb_xvmc_list_surface_types_request_t;

  Txcb_xvmc_list_surface_types_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    num: Tuint32_t;
    pad1: array[0..19] of Tuint8_t;
  end;
  Pxcb_xvmc_list_surface_types_reply_t = ^Txcb_xvmc_list_surface_types_reply_t;

  Txcb_xvmc_create_context_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xvmc_create_context_cookie_t = ^Txcb_xvmc_create_context_cookie_t;

const
  XCB_XVMC_CREATE_CONTEXT_ = 2;

type
  Txcb_xvmc_create_context_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    context_id: Txcb_xvmc_context_t;
    port_id: Txcb_xv_port_t;
    surface_id: Txcb_xvmc_surface_t;
    width: Tuint16_t;
    height: Tuint16_t;
    flags: Tuint32_t;
  end;
  Pxcb_xvmc_create_context_request_t = ^Txcb_xvmc_create_context_request_t;

  Txcb_xvmc_create_context_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    width_actual: Tuint16_t;
    height_actual: Tuint16_t;
    flags_return: Tuint32_t;
    pad1: array[0..19] of Tuint8_t;
  end;
  Pxcb_xvmc_create_context_reply_t = ^Txcb_xvmc_create_context_reply_t;

const
  XCB_XVMC_DESTROY_CONTEXT_ = 3;

type
  Txcb_xvmc_destroy_context_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    context_id: Txcb_xvmc_context_t;
  end;
  Pxcb_xvmc_destroy_context_request_t = ^Txcb_xvmc_destroy_context_request_t;

  Txcb_xvmc_create_surface_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xvmc_create_surface_cookie_t = ^Txcb_xvmc_create_surface_cookie_t;

const
  XCB_XVMC_CREATE_SURFACE_ = 4;

type
  Txcb_xvmc_create_surface_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    surface_id: Txcb_xvmc_surface_t;
    context_id: Txcb_xvmc_context_t;
  end;
  Pxcb_xvmc_create_surface_request_t = ^Txcb_xvmc_create_surface_request_t;

  Txcb_xvmc_create_surface_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    pad1: array[0..23] of Tuint8_t;
  end;
  Pxcb_xvmc_create_surface_reply_t = ^Txcb_xvmc_create_surface_reply_t;

const
  XCB_XVMC_DESTROY_SURFACE_ = 5;

type
  Txcb_xvmc_destroy_surface_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    surface_id: Txcb_xvmc_surface_t;
  end;
  Pxcb_xvmc_destroy_surface_request_t = ^Txcb_xvmc_destroy_surface_request_t;

  Txcb_xvmc_create_subpicture_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xvmc_create_subpicture_cookie_t = ^Txcb_xvmc_create_subpicture_cookie_t;

const
  XCB_XVMC_CREATE_SUBPICTURE_ = 6;

type
  Txcb_xvmc_create_subpicture_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    subpicture_id: Txcb_xvmc_subpicture_t;
    context: Txcb_xvmc_context_t;
    xvimage_id: Tuint32_t;
    width: Tuint16_t;
    height: Tuint16_t;
  end;
  Pxcb_xvmc_create_subpicture_request_t = ^Txcb_xvmc_create_subpicture_request_t;

  Txcb_xvmc_create_subpicture_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    width_actual: Tuint16_t;
    height_actual: Tuint16_t;
    num_palette_entries: Tuint16_t;
    entry_bytes: Tuint16_t;
    component_order: array[0..3] of Tuint8_t;
    pad1: array[0..11] of Tuint8_t;
  end;
  Pxcb_xvmc_create_subpicture_reply_t = ^Txcb_xvmc_create_subpicture_reply_t;

const
  XCB_XVMC_DESTROY_SUBPICTURE_ = 7;

type
  Txcb_xvmc_destroy_subpicture_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    subpicture_id: Txcb_xvmc_subpicture_t;
  end;
  Pxcb_xvmc_destroy_subpicture_request_t = ^Txcb_xvmc_destroy_subpicture_request_t;

  Txcb_xvmc_list_subpicture_types_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xvmc_list_subpicture_types_cookie_t = ^Txcb_xvmc_list_subpicture_types_cookie_t;

const
  XCB_XVMC_LIST_SUBPICTURE_TYPES_ = 8;

type
  Txcb_xvmc_list_subpicture_types_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    port_id: Txcb_xv_port_t;
    surface_id: Txcb_xvmc_surface_t;
  end;
  Pxcb_xvmc_list_subpicture_types_request_t = ^Txcb_xvmc_list_subpicture_types_request_t;

  Txcb_xvmc_list_subpicture_types_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    num: Tuint32_t;
    pad1: array[0..19] of Tuint8_t;
  end;
  Pxcb_xvmc_list_subpicture_types_reply_t = ^Txcb_xvmc_list_subpicture_types_reply_t;

procedure xcb_xvmc_context_next(i: Pxcb_xvmc_context_iterator_t); cdecl; external libxcb_xvmc;
function xcb_xvmc_context_end(i: Txcb_xvmc_context_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xvmc;
procedure xcb_xvmc_surface_next(i: Pxcb_xvmc_surface_iterator_t); cdecl; external libxcb_xvmc;
function xcb_xvmc_surface_end(i: Txcb_xvmc_surface_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xvmc;
procedure xcb_xvmc_subpicture_next(i: Pxcb_xvmc_subpicture_iterator_t); cdecl; external libxcb_xvmc;
function xcb_xvmc_subpicture_end(i: Txcb_xvmc_subpicture_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xvmc;
procedure xcb_xvmc_surface_info_next(i: Pxcb_xvmc_surface_info_iterator_t); cdecl; external libxcb_xvmc;
function xcb_xvmc_surface_info_end(i: Txcb_xvmc_surface_info_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_query_version(c: Pxcb_connection_t): Txcb_xvmc_query_version_cookie_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_query_version_unchecked(c: Pxcb_connection_t): Txcb_xvmc_query_version_cookie_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_query_version_reply(c: Pxcb_connection_t; cookie: Txcb_xvmc_query_version_cookie_t; e: PPxcb_generic_error_t): Pxcb_xvmc_query_version_reply_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_list_surface_types_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xvmc;
function xcb_xvmc_list_surface_types(c: Pxcb_connection_t; port_id: Txcb_xv_port_t): Txcb_xvmc_list_surface_types_cookie_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_list_surface_types_unchecked(c: Pxcb_connection_t; port_id: Txcb_xv_port_t): Txcb_xvmc_list_surface_types_cookie_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_list_surface_types_surfaces(R: Pxcb_xvmc_list_surface_types_reply_t): Pxcb_xvmc_surface_info_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_list_surface_types_surfaces_length(R: Pxcb_xvmc_list_surface_types_reply_t): longint; cdecl; external libxcb_xvmc;
function xcb_xvmc_list_surface_types_surfaces_iterator(R: Pxcb_xvmc_list_surface_types_reply_t): Txcb_xvmc_surface_info_iterator_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_list_surface_types_reply(c: Pxcb_connection_t; cookie: Txcb_xvmc_list_surface_types_cookie_t; e: PPxcb_generic_error_t): Pxcb_xvmc_list_surface_types_reply_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_create_context_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xvmc;
function xcb_xvmc_create_context(c: Pxcb_connection_t; context_id: Txcb_xvmc_context_t; port_id: Txcb_xv_port_t; surface_id: Txcb_xvmc_surface_t; width: Tuint16_t;
  height: Tuint16_t; flags: Tuint32_t): Txcb_xvmc_create_context_cookie_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_create_context_unchecked(c: Pxcb_connection_t; context_id: Txcb_xvmc_context_t; port_id: Txcb_xv_port_t; surface_id: Txcb_xvmc_surface_t; width: Tuint16_t;
  height: Tuint16_t; flags: Tuint32_t): Txcb_xvmc_create_context_cookie_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_create_context_priv_data(R: Pxcb_xvmc_create_context_reply_t): Puint32_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_create_context_priv_data_length(R: Pxcb_xvmc_create_context_reply_t): longint; cdecl; external libxcb_xvmc;
function xcb_xvmc_create_context_priv_data_end(R: Pxcb_xvmc_create_context_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_create_context_reply(c: Pxcb_connection_t; cookie: Txcb_xvmc_create_context_cookie_t; e: PPxcb_generic_error_t): Pxcb_xvmc_create_context_reply_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_destroy_context_checked(c: Pxcb_connection_t; context_id: Txcb_xvmc_context_t): Txcb_void_cookie_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_destroy_context(c: Pxcb_connection_t; context_id: Txcb_xvmc_context_t): Txcb_void_cookie_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_create_surface_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xvmc;
function xcb_xvmc_create_surface(c: Pxcb_connection_t; surface_id: Txcb_xvmc_surface_t; context_id: Txcb_xvmc_context_t): Txcb_xvmc_create_surface_cookie_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_create_surface_unchecked(c: Pxcb_connection_t; surface_id: Txcb_xvmc_surface_t; context_id: Txcb_xvmc_context_t): Txcb_xvmc_create_surface_cookie_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_create_surface_priv_data(R: Pxcb_xvmc_create_surface_reply_t): Puint32_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_create_surface_priv_data_length(R: Pxcb_xvmc_create_surface_reply_t): longint; cdecl; external libxcb_xvmc;
function xcb_xvmc_create_surface_priv_data_end(R: Pxcb_xvmc_create_surface_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_create_surface_reply(c: Pxcb_connection_t; cookie: Txcb_xvmc_create_surface_cookie_t; e: PPxcb_generic_error_t): Pxcb_xvmc_create_surface_reply_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_destroy_surface_checked(c: Pxcb_connection_t; surface_id: Txcb_xvmc_surface_t): Txcb_void_cookie_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_destroy_surface(c: Pxcb_connection_t; surface_id: Txcb_xvmc_surface_t): Txcb_void_cookie_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_create_subpicture_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xvmc;
function xcb_xvmc_create_subpicture(c: Pxcb_connection_t; subpicture_id: Txcb_xvmc_subpicture_t; context: Txcb_xvmc_context_t; xvimage_id: Tuint32_t; width: Tuint16_t;
  height: Tuint16_t): Txcb_xvmc_create_subpicture_cookie_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_create_subpicture_unchecked(c: Pxcb_connection_t; subpicture_id: Txcb_xvmc_subpicture_t; context: Txcb_xvmc_context_t; xvimage_id: Tuint32_t; width: Tuint16_t;
  height: Tuint16_t): Txcb_xvmc_create_subpicture_cookie_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_create_subpicture_priv_data(R: Pxcb_xvmc_create_subpicture_reply_t): Puint32_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_create_subpicture_priv_data_length(R: Pxcb_xvmc_create_subpicture_reply_t): longint; cdecl; external libxcb_xvmc;
function xcb_xvmc_create_subpicture_priv_data_end(R: Pxcb_xvmc_create_subpicture_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_create_subpicture_reply(c: Pxcb_connection_t; cookie: Txcb_xvmc_create_subpicture_cookie_t; e: PPxcb_generic_error_t): Pxcb_xvmc_create_subpicture_reply_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_destroy_subpicture_checked(c: Pxcb_connection_t; subpicture_id: Txcb_xvmc_subpicture_t): Txcb_void_cookie_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_destroy_subpicture(c: Pxcb_connection_t; subpicture_id: Txcb_xvmc_subpicture_t): Txcb_void_cookie_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_list_subpicture_types_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xvmc;
function xcb_xvmc_list_subpicture_types(c: Pxcb_connection_t; port_id: Txcb_xv_port_t; surface_id: Txcb_xvmc_surface_t): Txcb_xvmc_list_subpicture_types_cookie_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_list_subpicture_types_unchecked(c: Pxcb_connection_t; port_id: Txcb_xv_port_t; surface_id: Txcb_xvmc_surface_t): Txcb_xvmc_list_subpicture_types_cookie_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_list_subpicture_types_types(R: Pxcb_xvmc_list_subpicture_types_reply_t): Pxcb_xv_image_format_info_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_list_subpicture_types_types_length(R: Pxcb_xvmc_list_subpicture_types_reply_t): longint; cdecl; external libxcb_xvmc;
function xcb_xvmc_list_subpicture_types_types_iterator(R: Pxcb_xvmc_list_subpicture_types_reply_t): Txcb_xv_image_format_info_iterator_t; cdecl; external libxcb_xvmc;
function xcb_xvmc_list_subpicture_types_reply(c: Pxcb_connection_t; cookie: Txcb_xvmc_list_subpicture_types_cookie_t; e: PPxcb_generic_error_t): Pxcb_xvmc_list_subpicture_types_reply_t; cdecl; external libxcb_xvmc;

// === Konventiert am: 14-10-25 15:39:22 ===


implementation



end.
