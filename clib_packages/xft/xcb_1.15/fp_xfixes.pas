unit fp_xfixes;

interface

uses
  fp_xcb, fp_render, fp_shape;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


const
  XCB_XFIXES_MAJOR_VERSION = 6;
  XCB_XFIXES_MINOR_VERSION = 0;

var
  xcb_xfixes_id: Txcb_extension_t; cvar;external libxcb_xfixes;

type
  Txcb_xfixes_query_version_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xfixes_query_version_cookie_t = ^Txcb_xfixes_query_version_cookie_t;

const
  XCB_XFIXES_QUERY_VERSION_ = 0;

type
  Txcb_xfixes_query_version_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    client_major_version: Tuint32_t;
    client_minor_version: Tuint32_t;
  end;
  Pxcb_xfixes_query_version_request_t = ^Txcb_xfixes_query_version_request_t;

  Txcb_xfixes_query_version_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    major_version: Tuint32_t;
    minor_version: Tuint32_t;
    pad1: array[0..15] of Tuint8_t;
  end;
  Pxcb_xfixes_query_version_reply_t = ^Txcb_xfixes_query_version_reply_t;

type
  Pxcb_xfixes_save_set_mode_t = ^Txcb_xfixes_save_set_mode_t;
  Txcb_xfixes_save_set_mode_t = longint;

const
  XCB_XFIXES_SAVE_SET_MODE_INSERT = 0;
  XCB_XFIXES_SAVE_SET_MODE_DELETE = 1;

type
  Pxcb_xfixes_save_set_target_t = ^Txcb_xfixes_save_set_target_t;
  Txcb_xfixes_save_set_target_t = longint;

const
  XCB_XFIXES_SAVE_SET_TARGET_NEAREST = 0;
  XCB_XFIXES_SAVE_SET_TARGET_ROOT = 1;

type
  Pxcb_xfixes_save_set_mapping_t = ^Txcb_xfixes_save_set_mapping_t;
  Txcb_xfixes_save_set_mapping_t = longint;

const
  XCB_XFIXES_SAVE_SET_MAPPING_MAP = 0;
  XCB_XFIXES_SAVE_SET_MAPPING_UNMAP = 1;

const
  XCB_XFIXES_CHANGE_SAVE_SET_ = 1;

type
  Txcb_xfixes_change_save_set_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    mode: Tuint8_t;
    target: Tuint8_t;
    map: Tuint8_t;
    pad0: Tuint8_t;
    window: Txcb_window_t;
  end;
  Pxcb_xfixes_change_save_set_request_t = ^Txcb_xfixes_change_save_set_request_t;

type
  Pxcb_xfixes_selection_event_t = ^Txcb_xfixes_selection_event_t;
  Txcb_xfixes_selection_event_t = longint;

const
  XCB_XFIXES_SELECTION_EVENT_SET_SELECTION_OWNER = 0;
  XCB_XFIXES_SELECTION_EVENT_SELECTION_WINDOW_DESTROY = 1;
  XCB_XFIXES_SELECTION_EVENT_SELECTION_CLIENT_CLOSE = 2;

type
  Pxcb_xfixes_selection_event_mask_t = ^Txcb_xfixes_selection_event_mask_t;
  Txcb_xfixes_selection_event_mask_t = longint;

const
  XCB_XFIXES_SELECTION_EVENT_MASK_SET_SELECTION_OWNER = 1;
  XCB_XFIXES_SELECTION_EVENT_MASK_SELECTION_WINDOW_DESTROY = 2;
  XCB_XFIXES_SELECTION_EVENT_MASK_SELECTION_CLIENT_CLOSE = 4;

const
  XCB_XFIXES_SELECTION_NOTIFY = 0;

type
  Txcb_xfixes_selection_notify_event_t = record
    response_type: Tuint8_t;
    subtype: Tuint8_t;
    sequence: Tuint16_t;
    window: Txcb_window_t;
    owner: Txcb_window_t;
    selection: Txcb_atom_t;
    timestamp: Txcb_timestamp_t;
    selection_timestamp: Txcb_timestamp_t;
    pad0: array[0..7] of Tuint8_t;
  end;
  Pxcb_xfixes_selection_notify_event_t = ^Txcb_xfixes_selection_notify_event_t;

const
  XCB_XFIXES_SELECT_SELECTION_INPUT_ = 2;

type
  Txcb_xfixes_select_selection_input_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    selection: Txcb_atom_t;
    event_mask: Tuint32_t;
  end;
  Pxcb_xfixes_select_selection_input_request_t = ^Txcb_xfixes_select_selection_input_request_t;

type
  Pxcb_xfixes_cursor_notify_t = ^Txcb_xfixes_cursor_notify_t;
  Txcb_xfixes_cursor_notify_t = longint;

const
  XCB_XFIXES_CURSOR_NOTIFY_DISPLAY_CURSOR = 0;

type
  Pxcb_xfixes_cursor_notify_mask_t = ^Txcb_xfixes_cursor_notify_mask_t;
  Txcb_xfixes_cursor_notify_mask_t = longint;

