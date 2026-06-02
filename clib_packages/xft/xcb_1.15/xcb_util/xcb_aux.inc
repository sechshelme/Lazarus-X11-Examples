{$IFDEF read_interface}

function xcb_aux_get_depth(c: Pxcb_connection_t; screen: Pxcb_screen_t): Tuint8_t; cdecl; external libxcb_util;
function xcb_aux_get_depth_of_visual(screen: Pxcb_screen_t; id: Txcb_visualid_t): Tuint8_t; cdecl; external libxcb_util;
function xcb_aux_get_screen(c: Pxcb_connection_t; screen: longint): Pxcb_screen_t; cdecl; external libxcb_util;
function xcb_aux_get_visualtype(c: Pxcb_connection_t; screen: longint; vid: Txcb_visualid_t): Pxcb_visualtype_t; cdecl; external libxcb_util;
function xcb_aux_find_visual_by_id(screen: Pxcb_screen_t; id: Txcb_visualid_t): Pxcb_visualtype_t; cdecl; external libxcb_util;
function xcb_aux_find_visual_by_attrs(screen: Pxcb_screen_t; class_: Tint8_t; depth: Tint8_t): Pxcb_visualtype_t; cdecl; external libxcb_util;
procedure xcb_aux_sync(c: Pxcb_connection_t); cdecl; external libxcb_util;

type
  Pxcb_params_cw_t = ^Txcb_params_cw_t;

  Txcb_params_cw_t = record
    back_pixmap: Tuint32_t;
    back_pixel: Tuint32_t;
    border_pixmap: Tuint32_t;
    border_pixel: Tuint32_t;
    bit_gravity: Tuint32_t;
    win_gravity: Tuint32_t;
    backing_store: Tuint32_t;
    backing_planes: Tuint32_t;
    backing_pixel: Tuint32_t;
    override_redirect: Tuint32_t;
    save_under: Tuint32_t;
    event_mask: Tuint32_t;
    dont_propagate: Tuint32_t;
    colormap: Tuint32_t;
    cursor: Tuint32_t;
  end;

function xcb_aux_create_window(c: Pxcb_connection_t; depth: Tuint8_t; wid: Txcb_window_t; parent: Txcb_window_t; x: Tint16_t;
  y: Tint16_t; width: Tuint16_t; height: Tuint16_t; border_width: Tuint16_t; class_: Tuint16_t;
  visual: Txcb_visualid_t; mask: Tuint32_t; params: Pxcb_params_cw_t): Txcb_void_cookie_t; cdecl; external libxcb_util;
function xcb_aux_create_window_checked(c: Pxcb_connection_t; depth: Tuint8_t; wid: Txcb_window_t; parent: Txcb_window_t; x: Tint16_t;
  y: Tint16_t; width: Tuint16_t; height: Tuint16_t; border_width: Tuint16_t; class_: Tuint16_t;
  visual: Txcb_visualid_t; mask: Tuint32_t; params: Pxcb_params_cw_t): Txcb_void_cookie_t; cdecl; external libxcb_util;
function xcb_aux_change_window_attributes(c: Pxcb_connection_t; window: Txcb_window_t; mask: Tuint32_t; params: Pxcb_params_cw_t): Txcb_void_cookie_t; cdecl; external libxcb_util;
function xcb_aux_change_window_attributes_checked(c: Pxcb_connection_t; window: Txcb_window_t; mask: Tuint32_t; params: Pxcb_params_cw_t): Txcb_void_cookie_t; cdecl; external libxcb_util;

type
  Txcb_params_configure_window_t = record
    x: Tint32_t;
    y: Tint32_t;
    width: Tuint32_t;
    height: Tuint32_t;
    border_width: Tuint32_t;
    sibling: Tuint32_t;
    stack_mode: Tuint32_t;
  end;
  Pxcb_params_configure_window_t = ^Txcb_params_configure_window_t;

function xcb_aux_configure_window(c: Pxcb_connection_t; window: Txcb_window_t; mask: Tuint16_t; params: Pxcb_params_configure_window_t): Txcb_void_cookie_t; cdecl; external libxcb_util;

type
  Txcb_params_gc_t = record
    _function: Tuint32_t;
    plane_mask: Tuint32_t;
    foreground: Tuint32_t;
    background: Tuint32_t;
    line_width: Tuint32_t;
    line_style: Tuint32_t;
    cap_style: Tuint32_t;
    join_style: Tuint32_t;
    fill_style: Tuint32_t;
    fill_rule: Tuint32_t;
    tile: Tuint32_t;
    stipple: Tuint32_t;
    tile_stipple_origin_x: Tuint32_t;
    tile_stipple_origin_y: Tuint32_t;
    font: Tuint32_t;
    subwindow_mode: Tuint32_t;
    graphics_exposures: Tuint32_t;
    clip_originX: Tuint32_t;
    clip_originY: Tuint32_t;
    mask: Tuint32_t;
    dash_offset: Tuint32_t;
    dash_list: Tuint32_t;
    arc_mode: Tuint32_t;
  end;
  Pxcb_params_gc_t = ^Txcb_params_gc_t;

function xcb_aux_create_gc(c: Pxcb_connection_t; cid: Txcb_gcontext_t; drawable: Txcb_drawable_t; mask: Tuint32_t; params: Pxcb_params_gc_t): Txcb_void_cookie_t; cdecl; external libxcb_util;
function xcb_aux_create_gc_checked(c: Pxcb_connection_t; gid: Txcb_gcontext_t; drawable: Txcb_drawable_t; mask: Tuint32_t; params: Pxcb_params_gc_t): Txcb_void_cookie_t; cdecl; external libxcb_util;
function xcb_aux_change_gc(c: Pxcb_connection_t; gc: Txcb_gcontext_t; mask: Tuint32_t; params: Pxcb_params_gc_t): Txcb_void_cookie_t; cdecl; external libxcb_util;
function xcb_aux_change_gc_checked(c: Pxcb_connection_t; gc: Txcb_gcontext_t; mask: Tuint32_t; params: Pxcb_params_gc_t): Txcb_void_cookie_t; cdecl; external libxcb_util;

type
  Txcb_params_keyboard_t = record
    key_click_percent: Tuint32_t;
    bell_percent: Tuint32_t;
    bell_pitch: Tuint32_t;
    bell_duration: Tuint32_t;
    led: Tuint32_t;
    led_mode: Tuint32_t;
    key: Tuint32_t;
    auto_repeat_mode: Tuint32_t;
  end;
  Pxcb_params_keyboard_t = ^Txcb_params_keyboard_t;

function xcb_aux_change_keyboard_control(c: Pxcb_connection_t; mask: Tuint32_t; params: Pxcb_params_keyboard_t): Txcb_void_cookie_t; cdecl; external libxcb_util;
function xcb_aux_parse_color(color_name: pchar; red: Puint16_t; green: Puint16_t; blue: Puint16_t): longint; cdecl; external libxcb_util;
function xcb_aux_set_line_attributes_checked(dpy: Pxcb_connection_t; gc: Txcb_gcontext_t; linewidth: Tuint16_t; linestyle: Tint32_t; capstyle: Tint32_t;
  joinstyle: Tint32_t): Txcb_void_cookie_t; cdecl; external libxcb_util;
function xcb_aux_clear_window(dpy: Pxcb_connection_t; w: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_util;

// === Konventiert am: 10-10-25 19:37:01 ===


{$ENDIF read_interface}


{$IFDEF read_implementation}



{$ENDIF read_implementation}
