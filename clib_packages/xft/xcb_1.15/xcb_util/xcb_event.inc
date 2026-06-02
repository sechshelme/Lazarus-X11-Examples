{$IFDEF read_interface}


const
  XCB_EVENT_RESPONSE_TYPE_MASK = $7f;

function xcb_event_get_label(_type: Tuint8_t): pchar; cdecl; external libxcb_util;
function xcb_event_get_error_label(_type: Tuint8_t): pchar; cdecl; external libxcb_util;
function xcb_event_get_request_label(_type: Tuint8_t): pchar; cdecl; external libxcb_util;

// === Konventiert am: 10-10-25 19:37:09 ===


{$ENDIF read_interface}


{$IFDEF read_implementation}


{$ENDIF read_implementation}