const
  XCB_XFIXES_CURSOR_NOTIFY_MASK_DISPLAY_CURSOR = 1;

const
  XCB_XFIXES_CURSOR_NOTIFY = 1;

type
  Txcb_xfixes_cursor_notify_event_t = record
    response_type: Tuint8_t;
    subtype: Tuint8_t;
    sequence: Tuint16_t;
    window: Txcb_window_t;
    cursor_serial: Tuint32_t;
    timestamp: Txcb_timestamp_t;
    name: Txcb_atom_t;
    pad0: array[0..11] of Tuint8_t;
  end;
  Pxcb_xfixes_cursor_notify_event_t = ^Txcb_xfixes_cursor_notify_event_t;

const
  XCB_XFIXES_SELECT_CURSOR_INPUT_ = 3;

type
  Txcb_xfixes_select_cursor_input_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    event_mask: Tuint32_t;
  end;
  Pxcb_xfixes_select_cursor_input_request_t = ^Txcb_xfixes_select_cursor_input_request_t;

  Txcb_xfixes_get_cursor_image_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xfixes_get_cursor_image_cookie_t = ^Txcb_xfixes_get_cursor_image_cookie_t;

const
  XCB_XFIXES_GET_CURSOR_IMAGE_ = 4;

type
  Txcb_xfixes_get_cursor_image_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_xfixes_get_cursor_image_request_t = ^Txcb_xfixes_get_cursor_image_request_t;

  Txcb_xfixes_get_cursor_image_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    x: Tint16_t;
    y: Tint16_t;
    width: Tuint16_t;
    height: Tuint16_t;
    xhot: Tuint16_t;
    yhot: Tuint16_t;
    cursor_serial: Tuint32_t;
    pad1: array[0..7] of Tuint8_t;
  end;
  Pxcb_xfixes_get_cursor_image_reply_t = ^Txcb_xfixes_get_cursor_image_reply_t;

  Pxcb_xfixes_region_t = ^Txcb_xfixes_region_t;
  Txcb_xfixes_region_t = Tuint32_t;

  Txcb_xfixes_region_iterator_t = record
    data: Pxcb_xfixes_region_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xfixes_region_iterator_t = ^Txcb_xfixes_region_iterator_t;

const
  XCB_XFIXES_BAD_REGION = 0;

type
  Txcb_xfixes_bad_region_error_t = record
    response_type: Tuint8_t;
    error_code: Tuint8_t;
    sequence: Tuint16_t;
    bad_value: Tuint32_t;
    minor_opcode: Tuint16_t;
    major_opcode: Tuint8_t;
  end;
  Pxcb_xfixes_bad_region_error_t = ^Txcb_xfixes_bad_region_error_t;

type
  Pxcb_xfixes_region_enum_t = ^Txcb_xfixes_region_enum_t;
  Txcb_xfixes_region_enum_t = longint;

const
  XCB_XFIXES_REGION_NONE = 0;

const
  XCB_XFIXES_CREATE_REGION_ = 5;

type
  Txcb_xfixes_create_region_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    region: Txcb_xfixes_region_t;
  end;
  Pxcb_xfixes_create_region_request_t = ^Txcb_xfixes_create_region_request_t;

const
  XCB_XFIXES_CREATE_REGION_FROM_BITMAP_ = 6;

type
  Txcb_xfixes_create_region_from_bitmap_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    region: Txcb_xfixes_region_t;
    bitmap: Txcb_pixmap_t;
  end;
  Pxcb_xfixes_create_region_from_bitmap_request_t = ^Txcb_xfixes_create_region_from_bitmap_request_t;

const
  XCB_XFIXES_CREATE_REGION_FROM_WINDOW_ = 7;

type
  Txcb_xfixes_create_region_from_window_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    region: Txcb_xfixes_region_t;
    window: Txcb_window_t;
    kind: Txcb_shape_kind_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_xfixes_create_region_from_window_request_t = ^Txcb_xfixes_create_region_from_window_request_t;

const
  XCB_XFIXES_CREATE_REGION_FROM_GC_ = 8;

type
  Txcb_xfixes_create_region_from_gc_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    region: Txcb_xfixes_region_t;
    gc: Txcb_gcontext_t;
  end;
  Pxcb_xfixes_create_region_from_gc_request_t = ^Txcb_xfixes_create_region_from_gc_request_t;

const
  XCB_XFIXES_CREATE_REGION_FROM_PICTURE_ = 9;

type
  Txcb_xfixes_create_region_from_picture_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    region: Txcb_xfixes_region_t;
    picture: Txcb_render_picture_t;
  end;
  Pxcb_xfixes_create_region_from_picture_request_t = ^Txcb_xfixes_create_region_from_picture_request_t;

const
  XCB_XFIXES_DESTROY_REGION_ = 10;

type
  Txcb_xfixes_destroy_region_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    region: Txcb_xfixes_region_t;
  end;
  Pxcb_xfixes_destroy_region_request_t = ^Txcb_xfixes_destroy_region_request_t;

