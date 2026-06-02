unit fp_xcb_renderutil;

interface

uses
  fp_xcb, fp_render;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


type
  Pxcb_pict_format_t = ^Txcb_pict_format_t;
  Txcb_pict_format_t = longint;

const
  XCB_PICT_FORMAT_ID = 1 shl 0;
  XCB_PICT_FORMAT_TYPE = 1 shl 1;
  XCB_PICT_FORMAT_DEPTH = 1 shl 2;
  XCB_PICT_FORMAT_RED = 1 shl 3;
  XCB_PICT_FORMAT_RED_MASK = 1 shl 4;
  XCB_PICT_FORMAT_GREEN = 1 shl 5;
  XCB_PICT_FORMAT_GREEN_MASK = 1 shl 6;
  XCB_PICT_FORMAT_BLUE = 1 shl 7;
  XCB_PICT_FORMAT_BLUE_MASK = 1 shl 8;
  XCB_PICT_FORMAT_ALPHA = 1 shl 9;
  XCB_PICT_FORMAT_ALPHA_MASK = 1 shl 10;
  XCB_PICT_FORMAT_COLORMAP = 1 shl 11;

type
  Pxcb_pict_standard_t = ^Txcb_pict_standard_t;
  Txcb_pict_standard_t = longint;

const
  XCB_PICT_STANDARD_ARGB_32 = 0;
  XCB_PICT_STANDARD_RGB_24 = 1;
  XCB_PICT_STANDARD_A_8 = 2;
  XCB_PICT_STANDARD_A_4 = 3;
  XCB_PICT_STANDARD_A_1 = 4;


function xcb_render_util_find_visual_format(formats: Pxcb_render_query_pict_formats_reply_t; visual: Txcb_visualid_t): Pxcb_render_pictvisual_t; cdecl; external libxcb_render_util;
function xcb_render_util_find_format(formats: Pxcb_render_query_pict_formats_reply_t; mask: dword; ptemplate: Pxcb_render_pictforminfo_t; count: longint): Pxcb_render_pictforminfo_t; cdecl; external libxcb_render_util;
function xcb_render_util_find_standard_format(formats: Pxcb_render_query_pict_formats_reply_t; format: Txcb_pict_standard_t): Pxcb_render_pictforminfo_t; cdecl; external libxcb_render_util;
function xcb_render_util_query_version(c: Pxcb_connection_t): Pxcb_render_query_version_reply_t; cdecl; external libxcb_render_util;
function xcb_render_util_query_formats(c: Pxcb_connection_t): Pxcb_render_query_pict_formats_reply_t; cdecl; external libxcb_render_util;
function xcb_render_util_disconnect(c: Pxcb_connection_t): longint; cdecl; external libxcb_render_util;

type
  Pxcb_render_util_composite_text_stream_t = type Pointer;

function xcb_render_util_composite_text_stream(initial_glyphset: Txcb_render_glyphset_t; total_glyphs: Tuint32_t; total_glyphset_changes: Tuint32_t): Pxcb_render_util_composite_text_stream_t; cdecl; external libxcb_render_util;
procedure xcb_render_util_glyphs_8(stream: Pxcb_render_util_composite_text_stream_t; dx: Tint16_t; dy: Tint16_t; count: Tuint32_t; glyphs: Puint8_t); cdecl; external libxcb_render_util;
procedure xcb_render_util_glyphs_16(stream: Pxcb_render_util_composite_text_stream_t; dx: Tint16_t; dy: Tint16_t; count: Tuint32_t; glyphs: Puint16_t); cdecl; external libxcb_render_util;
procedure xcb_render_util_glyphs_32(stream: Pxcb_render_util_composite_text_stream_t; dx: Tint16_t; dy: Tint16_t; count: Tuint32_t; glyphs: Puint32_t); cdecl; external libxcb_render_util;
procedure xcb_render_util_change_glyphset(stream: Pxcb_render_util_composite_text_stream_t; glyphset: Txcb_render_glyphset_t); cdecl; external libxcb_render_util;
function xcb_render_util_composite_text(xc: Pxcb_connection_t; op: Tuint8_t; src: Txcb_render_picture_t; dst: Txcb_render_picture_t; mask_format: Txcb_render_pictformat_t;
  src_x: Tint16_t; src_y: Tint16_t; stream: Pxcb_render_util_composite_text_stream_t): Txcb_void_cookie_t; cdecl; external libxcb_render_util;
function xcb_render_util_composite_text_checked(xc: Pxcb_connection_t; op: Tuint8_t; src: Txcb_render_picture_t; dst: Txcb_render_picture_t; mask_format: Txcb_render_pictformat_t;
  src_x: Tint16_t; src_y: Tint16_t; stream: Pxcb_render_util_composite_text_stream_t): Txcb_void_cookie_t; cdecl; external libxcb_render_util;
procedure xcb_render_util_composite_text_free(stream: Pxcb_render_util_composite_text_stream_t); cdecl; external libxcb_render_util;

// === Konventiert am: 14-10-25 15:39:08 ===


implementation



end.
