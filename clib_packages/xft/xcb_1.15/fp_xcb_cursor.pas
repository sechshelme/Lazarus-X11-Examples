unit fp_xcb_cursor;

interface

uses
  fp_xcb;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


type
  Pxcb_cursor_context_t = type Pointer;
  PPxcb_cursor_context_t = ^Pxcb_cursor_context_t;

function xcb_cursor_context_new(conn: Pxcb_connection_t; screen: Pxcb_screen_t; ctx: PPxcb_cursor_context_t): longint; cdecl; external libxcb_cursor;
function xcb_cursor_load_cursor(ctx: Pxcb_cursor_context_t; name: pchar): Txcb_cursor_t; cdecl; external libxcb_cursor;
procedure xcb_cursor_context_free(ctx: Pxcb_cursor_context_t); cdecl; external libxcb_cursor;

// === Konventiert am: 14-10-25 15:39:05 ===


implementation



end.