const
  XCB_XFIXES_SET_REGION_ = 11;

type
  Txcb_xfixes_set_region_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    region: Txcb_xfixes_region_t;
  end;
  Pxcb_xfixes_set_region_request_t = ^Txcb_xfixes_set_region_request_t;

const
  XCB_XFIXES_COPY_REGION_ = 12;

type
  Txcb_xfixes_copy_region_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    source: Txcb_xfixes_region_t;
    destination: Txcb_xfixes_region_t;
  end;
  Pxcb_xfixes_copy_region_request_t = ^Txcb_xfixes_copy_region_request_t;

const
  XCB_XFIXES_UNION_REGION_ = 13;

type
  Txcb_xfixes_union_region_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    source1: Txcb_xfixes_region_t;
    source2: Txcb_xfixes_region_t;
    destination: Txcb_xfixes_region_t;
  end;
  Pxcb_xfixes_union_region_request_t = ^Txcb_xfixes_union_region_request_t;

const
  XCB_XFIXES_INTERSECT_REGION_ = 14;

type
  Txcb_xfixes_intersect_region_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    source1: Txcb_xfixes_region_t;
    source2: Txcb_xfixes_region_t;
    destination: Txcb_xfixes_region_t;
  end;
  Pxcb_xfixes_intersect_region_request_t = ^Txcb_xfixes_intersect_region_request_t;

const
  XCB_XFIXES_SUBTRACT_REGION_ = 15;

type
  Txcb_xfixes_subtract_region_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    source1: Txcb_xfixes_region_t;
    source2: Txcb_xfixes_region_t;
    destination: Txcb_xfixes_region_t;
  end;
  Pxcb_xfixes_subtract_region_request_t = ^Txcb_xfixes_subtract_region_request_t;

const
  XCB_XFIXES_INVERT_REGION_ = 16;

type
  Txcb_xfixes_invert_region_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    source: Txcb_xfixes_region_t;
    bounds: Txcb_rectangle_t;
    destination: Txcb_xfixes_region_t;
  end;
  Pxcb_xfixes_invert_region_request_t = ^Txcb_xfixes_invert_region_request_t;

const
  XCB_XFIXES_TRANSLATE_REGION_ = 17;

type
  Txcb_xfixes_translate_region_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    region: Txcb_xfixes_region_t;
    dx: Tint16_t;
    dy: Tint16_t;
  end;
  Pxcb_xfixes_translate_region_request_t = ^Txcb_xfixes_translate_region_request_t;

const
  XCB_XFIXES_REGION_EXTENTS_ = 18;

type
  Txcb_xfixes_region_extents_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    source: Txcb_xfixes_region_t;
    destination: Txcb_xfixes_region_t;
  end;
  Pxcb_xfixes_region_extents_request_t = ^Txcb_xfixes_region_extents_request_t;

  Txcb_xfixes_fetch_region_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xfixes_fetch_region_cookie_t = ^Txcb_xfixes_fetch_region_cookie_t;

const
  XCB_XFIXES_FETCH_REGION_ = 19;

type
  Txcb_xfixes_fetch_region_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    region: Txcb_xfixes_region_t;
  end;
  Pxcb_xfixes_fetch_region_request_t = ^Txcb_xfixes_fetch_region_request_t;

  Txcb_xfixes_fetch_region_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    extents: Txcb_rectangle_t;
    pad1: array[0..15] of Tuint8_t;
  end;
  Pxcb_xfixes_fetch_region_reply_t = ^Txcb_xfixes_fetch_region_reply_t;

const
  XCB_XFIXES_SET_GC_CLIP_REGION_ = 20;

type
  Txcb_xfixes_set_gc_clip_region_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    gc: Txcb_gcontext_t;
    region: Txcb_xfixes_region_t;
    x_origin: Tint16_t;
    y_origin: Tint16_t;
  end;
  Pxcb_xfixes_set_gc_clip_region_request_t = ^Txcb_xfixes_set_gc_clip_region_request_t;

const
  XCB_XFIXES_SET_WINDOW_SHAPE_REGION_ = 21;

type
  Txcb_xfixes_set_window_shape_region_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    dest: Txcb_window_t;
    dest_kind: Txcb_shape_kind_t;
    pad0: array[0..2] of Tuint8_t;
    x_offset: Tint16_t;
    y_offset: Tint16_t;
    region: Txcb_xfixes_region_t;
  end;
  Pxcb_xfixes_set_window_shape_region_request_t = ^Txcb_xfixes_set_window_shape_region_request_t;

const
  XCB_XFIXES_SET_PICTURE_CLIP_REGION_ = 22;

type
  Txcb_xfixes_set_picture_clip_region_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    picture: Txcb_render_picture_t;
    region: Txcb_xfixes_region_t;
    x_origin: Tint16_t;
    y_origin: Tint16_t;
  end;
  Pxcb_xfixes_set_picture_clip_region_request_t = ^Txcb_xfixes_set_picture_clip_region_request_t;

