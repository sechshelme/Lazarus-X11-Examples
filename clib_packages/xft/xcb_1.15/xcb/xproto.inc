{$IFDEF read_interface}


type
  Txcb_char2b_t = record
    byte1: Tuint8_t;
    byte2: Tuint8_t;
  end;
  Pxcb_char2b_t = ^Txcb_char2b_t;

  Txcb_char2b_iterator_t = record
    data: Pxcb_char2b_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_char2b_iterator_t = ^Txcb_char2b_iterator_t;

  Pxcb_window_t = ^Txcb_window_t;
  Txcb_window_t = Tuint32_t;

  Txcb_window_iterator_t = record
    data: Pxcb_window_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_window_iterator_t = ^Txcb_window_iterator_t;

  Pxcb_pixmap_t = ^Txcb_pixmap_t;
  Txcb_pixmap_t = Tuint32_t;

  Txcb_pixmap_iterator_t = record
    data: Pxcb_pixmap_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_pixmap_iterator_t = ^Txcb_pixmap_iterator_t;

  Pxcb_cursor_t = ^Txcb_cursor_t;
  Txcb_cursor_t = Tuint32_t;

  Txcb_cursor_iterator_t = record
    data: Pxcb_cursor_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_cursor_iterator_t = ^Txcb_cursor_iterator_t;

  Pxcb_font_t = ^Txcb_font_t;
  Txcb_font_t = Tuint32_t;

  Txcb_font_iterator_t = record
    data: Pxcb_font_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_font_iterator_t = ^Txcb_font_iterator_t;

  Pxcb_gcontext_t = ^Txcb_gcontext_t;
  Txcb_gcontext_t = Tuint32_t;

  Txcb_gcontext_iterator_t = record
    data: Pxcb_gcontext_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_gcontext_iterator_t = ^Txcb_gcontext_iterator_t;

  Pxcb_colormap_t = ^Txcb_colormap_t;
  Txcb_colormap_t = Tuint32_t;

  Txcb_colormap_iterator_t = record
    data: Pxcb_colormap_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_colormap_iterator_t = ^Txcb_colormap_iterator_t;

  Pxcb_atom_t = ^Txcb_atom_t;
  Txcb_atom_t = Tuint32_t;

  Txcb_atom_iterator_t = record
    data: Pxcb_atom_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_atom_iterator_t = ^Txcb_atom_iterator_t;

  Pxcb_drawable_t = ^Txcb_drawable_t;
  Txcb_drawable_t = Tuint32_t;

  Txcb_drawable_iterator_t = record
    data: Pxcb_drawable_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_drawable_iterator_t = ^Txcb_drawable_iterator_t;

  Pxcb_fontable_t = ^Txcb_fontable_t;
  Txcb_fontable_t = Tuint32_t;

  Txcb_fontable_iterator_t = record
    data: Pxcb_fontable_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_fontable_iterator_t = ^Txcb_fontable_iterator_t;

  Pxcb_bool32_t = ^Txcb_bool32_t;
  Txcb_bool32_t = Tuint32_t;

  Txcb_bool32_iterator_t = record
    data: Pxcb_bool32_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_bool32_iterator_t = ^Txcb_bool32_iterator_t;

  Pxcb_visualid_t = ^Txcb_visualid_t;
  Txcb_visualid_t = Tuint32_t;

  Txcb_visualid_iterator_t = record
    data: Pxcb_visualid_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_visualid_iterator_t = ^Txcb_visualid_iterator_t;

  Pxcb_timestamp_t = ^Txcb_timestamp_t;
  Txcb_timestamp_t = Tuint32_t;

  Txcb_timestamp_iterator_t = record
    data: Pxcb_timestamp_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_timestamp_iterator_t = ^Txcb_timestamp_iterator_t;

  Pxcb_keysym_t = ^Txcb_keysym_t;
  Txcb_keysym_t = Tuint32_t;

  Txcb_keysym_iterator_t = record
    data: Pxcb_keysym_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_keysym_iterator_t = ^Txcb_keysym_iterator_t;

  Pxcb_keycode_t = ^Txcb_keycode_t;
  Txcb_keycode_t = Tuint8_t;

  Txcb_keycode_iterator_t = record
    data: Pxcb_keycode_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_keycode_iterator_t = ^Txcb_keycode_iterator_t;

  Pxcb_keycode32_t = ^Txcb_keycode32_t;
  Txcb_keycode32_t = Tuint32_t;

  Txcb_keycode32_iterator_t = record
    data: Pxcb_keycode32_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_keycode32_iterator_t = ^Txcb_keycode32_iterator_t;

  Pxcb_button_t = ^Txcb_button_t;
  Txcb_button_t = Tuint8_t;

  Txcb_button_iterator_t = record
    data: Pxcb_button_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_button_iterator_t = ^Txcb_button_iterator_t;

  Txcb_point_t = record
    x: Tint16_t;
    y: Tint16_t;
  end;
  Pxcb_point_t = ^Txcb_point_t;

  Txcb_point_iterator_t = record
    data: Pxcb_point_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_point_iterator_t = ^Txcb_point_iterator_t;

  Txcb_rectangle_t = record
    x: Tint16_t;
    y: Tint16_t;
    width: Tuint16_t;
    height: Tuint16_t;
  end;
  Pxcb_rectangle_t = ^Txcb_rectangle_t;

  Txcb_rectangle_iterator_t = record
    data: Pxcb_rectangle_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_rectangle_iterator_t = ^Txcb_rectangle_iterator_t;

  Txcb_arc_t = record
    x: Tint16_t;
    y: Tint16_t;
    width: Tuint16_t;
    height: Tuint16_t;
    angle1: Tint16_t;
    angle2: Tint16_t;
  end;
  Pxcb_arc_t = ^Txcb_arc_t;

  Txcb_arc_iterator_t = record
    data: Pxcb_arc_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_arc_iterator_t = ^Txcb_arc_iterator_t;

  Txcb_format_t = record
    depth: Tuint8_t;
    bits_per_pixel: Tuint8_t;
    scanline_pad: Tuint8_t;
    pad0: array[0..4] of Tuint8_t;
  end;
  Pxcb_format_t = ^Txcb_format_t;

  Txcb_format_iterator_t = record
    data: Pxcb_format_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_format_iterator_t = ^Txcb_format_iterator_t;

  Pxcb_visual_class_t = ^Txcb_visual_class_t;
  Txcb_visual_class_t = longint;

const
  XCB_VISUAL_CLASS_STATIC_GRAY = 0;
  XCB_VISUAL_CLASS_GRAY_SCALE = 1;
  XCB_VISUAL_CLASS_STATIC_COLOR = 2;
  XCB_VISUAL_CLASS_PSEUDO_COLOR = 3;
  XCB_VISUAL_CLASS_TRUE_COLOR = 4;
  XCB_VISUAL_CLASS_DIRECT_COLOR = 5;

type
  Txcb_visualtype_t = record
    visual_id: Txcb_visualid_t;
    _class: Tuint8_t;
    bits_per_rgb_value: Tuint8_t;
    colormap_entries: Tuint16_t;
    red_mask: Tuint32_t;
    green_mask: Tuint32_t;
    blue_mask: Tuint32_t;
    pad0: array[0..3] of Tuint8_t;
  end;
  Pxcb_visualtype_t = ^Txcb_visualtype_t;

  Txcb_visualtype_iterator_t = record
    data: Pxcb_visualtype_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_visualtype_iterator_t = ^Txcb_visualtype_iterator_t;

  Txcb_depth_t = record
    depth: Tuint8_t;
    pad0: Tuint8_t;
    visuals_len: Tuint16_t;
    pad1: array[0..3] of Tuint8_t;
  end;
  Pxcb_depth_t = ^Txcb_depth_t;

  Txcb_depth_iterator_t = record
    data: Pxcb_depth_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_depth_iterator_t = ^Txcb_depth_iterator_t;

  Pxcb_event_mask_t = ^Txcb_event_mask_t;
  Txcb_event_mask_t = longint;

const
  XCB_EVENT_MASK_NO_EVENT = 0;
  XCB_EVENT_MASK_KEY_PRESS = 1;
  XCB_EVENT_MASK_KEY_RELEASE = 2;
  XCB_EVENT_MASK_BUTTON_PRESS = 4;
  XCB_EVENT_MASK_BUTTON_RELEASE = 8;
  XCB_EVENT_MASK_ENTER_WINDOW = 16;
  XCB_EVENT_MASK_LEAVE_WINDOW = 32;
  XCB_EVENT_MASK_POINTER_MOTION = 64;
  XCB_EVENT_MASK_POINTER_MOTION_HINT = 128;
  XCB_EVENT_MASK_BUTTON_1_MOTION = 256;
  XCB_EVENT_MASK_BUTTON_2_MOTION = 512;
  XCB_EVENT_MASK_BUTTON_3_MOTION = 1024;
  XCB_EVENT_MASK_BUTTON_4_MOTION = 2048;
  XCB_EVENT_MASK_BUTTON_5_MOTION = 4096;
  XCB_EVENT_MASK_BUTTON_MOTION = 8192;
  XCB_EVENT_MASK_KEYMAP_STATE = 16384;
  XCB_EVENT_MASK_EXPOSURE = 32768;
  XCB_EVENT_MASK_VISIBILITY_CHANGE = 65536;
  XCB_EVENT_MASK_STRUCTURE_NOTIFY = 131072;
  XCB_EVENT_MASK_RESIZE_REDIRECT = 262144;
  XCB_EVENT_MASK_SUBSTRUCTURE_NOTIFY = 524288;
  XCB_EVENT_MASK_SUBSTRUCTURE_REDIRECT = 1048576;
  XCB_EVENT_MASK_FOCUS_CHANGE = 2097152;
  XCB_EVENT_MASK_PROPERTY_CHANGE = 4194304;
  XCB_EVENT_MASK_COLOR_MAP_CHANGE = 8388608;
  XCB_EVENT_MASK_OWNER_GRAB_BUTTON = 16777216;

type
  Pxcb_backing_store_t = ^Txcb_backing_store_t;
  Txcb_backing_store_t = longint;

const
  XCB_BACKING_STORE_NOT_USEFUL = 0;
  XCB_BACKING_STORE_WHEN_MAPPED = 1;
  XCB_BACKING_STORE_ALWAYS = 2;

type
  Txcb_screen_t = record
    root: Txcb_window_t;
    default_colormap: Txcb_colormap_t;
    white_pixel: Tuint32_t;
    black_pixel: Tuint32_t;
    current_input_masks: Tuint32_t;
    width_in_pixels: Tuint16_t;
    height_in_pixels: Tuint16_t;
    width_in_millimeters: Tuint16_t;
    height_in_millimeters: Tuint16_t;
    min_installed_maps: Tuint16_t;
    max_installed_maps: Tuint16_t;
    root_visual: Txcb_visualid_t;
    backing_stores: Tuint8_t;
    save_unders: Tuint8_t;
    root_depth: Tuint8_t;
    allowed_depths_len: Tuint8_t;
  end;
  Pxcb_screen_t = ^Txcb_screen_t;

  Txcb_screen_iterator_t = record
    data: Pxcb_screen_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_screen_iterator_t = ^Txcb_screen_iterator_t;

  Txcb_setup_request_t = record
    byte_order: Tuint8_t;
    pad0: Tuint8_t;
    protocol_major_version: Tuint16_t;
    protocol_minor_version: Tuint16_t;
    authorization_protocol_name_len: Tuint16_t;
    authorization_protocol_data_len: Tuint16_t;
    pad1: array[0..1] of Tuint8_t;
  end;
  Pxcb_setup_request_t = ^Txcb_setup_request_t;

  Txcb_setup_request_iterator_t = record
    data: Pxcb_setup_request_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_setup_request_iterator_t = ^Txcb_setup_request_iterator_t;

  Txcb_setup_failed_t = record
    status: Tuint8_t;
    reason_len: Tuint8_t;
    protocol_major_version: Tuint16_t;
    protocol_minor_version: Tuint16_t;
    length: Tuint16_t;
  end;
  Pxcb_setup_failed_t = ^Txcb_setup_failed_t;

  Txcb_setup_failed_iterator_t = record
    data: Pxcb_setup_failed_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_setup_failed_iterator_t = ^Txcb_setup_failed_iterator_t;

  Txcb_setup_authenticate_t = record
    status: Tuint8_t;
    pad0: array[0..4] of Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_setup_authenticate_t = ^Txcb_setup_authenticate_t;

  Txcb_setup_authenticate_iterator_t = record
    data: Pxcb_setup_authenticate_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_setup_authenticate_iterator_t = ^Txcb_setup_authenticate_iterator_t;

  Pxcb_image_order_t = ^Txcb_image_order_t;
  Txcb_image_order_t = longint;

const
  XCB_IMAGE_ORDER_LSB_FIRST = 0;
  XCB_IMAGE_ORDER_MSB_FIRST = 1;

type
  Txcb_setup_t = record
    status: Tuint8_t;
    pad0: Tuint8_t;
    protocol_major_version: Tuint16_t;
    protocol_minor_version: Tuint16_t;
    length: Tuint16_t;
    release_number: Tuint32_t;
    resource_id_base: Tuint32_t;
    resource_id_mask: Tuint32_t;
    motion_buffer_size: Tuint32_t;
    vendor_len: Tuint16_t;
    maximum_request_length: Tuint16_t;
    roots_len: Tuint8_t;
    pixmap_formats_len: Tuint8_t;
    image_byte_order: Tuint8_t;
    bitmap_format_bit_order: Tuint8_t;
    bitmap_format_scanline_unit: Tuint8_t;
    bitmap_format_scanline_pad: Tuint8_t;
    min_keycode: Txcb_keycode_t;
    max_keycode: Txcb_keycode_t;
    pad1: array[0..3] of Tuint8_t;
  end;
  Pxcb_setup_t = ^Txcb_setup_t;

  Txcb_setup_iterator_t = record
    data: Pxcb_setup_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_setup_iterator_t = ^Txcb_setup_iterator_t;

  Pxcb_mod_mask_t = ^Txcb_mod_mask_t;
  Txcb_mod_mask_t = longint;

const
  XCB_MOD_MASK_SHIFT = 1;
  XCB_MOD_MASK_LOCK = 2;
  XCB_MOD_MASK_CONTROL = 4;
  XCB_MOD_MASK_1 = 8;
  XCB_MOD_MASK_2 = 16;
  XCB_MOD_MASK_3 = 32;
  XCB_MOD_MASK_4 = 64;
  XCB_MOD_MASK_5 = 128;
  XCB_MOD_MASK_ANY = 32768;

type
  Pxcb_key_but_mask_t = ^Txcb_key_but_mask_t;
  Txcb_key_but_mask_t = longint;

const
  XCB_KEY_BUT_MASK_SHIFT = 1;
  XCB_KEY_BUT_MASK_LOCK = 2;
  XCB_KEY_BUT_MASK_CONTROL = 4;
  XCB_KEY_BUT_MASK_MOD_1 = 8;
  XCB_KEY_BUT_MASK_MOD_2 = 16;
  XCB_KEY_BUT_MASK_MOD_3 = 32;
  XCB_KEY_BUT_MASK_MOD_4 = 64;
  XCB_KEY_BUT_MASK_MOD_5 = 128;
  XCB_KEY_BUT_MASK_BUTTON_1 = 256;
  XCB_KEY_BUT_MASK_BUTTON_2 = 512;
  XCB_KEY_BUT_MASK_BUTTON_3 = 1024;
  XCB_KEY_BUT_MASK_BUTTON_4 = 2048;
  XCB_KEY_BUT_MASK_BUTTON_5 = 4096;

type
  Pxcb_window_enum_t = ^Txcb_window_enum_t;
  Txcb_window_enum_t = longint;

const
  XCB_WINDOW_NONE = 0;

const
  XCB_KEY_PRESS = 2;

type
  Txcb_key_press_event_t = record
    response_type: Tuint8_t;
    detail: Txcb_keycode_t;
    sequence: Tuint16_t;
    time: Txcb_timestamp_t;
    root: Txcb_window_t;
    event: Txcb_window_t;
    child: Txcb_window_t;
    root_x: Tint16_t;
    root_y: Tint16_t;
    event_x: Tint16_t;
    event_y: Tint16_t;
    state: Tuint16_t;
    same_screen: Tuint8_t;
    pad0: Tuint8_t;
  end;
  Pxcb_key_press_event_t = ^Txcb_key_press_event_t;

const
  XCB_KEY_RELEASE = 3;

type
  Pxcb_key_release_event_t = ^Txcb_key_release_event_t;
  Txcb_key_release_event_t = Txcb_key_press_event_t;

  Pxcb_button_mask_t = ^Txcb_button_mask_t;
  Txcb_button_mask_t = longint;

const
  XCB_BUTTON_MASK_1 = 256;
  XCB_BUTTON_MASK_2 = 512;
  XCB_BUTTON_MASK_3 = 1024;
  XCB_BUTTON_MASK_4 = 2048;
  XCB_BUTTON_MASK_5 = 4096;
  XCB_BUTTON_MASK_ANY = 32768;

const
  XCB_BUTTON_PRESS = 4;

type
  Txcb_button_press_event_t = record
    response_type: Tuint8_t;
    detail: Txcb_button_t;
    sequence: Tuint16_t;
    time: Txcb_timestamp_t;
    root: Txcb_window_t;
    event: Txcb_window_t;
    child: Txcb_window_t;
    root_x: Tint16_t;
    root_y: Tint16_t;
    event_x: Tint16_t;
    event_y: Tint16_t;
    state: Tuint16_t;
    same_screen: Tuint8_t;
    pad0: Tuint8_t;
  end;
  Pxcb_button_press_event_t = ^Txcb_button_press_event_t;

const
  XCB_BUTTON_RELEASE = 5;

type
  Pxcb_button_release_event_t = ^Txcb_button_release_event_t;
  Txcb_button_release_event_t = Txcb_button_press_event_t;

  Pxcb_motion_t = ^Txcb_motion_t;
  Txcb_motion_t = longint;

const
  XCB_MOTION_NORMAL = 0;
  XCB_MOTION_HINT = 1;

const
  XCB_MOTION_NOTIFY = 6;

type
  Txcb_motion_notify_event_t = record
    response_type: Tuint8_t;
    detail: Tuint8_t;
    sequence: Tuint16_t;
    time: Txcb_timestamp_t;
    root: Txcb_window_t;
    event: Txcb_window_t;
    child: Txcb_window_t;
    root_x: Tint16_t;
    root_y: Tint16_t;
    event_x: Tint16_t;
    event_y: Tint16_t;
    state: Tuint16_t;
    same_screen: Tuint8_t;
    pad0: Tuint8_t;
  end;
  Pxcb_motion_notify_event_t = ^Txcb_motion_notify_event_t;

  Pxcb_notify_detail_t = ^Txcb_notify_detail_t;
  Txcb_notify_detail_t = longint;

const
  XCB_NOTIFY_DETAIL_ANCESTOR = 0;
  XCB_NOTIFY_DETAIL_VIRTUAL = 1;
  XCB_NOTIFY_DETAIL_INFERIOR = 2;
  XCB_NOTIFY_DETAIL_NONLINEAR = 3;
  XCB_NOTIFY_DETAIL_NONLINEAR_VIRTUAL = 4;
  XCB_NOTIFY_DETAIL_POINTER = 5;
  XCB_NOTIFY_DETAIL_POINTER_ROOT = 6;
  XCB_NOTIFY_DETAIL_NONE = 7;

type
  Pxcb_notify_mode_t = ^Txcb_notify_mode_t;
  Txcb_notify_mode_t = longint;

const
  XCB_NOTIFY_MODE_NORMAL = 0;
  XCB_NOTIFY_MODE_GRAB = 1;
  XCB_NOTIFY_MODE_UNGRAB = 2;
  XCB_NOTIFY_MODE_WHILE_GRABBED = 3;

const
  XCB_ENTER_NOTIFY = 7;

type
  Txcb_enter_notify_event_t = record
    response_type: Tuint8_t;
    detail: Tuint8_t;
    sequence: Tuint16_t;
    time: Txcb_timestamp_t;
    root: Txcb_window_t;
    event: Txcb_window_t;
    child: Txcb_window_t;
    root_x: Tint16_t;
    root_y: Tint16_t;
    event_x: Tint16_t;
    event_y: Tint16_t;
    state: Tuint16_t;
    mode: Tuint8_t;
    same_screen_focus: Tuint8_t;
  end;
  Pxcb_enter_notify_event_t = ^Txcb_enter_notify_event_t;

const
  XCB_LEAVE_NOTIFY = 8;

type
  Pxcb_leave_notify_event_t = ^Txcb_leave_notify_event_t;
  Txcb_leave_notify_event_t = Txcb_enter_notify_event_t;

const
  XCB_FOCUS_IN = 9;

type
  Txcb_focus_in_event_t = record
    response_type: Tuint8_t;
    detail: Tuint8_t;
    sequence: Tuint16_t;
    event: Txcb_window_t;
    mode: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_focus_in_event_t = ^Txcb_focus_in_event_t;

const
  XCB_FOCUS_OUT = 10;

type
  Pxcb_focus_out_event_t = ^Txcb_focus_out_event_t;
  Txcb_focus_out_event_t = Txcb_focus_in_event_t;

const
  XCB_KEYMAP_NOTIFY = 11;

type
  Txcb_keymap_notify_event_t = record
    response_type: Tuint8_t;
    keys: array[0..30] of Tuint8_t;
  end;
  Pxcb_keymap_notify_event_t = ^Txcb_keymap_notify_event_t;

const
  XCB_EXPOSE = 12;

type
  Txcb_expose_event_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    window: Txcb_window_t;
    x: Tuint16_t;
    y: Tuint16_t;
    width: Tuint16_t;
    height: Tuint16_t;
    count: Tuint16_t;
    pad1: array[0..1] of Tuint8_t;
  end;
  Pxcb_expose_event_t = ^Txcb_expose_event_t;

const
  XCB_GRAPHICS_EXPOSURE = 13;

type
  Txcb_graphics_exposure_event_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    drawable: Txcb_drawable_t;
    x: Tuint16_t;
    y: Tuint16_t;
    width: Tuint16_t;
    height: Tuint16_t;
    minor_opcode: Tuint16_t;
    count: Tuint16_t;
    major_opcode: Tuint8_t;
    pad1: array[0..2] of Tuint8_t;
  end;
  Pxcb_graphics_exposure_event_t = ^Txcb_graphics_exposure_event_t;

const
  XCB_NO_EXPOSURE = 14;

type
  Txcb_no_exposure_event_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    drawable: Txcb_drawable_t;
    minor_opcode: Tuint16_t;
    major_opcode: Tuint8_t;
    pad1: Tuint8_t;
  end;
  Pxcb_no_exposure_event_t = ^Txcb_no_exposure_event_t;

  Pxcb_visibility_t = ^Txcb_visibility_t;
  Txcb_visibility_t = longint;

const
  XCB_VISIBILITY_UNOBSCURED = 0;
  XCB_VISIBILITY_PARTIALLY_OBSCURED = 1;
  XCB_VISIBILITY_FULLY_OBSCURED = 2;

const
  XCB_VISIBILITY_NOTIFY = 15;

type
  Txcb_visibility_notify_event_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    window: Txcb_window_t;
    state: Tuint8_t;
    pad1: array[0..2] of Tuint8_t;
  end;
  Pxcb_visibility_notify_event_t = ^Txcb_visibility_notify_event_t;

const
  XCB_CREATE_NOTIFY = 16;

type
  Txcb_create_notify_event_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    parent: Txcb_window_t;
    window: Txcb_window_t;
    x: Tint16_t;
    y: Tint16_t;
    width: Tuint16_t;
    height: Tuint16_t;
    border_width: Tuint16_t;
    override_redirect: Tuint8_t;
    pad1: Tuint8_t;
  end;
  Pxcb_create_notify_event_t = ^Txcb_create_notify_event_t;

const
  XCB_DESTROY_NOTIFY = 17;

type
  Txcb_destroy_notify_event_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    event: Txcb_window_t;
    window: Txcb_window_t;
  end;
  Pxcb_destroy_notify_event_t = ^Txcb_destroy_notify_event_t;

const
  XCB_UNMAP_NOTIFY = 18;

type
  Txcb_unmap_notify_event_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    event: Txcb_window_t;
    window: Txcb_window_t;
    from_configure: Tuint8_t;
    pad1: array[0..2] of Tuint8_t;
  end;
  Pxcb_unmap_notify_event_t = ^Txcb_unmap_notify_event_t;

const
  XCB_MAP_NOTIFY = 19;

type
  Txcb_map_notify_event_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    event: Txcb_window_t;
    window: Txcb_window_t;
    override_redirect: Tuint8_t;
    pad1: array[0..2] of Tuint8_t;
  end;
  Pxcb_map_notify_event_t = ^Txcb_map_notify_event_t;

const
  XCB_MAP_REQUEST = 20;

type
  Txcb_map_request_event_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    parent: Txcb_window_t;
    window: Txcb_window_t;
  end;
  Pxcb_map_request_event_t = ^Txcb_map_request_event_t;

const
  XCB_REPARENT_NOTIFY = 21;

type
  Txcb_reparent_notify_event_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    event: Txcb_window_t;
    window: Txcb_window_t;
    parent: Txcb_window_t;
    x: Tint16_t;
    y: Tint16_t;
    override_redirect: Tuint8_t;
    pad1: array[0..2] of Tuint8_t;
  end;
  Pxcb_reparent_notify_event_t = ^Txcb_reparent_notify_event_t;

const
  XCB_CONFIGURE_NOTIFY = 22;

type
  Txcb_configure_notify_event_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    event: Txcb_window_t;
    window: Txcb_window_t;
    above_sibling: Txcb_window_t;
    x: Tint16_t;
    y: Tint16_t;
    width: Tuint16_t;
    height: Tuint16_t;
    border_width: Tuint16_t;
    override_redirect: Tuint8_t;
    pad1: Tuint8_t;
  end;
  Pxcb_configure_notify_event_t = ^Txcb_configure_notify_event_t;

