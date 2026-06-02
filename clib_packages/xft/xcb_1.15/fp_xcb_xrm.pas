unit fp_xcb_xrm;

interface

uses
  fp_xcb;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


type
  Pxcb_xrm_database_t = type Pointer;
  PPxcb_xrm_database_t = ^Pxcb_xrm_database_t;

function xcb_xrm_database_from_default(conn: Pxcb_connection_t): Pxcb_xrm_database_t; cdecl; external libxcb_xrm;
function xcb_xrm_database_from_resource_manager(conn: Pxcb_connection_t; screen: Pxcb_screen_t): Pxcb_xrm_database_t; cdecl; external libxcb_xrm;
function xcb_xrm_database_from_string(str: pchar): Pxcb_xrm_database_t; cdecl; external libxcb_xrm;
function xcb_xrm_database_from_file(filename: pchar): Pxcb_xrm_database_t; cdecl; external libxcb_xrm;
function xcb_xrm_database_to_string(database: Pxcb_xrm_database_t): pchar; cdecl; external libxcb_xrm;
procedure xcb_xrm_database_combine(source_db: Pxcb_xrm_database_t; target_db: PPxcb_xrm_database_t; override: Boolean); cdecl; external libxcb_xrm;
procedure xcb_xrm_database_put_resource(database: PPxcb_xrm_database_t; resource: pchar; value: pchar); cdecl; external libxcb_xrm;
procedure xcb_xrm_database_put_resource_line(database: PPxcb_xrm_database_t; line: pchar); cdecl; external libxcb_xrm;
procedure xcb_xrm_database_free(database: Pxcb_xrm_database_t); cdecl; external libxcb_xrm;
function xcb_xrm_resource_get_string(database: Pxcb_xrm_database_t; res_name: pchar; res_class: pchar; out_: PPchar): longint; cdecl; external libxcb_xrm;
function xcb_xrm_resource_get_long(database: Pxcb_xrm_database_t; res_name: pchar; res_class: pchar; out_: Plongint): longint; cdecl; external libxcb_xrm;
function xcb_xrm_resource_get_bool(database: Pxcb_xrm_database_t; res_name: pchar; res_class: pchar; out_: PBoolean): longint; cdecl; external libxcb_xrm;

// === Konventiert am: 14-10-25 15:39:11 ===


implementation



end.