const
  XCB_XFIXES_SET_CURSOR_NAME_ = 23;

type
  Txcb_xfixes_set_cursor_name_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    cursor: Txcb_cursor_t;
    nbytes: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_xfixes_set_cursor_name_request_t = ^Txcb_xfixes_set_cursor_name_request_t;

  Txcb_xfixes_get_cursor_name_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xfixes_get_cursor_name_cookie_t = ^Txcb_xfixes_get_cursor_name_cookie_t;

const
  XCB_XFIXES_GET_CURSOR_NAME_ = 24;

type
  Txcb_xfixes_get_cursor_name_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    cursor: Txcb_cursor_t;
  end;
  Pxcb_xfixes_get_cursor_name_request_t = ^Txcb_xfixes_get_cursor_name_request_t;

  Txcb_xfixes_get_cursor_name_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    atom: Txcb_atom_t;
    nbytes: Tuint16_t;
    pad1: array[0..17] of Tuint8_t;
  end;
  Pxcb_xfixes_get_cursor_name_reply_t = ^Txcb_xfixes_get_cursor_name_reply_t;

  Txcb_xfixes_get_cursor_image_and_name_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xfixes_get_cursor_image_and_name_cookie_t = ^Txcb_xfixes_get_cursor_image_and_name_cookie_t;

const
  XCB_XFIXES_GET_CURSOR_IMAGE_AND_NAME_ = 25;

type
  Txcb_xfixes_get_cursor_image_and_name_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_xfixes_get_cursor_image_and_name_request_t = ^Txcb_xfixes_get_cursor_image_and_name_request_t;

  Txcb_xfixes_get_cursor_image_and_name_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    x: Tint16_t;
    y: Tint16_t;
    width: Tuint16_t;
    height: Tuint16_t;
    xhot: Tuint16_t;
    yhot: Tuint16_t;
    cursor_serial: Tuint32_t;
    cursor_atom: Txcb_atom_t;
    nbytes: Tuint16_t;
    pad1: array[0..1] of Tuint8_t;
  end;
  Pxcb_xfixes_get_cursor_image_and_name_reply_t = ^Txcb_xfixes_get_cursor_image_and_name_reply_t;

const
  XCB_XFIXES_CHANGE_CURSOR_ = 26;

type
  Txcb_xfixes_change_cursor_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    source: Txcb_cursor_t;
    destination: Txcb_cursor_t;
  end;
  Pxcb_xfixes_change_cursor_request_t = ^Txcb_xfixes_change_cursor_request_t;

const
  XCB_XFIXES_CHANGE_CURSOR_BY_NAME_ = 27;

type
  Txcb_xfixes_change_cursor_by_name_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    src: Txcb_cursor_t;
    nbytes: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_xfixes_change_cursor_by_name_request_t = ^Txcb_xfixes_change_cursor_by_name_request_t;

const
  XCB_XFIXES_EXPAND_REGION_ = 28;

type
  Txcb_xfixes_expand_region_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    source: Txcb_xfixes_region_t;
    destination: Txcb_xfixes_region_t;
    left: Tuint16_t;
    right: Tuint16_t;
    top: Tuint16_t;
    bottom: Tuint16_t;
  end;
  Pxcb_xfixes_expand_region_request_t = ^Txcb_xfixes_expand_region_request_t;

const
  XCB_XFIXES_HIDE_CURSOR_ = 29;

type
  Txcb_xfixes_hide_cursor_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
  end;
  Pxcb_xfixes_hide_cursor_request_t = ^Txcb_xfixes_hide_cursor_request_t;

const
  XCB_XFIXES_SHOW_CURSOR_ = 30;

type
  Txcb_xfixes_show_cursor_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
  end;
  Pxcb_xfixes_show_cursor_request_t = ^Txcb_xfixes_show_cursor_request_t;

  Pxcb_xfixes_barrier_t = ^Txcb_xfixes_barrier_t;
  Txcb_xfixes_barrier_t = Tuint32_t;

  Txcb_xfixes_barrier_iterator_t = record
    data: Pxcb_xfixes_barrier_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xfixes_barrier_iterator_t = ^Txcb_xfixes_barrier_iterator_t;

type
  Pxcb_xfixes_barrier_directions_t = ^Txcb_xfixes_barrier_directions_t;
  Txcb_xfixes_barrier_directions_t = longint;

const
  XCB_XFIXES_BARRIER_DIRECTIONS_POSITIVE_X = 1;
  XCB_XFIXES_BARRIER_DIRECTIONS_POSITIVE_Y = 2;
  XCB_XFIXES_BARRIER_DIRECTIONS_NEGATIVE_X = 4;
  XCB_XFIXES_BARRIER_DIRECTIONS_NEGATIVE_Y = 8;

const
  XCB_XFIXES_CREATE_POINTER_BARRIER_ = 31;

