unit fp_xv;

interface

uses
  fp_xcb, fp_shm;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

const
  XCB_XV_MAJOR_VERSION = 2;
  XCB_XV_MINOR_VERSION = 2;

var
  xcb_xv_id: Txcb_extension_t; cvar;external libxcb_xv;

type
  Pxcb_xv_port_t = ^Txcb_xv_port_t;
  Txcb_xv_port_t = Tuint32_t;

  Txcb_xv_port_iterator_t = record
    data: Pxcb_xv_port_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xv_port_iterator_t = ^Txcb_xv_port_iterator_t;

  Pxcb_xv_encoding_t = ^Txcb_xv_encoding_t;
  Txcb_xv_encoding_t = Tuint32_t;

  Txcb_xv_encoding_iterator_t = record
    data: Pxcb_xv_encoding_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xv_encoding_iterator_t = ^Txcb_xv_encoding_iterator_t;

type
  Pxcb_xv_type_t = ^Txcb_xv_type_t;
  Txcb_xv_type_t = longint;

const
  XCB_XV_TYPE_INPUT_MASK = 1;
  XCB_XV_TYPE_OUTPUT_MASK = 2;
  XCB_XV_TYPE_VIDEO_MASK = 4;
  XCB_XV_TYPE_STILL_MASK = 8;
  XCB_XV_TYPE_IMAGE_MASK = 16;

type
  Pxcb_xv_image_format_info_type_t = ^Txcb_xv_image_format_info_type_t;
  Txcb_xv_image_format_info_type_t = longint;

const
  XCB_XV_IMAGE_FORMAT_INFO_TYPE_RGB = 0;
  XCB_XV_IMAGE_FORMAT_INFO_TYPE_YUV = 1;

type
  Pxcb_xv_image_format_info_format_t = ^Txcb_xv_image_format_info_format_t;
  Txcb_xv_image_format_info_format_t = longint;

const
  XCB_XV_IMAGE_FORMAT_INFO_FORMAT_PACKED = 0;
  XCB_XV_IMAGE_FORMAT_INFO_FORMAT_PLANAR = 1;

type
  Pxcb_xv_attribute_flag_t = ^Txcb_xv_attribute_flag_t;
  Txcb_xv_attribute_flag_t = longint;

const
  XCB_XV_ATTRIBUTE_FLAG_GETTABLE = 1;
  XCB_XV_ATTRIBUTE_FLAG_SETTABLE = 2;

type
  Pxcb_xv_video_notify_reason_t = ^Txcb_xv_video_notify_reason_t;
  Txcb_xv_video_notify_reason_t = longint;

const
  XCB_XV_VIDEO_NOTIFY_REASON_STARTED = 0;
  XCB_XV_VIDEO_NOTIFY_REASON_STOPPED = 1;
  XCB_XV_VIDEO_NOTIFY_REASON_BUSY = 2;
  XCB_XV_VIDEO_NOTIFY_REASON_PREEMPTED = 3;
  XCB_XV_VIDEO_NOTIFY_REASON_HARD_ERROR = 4;

type
  Pxcb_xv_scanline_order_t = ^Txcb_xv_scanline_order_t;
  Txcb_xv_scanline_order_t = longint;

const
  XCB_XV_SCANLINE_ORDER_TOP_TO_BOTTOM = 0;
  XCB_XV_SCANLINE_ORDER_BOTTOM_TO_TOP = 1;

type
  Pxcb_xv_grab_port_status_t = ^Txcb_xv_grab_port_status_t;
  Txcb_xv_grab_port_status_t = longint;

const
  XCB_XV_GRAB_PORT_STATUS_SUCCESS = 0;
  XCB_XV_GRAB_PORT_STATUS_BAD_EXTENSION = 1;
  XCB_XV_GRAB_PORT_STATUS_ALREADY_GRABBED = 2;
  XCB_XV_GRAB_PORT_STATUS_INVALID_TIME = 3;
  XCB_XV_GRAB_PORT_STATUS_BAD_REPLY = 4;
  XCB_XV_GRAB_PORT_STATUS_BAD_ALLOC = 5;