const
  XCB_CONFIGURE_REQUEST = 23;

type
  Txcb_configure_request_event_t = record
    response_type: Tuint8_t;
    stack_mode: Tuint8_t;
    sequence: Tuint16_t;
    parent: Txcb_window_t;
    window: Txcb_window_t;
    sibling: Txcb_window_t;
    x: Tint16_t;
    y: Tint16_t;
    width: Tuint16_t;
    height: Tuint16_t;
    border_width: Tuint16_t;
    value_mask: Tuint16_t;
  end;
  Pxcb_configure_request_event_t = ^Txcb_configure_request_event_t;

const
  XCB_GRAVITY_NOTIFY = 24;

type
  Txcb_gravity_notify_event_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    event: Txcb_window_t;
    window: Txcb_window_t;
    x: Tint16_t;
    y: Tint16_t;
  end;
  Pxcb_gravity_notify_event_t = ^Txcb_gravity_notify_event_t;

const
  XCB_RESIZE_REQUEST = 25;

type
  Txcb_resize_request_event_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    window: Txcb_window_t;
    width: Tuint16_t;
    height: Tuint16_t;
  end;
  Pxcb_resize_request_event_t = ^Txcb_resize_request_event_t;

  Pxcb_place_t = ^Txcb_place_t;
  Txcb_place_t = longint;

const
  XCB_PLACE_ON_TOP = 0;
  XCB_PLACE_ON_BOTTOM = 1;

const
  XCB_CIRCULATE_NOTIFY = 26;

type
  Txcb_circulate_notify_event_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    event: Txcb_window_t;
    window: Txcb_window_t;
    pad1: array[0..3] of Tuint8_t;
    place: Tuint8_t;
    pad2: array[0..2] of Tuint8_t;
  end;
  Pxcb_circulate_notify_event_t = ^Txcb_circulate_notify_event_t;

const
  XCB_CIRCULATE_REQUEST = 27;

type
  Pxcb_circulate_request_event_t = ^Txcb_circulate_request_event_t;
  Txcb_circulate_request_event_t = Txcb_circulate_notify_event_t;

  Pxcb_property_t = ^Txcb_property_t;
  Txcb_property_t = longint;

const
  XCB_PROPERTY_NEW_VALUE = 0;
  XCB_PROPERTY_DELETE = 1;

const
  XCB_PROPERTY_NOTIFY = 28;

type
  Txcb_property_notify_event_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    window: Txcb_window_t;
    atom: Txcb_atom_t;
    time: Txcb_timestamp_t;
    state: Tuint8_t;
    pad1: array[0..2] of Tuint8_t;
  end;
  Pxcb_property_notify_event_t = ^Txcb_property_notify_event_t;

const
  XCB_SELECTION_CLEAR = 29;

type
  Txcb_selection_clear_event_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    time: Txcb_timestamp_t;
    owner: Txcb_window_t;
    selection: Txcb_atom_t;
  end;
  Pxcb_selection_clear_event_t = ^Txcb_selection_clear_event_t;

  Pxcb_time_t = ^Txcb_time_t;
  Txcb_time_t = longint;

const
  XCB_TIME_CURRENT_TIME = 0;

type
  Pxcb_atom_enum_t = ^Txcb_atom_enum_t;
  Txcb_atom_enum_t = longint;

const
  XCB_ATOM_NONE = 0;
  XCB_ATOM_ANY = 0;
  XCB_ATOM_PRIMARY = 1;
  XCB_ATOM_SECONDARY = 2;
  XCB_ATOM_ARC = 3;
  XCB_ATOM_ATOM = 4;
  XCB_ATOM_BITMAP = 5;
  XCB_ATOM_CARDINAL = 6;
  XCB_ATOM_COLORMAP = 7;
  XCB_ATOM_CURSOR = 8;
  XCB_ATOM_CUT_BUFFER0 = 9;
  XCB_ATOM_CUT_BUFFER1 = 10;
  XCB_ATOM_CUT_BUFFER2 = 11;
  XCB_ATOM_CUT_BUFFER3 = 12;
  XCB_ATOM_CUT_BUFFER4 = 13;
  XCB_ATOM_CUT_BUFFER5 = 14;
  XCB_ATOM_CUT_BUFFER6 = 15;
  XCB_ATOM_CUT_BUFFER7 = 16;
  XCB_ATOM_DRAWABLE = 17;
  XCB_ATOM_FONT = 18;
  XCB_ATOM_INTEGER = 19;
  XCB_ATOM_PIXMAP = 20;
  XCB_ATOM_POINT = 21;
  XCB_ATOM_RECTANGLE = 22;
  XCB_ATOM_RESOURCE_MANAGER = 23;
  XCB_ATOM_RGB_COLOR_MAP = 24;
  XCB_ATOM_RGB_BEST_MAP = 25;
  XCB_ATOM_RGB_BLUE_MAP = 26;
  XCB_ATOM_RGB_DEFAULT_MAP = 27;
  XCB_ATOM_RGB_GRAY_MAP = 28;
  XCB_ATOM_RGB_GREEN_MAP = 29;
  XCB_ATOM_RGB_RED_MAP = 30;
  XCB_ATOM_STRING = 31;
  XCB_ATOM_VISUALID = 32;
  XCB_ATOM_WINDOW = 33;
  XCB_ATOM_WM_COMMAND = 34;
  XCB_ATOM_WM_HINTS = 35;
  XCB_ATOM_WM_CLIENT_MACHINE = 36;
  XCB_ATOM_WM_ICON_NAME = 37;
  XCB_ATOM_WM_ICON_SIZE = 38;
  XCB_ATOM_WM_NAME = 39;
  XCB_ATOM_WM_NORMAL_HINTS = 40;
  XCB_ATOM_WM_SIZE_HINTS = 41;
  XCB_ATOM_WM_ZOOM_HINTS = 42;
  XCB_ATOM_MIN_SPACE = 43;
  XCB_ATOM_NORM_SPACE = 44;
  XCB_ATOM_MAX_SPACE = 45;
  XCB_ATOM_END_SPACE = 46;
  XCB_ATOM_SUPERSCRIPT_X = 47;
  XCB_ATOM_SUPERSCRIPT_Y = 48;
  XCB_ATOM_SUBSCRIPT_X = 49;
  XCB_ATOM_SUBSCRIPT_Y = 50;
  XCB_ATOM_UNDERLINE_POSITION = 51;
  XCB_ATOM_UNDERLINE_THICKNESS = 52;
  XCB_ATOM_STRIKEOUT_ASCENT = 53;
  XCB_ATOM_STRIKEOUT_DESCENT = 54;
  XCB_ATOM_ITALIC_ANGLE = 55;
  XCB_ATOM_X_HEIGHT = 56;
  XCB_ATOM_QUAD_WIDTH = 57;
  XCB_ATOM_WEIGHT = 58;
  XCB_ATOM_POINT_SIZE = 59;
  XCB_ATOM_RESOLUTION = 60;
  XCB_ATOM_COPYRIGHT = 61;
  XCB_ATOM_NOTICE = 62;
  XCB_ATOM_FONT_NAME = 63;
  XCB_ATOM_FAMILY_NAME = 64;
  XCB_ATOM_FULL_NAME = 65;
  XCB_ATOM_CAP_HEIGHT = 66;
  XCB_ATOM_WM_CLASS = 67;
  XCB_ATOM_WM_TRANSIENT_FOR = 68;

const
  XCB_SELECTION_REQUEST = 30;

type
  Txcb_selection_request_event_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    time: Txcb_timestamp_t;
    owner: Txcb_window_t;
    requestor: Txcb_window_t;
    selection: Txcb_atom_t;
    target: Txcb_atom_t;
    _property: Txcb_atom_t;
  end;
  Pxcb_selection_request_event_t = ^Txcb_selection_request_event_t;

const
  XCB_SELECTION_NOTIFY = 31;

type
  Txcb_selection_notify_event_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    time: Txcb_timestamp_t;
    requestor: Txcb_window_t;
    selection: Txcb_atom_t;
    target: Txcb_atom_t;
    _property: Txcb_atom_t;
  end;
  Pxcb_selection_notify_event_t = ^Txcb_selection_notify_event_t;

  Pxcb_colormap_state_t = ^Txcb_colormap_state_t;
  Txcb_colormap_state_t = longint;

const
  XCB_COLORMAP_STATE_UNINSTALLED = 0;
  XCB_COLORMAP_STATE_INSTALLED = 1;

type
  Pxcb_colormap_enum_t = ^Txcb_colormap_enum_t;
  Txcb_colormap_enum_t = longint;

const
  XCB_COLORMAP_NONE = 0;

const
  XCB_COLORMAP_NOTIFY = 32;

type
  Txcb_colormap_notify_event_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    window: Txcb_window_t;
    colormap: Txcb_colormap_t;
    _new: Tuint8_t;
    state: Tuint8_t;
    pad1: array[0..1] of Tuint8_t;
  end;
  Pxcb_colormap_notify_event_t = ^Txcb_colormap_notify_event_t;

  Txcb_client_message_data_t = record
    case longint of
      0: (data8: array[0..19] of Tuint8_t);
      1: (data16: array[0..9] of Tuint16_t);
      2: (data32: array[0..4] of Tuint32_t);
  end;
  Pxcb_client_message_data_t = ^Txcb_client_message_data_t;

  Txcb_client_message_data_iterator_t = record
    data: Pxcb_client_message_data_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_client_message_data_iterator_t = ^Txcb_client_message_data_iterator_t;

const
  XCB_CLIENT_MESSAGE = 33;

type
  Txcb_client_message_event_t = record
    response_type: Tuint8_t;
    format: Tuint8_t;
    sequence: Tuint16_t;
    window: Txcb_window_t;
    _type: Txcb_atom_t;
    data: Txcb_client_message_data_t;
  end;
  Pxcb_client_message_event_t = ^Txcb_client_message_event_t;

  Pxcb_mapping_t = ^Txcb_mapping_t;
  Txcb_mapping_t = longint;

const
  XCB_MAPPING_MODIFIER = 0;
  XCB_MAPPING_KEYBOARD = 1;
  XCB_MAPPING_POINTER = 2;

const
  XCB_MAPPING_NOTIFY = 34;

type
  Txcb_mapping_notify_event_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    request: Tuint8_t;
    first_keycode: Txcb_keycode_t;
    count: Tuint8_t;
    pad1: Tuint8_t;
  end;
  Pxcb_mapping_notify_event_t = ^Txcb_mapping_notify_event_t;

const
  XCB_GE_GENERIC = 35;

type
  Txcb_ge_generic_event_t = record
    response_type: Tuint8_t;
    extension: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    event_type: Tuint16_t;
    pad0: array[0..21] of Tuint8_t;
    full_sequence: Tuint32_t;
  end;
  Pxcb_ge_generic_event_t = ^Txcb_ge_generic_event_t;

const
  XCB_REQUEST = 1;

type
  Txcb_request_error_t = record
    response_type: Tuint8_t;
    error_code: Tuint8_t;
    sequence: Tuint16_t;
    bad_value: Tuint32_t;
    minor_opcode: Tuint16_t;
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
  end;
  Pxcb_request_error_t = ^Txcb_request_error_t;

const
  XCB_VALUE = 2;

type
  Txcb_value_error_t = record
    response_type: Tuint8_t;
    error_code: Tuint8_t;
    sequence: Tuint16_t;
    bad_value: Tuint32_t;
    minor_opcode: Tuint16_t;
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
  end;
  Pxcb_value_error_t = ^Txcb_value_error_t;

const
  XCB_WINDOW = 3;

type
  Pxcb_window_error_t = ^Txcb_window_error_t;
  Txcb_window_error_t = Txcb_value_error_t;

const
  XCB_PIXMAP = 4;

type
  Pxcb_pixmap_error_t = ^Txcb_pixmap_error_t;
  Txcb_pixmap_error_t = Txcb_value_error_t;

const
  XCB_ATOM = 5;

type
  Pxcb_atom_error_t = ^Txcb_atom_error_t;
  Txcb_atom_error_t = Txcb_value_error_t;

const
  XCB_CURSOR = 6;

type
  Pxcb_cursor_error_t = ^Txcb_cursor_error_t;
  Txcb_cursor_error_t = Txcb_value_error_t;

const
  XCB_FONT = 7;

type
  Pxcb_font_error_t = ^Txcb_font_error_t;
  Txcb_font_error_t = Txcb_value_error_t;

const
  XCB_MATCH = 8;

type
  Pxcb_match_error_t = ^Txcb_match_error_t;
  Txcb_match_error_t = Txcb_request_error_t;

const
  XCB_DRAWABLE = 9;

type
  Pxcb_drawable_error_t = ^Txcb_drawable_error_t;
  Txcb_drawable_error_t = Txcb_value_error_t;

const
  XCB_ACCESS = 10;

type
  Pxcb_access_error_t = ^Txcb_access_error_t;
  Txcb_access_error_t = Txcb_request_error_t;

const
  XCB_ALLOC = 11;

type
  Pxcb_alloc_error_t = ^Txcb_alloc_error_t;
  Txcb_alloc_error_t = Txcb_request_error_t;

const
  XCB_COLORMAP = 12;

type
  Pxcb_colormap_error_t = ^Txcb_colormap_error_t;
  Txcb_colormap_error_t = Txcb_value_error_t;

const
  XCB_G_CONTEXT = 13;

type
  Pxcb_g_context_error_t = ^Txcb_g_context_error_t;
  Txcb_g_context_error_t = Txcb_value_error_t;

const
  XCB_ID_CHOICE = 14;

type
  Pxcb_id_choice_error_t = ^Txcb_id_choice_error_t;
  Txcb_id_choice_error_t = Txcb_value_error_t;

const
  XCB_NAME = 15;

type
  Pxcb_name_error_t = ^Txcb_name_error_t;
  Txcb_name_error_t = Txcb_request_error_t;

const
  XCB_LENGTH = 16;

type
  Pxcb_length_error_t = ^Txcb_length_error_t;
  Txcb_length_error_t = Txcb_request_error_t;

const
  XCB_IMPLEMENTATION = 17;

type
  Pxcb_implementation_error_t = ^Txcb_implementation_error_t;
  Txcb_implementation_error_t = Txcb_request_error_t;

  Pxcb_window_class_t = ^Txcb_window_class_t;
  Txcb_window_class_t = longint;

const
  XCB_WINDOW_CLASS_COPY_FROM_PARENT = 0;
  XCB_WINDOW_CLASS_INPUT_OUTPUT = 1;
  XCB_WINDOW_CLASS_INPUT_ONLY = 2;

type
  Pxcb_cw_t = ^Txcb_cw_t;
  Txcb_cw_t = longint;

const
  XCB_CW_BACK_PIXMAP = 1;
  XCB_CW_BACK_PIXEL = 2;
  XCB_CW_BORDER_PIXMAP = 4;
  XCB_CW_BORDER_PIXEL = 8;
  XCB_CW_BIT_GRAVITY = 16;
  XCB_CW_WIN_GRAVITY = 32;
  XCB_CW_BACKING_STORE = 64;
  XCB_CW_BACKING_PLANES = 128;
  XCB_CW_BACKING_PIXEL = 256;
  XCB_CW_OVERRIDE_REDIRECT = 512;
  XCB_CW_SAVE_UNDER = 1024;
  XCB_CW_EVENT_MASK = 2048;
  XCB_CW_DONT_PROPAGATE = 4096;
  XCB_CW_COLORMAP = 8192;
  XCB_CW_CURSOR = 16384;

type
  Pxcb_back_pixmap_t = ^Txcb_back_pixmap_t;
  Txcb_back_pixmap_t = longint;

const
  XCB_BACK_PIXMAP_NONE = 0;
  XCB_BACK_PIXMAP_PARENT_RELATIVE = 1;

type
  Pxcb_gravity_t = ^Txcb_gravity_t;
  Txcb_gravity_t = longint;

const
  XCB_GRAVITY_BIT_FORGET = 0;
  XCB_GRAVITY_WIN_UNMAP = 0;
  XCB_GRAVITY_NORTH_WEST = 1;
  XCB_GRAVITY_NORTH = 2;
  XCB_GRAVITY_NORTH_EAST = 3;
  XCB_GRAVITY_WEST = 4;
  XCB_GRAVITY_CENTER = 5;
  XCB_GRAVITY_EAST = 6;
  XCB_GRAVITY_SOUTH_WEST = 7;
  XCB_GRAVITY_SOUTH = 8;
  XCB_GRAVITY_SOUTH_EAST = 9;
  XCB_GRAVITY_STATIC = 10;

type
  Txcb_create_window_value_list_t = record
    background_pixmap: Txcb_pixmap_t;
    background_pixel: Tuint32_t;
    border_pixmap: Txcb_pixmap_t;
    border_pixel: Tuint32_t;
    bit_gravity: Tuint32_t;
    win_gravity: Tuint32_t;
    backing_store: Tuint32_t;
    backing_planes: Tuint32_t;
    backing_pixel: Tuint32_t;
    override_redirect: Txcb_bool32_t;
    save_under: Txcb_bool32_t;
    event_mask: Tuint32_t;
    do_not_propogate_mask: Tuint32_t;
    colormap: Txcb_colormap_t;
    cursor: Txcb_cursor_t;
  end;
  Pxcb_create_window_value_list_t = ^Txcb_create_window_value_list_t;

const
  XCB_CREATE_WINDOW_ = 1;

type
  Txcb_create_window_request_t = record
    major_opcode: Tuint8_t;
    depth: Tuint8_t;
    length: Tuint16_t;
    wid: Txcb_window_t;
    parent: Txcb_window_t;
    x: Tint16_t;
    y: Tint16_t;
    width: Tuint16_t;
    height: Tuint16_t;
    border_width: Tuint16_t;
    _class: Tuint16_t;
    visual: Txcb_visualid_t;
    value_mask: Tuint32_t;
  end;
  Pxcb_create_window_request_t = ^Txcb_create_window_request_t;

  Txcb_change_window_attributes_value_list_t = record
    background_pixmap: Txcb_pixmap_t;
    background_pixel: Tuint32_t;
    border_pixmap: Txcb_pixmap_t;
    border_pixel: Tuint32_t;
    bit_gravity: Tuint32_t;
    win_gravity: Tuint32_t;
    backing_store: Tuint32_t;
    backing_planes: Tuint32_t;
    backing_pixel: Tuint32_t;
    override_redirect: Txcb_bool32_t;
    save_under: Txcb_bool32_t;
    event_mask: Tuint32_t;
    do_not_propogate_mask: Tuint32_t;
    colormap: Txcb_colormap_t;
    cursor: Txcb_cursor_t;
  end;
  Pxcb_change_window_attributes_value_list_t = ^Txcb_change_window_attributes_value_list_t;

const
  XCB_CHANGE_WINDOW_ATTRIBUTES_ = 2;

type
  Txcb_change_window_attributes_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    value_mask: Tuint32_t;
  end;
  Pxcb_change_window_attributes_request_t = ^Txcb_change_window_attributes_request_t;

  Pxcb_map_state_t = ^Txcb_map_state_t;
  Txcb_map_state_t = longint;

const
  XCB_MAP_STATE_UNMAPPED = 0;
  XCB_MAP_STATE_UNVIEWABLE = 1;
  XCB_MAP_STATE_VIEWABLE = 2;

type
  Txcb_get_window_attributes_cookie_t = record
    sequence: dword;
  end;
  Pxcb_get_window_attributes_cookie_t = ^Txcb_get_window_attributes_cookie_t;

const
  XCB_GET_WINDOW_ATTRIBUTES_ = 3;

type
  Txcb_get_window_attributes_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
  end;
  Pxcb_get_window_attributes_request_t = ^Txcb_get_window_attributes_request_t;

  Txcb_get_window_attributes_reply_t = record
    response_type: Tuint8_t;
    backing_store: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    visual: Txcb_visualid_t;
    _class: Tuint16_t;
    bit_gravity: Tuint8_t;
    win_gravity: Tuint8_t;
    backing_planes: Tuint32_t;
    backing_pixel: Tuint32_t;
    save_under: Tuint8_t;
    map_is_installed: Tuint8_t;
    map_state: Tuint8_t;
    override_redirect: Tuint8_t;
    colormap: Txcb_colormap_t;
    all_event_masks: Tuint32_t;
    your_event_mask: Tuint32_t;
    do_not_propagate_mask: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_get_window_attributes_reply_t = ^Txcb_get_window_attributes_reply_t;

const
  XCB_DESTROY_WINDOW_ = 4;

type
  Txcb_destroy_window_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
  end;
  Pxcb_destroy_window_request_t = ^Txcb_destroy_window_request_t;

const
  XCB_DESTROY_SUBWINDOWS_ = 5;

type
  Txcb_destroy_subwindows_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
  end;
  Pxcb_destroy_subwindows_request_t = ^Txcb_destroy_subwindows_request_t;

  Pxcb_set_mode_t = ^Txcb_set_mode_t;
  Txcb_set_mode_t = longint;

const
  XCB_SET_MODE_INSERT = 0;
  XCB_SET_MODE_DELETE = 1;

const
  XCB_CHANGE_SAVE_SET_ = 6;

type
  Txcb_change_save_set_request_t = record
    major_opcode: Tuint8_t;
    mode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
  end;
  Pxcb_change_save_set_request_t = ^Txcb_change_save_set_request_t;

const
  XCB_REPARENT_WINDOW_ = 7;

type
  Txcb_reparent_window_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    parent: Txcb_window_t;
    x: Tint16_t;
    y: Tint16_t;
  end;
  Pxcb_reparent_window_request_t = ^Txcb_reparent_window_request_t;

const
  XCB_MAP_WINDOW_ = 8;

type
  Txcb_map_window_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
  end;
  Pxcb_map_window_request_t = ^Txcb_map_window_request_t;

const
  XCB_MAP_SUBWINDOWS_ = 9;

type
  Txcb_map_subwindows_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
  end;
  Pxcb_map_subwindows_request_t = ^Txcb_map_subwindows_request_t;

const
  XCB_UNMAP_WINDOW_ = 10;

type
  Txcb_unmap_window_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
  end;
  Pxcb_unmap_window_request_t = ^Txcb_unmap_window_request_t;

const
  XCB_UNMAP_SUBWINDOWS_ = 11;

type
  Txcb_unmap_subwindows_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
  end;
  Pxcb_unmap_subwindows_request_t = ^Txcb_unmap_subwindows_request_t;

  Pxcb_config_window_t = ^Txcb_config_window_t;
  Txcb_config_window_t = longint;

const
  XCB_CONFIG_WINDOW_X = 1;
  XCB_CONFIG_WINDOW_Y = 2;
  XCB_CONFIG_WINDOW_WIDTH = 4;
  XCB_CONFIG_WINDOW_HEIGHT = 8;
  XCB_CONFIG_WINDOW_BORDER_WIDTH = 16;
  XCB_CONFIG_WINDOW_SIBLING = 32;
  XCB_CONFIG_WINDOW_STACK_MODE = 64;

type
  Pxcb_stack_mode_t = ^Txcb_stack_mode_t;
  Txcb_stack_mode_t = longint;

const
  XCB_STACK_MODE_ABOVE = 0;
  XCB_STACK_MODE_BELOW = 1;
  XCB_STACK_MODE_TOP_IF = 2;
  XCB_STACK_MODE_BOTTOM_IF = 3;
  XCB_STACK_MODE_OPPOSITE = 4;

type
  Txcb_configure_window_value_list_t = record
    x: Tint32_t;
    y: Tint32_t;
    width: Tuint32_t;
    height: Tuint32_t;
    border_width: Tuint32_t;
    sibling: Txcb_window_t;
    stack_mode: Tuint32_t;
  end;
  Pxcb_configure_window_value_list_t = ^Txcb_configure_window_value_list_t;

const
  XCB_CONFIGURE_WINDOW_ = 12;

type
  Txcb_configure_window_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    value_mask: Tuint16_t;
    pad1: array[0..1] of Tuint8_t;
  end;
  Pxcb_configure_window_request_t = ^Txcb_configure_window_request_t;

  Pxcb_circulate_t = ^Txcb_circulate_t;
  Txcb_circulate_t = longint;

const
  XCB_CIRCULATE_RAISE_LOWEST = 0;
  XCB_CIRCULATE_LOWER_HIGHEST = 1;

const
  XCB_CIRCULATE_WINDOW_ = 13;

type
  Txcb_circulate_window_request_t = record
    major_opcode: Tuint8_t;
    direction: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
  end;
  Pxcb_circulate_window_request_t = ^Txcb_circulate_window_request_t;

  Txcb_get_geometry_cookie_t = record
    sequence: dword;
  end;
  Pxcb_get_geometry_cookie_t = ^Txcb_get_geometry_cookie_t;

const
  XCB_GET_GEOMETRY_ = 14;

type
  Txcb_get_geometry_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
  end;
  Pxcb_get_geometry_request_t = ^Txcb_get_geometry_request_t;

  Txcb_get_geometry_reply_t = record
    response_type: Tuint8_t;
    depth: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    root: Txcb_window_t;
    x: Tint16_t;
    y: Tint16_t;
    width: Tuint16_t;
    height: Tuint16_t;
    border_width: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_get_geometry_reply_t = ^Txcb_get_geometry_reply_t;

  Txcb_query_tree_cookie_t = record
    sequence: dword;
  end;
  Pxcb_query_tree_cookie_t = ^Txcb_query_tree_cookie_t;

const
  XCB_QUERY_TREE_ = 15;

type
  Txcb_query_tree_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
  end;
  Pxcb_query_tree_request_t = ^Txcb_query_tree_request_t;

  Txcb_query_tree_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    root: Txcb_window_t;
    parent: Txcb_window_t;
    children_len: Tuint16_t;
    pad1: array[0..13] of Tuint8_t;
  end;
  Pxcb_query_tree_reply_t = ^Txcb_query_tree_reply_t;

  Txcb_intern_atom_cookie_t = record
    sequence: dword;
  end;
  Pxcb_intern_atom_cookie_t = ^Txcb_intern_atom_cookie_t;