type
  Txcb_xfixes_create_pointer_barrier_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    barrier: Txcb_xfixes_barrier_t;
    window: Txcb_window_t;
    x1: Tuint16_t;
    y1: Tuint16_t;
    x2: Tuint16_t;
    y2: Tuint16_t;
    directions: Tuint32_t;
    pad0: array[0..1] of Tuint8_t;
    num_devices: Tuint16_t;
  end;
  Pxcb_xfixes_create_pointer_barrier_request_t = ^Txcb_xfixes_create_pointer_barrier_request_t;

const
  XCB_XFIXES_DELETE_POINTER_BARRIER_ = 32;

type
  Txcb_xfixes_delete_pointer_barrier_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    barrier: Txcb_xfixes_barrier_t;
  end;
  Pxcb_xfixes_delete_pointer_barrier_request_t = ^Txcb_xfixes_delete_pointer_barrier_request_t;

type
  Pxcb_xfixes_client_disconnect_flags_t = ^Txcb_xfixes_client_disconnect_flags_t;
  Txcb_xfixes_client_disconnect_flags_t = longint;

const
  XCB_XFIXES_CLIENT_DISCONNECT_FLAGS_DEFAULT = 0;
  XCB_XFIXES_CLIENT_DISCONNECT_FLAGS_TERMINATE = 1;

const
  XCB_XFIXES_SET_CLIENT_DISCONNECT_MODE_ = 33;

type
  Txcb_xfixes_set_client_disconnect_mode_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    disconnect_mode: Tuint32_t;
  end;
  Pxcb_xfixes_set_client_disconnect_mode_request_t = ^Txcb_xfixes_set_client_disconnect_mode_request_t;

  Txcb_xfixes_get_client_disconnect_mode_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xfixes_get_client_disconnect_mode_cookie_t = ^Txcb_xfixes_get_client_disconnect_mode_cookie_t;

const
  XCB_XFIXES_GET_CLIENT_DISCONNECT_MODE_ = 34;

type
  Txcb_xfixes_get_client_disconnect_mode_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_xfixes_get_client_disconnect_mode_request_t = ^Txcb_xfixes_get_client_disconnect_mode_request_t;

  Txcb_xfixes_get_client_disconnect_mode_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    disconnect_mode: Tuint32_t;
    pad1: array[0..19] of Tuint8_t;
  end;
  Pxcb_xfixes_get_client_disconnect_mode_reply_t = ^Txcb_xfixes_get_client_disconnect_mode_reply_t;