type
  Txcb_xv_rational_t = record
    numerator: Tint32_t;
    denominator: Tint32_t;
  end;
  Pxcb_xv_rational_t = ^Txcb_xv_rational_t;

  Txcb_xv_rational_iterator_t = record
    data: Pxcb_xv_rational_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xv_rational_iterator_t = ^Txcb_xv_rational_iterator_t;

  Txcb_xv_format_t = record
    visual: Txcb_visualid_t;
    depth: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_xv_format_t = ^Txcb_xv_format_t;

  Txcb_xv_format_iterator_t = record
    data: Pxcb_xv_format_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xv_format_iterator_t = ^Txcb_xv_format_iterator_t;

  Txcb_xv_adaptor_info_t = record
    base_id: Txcb_xv_port_t;
    name_size: Tuint16_t;
    num_ports: Tuint16_t;
    num_formats: Tuint16_t;
    _type: Tuint8_t;
    pad0: Tuint8_t;
  end;
  Pxcb_xv_adaptor_info_t = ^Txcb_xv_adaptor_info_t;

  Txcb_xv_adaptor_info_iterator_t = record
    data: Pxcb_xv_adaptor_info_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xv_adaptor_info_iterator_t = ^Txcb_xv_adaptor_info_iterator_t;

  Txcb_xv_encoding_info_t = record
    encoding: Txcb_xv_encoding_t;
    name_size: Tuint16_t;
    width: Tuint16_t;
    height: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
    rate: Txcb_xv_rational_t;
  end;
  Pxcb_xv_encoding_info_t = ^Txcb_xv_encoding_info_t;

  Txcb_xv_encoding_info_iterator_t = record
    data: Pxcb_xv_encoding_info_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xv_encoding_info_iterator_t = ^Txcb_xv_encoding_info_iterator_t;

  Txcb_xv_image_t = record
    id: Tuint32_t;
    width: Tuint16_t;
    height: Tuint16_t;
    data_size: Tuint32_t;
    num_planes: Tuint32_t;
  end;
  Pxcb_xv_image_t = ^Txcb_xv_image_t;

  Txcb_xv_image_iterator_t = record
    data: Pxcb_xv_image_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xv_image_iterator_t = ^Txcb_xv_image_iterator_t;

  Txcb_xv_attribute_info_t = record
    flags: Tuint32_t;
    min: Tint32_t;
    max: Tint32_t;
    size: Tuint32_t;
  end;
  Pxcb_xv_attribute_info_t = ^Txcb_xv_attribute_info_t;

  Txcb_xv_attribute_info_iterator_t = record
    data: Pxcb_xv_attribute_info_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xv_attribute_info_iterator_t = ^Txcb_xv_attribute_info_iterator_t;

  Txcb_xv_image_format_info_t = record
    id: Tuint32_t;
    _type: Tuint8_t;
    byte_order: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
    guid: array[0..15] of Tuint8_t;
    bpp: Tuint8_t;
    num_planes: Tuint8_t;
    pad1: array[0..1] of Tuint8_t;
    depth: Tuint8_t;
    pad2: array[0..2] of Tuint8_t;
    red_mask: Tuint32_t;
    green_mask: Tuint32_t;
    blue_mask: Tuint32_t;
    format: Tuint8_t;
    pad3: array[0..2] of Tuint8_t;
    y_sample_bits: Tuint32_t;
    u_sample_bits: Tuint32_t;
    v_sample_bits: Tuint32_t;
    vhorz_y_period: Tuint32_t;
    vhorz_u_period: Tuint32_t;
    vhorz_v_period: Tuint32_t;
    vvert_y_period: Tuint32_t;
    vvert_u_period: Tuint32_t;
    vvert_v_period: Tuint32_t;
    vcomp_order: array[0..31] of Tuint8_t;
    vscanline_order: Tuint8_t;
    pad4: array[0..10] of Tuint8_t;
  end;
  Pxcb_xv_image_format_info_t = ^Txcb_xv_image_format_info_t;

  Txcb_xv_image_format_info_iterator_t = record
    data: Pxcb_xv_image_format_info_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xv_image_format_info_iterator_t = ^Txcb_xv_image_format_info_iterator_t;

const
  XCB_XV_BAD_PORT = 0;

type
  Txcb_xv_bad_port_error_t = record
    response_type: Tuint8_t;
    error_code: Tuint8_t;
    sequence: Tuint16_t;
    bad_value: Tuint32_t;
    minor_opcode: Tuint16_t;
    major_opcode: Tuint8_t;
  end;
  Pxcb_xv_bad_port_error_t = ^Txcb_xv_bad_port_error_t;

const
  XCB_XV_BAD_ENCODING = 1;

type
  Txcb_xv_bad_encoding_error_t = record
    response_type: Tuint8_t;
    error_code: Tuint8_t;
    sequence: Tuint16_t;
    bad_value: Tuint32_t;
    minor_opcode: Tuint16_t;
    major_opcode: Tuint8_t;
  end;
  Pxcb_xv_bad_encoding_error_t = ^Txcb_xv_bad_encoding_error_t;

const
  XCB_XV_BAD_CONTROL = 2;

type
  Txcb_xv_bad_control_error_t = record
    response_type: Tuint8_t;
    error_code: Tuint8_t;
    sequence: Tuint16_t;
    bad_value: Tuint32_t;
    minor_opcode: Tuint16_t;
    major_opcode: Tuint8_t;
  end;
  Pxcb_xv_bad_control_error_t = ^Txcb_xv_bad_control_error_t;

const
  XCB_XV_VIDEO_NOTIFY = 0;

type
  Txcb_xv_video_notify_event_t = record
    response_type: Tuint8_t;
    reason: Tuint8_t;
    sequence: Tuint16_t;
    time: Txcb_timestamp_t;
    drawable: Txcb_drawable_t;
    port: Txcb_xv_port_t;
  end;
  Pxcb_xv_video_notify_event_t = ^Txcb_xv_video_notify_event_t;

const
  XCB_XV_PORT_NOTIFY = 1;

type
  Txcb_xv_port_notify_event_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    time: Txcb_timestamp_t;
    port: Txcb_xv_port_t;
    attribute: Txcb_atom_t;
    value: Tint32_t;
  end;
  Pxcb_xv_port_notify_event_t = ^Txcb_xv_port_notify_event_t;

  Txcb_xv_query_extension_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xv_query_extension_cookie_t = ^Txcb_xv_query_extension_cookie_t;

