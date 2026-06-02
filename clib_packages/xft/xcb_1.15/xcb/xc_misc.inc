{$IFDEF read_interface}


const
  XCB_XCMISC_MAJOR_VERSION = 1;
  XCB_XCMISC_MINOR_VERSION = 1;

var
  xcb_xc_misc_id: Txcb_extension_t; cvar;external libxcb;

type
  Txcb_xc_misc_get_version_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xc_misc_get_version_cookie_t = ^Txcb_xc_misc_get_version_cookie_t;

const
  XCB_XC_MISC_GET_VERSION_ = 0;

type
  Txcb_xc_misc_get_version_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    client_major_version: Tuint16_t;
    client_minor_version: Tuint16_t;
  end;
  Pxcb_xc_misc_get_version_request_t = ^Txcb_xc_misc_get_version_request_t;

  Txcb_xc_misc_get_version_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    server_major_version: Tuint16_t;
    server_minor_version: Tuint16_t;
  end;
  Pxcb_xc_misc_get_version_reply_t = ^Txcb_xc_misc_get_version_reply_t;

  Txcb_xc_misc_get_xid_range_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xc_misc_get_xid_range_cookie_t = ^Txcb_xc_misc_get_xid_range_cookie_t;

const
  XCB_XC_MISC_GET_XID_RANGE_ = 1;

type
  Txcb_xc_misc_get_xid_range_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_xc_misc_get_xid_range_request_t = ^Txcb_xc_misc_get_xid_range_request_t;

  Txcb_xc_misc_get_xid_range_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    start_id: Tuint32_t;
    count: Tuint32_t;
  end;
  Pxcb_xc_misc_get_xid_range_reply_t = ^Txcb_xc_misc_get_xid_range_reply_t;

  Txcb_xc_misc_get_xid_list_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xc_misc_get_xid_list_cookie_t = ^Txcb_xc_misc_get_xid_list_cookie_t;

const
  XCB_XC_MISC_GET_XID_LIST_ = 2;

type
  Txcb_xc_misc_get_xid_list_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    count: Tuint32_t;
  end;
  Pxcb_xc_misc_get_xid_list_request_t = ^Txcb_xc_misc_get_xid_list_request_t;

  Txcb_xc_misc_get_xid_list_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    ids_len: Tuint32_t;
    pad1: array[0..19] of Tuint8_t;
  end;
  Pxcb_xc_misc_get_xid_list_reply_t = ^Txcb_xc_misc_get_xid_list_reply_t;

function xcb_xc_misc_get_version(c: Pxcb_connection_t; client_major_version: Tuint16_t; client_minor_version: Tuint16_t): Txcb_xc_misc_get_version_cookie_t; cdecl; external libxcb;
function xcb_xc_misc_get_version_unchecked(c: Pxcb_connection_t; client_major_version: Tuint16_t; client_minor_version: Tuint16_t): Txcb_xc_misc_get_version_cookie_t; cdecl; external libxcb;
function xcb_xc_misc_get_version_reply(c: Pxcb_connection_t; cookie: Txcb_xc_misc_get_version_cookie_t; e: PPxcb_generic_error_t): Pxcb_xc_misc_get_version_reply_t; cdecl; external libxcb;
function xcb_xc_misc_get_xid_range(c: Pxcb_connection_t): Txcb_xc_misc_get_xid_range_cookie_t; cdecl; external libxcb;
function xcb_xc_misc_get_xid_range_unchecked(c: Pxcb_connection_t): Txcb_xc_misc_get_xid_range_cookie_t; cdecl; external libxcb;
function xcb_xc_misc_get_xid_range_reply(c: Pxcb_connection_t; cookie: Txcb_xc_misc_get_xid_range_cookie_t; e: PPxcb_generic_error_t): Pxcb_xc_misc_get_xid_range_reply_t; cdecl; external libxcb;
function xcb_xc_misc_get_xid_list_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_xc_misc_get_xid_list(c: Pxcb_connection_t; count: Tuint32_t): Txcb_xc_misc_get_xid_list_cookie_t; cdecl; external libxcb;
function xcb_xc_misc_get_xid_list_unchecked(c: Pxcb_connection_t; count: Tuint32_t): Txcb_xc_misc_get_xid_list_cookie_t; cdecl; external libxcb;
function xcb_xc_misc_get_xid_list_ids(R: Pxcb_xc_misc_get_xid_list_reply_t): Puint32_t; cdecl; external libxcb;
function xcb_xc_misc_get_xid_list_ids_length(R: Pxcb_xc_misc_get_xid_list_reply_t): longint; cdecl; external libxcb;
function xcb_xc_misc_get_xid_list_ids_end(R: Pxcb_xc_misc_get_xid_list_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_xc_misc_get_xid_list_reply(c: Pxcb_connection_t; cookie: Txcb_xc_misc_get_xid_list_cookie_t; e: PPxcb_generic_error_t): Pxcb_xc_misc_get_xid_list_reply_t; cdecl; external libxcb;

// === Konventiert am: 14-10-25 15:39:14 ===


{$ENDIF read_interface}


{$IFDEF read_implementation}



{$ENDIF read_implementation}