const
  XCB_INTERN_ATOM_ = 16;

type
  Txcb_intern_atom_request_t = record
    major_opcode: Tuint8_t;
    only_if_exists: Tuint8_t;
    length: Tuint16_t;
    name_len: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_intern_atom_request_t = ^Txcb_intern_atom_request_t;

  Txcb_intern_atom_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    atom: Txcb_atom_t;
  end;
  Pxcb_intern_atom_reply_t = ^Txcb_intern_atom_reply_t;

  Txcb_get_atom_name_cookie_t = record
    sequence: dword;
  end;
  Pxcb_get_atom_name_cookie_t = ^Txcb_get_atom_name_cookie_t;

const
  XCB_GET_ATOM_NAME_ = 17;

type
  Txcb_get_atom_name_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    atom: Txcb_atom_t;
  end;
  Pxcb_get_atom_name_request_t = ^Txcb_get_atom_name_request_t;

  Txcb_get_atom_name_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    name_len: Tuint16_t;
    pad1: array[0..21] of Tuint8_t;
  end;
  Pxcb_get_atom_name_reply_t = ^Txcb_get_atom_name_reply_t;

  Pxcb_prop_mode_t = ^Txcb_prop_mode_t;
  Txcb_prop_mode_t = longint;

const
  XCB_PROP_MODE_REPLACE = 0;
  XCB_PROP_MODE_PREPEND = 1;
  XCB_PROP_MODE_APPEND = 2;

const
  XCB_CHANGE_PROPERTY_ = 18;

type
  Txcb_change_property_request_t = record
    major_opcode: Tuint8_t;
    mode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    _property: Txcb_atom_t;
    _type: Txcb_atom_t;
    format: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
    data_len: Tuint32_t;
  end;
  Pxcb_change_property_request_t = ^Txcb_change_property_request_t;

const
  XCB_DELETE_PROPERTY_ = 19;

type
  Txcb_delete_property_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    _property: Txcb_atom_t;
  end;
  Pxcb_delete_property_request_t = ^Txcb_delete_property_request_t;

  Pxcb_get_property_type_t = ^Txcb_get_property_type_t;
  Txcb_get_property_type_t = longint;

const
  XCB_GET_PROPERTY_TYPE_ANY = 0;

type
  Txcb_get_property_cookie_t = record
    sequence: dword;
  end;
  Pxcb_get_property_cookie_t = ^Txcb_get_property_cookie_t;

const
  XCB_GET_PROPERTY_ = 20;

type
  Txcb_get_property_request_t = record
    major_opcode: Tuint8_t;
    _delete: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    _property: Txcb_atom_t;
    _type: Txcb_atom_t;
    long_offset: Tuint32_t;
    long_length: Tuint32_t;
  end;
  Pxcb_get_property_request_t = ^Txcb_get_property_request_t;

  Txcb_get_property_reply_t = record
    response_type: Tuint8_t;
    format: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    _type: Txcb_atom_t;
    bytes_after: Tuint32_t;
    value_len: Tuint32_t;
    pad0: array[0..11] of Tuint8_t;
  end;
  Pxcb_get_property_reply_t = ^Txcb_get_property_reply_t;

  Txcb_list_properties_cookie_t = record
    sequence: dword;
  end;
  Pxcb_list_properties_cookie_t = ^Txcb_list_properties_cookie_t;

const
  XCB_LIST_PROPERTIES_ = 21;

type
  Txcb_list_properties_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
  end;
  Pxcb_list_properties_request_t = ^Txcb_list_properties_request_t;

  Txcb_list_properties_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    atoms_len: Tuint16_t;
    pad1: array[0..21] of Tuint8_t;
  end;
  Pxcb_list_properties_reply_t = ^Txcb_list_properties_reply_t;

const
  XCB_SET_SELECTION_OWNER_ = 22;

type
  Txcb_set_selection_owner_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    owner: Txcb_window_t;
    selection: Txcb_atom_t;
    time: Txcb_timestamp_t;
  end;
  Pxcb_set_selection_owner_request_t = ^Txcb_set_selection_owner_request_t;

  Txcb_get_selection_owner_cookie_t = record
    sequence: dword;
  end;
  Pxcb_get_selection_owner_cookie_t = ^Txcb_get_selection_owner_cookie_t;

const
  XCB_GET_SELECTION_OWNER_ = 23;

type
  Txcb_get_selection_owner_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    selection: Txcb_atom_t;
  end;
  Pxcb_get_selection_owner_request_t = ^Txcb_get_selection_owner_request_t;

  Txcb_get_selection_owner_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    owner: Txcb_window_t;
  end;
  Pxcb_get_selection_owner_reply_t = ^Txcb_get_selection_owner_reply_t;

const
  XCB_CONVERT_SELECTION_ = 24;

type
  Txcb_convert_selection_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    requestor: Txcb_window_t;
    selection: Txcb_atom_t;
    target: Txcb_atom_t;
    _property: Txcb_atom_t;
    time: Txcb_timestamp_t;
  end;
  Pxcb_convert_selection_request_t = ^Txcb_convert_selection_request_t;

  Pxcb_send_event_dest_t = ^Txcb_send_event_dest_t;
  Txcb_send_event_dest_t = longint;

const
  XCB_SEND_EVENT_DEST_POINTER_WINDOW = 0;
  XCB_SEND_EVENT_DEST_ITEM_FOCUS = 1;

const
  XCB_SEND_EVENT_ = 25;

type
  Txcb_send_event_request_t = record
    major_opcode: Tuint8_t;
    propagate: Tuint8_t;
    length: Tuint16_t;
    destination: Txcb_window_t;
    event_mask: Tuint32_t;
    event: array[0..31] of char;
  end;
  Pxcb_send_event_request_t = ^Txcb_send_event_request_t;

  Pxcb_grab_mode_t = ^Txcb_grab_mode_t;
  Txcb_grab_mode_t = longint;

const
  XCB_GRAB_MODE_SYNC = 0;
  XCB_GRAB_MODE_ASYNC = 1;

type
  Pxcb_grab_status_t = ^Txcb_grab_status_t;
  Txcb_grab_status_t = longint;

const
  XCB_GRAB_STATUS_SUCCESS = 0;
  XCB_GRAB_STATUS_ALREADY_GRABBED = 1;
  XCB_GRAB_STATUS_INVALID_TIME = 2;
  XCB_GRAB_STATUS_NOT_VIEWABLE = 3;
  XCB_GRAB_STATUS_FROZEN = 4;

type
  Pxcb_cursor_enum_t = ^Txcb_cursor_enum_t;
  Txcb_cursor_enum_t = longint;

const
  XCB_CURSOR_NONE = 0;

type
  Txcb_grab_pointer_cookie_t = record
    sequence: dword;
  end;
  Pxcb_grab_pointer_cookie_t = ^Txcb_grab_pointer_cookie_t;

const
  XCB_GRAB_POINTER_ = 26;

type
  Txcb_grab_pointer_request_t = record
    major_opcode: Tuint8_t;
    owner_events: Tuint8_t;
    length: Tuint16_t;
    grab_window: Txcb_window_t;
    event_mask: Tuint16_t;
    pointer_mode: Tuint8_t;
    keyboard_mode: Tuint8_t;
    confine_to: Txcb_window_t;
    cursor: Txcb_cursor_t;
    time: Txcb_timestamp_t;
  end;
  Pxcb_grab_pointer_request_t = ^Txcb_grab_pointer_request_t;

  Txcb_grab_pointer_reply_t = record
    response_type: Tuint8_t;
    status: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
  end;
  Pxcb_grab_pointer_reply_t = ^Txcb_grab_pointer_reply_t;

const
  XCB_UNGRAB_POINTER_ = 27;

type
  Txcb_ungrab_pointer_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    time: Txcb_timestamp_t;
  end;
  Pxcb_ungrab_pointer_request_t = ^Txcb_ungrab_pointer_request_t;

type
  Pxcb_button_index_t = ^Txcb_button_index_t;
  Txcb_button_index_t = longint;

const
  XCB_BUTTON_INDEX_ANY = 0;
  XCB_BUTTON_INDEX_1 = 1;
  XCB_BUTTON_INDEX_2 = 2;
  XCB_BUTTON_INDEX_3 = 3;
  XCB_BUTTON_INDEX_4 = 4;
  XCB_BUTTON_INDEX_5 = 5;

const
  XCB_GRAB_BUTTON_ = 28;

type
  Txcb_grab_button_request_t = record
    major_opcode: Tuint8_t;
    owner_events: Tuint8_t;
    length: Tuint16_t;
    grab_window: Txcb_window_t;
    event_mask: Tuint16_t;
    pointer_mode: Tuint8_t;
    keyboard_mode: Tuint8_t;
    confine_to: Txcb_window_t;
    cursor: Txcb_cursor_t;
    button: Tuint8_t;
    pad0: Tuint8_t;
    modifiers: Tuint16_t;
  end;
  Pxcb_grab_button_request_t = ^Txcb_grab_button_request_t;

const
  XCB_UNGRAB_BUTTON_ = 29;

type
  Txcb_ungrab_button_request_t = record
    major_opcode: Tuint8_t;
    button: Tuint8_t;
    length: Tuint16_t;
    grab_window: Txcb_window_t;
    modifiers: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_ungrab_button_request_t = ^Txcb_ungrab_button_request_t;

const
  XCB_CHANGE_ACTIVE_POINTER_GRAB_ = 30;

type
  Txcb_change_active_pointer_grab_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    cursor: Txcb_cursor_t;
    time: Txcb_timestamp_t;
    event_mask: Tuint16_t;
    pad1: array[0..1] of Tuint8_t;
  end;
  Pxcb_change_active_pointer_grab_request_t = ^Txcb_change_active_pointer_grab_request_t;

  Txcb_grab_keyboard_cookie_t = record
    sequence: dword;
  end;
  Pxcb_grab_keyboard_cookie_t = ^Txcb_grab_keyboard_cookie_t;

const
  XCB_GRAB_KEYBOARD_ = 31;

type
  Txcb_grab_keyboard_request_t = record
    major_opcode: Tuint8_t;
    owner_events: Tuint8_t;
    length: Tuint16_t;
    grab_window: Txcb_window_t;
    time: Txcb_timestamp_t;
    pointer_mode: Tuint8_t;
    keyboard_mode: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_grab_keyboard_request_t = ^Txcb_grab_keyboard_request_t;

  Txcb_grab_keyboard_reply_t = record
    response_type: Tuint8_t;
    status: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
  end;
  Pxcb_grab_keyboard_reply_t = ^Txcb_grab_keyboard_reply_t;

const
  XCB_UNGRAB_KEYBOARD_ = 32;

type
  Txcb_ungrab_keyboard_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    time: Txcb_timestamp_t;
  end;
  Pxcb_ungrab_keyboard_request_t = ^Txcb_ungrab_keyboard_request_t;

type
  Pxcb_grab_t = ^Txcb_grab_t;
  Txcb_grab_t = longint;

const
  XCB_GRAB_ANY = 0;

const
  XCB_GRAB_KEY_ = 33;

type
  Txcb_grab_key_request_t = record
    major_opcode: Tuint8_t;
    owner_events: Tuint8_t;
    length: Tuint16_t;
    grab_window: Txcb_window_t;
    modifiers: Tuint16_t;
    key: Txcb_keycode_t;
    pointer_mode: Tuint8_t;
    keyboard_mode: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_grab_key_request_t = ^Txcb_grab_key_request_t;

const
  XCB_UNGRAB_KEY_ = 34;

type
  Txcb_ungrab_key_request_t = record
    major_opcode: Tuint8_t;
    key: Txcb_keycode_t;
    length: Tuint16_t;
    grab_window: Txcb_window_t;
    modifiers: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_ungrab_key_request_t = ^Txcb_ungrab_key_request_t;

type
  Pxcb_allow_t = ^Txcb_allow_t;
  Txcb_allow_t = longint;

const
  XCB_ALLOW_ASYNC_POINTER = 0;
  XCB_ALLOW_SYNC_POINTER = 1;
  XCB_ALLOW_REPLAY_POINTER = 2;
  XCB_ALLOW_ASYNC_KEYBOARD = 3;
  XCB_ALLOW_SYNC_KEYBOARD = 4;
  XCB_ALLOW_REPLAY_KEYBOARD = 5;
  XCB_ALLOW_ASYNC_BOTH = 6;
  XCB_ALLOW_SYNC_BOTH = 7;

const
  XCB_ALLOW_EVENTS_ = 35;

type
  Txcb_allow_events_request_t = record
    major_opcode: Tuint8_t;
    mode: Tuint8_t;
    length: Tuint16_t;
    time: Txcb_timestamp_t;
  end;
  Pxcb_allow_events_request_t = ^Txcb_allow_events_request_t;

const
  XCB_GRAB_SERVER_ = 36;

type
  Txcb_grab_server_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_grab_server_request_t = ^Txcb_grab_server_request_t;

const
  XCB_UNGRAB_SERVER_ = 37;

type
  Txcb_ungrab_server_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_ungrab_server_request_t = ^Txcb_ungrab_server_request_t;

  Txcb_query_pointer_cookie_t = record
    sequence: dword;
  end;
  Pxcb_query_pointer_cookie_t = ^Txcb_query_pointer_cookie_t;

const
  XCB_QUERY_POINTER_ = 38;

type
  Txcb_query_pointer_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
  end;
  Pxcb_query_pointer_request_t = ^Txcb_query_pointer_request_t;

  Txcb_query_pointer_reply_t = record
    response_type: Tuint8_t;
    same_screen: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    root: Txcb_window_t;
    child: Txcb_window_t;
    root_x: Tint16_t;
    root_y: Tint16_t;
    win_x: Tint16_t;
    win_y: Tint16_t;
    mask: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_query_pointer_reply_t = ^Txcb_query_pointer_reply_t;

  Txcb_timecoord_t = record
    time: Txcb_timestamp_t;
    x: Tint16_t;
    y: Tint16_t;
  end;
  Pxcb_timecoord_t = ^Txcb_timecoord_t;

  Txcb_timecoord_iterator_t = record
    data: Pxcb_timecoord_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_timecoord_iterator_t = ^Txcb_timecoord_iterator_t;

  Txcb_get_motion_events_cookie_t = record
    sequence: dword;
  end;
  Pxcb_get_motion_events_cookie_t = ^Txcb_get_motion_events_cookie_t;

const
  XCB_GET_MOTION_EVENTS_ = 39;

type
  Txcb_get_motion_events_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    start: Txcb_timestamp_t;
    stop: Txcb_timestamp_t;
  end;
  Pxcb_get_motion_events_request_t = ^Txcb_get_motion_events_request_t;

  Txcb_get_motion_events_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    events_len: Tuint32_t;
    pad1: array[0..19] of Tuint8_t;
  end;
  Pxcb_get_motion_events_reply_t = ^Txcb_get_motion_events_reply_t;

  Txcb_translate_coordinates_cookie_t = record
    sequence: dword;
  end;
  Pxcb_translate_coordinates_cookie_t = ^Txcb_translate_coordinates_cookie_t;

const
  XCB_TRANSLATE_COORDINATES_ = 40;

type
  Txcb_translate_coordinates_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    src_window: Txcb_window_t;
    dst_window: Txcb_window_t;
    src_x: Tint16_t;
    src_y: Tint16_t;
  end;
  Pxcb_translate_coordinates_request_t = ^Txcb_translate_coordinates_request_t;

  Txcb_translate_coordinates_reply_t = record
    response_type: Tuint8_t;
    same_screen: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    child: Txcb_window_t;
    dst_x: Tint16_t;
    dst_y: Tint16_t;
  end;
  Pxcb_translate_coordinates_reply_t = ^Txcb_translate_coordinates_reply_t;

const
  XCB_WARP_POINTER_ = 41;

type
  Txcb_warp_pointer_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    src_window: Txcb_window_t;
    dst_window: Txcb_window_t;
    src_x: Tint16_t;
    src_y: Tint16_t;
    src_width: Tuint16_t;
    src_height: Tuint16_t;
    dst_x: Tint16_t;
    dst_y: Tint16_t;
  end;
  Pxcb_warp_pointer_request_t = ^Txcb_warp_pointer_request_t;

type
  Pxcb_input_focus_t = ^Txcb_input_focus_t;
  Txcb_input_focus_t = longint;

const
  XCB_INPUT_FOCUS_NONE = 0;
  XCB_INPUT_FOCUS_POINTER_ROOT = 1;
  XCB_INPUT_FOCUS_PARENT = 2;
  XCB_INPUT_FOCUS_FOLLOW_KEYBOARD = 3;

const
  XCB_SET_INPUT_FOCUS_ = 42;

type
  Txcb_set_input_focus_request_t = record
    major_opcode: Tuint8_t;
    revert_to: Tuint8_t;
    length: Tuint16_t;
    focus: Txcb_window_t;
    time: Txcb_timestamp_t;
  end;
  Pxcb_set_input_focus_request_t = ^Txcb_set_input_focus_request_t;

  Txcb_get_input_focus_cookie_t = record
    sequence: dword;
  end;
  Pxcb_get_input_focus_cookie_t = ^Txcb_get_input_focus_cookie_t;

const
  XCB_GET_INPUT_FOCUS_ = 43;

type
  Txcb_get_input_focus_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_get_input_focus_request_t = ^Txcb_get_input_focus_request_t;

  Txcb_get_input_focus_reply_t = record
    response_type: Tuint8_t;
    revert_to: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    focus: Txcb_window_t;
  end;
  Pxcb_get_input_focus_reply_t = ^Txcb_get_input_focus_reply_t;

  Txcb_query_keymap_cookie_t = record
    sequence: dword;
  end;
  Pxcb_query_keymap_cookie_t = ^Txcb_query_keymap_cookie_t;

const
  XCB_QUERY_KEYMAP_ = 44;

type
  Txcb_query_keymap_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_query_keymap_request_t = ^Txcb_query_keymap_request_t;

  Txcb_query_keymap_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    keys: array[0..31] of Tuint8_t;
  end;
  Pxcb_query_keymap_reply_t = ^Txcb_query_keymap_reply_t;

const
  XCB_OPEN_FONT_ = 45;

type
  Txcb_open_font_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    fid: Txcb_font_t;
    name_len: Tuint16_t;
    pad1: array[0..1] of Tuint8_t;
  end;
  Pxcb_open_font_request_t = ^Txcb_open_font_request_t;

const
  XCB_CLOSE_FONT_ = 46;

type
  Txcb_close_font_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    font: Txcb_font_t;
  end;
  Pxcb_close_font_request_t = ^Txcb_close_font_request_t;

type
  Pxcb_font_draw_t = ^Txcb_font_draw_t;
  Txcb_font_draw_t = longint;

const
  XCB_FONT_DRAW_LEFT_TO_RIGHT = 0;
  XCB_FONT_DRAW_RIGHT_TO_LEFT = 1;

type
  Txcb_fontprop_t = record
    name: Txcb_atom_t;
    value: Tuint32_t;
  end;
  Pxcb_fontprop_t = ^Txcb_fontprop_t;

  Txcb_fontprop_iterator_t = record
    data: Pxcb_fontprop_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_fontprop_iterator_t = ^Txcb_fontprop_iterator_t;

  Txcb_charinfo_t = record
    left_side_bearing: Tint16_t;
    right_side_bearing: Tint16_t;
    character_width: Tint16_t;
    ascent: Tint16_t;
    descent: Tint16_t;
    attributes: Tuint16_t;
  end;
  Pxcb_charinfo_t = ^Txcb_charinfo_t;

  Txcb_charinfo_iterator_t = record
    data: Pxcb_charinfo_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_charinfo_iterator_t = ^Txcb_charinfo_iterator_t;

  Txcb_query_font_cookie_t = record
    sequence: dword;
  end;
  Pxcb_query_font_cookie_t = ^Txcb_query_font_cookie_t;

const
  XCB_QUERY_FONT_ = 47;

type
  Txcb_query_font_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    font: Txcb_fontable_t;
  end;
  Pxcb_query_font_request_t = ^Txcb_query_font_request_t;

  Txcb_query_font_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    min_bounds: Txcb_charinfo_t;
    pad1: array[0..3] of Tuint8_t;
    max_bounds: Txcb_charinfo_t;
    pad2: array[0..3] of Tuint8_t;
    min_char_or_byte2: Tuint16_t;
    max_char_or_byte2: Tuint16_t;
    default_char: Tuint16_t;
    properties_len: Tuint16_t;
    draw_direction: Tuint8_t;
    min_byte1: Tuint8_t;
    max_byte1: Tuint8_t;
    all_chars_exist: Tuint8_t;
    font_ascent: Tint16_t;
    font_descent: Tint16_t;
    char_infos_len: Tuint32_t;
  end;
  Pxcb_query_font_reply_t = ^Txcb_query_font_reply_t;

  Txcb_query_text_extents_cookie_t = record
    sequence: dword;
  end;
  Pxcb_query_text_extents_cookie_t = ^Txcb_query_text_extents_cookie_t;

const
  XCB_QUERY_TEXT_EXTENTS_ = 48;

type
  Txcb_query_text_extents_request_t = record
    major_opcode: Tuint8_t;
    odd_length: Tuint8_t;
    length: Tuint16_t;
    font: Txcb_fontable_t;
  end;
  Pxcb_query_text_extents_request_t = ^Txcb_query_text_extents_request_t;

  Txcb_query_text_extents_reply_t = record
    response_type: Tuint8_t;
    draw_direction: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    font_ascent: Tint16_t;
    font_descent: Tint16_t;
    overall_ascent: Tint16_t;
    overall_descent: Tint16_t;
    overall_width: Tint32_t;
    overall_left: Tint32_t;
    overall_right: Tint32_t;
  end;
  Pxcb_query_text_extents_reply_t = ^Txcb_query_text_extents_reply_t;

  Txcb_str_t = record
    name_len: Tuint8_t;
  end;
  Pxcb_str_t = ^Txcb_str_t;

  Txcb_str_iterator_t = record
    data: Pxcb_str_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_str_iterator_t = ^Txcb_str_iterator_t;

  Txcb_list_fonts_cookie_t = record
    sequence: dword;
  end;
  Pxcb_list_fonts_cookie_t = ^Txcb_list_fonts_cookie_t;

const
  XCB_LIST_FONTS_ = 49;

type
  Txcb_list_fonts_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    max_names: Tuint16_t;
    pattern_len: Tuint16_t;
  end;
  Pxcb_list_fonts_request_t = ^Txcb_list_fonts_request_t;

  Txcb_list_fonts_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    names_len: Tuint16_t;
    pad1: array[0..21] of Tuint8_t;
  end;
  Pxcb_list_fonts_reply_t = ^Txcb_list_fonts_reply_t;

  Txcb_list_fonts_with_info_cookie_t = record
    sequence: dword;
  end;
  Pxcb_list_fonts_with_info_cookie_t = ^Txcb_list_fonts_with_info_cookie_t;

const
  XCB_LIST_FONTS_WITH_INFO_ = 50;

type
  Txcb_list_fonts_with_info_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    max_names: Tuint16_t;
    pattern_len: Tuint16_t;
  end;
  Pxcb_list_fonts_with_info_request_t = ^Txcb_list_fonts_with_info_request_t;

  Txcb_list_fonts_with_info_reply_t = record
    response_type: Tuint8_t;
    name_len: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    min_bounds: Txcb_charinfo_t;
    pad0: array[0..3] of Tuint8_t;
    max_bounds: Txcb_charinfo_t;
    pad1: array[0..3] of Tuint8_t;
    min_char_or_byte2: Tuint16_t;
    max_char_or_byte2: Tuint16_t;
    default_char: Tuint16_t;
    properties_len: Tuint16_t;
    draw_direction: Tuint8_t;
    min_byte1: Tuint8_t;
    max_byte1: Tuint8_t;
    all_chars_exist: Tuint8_t;
    font_ascent: Tint16_t;
    font_descent: Tint16_t;
    replies_hint: Tuint32_t;
  end;
  Pxcb_list_fonts_with_info_reply_t = ^Txcb_list_fonts_with_info_reply_t;

const
  XCB_SET_FONT_PATH_ = 51;

type
  Txcb_set_font_path_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    font_qty: Tuint16_t;
    pad1: array[0..1] of Tuint8_t;
  end;
  Pxcb_set_font_path_request_t = ^Txcb_set_font_path_request_t;

  Txcb_get_font_path_cookie_t = record
    sequence: dword;
  end;
  Pxcb_get_font_path_cookie_t = ^Txcb_get_font_path_cookie_t;

const
  XCB_GET_FONT_PATH_ = 52;

type
  Txcb_get_font_path_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_get_font_path_request_t = ^Txcb_get_font_path_request_t;

  Txcb_get_font_path_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    path_len: Tuint16_t;
    pad1: array[0..21] of Tuint8_t;
  end;
  Pxcb_get_font_path_reply_t = ^Txcb_get_font_path_reply_t;

const
  XCB_CREATE_PIXMAP_ = 53;

type
  Txcb_create_pixmap_request_t = record
    major_opcode: Tuint8_t;
    depth: Tuint8_t;
    length: Tuint16_t;
    pid: Txcb_pixmap_t;
    drawable: Txcb_drawable_t;
    width: Tuint16_t;
    height: Tuint16_t;
  end;
  Pxcb_create_pixmap_request_t = ^Txcb_create_pixmap_request_t;

const
  XCB_FREE_PIXMAP_ = 54;

type
  Txcb_free_pixmap_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    pixmap: Txcb_pixmap_t;
  end;
  Pxcb_free_pixmap_request_t = ^Txcb_free_pixmap_request_t;

type
  Pxcb_gc_t = ^Txcb_gc_t;
  Txcb_gc_t = longint;

