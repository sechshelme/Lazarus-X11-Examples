{$IFDEF read_interface}


type
  Txcb_protocol_request_t = record
    count: Tsize_t;
    ext: Pxcb_extension_t;
    opcode: Tuint8_t;
    isvoid: Tuint8_t;
  end;
  Pxcb_protocol_request_t = ^Txcb_protocol_request_t;

type
  Txcb_send_request_flags_t = longint;

const
  XCB_REQUEST_CHECKED = 1 shl 0;
  XCB_REQUEST_RAW = 1 shl 1;
  XCB_REQUEST_DISCARD_REPLY = 1 shl 2;
  XCB_REQUEST_REPLY_FDS = 1 shl 3;

function xcb_send_request(c: Pxcb_connection_t; flags: longint; vector: Piovec; request: Pxcb_protocol_request_t): dword; cdecl; external libxcb;
function xcb_send_request_with_fds(c: Pxcb_connection_t; flags: longint; vector: Piovec; request: Pxcb_protocol_request_t; num_fds: dword;
  fds: Plongint): dword; cdecl; external libxcb;
function xcb_send_request64(c: Pxcb_connection_t; flags: longint; vector: Piovec; request: Pxcb_protocol_request_t): Tuint64_t; cdecl; external libxcb;
function xcb_send_request_with_fds64(c: Pxcb_connection_t; flags: longint; vector: Piovec; request: Pxcb_protocol_request_t; num_fds: dword;
  fds: Plongint): Tuint64_t; cdecl; external libxcb;
procedure xcb_send_fd(c: Pxcb_connection_t; fd: longint); cdecl; external libxcb;

type
  Treturn_socket_proc = procedure(closure: pointer); cdecl;

function xcb_take_socket(c: Pxcb_connection_t; return_socket: Treturn_socket_proc; closure: pointer; flags: longint; sent: Puint64_t): longint; cdecl; external libxcb;
function xcb_writev(c: Pxcb_connection_t; vector: Piovec; count: longint; requests: Tuint64_t): longint; cdecl; external libxcb;
function xcb_wait_for_reply(c: Pxcb_connection_t; request: dword; e: PPxcb_generic_error_t): pointer; cdecl; external libxcb;
function xcb_wait_for_reply64(c: Pxcb_connection_t; request: Tuint64_t; e: PPxcb_generic_error_t): pointer; cdecl; external libxcb;
function xcb_poll_for_reply(c: Pxcb_connection_t; request: dword; reply: Ppointer; error: PPxcb_generic_error_t): longint; cdecl; external libxcb;
function xcb_poll_for_reply64(c: Pxcb_connection_t; request: Tuint64_t; reply: Ppointer; error: PPxcb_generic_error_t): longint; cdecl; external libxcb;
function xcb_get_reply_fds(c: Pxcb_connection_t; reply: pointer; replylen: Tsize_t): Plongint; cdecl; external libxcb;
function xcb_popcount(mask: Tuint32_t): longint; cdecl; external libxcb;
function xcb_sumof(list: Puint8_t; len: longint): longint; cdecl; external libxcb;

// === Konventiert am: 9-10-25 19:25:03 ===


{$ENDIF read_interface}


{$IFDEF read_implementation}



{$ENDIF read_implementation}