function xcb_xfixes_query_version(c: Pxcb_connection_t; client_major_version: Tuint32_t; client_minor_version: Tuint32_t): Txcb_xfixes_query_version_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_query_version_unchecked(c: Pxcb_connection_t; client_major_version: Tuint32_t; client_minor_version: Tuint32_t): Txcb_xfixes_query_version_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_query_version_reply(c: Pxcb_connection_t; cookie: Txcb_xfixes_query_version_cookie_t; e: PPxcb_generic_error_t): Pxcb_xfixes_query_version_reply_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_change_save_set_checked(c: Pxcb_connection_t; mode: Tuint8_t; target: Tuint8_t; map: Tuint8_t; window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_change_save_set(c: Pxcb_connection_t; mode: Tuint8_t; target: Tuint8_t; map: Tuint8_t; window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_select_selection_input_checked(c: Pxcb_connection_t; window: Txcb_window_t; selection: Txcb_atom_t; event_mask: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_select_selection_input(c: Pxcb_connection_t; window: Txcb_window_t; selection: Txcb_atom_t; event_mask: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_select_cursor_input_checked(c: Pxcb_connection_t; window: Txcb_window_t; event_mask: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_select_cursor_input(c: Pxcb_connection_t; window: Txcb_window_t; event_mask: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_get_cursor_image_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xfixes;
function xcb_xfixes_get_cursor_image(c: Pxcb_connection_t): Txcb_xfixes_get_cursor_image_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_get_cursor_image_unchecked(c: Pxcb_connection_t): Txcb_xfixes_get_cursor_image_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_get_cursor_image_cursor_image(R: Pxcb_xfixes_get_cursor_image_reply_t): Puint32_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_get_cursor_image_cursor_image_length(R: Pxcb_xfixes_get_cursor_image_reply_t): longint; cdecl; external libxcb_xfixes;
function xcb_xfixes_get_cursor_image_cursor_image_end(R: Pxcb_xfixes_get_cursor_image_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_get_cursor_image_reply(c: Pxcb_connection_t; cookie: Txcb_xfixes_get_cursor_image_cookie_t; e: PPxcb_generic_error_t): Pxcb_xfixes_get_cursor_image_reply_t; cdecl; external libxcb_xfixes;
procedure xcb_xfixes_region_next(i: Pxcb_xfixes_region_iterator_t); cdecl; external libxcb_xfixes;
function xcb_xfixes_region_end(i: Txcb_xfixes_region_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_create_region_sizeof(_buffer: pointer; rectangles_len: Tuint32_t): longint; cdecl; external libxcb_xfixes;
function xcb_xfixes_create_region_checked(c: Pxcb_connection_t; region: Txcb_xfixes_region_t; rectangles_len: Tuint32_t; rectangles: Pxcb_rectangle_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_create_region(c: Pxcb_connection_t; region: Txcb_xfixes_region_t; rectangles_len: Tuint32_t; rectangles: Pxcb_rectangle_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_create_region_rectangles(R: Pxcb_xfixes_create_region_request_t): Pxcb_rectangle_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_create_region_rectangles_length(R: Pxcb_xfixes_create_region_request_t): longint; cdecl; external libxcb_xfixes;
function xcb_xfixes_create_region_rectangles_iterator(R: Pxcb_xfixes_create_region_request_t): Txcb_rectangle_iterator_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_create_region_from_bitmap_checked(c: Pxcb_connection_t; region: Txcb_xfixes_region_t; bitmap: Txcb_pixmap_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_create_region_from_bitmap(c: Pxcb_connection_t; region: Txcb_xfixes_region_t; bitmap: Txcb_pixmap_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_create_region_from_window_checked(c: Pxcb_connection_t; region: Txcb_xfixes_region_t; window: Txcb_window_t; kind: Txcb_shape_kind_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_create_region_from_window(c: Pxcb_connection_t; region: Txcb_xfixes_region_t; window: Txcb_window_t; kind: Txcb_shape_kind_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_create_region_from_gc_checked(c: Pxcb_connection_t; region: Txcb_xfixes_region_t; gc: Txcb_gcontext_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_create_region_from_gc(c: Pxcb_connection_t; region: Txcb_xfixes_region_t; gc: Txcb_gcontext_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_create_region_from_picture_checked(c: Pxcb_connection_t; region: Txcb_xfixes_region_t; picture: Txcb_render_picture_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_create_region_from_picture(c: Pxcb_connection_t; region: Txcb_xfixes_region_t; picture: Txcb_render_picture_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_destroy_region_checked(c: Pxcb_connection_t; region: Txcb_xfixes_region_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_destroy_region(c: Pxcb_connection_t; region: Txcb_xfixes_region_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_set_region_sizeof(_buffer: pointer; rectangles_len: Tuint32_t): longint; cdecl; external libxcb_xfixes;
function xcb_xfixes_set_region_checked(c: Pxcb_connection_t; region: Txcb_xfixes_region_t; rectangles_len: Tuint32_t; rectangles: Pxcb_rectangle_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_set_region(c: Pxcb_connection_t; region: Txcb_xfixes_region_t; rectangles_len: Tuint32_t; rectangles: Pxcb_rectangle_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_set_region_rectangles(R: Pxcb_xfixes_set_region_request_t): Pxcb_rectangle_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_set_region_rectangles_length(R: Pxcb_xfixes_set_region_request_t): longint; cdecl; external libxcb_xfixes;
function xcb_xfixes_set_region_rectangles_iterator(R: Pxcb_xfixes_set_region_request_t): Txcb_rectangle_iterator_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_copy_region_checked(c: Pxcb_connection_t; source: Txcb_xfixes_region_t; destination: Txcb_xfixes_region_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_copy_region(c: Pxcb_connection_t; source: Txcb_xfixes_region_t; destination: Txcb_xfixes_region_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_union_region_checked(c: Pxcb_connection_t; source1: Txcb_xfixes_region_t; source2: Txcb_xfixes_region_t; destination: Txcb_xfixes_region_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_union_region(c: Pxcb_connection_t; source1: Txcb_xfixes_region_t; source2: Txcb_xfixes_region_t; destination: Txcb_xfixes_region_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_intersect_region_checked(c: Pxcb_connection_t; source1: Txcb_xfixes_region_t; source2: Txcb_xfixes_region_t; destination: Txcb_xfixes_region_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_intersect_region(c: Pxcb_connection_t; source1: Txcb_xfixes_region_t; source2: Txcb_xfixes_region_t; destination: Txcb_xfixes_region_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_subtract_region_checked(c: Pxcb_connection_t; source1: Txcb_xfixes_region_t; source2: Txcb_xfixes_region_t; destination: Txcb_xfixes_region_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_subtract_region(c: Pxcb_connection_t; source1: Txcb_xfixes_region_t; source2: Txcb_xfixes_region_t; destination: Txcb_xfixes_region_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_invert_region_checked(c: Pxcb_connection_t; source: Txcb_xfixes_region_t; bounds: Txcb_rectangle_t; destination: Txcb_xfixes_region_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_invert_region(c: Pxcb_connection_t; source: Txcb_xfixes_region_t; bounds: Txcb_rectangle_t; destination: Txcb_xfixes_region_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_translate_region_checked(c: Pxcb_connection_t; region: Txcb_xfixes_region_t; dx: Tint16_t; dy: Tint16_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_translate_region(c: Pxcb_connection_t; region: Txcb_xfixes_region_t; dx: Tint16_t; dy: Tint16_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_region_extents_checked(c: Pxcb_connection_t; source: Txcb_xfixes_region_t; destination: Txcb_xfixes_region_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_region_extents(c: Pxcb_connection_t; source: Txcb_xfixes_region_t; destination: Txcb_xfixes_region_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_fetch_region_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xfixes;
function xcb_xfixes_fetch_region(c: Pxcb_connection_t; region: Txcb_xfixes_region_t): Txcb_xfixes_fetch_region_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_fetch_region_unchecked(c: Pxcb_connection_t; region: Txcb_xfixes_region_t): Txcb_xfixes_fetch_region_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_fetch_region_rectangles(R: Pxcb_xfixes_fetch_region_reply_t): Pxcb_rectangle_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_fetch_region_rectangles_length(R: Pxcb_xfixes_fetch_region_reply_t): longint; cdecl; external libxcb_xfixes;
function xcb_xfixes_fetch_region_rectangles_iterator(R: Pxcb_xfixes_fetch_region_reply_t): Txcb_rectangle_iterator_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_fetch_region_reply(c: Pxcb_connection_t; cookie: Txcb_xfixes_fetch_region_cookie_t; e: PPxcb_generic_error_t): Pxcb_xfixes_fetch_region_reply_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_set_gc_clip_region_checked(c: Pxcb_connection_t; gc: Txcb_gcontext_t; region: Txcb_xfixes_region_t; x_origin: Tint16_t; y_origin: Tint16_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_set_gc_clip_region(c: Pxcb_connection_t; gc: Txcb_gcontext_t; region: Txcb_xfixes_region_t; x_origin: Tint16_t; y_origin: Tint16_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_set_window_shape_region_checked(c: Pxcb_connection_t; dest: Txcb_window_t; dest_kind: Txcb_shape_kind_t; x_offset: Tint16_t; y_offset: Tint16_t;
  region: Txcb_xfixes_region_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_set_window_shape_region(c: Pxcb_connection_t; dest: Txcb_window_t; dest_kind: Txcb_shape_kind_t; x_offset: Tint16_t; y_offset: Tint16_t;
  region: Txcb_xfixes_region_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_set_picture_clip_region_checked(c: Pxcb_connection_t; picture: Txcb_render_picture_t; region: Txcb_xfixes_region_t; x_origin: Tint16_t; y_origin: Tint16_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_set_picture_clip_region(c: Pxcb_connection_t; picture: Txcb_render_picture_t; region: Txcb_xfixes_region_t; x_origin: Tint16_t; y_origin: Tint16_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_set_cursor_name_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xfixes;
function xcb_xfixes_set_cursor_name_checked(c: Pxcb_connection_t; cursor: Txcb_cursor_t; nbytes: Tuint16_t; name: pchar): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_set_cursor_name(c: Pxcb_connection_t; cursor: Txcb_cursor_t; nbytes: Tuint16_t; name: pchar): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_set_cursor_name_name(R: Pxcb_xfixes_set_cursor_name_request_t): pchar; cdecl; external libxcb_xfixes;
function xcb_xfixes_set_cursor_name_name_length(R: Pxcb_xfixes_set_cursor_name_request_t): longint; cdecl; external libxcb_xfixes;
function xcb_xfixes_set_cursor_name_name_end(R: Pxcb_xfixes_set_cursor_name_request_t): Txcb_generic_iterator_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_get_cursor_name_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xfixes;
function xcb_xfixes_get_cursor_name(c: Pxcb_connection_t; cursor: Txcb_cursor_t): Txcb_xfixes_get_cursor_name_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_get_cursor_name_unchecked(c: Pxcb_connection_t; cursor: Txcb_cursor_t): Txcb_xfixes_get_cursor_name_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_get_cursor_name_name(R: Pxcb_xfixes_get_cursor_name_reply_t): pchar; cdecl; external libxcb_xfixes;
function xcb_xfixes_get_cursor_name_name_length(R: Pxcb_xfixes_get_cursor_name_reply_t): longint; cdecl; external libxcb_xfixes;
function xcb_xfixes_get_cursor_name_name_end(R: Pxcb_xfixes_get_cursor_name_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_get_cursor_name_reply(c: Pxcb_connection_t; cookie: Txcb_xfixes_get_cursor_name_cookie_t; e: PPxcb_generic_error_t): Pxcb_xfixes_get_cursor_name_reply_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_get_cursor_image_and_name_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xfixes;
function xcb_xfixes_get_cursor_image_and_name(c: Pxcb_connection_t): Txcb_xfixes_get_cursor_image_and_name_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_get_cursor_image_and_name_unchecked(c: Pxcb_connection_t): Txcb_xfixes_get_cursor_image_and_name_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_get_cursor_image_and_name_cursor_image(R: Pxcb_xfixes_get_cursor_image_and_name_reply_t): Puint32_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_get_cursor_image_and_name_cursor_image_length(R: Pxcb_xfixes_get_cursor_image_and_name_reply_t): longint; cdecl; external libxcb_xfixes;
function xcb_xfixes_get_cursor_image_and_name_cursor_image_end(R: Pxcb_xfixes_get_cursor_image_and_name_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_get_cursor_image_and_name_name(R: Pxcb_xfixes_get_cursor_image_and_name_reply_t): pchar; cdecl; external libxcb_xfixes;
function xcb_xfixes_get_cursor_image_and_name_name_length(R: Pxcb_xfixes_get_cursor_image_and_name_reply_t): longint; cdecl; external libxcb_xfixes;
function xcb_xfixes_get_cursor_image_and_name_name_end(R: Pxcb_xfixes_get_cursor_image_and_name_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_get_cursor_image_and_name_reply(c: Pxcb_connection_t; cookie: Txcb_xfixes_get_cursor_image_and_name_cookie_t; e: PPxcb_generic_error_t): Pxcb_xfixes_get_cursor_image_and_name_reply_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_change_cursor_checked(c: Pxcb_connection_t; source: Txcb_cursor_t; destination: Txcb_cursor_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_change_cursor(c: Pxcb_connection_t; source: Txcb_cursor_t; destination: Txcb_cursor_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_change_cursor_by_name_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xfixes;
function xcb_xfixes_change_cursor_by_name_checked(c: Pxcb_connection_t; src: Txcb_cursor_t; nbytes: Tuint16_t; name: pchar): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_change_cursor_by_name(c: Pxcb_connection_t; src: Txcb_cursor_t; nbytes: Tuint16_t; name: pchar): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_change_cursor_by_name_name(R: Pxcb_xfixes_change_cursor_by_name_request_t): pchar; cdecl; external libxcb_xfixes;
function xcb_xfixes_change_cursor_by_name_name_length(R: Pxcb_xfixes_change_cursor_by_name_request_t): longint; cdecl; external libxcb_xfixes;
function xcb_xfixes_change_cursor_by_name_name_end(R: Pxcb_xfixes_change_cursor_by_name_request_t): Txcb_generic_iterator_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_expand_region_checked(c: Pxcb_connection_t; source: Txcb_xfixes_region_t; destination: Txcb_xfixes_region_t; left: Tuint16_t; right: Tuint16_t;
  top: Tuint16_t; bottom: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_expand_region(c: Pxcb_connection_t; source: Txcb_xfixes_region_t; destination: Txcb_xfixes_region_t; left: Tuint16_t; right: Tuint16_t;
  top: Tuint16_t; bottom: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_hide_cursor_checked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_hide_cursor(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_show_cursor_checked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_show_cursor(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
procedure xcb_xfixes_barrier_next(i: Pxcb_xfixes_barrier_iterator_t); cdecl; external libxcb_xfixes;
function xcb_xfixes_barrier_end(i: Txcb_xfixes_barrier_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_create_pointer_barrier_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xfixes;
function xcb_xfixes_create_pointer_barrier_checked(c: Pxcb_connection_t; barrier: Txcb_xfixes_barrier_t; window: Txcb_window_t; x1: Tuint16_t; y1: Tuint16_t;
  x2: Tuint16_t; y2: Tuint16_t; directions: Tuint32_t; num_devices: Tuint16_t; devices: Puint16_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_create_pointer_barrier(c: Pxcb_connection_t; barrier: Txcb_xfixes_barrier_t; window: Txcb_window_t; x1: Tuint16_t; y1: Tuint16_t;
  x2: Tuint16_t; y2: Tuint16_t; directions: Tuint32_t; num_devices: Tuint16_t; devices: Puint16_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_create_pointer_barrier_devices(R: Pxcb_xfixes_create_pointer_barrier_request_t): Puint16_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_create_pointer_barrier_devices_length(R: Pxcb_xfixes_create_pointer_barrier_request_t): longint; cdecl; external libxcb_xfixes;
function xcb_xfixes_create_pointer_barrier_devices_end(R: Pxcb_xfixes_create_pointer_barrier_request_t): Txcb_generic_iterator_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_delete_pointer_barrier_checked(c: Pxcb_connection_t; barrier: Txcb_xfixes_barrier_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_delete_pointer_barrier(c: Pxcb_connection_t; barrier: Txcb_xfixes_barrier_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_set_client_disconnect_mode_checked(c: Pxcb_connection_t; disconnect_mode: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_set_client_disconnect_mode(c: Pxcb_connection_t; disconnect_mode: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_get_client_disconnect_mode(c: Pxcb_connection_t): Txcb_xfixes_get_client_disconnect_mode_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_get_client_disconnect_mode_unchecked(c: Pxcb_connection_t): Txcb_xfixes_get_client_disconnect_mode_cookie_t; cdecl; external libxcb_xfixes;
function xcb_xfixes_get_client_disconnect_mode_reply(c: Pxcb_connection_t; cookie: Txcb_xfixes_get_client_disconnect_mode_cookie_t; e: PPxcb_generic_error_t): Pxcb_xfixes_get_client_disconnect_mode_reply_t; cdecl; external libxcb_xfixes;

// === Konventiert am: 9-10-25 20:04:07 ===


implementation



end.
