{$IFDEF read_interface}


const
  XCB_BIGREQUESTS_MAJOR_VERSION = 0;
  XCB_BIGREQUESTS_MINOR_VERSION = 0;

var
  xcb_big_requests_id: Txcb_extension_t; cvar;external libxcb;

type
  Txcb_big_requests_enable_cookie_t = record
    sequence: dword;
  end;
  Pxcb_big_requests_enable_cookie_t = ^Txcb_big_requests_enable_cookie_t;

const
  XCB_BIG_REQUESTS_ENABLE_ = 0;

type
  Txcb_big_requests_enable_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_big_requests_enable_request_t = ^Txcb_big_requests_enable_request_t;

  Txcb_big_requests_enable_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    maximum_request_length: Tuint32_t;
  end;
  Pxcb_big_requests_enable_reply_t = ^Txcb_big_requests_enable_reply_t;

function xcb_big_requests_enable(c: Pxcb_connection_t): Txcb_big_requests_enable_cookie_t; cdecl; external libxcb;
function xcb_big_requests_enable_unchecked(c: Pxcb_connection_t): Txcb_big_requests_enable_cookie_t; cdecl; external libxcb;
function xcb_big_requests_enable_reply(c: Pxcb_connection_t; cookie: Txcb_big_requests_enable_cookie_t; e: PPxcb_generic_error_t): Pxcb_big_requests_enable_reply_t; cdecl; external libxcb;

// === Konventiert am: 14-10-25 15:38:48 ===


{$ENDIF read_interface}


{$IFDEF read_implementation}



{$ENDIF read_implementation}