const
  XCB_GC_FUNCTION = 1;
  XCB_GC_PLANE_MASK = 2;
  XCB_GC_FOREGROUND = 4;
  XCB_GC_BACKGROUND = 8;
  XCB_GC_LINE_WIDTH = 16;
  XCB_GC_LINE_STYLE = 32;
  XCB_GC_CAP_STYLE = 64;
  XCB_GC_JOIN_STYLE = 128;
  XCB_GC_FILL_STYLE = 256;
  XCB_GC_FILL_RULE = 512;
  XCB_GC_TILE = 1024;
  XCB_GC_STIPPLE = 2048;
  XCB_GC_TILE_STIPPLE_ORIGIN_X = 4096;
  XCB_GC_TILE_STIPPLE_ORIGIN_Y = 8192;
  XCB_GC_FONT = 16384;
  XCB_GC_SUBWINDOW_MODE = 32768;
  XCB_GC_GRAPHICS_EXPOSURES = 65536;
  XCB_GC_CLIP_ORIGIN_X = 131072;
  XCB_GC_CLIP_ORIGIN_Y = 262144;
  XCB_GC_CLIP_MASK = 524288;
  XCB_GC_DASH_OFFSET = 1048576;
  XCB_GC_DASH_LIST = 2097152;
  XCB_GC_ARC_MODE = 4194304;

type
  Pxcb_gx_t = ^Txcb_gx_t;
  Txcb_gx_t = longint;

const
  XCB_GX_CLEAR = 0;
  XCB_GX_AND = 1;
  XCB_GX_AND_REVERSE = 2;
  XCB_GX_COPY = 3;
  XCB_GX_AND_INVERTED = 4;
  XCB_GX_NOOP = 5;
  XCB_GX_XOR = 6;
  XCB_GX_OR = 7;
  XCB_GX_NOR = 8;
  XCB_GX_EQUIV = 9;
  XCB_GX_INVERT = 10;
  XCB_GX_OR_REVERSE = 11;
  XCB_GX_COPY_INVERTED = 12;
  XCB_GX_OR_INVERTED = 13;
  XCB_GX_NAND = 14;
  XCB_GX_SET = 15;

type
  Pxcb_line_style_t = ^Txcb_line_style_t;
  Txcb_line_style_t = longint;

const
  XCB_LINE_STYLE_SOLID = 0;
  XCB_LINE_STYLE_ON_OFF_DASH = 1;
  XCB_LINE_STYLE_DOUBLE_DASH = 2;

type
  Pxcb_cap_style_t = ^Txcb_cap_style_t;
  Txcb_cap_style_t = longint;

const
  XCB_CAP_STYLE_NOT_LAST = 0;
  XCB_CAP_STYLE_BUTT = 1;
  XCB_CAP_STYLE_ROUND = 2;
  XCB_CAP_STYLE_PROJECTING = 3;

type
  Pxcb_join_style_t = ^Txcb_join_style_t;
  Txcb_join_style_t = longint;

const
  XCB_JOIN_STYLE_MITER = 0;
  XCB_JOIN_STYLE_ROUND = 1;
  XCB_JOIN_STYLE_BEVEL = 2;

type
  Pxcb_fill_style_t = ^Txcb_fill_style_t;
  Txcb_fill_style_t = longint;

const
  XCB_FILL_STYLE_SOLID = 0;
  XCB_FILL_STYLE_TILED = 1;
  XCB_FILL_STYLE_STIPPLED = 2;
  XCB_FILL_STYLE_OPAQUE_STIPPLED = 3;

type
  Pxcb_fill_rule_t = ^Txcb_fill_rule_t;
  Txcb_fill_rule_t = longint;

const
  XCB_FILL_RULE_EVEN_ODD = 0;
  XCB_FILL_RULE_WINDING = 1;

type
  Pxcb_subwindow_mode_t = ^Txcb_subwindow_mode_t;
  Txcb_subwindow_mode_t = longint;

const
  XCB_SUBWINDOW_MODE_CLIP_BY_CHILDREN = 0;
  XCB_SUBWINDOW_MODE_INCLUDE_INFERIORS = 1;

type
  Pxcb_arc_mode_t = ^Txcb_arc_mode_t;
  Txcb_arc_mode_t = longint;

const
  XCB_ARC_MODE_CHORD = 0;
  XCB_ARC_MODE_PIE_SLICE = 1;

type
  Txcb_create_gc_value_list_t = record
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
    tile: Txcb_pixmap_t;
    stipple: Txcb_pixmap_t;
    tile_stipple_x_origin: Tint32_t;
    tile_stipple_y_origin: Tint32_t;
    font: Txcb_font_t;
    subwindow_mode: Tuint32_t;
    graphics_exposures: Txcb_bool32_t;
    clip_x_origin: Tint32_t;
    clip_y_origin: Tint32_t;
    clip_mask: Txcb_pixmap_t;
    dash_offset: Tuint32_t;
    dashes: Tuint32_t;
    arc_mode: Tuint32_t;
  end;
  Pxcb_create_gc_value_list_t = ^Txcb_create_gc_value_list_t;

const
  XCB_CREATE_GC_ = 55;

type
  Txcb_create_gc_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    cid: Txcb_gcontext_t;
    drawable: Txcb_drawable_t;
    value_mask: Tuint32_t;
  end;
  Pxcb_create_gc_request_t = ^Txcb_create_gc_request_t;

  Txcb_change_gc_value_list_t = record
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
    tile: Txcb_pixmap_t;
    stipple: Txcb_pixmap_t;
    tile_stipple_x_origin: Tint32_t;
    tile_stipple_y_origin: Tint32_t;
    font: Txcb_font_t;
    subwindow_mode: Tuint32_t;
    graphics_exposures: Txcb_bool32_t;
    clip_x_origin: Tint32_t;
    clip_y_origin: Tint32_t;
    clip_mask: Txcb_pixmap_t;
    dash_offset: Tuint32_t;
    dashes: Tuint32_t;
    arc_mode: Tuint32_t;
  end;
  Pxcb_change_gc_value_list_t = ^Txcb_change_gc_value_list_t;

const
  XCB_CHANGE_GC_ = 56;

type
  Txcb_change_gc_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    gc: Txcb_gcontext_t;
    value_mask: Tuint32_t;
  end;
  Pxcb_change_gc_request_t = ^Txcb_change_gc_request_t;

const
  XCB_COPY_GC_ = 57;

type
  Txcb_copy_gc_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    src_gc: Txcb_gcontext_t;
    dst_gc: Txcb_gcontext_t;
    value_mask: Tuint32_t;
  end;
  Pxcb_copy_gc_request_t = ^Txcb_copy_gc_request_t;

const
  XCB_SET_DASHES_ = 58;

type
  Txcb_set_dashes_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    gc: Txcb_gcontext_t;
    dash_offset: Tuint16_t;
    dashes_len: Tuint16_t;
  end;
  Pxcb_set_dashes_request_t = ^Txcb_set_dashes_request_t;

type
  Pxcb_clip_ordering_t = ^Txcb_clip_ordering_t;
  Txcb_clip_ordering_t = longint;

const
  XCB_CLIP_ORDERING_UNSORTED = 0;
  XCB_CLIP_ORDERING_Y_SORTED = 1;
  XCB_CLIP_ORDERING_YX_SORTED = 2;
  XCB_CLIP_ORDERING_YX_BANDED = 3;

const
  XCB_SET_CLIP_RECTANGLES_ = 59;

type
  Txcb_set_clip_rectangles_request_t = record
    major_opcode: Tuint8_t;
    ordering: Tuint8_t;
    length: Tuint16_t;
    gc: Txcb_gcontext_t;
    clip_x_origin: Tint16_t;
    clip_y_origin: Tint16_t;
  end;
  Pxcb_set_clip_rectangles_request_t = ^Txcb_set_clip_rectangles_request_t;

const
  XCB_FREE_GC_ = 60;

type
  Txcb_free_gc_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    gc: Txcb_gcontext_t;
  end;
  Pxcb_free_gc_request_t = ^Txcb_free_gc_request_t;

const
  XCB_CLEAR_AREA_ = 61;

type
  Txcb_clear_area_request_t = record
    major_opcode: Tuint8_t;
    exposures: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    x: Tint16_t;
    y: Tint16_t;
    width: Tuint16_t;
    height: Tuint16_t;
  end;
  Pxcb_clear_area_request_t = ^Txcb_clear_area_request_t;

const
  XCB_COPY_AREA_ = 62;

type
  Txcb_copy_area_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    src_drawable: Txcb_drawable_t;
    dst_drawable: Txcb_drawable_t;
    gc: Txcb_gcontext_t;
    src_x: Tint16_t;
    src_y: Tint16_t;
    dst_x: Tint16_t;
    dst_y: Tint16_t;
    width: Tuint16_t;
    height: Tuint16_t;
  end;
  Pxcb_copy_area_request_t = ^Txcb_copy_area_request_t;

const
  XCB_COPY_PLANE_ = 63;

type
  Txcb_copy_plane_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    src_drawable: Txcb_drawable_t;
    dst_drawable: Txcb_drawable_t;
    gc: Txcb_gcontext_t;
    src_x: Tint16_t;
    src_y: Tint16_t;
    dst_x: Tint16_t;
    dst_y: Tint16_t;
    width: Tuint16_t;
    height: Tuint16_t;
    bit_plane: Tuint32_t;
  end;
  Pxcb_copy_plane_request_t = ^Txcb_copy_plane_request_t;

type
  Pxcb_coord_mode_t = ^Txcb_coord_mode_t;
  Txcb_coord_mode_t = longint;

const
  XCB_COORD_MODE_ORIGIN = 0;
  XCB_COORD_MODE_PREVIOUS = 1;

const
  XCB_POLY_POINT_ = 64;

type
  Txcb_poly_point_request_t = record
    major_opcode: Tuint8_t;
    coordinate_mode: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
    gc: Txcb_gcontext_t;
  end;
  Pxcb_poly_point_request_t = ^Txcb_poly_point_request_t;

const
  XCB_POLY_LINE_ = 65;

type
  Txcb_poly_line_request_t = record
    major_opcode: Tuint8_t;
    coordinate_mode: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
    gc: Txcb_gcontext_t;
  end;
  Pxcb_poly_line_request_t = ^Txcb_poly_line_request_t;

  Txcb_segment_t = record
    x1: Tint16_t;
    y1: Tint16_t;
    x2: Tint16_t;
    y2: Tint16_t;
  end;
  Pxcb_segment_t = ^Txcb_segment_t;

  Txcb_segment_iterator_t = record
    data: Pxcb_segment_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_segment_iterator_t = ^Txcb_segment_iterator_t;

const
  XCB_POLY_SEGMENT_ = 66;

type
  Txcb_poly_segment_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
    gc: Txcb_gcontext_t;
  end;
  Pxcb_poly_segment_request_t = ^Txcb_poly_segment_request_t;

const
  XCB_POLY_RECTANGLE_ = 67;

type
  Txcb_poly_rectangle_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
    gc: Txcb_gcontext_t;
  end;
  Pxcb_poly_rectangle_request_t = ^Txcb_poly_rectangle_request_t;

const
  XCB_POLY_ARC_ = 68;

type
  Txcb_poly_arc_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
    gc: Txcb_gcontext_t;
  end;
  Pxcb_poly_arc_request_t = ^Txcb_poly_arc_request_t;

type
  Pxcb_poly_shape_t = ^Txcb_poly_shape_t;
  Txcb_poly_shape_t = longint;

const
  XCB_POLY_SHAPE_COMPLEX = 0;
  XCB_POLY_SHAPE_NONCONVEX = 1;
  XCB_POLY_SHAPE_CONVEX = 2;

const
  XCB_FILL_POLY_ = 69;

type
  Txcb_fill_poly_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
    gc: Txcb_gcontext_t;
    shape: Tuint8_t;
    coordinate_mode: Tuint8_t;
    pad1: array[0..1] of Tuint8_t;
  end;
  Pxcb_fill_poly_request_t = ^Txcb_fill_poly_request_t;

const
  XCB_POLY_FILL_RECTANGLE_ = 70;

type
  Txcb_poly_fill_rectangle_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
    gc: Txcb_gcontext_t;
  end;
  Pxcb_poly_fill_rectangle_request_t = ^Txcb_poly_fill_rectangle_request_t;

const
  XCB_POLY_FILL_ARC_ = 71;

type
  Txcb_poly_fill_arc_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
    gc: Txcb_gcontext_t;
  end;
  Pxcb_poly_fill_arc_request_t = ^Txcb_poly_fill_arc_request_t;

type
  Pxcb_image_format_t = ^Txcb_image_format_t;
  Txcb_image_format_t = longint;

const
  XCB_IMAGE_FORMAT_XY_BITMAP = 0;
  XCB_IMAGE_FORMAT_XY_PIXMAP = 1;
  XCB_IMAGE_FORMAT_Z_PIXMAP = 2;

const
  XCB_PUT_IMAGE_ = 72;

type
  Txcb_put_image_request_t = record
    major_opcode: Tuint8_t;
    format: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
    gc: Txcb_gcontext_t;
    width: Tuint16_t;
    height: Tuint16_t;
    dst_x: Tint16_t;
    dst_y: Tint16_t;
    left_pad: Tuint8_t;
    depth: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_put_image_request_t = ^Txcb_put_image_request_t;

  Txcb_get_image_cookie_t = record
    sequence: dword;
  end;
  Pxcb_get_image_cookie_t = ^Txcb_get_image_cookie_t;

const
  XCB_GET_IMAGE_ = 73;

type
  Txcb_get_image_request_t = record
    major_opcode: Tuint8_t;
    format: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
    x: Tint16_t;
    y: Tint16_t;
    width: Tuint16_t;
    height: Tuint16_t;
    plane_mask: Tuint32_t;
  end;
  Pxcb_get_image_request_t = ^Txcb_get_image_request_t;

  Txcb_get_image_reply_t = record
    response_type: Tuint8_t;
    depth: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    visual: Txcb_visualid_t;
    pad0: array[0..19] of Tuint8_t;
  end;
  Pxcb_get_image_reply_t = ^Txcb_get_image_reply_t;

const
  XCB_POLY_TEXT_8_ = 74;

type
  Txcb_poly_text_8_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
    gc: Txcb_gcontext_t;
    x: Tint16_t;
    y: Tint16_t;
  end;
  Pxcb_poly_text_8_request_t = ^Txcb_poly_text_8_request_t;

const
  XCB_POLY_TEXT_16_ = 75;

type
  Txcb_poly_text_16_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
    gc: Txcb_gcontext_t;
    x: Tint16_t;
    y: Tint16_t;
  end;
  Pxcb_poly_text_16_request_t = ^Txcb_poly_text_16_request_t;

const
  XCB_IMAGE_TEXT_8_ = 76;

type
  Txcb_image_text_8_request_t = record
    major_opcode: Tuint8_t;
    string_len: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
    gc: Txcb_gcontext_t;
    x: Tint16_t;
    y: Tint16_t;
  end;
  Pxcb_image_text_8_request_t = ^Txcb_image_text_8_request_t;

const
  XCB_IMAGE_TEXT_16_ = 77;

type
  Txcb_image_text_16_request_t = record
    major_opcode: Tuint8_t;
    string_len: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
    gc: Txcb_gcontext_t;
    x: Tint16_t;
    y: Tint16_t;
  end;
  Pxcb_image_text_16_request_t = ^Txcb_image_text_16_request_t;

type
  Pxcb_colormap_alloc_t = ^Txcb_colormap_alloc_t;
  Txcb_colormap_alloc_t = longint;

const
  XCB_COLORMAP_ALLOC_NONE = 0;
  XCB_COLORMAP_ALLOC_ALL = 1;

const
  XCB_CREATE_COLORMAP_ = 78;

type
  Txcb_create_colormap_request_t = record
    major_opcode: Tuint8_t;
    alloc: Tuint8_t;
    length: Tuint16_t;
    mid: Txcb_colormap_t;
    window: Txcb_window_t;
    visual: Txcb_visualid_t;
  end;
  Pxcb_create_colormap_request_t = ^Txcb_create_colormap_request_t;

const
  XCB_FREE_COLORMAP_ = 79;

type
  Txcb_free_colormap_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    cmap: Txcb_colormap_t;
  end;
  Pxcb_free_colormap_request_t = ^Txcb_free_colormap_request_t;

const
  XCB_COPY_COLORMAP_AND_FREE_ = 80;

type
  Txcb_copy_colormap_and_free_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    mid: Txcb_colormap_t;
    src_cmap: Txcb_colormap_t;
  end;
  Pxcb_copy_colormap_and_free_request_t = ^Txcb_copy_colormap_and_free_request_t;

const
  XCB_INSTALL_COLORMAP_ = 81;

type
  Txcb_install_colormap_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    cmap: Txcb_colormap_t;
  end;
  Pxcb_install_colormap_request_t = ^Txcb_install_colormap_request_t;

const
  XCB_UNINSTALL_COLORMAP_ = 82;

type
  Txcb_uninstall_colormap_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    cmap: Txcb_colormap_t;
  end;
  Pxcb_uninstall_colormap_request_t = ^Txcb_uninstall_colormap_request_t;

  Txcb_list_installed_colormaps_cookie_t = record
    sequence: dword;
  end;
  Pxcb_list_installed_colormaps_cookie_t = ^Txcb_list_installed_colormaps_cookie_t;

const
  XCB_LIST_INSTALLED_COLORMAPS_ = 83;

type
  Txcb_list_installed_colormaps_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
  end;
  Pxcb_list_installed_colormaps_request_t = ^Txcb_list_installed_colormaps_request_t;

  Txcb_list_installed_colormaps_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    cmaps_len: Tuint16_t;
    pad1: array[0..21] of Tuint8_t;
  end;
  Pxcb_list_installed_colormaps_reply_t = ^Txcb_list_installed_colormaps_reply_t;

  Txcb_alloc_color_cookie_t = record
    sequence: dword;
  end;
  Pxcb_alloc_color_cookie_t = ^Txcb_alloc_color_cookie_t;

const
  XCB_ALLOC_COLOR_ = 84;

type
  Txcb_alloc_color_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    cmap: Txcb_colormap_t;
    red: Tuint16_t;
    green: Tuint16_t;
    blue: Tuint16_t;
    pad1: array[0..1] of Tuint8_t;
  end;
  Pxcb_alloc_color_request_t = ^Txcb_alloc_color_request_t;

  Txcb_alloc_color_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    red: Tuint16_t;
    green: Tuint16_t;
    blue: Tuint16_t;
    pad1: array[0..1] of Tuint8_t;
    pixel: Tuint32_t;
  end;
  Pxcb_alloc_color_reply_t = ^Txcb_alloc_color_reply_t;

  Txcb_alloc_named_color_cookie_t = record
    sequence: dword;
  end;
  Pxcb_alloc_named_color_cookie_t = ^Txcb_alloc_named_color_cookie_t;

const
  XCB_ALLOC_NAMED_COLOR_ = 85;

type
  Txcb_alloc_named_color_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    cmap: Txcb_colormap_t;
    name_len: Tuint16_t;
    pad1: array[0..1] of Tuint8_t;
  end;
  Pxcb_alloc_named_color_request_t = ^Txcb_alloc_named_color_request_t;

  Txcb_alloc_named_color_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    pixel: Tuint32_t;
    exact_red: Tuint16_t;
    exact_green: Tuint16_t;
    exact_blue: Tuint16_t;
    visual_red: Tuint16_t;
    visual_green: Tuint16_t;
    visual_blue: Tuint16_t;
  end;
  Pxcb_alloc_named_color_reply_t = ^Txcb_alloc_named_color_reply_t;

  Txcb_alloc_color_cells_cookie_t = record
    sequence: dword;
  end;
  Pxcb_alloc_color_cells_cookie_t = ^Txcb_alloc_color_cells_cookie_t;

const
  XCB_ALLOC_COLOR_CELLS_ = 86;

type
  Txcb_alloc_color_cells_request_t = record
    major_opcode: Tuint8_t;
    contiguous: Tuint8_t;
    length: Tuint16_t;
    cmap: Txcb_colormap_t;
    colors: Tuint16_t;
    planes: Tuint16_t;
  end;
  Pxcb_alloc_color_cells_request_t = ^Txcb_alloc_color_cells_request_t;

  Txcb_alloc_color_cells_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    pixels_len: Tuint16_t;
    masks_len: Tuint16_t;
    pad1: array[0..19] of Tuint8_t;
  end;
  Pxcb_alloc_color_cells_reply_t = ^Txcb_alloc_color_cells_reply_t;

  Txcb_alloc_color_planes_cookie_t = record
    sequence: dword;
  end;
  Pxcb_alloc_color_planes_cookie_t = ^Txcb_alloc_color_planes_cookie_t;

const
  XCB_ALLOC_COLOR_PLANES_ = 87;

type
  Txcb_alloc_color_planes_request_t = record
    major_opcode: Tuint8_t;
    contiguous: Tuint8_t;
    length: Tuint16_t;
    cmap: Txcb_colormap_t;
    colors: Tuint16_t;
    reds: Tuint16_t;
    greens: Tuint16_t;
    blues: Tuint16_t;
  end;
  Pxcb_alloc_color_planes_request_t = ^Txcb_alloc_color_planes_request_t;

  Txcb_alloc_color_planes_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    pixels_len: Tuint16_t;
    pad1: array[0..1] of Tuint8_t;
    red_mask: Tuint32_t;
    green_mask: Tuint32_t;
    blue_mask: Tuint32_t;
    pad2: array[0..7] of Tuint8_t;
  end;
  Pxcb_alloc_color_planes_reply_t = ^Txcb_alloc_color_planes_reply_t;

const
  XCB_FREE_COLORS_ = 88;

type
  Txcb_free_colors_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    cmap: Txcb_colormap_t;
    plane_mask: Tuint32_t;
  end;
  Pxcb_free_colors_request_t = ^Txcb_free_colors_request_t;

type
  Pxcb_color_flag_t = ^Txcb_color_flag_t;
  Txcb_color_flag_t = longint;

const
  XCB_COLOR_FLAG_RED = 1;
  XCB_COLOR_FLAG_GREEN = 2;
  XCB_COLOR_FLAG_BLUE = 4;

type
  Txcb_coloritem_t = record
    pixel: Tuint32_t;
    red: Tuint16_t;
    green: Tuint16_t;
    blue: Tuint16_t;
    flags: Tuint8_t;
    pad0: Tuint8_t;
  end;
  Pxcb_coloritem_t = ^Txcb_coloritem_t;

  Txcb_coloritem_iterator_t = record
    data: Pxcb_coloritem_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_coloritem_iterator_t = ^Txcb_coloritem_iterator_t;

const
  XCB_STORE_COLORS_ = 89;

type
  Txcb_store_colors_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    cmap: Txcb_colormap_t;
  end;
  Pxcb_store_colors_request_t = ^Txcb_store_colors_request_t;

const
  XCB_STORE_NAMED_COLOR_ = 90;

type
  Txcb_store_named_color_request_t = record
    major_opcode: Tuint8_t;
    flags: Tuint8_t;
    length: Tuint16_t;
    cmap: Txcb_colormap_t;
    pixel: Tuint32_t;
    name_len: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_store_named_color_request_t = ^Txcb_store_named_color_request_t;

  Txcb_rgb_t = record
    red: Tuint16_t;
    green: Tuint16_t;
    blue: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_rgb_t = ^Txcb_rgb_t;

  Txcb_rgb_iterator_t = record
    data: Pxcb_rgb_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_rgb_iterator_t = ^Txcb_rgb_iterator_t;

  Txcb_query_colors_cookie_t = record
    sequence: dword;
  end;
  Pxcb_query_colors_cookie_t = ^Txcb_query_colors_cookie_t;

const
  XCB_QUERY_COLORS_ = 91;

type
  Txcb_query_colors_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    cmap: Txcb_colormap_t;
  end;
  Pxcb_query_colors_request_t = ^Txcb_query_colors_request_t;

  Txcb_query_colors_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    colors_len: Tuint16_t;
    pad1: array[0..21] of Tuint8_t;
  end;
  Pxcb_query_colors_reply_t = ^Txcb_query_colors_reply_t;

  Txcb_lookup_color_cookie_t = record
    sequence: dword;
  end;
  Pxcb_lookup_color_cookie_t = ^Txcb_lookup_color_cookie_t;

const
  XCB_LOOKUP_COLOR_ = 92;

type
  Txcb_lookup_color_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    cmap: Txcb_colormap_t;
    name_len: Tuint16_t;
    pad1: array[0..1] of Tuint8_t;
  end;
  Pxcb_lookup_color_request_t = ^Txcb_lookup_color_request_t;

  Txcb_lookup_color_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    exact_red: Tuint16_t;
    exact_green: Tuint16_t;
    exact_blue: Tuint16_t;
    visual_red: Tuint16_t;
    visual_green: Tuint16_t;
    visual_blue: Tuint16_t;
  end;
  Pxcb_lookup_color_reply_t = ^Txcb_lookup_color_reply_t;

type
  Pxcb_pixmap_enum_t = ^Txcb_pixmap_enum_t;
  Txcb_pixmap_enum_t = longint;

const
  XCB_PIXMAP_NONE = 0;

const
  XCB_CREATE_CURSOR_ = 93;

type
  Txcb_create_cursor_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    cid: Txcb_cursor_t;
    source: Txcb_pixmap_t;
    mask: Txcb_pixmap_t;
    fore_red: Tuint16_t;
    fore_green: Tuint16_t;
    fore_blue: Tuint16_t;
    back_red: Tuint16_t;
    back_green: Tuint16_t;
    back_blue: Tuint16_t;
    x: Tuint16_t;
    y: Tuint16_t;
  end;
  Pxcb_create_cursor_request_t = ^Txcb_create_cursor_request_t;

type
  Pxcb_font_enum_t = ^Txcb_font_enum_t;
  Txcb_font_enum_t = longint;

const
  XCB_FONT_NONE = 0;

const
  XCB_CREATE_GLYPH_CURSOR_ = 94;