const
  XCB_XV_QUERY_EXTENSION_ = 0;

type
  Txcb_xv_query_extension_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_xv_query_extension_request_t = ^Txcb_xv_query_extension_request_t;

  Txcb_xv_query_extension_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    major: Tuint16_t;
    minor: Tuint16_t;
  end;
  Pxcb_xv_query_extension_reply_t = ^Txcb_xv_query_extension_reply_t;

  Txcb_xv_query_adaptors_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xv_query_adaptors_cookie_t = ^Txcb_xv_query_adaptors_cookie_t;

const
  XCB_XV_QUERY_ADAPTORS_ = 1;

type
  Txcb_xv_query_adaptors_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
  end;
  Pxcb_xv_query_adaptors_request_t = ^Txcb_xv_query_adaptors_request_t;

  Txcb_xv_query_adaptors_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    num_adaptors: Tuint16_t;
    pad1: array[0..21] of Tuint8_t;
  end;
  Pxcb_xv_query_adaptors_reply_t = ^Txcb_xv_query_adaptors_reply_t;

  Txcb_xv_query_encodings_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xv_query_encodings_cookie_t = ^Txcb_xv_query_encodings_cookie_t;

const
  XCB_XV_QUERY_ENCODINGS_ = 2;

type
  Txcb_xv_query_encodings_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    port: Txcb_xv_port_t;
  end;
  Pxcb_xv_query_encodings_request_t = ^Txcb_xv_query_encodings_request_t;

  Txcb_xv_query_encodings_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    num_encodings: Tuint16_t;
    pad1: array[0..21] of Tuint8_t;
  end;
  Pxcb_xv_query_encodings_reply_t = ^Txcb_xv_query_encodings_reply_t;

  Txcb_xv_grab_port_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xv_grab_port_cookie_t = ^Txcb_xv_grab_port_cookie_t;

const
  XCB_XV_GRAB_PORT_ = 3;

type
  Txcb_xv_grab_port_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    port: Txcb_xv_port_t;
    time: Txcb_timestamp_t;
  end;
  Pxcb_xv_grab_port_request_t = ^Txcb_xv_grab_port_request_t;

  Txcb_xv_grab_port_reply_t = record
    response_type: Tuint8_t;
    result: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
  end;
  Pxcb_xv_grab_port_reply_t = ^Txcb_xv_grab_port_reply_t;

const
  XCB_XV_UNGRAB_PORT_ = 4;

type
  Txcb_xv_ungrab_port_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    port: Txcb_xv_port_t;
    time: Txcb_timestamp_t;
  end;
  Pxcb_xv_ungrab_port_request_t = ^Txcb_xv_ungrab_port_request_t;

const
  XCB_XV_PUT_VIDEO_ = 5;

type
  Txcb_xv_put_video_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    port: Txcb_xv_port_t;
    drawable: Txcb_drawable_t;
    gc: Txcb_gcontext_t;
    vid_x: Tint16_t;
    vid_y: Tint16_t;
    vid_w: Tuint16_t;
    vid_h: Tuint16_t;
    drw_x: Tint16_t;
    drw_y: Tint16_t;
    drw_w: Tuint16_t;
    drw_h: Tuint16_t;
  end;
  Pxcb_xv_put_video_request_t = ^Txcb_xv_put_video_request_t;

const
  XCB_XV_PUT_STILL_ = 6;

type
  Txcb_xv_put_still_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    port: Txcb_xv_port_t;
    drawable: Txcb_drawable_t;
    gc: Txcb_gcontext_t;
    vid_x: Tint16_t;
    vid_y: Tint16_t;
    vid_w: Tuint16_t;
    vid_h: Tuint16_t;
    drw_x: Tint16_t;
    drw_y: Tint16_t;
    drw_w: Tuint16_t;
    drw_h: Tuint16_t;
  end;
  Pxcb_xv_put_still_request_t = ^Txcb_xv_put_still_request_t;

const
  XCB_XV_GET_VIDEO_ = 7;

type
  Txcb_xv_get_video_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    port: Txcb_xv_port_t;
    drawable: Txcb_drawable_t;
    gc: Txcb_gcontext_t;
    vid_x: Tint16_t;
    vid_y: Tint16_t;
    vid_w: Tuint16_t;
    vid_h: Tuint16_t;
    drw_x: Tint16_t;
    drw_y: Tint16_t;
    drw_w: Tuint16_t;
    drw_h: Tuint16_t;
  end;
  Pxcb_xv_get_video_request_t = ^Txcb_xv_get_video_request_t;

const
  XCB_XV_GET_STILL_ = 8;

type
  Txcb_xv_get_still_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    port: Txcb_xv_port_t;
    drawable: Txcb_drawable_t;
    gc: Txcb_gcontext_t;
    vid_x: Tint16_t;
    vid_y: Tint16_t;
    vid_w: Tuint16_t;
    vid_h: Tuint16_t;
    drw_x: Tint16_t;
    drw_y: Tint16_t;
    drw_w: Tuint16_t;
    drw_h: Tuint16_t;
  end;
  Pxcb_xv_get_still_request_t = ^Txcb_xv_get_still_request_t;

const
  XCB_XV_STOP_VIDEO_ = 9;