type
  Txcb_create_glyph_cursor_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    cid: Txcb_cursor_t;
    source_font: Txcb_font_t;
    mask_font: Txcb_font_t;
    source_char: Tuint16_t;
    mask_char: Tuint16_t;
    fore_red: Tuint16_t;
    fore_green: Tuint16_t;
    fore_blue: Tuint16_t;
    back_red: Tuint16_t;
    back_green: Tuint16_t;
    back_blue: Tuint16_t;
  end;
  Pxcb_create_glyph_cursor_request_t = ^Txcb_create_glyph_cursor_request_t;

const
  XCB_FREE_CURSOR_ = 95;

type
  Txcb_free_cursor_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    cursor: Txcb_cursor_t;
  end;
  Pxcb_free_cursor_request_t = ^Txcb_free_cursor_request_t;

const
  XCB_RECOLOR_CURSOR_ = 96;

type
  Txcb_recolor_cursor_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    cursor: Txcb_cursor_t;
    fore_red: Tuint16_t;
    fore_green: Tuint16_t;
    fore_blue: Tuint16_t;
    back_red: Tuint16_t;
    back_green: Tuint16_t;
    back_blue: Tuint16_t;
  end;
  Pxcb_recolor_cursor_request_t = ^Txcb_recolor_cursor_request_t;

type
  Pxcb_query_shape_of_t = ^Txcb_query_shape_of_t;
  Txcb_query_shape_of_t = longint;

const
  XCB_QUERY_SHAPE_OF_LARGEST_CURSOR = 0;
  XCB_QUERY_SHAPE_OF_FASTEST_TILE = 1;
  XCB_QUERY_SHAPE_OF_FASTEST_STIPPLE = 2;

type
  Txcb_query_best_size_cookie_t = record
    sequence: dword;
  end;
  Pxcb_query_best_size_cookie_t = ^Txcb_query_best_size_cookie_t;

const
  XCB_QUERY_BEST_SIZE_ = 97;

type
  Txcb_query_best_size_request_t = record
    major_opcode: Tuint8_t;
    _class: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
    width: Tuint16_t;
    height: Tuint16_t;
  end;
  Pxcb_query_best_size_request_t = ^Txcb_query_best_size_request_t;

  Txcb_query_best_size_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    width: Tuint16_t;
    height: Tuint16_t;
  end;
  Pxcb_query_best_size_reply_t = ^Txcb_query_best_size_reply_t;

  Txcb_query_extension_cookie_t = record
    sequence: dword;
  end;
  Pxcb_query_extension_cookie_t = ^Txcb_query_extension_cookie_t;

const
  XCB_QUERY_EXTENSION_ = 98;

type
  Txcb_query_extension_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    name_len: Tuint16_t;
    pad1: array[0..1] of Tuint8_t;
  end;
  Pxcb_query_extension_request_t = ^Txcb_query_extension_request_t;

  Txcb_query_extension_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    present: Tuint8_t;
    major_opcode: Tuint8_t;
    first_event: Tuint8_t;
    first_error: Tuint8_t;
  end;
  Pxcb_query_extension_reply_t = ^Txcb_query_extension_reply_t;

  Txcb_list_extensions_cookie_t = record
    sequence: dword;
  end;
  Pxcb_list_extensions_cookie_t = ^Txcb_list_extensions_cookie_t;

const
  XCB_LIST_EXTENSIONS_ = 99;

type
  Txcb_list_extensions_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_list_extensions_request_t = ^Txcb_list_extensions_request_t;

  Txcb_list_extensions_reply_t = record
    response_type: Tuint8_t;
    names_len: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    pad0: array[0..23] of Tuint8_t;
  end;
  Pxcb_list_extensions_reply_t = ^Txcb_list_extensions_reply_t;

const
  XCB_CHANGE_KEYBOARD_MAPPING_ = 100;

type
  Txcb_change_keyboard_mapping_request_t = record
    major_opcode: Tuint8_t;
    keycode_count: Tuint8_t;
    length: Tuint16_t;
    first_keycode: Txcb_keycode_t;
    keysyms_per_keycode: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_change_keyboard_mapping_request_t = ^Txcb_change_keyboard_mapping_request_t;

  Txcb_get_keyboard_mapping_cookie_t = record
    sequence: dword;
  end;
  Pxcb_get_keyboard_mapping_cookie_t = ^Txcb_get_keyboard_mapping_cookie_t;

const
  XCB_GET_KEYBOARD_MAPPING_ = 101;

type
  Txcb_get_keyboard_mapping_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    first_keycode: Txcb_keycode_t;
    count: Tuint8_t;
  end;
  Pxcb_get_keyboard_mapping_request_t = ^Txcb_get_keyboard_mapping_request_t;

  Txcb_get_keyboard_mapping_reply_t = record
    response_type: Tuint8_t;
    keysyms_per_keycode: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    pad0: array[0..23] of Tuint8_t;
  end;
  Pxcb_get_keyboard_mapping_reply_t = ^Txcb_get_keyboard_mapping_reply_t;

type
  Pxcb_kb_t = ^Txcb_kb_t;
  Txcb_kb_t = longint;

const
  XCB_KB_KEY_CLICK_PERCENT = 1;
  XCB_KB_BELL_PERCENT = 2;
  XCB_KB_BELL_PITCH = 4;
  XCB_KB_BELL_DURATION = 8;
  XCB_KB_LED = 16;
  XCB_KB_LED_MODE = 32;
  XCB_KB_KEY = 64;
  XCB_KB_AUTO_REPEAT_MODE = 128;

type
  Pxcb_led_mode_t = ^Txcb_led_mode_t;
  Txcb_led_mode_t = longint;

const
  XCB_LED_MODE_OFF = 0;
  XCB_LED_MODE_ON = 1;

type
  Pxcb_auto_repeat_mode_t = ^Txcb_auto_repeat_mode_t;
  Txcb_auto_repeat_mode_t = longint;

const
  XCB_AUTO_REPEAT_MODE_OFF = 0;
  XCB_AUTO_REPEAT_MODE_ON = 1;
  XCB_AUTO_REPEAT_MODE_DEFAULT = 2;

type
  Txcb_change_keyboard_control_value_list_t = record
    key_click_percent: Tint32_t;
    bell_percent: Tint32_t;
    bell_pitch: Tint32_t;
    bell_duration: Tint32_t;
    led: Tuint32_t;
    led_mode: Tuint32_t;
    key: Txcb_keycode32_t;
    auto_repeat_mode: Tuint32_t;
  end;
  Pxcb_change_keyboard_control_value_list_t = ^Txcb_change_keyboard_control_value_list_t;

const
  XCB_CHANGE_KEYBOARD_CONTROL_ = 102;

type
  Txcb_change_keyboard_control_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    value_mask: Tuint32_t;
  end;
  Pxcb_change_keyboard_control_request_t = ^Txcb_change_keyboard_control_request_t;

  Txcb_get_keyboard_control_cookie_t = record
    sequence: dword;
  end;
  Pxcb_get_keyboard_control_cookie_t = ^Txcb_get_keyboard_control_cookie_t;

const
  XCB_GET_KEYBOARD_CONTROL_ = 103;

type
  Txcb_get_keyboard_control_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_get_keyboard_control_request_t = ^Txcb_get_keyboard_control_request_t;

  Txcb_get_keyboard_control_reply_t = record
    response_type: Tuint8_t;
    global_auto_repeat: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    led_mask: Tuint32_t;
    key_click_percent: Tuint8_t;
    bell_percent: Tuint8_t;
    bell_pitch: Tuint16_t;
    bell_duration: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
    auto_repeats: array[0..31] of Tuint8_t;
  end;
  Pxcb_get_keyboard_control_reply_t = ^Txcb_get_keyboard_control_reply_t;

const
  XCB_BELL_ = 104;

type
  Txcb_bell_request_t = record
    major_opcode: Tuint8_t;
    percent: Tint8_t;
    length: Tuint16_t;
  end;
  Pxcb_bell_request_t = ^Txcb_bell_request_t;

const
  XCB_CHANGE_POINTER_CONTROL_ = 105;

type
  Txcb_change_pointer_control_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    acceleration_numerator: Tint16_t;
    acceleration_denominator: Tint16_t;
    threshold: Tint16_t;
    do_acceleration: Tuint8_t;
    do_threshold: Tuint8_t;
  end;
  Pxcb_change_pointer_control_request_t = ^Txcb_change_pointer_control_request_t;

  Txcb_get_pointer_control_cookie_t = record
    sequence: dword;
  end;
  Pxcb_get_pointer_control_cookie_t = ^Txcb_get_pointer_control_cookie_t;

const
  XCB_GET_POINTER_CONTROL_ = 106;

type
  Txcb_get_pointer_control_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_get_pointer_control_request_t = ^Txcb_get_pointer_control_request_t;

  Txcb_get_pointer_control_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    acceleration_numerator: Tuint16_t;
    acceleration_denominator: Tuint16_t;
    threshold: Tuint16_t;
    pad1: array[0..17] of Tuint8_t;
  end;
  Pxcb_get_pointer_control_reply_t = ^Txcb_get_pointer_control_reply_t;

type
  Pxcb_blanking_t = ^Txcb_blanking_t;
  Txcb_blanking_t = longint;

const
  XCB_BLANKING_NOT_PREFERRED = 0;
  XCB_BLANKING_PREFERRED = 1;
  XCB_BLANKING_DEFAULT = 2;

type
  Pxcb_exposures_t = ^Txcb_exposures_t;
  Txcb_exposures_t = longint;

const
  XCB_EXPOSURES_NOT_ALLOWED = 0;
  XCB_EXPOSURES_ALLOWED = 1;
  XCB_EXPOSURES_DEFAULT = 2;

const
  XCB_SET_SCREEN_SAVER_ = 107;

type
  Txcb_set_screen_saver_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    timeout: Tint16_t;
    interval: Tint16_t;
    prefer_blanking: Tuint8_t;
    allow_exposures: Tuint8_t;
  end;
  Pxcb_set_screen_saver_request_t = ^Txcb_set_screen_saver_request_t;

  Txcb_get_screen_saver_cookie_t = record
    sequence: dword;
  end;
  Pxcb_get_screen_saver_cookie_t = ^Txcb_get_screen_saver_cookie_t;

const
  XCB_GET_SCREEN_SAVER_ = 108;

type
  Txcb_get_screen_saver_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_get_screen_saver_request_t = ^Txcb_get_screen_saver_request_t;

  Txcb_get_screen_saver_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    timeout: Tuint16_t;
    interval: Tuint16_t;
    prefer_blanking: Tuint8_t;
    allow_exposures: Tuint8_t;
    pad1: array[0..17] of Tuint8_t;
  end;
  Pxcb_get_screen_saver_reply_t = ^Txcb_get_screen_saver_reply_t;

type
  Pxcb_host_mode_t = ^Txcb_host_mode_t;
  Txcb_host_mode_t = longint;

const
  XCB_HOST_MODE_INSERT = 0;
  XCB_HOST_MODE_DELETE = 1;

type
  Pxcb_family_t = ^Txcb_family_t;
  Txcb_family_t = longint;

const
  XCB_FAMILY_INTERNET = 0;
  XCB_FAMILY_DECNET = 1;
  XCB_FAMILY_CHAOS = 2;
  XCB_FAMILY_SERVER_INTERPRETED = 5;
  XCB_FAMILY_INTERNET_6 = 6;

const
  XCB_CHANGE_HOSTS_ = 109;

type
  Txcb_change_hosts_request_t = record
    major_opcode: Tuint8_t;
    mode: Tuint8_t;
    length: Tuint16_t;
    family: Tuint8_t;
    pad0: Tuint8_t;
    address_len: Tuint16_t;
  end;
  Pxcb_change_hosts_request_t = ^Txcb_change_hosts_request_t;

  Txcb_host_t = record
    family: Tuint8_t;
    pad0: Tuint8_t;
    address_len: Tuint16_t;
  end;
  Pxcb_host_t = ^Txcb_host_t;

  Txcb_host_iterator_t = record
    data: Pxcb_host_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_host_iterator_t = ^Txcb_host_iterator_t;

  Txcb_list_hosts_cookie_t = record
    sequence: dword;
  end;
  Pxcb_list_hosts_cookie_t = ^Txcb_list_hosts_cookie_t;

const
  XCB_LIST_HOSTS_ = 110;

type
  Txcb_list_hosts_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_list_hosts_request_t = ^Txcb_list_hosts_request_t;

  Txcb_list_hosts_reply_t = record
    response_type: Tuint8_t;
    mode: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    hosts_len: Tuint16_t;
    pad0: array[0..21] of Tuint8_t;
  end;
  Pxcb_list_hosts_reply_t = ^Txcb_list_hosts_reply_t;

type
  Pxcb_access_control_t = ^Txcb_access_control_t;
  Txcb_access_control_t = longint;

const
  XCB_ACCESS_CONTROL_DISABLE = 0;
  XCB_ACCESS_CONTROL_ENABLE = 1;

const
  XCB_SET_ACCESS_CONTROL_ = 111;

type
  Txcb_set_access_control_request_t = record
    major_opcode: Tuint8_t;
    mode: Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_set_access_control_request_t = ^Txcb_set_access_control_request_t;

type
  Pxcb_close_down_t = ^Txcb_close_down_t;
  Txcb_close_down_t = longint;

const
  XCB_CLOSE_DOWN_DESTROY_ALL = 0;
  XCB_CLOSE_DOWN_RETAIN_PERMANENT = 1;
  XCB_CLOSE_DOWN_RETAIN_TEMPORARY = 2;

const
  XCB_SET_CLOSE_DOWN_MODE_ = 112;

type
  Txcb_set_close_down_mode_request_t = record
    major_opcode: Tuint8_t;
    mode: Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_set_close_down_mode_request_t = ^Txcb_set_close_down_mode_request_t;

type
  Pxcb_kill_t = ^Txcb_kill_t;
  Txcb_kill_t = longint;

const
  XCB_KILL_ALL_TEMPORARY = 0;

const
  XCB_KILL_CLIENT_ = 113;

type
  Txcb_kill_client_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    resource: Tuint32_t;
  end;
  Pxcb_kill_client_request_t = ^Txcb_kill_client_request_t;

const
  XCB_ROTATE_PROPERTIES_ = 114;

type
  Txcb_rotate_properties_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    atoms_len: Tuint16_t;
    delta: Tint16_t;
  end;
  Pxcb_rotate_properties_request_t = ^Txcb_rotate_properties_request_t;

type
  Pxcb_screen_saver_t = ^Txcb_screen_saver_t;
  Txcb_screen_saver_t = longint;

const
  XCB_SCREEN_SAVER_RESET = 0;
  XCB_SCREEN_SAVER_ACTIVE = 1;

const
  XCB_FORCE_SCREEN_SAVER_ = 115;

type
  Txcb_force_screen_saver_request_t = record
    major_opcode: Tuint8_t;
    mode: Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_force_screen_saver_request_t = ^Txcb_force_screen_saver_request_t;

type
  Pxcb_mapping_status_t = ^Txcb_mapping_status_t;
  Txcb_mapping_status_t = longint;

const
  XCB_MAPPING_STATUS_SUCCESS = 0;
  XCB_MAPPING_STATUS_BUSY = 1;
  XCB_MAPPING_STATUS_FAILURE = 2;

type
  Txcb_set_pointer_mapping_cookie_t = record
    sequence: dword;
  end;
  Pxcb_set_pointer_mapping_cookie_t = ^Txcb_set_pointer_mapping_cookie_t;

const
  XCB_SET_POINTER_MAPPING_ = 116;

type
  Txcb_set_pointer_mapping_request_t = record
    major_opcode: Tuint8_t;
    map_len: Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_set_pointer_mapping_request_t = ^Txcb_set_pointer_mapping_request_t;

  Txcb_set_pointer_mapping_reply_t = record
    response_type: Tuint8_t;
    status: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
  end;
  Pxcb_set_pointer_mapping_reply_t = ^Txcb_set_pointer_mapping_reply_t;

  Txcb_get_pointer_mapping_cookie_t = record
    sequence: dword;
  end;
  Pxcb_get_pointer_mapping_cookie_t = ^Txcb_get_pointer_mapping_cookie_t;

const
  XCB_GET_POINTER_MAPPING_ = 117;

type
  Txcb_get_pointer_mapping_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_get_pointer_mapping_request_t = ^Txcb_get_pointer_mapping_request_t;

  Txcb_get_pointer_mapping_reply_t = record
    response_type: Tuint8_t;
    map_len: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    pad0: array[0..23] of Tuint8_t;
  end;
  Pxcb_get_pointer_mapping_reply_t = ^Txcb_get_pointer_mapping_reply_t;

type
  Pxcb_map_index_t = ^Txcb_map_index_t;
  Txcb_map_index_t = longint;

const
  XCB_MAP_INDEX_SHIFT = 0;
  XCB_MAP_INDEX_LOCK = 1;
  XCB_MAP_INDEX_CONTROL = 2;
  XCB_MAP_INDEX_1 = 3;
  XCB_MAP_INDEX_2 = 4;
  XCB_MAP_INDEX_3 = 5;
  XCB_MAP_INDEX_4 = 6;
  XCB_MAP_INDEX_5 = 7;

type
  Txcb_set_modifier_mapping_cookie_t = record
    sequence: dword;
  end;
  Pxcb_set_modifier_mapping_cookie_t = ^Txcb_set_modifier_mapping_cookie_t;

const
  XCB_SET_MODIFIER_MAPPING_ = 118;

type
  Txcb_set_modifier_mapping_request_t = record
    major_opcode: Tuint8_t;
    keycodes_per_modifier: Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_set_modifier_mapping_request_t = ^Txcb_set_modifier_mapping_request_t;

  Txcb_set_modifier_mapping_reply_t = record
    response_type: Tuint8_t;
    status: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
  end;
  Pxcb_set_modifier_mapping_reply_t = ^Txcb_set_modifier_mapping_reply_t;

  Txcb_get_modifier_mapping_cookie_t = record
    sequence: dword;
  end;
  Pxcb_get_modifier_mapping_cookie_t = ^Txcb_get_modifier_mapping_cookie_t;

const
  XCB_GET_MODIFIER_MAPPING_ = 119;

type
  Txcb_get_modifier_mapping_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_get_modifier_mapping_request_t = ^Txcb_get_modifier_mapping_request_t;

  Txcb_get_modifier_mapping_reply_t = record
    response_type: Tuint8_t;
    keycodes_per_modifier: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    pad0: array[0..23] of Tuint8_t;
  end;
  Pxcb_get_modifier_mapping_reply_t = ^Txcb_get_modifier_mapping_reply_t;

const
  XCB_NO_OPERATION_ = 127;

type
  Txcb_no_operation_request_t = record
    major_opcode: Tuint8_t;
    pad0: Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_no_operation_request_t = ^Txcb_no_operation_request_t;