type
  Txcb_xv_stop_video_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    port: Txcb_xv_port_t;
    drawable: Txcb_drawable_t;
  end;
  Pxcb_xv_stop_video_request_t = ^Txcb_xv_stop_video_request_t;

const
  XCB_XV_SELECT_VIDEO_NOTIFY_ = 10;

type
  Txcb_xv_select_video_notify_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    drawable: Txcb_drawable_t;
    onoff: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_xv_select_video_notify_request_t = ^Txcb_xv_select_video_notify_request_t;

const
  XCB_XV_SELECT_PORT_NOTIFY_ = 11;

type
  Txcb_xv_select_port_notify_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    port: Txcb_xv_port_t;
    onoff: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_xv_select_port_notify_request_t = ^Txcb_xv_select_port_notify_request_t;

  Txcb_xv_query_best_size_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xv_query_best_size_cookie_t = ^Txcb_xv_query_best_size_cookie_t;

const
  XCB_XV_QUERY_BEST_SIZE_ = 12;

type
  Txcb_xv_query_best_size_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    port: Txcb_xv_port_t;
    vid_w: Tuint16_t;
    vid_h: Tuint16_t;
    drw_w: Tuint16_t;
    drw_h: Tuint16_t;
    motion: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_xv_query_best_size_request_t = ^Txcb_xv_query_best_size_request_t;

  Txcb_xv_query_best_size_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    actual_width: Tuint16_t;
    actual_height: Tuint16_t;
  end;
  Pxcb_xv_query_best_size_reply_t = ^Txcb_xv_query_best_size_reply_t;

const
  XCB_XV_SET_PORT_ATTRIBUTE_ = 13;

type
  Txcb_xv_set_port_attribute_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    port: Txcb_xv_port_t;
    attribute: Txcb_atom_t;
    value: Tint32_t;
  end;
  Pxcb_xv_set_port_attribute_request_t = ^Txcb_xv_set_port_attribute_request_t;

  Txcb_xv_get_port_attribute_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xv_get_port_attribute_cookie_t = ^Txcb_xv_get_port_attribute_cookie_t;

const
  XCB_XV_GET_PORT_ATTRIBUTE_ = 14;

type
  Txcb_xv_get_port_attribute_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    port: Txcb_xv_port_t;
    attribute: Txcb_atom_t;
  end;
  Pxcb_xv_get_port_attribute_request_t = ^Txcb_xv_get_port_attribute_request_t;

  Txcb_xv_get_port_attribute_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    value: Tint32_t;
  end;
  Pxcb_xv_get_port_attribute_reply_t = ^Txcb_xv_get_port_attribute_reply_t;

  Txcb_xv_query_port_attributes_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xv_query_port_attributes_cookie_t = ^Txcb_xv_query_port_attributes_cookie_t;

const
  XCB_XV_QUERY_PORT_ATTRIBUTES_ = 15;

type
  Txcb_xv_query_port_attributes_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    port: Txcb_xv_port_t;
  end;
  Pxcb_xv_query_port_attributes_request_t = ^Txcb_xv_query_port_attributes_request_t;

  Txcb_xv_query_port_attributes_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    num_attributes: Tuint32_t;
    text_size: Tuint32_t;
    pad1: array[0..15] of Tuint8_t;
  end;
  Pxcb_xv_query_port_attributes_reply_t = ^Txcb_xv_query_port_attributes_reply_t;

  Txcb_xv_list_image_formats_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xv_list_image_formats_cookie_t = ^Txcb_xv_list_image_formats_cookie_t;

const
  XCB_XV_LIST_IMAGE_FORMATS_ = 16;

type
  Txcb_xv_list_image_formats_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    port: Txcb_xv_port_t;
  end;
  Pxcb_xv_list_image_formats_request_t = ^Txcb_xv_list_image_formats_request_t;

  Txcb_xv_list_image_formats_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    num_formats: Tuint32_t;
    pad1: array[0..19] of Tuint8_t;
  end;
  Pxcb_xv_list_image_formats_reply_t = ^Txcb_xv_list_image_formats_reply_t;

  Txcb_xv_query_image_attributes_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xv_query_image_attributes_cookie_t = ^Txcb_xv_query_image_attributes_cookie_t;

const
  XCB_XV_QUERY_IMAGE_ATTRIBUTES_ = 17;

type
  Txcb_xv_query_image_attributes_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    port: Txcb_xv_port_t;
    id: Tuint32_t;
    width: Tuint16_t;
    height: Tuint16_t;
  end;
  Pxcb_xv_query_image_attributes_request_t = ^Txcb_xv_query_image_attributes_request_t;

  Txcb_xv_query_image_attributes_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    num_planes: Tuint32_t;
    data_size: Tuint32_t;
    width: Tuint16_t;
    height: Tuint16_t;
    pad1: array[0..11] of Tuint8_t;
  end;
  Pxcb_xv_query_image_attributes_reply_t = ^Txcb_xv_query_image_attributes_reply_t;

const
  XCB_XV_PUT_IMAGE_ = 18;

type
  Txcb_xv_put_image_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    port: Txcb_xv_port_t;
    drawable: Txcb_drawable_t;
    gc: Txcb_gcontext_t;
    id: Tuint32_t;
    src_x: Tint16_t;
    src_y: Tint16_t;
    src_w: Tuint16_t;
    src_h: Tuint16_t;
    drw_x: Tint16_t;
    drw_y: Tint16_t;
    drw_w: Tuint16_t;
    drw_h: Tuint16_t;
    width: Tuint16_t;
    height: Tuint16_t;
  end;
  Pxcb_xv_put_image_request_t = ^Txcb_xv_put_image_request_t;

const
  XCB_XV_SHM_PUT_IMAGE_ = 19;

type
  Txcb_xv_shm_put_image_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    port: Txcb_xv_port_t;
    drawable: Txcb_drawable_t;
    gc: Txcb_gcontext_t;
    shmseg: Txcb_shm_seg_t;
    id: Tuint32_t;
    offset: Tuint32_t;
    src_x: Tint16_t;
    src_y: Tint16_t;
    src_w: Tuint16_t;
    src_h: Tuint16_t;
    drw_x: Tint16_t;
    drw_y: Tint16_t;
    drw_w: Tuint16_t;
    drw_h: Tuint16_t;
    width: Tuint16_t;
    height: Tuint16_t;
    send_event: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_xv_shm_put_image_request_t = ^Txcb_xv_shm_put_image_request_t;