procedure xcb_char2b_next(i: Pxcb_char2b_iterator_t); cdecl; external libxcb;
function xcb_char2b_end(i: Txcb_char2b_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
procedure xcb_window_next(i: Pxcb_window_iterator_t); cdecl; external libxcb;
function xcb_window_end(i: Txcb_window_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
procedure xcb_pixmap_next(i: Pxcb_pixmap_iterator_t); cdecl; external libxcb;
function xcb_pixmap_end(i: Txcb_pixmap_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
procedure xcb_cursor_next(i: Pxcb_cursor_iterator_t); cdecl; external libxcb;
function xcb_cursor_end(i: Txcb_cursor_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
procedure xcb_font_next(i: Pxcb_font_iterator_t); cdecl; external libxcb;
function xcb_font_end(i: Txcb_font_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
procedure xcb_gcontext_next(i: Pxcb_gcontext_iterator_t); cdecl; external libxcb;
function xcb_gcontext_end(i: Txcb_gcontext_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
procedure xcb_colormap_next(i: Pxcb_colormap_iterator_t); cdecl; external libxcb;
function xcb_colormap_end(i: Txcb_colormap_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
procedure xcb_atom_next(i: Pxcb_atom_iterator_t); cdecl; external libxcb;
function xcb_atom_end(i: Txcb_atom_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
procedure xcb_drawable_next(i: Pxcb_drawable_iterator_t); cdecl; external libxcb;
function xcb_drawable_end(i: Txcb_drawable_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
procedure xcb_fontable_next(i: Pxcb_fontable_iterator_t); cdecl; external libxcb;
function xcb_fontable_end(i: Txcb_fontable_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
procedure xcb_bool32_next(i: Pxcb_bool32_iterator_t); cdecl; external libxcb;
function xcb_bool32_end(i: Txcb_bool32_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
procedure xcb_visualid_next(i: Pxcb_visualid_iterator_t); cdecl; external libxcb;
function xcb_visualid_end(i: Txcb_visualid_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
procedure xcb_timestamp_next(i: Pxcb_timestamp_iterator_t); cdecl; external libxcb;
function xcb_timestamp_end(i: Txcb_timestamp_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
procedure xcb_keysym_next(i: Pxcb_keysym_iterator_t); cdecl; external libxcb;
function xcb_keysym_end(i: Txcb_keysym_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
procedure xcb_keycode_next(i: Pxcb_keycode_iterator_t); cdecl; external libxcb;
function xcb_keycode_end(i: Txcb_keycode_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
procedure xcb_keycode32_next(i: Pxcb_keycode32_iterator_t); cdecl; external libxcb;
function xcb_keycode32_end(i: Txcb_keycode32_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
procedure xcb_button_next(i: Pxcb_button_iterator_t); cdecl; external libxcb;
function xcb_button_end(i: Txcb_button_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
procedure xcb_point_next(i: Pxcb_point_iterator_t); cdecl; external libxcb;
function xcb_point_end(i: Txcb_point_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
procedure xcb_rectangle_next(i: Pxcb_rectangle_iterator_t); cdecl; external libxcb;
function xcb_rectangle_end(i: Txcb_rectangle_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
procedure xcb_arc_next(i: Pxcb_arc_iterator_t); cdecl; external libxcb;
function xcb_arc_end(i: Txcb_arc_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
procedure xcb_format_next(i: Pxcb_format_iterator_t); cdecl; external libxcb;
function xcb_format_end(i: Txcb_format_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
procedure xcb_visualtype_next(i: Pxcb_visualtype_iterator_t); cdecl; external libxcb;
function xcb_visualtype_end(i: Txcb_visualtype_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_depth_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_depth_visuals(R: Pxcb_depth_t): Pxcb_visualtype_t; cdecl; external libxcb;
function xcb_depth_visuals_length(R: Pxcb_depth_t): longint; cdecl; external libxcb;
function xcb_depth_visuals_iterator(R: Pxcb_depth_t): Txcb_visualtype_iterator_t; cdecl; external libxcb;
procedure xcb_depth_next(i: Pxcb_depth_iterator_t); cdecl; external libxcb;
function xcb_depth_end(i: Txcb_depth_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_screen_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_screen_allowed_depths_length(R: Pxcb_screen_t): longint; cdecl; external libxcb;
function xcb_screen_allowed_depths_iterator(R: Pxcb_screen_t): Txcb_depth_iterator_t; cdecl; external libxcb;
procedure xcb_screen_next(i: Pxcb_screen_iterator_t); cdecl; external libxcb;
function xcb_screen_end(i: Txcb_screen_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_setup_request_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_setup_request_authorization_protocol_name(R: Pxcb_setup_request_t): pchar; cdecl; external libxcb;
function xcb_setup_request_authorization_protocol_name_length(R: Pxcb_setup_request_t): longint; cdecl; external libxcb;
function xcb_setup_request_authorization_protocol_name_end(R: Pxcb_setup_request_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_setup_request_authorization_protocol_data(R: Pxcb_setup_request_t): pchar; cdecl; external libxcb;
function xcb_setup_request_authorization_protocol_data_length(R: Pxcb_setup_request_t): longint; cdecl; external libxcb;
function xcb_setup_request_authorization_protocol_data_end(R: Pxcb_setup_request_t): Txcb_generic_iterator_t; cdecl; external libxcb;
procedure xcb_setup_request_next(i: Pxcb_setup_request_iterator_t); cdecl; external libxcb;
function xcb_setup_request_end(i: Txcb_setup_request_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_setup_failed_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_setup_failed_reason(R: Pxcb_setup_failed_t): pchar; cdecl; external libxcb;
function xcb_setup_failed_reason_length(R: Pxcb_setup_failed_t): longint; cdecl; external libxcb;
function xcb_setup_failed_reason_end(R: Pxcb_setup_failed_t): Txcb_generic_iterator_t; cdecl; external libxcb;
procedure xcb_setup_failed_next(i: Pxcb_setup_failed_iterator_t); cdecl; external libxcb;
function xcb_setup_failed_end(i: Txcb_setup_failed_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_setup_authenticate_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_setup_authenticate_reason(R: Pxcb_setup_authenticate_t): pchar; cdecl; external libxcb;
function xcb_setup_authenticate_reason_length(R: Pxcb_setup_authenticate_t): longint; cdecl; external libxcb;
function xcb_setup_authenticate_reason_end(R: Pxcb_setup_authenticate_t): Txcb_generic_iterator_t; cdecl; external libxcb;
procedure xcb_setup_authenticate_next(i: Pxcb_setup_authenticate_iterator_t); cdecl; external libxcb;
function xcb_setup_authenticate_end(i: Txcb_setup_authenticate_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_setup_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_setup_vendor(R: Pxcb_setup_t): pchar; cdecl; external libxcb;
function xcb_setup_vendor_length(R: Pxcb_setup_t): longint; cdecl; external libxcb;
function xcb_setup_vendor_end(R: Pxcb_setup_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_setup_pixmap_formats(R: Pxcb_setup_t): Pxcb_format_t; cdecl; external libxcb;
function xcb_setup_pixmap_formats_length(R: Pxcb_setup_t): longint; cdecl; external libxcb;
function xcb_setup_pixmap_formats_iterator(R: Pxcb_setup_t): Txcb_format_iterator_t; cdecl; external libxcb;
function xcb_setup_roots_length(R: Pxcb_setup_t): longint; cdecl; external libxcb;
function xcb_setup_roots_iterator(R: Pxcb_setup_t): Txcb_screen_iterator_t; cdecl; external libxcb;
procedure xcb_setup_next(i: Pxcb_setup_iterator_t); cdecl; external libxcb;
function xcb_setup_end(i: Txcb_setup_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
procedure xcb_client_message_data_next(i: Pxcb_client_message_data_iterator_t); cdecl; external libxcb;
function xcb_client_message_data_end(i: Txcb_client_message_data_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_create_window_value_list_serialize(_buffer: Ppointer; value_mask: Tuint32_t; _aux: Pxcb_create_window_value_list_t): longint; cdecl; external libxcb;
function xcb_create_window_value_list_unpack(_buffer: pointer; value_mask: Tuint32_t; _aux: Pxcb_create_window_value_list_t): longint; cdecl; external libxcb;
function xcb_create_window_value_list_sizeof(_buffer: pointer; value_mask: Tuint32_t): longint; cdecl; external libxcb;
function xcb_create_window_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_create_window_checked(c: Pxcb_connection_t; depth: Tuint8_t; wid: Txcb_window_t; parent: Txcb_window_t; x: Tint16_t;
  y: Tint16_t; width: Tuint16_t; height: Tuint16_t; border_width: Tuint16_t; _class: Tuint16_t;
  visual: Txcb_visualid_t; value_mask: Tuint32_t; value_list: pointer): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_create_window(c: Pxcb_connection_t; depth: Tuint8_t; wid: Txcb_window_t; parent: Txcb_window_t; x: Tint16_t;
  y: Tint16_t; width: Tuint16_t; height: Tuint16_t; border_width: Tuint16_t; _class: Tuint16_t;
  visual: Txcb_visualid_t; value_mask: Tuint32_t; value_list: pointer): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_create_window_aux_checked(c: Pxcb_connection_t; depth: Tuint8_t; wid: Txcb_window_t; parent: Txcb_window_t; x: Tint16_t;
  y: Tint16_t; width: Tuint16_t; height: Tuint16_t; border_width: Tuint16_t; _class: Tuint16_t;
  visual: Txcb_visualid_t; value_mask: Tuint32_t; value_list: Pxcb_create_window_value_list_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_create_window_aux(c: Pxcb_connection_t; depth: Tuint8_t; wid: Txcb_window_t; parent: Txcb_window_t; x: Tint16_t;
  y: Tint16_t; width: Tuint16_t; height: Tuint16_t; border_width: Tuint16_t; _class: Tuint16_t;
  visual: Txcb_visualid_t; value_mask: Tuint32_t; value_list: Pxcb_create_window_value_list_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_create_window_value_list(R: Pxcb_create_window_request_t): pointer; cdecl; external libxcb;
function xcb_change_window_attributes_value_list_serialize(_buffer: Ppointer; value_mask: Tuint32_t; _aux: Pxcb_change_window_attributes_value_list_t): longint; cdecl; external libxcb;
function xcb_change_window_attributes_value_list_unpack(_buffer: pointer; value_mask: Tuint32_t; _aux: Pxcb_change_window_attributes_value_list_t): longint; cdecl; external libxcb;
function xcb_change_window_attributes_value_list_sizeof(_buffer: pointer; value_mask: Tuint32_t): longint; cdecl; external libxcb;
function xcb_change_window_attributes_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_change_window_attributes_checked(c: Pxcb_connection_t; window: Txcb_window_t; value_mask: Tuint32_t; value_list: pointer): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_change_window_attributes(c: Pxcb_connection_t; window: Txcb_window_t; value_mask: Tuint32_t; value_list: pointer): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_change_window_attributes_aux_checked(c: Pxcb_connection_t; window: Txcb_window_t; value_mask: Tuint32_t; value_list: Pxcb_change_window_attributes_value_list_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_change_window_attributes_aux(c: Pxcb_connection_t; window: Txcb_window_t; value_mask: Tuint32_t; value_list: Pxcb_change_window_attributes_value_list_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_change_window_attributes_value_list(R: Pxcb_change_window_attributes_request_t): pointer; cdecl; external libxcb;
function xcb_get_window_attributes(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_get_window_attributes_cookie_t; cdecl; external libxcb;
function xcb_get_window_attributes_unchecked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_get_window_attributes_cookie_t; cdecl; external libxcb;
function xcb_get_window_attributes_reply(c: Pxcb_connection_t; cookie: Txcb_get_window_attributes_cookie_t; e: PPxcb_generic_error_t): Pxcb_get_window_attributes_reply_t; cdecl; external libxcb;
function xcb_destroy_window_checked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_destroy_window(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_destroy_subwindows_checked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_destroy_subwindows(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_change_save_set_checked(c: Pxcb_connection_t; mode: Tuint8_t; window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_change_save_set(c: Pxcb_connection_t; mode: Tuint8_t; window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_reparent_window_checked(c: Pxcb_connection_t; window: Txcb_window_t; parent: Txcb_window_t; x: Tint16_t; y: Tint16_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_reparent_window(c: Pxcb_connection_t; window: Txcb_window_t; parent: Txcb_window_t; x: Tint16_t; y: Tint16_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_map_window_checked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_map_window(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_map_subwindows_checked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_map_subwindows(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_unmap_window_checked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_unmap_window(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_unmap_subwindows_checked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_unmap_subwindows(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_configure_window_value_list_serialize(_buffer: Ppointer; value_mask: Tuint16_t; _aux: Pxcb_configure_window_value_list_t): longint; cdecl; external libxcb;
function xcb_configure_window_value_list_unpack(_buffer: pointer; value_mask: Tuint16_t; _aux: Pxcb_configure_window_value_list_t): longint; cdecl; external libxcb;
function xcb_configure_window_value_list_sizeof(_buffer: pointer; value_mask: Tuint16_t): longint; cdecl; external libxcb;
function xcb_configure_window_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_configure_window_checked(c: Pxcb_connection_t; window: Txcb_window_t; value_mask: Tuint16_t; value_list: pointer): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_configure_window(c: Pxcb_connection_t; window: Txcb_window_t; value_mask: Tuint16_t; value_list: pointer): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_configure_window_aux_checked(c: Pxcb_connection_t; window: Txcb_window_t; value_mask: Tuint16_t; value_list: Pxcb_configure_window_value_list_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_configure_window_aux(c: Pxcb_connection_t; window: Txcb_window_t; value_mask: Tuint16_t; value_list: Pxcb_configure_window_value_list_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_configure_window_value_list(R: Pxcb_configure_window_request_t): pointer; cdecl; external libxcb;
function xcb_circulate_window_checked(c: Pxcb_connection_t; direction: Tuint8_t; window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_circulate_window(c: Pxcb_connection_t; direction: Tuint8_t; window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_get_geometry(c: Pxcb_connection_t; drawable: Txcb_drawable_t): Txcb_get_geometry_cookie_t; cdecl; external libxcb;
function xcb_get_geometry_unchecked(c: Pxcb_connection_t; drawable: Txcb_drawable_t): Txcb_get_geometry_cookie_t; cdecl; external libxcb;
function xcb_get_geometry_reply(c: Pxcb_connection_t; cookie: Txcb_get_geometry_cookie_t; e: PPxcb_generic_error_t): Pxcb_get_geometry_reply_t; cdecl; external libxcb;
function xcb_query_tree_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_query_tree(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_query_tree_cookie_t; cdecl; external libxcb;
function xcb_query_tree_unchecked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_query_tree_cookie_t; cdecl; external libxcb;
function xcb_query_tree_children(R: Pxcb_query_tree_reply_t): Pxcb_window_t; cdecl; external libxcb;
function xcb_query_tree_children_length(R: Pxcb_query_tree_reply_t): longint; cdecl; external libxcb;
function xcb_query_tree_children_end(R: Pxcb_query_tree_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_query_tree_reply(c: Pxcb_connection_t; cookie: Txcb_query_tree_cookie_t; e: PPxcb_generic_error_t): Pxcb_query_tree_reply_t; cdecl; external libxcb;
function xcb_intern_atom_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_intern_atom(c: Pxcb_connection_t; only_if_exists: Tuint8_t; name_len: Tuint16_t; name: pchar): Txcb_intern_atom_cookie_t; cdecl; external libxcb;
function xcb_intern_atom_unchecked(c: Pxcb_connection_t; only_if_exists: Tuint8_t; name_len: Tuint16_t; name: pchar): Txcb_intern_atom_cookie_t; cdecl; external libxcb;
function xcb_intern_atom_reply(c: Pxcb_connection_t; cookie: Txcb_intern_atom_cookie_t; e: PPxcb_generic_error_t): Pxcb_intern_atom_reply_t; cdecl; external libxcb;
function xcb_get_atom_name_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_get_atom_name(c: Pxcb_connection_t; atom: Txcb_atom_t): Txcb_get_atom_name_cookie_t; cdecl; external libxcb;
function xcb_get_atom_name_unchecked(c: Pxcb_connection_t; atom: Txcb_atom_t): Txcb_get_atom_name_cookie_t; cdecl; external libxcb;
function xcb_get_atom_name_name(R: Pxcb_get_atom_name_reply_t): pchar; cdecl; external libxcb;
function xcb_get_atom_name_name_length(R: Pxcb_get_atom_name_reply_t): longint; cdecl; external libxcb;
function xcb_get_atom_name_name_end(R: Pxcb_get_atom_name_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_get_atom_name_reply(c: Pxcb_connection_t; cookie: Txcb_get_atom_name_cookie_t; e: PPxcb_generic_error_t): Pxcb_get_atom_name_reply_t; cdecl; external libxcb;
function xcb_change_property_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_change_property_checked(c: Pxcb_connection_t; mode: Tuint8_t; window: Txcb_window_t; _property: Txcb_atom_t; _type: Txcb_atom_t;
  format: Tuint8_t; data_len: Tuint32_t; data: pointer): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_change_property(c: Pxcb_connection_t; mode: Tuint8_t; window: Txcb_window_t; _property: Txcb_atom_t; _type: Txcb_atom_t;
  format: Tuint8_t; data_len: Tuint32_t; data: pointer): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_change_property_data(R: Pxcb_change_property_request_t): pointer; cdecl; external libxcb;
function xcb_change_property_data_length(R: Pxcb_change_property_request_t): longint; cdecl; external libxcb;
function xcb_change_property_data_end(R: Pxcb_change_property_request_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_delete_property_checked(c: Pxcb_connection_t; window: Txcb_window_t; _property: Txcb_atom_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_delete_property(c: Pxcb_connection_t; window: Txcb_window_t; _property: Txcb_atom_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_get_property_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_get_property(c: Pxcb_connection_t; _delete: Tuint8_t; window: Txcb_window_t; _property: Txcb_atom_t; _type: Txcb_atom_t;
  long_offset: Tuint32_t; long_length: Tuint32_t): Txcb_get_property_cookie_t; cdecl; external libxcb;
function xcb_get_property_unchecked(c: Pxcb_connection_t; _delete: Tuint8_t; window: Txcb_window_t; _property: Txcb_atom_t; _type: Txcb_atom_t;
  long_offset: Tuint32_t; long_length: Tuint32_t): Txcb_get_property_cookie_t; cdecl; external libxcb;
function xcb_get_property_value(R: Pxcb_get_property_reply_t): pointer; cdecl; external libxcb;
function xcb_get_property_value_length(R: Pxcb_get_property_reply_t): longint; cdecl; external libxcb;
function xcb_get_property_value_end(R: Pxcb_get_property_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_get_property_reply(c: Pxcb_connection_t; cookie: Txcb_get_property_cookie_t; e: PPxcb_generic_error_t): Pxcb_get_property_reply_t; cdecl; external libxcb;
function xcb_list_properties_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_list_properties(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_list_properties_cookie_t; cdecl; external libxcb;
function xcb_list_properties_unchecked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_list_properties_cookie_t; cdecl; external libxcb;
function xcb_list_properties_atoms(R: Pxcb_list_properties_reply_t): Pxcb_atom_t; cdecl; external libxcb;
function xcb_list_properties_atoms_length(R: Pxcb_list_properties_reply_t): longint; cdecl; external libxcb;
function xcb_list_properties_atoms_end(R: Pxcb_list_properties_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_list_properties_reply(c: Pxcb_connection_t; cookie: Txcb_list_properties_cookie_t; e: PPxcb_generic_error_t): Pxcb_list_properties_reply_t; cdecl; external libxcb;
function xcb_set_selection_owner_checked(c: Pxcb_connection_t; owner: Txcb_window_t; selection: Txcb_atom_t; time: Txcb_timestamp_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_set_selection_owner(c: Pxcb_connection_t; owner: Txcb_window_t; selection: Txcb_atom_t; time: Txcb_timestamp_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_get_selection_owner(c: Pxcb_connection_t; selection: Txcb_atom_t): Txcb_get_selection_owner_cookie_t; cdecl; external libxcb;
function xcb_get_selection_owner_unchecked(c: Pxcb_connection_t; selection: Txcb_atom_t): Txcb_get_selection_owner_cookie_t; cdecl; external libxcb;
function xcb_get_selection_owner_reply(c: Pxcb_connection_t; cookie: Txcb_get_selection_owner_cookie_t; e: PPxcb_generic_error_t): Pxcb_get_selection_owner_reply_t; cdecl; external libxcb;
function xcb_convert_selection_checked(c: Pxcb_connection_t; requestor: Txcb_window_t; selection: Txcb_atom_t; target: Txcb_atom_t; _property: Txcb_atom_t;
  time: Txcb_timestamp_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_convert_selection(c: Pxcb_connection_t; requestor: Txcb_window_t; selection: Txcb_atom_t; target: Txcb_atom_t; _property: Txcb_atom_t;
  time: Txcb_timestamp_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_send_event_checked(c: Pxcb_connection_t; propagate: Tuint8_t; destination: Txcb_window_t; event_mask: Tuint32_t; event: pchar): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_send_event(c: Pxcb_connection_t; propagate: Tuint8_t; destination: Txcb_window_t; event_mask: Tuint32_t; event: pchar): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_grab_pointer(c: Pxcb_connection_t; owner_events: Tuint8_t; grab_window: Txcb_window_t; event_mask: Tuint16_t; pointer_mode: Tuint8_t;
  keyboard_mode: Tuint8_t; confine_to: Txcb_window_t; cursor: Txcb_cursor_t; time: Txcb_timestamp_t): Txcb_grab_pointer_cookie_t; cdecl; external libxcb;
function xcb_grab_pointer_unchecked(c: Pxcb_connection_t; owner_events: Tuint8_t; grab_window: Txcb_window_t; event_mask: Tuint16_t; pointer_mode: Tuint8_t;
  keyboard_mode: Tuint8_t; confine_to: Txcb_window_t; cursor: Txcb_cursor_t; time: Txcb_timestamp_t): Txcb_grab_pointer_cookie_t; cdecl; external libxcb;
function xcb_grab_pointer_reply(c: Pxcb_connection_t; cookie: Txcb_grab_pointer_cookie_t; e: PPxcb_generic_error_t): Pxcb_grab_pointer_reply_t; cdecl; external libxcb;
function xcb_ungrab_pointer_checked(c: Pxcb_connection_t; time: Txcb_timestamp_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_ungrab_pointer(c: Pxcb_connection_t; time: Txcb_timestamp_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_grab_button_checked(c: Pxcb_connection_t; owner_events: Tuint8_t; grab_window: Txcb_window_t; event_mask: Tuint16_t; pointer_mode: Tuint8_t;
  keyboard_mode: Tuint8_t; confine_to: Txcb_window_t; cursor: Txcb_cursor_t; button: Tuint8_t; modifiers: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_grab_button(c: Pxcb_connection_t; owner_events: Tuint8_t; grab_window: Txcb_window_t; event_mask: Tuint16_t; pointer_mode: Tuint8_t;
  keyboard_mode: Tuint8_t; confine_to: Txcb_window_t; cursor: Txcb_cursor_t; button: Tuint8_t; modifiers: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_ungrab_button_checked(c: Pxcb_connection_t; button: Tuint8_t; grab_window: Txcb_window_t; modifiers: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_ungrab_button(c: Pxcb_connection_t; button: Tuint8_t; grab_window: Txcb_window_t; modifiers: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_change_active_pointer_grab_checked(c: Pxcb_connection_t; cursor: Txcb_cursor_t; time: Txcb_timestamp_t; event_mask: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_change_active_pointer_grab(c: Pxcb_connection_t; cursor: Txcb_cursor_t; time: Txcb_timestamp_t; event_mask: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_grab_keyboard(c: Pxcb_connection_t; owner_events: Tuint8_t; grab_window: Txcb_window_t; time: Txcb_timestamp_t; pointer_mode: Tuint8_t;
  keyboard_mode: Tuint8_t): Txcb_grab_keyboard_cookie_t; cdecl; external libxcb;
function xcb_grab_keyboard_unchecked(c: Pxcb_connection_t; owner_events: Tuint8_t; grab_window: Txcb_window_t; time: Txcb_timestamp_t; pointer_mode: Tuint8_t;
  keyboard_mode: Tuint8_t): Txcb_grab_keyboard_cookie_t; cdecl; external libxcb;
function xcb_grab_keyboard_reply(c: Pxcb_connection_t; cookie: Txcb_grab_keyboard_cookie_t; e: PPxcb_generic_error_t): Pxcb_grab_keyboard_reply_t; cdecl; external libxcb;
function xcb_ungrab_keyboard_checked(c: Pxcb_connection_t; time: Txcb_timestamp_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_ungrab_keyboard(c: Pxcb_connection_t; time: Txcb_timestamp_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_grab_key_checked(c: Pxcb_connection_t; owner_events: Tuint8_t; grab_window: Txcb_window_t; modifiers: Tuint16_t; key: Txcb_keycode_t;
  pointer_mode: Tuint8_t; keyboard_mode: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_grab_key(c: Pxcb_connection_t; owner_events: Tuint8_t; grab_window: Txcb_window_t; modifiers: Tuint16_t; key: Txcb_keycode_t;
  pointer_mode: Tuint8_t; keyboard_mode: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_ungrab_key_checked(c: Pxcb_connection_t; key: Txcb_keycode_t; grab_window: Txcb_window_t; modifiers: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_ungrab_key(c: Pxcb_connection_t; key: Txcb_keycode_t; grab_window: Txcb_window_t; modifiers: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_allow_events_checked(c: Pxcb_connection_t; mode: Tuint8_t; time: Txcb_timestamp_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_allow_events(c: Pxcb_connection_t; mode: Tuint8_t; time: Txcb_timestamp_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_grab_server_checked(c: Pxcb_connection_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_grab_server(c: Pxcb_connection_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_ungrab_server_checked(c: Pxcb_connection_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_ungrab_server(c: Pxcb_connection_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_query_pointer(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_query_pointer_cookie_t; cdecl; external libxcb;
function xcb_query_pointer_unchecked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_query_pointer_cookie_t; cdecl; external libxcb;
function xcb_query_pointer_reply(c: Pxcb_connection_t; cookie: Txcb_query_pointer_cookie_t; e: PPxcb_generic_error_t): Pxcb_query_pointer_reply_t; cdecl; external libxcb;
procedure xcb_timecoord_next(i: Pxcb_timecoord_iterator_t); cdecl; external libxcb;
function xcb_timecoord_end(i: Txcb_timecoord_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_get_motion_events_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_get_motion_events(c: Pxcb_connection_t; window: Txcb_window_t; start: Txcb_timestamp_t; stop: Txcb_timestamp_t): Txcb_get_motion_events_cookie_t; cdecl; external libxcb;
function xcb_get_motion_events_unchecked(c: Pxcb_connection_t; window: Txcb_window_t; start: Txcb_timestamp_t; stop: Txcb_timestamp_t): Txcb_get_motion_events_cookie_t; cdecl; external libxcb;
function xcb_get_motion_events_events(R: Pxcb_get_motion_events_reply_t): Pxcb_timecoord_t; cdecl; external libxcb;
function xcb_get_motion_events_events_length(R: Pxcb_get_motion_events_reply_t): longint; cdecl; external libxcb;
function xcb_get_motion_events_events_iterator(R: Pxcb_get_motion_events_reply_t): Txcb_timecoord_iterator_t; cdecl; external libxcb;
function xcb_get_motion_events_reply(c: Pxcb_connection_t; cookie: Txcb_get_motion_events_cookie_t; e: PPxcb_generic_error_t): Pxcb_get_motion_events_reply_t; cdecl; external libxcb;
function xcb_translate_coordinates(c: Pxcb_connection_t; src_window: Txcb_window_t; dst_window: Txcb_window_t; src_x: Tint16_t; src_y: Tint16_t): Txcb_translate_coordinates_cookie_t; cdecl; external libxcb;
function xcb_translate_coordinates_unchecked(c: Pxcb_connection_t; src_window: Txcb_window_t; dst_window: Txcb_window_t; src_x: Tint16_t; src_y: Tint16_t): Txcb_translate_coordinates_cookie_t; cdecl; external libxcb;
function xcb_translate_coordinates_reply(c: Pxcb_connection_t; cookie: Txcb_translate_coordinates_cookie_t; e: PPxcb_generic_error_t): Pxcb_translate_coordinates_reply_t; cdecl; external libxcb;
function xcb_warp_pointer_checked(c: Pxcb_connection_t; src_window: Txcb_window_t; dst_window: Txcb_window_t; src_x: Tint16_t; src_y: Tint16_t;
  src_width: Tuint16_t; src_height: Tuint16_t; dst_x: Tint16_t; dst_y: Tint16_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_warp_pointer(c: Pxcb_connection_t; src_window: Txcb_window_t; dst_window: Txcb_window_t; src_x: Tint16_t; src_y: Tint16_t;
  src_width: Tuint16_t; src_height: Tuint16_t; dst_x: Tint16_t; dst_y: Tint16_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_set_input_focus_checked(c: Pxcb_connection_t; revert_to: Tuint8_t; focus: Txcb_window_t; time: Txcb_timestamp_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_set_input_focus(c: Pxcb_connection_t; revert_to: Tuint8_t; focus: Txcb_window_t; time: Txcb_timestamp_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_get_input_focus(c: Pxcb_connection_t): Txcb_get_input_focus_cookie_t; cdecl; external libxcb;
function xcb_get_input_focus_unchecked(c: Pxcb_connection_t): Txcb_get_input_focus_cookie_t; cdecl; external libxcb;
function xcb_get_input_focus_reply(c: Pxcb_connection_t; cookie: Txcb_get_input_focus_cookie_t; e: PPxcb_generic_error_t): Pxcb_get_input_focus_reply_t; cdecl; external libxcb;
function xcb_query_keymap(c: Pxcb_connection_t): Txcb_query_keymap_cookie_t; cdecl; external libxcb;
function xcb_query_keymap_unchecked(c: Pxcb_connection_t): Txcb_query_keymap_cookie_t; cdecl; external libxcb;
function xcb_query_keymap_reply(c: Pxcb_connection_t; cookie: Txcb_query_keymap_cookie_t; e: PPxcb_generic_error_t): Pxcb_query_keymap_reply_t; cdecl; external libxcb;
function xcb_open_font_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_open_font_checked(c: Pxcb_connection_t; fid: Txcb_font_t; name_len: Tuint16_t; name: pchar): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_open_font(c: Pxcb_connection_t; fid: Txcb_font_t; name_len: Tuint16_t; name: pchar): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_open_font_name(R: Pxcb_open_font_request_t): pchar; cdecl; external libxcb;
function xcb_open_font_name_length(R: Pxcb_open_font_request_t): longint; cdecl; external libxcb;
function xcb_open_font_name_end(R: Pxcb_open_font_request_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_close_font_checked(c: Pxcb_connection_t; font: Txcb_font_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_close_font(c: Pxcb_connection_t; font: Txcb_font_t): Txcb_void_cookie_t; cdecl; external libxcb;
procedure xcb_fontprop_next(i: Pxcb_fontprop_iterator_t); cdecl; external libxcb;
function xcb_fontprop_end(i: Txcb_fontprop_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
procedure xcb_charinfo_next(i: Pxcb_charinfo_iterator_t); cdecl; external libxcb;
function xcb_charinfo_end(i: Txcb_charinfo_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_query_font_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_query_font(c: Pxcb_connection_t; font: Txcb_fontable_t): Txcb_query_font_cookie_t; cdecl; external libxcb;
function xcb_query_font_unchecked(c: Pxcb_connection_t; font: Txcb_fontable_t): Txcb_query_font_cookie_t; cdecl; external libxcb;
function xcb_query_font_properties(R: Pxcb_query_font_reply_t): Pxcb_fontprop_t; cdecl; external libxcb;
function xcb_query_font_properties_length(R: Pxcb_query_font_reply_t): longint; cdecl; external libxcb;
function xcb_query_font_properties_iterator(R: Pxcb_query_font_reply_t): Txcb_fontprop_iterator_t; cdecl; external libxcb;
function xcb_query_font_char_infos(R: Pxcb_query_font_reply_t): Pxcb_charinfo_t; cdecl; external libxcb;
function xcb_query_font_char_infos_length(R: Pxcb_query_font_reply_t): longint; cdecl; external libxcb;
function xcb_query_font_char_infos_iterator(R: Pxcb_query_font_reply_t): Txcb_charinfo_iterator_t; cdecl; external libxcb;
function xcb_query_font_reply(c: Pxcb_connection_t; cookie: Txcb_query_font_cookie_t; e: PPxcb_generic_error_t): Pxcb_query_font_reply_t; cdecl; external libxcb;
function xcb_query_text_extents_sizeof(_buffer: pointer; string_len: Tuint32_t): longint; cdecl; external libxcb;
function xcb_query_text_extents(c: Pxcb_connection_t; font: Txcb_fontable_t; string_len: Tuint32_t; _string: Pxcb_char2b_t): Txcb_query_text_extents_cookie_t; cdecl; external libxcb;
function xcb_query_text_extents_unchecked(c: Pxcb_connection_t; font: Txcb_fontable_t; string_len: Tuint32_t; _string: Pxcb_char2b_t): Txcb_query_text_extents_cookie_t; cdecl; external libxcb;
function xcb_query_text_extents_reply(c: Pxcb_connection_t; cookie: Txcb_query_text_extents_cookie_t; e: PPxcb_generic_error_t): Pxcb_query_text_extents_reply_t; cdecl; external libxcb;
function xcb_str_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_str_name(R: Pxcb_str_t): pchar; cdecl; external libxcb;
function xcb_str_name_length(R: Pxcb_str_t): longint; cdecl; external libxcb;
function xcb_str_name_end(R: Pxcb_str_t): Txcb_generic_iterator_t; cdecl; external libxcb;
procedure xcb_str_next(i: Pxcb_str_iterator_t); cdecl; external libxcb;
function xcb_str_end(i: Txcb_str_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_list_fonts_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_list_fonts(c: Pxcb_connection_t; max_names: Tuint16_t; pattern_len: Tuint16_t; pattern: pchar): Txcb_list_fonts_cookie_t; cdecl; external libxcb;
function xcb_list_fonts_unchecked(c: Pxcb_connection_t; max_names: Tuint16_t; pattern_len: Tuint16_t; pattern: pchar): Txcb_list_fonts_cookie_t; cdecl; external libxcb;
function xcb_list_fonts_names_length(R: Pxcb_list_fonts_reply_t): longint; cdecl; external libxcb;
function xcb_list_fonts_names_iterator(R: Pxcb_list_fonts_reply_t): Txcb_str_iterator_t; cdecl; external libxcb;
function xcb_list_fonts_reply(c: Pxcb_connection_t; cookie: Txcb_list_fonts_cookie_t; e: PPxcb_generic_error_t): Pxcb_list_fonts_reply_t; cdecl; external libxcb;
function xcb_list_fonts_with_info_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_list_fonts_with_info(c: Pxcb_connection_t; max_names: Tuint16_t; pattern_len: Tuint16_t; pattern: pchar): Txcb_list_fonts_with_info_cookie_t; cdecl; external libxcb;
function xcb_list_fonts_with_info_unchecked(c: Pxcb_connection_t; max_names: Tuint16_t; pattern_len: Tuint16_t; pattern: pchar): Txcb_list_fonts_with_info_cookie_t; cdecl; external libxcb;
function xcb_list_fonts_with_info_properties(R: Pxcb_list_fonts_with_info_reply_t): Pxcb_fontprop_t; cdecl; external libxcb;
function xcb_list_fonts_with_info_properties_length(R: Pxcb_list_fonts_with_info_reply_t): longint; cdecl; external libxcb;
function xcb_list_fonts_with_info_properties_iterator(R: Pxcb_list_fonts_with_info_reply_t): Txcb_fontprop_iterator_t; cdecl; external libxcb;
function xcb_list_fonts_with_info_name(R: Pxcb_list_fonts_with_info_reply_t): pchar; cdecl; external libxcb;
function xcb_list_fonts_with_info_name_length(R: Pxcb_list_fonts_with_info_reply_t): longint; cdecl; external libxcb;
function xcb_list_fonts_with_info_name_end(R: Pxcb_list_fonts_with_info_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_list_fonts_with_info_reply(c: Pxcb_connection_t; cookie: Txcb_list_fonts_with_info_cookie_t; e: PPxcb_generic_error_t): Pxcb_list_fonts_with_info_reply_t; cdecl; external libxcb;
function xcb_set_font_path_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_set_font_path_checked(c: Pxcb_connection_t; font_qty: Tuint16_t; font: Pxcb_str_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_set_font_path(c: Pxcb_connection_t; font_qty: Tuint16_t; font: Pxcb_str_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_set_font_path_font_length(R: Pxcb_set_font_path_request_t): longint; cdecl; external libxcb;
function xcb_set_font_path_font_iterator(R: Pxcb_set_font_path_request_t): Txcb_str_iterator_t; cdecl; external libxcb;
function xcb_get_font_path_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_get_font_path(c: Pxcb_connection_t): Txcb_get_font_path_cookie_t; cdecl; external libxcb;
function xcb_get_font_path_unchecked(c: Pxcb_connection_t): Txcb_get_font_path_cookie_t; cdecl; external libxcb;
function xcb_get_font_path_path_length(R: Pxcb_get_font_path_reply_t): longint; cdecl; external libxcb;
function xcb_get_font_path_path_iterator(R: Pxcb_get_font_path_reply_t): Txcb_str_iterator_t; cdecl; external libxcb;
function xcb_get_font_path_reply(c: Pxcb_connection_t; cookie: Txcb_get_font_path_cookie_t; e: PPxcb_generic_error_t): Pxcb_get_font_path_reply_t; cdecl; external libxcb;
function xcb_create_pixmap_checked(c: Pxcb_connection_t; depth: Tuint8_t; pid: Txcb_pixmap_t; drawable: Txcb_drawable_t; width: Tuint16_t;
  height: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_create_pixmap(c: Pxcb_connection_t; depth: Tuint8_t; pid: Txcb_pixmap_t; drawable: Txcb_drawable_t; width: Tuint16_t;
  height: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_free_pixmap_checked(c: Pxcb_connection_t; pixmap: Txcb_pixmap_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_free_pixmap(c: Pxcb_connection_t; pixmap: Txcb_pixmap_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_create_gc_value_list_serialize(_buffer: Ppointer; value_mask: Tuint32_t; _aux: Pxcb_create_gc_value_list_t): longint; cdecl; external libxcb;
function xcb_create_gc_value_list_unpack(_buffer: pointer; value_mask: Tuint32_t; _aux: Pxcb_create_gc_value_list_t): longint; cdecl; external libxcb;
function xcb_create_gc_value_list_sizeof(_buffer: pointer; value_mask: Tuint32_t): longint; cdecl; external libxcb;
function xcb_create_gc_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_create_gc_checked(c: Pxcb_connection_t; cid: Txcb_gcontext_t; drawable: Txcb_drawable_t; value_mask: Tuint32_t; value_list: pointer): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_create_gc(c: Pxcb_connection_t; cid: Txcb_gcontext_t; drawable: Txcb_drawable_t; value_mask: Tuint32_t; value_list: pointer): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_create_gc_aux_checked(c: Pxcb_connection_t; cid: Txcb_gcontext_t; drawable: Txcb_drawable_t; value_mask: Tuint32_t; value_list: Pxcb_create_gc_value_list_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_create_gc_aux(c: Pxcb_connection_t; cid: Txcb_gcontext_t; drawable: Txcb_drawable_t; value_mask: Tuint32_t; value_list: Pxcb_create_gc_value_list_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_create_gc_value_list(R: Pxcb_create_gc_request_t): pointer; cdecl; external libxcb;
function xcb_change_gc_value_list_serialize(_buffer: Ppointer; value_mask: Tuint32_t; _aux: Pxcb_change_gc_value_list_t): longint; cdecl; external libxcb;
function xcb_change_gc_value_list_unpack(_buffer: pointer; value_mask: Tuint32_t; _aux: Pxcb_change_gc_value_list_t): longint; cdecl; external libxcb;
function xcb_change_gc_value_list_sizeof(_buffer: pointer; value_mask: Tuint32_t): longint; cdecl; external libxcb;
function xcb_change_gc_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_change_gc_checked(c: Pxcb_connection_t; gc: Txcb_gcontext_t; value_mask: Tuint32_t; value_list: pointer): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_change_gc(c: Pxcb_connection_t; gc: Txcb_gcontext_t; value_mask: Tuint32_t; value_list: pointer): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_change_gc_aux_checked(c: Pxcb_connection_t; gc: Txcb_gcontext_t; value_mask: Tuint32_t; value_list: Pxcb_change_gc_value_list_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_change_gc_aux(c: Pxcb_connection_t; gc: Txcb_gcontext_t; value_mask: Tuint32_t; value_list: Pxcb_change_gc_value_list_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_change_gc_value_list(R: Pxcb_change_gc_request_t): pointer; cdecl; external libxcb;
function xcb_copy_gc_checked(c: Pxcb_connection_t; src_gc: Txcb_gcontext_t; dst_gc: Txcb_gcontext_t; value_mask: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_copy_gc(c: Pxcb_connection_t; src_gc: Txcb_gcontext_t; dst_gc: Txcb_gcontext_t; value_mask: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_set_dashes_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_set_dashes_checked(c: Pxcb_connection_t; gc: Txcb_gcontext_t; dash_offset: Tuint16_t; dashes_len: Tuint16_t; dashes: Puint8_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_set_dashes(c: Pxcb_connection_t; gc: Txcb_gcontext_t; dash_offset: Tuint16_t; dashes_len: Tuint16_t; dashes: Puint8_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_set_dashes_dashes(R: Pxcb_set_dashes_request_t): Puint8_t; cdecl; external libxcb;
function xcb_set_dashes_dashes_length(R: Pxcb_set_dashes_request_t): longint; cdecl; external libxcb;
function xcb_set_dashes_dashes_end(R: Pxcb_set_dashes_request_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_set_clip_rectangles_sizeof(_buffer: pointer; rectangles_len: Tuint32_t): longint; cdecl; external libxcb;
function xcb_set_clip_rectangles_checked(c: Pxcb_connection_t; ordering: Tuint8_t; gc: Txcb_gcontext_t; clip_x_origin: Tint16_t; clip_y_origin: Tint16_t;
  rectangles_len: Tuint32_t; rectangles: Pxcb_rectangle_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_set_clip_rectangles(c: Pxcb_connection_t; ordering: Tuint8_t; gc: Txcb_gcontext_t; clip_x_origin: Tint16_t; clip_y_origin: Tint16_t;
  rectangles_len: Tuint32_t; rectangles: Pxcb_rectangle_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_set_clip_rectangles_rectangles(R: Pxcb_set_clip_rectangles_request_t): Pxcb_rectangle_t; cdecl; external libxcb;
function xcb_set_clip_rectangles_rectangles_length(R: Pxcb_set_clip_rectangles_request_t): longint; cdecl; external libxcb;
function xcb_set_clip_rectangles_rectangles_iterator(R: Pxcb_set_clip_rectangles_request_t): Txcb_rectangle_iterator_t; cdecl; external libxcb;
function xcb_free_gc_checked(c: Pxcb_connection_t; gc: Txcb_gcontext_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_free_gc(c: Pxcb_connection_t; gc: Txcb_gcontext_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_clear_area_checked(c: Pxcb_connection_t; exposures: Tuint8_t; window: Txcb_window_t; x: Tint16_t; y: Tint16_t;
  width: Tuint16_t; height: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_clear_area(c: Pxcb_connection_t; exposures: Tuint8_t; window: Txcb_window_t; x: Tint16_t; y: Tint16_t;
  width: Tuint16_t; height: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_copy_area_checked(c: Pxcb_connection_t; src_drawable: Txcb_drawable_t; dst_drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; src_x: Tint16_t;
  src_y: Tint16_t; dst_x: Tint16_t; dst_y: Tint16_t; width: Tuint16_t; height: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_copy_area(c: Pxcb_connection_t; src_drawable: Txcb_drawable_t; dst_drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; src_x: Tint16_t;
  src_y: Tint16_t; dst_x: Tint16_t; dst_y: Tint16_t; width: Tuint16_t; height: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_copy_plane_checked(c: Pxcb_connection_t; src_drawable: Txcb_drawable_t; dst_drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; src_x: Tint16_t;
  src_y: Tint16_t; dst_x: Tint16_t; dst_y: Tint16_t; width: Tuint16_t; height: Tuint16_t;
  bit_plane: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_copy_plane(c: Pxcb_connection_t; src_drawable: Txcb_drawable_t; dst_drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; src_x: Tint16_t;
  src_y: Tint16_t; dst_x: Tint16_t; dst_y: Tint16_t; width: Tuint16_t; height: Tuint16_t;
  bit_plane: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_poly_point_sizeof(_buffer: pointer; points_len: Tuint32_t): longint; cdecl; external libxcb;
function xcb_poly_point_checked(c: Pxcb_connection_t; coordinate_mode: Tuint8_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; points_len: Tuint32_t;
  points: Pxcb_point_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_poly_point(c: Pxcb_connection_t; coordinate_mode: Tuint8_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; points_len: Tuint32_t;
  points: Pxcb_point_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_poly_point_points(R: Pxcb_poly_point_request_t): Pxcb_point_t; cdecl; external libxcb;
function xcb_poly_point_points_length(R: Pxcb_poly_point_request_t): longint; cdecl; external libxcb;
function xcb_poly_point_points_iterator(R: Pxcb_poly_point_request_t): Txcb_point_iterator_t; cdecl; external libxcb;
function xcb_poly_line_sizeof(_buffer: pointer; points_len: Tuint32_t): longint; cdecl; external libxcb;
function xcb_poly_line_checked(c: Pxcb_connection_t; coordinate_mode: Tuint8_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; points_len: Tuint32_t;
  points: Pxcb_point_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_poly_line(c: Pxcb_connection_t; coordinate_mode: Tuint8_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; points_len: Tuint32_t;
  points: Pxcb_point_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_poly_line_points(R: Pxcb_poly_line_request_t): Pxcb_point_t; cdecl; external libxcb;
function xcb_poly_line_points_length(R: Pxcb_poly_line_request_t): longint; cdecl; external libxcb;
function xcb_poly_line_points_iterator(R: Pxcb_poly_line_request_t): Txcb_point_iterator_t; cdecl; external libxcb;
procedure xcb_segment_next(i: Pxcb_segment_iterator_t); cdecl; external libxcb;
function xcb_segment_end(i: Txcb_segment_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_poly_segment_sizeof(_buffer: pointer; segments_len: Tuint32_t): longint; cdecl; external libxcb;
function xcb_poly_segment_checked(c: Pxcb_connection_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; segments_len: Tuint32_t; segments: Pxcb_segment_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_poly_segment(c: Pxcb_connection_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; segments_len: Tuint32_t; segments: Pxcb_segment_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_poly_segment_segments(R: Pxcb_poly_segment_request_t): Pxcb_segment_t; cdecl; external libxcb;
function xcb_poly_segment_segments_length(R: Pxcb_poly_segment_request_t): longint; cdecl; external libxcb;
function xcb_poly_segment_segments_iterator(R: Pxcb_poly_segment_request_t): Txcb_segment_iterator_t; cdecl; external libxcb;
function xcb_poly_rectangle_sizeof(_buffer: pointer; rectangles_len: Tuint32_t): longint; cdecl; external libxcb;
function xcb_poly_rectangle_checked(c: Pxcb_connection_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; rectangles_len: Tuint32_t; rectangles: Pxcb_rectangle_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_poly_rectangle(c: Pxcb_connection_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; rectangles_len: Tuint32_t; rectangles: Pxcb_rectangle_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_poly_rectangle_rectangles(R: Pxcb_poly_rectangle_request_t): Pxcb_rectangle_t; cdecl; external libxcb;
function xcb_poly_rectangle_rectangles_length(R: Pxcb_poly_rectangle_request_t): longint; cdecl; external libxcb;
function xcb_poly_rectangle_rectangles_iterator(R: Pxcb_poly_rectangle_request_t): Txcb_rectangle_iterator_t; cdecl; external libxcb;
function xcb_poly_arc_sizeof(_buffer: pointer; arcs_len: Tuint32_t): longint; cdecl; external libxcb;
function xcb_poly_arc_checked(c: Pxcb_connection_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; arcs_len: Tuint32_t; arcs: Pxcb_arc_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_poly_arc(c: Pxcb_connection_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; arcs_len: Tuint32_t; arcs: Pxcb_arc_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_poly_arc_arcs(R: Pxcb_poly_arc_request_t): Pxcb_arc_t; cdecl; external libxcb;
function xcb_poly_arc_arcs_length(R: Pxcb_poly_arc_request_t): longint; cdecl; external libxcb;
function xcb_poly_arc_arcs_iterator(R: Pxcb_poly_arc_request_t): Txcb_arc_iterator_t; cdecl; external libxcb;
function xcb_fill_poly_sizeof(_buffer: pointer; points_len: Tuint32_t): longint; cdecl; external libxcb;
function xcb_fill_poly_checked(c: Pxcb_connection_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; shape: Tuint8_t; coordinate_mode: Tuint8_t;
  points_len: Tuint32_t; points: Pxcb_point_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_fill_poly(c: Pxcb_connection_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; shape: Tuint8_t; coordinate_mode: Tuint8_t;
  points_len: Tuint32_t; points: Pxcb_point_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_fill_poly_points(R: Pxcb_fill_poly_request_t): Pxcb_point_t; cdecl; external libxcb;
function xcb_fill_poly_points_length(R: Pxcb_fill_poly_request_t): longint; cdecl; external libxcb;
function xcb_fill_poly_points_iterator(R: Pxcb_fill_poly_request_t): Txcb_point_iterator_t; cdecl; external libxcb;
function xcb_poly_fill_rectangle_sizeof(_buffer: pointer; rectangles_len: Tuint32_t): longint; cdecl; external libxcb;
function xcb_poly_fill_rectangle_checked(c: Pxcb_connection_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; rectangles_len: Tuint32_t; rectangles: Pxcb_rectangle_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_poly_fill_rectangle(c: Pxcb_connection_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; rectangles_len: Tuint32_t; rectangles: Pxcb_rectangle_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_poly_fill_rectangle_rectangles(R: Pxcb_poly_fill_rectangle_request_t): Pxcb_rectangle_t; cdecl; external libxcb;
function xcb_poly_fill_rectangle_rectangles_length(R: Pxcb_poly_fill_rectangle_request_t): longint; cdecl; external libxcb;
function xcb_poly_fill_rectangle_rectangles_iterator(R: Pxcb_poly_fill_rectangle_request_t): Txcb_rectangle_iterator_t; cdecl; external libxcb;
function xcb_poly_fill_arc_sizeof(_buffer: pointer; arcs_len: Tuint32_t): longint; cdecl; external libxcb;
function xcb_poly_fill_arc_checked(c: Pxcb_connection_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; arcs_len: Tuint32_t; arcs: Pxcb_arc_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_poly_fill_arc(c: Pxcb_connection_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; arcs_len: Tuint32_t; arcs: Pxcb_arc_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_poly_fill_arc_arcs(R: Pxcb_poly_fill_arc_request_t): Pxcb_arc_t; cdecl; external libxcb;
function xcb_poly_fill_arc_arcs_length(R: Pxcb_poly_fill_arc_request_t): longint; cdecl; external libxcb;
function xcb_poly_fill_arc_arcs_iterator(R: Pxcb_poly_fill_arc_request_t): Txcb_arc_iterator_t; cdecl; external libxcb;
function xcb_put_image_sizeof(_buffer: pointer; data_len: Tuint32_t): longint; cdecl; external libxcb;
function xcb_put_image_checked(c: Pxcb_connection_t; format: Tuint8_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; width: Tuint16_t;
  height: Tuint16_t; dst_x: Tint16_t; dst_y: Tint16_t; left_pad: Tuint8_t; depth: Tuint8_t;
  data_len: Tuint32_t; data: Puint8_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_put_image(c: Pxcb_connection_t; format: Tuint8_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; width: Tuint16_t;
  height: Tuint16_t; dst_x: Tint16_t; dst_y: Tint16_t; left_pad: Tuint8_t; depth: Tuint8_t;
  data_len: Tuint32_t; data: Puint8_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_put_image_data(R: Pxcb_put_image_request_t): Puint8_t; cdecl; external libxcb;
function xcb_put_image_data_length(R: Pxcb_put_image_request_t): longint; cdecl; external libxcb;
function xcb_put_image_data_end(R: Pxcb_put_image_request_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_get_image_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_get_image(c: Pxcb_connection_t; format: Tuint8_t; drawable: Txcb_drawable_t; x: Tint16_t; y: Tint16_t;
  width: Tuint16_t; height: Tuint16_t; plane_mask: Tuint32_t): Txcb_get_image_cookie_t; cdecl; external libxcb;
function xcb_get_image_unchecked(c: Pxcb_connection_t; format: Tuint8_t; drawable: Txcb_drawable_t; x: Tint16_t; y: Tint16_t;
  width: Tuint16_t; height: Tuint16_t; plane_mask: Tuint32_t): Txcb_get_image_cookie_t; cdecl; external libxcb;
function xcb_get_image_data(R: Pxcb_get_image_reply_t): Puint8_t; cdecl; external libxcb;
function xcb_get_image_data_length(R: Pxcb_get_image_reply_t): longint; cdecl; external libxcb;
function xcb_get_image_data_end(R: Pxcb_get_image_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_get_image_reply(c: Pxcb_connection_t; cookie: Txcb_get_image_cookie_t; e: PPxcb_generic_error_t): Pxcb_get_image_reply_t; cdecl; external libxcb;
function xcb_poly_text_8_sizeof(_buffer: pointer; items_len: Tuint32_t): longint; cdecl; external libxcb;
function xcb_poly_text_8_checked(c: Pxcb_connection_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; x: Tint16_t; y: Tint16_t;
  items_len: Tuint32_t; items: Puint8_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_poly_text_8(c: Pxcb_connection_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; x: Tint16_t; y: Tint16_t;
  items_len: Tuint32_t; items: Puint8_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_poly_text_8_items(R: Pxcb_poly_text_8_request_t): Puint8_t; cdecl; external libxcb;
function xcb_poly_text_8_items_length(R: Pxcb_poly_text_8_request_t): longint; cdecl; external libxcb;
function xcb_poly_text_8_items_end(R: Pxcb_poly_text_8_request_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_poly_text_16_sizeof(_buffer: pointer; items_len: Tuint32_t): longint; cdecl; external libxcb;
function xcb_poly_text_16_checked(c: Pxcb_connection_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; x: Tint16_t; y: Tint16_t;
  items_len: Tuint32_t; items: Puint8_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_poly_text_16(c: Pxcb_connection_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; x: Tint16_t; y: Tint16_t;
  items_len: Tuint32_t; items: Puint8_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_poly_text_16_items(R: Pxcb_poly_text_16_request_t): Puint8_t; cdecl; external libxcb;
function xcb_poly_text_16_items_length(R: Pxcb_poly_text_16_request_t): longint; cdecl; external libxcb;
function xcb_poly_text_16_items_end(R: Pxcb_poly_text_16_request_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_image_text_8_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_image_text_8_checked(c: Pxcb_connection_t; string_len: Tuint8_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; x: Tint16_t;
  y: Tint16_t; _string: pchar): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_image_text_8(c: Pxcb_connection_t; string_len: Tuint8_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; x: Tint16_t;
  y: Tint16_t; _string: pchar): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_image_text_8_string(R: Pxcb_image_text_8_request_t): pchar; cdecl; external libxcb;
function xcb_image_text_8_string_length(R: Pxcb_image_text_8_request_t): longint; cdecl; external libxcb;
function xcb_image_text_8_string_end(R: Pxcb_image_text_8_request_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_image_text_16_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_image_text_16_checked(c: Pxcb_connection_t; string_len: Tuint8_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; x: Tint16_t;
  y: Tint16_t; _string: Pxcb_char2b_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_image_text_16(c: Pxcb_connection_t; string_len: Tuint8_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; x: Tint16_t;
  y: Tint16_t; _string: Pxcb_char2b_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_image_text_16_string(R: Pxcb_image_text_16_request_t): Pxcb_char2b_t; cdecl; external libxcb;
function xcb_image_text_16_string_length(R: Pxcb_image_text_16_request_t): longint; cdecl; external libxcb;
function xcb_image_text_16_string_iterator(R: Pxcb_image_text_16_request_t): Txcb_char2b_iterator_t; cdecl; external libxcb;
function xcb_create_colormap_checked(c: Pxcb_connection_t; alloc: Tuint8_t; mid: Txcb_colormap_t; window: Txcb_window_t; visual: Txcb_visualid_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_create_colormap(c: Pxcb_connection_t; alloc: Tuint8_t; mid: Txcb_colormap_t; window: Txcb_window_t; visual: Txcb_visualid_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_free_colormap_checked(c: Pxcb_connection_t; cmap: Txcb_colormap_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_free_colormap(c: Pxcb_connection_t; cmap: Txcb_colormap_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_copy_colormap_and_free_checked(c: Pxcb_connection_t; mid: Txcb_colormap_t; src_cmap: Txcb_colormap_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_copy_colormap_and_free(c: Pxcb_connection_t; mid: Txcb_colormap_t; src_cmap: Txcb_colormap_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_install_colormap_checked(c: Pxcb_connection_t; cmap: Txcb_colormap_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_install_colormap(c: Pxcb_connection_t; cmap: Txcb_colormap_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_uninstall_colormap_checked(c: Pxcb_connection_t; cmap: Txcb_colormap_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_uninstall_colormap(c: Pxcb_connection_t; cmap: Txcb_colormap_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_list_installed_colormaps_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_list_installed_colormaps(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_list_installed_colormaps_cookie_t; cdecl; external libxcb;
function xcb_list_installed_colormaps_unchecked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_list_installed_colormaps_cookie_t; cdecl; external libxcb;
function xcb_list_installed_colormaps_cmaps(R: Pxcb_list_installed_colormaps_reply_t): Pxcb_colormap_t; cdecl; external libxcb;
function xcb_list_installed_colormaps_cmaps_length(R: Pxcb_list_installed_colormaps_reply_t): longint; cdecl; external libxcb;
function xcb_list_installed_colormaps_cmaps_end(R: Pxcb_list_installed_colormaps_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_list_installed_colormaps_reply(c: Pxcb_connection_t; cookie: Txcb_list_installed_colormaps_cookie_t; e: PPxcb_generic_error_t): Pxcb_list_installed_colormaps_reply_t; cdecl; external libxcb;
function xcb_alloc_color(c: Pxcb_connection_t; cmap: Txcb_colormap_t; red: Tuint16_t; green: Tuint16_t; blue: Tuint16_t): Txcb_alloc_color_cookie_t; cdecl; external libxcb;
function xcb_alloc_color_unchecked(c: Pxcb_connection_t; cmap: Txcb_colormap_t; red: Tuint16_t; green: Tuint16_t; blue: Tuint16_t): Txcb_alloc_color_cookie_t; cdecl; external libxcb;
function xcb_alloc_color_reply(c: Pxcb_connection_t; cookie: Txcb_alloc_color_cookie_t; e: PPxcb_generic_error_t): Pxcb_alloc_color_reply_t; cdecl; external libxcb;
function xcb_alloc_named_color_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_alloc_named_color(c: Pxcb_connection_t; cmap: Txcb_colormap_t; name_len: Tuint16_t; name: pchar): Txcb_alloc_named_color_cookie_t; cdecl; external libxcb;
function xcb_alloc_named_color_unchecked(c: Pxcb_connection_t; cmap: Txcb_colormap_t; name_len: Tuint16_t; name: pchar): Txcb_alloc_named_color_cookie_t; cdecl; external libxcb;
function xcb_alloc_named_color_reply(c: Pxcb_connection_t; cookie: Txcb_alloc_named_color_cookie_t; e: PPxcb_generic_error_t): Pxcb_alloc_named_color_reply_t; cdecl; external libxcb;
function xcb_alloc_color_cells_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_alloc_color_cells(c: Pxcb_connection_t; contiguous: Tuint8_t; cmap: Txcb_colormap_t; colors: Tuint16_t; planes: Tuint16_t): Txcb_alloc_color_cells_cookie_t; cdecl; external libxcb;
function xcb_alloc_color_cells_unchecked(c: Pxcb_connection_t; contiguous: Tuint8_t; cmap: Txcb_colormap_t; colors: Tuint16_t; planes: Tuint16_t): Txcb_alloc_color_cells_cookie_t; cdecl; external libxcb;
function xcb_alloc_color_cells_pixels(R: Pxcb_alloc_color_cells_reply_t): Puint32_t; cdecl; external libxcb;
function xcb_alloc_color_cells_pixels_length(R: Pxcb_alloc_color_cells_reply_t): longint; cdecl; external libxcb;
function xcb_alloc_color_cells_pixels_end(R: Pxcb_alloc_color_cells_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_alloc_color_cells_masks(R: Pxcb_alloc_color_cells_reply_t): Puint32_t; cdecl; external libxcb;
function xcb_alloc_color_cells_masks_length(R: Pxcb_alloc_color_cells_reply_t): longint; cdecl; external libxcb;
function xcb_alloc_color_cells_masks_end(R: Pxcb_alloc_color_cells_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_alloc_color_cells_reply(c: Pxcb_connection_t; cookie: Txcb_alloc_color_cells_cookie_t; e: PPxcb_generic_error_t): Pxcb_alloc_color_cells_reply_t; cdecl; external libxcb;
function xcb_alloc_color_planes_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_alloc_color_planes(c: Pxcb_connection_t; contiguous: Tuint8_t; cmap: Txcb_colormap_t; colors: Tuint16_t; reds: Tuint16_t;
  greens: Tuint16_t; blues: Tuint16_t): Txcb_alloc_color_planes_cookie_t; cdecl; external libxcb;
function xcb_alloc_color_planes_unchecked(c: Pxcb_connection_t; contiguous: Tuint8_t; cmap: Txcb_colormap_t; colors: Tuint16_t; reds: Tuint16_t;
  greens: Tuint16_t; blues: Tuint16_t): Txcb_alloc_color_planes_cookie_t; cdecl; external libxcb;
function xcb_alloc_color_planes_pixels(R: Pxcb_alloc_color_planes_reply_t): Puint32_t; cdecl; external libxcb;
function xcb_alloc_color_planes_pixels_length(R: Pxcb_alloc_color_planes_reply_t): longint; cdecl; external libxcb;
function xcb_alloc_color_planes_pixels_end(R: Pxcb_alloc_color_planes_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_alloc_color_planes_reply(c: Pxcb_connection_t; cookie: Txcb_alloc_color_planes_cookie_t; e: PPxcb_generic_error_t): Pxcb_alloc_color_planes_reply_t; cdecl; external libxcb;
function xcb_free_colors_sizeof(_buffer: pointer; pixels_len: Tuint32_t): longint; cdecl; external libxcb;
function xcb_free_colors_checked(c: Pxcb_connection_t; cmap: Txcb_colormap_t; plane_mask: Tuint32_t; pixels_len: Tuint32_t; pixels: Puint32_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_free_colors(c: Pxcb_connection_t; cmap: Txcb_colormap_t; plane_mask: Tuint32_t; pixels_len: Tuint32_t; pixels: Puint32_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_free_colors_pixels(R: Pxcb_free_colors_request_t): Puint32_t; cdecl; external libxcb;
function xcb_free_colors_pixels_length(R: Pxcb_free_colors_request_t): longint; cdecl; external libxcb;
function xcb_free_colors_pixels_end(R: Pxcb_free_colors_request_t): Txcb_generic_iterator_t; cdecl; external libxcb;
procedure xcb_coloritem_next(i: Pxcb_coloritem_iterator_t); cdecl; external libxcb;
function xcb_coloritem_end(i: Txcb_coloritem_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_store_colors_sizeof(_buffer: pointer; items_len: Tuint32_t): longint; cdecl; external libxcb;
function xcb_store_colors_checked(c: Pxcb_connection_t; cmap: Txcb_colormap_t; items_len: Tuint32_t; items: Pxcb_coloritem_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_store_colors(c: Pxcb_connection_t; cmap: Txcb_colormap_t; items_len: Tuint32_t; items: Pxcb_coloritem_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_store_colors_items(R: Pxcb_store_colors_request_t): Pxcb_coloritem_t; cdecl; external libxcb;
function xcb_store_colors_items_length(R: Pxcb_store_colors_request_t): longint; cdecl; external libxcb;
function xcb_store_colors_items_iterator(R: Pxcb_store_colors_request_t): Txcb_coloritem_iterator_t; cdecl; external libxcb;
function xcb_store_named_color_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_store_named_color_checked(c: Pxcb_connection_t; flags: Tuint8_t; cmap: Txcb_colormap_t; pixel: Tuint32_t; name_len: Tuint16_t;
  name: pchar): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_store_named_color(c: Pxcb_connection_t; flags: Tuint8_t; cmap: Txcb_colormap_t; pixel: Tuint32_t; name_len: Tuint16_t;
  name: pchar): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_store_named_color_name(R: Pxcb_store_named_color_request_t): pchar; cdecl; external libxcb;
function xcb_store_named_color_name_length(R: Pxcb_store_named_color_request_t): longint; cdecl; external libxcb;
function xcb_store_named_color_name_end(R: Pxcb_store_named_color_request_t): Txcb_generic_iterator_t; cdecl; external libxcb;
procedure xcb_rgb_next(i: Pxcb_rgb_iterator_t); cdecl; external libxcb;
function xcb_rgb_end(i: Txcb_rgb_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_query_colors_sizeof(_buffer: pointer; pixels_len: Tuint32_t): longint; cdecl; external libxcb;
function xcb_query_colors(c: Pxcb_connection_t; cmap: Txcb_colormap_t; pixels_len: Tuint32_t; pixels: Puint32_t): Txcb_query_colors_cookie_t; cdecl; external libxcb;
function xcb_query_colors_unchecked(c: Pxcb_connection_t; cmap: Txcb_colormap_t; pixels_len: Tuint32_t; pixels: Puint32_t): Txcb_query_colors_cookie_t; cdecl; external libxcb;
function xcb_query_colors_colors(R: Pxcb_query_colors_reply_t): Pxcb_rgb_t; cdecl; external libxcb;
function xcb_query_colors_colors_length(R: Pxcb_query_colors_reply_t): longint; cdecl; external libxcb;
function xcb_query_colors_colors_iterator(R: Pxcb_query_colors_reply_t): Txcb_rgb_iterator_t; cdecl; external libxcb;
function xcb_query_colors_reply(c: Pxcb_connection_t; cookie: Txcb_query_colors_cookie_t; e: PPxcb_generic_error_t): Pxcb_query_colors_reply_t; cdecl; external libxcb;
function xcb_lookup_color_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_lookup_color(c: Pxcb_connection_t; cmap: Txcb_colormap_t; name_len: Tuint16_t; name: pchar): Txcb_lookup_color_cookie_t; cdecl; external libxcb;
function xcb_lookup_color_unchecked(c: Pxcb_connection_t; cmap: Txcb_colormap_t; name_len: Tuint16_t; name: pchar): Txcb_lookup_color_cookie_t; cdecl; external libxcb;
function xcb_lookup_color_reply(c: Pxcb_connection_t; cookie: Txcb_lookup_color_cookie_t; e: PPxcb_generic_error_t): Pxcb_lookup_color_reply_t; cdecl; external libxcb;
function xcb_create_cursor_checked(c: Pxcb_connection_t; cid: Txcb_cursor_t; source: Txcb_pixmap_t; mask: Txcb_pixmap_t; fore_red: Tuint16_t;
  fore_green: Tuint16_t; fore_blue: Tuint16_t; back_red: Tuint16_t; back_green: Tuint16_t; back_blue: Tuint16_t;
  x: Tuint16_t; y: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_create_cursor(c: Pxcb_connection_t; cid: Txcb_cursor_t; source: Txcb_pixmap_t; mask: Txcb_pixmap_t; fore_red: Tuint16_t;
  fore_green: Tuint16_t; fore_blue: Tuint16_t; back_red: Tuint16_t; back_green: Tuint16_t; back_blue: Tuint16_t;
  x: Tuint16_t; y: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_create_glyph_cursor_checked(c: Pxcb_connection_t; cid: Txcb_cursor_t; source_font: Txcb_font_t; mask_font: Txcb_font_t; source_char: Tuint16_t;
  mask_char: Tuint16_t; fore_red: Tuint16_t; fore_green: Tuint16_t; fore_blue: Tuint16_t; back_red: Tuint16_t;
  back_green: Tuint16_t; back_blue: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_create_glyph_cursor(c: Pxcb_connection_t; cid: Txcb_cursor_t; source_font: Txcb_font_t; mask_font: Txcb_font_t; source_char: Tuint16_t;
  mask_char: Tuint16_t; fore_red: Tuint16_t; fore_green: Tuint16_t; fore_blue: Tuint16_t; back_red: Tuint16_t;
  back_green: Tuint16_t; back_blue: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_free_cursor_checked(c: Pxcb_connection_t; cursor: Txcb_cursor_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_free_cursor(c: Pxcb_connection_t; cursor: Txcb_cursor_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_recolor_cursor_checked(c: Pxcb_connection_t; cursor: Txcb_cursor_t; fore_red: Tuint16_t; fore_green: Tuint16_t; fore_blue: Tuint16_t;
  back_red: Tuint16_t; back_green: Tuint16_t; back_blue: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_recolor_cursor(c: Pxcb_connection_t; cursor: Txcb_cursor_t; fore_red: Tuint16_t; fore_green: Tuint16_t; fore_blue: Tuint16_t;
  back_red: Tuint16_t; back_green: Tuint16_t; back_blue: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_query_best_size(c: Pxcb_connection_t; _class: Tuint8_t; drawable: Txcb_drawable_t; width: Tuint16_t; height: Tuint16_t): Txcb_query_best_size_cookie_t; cdecl; external libxcb;
function xcb_query_best_size_unchecked(c: Pxcb_connection_t; _class: Tuint8_t; drawable: Txcb_drawable_t; width: Tuint16_t; height: Tuint16_t): Txcb_query_best_size_cookie_t; cdecl; external libxcb;
function xcb_query_best_size_reply(c: Pxcb_connection_t; cookie: Txcb_query_best_size_cookie_t; e: PPxcb_generic_error_t): Pxcb_query_best_size_reply_t; cdecl; external libxcb;
function xcb_query_extension_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_query_extension(c: Pxcb_connection_t; name_len: Tuint16_t; name: pchar): Txcb_query_extension_cookie_t; cdecl; external libxcb;
function xcb_query_extension_unchecked(c: Pxcb_connection_t; name_len: Tuint16_t; name: pchar): Txcb_query_extension_cookie_t; cdecl; external libxcb;
function xcb_query_extension_reply(c: Pxcb_connection_t; cookie: Txcb_query_extension_cookie_t; e: PPxcb_generic_error_t): Pxcb_query_extension_reply_t; cdecl; external libxcb;
function xcb_list_extensions_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_list_extensions(c: Pxcb_connection_t): Txcb_list_extensions_cookie_t; cdecl; external libxcb;
function xcb_list_extensions_unchecked(c: Pxcb_connection_t): Txcb_list_extensions_cookie_t; cdecl; external libxcb;
function xcb_list_extensions_names_length(R: Pxcb_list_extensions_reply_t): longint; cdecl; external libxcb;
function xcb_list_extensions_names_iterator(R: Pxcb_list_extensions_reply_t): Txcb_str_iterator_t; cdecl; external libxcb;
function xcb_list_extensions_reply(c: Pxcb_connection_t; cookie: Txcb_list_extensions_cookie_t; e: PPxcb_generic_error_t): Pxcb_list_extensions_reply_t; cdecl; external libxcb;
function xcb_change_keyboard_mapping_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_change_keyboard_mapping_checked(c: Pxcb_connection_t; keycode_count: Tuint8_t; first_keycode: Txcb_keycode_t; keysyms_per_keycode: Tuint8_t; keysyms: Pxcb_keysym_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_change_keyboard_mapping(c: Pxcb_connection_t; keycode_count: Tuint8_t; first_keycode: Txcb_keycode_t; keysyms_per_keycode: Tuint8_t; keysyms: Pxcb_keysym_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_change_keyboard_mapping_keysyms(R: Pxcb_change_keyboard_mapping_request_t): Pxcb_keysym_t; cdecl; external libxcb;
function xcb_change_keyboard_mapping_keysyms_length(R: Pxcb_change_keyboard_mapping_request_t): longint; cdecl; external libxcb;
function xcb_change_keyboard_mapping_keysyms_end(R: Pxcb_change_keyboard_mapping_request_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_get_keyboard_mapping_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_get_keyboard_mapping(c: Pxcb_connection_t; first_keycode: Txcb_keycode_t; count: Tuint8_t): Txcb_get_keyboard_mapping_cookie_t; cdecl; external libxcb;
function xcb_get_keyboard_mapping_unchecked(c: Pxcb_connection_t; first_keycode: Txcb_keycode_t; count: Tuint8_t): Txcb_get_keyboard_mapping_cookie_t; cdecl; external libxcb;
function xcb_get_keyboard_mapping_keysyms(R: Pxcb_get_keyboard_mapping_reply_t): Pxcb_keysym_t; cdecl; external libxcb;
function xcb_get_keyboard_mapping_keysyms_length(R: Pxcb_get_keyboard_mapping_reply_t): longint; cdecl; external libxcb;
function xcb_get_keyboard_mapping_keysyms_end(R: Pxcb_get_keyboard_mapping_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_get_keyboard_mapping_reply(c: Pxcb_connection_t; cookie: Txcb_get_keyboard_mapping_cookie_t; e: PPxcb_generic_error_t): Pxcb_get_keyboard_mapping_reply_t; cdecl; external libxcb;
function xcb_change_keyboard_control_value_list_serialize(_buffer: Ppointer; value_mask: Tuint32_t; _aux: Pxcb_change_keyboard_control_value_list_t): longint; cdecl; external libxcb;
function xcb_change_keyboard_control_value_list_unpack(_buffer: pointer; value_mask: Tuint32_t; _aux: Pxcb_change_keyboard_control_value_list_t): longint; cdecl; external libxcb;
function xcb_change_keyboard_control_value_list_sizeof(_buffer: pointer; value_mask: Tuint32_t): longint; cdecl; external libxcb;
function xcb_change_keyboard_control_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_change_keyboard_control_checked(c: Pxcb_connection_t; value_mask: Tuint32_t; value_list: pointer): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_change_keyboard_control(c: Pxcb_connection_t; value_mask: Tuint32_t; value_list: pointer): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_change_keyboard_control_aux_checked(c: Pxcb_connection_t; value_mask: Tuint32_t; value_list: Pxcb_change_keyboard_control_value_list_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_change_keyboard_control_aux(c: Pxcb_connection_t; value_mask: Tuint32_t; value_list: Pxcb_change_keyboard_control_value_list_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_change_keyboard_control_value_list(R: Pxcb_change_keyboard_control_request_t): pointer; cdecl; external libxcb;
function xcb_get_keyboard_control(c: Pxcb_connection_t): Txcb_get_keyboard_control_cookie_t; cdecl; external libxcb;
function xcb_get_keyboard_control_unchecked(c: Pxcb_connection_t): Txcb_get_keyboard_control_cookie_t; cdecl; external libxcb;
function xcb_get_keyboard_control_reply(c: Pxcb_connection_t; cookie: Txcb_get_keyboard_control_cookie_t; e: PPxcb_generic_error_t): Pxcb_get_keyboard_control_reply_t; cdecl; external libxcb;
function xcb_bell_checked(c: Pxcb_connection_t; percent: Tint8_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_bell(c: Pxcb_connection_t; percent: Tint8_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_change_pointer_control_checked(c: Pxcb_connection_t; acceleration_numerator: Tint16_t; acceleration_denominator: Tint16_t; threshold: Tint16_t; do_acceleration: Tuint8_t;
  do_threshold: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_change_pointer_control(c: Pxcb_connection_t; acceleration_numerator: Tint16_t; acceleration_denominator: Tint16_t; threshold: Tint16_t; do_acceleration: Tuint8_t;
  do_threshold: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_get_pointer_control(c: Pxcb_connection_t): Txcb_get_pointer_control_cookie_t; cdecl; external libxcb;
function xcb_get_pointer_control_unchecked(c: Pxcb_connection_t): Txcb_get_pointer_control_cookie_t; cdecl; external libxcb;
function xcb_get_pointer_control_reply(c: Pxcb_connection_t; cookie: Txcb_get_pointer_control_cookie_t; e: PPxcb_generic_error_t): Pxcb_get_pointer_control_reply_t; cdecl; external libxcb;
function xcb_set_screen_saver_checked(c: Pxcb_connection_t; timeout: Tint16_t; interval: Tint16_t; prefer_blanking: Tuint8_t; allow_exposures: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_set_screen_saver(c: Pxcb_connection_t; timeout: Tint16_t; interval: Tint16_t; prefer_blanking: Tuint8_t; allow_exposures: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_get_screen_saver(c: Pxcb_connection_t): Txcb_get_screen_saver_cookie_t; cdecl; external libxcb;
function xcb_get_screen_saver_unchecked(c: Pxcb_connection_t): Txcb_get_screen_saver_cookie_t; cdecl; external libxcb;
function xcb_get_screen_saver_reply(c: Pxcb_connection_t; cookie: Txcb_get_screen_saver_cookie_t; e: PPxcb_generic_error_t): Pxcb_get_screen_saver_reply_t; cdecl; external libxcb;
function xcb_change_hosts_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_change_hosts_checked(c: Pxcb_connection_t; mode: Tuint8_t; family: Tuint8_t; address_len: Tuint16_t; address: Puint8_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_change_hosts(c: Pxcb_connection_t; mode: Tuint8_t; family: Tuint8_t; address_len: Tuint16_t; address: Puint8_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_change_hosts_address(R: Pxcb_change_hosts_request_t): Puint8_t; cdecl; external libxcb;
function xcb_change_hosts_address_length(R: Pxcb_change_hosts_request_t): longint; cdecl; external libxcb;
function xcb_change_hosts_address_end(R: Pxcb_change_hosts_request_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_host_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_host_address(R: Pxcb_host_t): Puint8_t; cdecl; external libxcb;
function xcb_host_address_length(R: Pxcb_host_t): longint; cdecl; external libxcb;
function xcb_host_address_end(R: Pxcb_host_t): Txcb_generic_iterator_t; cdecl; external libxcb;
procedure xcb_host_next(i: Pxcb_host_iterator_t); cdecl; external libxcb;
function xcb_host_end(i: Txcb_host_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_list_hosts_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_list_hosts(c: Pxcb_connection_t): Txcb_list_hosts_cookie_t; cdecl; external libxcb;
function xcb_list_hosts_unchecked(c: Pxcb_connection_t): Txcb_list_hosts_cookie_t; cdecl; external libxcb;
function xcb_list_hosts_hosts_length(R: Pxcb_list_hosts_reply_t): longint; cdecl; external libxcb;
function xcb_list_hosts_hosts_iterator(R: Pxcb_list_hosts_reply_t): Txcb_host_iterator_t; cdecl; external libxcb;
function xcb_list_hosts_reply(c: Pxcb_connection_t; cookie: Txcb_list_hosts_cookie_t; e: PPxcb_generic_error_t): Pxcb_list_hosts_reply_t; cdecl; external libxcb;
function xcb_set_access_control_checked(c: Pxcb_connection_t; mode: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_set_access_control(c: Pxcb_connection_t; mode: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_set_close_down_mode_checked(c: Pxcb_connection_t; mode: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_set_close_down_mode(c: Pxcb_connection_t; mode: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_kill_client_checked(c: Pxcb_connection_t; resource: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_kill_client(c: Pxcb_connection_t; resource: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_rotate_properties_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_rotate_properties_checked(c: Pxcb_connection_t; window: Txcb_window_t; atoms_len: Tuint16_t; delta: Tint16_t; atoms: Pxcb_atom_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_rotate_properties(c: Pxcb_connection_t; window: Txcb_window_t; atoms_len: Tuint16_t; delta: Tint16_t; atoms: Pxcb_atom_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_rotate_properties_atoms(R: Pxcb_rotate_properties_request_t): Pxcb_atom_t; cdecl; external libxcb;
function xcb_rotate_properties_atoms_length(R: Pxcb_rotate_properties_request_t): longint; cdecl; external libxcb;
function xcb_rotate_properties_atoms_end(R: Pxcb_rotate_properties_request_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_force_screen_saver_checked(c: Pxcb_connection_t; mode: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_force_screen_saver(c: Pxcb_connection_t; mode: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_set_pointer_mapping_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_set_pointer_mapping(c: Pxcb_connection_t; map_len: Tuint8_t; map: Puint8_t): Txcb_set_pointer_mapping_cookie_t; cdecl; external libxcb;
function xcb_set_pointer_mapping_unchecked(c: Pxcb_connection_t; map_len: Tuint8_t; map: Puint8_t): Txcb_set_pointer_mapping_cookie_t; cdecl; external libxcb;
function xcb_set_pointer_mapping_reply(c: Pxcb_connection_t; cookie: Txcb_set_pointer_mapping_cookie_t; e: PPxcb_generic_error_t): Pxcb_set_pointer_mapping_reply_t; cdecl; external libxcb;
function xcb_get_pointer_mapping_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_get_pointer_mapping(c: Pxcb_connection_t): Txcb_get_pointer_mapping_cookie_t; cdecl; external libxcb;
function xcb_get_pointer_mapping_unchecked(c: Pxcb_connection_t): Txcb_get_pointer_mapping_cookie_t; cdecl; external libxcb;
function xcb_get_pointer_mapping_map(R: Pxcb_get_pointer_mapping_reply_t): Puint8_t; cdecl; external libxcb;
function xcb_get_pointer_mapping_map_length(R: Pxcb_get_pointer_mapping_reply_t): longint; cdecl; external libxcb;
function xcb_get_pointer_mapping_map_end(R: Pxcb_get_pointer_mapping_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_get_pointer_mapping_reply(c: Pxcb_connection_t; cookie: Txcb_get_pointer_mapping_cookie_t; e: PPxcb_generic_error_t): Pxcb_get_pointer_mapping_reply_t; cdecl; external libxcb;
function xcb_set_modifier_mapping_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_set_modifier_mapping(c: Pxcb_connection_t; keycodes_per_modifier: Tuint8_t; keycodes: Pxcb_keycode_t): Txcb_set_modifier_mapping_cookie_t; cdecl; external libxcb;
function xcb_set_modifier_mapping_unchecked(c: Pxcb_connection_t; keycodes_per_modifier: Tuint8_t; keycodes: Pxcb_keycode_t): Txcb_set_modifier_mapping_cookie_t; cdecl; external libxcb;
function xcb_set_modifier_mapping_reply(c: Pxcb_connection_t; cookie: Txcb_set_modifier_mapping_cookie_t; e: PPxcb_generic_error_t): Pxcb_set_modifier_mapping_reply_t; cdecl; external libxcb;
function xcb_get_modifier_mapping_sizeof(_buffer: pointer): longint; cdecl; external libxcb;
function xcb_get_modifier_mapping(c: Pxcb_connection_t): Txcb_get_modifier_mapping_cookie_t; cdecl; external libxcb;
function xcb_get_modifier_mapping_unchecked(c: Pxcb_connection_t): Txcb_get_modifier_mapping_cookie_t; cdecl; external libxcb;
function xcb_get_modifier_mapping_keycodes(R: Pxcb_get_modifier_mapping_reply_t): Pxcb_keycode_t; cdecl; external libxcb;
function xcb_get_modifier_mapping_keycodes_length(R: Pxcb_get_modifier_mapping_reply_t): longint; cdecl; external libxcb;
function xcb_get_modifier_mapping_keycodes_end(R: Pxcb_get_modifier_mapping_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb;
function xcb_get_modifier_mapping_reply(c: Pxcb_connection_t; cookie: Txcb_get_modifier_mapping_cookie_t; e: PPxcb_generic_error_t): Pxcb_get_modifier_mapping_reply_t; cdecl; external libxcb;
function xcb_no_operation_checked(c: Pxcb_connection_t): Txcb_void_cookie_t; cdecl; external libxcb;
function xcb_no_operation(c: Pxcb_connection_t): Txcb_void_cookie_t; cdecl; external libxcb;

// === Konventiert am: 8-10-25 15:47:42 ===


{$ENDIF read_interface}


{$IFDEF read_implementation}



{$ENDIF read_implementation}