procedure xcb_xv_port_next(i: Pxcb_xv_port_iterator_t); cdecl; external libxcb_xv;
function xcb_xv_port_end(i: Txcb_xv_port_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xv;
procedure xcb_xv_encoding_next(i: Pxcb_xv_encoding_iterator_t); cdecl; external libxcb_xv;
function xcb_xv_encoding_end(i: Txcb_xv_encoding_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xv;
procedure xcb_xv_rational_next(i: Pxcb_xv_rational_iterator_t); cdecl; external libxcb_xv;
function xcb_xv_rational_end(i: Txcb_xv_rational_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xv;
procedure xcb_xv_format_next(i: Pxcb_xv_format_iterator_t); cdecl; external libxcb_xv;
function xcb_xv_format_end(i: Txcb_xv_format_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xv;
function xcb_xv_adaptor_info_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xv;
function xcb_xv_adaptor_info_name(R: Pxcb_xv_adaptor_info_t): pchar; cdecl; external libxcb_xv;
function xcb_xv_adaptor_info_name_length(R: Pxcb_xv_adaptor_info_t): longint; cdecl; external libxcb_xv;
function xcb_xv_adaptor_info_name_end(R: Pxcb_xv_adaptor_info_t): Txcb_generic_iterator_t; cdecl; external libxcb_xv;
function xcb_xv_adaptor_info_formats(R: Pxcb_xv_adaptor_info_t): Pxcb_xv_format_t; cdecl; external libxcb_xv;
function xcb_xv_adaptor_info_formats_length(R: Pxcb_xv_adaptor_info_t): longint; cdecl; external libxcb_xv;
function xcb_xv_adaptor_info_formats_iterator(R: Pxcb_xv_adaptor_info_t): Txcb_xv_format_iterator_t; cdecl; external libxcb_xv;
procedure xcb_xv_adaptor_info_next(i: Pxcb_xv_adaptor_info_iterator_t); cdecl; external libxcb_xv;
function xcb_xv_adaptor_info_end(i: Txcb_xv_adaptor_info_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xv;
function xcb_xv_encoding_info_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xv;
function xcb_xv_encoding_info_name(R: Pxcb_xv_encoding_info_t): pchar; cdecl; external libxcb_xv;
function xcb_xv_encoding_info_name_length(R: Pxcb_xv_encoding_info_t): longint; cdecl; external libxcb_xv;
function xcb_xv_encoding_info_name_end(R: Pxcb_xv_encoding_info_t): Txcb_generic_iterator_t; cdecl; external libxcb_xv;
procedure xcb_xv_encoding_info_next(i: Pxcb_xv_encoding_info_iterator_t); cdecl; external libxcb_xv;
function xcb_xv_encoding_info_end(i: Txcb_xv_encoding_info_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xv;
function xcb_xv_image_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xv;
function xcb_xv_image_pitches(R: Pxcb_xv_image_t): Puint32_t; cdecl; external libxcb_xv;
function xcb_xv_image_pitches_length(R: Pxcb_xv_image_t): longint; cdecl; external libxcb_xv;
function xcb_xv_image_pitches_end(R: Pxcb_xv_image_t): Txcb_generic_iterator_t; cdecl; external libxcb_xv;
function xcb_xv_image_offsets(R: Pxcb_xv_image_t): Puint32_t; cdecl; external libxcb_xv;
function xcb_xv_image_offsets_length(R: Pxcb_xv_image_t): longint; cdecl; external libxcb_xv;
function xcb_xv_image_offsets_end(R: Pxcb_xv_image_t): Txcb_generic_iterator_t; cdecl; external libxcb_xv;
function xcb_xv_image_data(R: Pxcb_xv_image_t): Puint8_t; cdecl; external libxcb_xv;
function xcb_xv_image_data_length(R: Pxcb_xv_image_t): longint; cdecl; external libxcb_xv;
function xcb_xv_image_data_end(R: Pxcb_xv_image_t): Txcb_generic_iterator_t; cdecl; external libxcb_xv;
procedure xcb_xv_image_next(i: Pxcb_xv_image_iterator_t); cdecl; external libxcb_xv;
function xcb_xv_image_end(i: Txcb_xv_image_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xv;
function xcb_xv_attribute_info_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xv;
function xcb_xv_attribute_info_name(R: Pxcb_xv_attribute_info_t): pchar; cdecl; external libxcb_xv;
function xcb_xv_attribute_info_name_length(R: Pxcb_xv_attribute_info_t): longint; cdecl; external libxcb_xv;
function xcb_xv_attribute_info_name_end(R: Pxcb_xv_attribute_info_t): Txcb_generic_iterator_t; cdecl; external libxcb_xv;
procedure xcb_xv_attribute_info_next(i: Pxcb_xv_attribute_info_iterator_t); cdecl; external libxcb_xv;
function xcb_xv_attribute_info_end(i: Txcb_xv_attribute_info_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xv;
procedure xcb_xv_image_format_info_next(i: Pxcb_xv_image_format_info_iterator_t); cdecl; external libxcb_xv;
function xcb_xv_image_format_info_end(i: Txcb_xv_image_format_info_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xv;
function xcb_xv_query_extension(c: Pxcb_connection_t): Txcb_xv_query_extension_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_query_extension_unchecked(c: Pxcb_connection_t): Txcb_xv_query_extension_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_query_extension_reply(c: Pxcb_connection_t; cookie: Txcb_xv_query_extension_cookie_t; e: PPxcb_generic_error_t): Pxcb_xv_query_extension_reply_t; cdecl; external libxcb_xv;
function xcb_xv_query_adaptors_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xv;
function xcb_xv_query_adaptors(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_xv_query_adaptors_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_query_adaptors_unchecked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_xv_query_adaptors_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_query_adaptors_info_length(R: Pxcb_xv_query_adaptors_reply_t): longint; cdecl; external libxcb_xv;
function xcb_xv_query_adaptors_info_iterator(R: Pxcb_xv_query_adaptors_reply_t): Txcb_xv_adaptor_info_iterator_t; cdecl; external libxcb_xv;
function xcb_xv_query_adaptors_reply(c: Pxcb_connection_t; cookie: Txcb_xv_query_adaptors_cookie_t; e: PPxcb_generic_error_t): Pxcb_xv_query_adaptors_reply_t; cdecl; external libxcb_xv;
function xcb_xv_query_encodings_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xv;
function xcb_xv_query_encodings(c: Pxcb_connection_t; port: Txcb_xv_port_t): Txcb_xv_query_encodings_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_query_encodings_unchecked(c: Pxcb_connection_t; port: Txcb_xv_port_t): Txcb_xv_query_encodings_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_query_encodings_info_length(R: Pxcb_xv_query_encodings_reply_t): longint; cdecl; external libxcb_xv;
function xcb_xv_query_encodings_info_iterator(R: Pxcb_xv_query_encodings_reply_t): Txcb_xv_encoding_info_iterator_t; cdecl; external libxcb_xv;
function xcb_xv_query_encodings_reply(c: Pxcb_connection_t; cookie: Txcb_xv_query_encodings_cookie_t; e: PPxcb_generic_error_t): Pxcb_xv_query_encodings_reply_t; cdecl; external libxcb_xv;
function xcb_xv_grab_port(c: Pxcb_connection_t; port: Txcb_xv_port_t; time: Txcb_timestamp_t): Txcb_xv_grab_port_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_grab_port_unchecked(c: Pxcb_connection_t; port: Txcb_xv_port_t; time: Txcb_timestamp_t): Txcb_xv_grab_port_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_grab_port_reply(c: Pxcb_connection_t; cookie: Txcb_xv_grab_port_cookie_t; e: PPxcb_generic_error_t): Pxcb_xv_grab_port_reply_t; cdecl; external libxcb_xv;
function xcb_xv_ungrab_port_checked(c: Pxcb_connection_t; port: Txcb_xv_port_t; time: Txcb_timestamp_t): Txcb_void_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_ungrab_port(c: Pxcb_connection_t; port: Txcb_xv_port_t; time: Txcb_timestamp_t): Txcb_void_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_put_video_checked(c: Pxcb_connection_t; port: Txcb_xv_port_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; vid_x: Tint16_t;
  vid_y: Tint16_t; vid_w: Tuint16_t; vid_h: Tuint16_t; drw_x: Tint16_t; drw_y: Tint16_t;
  drw_w: Tuint16_t; drw_h: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_put_video(c: Pxcb_connection_t; port: Txcb_xv_port_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; vid_x: Tint16_t;
  vid_y: Tint16_t; vid_w: Tuint16_t; vid_h: Tuint16_t; drw_x: Tint16_t; drw_y: Tint16_t;
  drw_w: Tuint16_t; drw_h: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_put_still_checked(c: Pxcb_connection_t; port: Txcb_xv_port_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; vid_x: Tint16_t;
  vid_y: Tint16_t; vid_w: Tuint16_t; vid_h: Tuint16_t; drw_x: Tint16_t; drw_y: Tint16_t;
  drw_w: Tuint16_t; drw_h: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_put_still(c: Pxcb_connection_t; port: Txcb_xv_port_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; vid_x: Tint16_t;
  vid_y: Tint16_t; vid_w: Tuint16_t; vid_h: Tuint16_t; drw_x: Tint16_t; drw_y: Tint16_t;
  drw_w: Tuint16_t; drw_h: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_get_video_checked(c: Pxcb_connection_t; port: Txcb_xv_port_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; vid_x: Tint16_t;
  vid_y: Tint16_t; vid_w: Tuint16_t; vid_h: Tuint16_t; drw_x: Tint16_t; drw_y: Tint16_t;
  drw_w: Tuint16_t; drw_h: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_get_video(c: Pxcb_connection_t; port: Txcb_xv_port_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; vid_x: Tint16_t;
  vid_y: Tint16_t; vid_w: Tuint16_t; vid_h: Tuint16_t; drw_x: Tint16_t; drw_y: Tint16_t;
  drw_w: Tuint16_t; drw_h: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_get_still_checked(c: Pxcb_connection_t; port: Txcb_xv_port_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; vid_x: Tint16_t;
  vid_y: Tint16_t; vid_w: Tuint16_t; vid_h: Tuint16_t; drw_x: Tint16_t; drw_y: Tint16_t;
  drw_w: Tuint16_t; drw_h: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_get_still(c: Pxcb_connection_t; port: Txcb_xv_port_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; vid_x: Tint16_t;
  vid_y: Tint16_t; vid_w: Tuint16_t; vid_h: Tuint16_t; drw_x: Tint16_t; drw_y: Tint16_t;
  drw_w: Tuint16_t; drw_h: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_stop_video_checked(c: Pxcb_connection_t; port: Txcb_xv_port_t; drawable: Txcb_drawable_t): Txcb_void_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_stop_video(c: Pxcb_connection_t; port: Txcb_xv_port_t; drawable: Txcb_drawable_t): Txcb_void_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_select_video_notify_checked(c: Pxcb_connection_t; drawable: Txcb_drawable_t; onoff: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_select_video_notify(c: Pxcb_connection_t; drawable: Txcb_drawable_t; onoff: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_select_port_notify_checked(c: Pxcb_connection_t; port: Txcb_xv_port_t; onoff: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_select_port_notify(c: Pxcb_connection_t; port: Txcb_xv_port_t; onoff: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_query_best_size(c: Pxcb_connection_t; port: Txcb_xv_port_t; vid_w: Tuint16_t; vid_h: Tuint16_t; drw_w: Tuint16_t;
  drw_h: Tuint16_t; motion: Tuint8_t): Txcb_xv_query_best_size_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_query_best_size_unchecked(c: Pxcb_connection_t; port: Txcb_xv_port_t; vid_w: Tuint16_t; vid_h: Tuint16_t; drw_w: Tuint16_t;
  drw_h: Tuint16_t; motion: Tuint8_t): Txcb_xv_query_best_size_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_query_best_size_reply(c: Pxcb_connection_t; cookie: Txcb_xv_query_best_size_cookie_t; e: PPxcb_generic_error_t): Pxcb_xv_query_best_size_reply_t; cdecl; external libxcb_xv;
function xcb_xv_set_port_attribute_checked(c: Pxcb_connection_t; port: Txcb_xv_port_t; attribute: Txcb_atom_t; value: Tint32_t): Txcb_void_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_set_port_attribute(c: Pxcb_connection_t; port: Txcb_xv_port_t; attribute: Txcb_atom_t; value: Tint32_t): Txcb_void_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_get_port_attribute(c: Pxcb_connection_t; port: Txcb_xv_port_t; attribute: Txcb_atom_t): Txcb_xv_get_port_attribute_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_get_port_attribute_unchecked(c: Pxcb_connection_t; port: Txcb_xv_port_t; attribute: Txcb_atom_t): Txcb_xv_get_port_attribute_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_get_port_attribute_reply(c: Pxcb_connection_t; cookie: Txcb_xv_get_port_attribute_cookie_t; e: PPxcb_generic_error_t): Pxcb_xv_get_port_attribute_reply_t; cdecl; external libxcb_xv;
function xcb_xv_query_port_attributes_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xv;
function xcb_xv_query_port_attributes(c: Pxcb_connection_t; port: Txcb_xv_port_t): Txcb_xv_query_port_attributes_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_query_port_attributes_unchecked(c: Pxcb_connection_t; port: Txcb_xv_port_t): Txcb_xv_query_port_attributes_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_query_port_attributes_attributes_length(R: Pxcb_xv_query_port_attributes_reply_t): longint; cdecl; external libxcb_xv;
function xcb_xv_query_port_attributes_attributes_iterator(R: Pxcb_xv_query_port_attributes_reply_t): Txcb_xv_attribute_info_iterator_t; cdecl; external libxcb_xv;
function xcb_xv_query_port_attributes_reply(c: Pxcb_connection_t; cookie: Txcb_xv_query_port_attributes_cookie_t; e: PPxcb_generic_error_t): Pxcb_xv_query_port_attributes_reply_t; cdecl; external libxcb_xv;
function xcb_xv_list_image_formats_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xv;
function xcb_xv_list_image_formats(c: Pxcb_connection_t; port: Txcb_xv_port_t): Txcb_xv_list_image_formats_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_list_image_formats_unchecked(c: Pxcb_connection_t; port: Txcb_xv_port_t): Txcb_xv_list_image_formats_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_list_image_formats_format(R: Pxcb_xv_list_image_formats_reply_t): Pxcb_xv_image_format_info_t; cdecl; external libxcb_xv;
function xcb_xv_list_image_formats_format_length(R: Pxcb_xv_list_image_formats_reply_t): longint; cdecl; external libxcb_xv;
function xcb_xv_list_image_formats_format_iterator(R: Pxcb_xv_list_image_formats_reply_t): Txcb_xv_image_format_info_iterator_t; cdecl; external libxcb_xv;
function xcb_xv_list_image_formats_reply(c: Pxcb_connection_t; cookie: Txcb_xv_list_image_formats_cookie_t; e: PPxcb_generic_error_t): Pxcb_xv_list_image_formats_reply_t; cdecl; external libxcb_xv;
function xcb_xv_query_image_attributes_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xv;
function xcb_xv_query_image_attributes(c: Pxcb_connection_t; port: Txcb_xv_port_t; id: Tuint32_t; width: Tuint16_t; height: Tuint16_t): Txcb_xv_query_image_attributes_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_query_image_attributes_unchecked(c: Pxcb_connection_t; port: Txcb_xv_port_t; id: Tuint32_t; width: Tuint16_t; height: Tuint16_t): Txcb_xv_query_image_attributes_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_query_image_attributes_pitches(R: Pxcb_xv_query_image_attributes_reply_t): Puint32_t; cdecl; external libxcb_xv;
function xcb_xv_query_image_attributes_pitches_length(R: Pxcb_xv_query_image_attributes_reply_t): longint; cdecl; external libxcb_xv;
function xcb_xv_query_image_attributes_pitches_end(R: Pxcb_xv_query_image_attributes_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_xv;
function xcb_xv_query_image_attributes_offsets(R: Pxcb_xv_query_image_attributes_reply_t): Puint32_t; cdecl; external libxcb_xv;
function xcb_xv_query_image_attributes_offsets_length(R: Pxcb_xv_query_image_attributes_reply_t): longint; cdecl; external libxcb_xv;
function xcb_xv_query_image_attributes_offsets_end(R: Pxcb_xv_query_image_attributes_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_xv;
function xcb_xv_query_image_attributes_reply(c: Pxcb_connection_t; cookie: Txcb_xv_query_image_attributes_cookie_t; e: PPxcb_generic_error_t): Pxcb_xv_query_image_attributes_reply_t; cdecl; external libxcb_xv;
function xcb_xv_put_image_sizeof(_buffer: pointer; data_len: Tuint32_t): longint; cdecl; external libxcb_xv;
function xcb_xv_put_image_checked(c: Pxcb_connection_t; port: Txcb_xv_port_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; id: Tuint32_t;
  src_x: Tint16_t; src_y: Tint16_t; src_w: Tuint16_t; src_h: Tuint16_t; drw_x: Tint16_t;
  drw_y: Tint16_t; drw_w: Tuint16_t; drw_h: Tuint16_t; width: Tuint16_t; height: Tuint16_t;
  data_len: Tuint32_t; data: Puint8_t): Txcb_void_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_put_image(c: Pxcb_connection_t; port: Txcb_xv_port_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; id: Tuint32_t;
  src_x: Tint16_t; src_y: Tint16_t; src_w: Tuint16_t; src_h: Tuint16_t; drw_x: Tint16_t;
  drw_y: Tint16_t; drw_w: Tuint16_t; drw_h: Tuint16_t; width: Tuint16_t; height: Tuint16_t;
  data_len: Tuint32_t; data: Puint8_t): Txcb_void_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_put_image_data(R: Pxcb_xv_put_image_request_t): Puint8_t; cdecl; external libxcb_xv;
function xcb_xv_put_image_data_length(R: Pxcb_xv_put_image_request_t): longint; cdecl; external libxcb_xv;
function xcb_xv_put_image_data_end(R: Pxcb_xv_put_image_request_t): Txcb_generic_iterator_t; cdecl; external libxcb_xv;
function xcb_xv_shm_put_image_checked(c: Pxcb_connection_t; port: Txcb_xv_port_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; shmseg: Txcb_shm_seg_t;
  id: Tuint32_t; offset: Tuint32_t; src_x: Tint16_t; src_y: Tint16_t; src_w: Tuint16_t;
  src_h: Tuint16_t; drw_x: Tint16_t; drw_y: Tint16_t; drw_w: Tuint16_t; drw_h: Tuint16_t;
  width: Tuint16_t; height: Tuint16_t; send_event: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_xv;
function xcb_xv_shm_put_image(c: Pxcb_connection_t; port: Txcb_xv_port_t; drawable: Txcb_drawable_t; gc: Txcb_gcontext_t; shmseg: Txcb_shm_seg_t;
  id: Tuint32_t; offset: Tuint32_t; src_x: Tint16_t; src_y: Tint16_t; src_w: Tuint16_t;
  src_h: Tuint16_t; drw_x: Tint16_t; drw_y: Tint16_t; drw_w: Tuint16_t; drw_h: Tuint16_t;
  width: Tuint16_t; height: Tuint16_t; send_event: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_xv;

// === Konventiert am: 12-10-25 15:02:41 ===


implementation



end.
