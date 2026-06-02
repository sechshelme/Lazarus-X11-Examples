unit fp_randr;

interface

uses
  fp_xcb, fp_render;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


const
  XCB_RANDR_MAJOR_VERSION = 1;
  XCB_RANDR_MINOR_VERSION = 6;

var
  xcb_randr_id: Txcb_extension_t; cvar;external libxcb_randr;

type
  Pxcb_randr_mode_t = ^Txcb_randr_mode_t;
  Txcb_randr_mode_t = Tuint32_t;

  Txcb_randr_mode_iterator_t = record
    data: Pxcb_randr_mode_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_randr_mode_iterator_t = ^Txcb_randr_mode_iterator_t;

  Pxcb_randr_crtc_t = ^Txcb_randr_crtc_t;
  Txcb_randr_crtc_t = Tuint32_t;

  Txcb_randr_crtc_iterator_t = record
    data: Pxcb_randr_crtc_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_randr_crtc_iterator_t = ^Txcb_randr_crtc_iterator_t;

  Pxcb_randr_output_t = ^Txcb_randr_output_t;
  Txcb_randr_output_t = Tuint32_t;

  Txcb_randr_output_iterator_t = record
    data: Pxcb_randr_output_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_randr_output_iterator_t = ^Txcb_randr_output_iterator_t;

  Pxcb_randr_provider_t = ^Txcb_randr_provider_t;
  Txcb_randr_provider_t = Tuint32_t;

  Txcb_randr_provider_iterator_t = record
    data: Pxcb_randr_provider_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_randr_provider_iterator_t = ^Txcb_randr_provider_iterator_t;

  Pxcb_randr_lease_t = ^Txcb_randr_lease_t;
  Txcb_randr_lease_t = Tuint32_t;

  Txcb_randr_lease_iterator_t = record
    data: Pxcb_randr_lease_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_randr_lease_iterator_t = ^Txcb_randr_lease_iterator_t;

const
  XCB_RANDR_BAD_OUTPUT = 0;

type
  Txcb_randr_bad_output_error_t = record
    response_type: Tuint8_t;
    error_code: Tuint8_t;
    sequence: Tuint16_t;
    bad_value: Tuint32_t;
    minor_opcode: Tuint16_t;
    major_opcode: Tuint8_t;
  end;
  Pxcb_randr_bad_output_error_t = ^Txcb_randr_bad_output_error_t;

const
  XCB_RANDR_BAD_CRTC = 1;

type
  Txcb_randr_bad_crtc_error_t = record
    response_type: Tuint8_t;
    error_code: Tuint8_t;
    sequence: Tuint16_t;
    bad_value: Tuint32_t;
    minor_opcode: Tuint16_t;
    major_opcode: Tuint8_t;
  end;
  Pxcb_randr_bad_crtc_error_t = ^Txcb_randr_bad_crtc_error_t;

const
  XCB_RANDR_BAD_MODE = 2;

type
  Txcb_randr_bad_mode_error_t = record
    response_type: Tuint8_t;
    error_code: Tuint8_t;
    sequence: Tuint16_t;
    bad_value: Tuint32_t;
    minor_opcode: Tuint16_t;
    major_opcode: Tuint8_t;
  end;
  Pxcb_randr_bad_mode_error_t = ^Txcb_randr_bad_mode_error_t;

const
  XCB_RANDR_BAD_PROVIDER = 3;

type
  Pxcb_randr_bad_provider_error_t = ^Txcb_randr_bad_provider_error_t;

  Txcb_randr_bad_provider_error_t = record
    response_type: Tuint8_t;
    error_code: Tuint8_t;
    sequence: Tuint16_t;
    bad_value: Tuint32_t;
    minor_opcode: Tuint16_t;
    major_opcode: Tuint8_t;
  end;

type
  Pxcb_randr_rotation_t = ^Txcb_randr_rotation_t;
  Txcb_randr_rotation_t = longint;

const
  XCB_RANDR_ROTATION_ROTATE_0 = 1;
  XCB_RANDR_ROTATION_ROTATE_90 = 2;
  XCB_RANDR_ROTATION_ROTATE_180 = 4;
  XCB_RANDR_ROTATION_ROTATE_270 = 8;
  XCB_RANDR_ROTATION_REFLECT_X = 16;
  XCB_RANDR_ROTATION_REFLECT_Y = 32;

type
  Txcb_randr_screen_size_t = record
    width: Tuint16_t;
    height: Tuint16_t;
    mwidth: Tuint16_t;
    mheight: Tuint16_t;
  end;
  Pxcb_randr_screen_size_t = ^Txcb_randr_screen_size_t;

  Txcb_randr_screen_size_iterator_t = record
    data: Pxcb_randr_screen_size_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_randr_screen_size_iterator_t = ^Txcb_randr_screen_size_iterator_t;

  Txcb_randr_refresh_rates_t = record
    nRates: Tuint16_t;
  end;
  Pxcb_randr_refresh_rates_t = ^Txcb_randr_refresh_rates_t;

  Txcb_randr_refresh_rates_iterator_t = record
    data: Pxcb_randr_refresh_rates_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_randr_refresh_rates_iterator_t = ^Txcb_randr_refresh_rates_iterator_t;

  Txcb_randr_query_version_cookie_t = record
    sequence: dword;
  end;
  Pxcb_randr_query_version_cookie_t = ^Txcb_randr_query_version_cookie_t;

const
  XCB_RANDR_QUERY_VERSION_ = 0;

type
  Txcb_randr_query_version_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    major_version: Tuint32_t;
    minor_version: Tuint32_t;
  end;
  Pxcb_randr_query_version_request_t = ^Txcb_randr_query_version_request_t;

  Txcb_randr_query_version_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    major_version: Tuint32_t;
    minor_version: Tuint32_t;
    pad1: array[0..15] of Tuint8_t;
  end;
  Pxcb_randr_query_version_reply_t = ^Txcb_randr_query_version_reply_t;

type
  Pxcb_randr_set_config_t = ^Txcb_randr_set_config_t;
  Txcb_randr_set_config_t = longint;

const
  XCB_RANDR_SET_CONFIG_SUCCESS = 0;
  XCB_RANDR_SET_CONFIG_INVALID_CONFIG_TIME = 1;
  XCB_RANDR_SET_CONFIG_INVALID_TIME = 2;
  XCB_RANDR_SET_CONFIG_FAILED = 3;

type
  Txcb_randr_set_screen_config_cookie_t = record
    sequence: dword;
  end;
  Pxcb_randr_set_screen_config_cookie_t = ^Txcb_randr_set_screen_config_cookie_t;

const
  XCB_RANDR_SET_SCREEN_CONFIG_ = 2;

type
  Txcb_randr_set_screen_config_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    timestamp: Txcb_timestamp_t;
    config_timestamp: Txcb_timestamp_t;
    sizeID: Tuint16_t;
    rotation: Tuint16_t;
    rate: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_randr_set_screen_config_request_t = ^Txcb_randr_set_screen_config_request_t;

  Txcb_randr_set_screen_config_reply_t = record
    response_type: Tuint8_t;
    status: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    new_timestamp: Txcb_timestamp_t;
    config_timestamp: Txcb_timestamp_t;
    root: Txcb_window_t;
    subpixel_order: Tuint16_t;
    pad0: array[0..9] of Tuint8_t;
  end;
  Pxcb_randr_set_screen_config_reply_t = ^Txcb_randr_set_screen_config_reply_t;

type
  Pxcb_randr_notify_mask_t = ^Txcb_randr_notify_mask_t;
  Txcb_randr_notify_mask_t = longint;

const
  XCB_RANDR_NOTIFY_MASK_SCREEN_CHANGE = 1;
  XCB_RANDR_NOTIFY_MASK_CRTC_CHANGE = 2;
  XCB_RANDR_NOTIFY_MASK_OUTPUT_CHANGE = 4;
  XCB_RANDR_NOTIFY_MASK_OUTPUT_PROPERTY = 8;
  XCB_RANDR_NOTIFY_MASK_PROVIDER_CHANGE = 16;
  XCB_RANDR_NOTIFY_MASK_PROVIDER_PROPERTY = 32;
  XCB_RANDR_NOTIFY_MASK_RESOURCE_CHANGE = 64;
  XCB_RANDR_NOTIFY_MASK_LEASE = 128;

const
  XCB_RANDR_SELECT_INPUT_ = 4;

type
  Txcb_randr_select_input_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    enable: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_randr_select_input_request_t = ^Txcb_randr_select_input_request_t;

  Txcb_randr_get_screen_info_cookie_t = record
    sequence: dword;
  end;
  Pxcb_randr_get_screen_info_cookie_t = ^Txcb_randr_get_screen_info_cookie_t;

const
  XCB_RANDR_GET_SCREEN_INFO_ = 5;

type
  Txcb_randr_get_screen_info_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
  end;
  Pxcb_randr_get_screen_info_request_t = ^Txcb_randr_get_screen_info_request_t;

  Txcb_randr_get_screen_info_reply_t = record
    response_type: Tuint8_t;
    rotations: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    root: Txcb_window_t;
    timestamp: Txcb_timestamp_t;
    config_timestamp: Txcb_timestamp_t;
    nSizes: Tuint16_t;
    sizeID: Tuint16_t;
    rotation: Tuint16_t;
    rate: Tuint16_t;
    nInfo: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_randr_get_screen_info_reply_t = ^Txcb_randr_get_screen_info_reply_t;

  Txcb_randr_get_screen_size_range_cookie_t = record
    sequence: dword;
  end;
  Pxcb_randr_get_screen_size_range_cookie_t = ^Txcb_randr_get_screen_size_range_cookie_t;

const
  XCB_RANDR_GET_SCREEN_SIZE_RANGE_ = 6;

type
  Txcb_randr_get_screen_size_range_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
  end;
  Pxcb_randr_get_screen_size_range_request_t = ^Txcb_randr_get_screen_size_range_request_t;

  Txcb_randr_get_screen_size_range_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    min_width: Tuint16_t;
    min_height: Tuint16_t;
    max_width: Tuint16_t;
    max_height: Tuint16_t;
    pad1: array[0..15] of Tuint8_t;
  end;
  Pxcb_randr_get_screen_size_range_reply_t = ^Txcb_randr_get_screen_size_range_reply_t;

const
  XCB_RANDR_SET_SCREEN_SIZE_ = 7;

type
  Txcb_randr_set_screen_size_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    width: Tuint16_t;
    height: Tuint16_t;
    mm_width: Tuint32_t;
    mm_height: Tuint32_t;
  end;
  Pxcb_randr_set_screen_size_request_t = ^Txcb_randr_set_screen_size_request_t;

type
  Pxcb_randr_mode_flag_t = ^Txcb_randr_mode_flag_t;
  Txcb_randr_mode_flag_t = longint;

const
  XCB_RANDR_MODE_FLAG_HSYNC_POSITIVE = 1;
  XCB_RANDR_MODE_FLAG_HSYNC_NEGATIVE = 2;
  XCB_RANDR_MODE_FLAG_VSYNC_POSITIVE = 4;
  XCB_RANDR_MODE_FLAG_VSYNC_NEGATIVE = 8;
  XCB_RANDR_MODE_FLAG_INTERLACE = 16;
  XCB_RANDR_MODE_FLAG_DOUBLE_SCAN = 32;
  XCB_RANDR_MODE_FLAG_CSYNC = 64;
  XCB_RANDR_MODE_FLAG_CSYNC_POSITIVE = 128;
  XCB_RANDR_MODE_FLAG_CSYNC_NEGATIVE = 256;
  XCB_RANDR_MODE_FLAG_HSKEW_PRESENT = 512;
  XCB_RANDR_MODE_FLAG_BCAST = 1024;
  XCB_RANDR_MODE_FLAG_PIXEL_MULTIPLEX = 2048;
  XCB_RANDR_MODE_FLAG_DOUBLE_CLOCK = 4096;
  XCB_RANDR_MODE_FLAG_HALVE_CLOCK = 8192;

type
  Txcb_randr_mode_info_t = record
    id: Tuint32_t;
    width: Tuint16_t;
    height: Tuint16_t;
    dot_clock: Tuint32_t;
    hsync_start: Tuint16_t;
    hsync_end: Tuint16_t;
    htotal: Tuint16_t;
    hskew: Tuint16_t;
    vsync_start: Tuint16_t;
    vsync_end: Tuint16_t;
    vtotal: Tuint16_t;
    name_len: Tuint16_t;
    mode_flags: Tuint32_t;
  end;
  Pxcb_randr_mode_info_t = ^Txcb_randr_mode_info_t;

  Txcb_randr_mode_info_iterator_t = record
    data: Pxcb_randr_mode_info_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_randr_mode_info_iterator_t = ^Txcb_randr_mode_info_iterator_t;

  Txcb_randr_get_screen_resources_cookie_t = record
    sequence: dword;
  end;
  Pxcb_randr_get_screen_resources_cookie_t = ^Txcb_randr_get_screen_resources_cookie_t;

const
  XCB_RANDR_GET_SCREEN_RESOURCES_ = 8;

type
  Txcb_randr_get_screen_resources_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
  end;
  Pxcb_randr_get_screen_resources_request_t = ^Txcb_randr_get_screen_resources_request_t;

  Txcb_randr_get_screen_resources_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    timestamp: Txcb_timestamp_t;
    config_timestamp: Txcb_timestamp_t;
    num_crtcs: Tuint16_t;
    num_outputs: Tuint16_t;
    num_modes: Tuint16_t;
    names_len: Tuint16_t;
    pad1: array[0..7] of Tuint8_t;
  end;
  Pxcb_randr_get_screen_resources_reply_t = ^Txcb_randr_get_screen_resources_reply_t;

type
  Pxcb_randr_connection_t = ^Txcb_randr_connection_t;
  Txcb_randr_connection_t = longint;

const
  XCB_RANDR_CONNECTION_CONNECTED = 0;
  XCB_RANDR_CONNECTION_DISCONNECTED = 1;
  XCB_RANDR_CONNECTION_UNKNOWN = 2;

type
  Txcb_randr_get_output_info_cookie_t = record
    sequence: dword;
  end;
  Pxcb_randr_get_output_info_cookie_t = ^Txcb_randr_get_output_info_cookie_t;

const
  XCB_RANDR_GET_OUTPUT_INFO_ = 9;

type
  Txcb_randr_get_output_info_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    output: Txcb_randr_output_t;
    config_timestamp: Txcb_timestamp_t;
  end;
  Pxcb_randr_get_output_info_request_t = ^Txcb_randr_get_output_info_request_t;

  Txcb_randr_get_output_info_reply_t = record
    response_type: Tuint8_t;
    status: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    timestamp: Txcb_timestamp_t;
    crtc: Txcb_randr_crtc_t;
    mm_width: Tuint32_t;
    mm_height: Tuint32_t;
    connection: Tuint8_t;
    subpixel_order: Tuint8_t;
    num_crtcs: Tuint16_t;
    num_modes: Tuint16_t;
    num_preferred: Tuint16_t;
    num_clones: Tuint16_t;
    name_len: Tuint16_t;
  end;
  Pxcb_randr_get_output_info_reply_t = ^Txcb_randr_get_output_info_reply_t;

  Txcb_randr_list_output_properties_cookie_t = record
    sequence: dword;
  end;
  Pxcb_randr_list_output_properties_cookie_t = ^Txcb_randr_list_output_properties_cookie_t;

const
  XCB_RANDR_LIST_OUTPUT_PROPERTIES_ = 10;

type
  Txcb_randr_list_output_properties_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    output: Txcb_randr_output_t;
  end;
  Pxcb_randr_list_output_properties_request_t = ^Txcb_randr_list_output_properties_request_t;

  Txcb_randr_list_output_properties_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    num_atoms: Tuint16_t;
    pad1: array[0..21] of Tuint8_t;
  end;
  Pxcb_randr_list_output_properties_reply_t = ^Txcb_randr_list_output_properties_reply_t;

  Txcb_randr_query_output_property_cookie_t = record
    sequence: dword;
  end;
  Pxcb_randr_query_output_property_cookie_t = ^Txcb_randr_query_output_property_cookie_t;

const
  XCB_RANDR_QUERY_OUTPUT_PROPERTY_ = 11;

type
  Txcb_randr_query_output_property_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    output: Txcb_randr_output_t;
    _property: Txcb_atom_t;
  end;
  Pxcb_randr_query_output_property_request_t = ^Txcb_randr_query_output_property_request_t;

  Txcb_randr_query_output_property_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    pending: Tuint8_t;
    range: Tuint8_t;
    immutable: Tuint8_t;
    pad1: array[0..20] of Tuint8_t;
  end;
  Pxcb_randr_query_output_property_reply_t = ^Txcb_randr_query_output_property_reply_t;

const
  XCB_RANDR_CONFIGURE_OUTPUT_PROPERTY_ = 12;

type
  Txcb_randr_configure_output_property_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    output: Txcb_randr_output_t;
    _property: Txcb_atom_t;
    pending: Tuint8_t;
    range: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_randr_configure_output_property_request_t = ^Txcb_randr_configure_output_property_request_t;

const
  XCB_RANDR_CHANGE_OUTPUT_PROPERTY_ = 13;

type
  Txcb_randr_change_output_property_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    output: Txcb_randr_output_t;
    _property: Txcb_atom_t;
    _type: Txcb_atom_t;
    format: Tuint8_t;
    mode: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
    num_units: Tuint32_t;
  end;
  Pxcb_randr_change_output_property_request_t = ^Txcb_randr_change_output_property_request_t;

const
  XCB_RANDR_DELETE_OUTPUT_PROPERTY_ = 14;

type
  Txcb_randr_delete_output_property_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    output: Txcb_randr_output_t;
    _property: Txcb_atom_t;
  end;
  Pxcb_randr_delete_output_property_request_t = ^Txcb_randr_delete_output_property_request_t;

  Txcb_randr_get_output_property_cookie_t = record
    sequence: dword;
  end;
  Pxcb_randr_get_output_property_cookie_t = ^Txcb_randr_get_output_property_cookie_t;

const
  XCB_RANDR_GET_OUTPUT_PROPERTY_ = 15;

type
  Txcb_randr_get_output_property_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    output: Txcb_randr_output_t;
    _property: Txcb_atom_t;
    _type: Txcb_atom_t;
    long_offset: Tuint32_t;
    long_length: Tuint32_t;
    _delete: Tuint8_t;
    pending: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_randr_get_output_property_request_t = ^Txcb_randr_get_output_property_request_t;

  Txcb_randr_get_output_property_reply_t = record
    response_type: Tuint8_t;
    format: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    _type: Txcb_atom_t;
    bytes_after: Tuint32_t;
    num_items: Tuint32_t;
    pad0: array[0..11] of Tuint8_t;
  end;
  Pxcb_randr_get_output_property_reply_t = ^Txcb_randr_get_output_property_reply_t;

  Txcb_randr_create_mode_cookie_t = record
    sequence: dword;
  end;
  Pxcb_randr_create_mode_cookie_t = ^Txcb_randr_create_mode_cookie_t;

const
  XCB_RANDR_CREATE_MODE_ = 16;

type
  Txcb_randr_create_mode_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    mode_info: Txcb_randr_mode_info_t;
  end;
  Pxcb_randr_create_mode_request_t = ^Txcb_randr_create_mode_request_t;

  Txcb_randr_create_mode_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    mode: Txcb_randr_mode_t;
    pad1: array[0..19] of Tuint8_t;
  end;
  Pxcb_randr_create_mode_reply_t = ^Txcb_randr_create_mode_reply_t;

const
  XCB_RANDR_DESTROY_MODE_ = 17;

type
  Txcb_randr_destroy_mode_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    mode: Txcb_randr_mode_t;
  end;
  Pxcb_randr_destroy_mode_request_t = ^Txcb_randr_destroy_mode_request_t;

const
  XCB_RANDR_ADD_OUTPUT_MODE_ = 18;

type
  Txcb_randr_add_output_mode_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    output: Txcb_randr_output_t;
    mode: Txcb_randr_mode_t;
  end;
  Pxcb_randr_add_output_mode_request_t = ^Txcb_randr_add_output_mode_request_t;

const
  XCB_RANDR_DELETE_OUTPUT_MODE_ = 19;

type
  Txcb_randr_delete_output_mode_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    output: Txcb_randr_output_t;
    mode: Txcb_randr_mode_t;
  end;
  Pxcb_randr_delete_output_mode_request_t = ^Txcb_randr_delete_output_mode_request_t;

  Txcb_randr_get_crtc_info_cookie_t = record
    sequence: dword;
  end;
  Pxcb_randr_get_crtc_info_cookie_t = ^Txcb_randr_get_crtc_info_cookie_t;

const
  XCB_RANDR_GET_CRTC_INFO_ = 20;

type
  Txcb_randr_get_crtc_info_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    crtc: Txcb_randr_crtc_t;
    config_timestamp: Txcb_timestamp_t;
  end;
  Pxcb_randr_get_crtc_info_request_t = ^Txcb_randr_get_crtc_info_request_t;

  Txcb_randr_get_crtc_info_reply_t = record
    response_type: Tuint8_t;
    status: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    timestamp: Txcb_timestamp_t;
    x: Tint16_t;
    y: Tint16_t;
    width: Tuint16_t;
    height: Tuint16_t;
    mode: Txcb_randr_mode_t;
    rotation: Tuint16_t;
    rotations: Tuint16_t;
    num_outputs: Tuint16_t;
    num_possible_outputs: Tuint16_t;
  end;
  Pxcb_randr_get_crtc_info_reply_t = ^Txcb_randr_get_crtc_info_reply_t;

  Txcb_randr_set_crtc_config_cookie_t = record
    sequence: dword;
  end;
  Pxcb_randr_set_crtc_config_cookie_t = ^Txcb_randr_set_crtc_config_cookie_t;

const
  XCB_RANDR_SET_CRTC_CONFIG_ = 21;

type
  Txcb_randr_set_crtc_config_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    crtc: Txcb_randr_crtc_t;
    timestamp: Txcb_timestamp_t;
    config_timestamp: Txcb_timestamp_t;
    x: Tint16_t;
    y: Tint16_t;
    mode: Txcb_randr_mode_t;
    rotation: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_randr_set_crtc_config_request_t = ^Txcb_randr_set_crtc_config_request_t;

  Txcb_randr_set_crtc_config_reply_t = record
    response_type: Tuint8_t;
    status: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    timestamp: Txcb_timestamp_t;
    pad0: array[0..19] of Tuint8_t;
  end;
  Pxcb_randr_set_crtc_config_reply_t = ^Txcb_randr_set_crtc_config_reply_t;

  Txcb_randr_get_crtc_gamma_size_cookie_t = record
    sequence: dword;
  end;
  Pxcb_randr_get_crtc_gamma_size_cookie_t = ^Txcb_randr_get_crtc_gamma_size_cookie_t;

const
  XCB_RANDR_GET_CRTC_GAMMA_SIZE_ = 22;

type
  Txcb_randr_get_crtc_gamma_size_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    crtc: Txcb_randr_crtc_t;
  end;
  Pxcb_randr_get_crtc_gamma_size_request_t = ^Txcb_randr_get_crtc_gamma_size_request_t;

  Txcb_randr_get_crtc_gamma_size_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    size: Tuint16_t;
    pad1: array[0..21] of Tuint8_t;
  end;
  Pxcb_randr_get_crtc_gamma_size_reply_t = ^Txcb_randr_get_crtc_gamma_size_reply_t;

  Txcb_randr_get_crtc_gamma_cookie_t = record
    sequence: dword;
  end;
  Pxcb_randr_get_crtc_gamma_cookie_t = ^Txcb_randr_get_crtc_gamma_cookie_t;

const
  XCB_RANDR_GET_CRTC_GAMMA_ = 23;

type
  Txcb_randr_get_crtc_gamma_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    crtc: Txcb_randr_crtc_t;
  end;
  Pxcb_randr_get_crtc_gamma_request_t = ^Txcb_randr_get_crtc_gamma_request_t;

  Txcb_randr_get_crtc_gamma_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    size: Tuint16_t;
    pad1: array[0..21] of Tuint8_t;
  end;
  Pxcb_randr_get_crtc_gamma_reply_t = ^Txcb_randr_get_crtc_gamma_reply_t;

const
  XCB_RANDR_SET_CRTC_GAMMA_ = 24;

type
  Txcb_randr_set_crtc_gamma_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    crtc: Txcb_randr_crtc_t;
    size: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_randr_set_crtc_gamma_request_t = ^Txcb_randr_set_crtc_gamma_request_t;

  Txcb_randr_get_screen_resources_current_cookie_t = record
    sequence: dword;
  end;
  Pxcb_randr_get_screen_resources_current_cookie_t = ^Txcb_randr_get_screen_resources_current_cookie_t;

const
  XCB_RANDR_GET_SCREEN_RESOURCES_CURRENT_ = 25;

type
  Txcb_randr_get_screen_resources_current_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
  end;
  Pxcb_randr_get_screen_resources_current_request_t = ^Txcb_randr_get_screen_resources_current_request_t;

  Txcb_randr_get_screen_resources_current_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    timestamp: Txcb_timestamp_t;
    config_timestamp: Txcb_timestamp_t;
    num_crtcs: Tuint16_t;
    num_outputs: Tuint16_t;
    num_modes: Tuint16_t;
    names_len: Tuint16_t;
    pad1: array[0..7] of Tuint8_t;
  end;
  Pxcb_randr_get_screen_resources_current_reply_t = ^Txcb_randr_get_screen_resources_current_reply_t;

type
  Pxcb_randr_transform_t = ^Txcb_randr_transform_t;
  Txcb_randr_transform_t = longint;

const
  XCB_RANDR_TRANSFORM_UNIT = 1;
  XCB_RANDR_TRANSFORM_SCALE_UP = 2;
  XCB_RANDR_TRANSFORM_SCALE_DOWN = 4;
  XCB_RANDR_TRANSFORM_PROJECTIVE = 8;

const
  XCB_RANDR_SET_CRTC_TRANSFORM_ = 26;

type
  Txcb_randr_set_crtc_transform_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    crtc: Txcb_randr_crtc_t;
    transform: Txcb_render_transform_t;
    filter_len: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_randr_set_crtc_transform_request_t = ^Txcb_randr_set_crtc_transform_request_t;

  Txcb_randr_get_crtc_transform_cookie_t = record
    sequence: dword;
  end;
  Pxcb_randr_get_crtc_transform_cookie_t = ^Txcb_randr_get_crtc_transform_cookie_t;

const
  XCB_RANDR_GET_CRTC_TRANSFORM_ = 27;

type
  Txcb_randr_get_crtc_transform_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    crtc: Txcb_randr_crtc_t;
  end;
  Pxcb_randr_get_crtc_transform_request_t = ^Txcb_randr_get_crtc_transform_request_t;

  Txcb_randr_get_crtc_transform_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    pending_transform: Txcb_render_transform_t;
    has_transforms: Tuint8_t;
    pad1: array[0..2] of Tuint8_t;
    current_transform: Txcb_render_transform_t;
    pad2: array[0..3] of Tuint8_t;
    pending_len: Tuint16_t;
    pending_nparams: Tuint16_t;
    current_len: Tuint16_t;
    current_nparams: Tuint16_t;
  end;
  Pxcb_randr_get_crtc_transform_reply_t = ^Txcb_randr_get_crtc_transform_reply_t;

  Txcb_randr_get_panning_cookie_t = record
    sequence: dword;
  end;
  Pxcb_randr_get_panning_cookie_t = ^Txcb_randr_get_panning_cookie_t;

const
  XCB_RANDR_GET_PANNING_ = 28;

type
  Txcb_randr_get_panning_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    crtc: Txcb_randr_crtc_t;
  end;
  Pxcb_randr_get_panning_request_t = ^Txcb_randr_get_panning_request_t;

  Txcb_randr_get_panning_reply_t = record
    response_type: Tuint8_t;
    status: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    timestamp: Txcb_timestamp_t;
    left: Tuint16_t;
    top: Tuint16_t;
    width: Tuint16_t;
    height: Tuint16_t;
    track_left: Tuint16_t;
    track_top: Tuint16_t;
    track_width: Tuint16_t;
    track_height: Tuint16_t;
    border_left: Tint16_t;
    border_top: Tint16_t;
    border_right: Tint16_t;
    border_bottom: Tint16_t;
  end;
  Pxcb_randr_get_panning_reply_t = ^Txcb_randr_get_panning_reply_t;

  Txcb_randr_set_panning_cookie_t = record
    sequence: dword;
  end;
  Pxcb_randr_set_panning_cookie_t = ^Txcb_randr_set_panning_cookie_t;

const
  XCB_RANDR_SET_PANNING_ = 29;

type
  Txcb_randr_set_panning_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    crtc: Txcb_randr_crtc_t;
    timestamp: Txcb_timestamp_t;
    left: Tuint16_t;
    top: Tuint16_t;
    width: Tuint16_t;
    height: Tuint16_t;
    track_left: Tuint16_t;
    track_top: Tuint16_t;
    track_width: Tuint16_t;
    track_height: Tuint16_t;
    border_left: Tint16_t;
    border_top: Tint16_t;
    border_right: Tint16_t;
    border_bottom: Tint16_t;
  end;
  Pxcb_randr_set_panning_request_t = ^Txcb_randr_set_panning_request_t;

  Txcb_randr_set_panning_reply_t = record
    response_type: Tuint8_t;
    status: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    timestamp: Txcb_timestamp_t;
  end;
  Pxcb_randr_set_panning_reply_t = ^Txcb_randr_set_panning_reply_t;

const
  XCB_RANDR_SET_OUTPUT_PRIMARY_ = 30;

type
  Txcb_randr_set_output_primary_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    output: Txcb_randr_output_t;
  end;
  Pxcb_randr_set_output_primary_request_t = ^Txcb_randr_set_output_primary_request_t;

  Txcb_randr_get_output_primary_cookie_t = record
    sequence: dword;
  end;
  Pxcb_randr_get_output_primary_cookie_t = ^Txcb_randr_get_output_primary_cookie_t;

const
  XCB_RANDR_GET_OUTPUT_PRIMARY_ = 31;

type
  Txcb_randr_get_output_primary_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
  end;
  Pxcb_randr_get_output_primary_request_t = ^Txcb_randr_get_output_primary_request_t;

  Txcb_randr_get_output_primary_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    output: Txcb_randr_output_t;
  end;
  Pxcb_randr_get_output_primary_reply_t = ^Txcb_randr_get_output_primary_reply_t;

  Txcb_randr_get_providers_cookie_t = record
    sequence: dword;
  end;
  Pxcb_randr_get_providers_cookie_t = ^Txcb_randr_get_providers_cookie_t;

const
  XCB_RANDR_GET_PROVIDERS_ = 32;

type
  Txcb_randr_get_providers_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
  end;
  Pxcb_randr_get_providers_request_t = ^Txcb_randr_get_providers_request_t;

  Txcb_randr_get_providers_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    timestamp: Txcb_timestamp_t;
    num_providers: Tuint16_t;
    pad1: array[0..17] of Tuint8_t;
  end;
  Pxcb_randr_get_providers_reply_t = ^Txcb_randr_get_providers_reply_t;

type
  Pxcb_randr_provider_capability_t = ^Txcb_randr_provider_capability_t;
  Txcb_randr_provider_capability_t = longint;

const
  XCB_RANDR_PROVIDER_CAPABILITY_SOURCE_OUTPUT = 1;
  XCB_RANDR_PROVIDER_CAPABILITY_SINK_OUTPUT = 2;
  XCB_RANDR_PROVIDER_CAPABILITY_SOURCE_OFFLOAD = 4;
  XCB_RANDR_PROVIDER_CAPABILITY_SINK_OFFLOAD = 8;

type
  Txcb_randr_get_provider_info_cookie_t = record
    sequence: dword;
  end;
  Pxcb_randr_get_provider_info_cookie_t = ^Txcb_randr_get_provider_info_cookie_t;

const
  XCB_RANDR_GET_PROVIDER_INFO_ = 33;

type
  Txcb_randr_get_provider_info_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    provider: Txcb_randr_provider_t;
    config_timestamp: Txcb_timestamp_t;
  end;
  Pxcb_randr_get_provider_info_request_t = ^Txcb_randr_get_provider_info_request_t;

  Txcb_randr_get_provider_info_reply_t = record
    response_type: Tuint8_t;
    status: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    timestamp: Txcb_timestamp_t;
    capabilities: Tuint32_t;
    num_crtcs: Tuint16_t;
    num_outputs: Tuint16_t;
    num_associated_providers: Tuint16_t;
    name_len: Tuint16_t;
    pad0: array[0..7] of Tuint8_t;
  end;
  Pxcb_randr_get_provider_info_reply_t = ^Txcb_randr_get_provider_info_reply_t;

const
  XCB_RANDR_SET_PROVIDER_OFFLOAD_SINK_ = 34;

type
  Txcb_randr_set_provider_offload_sink_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    provider: Txcb_randr_provider_t;
    sink_provider: Txcb_randr_provider_t;
    config_timestamp: Txcb_timestamp_t;
  end;
  Pxcb_randr_set_provider_offload_sink_request_t = ^Txcb_randr_set_provider_offload_sink_request_t;

const
  XCB_RANDR_SET_PROVIDER_OUTPUT_SOURCE_ = 35;

type
  Txcb_randr_set_provider_output_source_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    provider: Txcb_randr_provider_t;
    source_provider: Txcb_randr_provider_t;
    config_timestamp: Txcb_timestamp_t;
  end;
  Pxcb_randr_set_provider_output_source_request_t = ^Txcb_randr_set_provider_output_source_request_t;

  Txcb_randr_list_provider_properties_cookie_t = record
    sequence: dword;
  end;
  Pxcb_randr_list_provider_properties_cookie_t = ^Txcb_randr_list_provider_properties_cookie_t;

const
  XCB_RANDR_LIST_PROVIDER_PROPERTIES_ = 36;

type
  Txcb_randr_list_provider_properties_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    provider: Txcb_randr_provider_t;
  end;
  Pxcb_randr_list_provider_properties_request_t = ^Txcb_randr_list_provider_properties_request_t;

  Txcb_randr_list_provider_properties_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    num_atoms: Tuint16_t;
    pad1: array[0..21] of Tuint8_t;
  end;
  Pxcb_randr_list_provider_properties_reply_t = ^Txcb_randr_list_provider_properties_reply_t;

  Txcb_randr_query_provider_property_cookie_t = record
    sequence: dword;
  end;
  Pxcb_randr_query_provider_property_cookie_t = ^Txcb_randr_query_provider_property_cookie_t;

const
  XCB_RANDR_QUERY_PROVIDER_PROPERTY_ = 37;

type
  Txcb_randr_query_provider_property_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    provider: Txcb_randr_provider_t;
    _property: Txcb_atom_t;
  end;
  Pxcb_randr_query_provider_property_request_t = ^Txcb_randr_query_provider_property_request_t;

  Txcb_randr_query_provider_property_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    pending: Tuint8_t;
    range: Tuint8_t;
    immutable: Tuint8_t;
    pad1: array[0..20] of Tuint8_t;
  end;
  Pxcb_randr_query_provider_property_reply_t = ^Txcb_randr_query_provider_property_reply_t;

const
  XCB_RANDR_CONFIGURE_PROVIDER_PROPERTY_ = 38;

type
  Txcb_randr_configure_provider_property_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    provider: Txcb_randr_provider_t;
    _property: Txcb_atom_t;
    pending: Tuint8_t;
    range: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_randr_configure_provider_property_request_t = ^Txcb_randr_configure_provider_property_request_t;

const
  XCB_RANDR_CHANGE_PROVIDER_PROPERTY_ = 39;

type
  Txcb_randr_change_provider_property_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    provider: Txcb_randr_provider_t;
    _property: Txcb_atom_t;
    _type: Txcb_atom_t;
    format: Tuint8_t;
    mode: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
    num_items: Tuint32_t;
  end;
  Pxcb_randr_change_provider_property_request_t = ^Txcb_randr_change_provider_property_request_t;

const
  XCB_RANDR_DELETE_PROVIDER_PROPERTY_ = 40;

type
  Txcb_randr_delete_provider_property_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    provider: Txcb_randr_provider_t;
    _property: Txcb_atom_t;
  end;
  Pxcb_randr_delete_provider_property_request_t = ^Txcb_randr_delete_provider_property_request_t;

  Txcb_randr_get_provider_property_cookie_t = record
    sequence: dword;
  end;
  Pxcb_randr_get_provider_property_cookie_t = ^Txcb_randr_get_provider_property_cookie_t;

const
  XCB_RANDR_GET_PROVIDER_PROPERTY_ = 41;

type
  Txcb_randr_get_provider_property_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    provider: Txcb_randr_provider_t;
    _property: Txcb_atom_t;
    _type: Txcb_atom_t;
    long_offset: Tuint32_t;
    long_length: Tuint32_t;
    _delete: Tuint8_t;
    pending: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_randr_get_provider_property_request_t = ^Txcb_randr_get_provider_property_request_t;

  Txcb_randr_get_provider_property_reply_t = record
    response_type: Tuint8_t;
    format: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    _type: Txcb_atom_t;
    bytes_after: Tuint32_t;
    num_items: Tuint32_t;
    pad0: array[0..11] of Tuint8_t;
  end;
  Pxcb_randr_get_provider_property_reply_t = ^Txcb_randr_get_provider_property_reply_t;

const
  XCB_RANDR_SCREEN_CHANGE_NOTIFY = 0;

type
  Txcb_randr_screen_change_notify_event_t = record
    response_type: Tuint8_t;
    rotation: Tuint8_t;
    sequence: Tuint16_t;
    timestamp: Txcb_timestamp_t;
    config_timestamp: Txcb_timestamp_t;
    root: Txcb_window_t;
    request_window: Txcb_window_t;
    sizeID: Tuint16_t;
    subpixel_order: Tuint16_t;
    width: Tuint16_t;
    height: Tuint16_t;
    mwidth: Tuint16_t;
    mheight: Tuint16_t;
  end;
  Pxcb_randr_screen_change_notify_event_t = ^Txcb_randr_screen_change_notify_event_t;

type
  Pxcb_randr_notify_t = ^Txcb_randr_notify_t;
  Txcb_randr_notify_t = longint;

const
  XCB_RANDR_NOTIFY_CRTC_CHANGE = 0;
  XCB_RANDR_NOTIFY_OUTPUT_CHANGE = 1;
  XCB_RANDR_NOTIFY_OUTPUT_PROPERTY = 2;
  XCB_RANDR_NOTIFY_PROVIDER_CHANGE = 3;
  XCB_RANDR_NOTIFY_PROVIDER_PROPERTY = 4;
  XCB_RANDR_NOTIFY_RESOURCE_CHANGE = 5;
  XCB_RANDR_NOTIFY_LEASE = 6;

type
  Txcb_randr_crtc_change_t = record
    timestamp: Txcb_timestamp_t;
    window: Txcb_window_t;
    crtc: Txcb_randr_crtc_t;
    mode: Txcb_randr_mode_t;
    rotation: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
    x: Tint16_t;
    y: Tint16_t;
    width: Tuint16_t;
    height: Tuint16_t;
  end;
  Pxcb_randr_crtc_change_t = ^Txcb_randr_crtc_change_t;

  Txcb_randr_crtc_change_iterator_t = record
    data: Pxcb_randr_crtc_change_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_randr_crtc_change_iterator_t = ^Txcb_randr_crtc_change_iterator_t;

  Txcb_randr_output_change_t = record
    timestamp: Txcb_timestamp_t;
    config_timestamp: Txcb_timestamp_t;
    window: Txcb_window_t;
    output: Txcb_randr_output_t;
    crtc: Txcb_randr_crtc_t;
    mode: Txcb_randr_mode_t;
    rotation: Tuint16_t;
    connection: Tuint8_t;
    subpixel_order: Tuint8_t;
  end;
  Pxcb_randr_output_change_t = ^Txcb_randr_output_change_t;

  Txcb_randr_output_change_iterator_t = record
    data: Pxcb_randr_output_change_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_randr_output_change_iterator_t = ^Txcb_randr_output_change_iterator_t;

  Txcb_randr_output_property_t = record
    window: Txcb_window_t;
    output: Txcb_randr_output_t;
    atom: Txcb_atom_t;
    timestamp: Txcb_timestamp_t;
    status: Tuint8_t;
    pad0: array[0..10] of Tuint8_t;
  end;
  Pxcb_randr_output_property_t = ^Txcb_randr_output_property_t;

  Txcb_randr_output_property_iterator_t = record
    data: Pxcb_randr_output_property_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_randr_output_property_iterator_t = ^Txcb_randr_output_property_iterator_t;

  Txcb_randr_provider_change_t = record
    timestamp: Txcb_timestamp_t;
    window: Txcb_window_t;
    provider: Txcb_randr_provider_t;
    pad0: array[0..15] of Tuint8_t;
  end;
  Pxcb_randr_provider_change_t = ^Txcb_randr_provider_change_t;

  Txcb_randr_provider_change_iterator_t = record
    data: Pxcb_randr_provider_change_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_randr_provider_change_iterator_t = ^Txcb_randr_provider_change_iterator_t;

  Txcb_randr_provider_property_t = record
    window: Txcb_window_t;
    provider: Txcb_randr_provider_t;
    atom: Txcb_atom_t;
    timestamp: Txcb_timestamp_t;
    state: Tuint8_t;
    pad0: array[0..10] of Tuint8_t;
  end;
  Pxcb_randr_provider_property_t = ^Txcb_randr_provider_property_t;

  Txcb_randr_provider_property_iterator_t = record
    data: Pxcb_randr_provider_property_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_randr_provider_property_iterator_t = ^Txcb_randr_provider_property_iterator_t;

  Txcb_randr_resource_change_t = record
    timestamp: Txcb_timestamp_t;
    window: Txcb_window_t;
    pad0: array[0..19] of Tuint8_t;
  end;
  Pxcb_randr_resource_change_t = ^Txcb_randr_resource_change_t;

  Txcb_randr_resource_change_iterator_t = record
    data: Pxcb_randr_resource_change_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_randr_resource_change_iterator_t = ^Txcb_randr_resource_change_iterator_t;

  Txcb_randr_monitor_info_t = record
    name: Txcb_atom_t;
    primary: Tuint8_t;
    automatic: Tuint8_t;
    nOutput: Tuint16_t;
    x: Tint16_t;
    y: Tint16_t;
    width: Tuint16_t;
    height: Tuint16_t;
    width_in_millimeters: Tuint32_t;
    height_in_millimeters: Tuint32_t;
  end;
  Pxcb_randr_monitor_info_t = ^Txcb_randr_monitor_info_t;

  Txcb_randr_monitor_info_iterator_t = record
    data: Pxcb_randr_monitor_info_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_randr_monitor_info_iterator_t = ^Txcb_randr_monitor_info_iterator_t;

  Txcb_randr_get_monitors_cookie_t = record
    sequence: dword;
  end;
  Pxcb_randr_get_monitors_cookie_t = ^Txcb_randr_get_monitors_cookie_t;

const
  XCB_RANDR_GET_MONITORS_ = 42;

type
  Txcb_randr_get_monitors_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    get_active: Tuint8_t;
  end;
  Pxcb_randr_get_monitors_request_t = ^Txcb_randr_get_monitors_request_t;

  Txcb_randr_get_monitors_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    timestamp: Txcb_timestamp_t;
    nMonitors: Tuint32_t;
    nOutputs: Tuint32_t;
    pad1: array[0..11] of Tuint8_t;
  end;
  Pxcb_randr_get_monitors_reply_t = ^Txcb_randr_get_monitors_reply_t;

const
  XCB_RANDR_SET_MONITOR_ = 43;

type
  Txcb_randr_set_monitor_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
  end;
  Pxcb_randr_set_monitor_request_t = ^Txcb_randr_set_monitor_request_t;

const
  XCB_RANDR_DELETE_MONITOR_ = 44;

type
  Txcb_randr_delete_monitor_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    name: Txcb_atom_t;
  end;
  Pxcb_randr_delete_monitor_request_t = ^Txcb_randr_delete_monitor_request_t;

  Txcb_randr_create_lease_cookie_t = record
    sequence: dword;
  end;
  Pxcb_randr_create_lease_cookie_t = ^Txcb_randr_create_lease_cookie_t;

const
  XCB_RANDR_CREATE_LEASE_ = 45;

type
  Txcb_randr_create_lease_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    lid: Txcb_randr_lease_t;
    num_crtcs: Tuint16_t;
    num_outputs: Tuint16_t;
  end;
  Pxcb_randr_create_lease_request_t = ^Txcb_randr_create_lease_request_t;

  Txcb_randr_create_lease_reply_t = record
    response_type: Tuint8_t;
    nfd: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    pad0: array[0..23] of Tuint8_t;
  end;
  Pxcb_randr_create_lease_reply_t = ^Txcb_randr_create_lease_reply_t;

const
  XCB_RANDR_FREE_LEASE_ = 46;

type
  Txcb_randr_free_lease_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    lid: Txcb_randr_lease_t;
    terminate: Tuint8_t;
  end;
  Pxcb_randr_free_lease_request_t = ^Txcb_randr_free_lease_request_t;

  Txcb_randr_lease_notify_t = record
    timestamp: Txcb_timestamp_t;
    window: Txcb_window_t;
    lease: Txcb_randr_lease_t;
    created: Tuint8_t;
    pad0: array[0..14] of Tuint8_t;
  end;
  Pxcb_randr_lease_notify_t = ^Txcb_randr_lease_notify_t;

  Txcb_randr_lease_notify_iterator_t = record
    data: Pxcb_randr_lease_notify_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_randr_lease_notify_iterator_t = ^Txcb_randr_lease_notify_iterator_t;

  Txcb_randr_notify_data_t = record
    case longint of
      0: (cc: Txcb_randr_crtc_change_t);
      1: (oc: Txcb_randr_output_change_t);
      2: (op: Txcb_randr_output_property_t);
      3: (pc: Txcb_randr_provider_change_t);
      4: (pp: Txcb_randr_provider_property_t);
      5: (rc: Txcb_randr_resource_change_t);
      6: (lc: Txcb_randr_lease_notify_t);
  end;
  Pxcb_randr_notify_data_t = ^Txcb_randr_notify_data_t;

  Txcb_randr_notify_data_iterator_t = record
    data: Pxcb_randr_notify_data_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_randr_notify_data_iterator_t = ^Txcb_randr_notify_data_iterator_t;

const
  XCB_RANDR_NOTIFY = 1;

type
  Txcb_randr_notify_event_t = record
    response_type: Tuint8_t;
    subCode: Tuint8_t;
    sequence: Tuint16_t;
    u: Txcb_randr_notify_data_t;
  end;
  Pxcb_randr_notify_event_t = ^Txcb_randr_notify_event_t;

procedure xcb_randr_mode_next(i: Pxcb_randr_mode_iterator_t); cdecl; external libxcb_randr;
function xcb_randr_mode_end(i: Txcb_randr_mode_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
procedure xcb_randr_crtc_next(i: Pxcb_randr_crtc_iterator_t); cdecl; external libxcb_randr;
function xcb_randr_crtc_end(i: Txcb_randr_crtc_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
procedure xcb_randr_output_next(i: Pxcb_randr_output_iterator_t); cdecl; external libxcb_randr;
function xcb_randr_output_end(i: Txcb_randr_output_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
procedure xcb_randr_provider_next(i: Pxcb_randr_provider_iterator_t); cdecl; external libxcb_randr;
function xcb_randr_provider_end(i: Txcb_randr_provider_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
procedure xcb_randr_lease_next(i: Pxcb_randr_lease_iterator_t); cdecl; external libxcb_randr;
function xcb_randr_lease_end(i: Txcb_randr_lease_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
procedure xcb_randr_screen_size_next(i: Pxcb_randr_screen_size_iterator_t); cdecl; external libxcb_randr;
function xcb_randr_screen_size_end(i: Txcb_randr_screen_size_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_refresh_rates_sizeof(_buffer: pointer): longint; cdecl; external libxcb_randr;
function xcb_randr_refresh_rates_rates(R: Pxcb_randr_refresh_rates_t): Puint16_t; cdecl; external libxcb_randr;
function xcb_randr_refresh_rates_rates_length(R: Pxcb_randr_refresh_rates_t): longint; cdecl; external libxcb_randr;
function xcb_randr_refresh_rates_rates_end(R: Pxcb_randr_refresh_rates_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
procedure xcb_randr_refresh_rates_next(i: Pxcb_randr_refresh_rates_iterator_t); cdecl; external libxcb_randr;
function xcb_randr_refresh_rates_end(i: Txcb_randr_refresh_rates_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_query_version(c: Pxcb_connection_t; major_version: Tuint32_t; minor_version: Tuint32_t): Txcb_randr_query_version_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_query_version_unchecked(c: Pxcb_connection_t; major_version: Tuint32_t; minor_version: Tuint32_t): Txcb_randr_query_version_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_query_version_reply(c: Pxcb_connection_t; cookie: Txcb_randr_query_version_cookie_t; e: PPxcb_generic_error_t): Pxcb_randr_query_version_reply_t; cdecl; external libxcb_randr;
function xcb_randr_set_screen_config(c: Pxcb_connection_t; window: Txcb_window_t; timestamp: Txcb_timestamp_t; config_timestamp: Txcb_timestamp_t; sizeID: Tuint16_t;
  rotation: Tuint16_t; rate: Tuint16_t): Txcb_randr_set_screen_config_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_set_screen_config_unchecked(c: Pxcb_connection_t; window: Txcb_window_t; timestamp: Txcb_timestamp_t; config_timestamp: Txcb_timestamp_t; sizeID: Tuint16_t;
  rotation: Tuint16_t; rate: Tuint16_t): Txcb_randr_set_screen_config_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_set_screen_config_reply(c: Pxcb_connection_t; cookie: Txcb_randr_set_screen_config_cookie_t; e: PPxcb_generic_error_t): Pxcb_randr_set_screen_config_reply_t; cdecl; external libxcb_randr;
function xcb_randr_select_input_checked(c: Pxcb_connection_t; window: Txcb_window_t; enable: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_select_input(c: Pxcb_connection_t; window: Txcb_window_t; enable: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_screen_info_sizeof(_buffer: pointer): longint; cdecl; external libxcb_randr;
function xcb_randr_get_screen_info(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_randr_get_screen_info_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_screen_info_unchecked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_randr_get_screen_info_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_screen_info_sizes(R: Pxcb_randr_get_screen_info_reply_t): Pxcb_randr_screen_size_t; cdecl; external libxcb_randr;
function xcb_randr_get_screen_info_sizes_length(R: Pxcb_randr_get_screen_info_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_screen_info_sizes_iterator(R: Pxcb_randr_get_screen_info_reply_t): Txcb_randr_screen_size_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_screen_info_rates_length(R: Pxcb_randr_get_screen_info_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_screen_info_rates_iterator(R: Pxcb_randr_get_screen_info_reply_t): Txcb_randr_refresh_rates_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_screen_info_reply(c: Pxcb_connection_t; cookie: Txcb_randr_get_screen_info_cookie_t; e: PPxcb_generic_error_t): Pxcb_randr_get_screen_info_reply_t; cdecl; external libxcb_randr;
function xcb_randr_get_screen_size_range(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_randr_get_screen_size_range_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_screen_size_range_unchecked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_randr_get_screen_size_range_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_screen_size_range_reply(c: Pxcb_connection_t; cookie: Txcb_randr_get_screen_size_range_cookie_t; e: PPxcb_generic_error_t): Pxcb_randr_get_screen_size_range_reply_t; cdecl; external libxcb_randr;
function xcb_randr_set_screen_size_checked(c: Pxcb_connection_t; window: Txcb_window_t; width: Tuint16_t; height: Tuint16_t; mm_width: Tuint32_t;
  mm_height: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_set_screen_size(c: Pxcb_connection_t; window: Txcb_window_t; width: Tuint16_t; height: Tuint16_t; mm_width: Tuint32_t;
  mm_height: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
procedure xcb_randr_mode_info_next(i: Pxcb_randr_mode_info_iterator_t); cdecl; external libxcb_randr;
function xcb_randr_mode_info_end(i: Txcb_randr_mode_info_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources_sizeof(_buffer: pointer): longint; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_randr_get_screen_resources_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources_unchecked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_randr_get_screen_resources_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources_crtcs(R: Pxcb_randr_get_screen_resources_reply_t): Pxcb_randr_crtc_t; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources_crtcs_length(R: Pxcb_randr_get_screen_resources_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources_crtcs_end(R: Pxcb_randr_get_screen_resources_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources_outputs(R: Pxcb_randr_get_screen_resources_reply_t): Pxcb_randr_output_t; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources_outputs_length(R: Pxcb_randr_get_screen_resources_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources_outputs_end(R: Pxcb_randr_get_screen_resources_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources_modes(R: Pxcb_randr_get_screen_resources_reply_t): Pxcb_randr_mode_info_t; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources_modes_length(R: Pxcb_randr_get_screen_resources_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources_modes_iterator(R: Pxcb_randr_get_screen_resources_reply_t): Txcb_randr_mode_info_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources_names(R: Pxcb_randr_get_screen_resources_reply_t): Puint8_t; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources_names_length(R: Pxcb_randr_get_screen_resources_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources_names_end(R: Pxcb_randr_get_screen_resources_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources_reply(c: Pxcb_connection_t; cookie: Txcb_randr_get_screen_resources_cookie_t; e: PPxcb_generic_error_t): Pxcb_randr_get_screen_resources_reply_t; cdecl; external libxcb_randr;
function xcb_randr_get_output_info_sizeof(_buffer: pointer): longint; cdecl; external libxcb_randr;
function xcb_randr_get_output_info(c: Pxcb_connection_t; output: Txcb_randr_output_t; config_timestamp: Txcb_timestamp_t): Txcb_randr_get_output_info_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_output_info_unchecked(c: Pxcb_connection_t; output: Txcb_randr_output_t; config_timestamp: Txcb_timestamp_t): Txcb_randr_get_output_info_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_output_info_crtcs(R: Pxcb_randr_get_output_info_reply_t): Pxcb_randr_crtc_t; cdecl; external libxcb_randr;
function xcb_randr_get_output_info_crtcs_length(R: Pxcb_randr_get_output_info_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_output_info_crtcs_end(R: Pxcb_randr_get_output_info_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_output_info_modes(R: Pxcb_randr_get_output_info_reply_t): Pxcb_randr_mode_t; cdecl; external libxcb_randr;
function xcb_randr_get_output_info_modes_length(R: Pxcb_randr_get_output_info_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_output_info_modes_end(R: Pxcb_randr_get_output_info_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_output_info_clones(R: Pxcb_randr_get_output_info_reply_t): Pxcb_randr_output_t; cdecl; external libxcb_randr;
function xcb_randr_get_output_info_clones_length(R: Pxcb_randr_get_output_info_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_output_info_clones_end(R: Pxcb_randr_get_output_info_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_output_info_name(R: Pxcb_randr_get_output_info_reply_t): Puint8_t; cdecl; external libxcb_randr;
function xcb_randr_get_output_info_name_length(R: Pxcb_randr_get_output_info_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_output_info_name_end(R: Pxcb_randr_get_output_info_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_output_info_reply(c: Pxcb_connection_t; cookie: Txcb_randr_get_output_info_cookie_t; e: PPxcb_generic_error_t): Pxcb_randr_get_output_info_reply_t; cdecl; external libxcb_randr;
function xcb_randr_list_output_properties_sizeof(_buffer: pointer): longint; cdecl; external libxcb_randr;
function xcb_randr_list_output_properties(c: Pxcb_connection_t; output: Txcb_randr_output_t): Txcb_randr_list_output_properties_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_list_output_properties_unchecked(c: Pxcb_connection_t; output: Txcb_randr_output_t): Txcb_randr_list_output_properties_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_list_output_properties_atoms(R: Pxcb_randr_list_output_properties_reply_t): Pxcb_atom_t; cdecl; external libxcb_randr;
function xcb_randr_list_output_properties_atoms_length(R: Pxcb_randr_list_output_properties_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_list_output_properties_atoms_end(R: Pxcb_randr_list_output_properties_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_list_output_properties_reply(c: Pxcb_connection_t; cookie: Txcb_randr_list_output_properties_cookie_t; e: PPxcb_generic_error_t): Pxcb_randr_list_output_properties_reply_t; cdecl; external libxcb_randr;
function xcb_randr_query_output_property_sizeof(_buffer: pointer): longint; cdecl; external libxcb_randr;
function xcb_randr_query_output_property(c: Pxcb_connection_t; output: Txcb_randr_output_t; _property: Txcb_atom_t): Txcb_randr_query_output_property_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_query_output_property_unchecked(c: Pxcb_connection_t; output: Txcb_randr_output_t; _property: Txcb_atom_t): Txcb_randr_query_output_property_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_query_output_property_valid_values(R: Pxcb_randr_query_output_property_reply_t): Pint32_t; cdecl; external libxcb_randr;
function xcb_randr_query_output_property_valid_values_length(R: Pxcb_randr_query_output_property_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_query_output_property_valid_values_end(R: Pxcb_randr_query_output_property_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_query_output_property_reply(c: Pxcb_connection_t; cookie: Txcb_randr_query_output_property_cookie_t; e: PPxcb_generic_error_t): Pxcb_randr_query_output_property_reply_t; cdecl; external libxcb_randr;
function xcb_randr_configure_output_property_sizeof(_buffer: pointer; values_len: Tuint32_t): longint; cdecl; external libxcb_randr;
function xcb_randr_configure_output_property_checked(c: Pxcb_connection_t; output: Txcb_randr_output_t; _property: Txcb_atom_t; pending: Tuint8_t; range: Tuint8_t;
  values_len: Tuint32_t; values: Pint32_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_configure_output_property(c: Pxcb_connection_t; output: Txcb_randr_output_t; _property: Txcb_atom_t; pending: Tuint8_t; range: Tuint8_t;
  values_len: Tuint32_t; values: Pint32_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_configure_output_property_values(R: Pxcb_randr_configure_output_property_request_t): Pint32_t; cdecl; external libxcb_randr;
function xcb_randr_configure_output_property_values_length(R: Pxcb_randr_configure_output_property_request_t): longint; cdecl; external libxcb_randr;
function xcb_randr_configure_output_property_values_end(R: Pxcb_randr_configure_output_property_request_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_change_output_property_sizeof(_buffer: pointer): longint; cdecl; external libxcb_randr;
function xcb_randr_change_output_property_checked(c: Pxcb_connection_t; output: Txcb_randr_output_t; _property: Txcb_atom_t; _type: Txcb_atom_t; format: Tuint8_t;
  mode: Tuint8_t; num_units: Tuint32_t; data: pointer): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_change_output_property(c: Pxcb_connection_t; output: Txcb_randr_output_t; _property: Txcb_atom_t; _type: Txcb_atom_t; format: Tuint8_t;
  mode: Tuint8_t; num_units: Tuint32_t; data: pointer): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_change_output_property_data(R: Pxcb_randr_change_output_property_request_t): pointer; cdecl; external libxcb_randr;
function xcb_randr_change_output_property_data_length(R: Pxcb_randr_change_output_property_request_t): longint; cdecl; external libxcb_randr;
function xcb_randr_change_output_property_data_end(R: Pxcb_randr_change_output_property_request_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_delete_output_property_checked(c: Pxcb_connection_t; output: Txcb_randr_output_t; _property: Txcb_atom_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_delete_output_property(c: Pxcb_connection_t; output: Txcb_randr_output_t; _property: Txcb_atom_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_output_property_sizeof(_buffer: pointer): longint; cdecl; external libxcb_randr;
function xcb_randr_get_output_property(c: Pxcb_connection_t; output: Txcb_randr_output_t; _property: Txcb_atom_t; _type: Txcb_atom_t; long_offset: Tuint32_t;
  long_length: Tuint32_t; _delete: Tuint8_t; pending: Tuint8_t): Txcb_randr_get_output_property_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_output_property_unchecked(c: Pxcb_connection_t; output: Txcb_randr_output_t; _property: Txcb_atom_t; _type: Txcb_atom_t; long_offset: Tuint32_t;
  long_length: Tuint32_t; _delete: Tuint8_t; pending: Tuint8_t): Txcb_randr_get_output_property_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_output_property_data(R: Pxcb_randr_get_output_property_reply_t): Puint8_t; cdecl; external libxcb_randr;
function xcb_randr_get_output_property_data_length(R: Pxcb_randr_get_output_property_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_output_property_data_end(R: Pxcb_randr_get_output_property_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_output_property_reply(c: Pxcb_connection_t; cookie: Txcb_randr_get_output_property_cookie_t; e: PPxcb_generic_error_t): Pxcb_randr_get_output_property_reply_t; cdecl; external libxcb_randr;
function xcb_randr_create_mode_sizeof(_buffer: pointer; name_len: Tuint32_t): longint; cdecl; external libxcb_randr;
function xcb_randr_create_mode(c: Pxcb_connection_t; window: Txcb_window_t; mode_info: Txcb_randr_mode_info_t; name_len: Tuint32_t; name: pchar): Txcb_randr_create_mode_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_create_mode_unchecked(c: Pxcb_connection_t; window: Txcb_window_t; mode_info: Txcb_randr_mode_info_t; name_len: Tuint32_t; name: pchar): Txcb_randr_create_mode_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_create_mode_reply(c: Pxcb_connection_t; cookie: Txcb_randr_create_mode_cookie_t; e: PPxcb_generic_error_t): Pxcb_randr_create_mode_reply_t; cdecl; external libxcb_randr;
function xcb_randr_destroy_mode_checked(c: Pxcb_connection_t; mode: Txcb_randr_mode_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_destroy_mode(c: Pxcb_connection_t; mode: Txcb_randr_mode_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_add_output_mode_checked(c: Pxcb_connection_t; output: Txcb_randr_output_t; mode: Txcb_randr_mode_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_add_output_mode(c: Pxcb_connection_t; output: Txcb_randr_output_t; mode: Txcb_randr_mode_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_delete_output_mode_checked(c: Pxcb_connection_t; output: Txcb_randr_output_t; mode: Txcb_randr_mode_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_delete_output_mode(c: Pxcb_connection_t; output: Txcb_randr_output_t; mode: Txcb_randr_mode_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_info_sizeof(_buffer: pointer): longint; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_info(c: Pxcb_connection_t; crtc: Txcb_randr_crtc_t; config_timestamp: Txcb_timestamp_t): Txcb_randr_get_crtc_info_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_info_unchecked(c: Pxcb_connection_t; crtc: Txcb_randr_crtc_t; config_timestamp: Txcb_timestamp_t): Txcb_randr_get_crtc_info_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_info_outputs(R: Pxcb_randr_get_crtc_info_reply_t): Pxcb_randr_output_t; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_info_outputs_length(R: Pxcb_randr_get_crtc_info_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_info_outputs_end(R: Pxcb_randr_get_crtc_info_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_info_possible(R: Pxcb_randr_get_crtc_info_reply_t): Pxcb_randr_output_t; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_info_possible_length(R: Pxcb_randr_get_crtc_info_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_info_possible_end(R: Pxcb_randr_get_crtc_info_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_info_reply(c: Pxcb_connection_t; cookie: Txcb_randr_get_crtc_info_cookie_t; e: PPxcb_generic_error_t): Pxcb_randr_get_crtc_info_reply_t; cdecl; external libxcb_randr;
function xcb_randr_set_crtc_config_sizeof(_buffer: pointer; outputs_len: Tuint32_t): longint; cdecl; external libxcb_randr;
function xcb_randr_set_crtc_config(c: Pxcb_connection_t; crtc: Txcb_randr_crtc_t; timestamp: Txcb_timestamp_t; config_timestamp: Txcb_timestamp_t; x: Tint16_t;
  y: Tint16_t; mode: Txcb_randr_mode_t; rotation: Tuint16_t; outputs_len: Tuint32_t; outputs: Pxcb_randr_output_t): Txcb_randr_set_crtc_config_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_set_crtc_config_unchecked(c: Pxcb_connection_t; crtc: Txcb_randr_crtc_t; timestamp: Txcb_timestamp_t; config_timestamp: Txcb_timestamp_t; x: Tint16_t;
  y: Tint16_t; mode: Txcb_randr_mode_t; rotation: Tuint16_t; outputs_len: Tuint32_t; outputs: Pxcb_randr_output_t): Txcb_randr_set_crtc_config_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_set_crtc_config_reply(c: Pxcb_connection_t; cookie: Txcb_randr_set_crtc_config_cookie_t; e: PPxcb_generic_error_t): Pxcb_randr_set_crtc_config_reply_t; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_gamma_size(c: Pxcb_connection_t; crtc: Txcb_randr_crtc_t): Txcb_randr_get_crtc_gamma_size_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_gamma_size_unchecked(c: Pxcb_connection_t; crtc: Txcb_randr_crtc_t): Txcb_randr_get_crtc_gamma_size_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_gamma_size_reply(c: Pxcb_connection_t; cookie: Txcb_randr_get_crtc_gamma_size_cookie_t; e: PPxcb_generic_error_t): Pxcb_randr_get_crtc_gamma_size_reply_t; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_gamma_sizeof(_buffer: pointer): longint; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_gamma(c: Pxcb_connection_t; crtc: Txcb_randr_crtc_t): Txcb_randr_get_crtc_gamma_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_gamma_unchecked(c: Pxcb_connection_t; crtc: Txcb_randr_crtc_t): Txcb_randr_get_crtc_gamma_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_gamma_red(R: Pxcb_randr_get_crtc_gamma_reply_t): Puint16_t; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_gamma_red_length(R: Pxcb_randr_get_crtc_gamma_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_gamma_red_end(R: Pxcb_randr_get_crtc_gamma_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_gamma_green(R: Pxcb_randr_get_crtc_gamma_reply_t): Puint16_t; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_gamma_green_length(R: Pxcb_randr_get_crtc_gamma_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_gamma_green_end(R: Pxcb_randr_get_crtc_gamma_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_gamma_blue(R: Pxcb_randr_get_crtc_gamma_reply_t): Puint16_t; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_gamma_blue_length(R: Pxcb_randr_get_crtc_gamma_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_gamma_blue_end(R: Pxcb_randr_get_crtc_gamma_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_gamma_reply(c: Pxcb_connection_t; cookie: Txcb_randr_get_crtc_gamma_cookie_t; e: PPxcb_generic_error_t): Pxcb_randr_get_crtc_gamma_reply_t; cdecl; external libxcb_randr;
function xcb_randr_set_crtc_gamma_sizeof(_buffer: pointer): longint; cdecl; external libxcb_randr;
function xcb_randr_set_crtc_gamma_checked(c: Pxcb_connection_t; crtc: Txcb_randr_crtc_t; size: Tuint16_t; red: Puint16_t; green: Puint16_t;
  blue: Puint16_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_set_crtc_gamma(c: Pxcb_connection_t; crtc: Txcb_randr_crtc_t; size: Tuint16_t; red: Puint16_t; green: Puint16_t;
  blue: Puint16_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_set_crtc_gamma_red(R: Pxcb_randr_set_crtc_gamma_request_t): Puint16_t; cdecl; external libxcb_randr;
function xcb_randr_set_crtc_gamma_red_length(R: Pxcb_randr_set_crtc_gamma_request_t): longint; cdecl; external libxcb_randr;
function xcb_randr_set_crtc_gamma_red_end(R: Pxcb_randr_set_crtc_gamma_request_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_set_crtc_gamma_green(R: Pxcb_randr_set_crtc_gamma_request_t): Puint16_t; cdecl; external libxcb_randr;
function xcb_randr_set_crtc_gamma_green_length(R: Pxcb_randr_set_crtc_gamma_request_t): longint; cdecl; external libxcb_randr;
function xcb_randr_set_crtc_gamma_green_end(R: Pxcb_randr_set_crtc_gamma_request_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_set_crtc_gamma_blue(R: Pxcb_randr_set_crtc_gamma_request_t): Puint16_t; cdecl; external libxcb_randr;
function xcb_randr_set_crtc_gamma_blue_length(R: Pxcb_randr_set_crtc_gamma_request_t): longint; cdecl; external libxcb_randr;
function xcb_randr_set_crtc_gamma_blue_end(R: Pxcb_randr_set_crtc_gamma_request_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources_current_sizeof(_buffer: pointer): longint; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources_current(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_randr_get_screen_resources_current_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources_current_unchecked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_randr_get_screen_resources_current_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources_current_crtcs(R: Pxcb_randr_get_screen_resources_current_reply_t): Pxcb_randr_crtc_t; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources_current_crtcs_length(R: Pxcb_randr_get_screen_resources_current_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources_current_crtcs_end(R: Pxcb_randr_get_screen_resources_current_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources_current_outputs(R: Pxcb_randr_get_screen_resources_current_reply_t): Pxcb_randr_output_t; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources_current_outputs_length(R: Pxcb_randr_get_screen_resources_current_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources_current_outputs_end(R: Pxcb_randr_get_screen_resources_current_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources_current_modes(R: Pxcb_randr_get_screen_resources_current_reply_t): Pxcb_randr_mode_info_t; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources_current_modes_length(R: Pxcb_randr_get_screen_resources_current_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources_current_modes_iterator(R: Pxcb_randr_get_screen_resources_current_reply_t): Txcb_randr_mode_info_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources_current_names(R: Pxcb_randr_get_screen_resources_current_reply_t): Puint8_t; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources_current_names_length(R: Pxcb_randr_get_screen_resources_current_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources_current_names_end(R: Pxcb_randr_get_screen_resources_current_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_screen_resources_current_reply(c: Pxcb_connection_t; cookie: Txcb_randr_get_screen_resources_current_cookie_t; e: PPxcb_generic_error_t): Pxcb_randr_get_screen_resources_current_reply_t; cdecl; external libxcb_randr;
function xcb_randr_set_crtc_transform_sizeof(_buffer: pointer; filter_params_len: Tuint32_t): longint; cdecl; external libxcb_randr;
function xcb_randr_set_crtc_transform_checked(c: Pxcb_connection_t; crtc: Txcb_randr_crtc_t; transform: Txcb_render_transform_t; filter_len: Tuint16_t; filter_name: pchar;
  filter_params_len: Tuint32_t; filter_params: Pxcb_render_fixed_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_set_crtc_transform(c: Pxcb_connection_t; crtc: Txcb_randr_crtc_t; transform: Txcb_render_transform_t; filter_len: Tuint16_t; filter_name: pchar;
  filter_params_len: Tuint32_t; filter_params: Pxcb_render_fixed_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_set_crtc_transform_filter_name(R: Pxcb_randr_set_crtc_transform_request_t): pchar; cdecl; external libxcb_randr;
function xcb_randr_set_crtc_transform_filter_name_length(R: Pxcb_randr_set_crtc_transform_request_t): longint; cdecl; external libxcb_randr;
function xcb_randr_set_crtc_transform_filter_name_end(R: Pxcb_randr_set_crtc_transform_request_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_set_crtc_transform_filter_params(R: Pxcb_randr_set_crtc_transform_request_t): Pxcb_render_fixed_t; cdecl; external libxcb_randr;
function xcb_randr_set_crtc_transform_filter_params_length(R: Pxcb_randr_set_crtc_transform_request_t): longint; cdecl; external libxcb_randr;
function xcb_randr_set_crtc_transform_filter_params_end(R: Pxcb_randr_set_crtc_transform_request_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_transform_sizeof(_buffer: pointer): longint; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_transform(c: Pxcb_connection_t; crtc: Txcb_randr_crtc_t): Txcb_randr_get_crtc_transform_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_transform_unchecked(c: Pxcb_connection_t; crtc: Txcb_randr_crtc_t): Txcb_randr_get_crtc_transform_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_transform_pending_filter_name(R: Pxcb_randr_get_crtc_transform_reply_t): pchar; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_transform_pending_filter_name_length(R: Pxcb_randr_get_crtc_transform_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_transform_pending_filter_name_end(R: Pxcb_randr_get_crtc_transform_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_transform_pending_params(R: Pxcb_randr_get_crtc_transform_reply_t): Pxcb_render_fixed_t; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_transform_pending_params_length(R: Pxcb_randr_get_crtc_transform_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_transform_pending_params_end(R: Pxcb_randr_get_crtc_transform_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_transform_current_filter_name(R: Pxcb_randr_get_crtc_transform_reply_t): pchar; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_transform_current_filter_name_length(R: Pxcb_randr_get_crtc_transform_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_transform_current_filter_name_end(R: Pxcb_randr_get_crtc_transform_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_transform_current_params(R: Pxcb_randr_get_crtc_transform_reply_t): Pxcb_render_fixed_t; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_transform_current_params_length(R: Pxcb_randr_get_crtc_transform_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_transform_current_params_end(R: Pxcb_randr_get_crtc_transform_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_crtc_transform_reply(c: Pxcb_connection_t; cookie: Txcb_randr_get_crtc_transform_cookie_t; e: PPxcb_generic_error_t): Pxcb_randr_get_crtc_transform_reply_t; cdecl; external libxcb_randr;
function xcb_randr_get_panning(c: Pxcb_connection_t; crtc: Txcb_randr_crtc_t): Txcb_randr_get_panning_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_panning_unchecked(c: Pxcb_connection_t; crtc: Txcb_randr_crtc_t): Txcb_randr_get_panning_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_panning_reply(c: Pxcb_connection_t; cookie: Txcb_randr_get_panning_cookie_t; e: PPxcb_generic_error_t): Pxcb_randr_get_panning_reply_t; cdecl; external libxcb_randr;
function xcb_randr_set_panning(c: Pxcb_connection_t; crtc: Txcb_randr_crtc_t; timestamp: Txcb_timestamp_t; left: Tuint16_t; top: Tuint16_t;
  width: Tuint16_t; height: Tuint16_t; track_left: Tuint16_t; track_top: Tuint16_t; track_width: Tuint16_t;
  track_height: Tuint16_t; border_left: Tint16_t; border_top: Tint16_t; border_right: Tint16_t; border_bottom: Tint16_t): Txcb_randr_set_panning_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_set_panning_unchecked(c: Pxcb_connection_t; crtc: Txcb_randr_crtc_t; timestamp: Txcb_timestamp_t; left: Tuint16_t; top: Tuint16_t;
  width: Tuint16_t; height: Tuint16_t; track_left: Tuint16_t; track_top: Tuint16_t; track_width: Tuint16_t;
  track_height: Tuint16_t; border_left: Tint16_t; border_top: Tint16_t; border_right: Tint16_t; border_bottom: Tint16_t): Txcb_randr_set_panning_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_set_panning_reply(c: Pxcb_connection_t; cookie: Txcb_randr_set_panning_cookie_t; e: PPxcb_generic_error_t): Pxcb_randr_set_panning_reply_t; cdecl; external libxcb_randr;
function xcb_randr_set_output_primary_checked(c: Pxcb_connection_t; window: Txcb_window_t; output: Txcb_randr_output_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_set_output_primary(c: Pxcb_connection_t; window: Txcb_window_t; output: Txcb_randr_output_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_output_primary(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_randr_get_output_primary_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_output_primary_unchecked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_randr_get_output_primary_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_output_primary_reply(c: Pxcb_connection_t; cookie: Txcb_randr_get_output_primary_cookie_t; e: PPxcb_generic_error_t): Pxcb_randr_get_output_primary_reply_t; cdecl; external libxcb_randr;
function xcb_randr_get_providers_sizeof(_buffer: pointer): longint; cdecl; external libxcb_randr;
function xcb_randr_get_providers(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_randr_get_providers_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_providers_unchecked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_randr_get_providers_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_providers_providers(R: Pxcb_randr_get_providers_reply_t): Pxcb_randr_provider_t; cdecl; external libxcb_randr;
function xcb_randr_get_providers_providers_length(R: Pxcb_randr_get_providers_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_providers_providers_end(R: Pxcb_randr_get_providers_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_providers_reply(c: Pxcb_connection_t; cookie: Txcb_randr_get_providers_cookie_t; e: PPxcb_generic_error_t): Pxcb_randr_get_providers_reply_t; cdecl; external libxcb_randr;
function xcb_randr_get_provider_info_sizeof(_buffer: pointer): longint; cdecl; external libxcb_randr;
function xcb_randr_get_provider_info(c: Pxcb_connection_t; provider: Txcb_randr_provider_t; config_timestamp: Txcb_timestamp_t): Txcb_randr_get_provider_info_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_provider_info_unchecked(c: Pxcb_connection_t; provider: Txcb_randr_provider_t; config_timestamp: Txcb_timestamp_t): Txcb_randr_get_provider_info_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_provider_info_crtcs(R: Pxcb_randr_get_provider_info_reply_t): Pxcb_randr_crtc_t; cdecl; external libxcb_randr;
function xcb_randr_get_provider_info_crtcs_length(R: Pxcb_randr_get_provider_info_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_provider_info_crtcs_end(R: Pxcb_randr_get_provider_info_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_provider_info_outputs(R: Pxcb_randr_get_provider_info_reply_t): Pxcb_randr_output_t; cdecl; external libxcb_randr;
function xcb_randr_get_provider_info_outputs_length(R: Pxcb_randr_get_provider_info_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_provider_info_outputs_end(R: Pxcb_randr_get_provider_info_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_provider_info_associated_providers(R: Pxcb_randr_get_provider_info_reply_t): Pxcb_randr_provider_t; cdecl; external libxcb_randr;
function xcb_randr_get_provider_info_associated_providers_length(R: Pxcb_randr_get_provider_info_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_provider_info_associated_providers_end(R: Pxcb_randr_get_provider_info_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_provider_info_associated_capability(R: Pxcb_randr_get_provider_info_reply_t): Puint32_t; cdecl; external libxcb_randr;
function xcb_randr_get_provider_info_associated_capability_length(R: Pxcb_randr_get_provider_info_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_provider_info_associated_capability_end(R: Pxcb_randr_get_provider_info_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_provider_info_name(R: Pxcb_randr_get_provider_info_reply_t): pchar; cdecl; external libxcb_randr;
function xcb_randr_get_provider_info_name_length(R: Pxcb_randr_get_provider_info_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_provider_info_name_end(R: Pxcb_randr_get_provider_info_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_provider_info_reply(c: Pxcb_connection_t; cookie: Txcb_randr_get_provider_info_cookie_t; e: PPxcb_generic_error_t): Pxcb_randr_get_provider_info_reply_t; cdecl; external libxcb_randr;
function xcb_randr_set_provider_offload_sink_checked(c: Pxcb_connection_t; provider: Txcb_randr_provider_t; sink_provider: Txcb_randr_provider_t; config_timestamp: Txcb_timestamp_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_set_provider_offload_sink(c: Pxcb_connection_t; provider: Txcb_randr_provider_t; sink_provider: Txcb_randr_provider_t; config_timestamp: Txcb_timestamp_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_set_provider_output_source_checked(c: Pxcb_connection_t; provider: Txcb_randr_provider_t; source_provider: Txcb_randr_provider_t; config_timestamp: Txcb_timestamp_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_set_provider_output_source(c: Pxcb_connection_t; provider: Txcb_randr_provider_t; source_provider: Txcb_randr_provider_t; config_timestamp: Txcb_timestamp_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_list_provider_properties_sizeof(_buffer: pointer): longint; cdecl; external libxcb_randr;
function xcb_randr_list_provider_properties(c: Pxcb_connection_t; provider: Txcb_randr_provider_t): Txcb_randr_list_provider_properties_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_list_provider_properties_unchecked(c: Pxcb_connection_t; provider: Txcb_randr_provider_t): Txcb_randr_list_provider_properties_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_list_provider_properties_atoms(R: Pxcb_randr_list_provider_properties_reply_t): Pxcb_atom_t; cdecl; external libxcb_randr;
function xcb_randr_list_provider_properties_atoms_length(R: Pxcb_randr_list_provider_properties_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_list_provider_properties_atoms_end(R: Pxcb_randr_list_provider_properties_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_list_provider_properties_reply(c: Pxcb_connection_t; cookie: Txcb_randr_list_provider_properties_cookie_t; e: PPxcb_generic_error_t): Pxcb_randr_list_provider_properties_reply_t; cdecl; external libxcb_randr;
function xcb_randr_query_provider_property_sizeof(_buffer: pointer): longint; cdecl; external libxcb_randr;
function xcb_randr_query_provider_property(c: Pxcb_connection_t; provider: Txcb_randr_provider_t; _property: Txcb_atom_t): Txcb_randr_query_provider_property_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_query_provider_property_unchecked(c: Pxcb_connection_t; provider: Txcb_randr_provider_t; _property: Txcb_atom_t): Txcb_randr_query_provider_property_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_query_provider_property_valid_values(R: Pxcb_randr_query_provider_property_reply_t): Pint32_t; cdecl; external libxcb_randr;
function xcb_randr_query_provider_property_valid_values_length(R: Pxcb_randr_query_provider_property_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_query_provider_property_valid_values_end(R: Pxcb_randr_query_provider_property_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_query_provider_property_reply(c: Pxcb_connection_t; cookie: Txcb_randr_query_provider_property_cookie_t; e: PPxcb_generic_error_t): Pxcb_randr_query_provider_property_reply_t; cdecl; external libxcb_randr;
function xcb_randr_configure_provider_property_sizeof(_buffer: pointer; values_len: Tuint32_t): longint; cdecl; external libxcb_randr;
function xcb_randr_configure_provider_property_checked(c: Pxcb_connection_t; provider: Txcb_randr_provider_t; _property: Txcb_atom_t; pending: Tuint8_t; range: Tuint8_t;
  values_len: Tuint32_t; values: Pint32_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_configure_provider_property(c: Pxcb_connection_t; provider: Txcb_randr_provider_t; _property: Txcb_atom_t; pending: Tuint8_t; range: Tuint8_t;
  values_len: Tuint32_t; values: Pint32_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_configure_provider_property_values(R: Pxcb_randr_configure_provider_property_request_t): Pint32_t; cdecl; external libxcb_randr;
function xcb_randr_configure_provider_property_values_length(R: Pxcb_randr_configure_provider_property_request_t): longint; cdecl; external libxcb_randr;
function xcb_randr_configure_provider_property_values_end(R: Pxcb_randr_configure_provider_property_request_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_change_provider_property_sizeof(_buffer: pointer): longint; cdecl; external libxcb_randr;
function xcb_randr_change_provider_property_checked(c: Pxcb_connection_t; provider: Txcb_randr_provider_t; _property: Txcb_atom_t; _type: Txcb_atom_t; format: Tuint8_t;
  mode: Tuint8_t; num_items: Tuint32_t; data: pointer): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_change_provider_property(c: Pxcb_connection_t; provider: Txcb_randr_provider_t; _property: Txcb_atom_t; _type: Txcb_atom_t; format: Tuint8_t;
  mode: Tuint8_t; num_items: Tuint32_t; data: pointer): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_change_provider_property_data(R: Pxcb_randr_change_provider_property_request_t): pointer; cdecl; external libxcb_randr;
function xcb_randr_change_provider_property_data_length(R: Pxcb_randr_change_provider_property_request_t): longint; cdecl; external libxcb_randr;
function xcb_randr_change_provider_property_data_end(R: Pxcb_randr_change_provider_property_request_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_delete_provider_property_checked(c: Pxcb_connection_t; provider: Txcb_randr_provider_t; _property: Txcb_atom_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_delete_provider_property(c: Pxcb_connection_t; provider: Txcb_randr_provider_t; _property: Txcb_atom_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_provider_property_sizeof(_buffer: pointer): longint; cdecl; external libxcb_randr;
function xcb_randr_get_provider_property(c: Pxcb_connection_t; provider: Txcb_randr_provider_t; _property: Txcb_atom_t; _type: Txcb_atom_t; long_offset: Tuint32_t;
  long_length: Tuint32_t; _delete: Tuint8_t; pending: Tuint8_t): Txcb_randr_get_provider_property_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_provider_property_unchecked(c: Pxcb_connection_t; provider: Txcb_randr_provider_t; _property: Txcb_atom_t; _type: Txcb_atom_t; long_offset: Tuint32_t;
  long_length: Tuint32_t; _delete: Tuint8_t; pending: Tuint8_t): Txcb_randr_get_provider_property_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_provider_property_data(R: Pxcb_randr_get_provider_property_reply_t): pointer; cdecl; external libxcb_randr;
function xcb_randr_get_provider_property_data_length(R: Pxcb_randr_get_provider_property_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_provider_property_data_end(R: Pxcb_randr_get_provider_property_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_provider_property_reply(c: Pxcb_connection_t; cookie: Txcb_randr_get_provider_property_cookie_t; e: PPxcb_generic_error_t): Pxcb_randr_get_provider_property_reply_t; cdecl; external libxcb_randr;
procedure xcb_randr_crtc_change_next(i: Pxcb_randr_crtc_change_iterator_t); cdecl; external libxcb_randr;
function xcb_randr_crtc_change_end(i: Txcb_randr_crtc_change_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
procedure xcb_randr_output_change_next(i: Pxcb_randr_output_change_iterator_t); cdecl; external libxcb_randr;
function xcb_randr_output_change_end(i: Txcb_randr_output_change_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
procedure xcb_randr_output_property_next(i: Pxcb_randr_output_property_iterator_t); cdecl; external libxcb_randr;
function xcb_randr_output_property_end(i: Txcb_randr_output_property_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
procedure xcb_randr_provider_change_next(i: Pxcb_randr_provider_change_iterator_t); cdecl; external libxcb_randr;
function xcb_randr_provider_change_end(i: Txcb_randr_provider_change_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
procedure xcb_randr_provider_property_next(i: Pxcb_randr_provider_property_iterator_t); cdecl; external libxcb_randr;
function xcb_randr_provider_property_end(i: Txcb_randr_provider_property_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
procedure xcb_randr_resource_change_next(i: Pxcb_randr_resource_change_iterator_t); cdecl; external libxcb_randr;
function xcb_randr_resource_change_end(i: Txcb_randr_resource_change_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_monitor_info_sizeof(_buffer: pointer): longint; cdecl; external libxcb_randr;
function xcb_randr_monitor_info_outputs(R: Pxcb_randr_monitor_info_t): Pxcb_randr_output_t; cdecl; external libxcb_randr;
function xcb_randr_monitor_info_outputs_length(R: Pxcb_randr_monitor_info_t): longint; cdecl; external libxcb_randr;
function xcb_randr_monitor_info_outputs_end(R: Pxcb_randr_monitor_info_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
procedure xcb_randr_monitor_info_next(i: Pxcb_randr_monitor_info_iterator_t); cdecl; external libxcb_randr;
function xcb_randr_monitor_info_end(i: Txcb_randr_monitor_info_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_monitors_sizeof(_buffer: pointer): longint; cdecl; external libxcb_randr;
function xcb_randr_get_monitors(c: Pxcb_connection_t; window: Txcb_window_t; get_active: Tuint8_t): Txcb_randr_get_monitors_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_monitors_unchecked(c: Pxcb_connection_t; window: Txcb_window_t; get_active: Tuint8_t): Txcb_randr_get_monitors_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_get_monitors_monitors_length(R: Pxcb_randr_get_monitors_reply_t): longint; cdecl; external libxcb_randr;
function xcb_randr_get_monitors_monitors_iterator(R: Pxcb_randr_get_monitors_reply_t): Txcb_randr_monitor_info_iterator_t; cdecl; external libxcb_randr;
function xcb_randr_get_monitors_reply(c: Pxcb_connection_t; cookie: Txcb_randr_get_monitors_cookie_t; e: PPxcb_generic_error_t): Pxcb_randr_get_monitors_reply_t; cdecl; external libxcb_randr;
function xcb_randr_set_monitor_sizeof(_buffer: pointer): longint; cdecl; external libxcb_randr;
function xcb_randr_set_monitor_checked(c: Pxcb_connection_t; window: Txcb_window_t; monitorinfo: Pxcb_randr_monitor_info_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_set_monitor(c: Pxcb_connection_t; window: Txcb_window_t; monitorinfo: Pxcb_randr_monitor_info_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_set_monitor_monitorinfo(R: Pxcb_randr_set_monitor_request_t): Pxcb_randr_monitor_info_t; cdecl; external libxcb_randr;
function xcb_randr_delete_monitor_checked(c: Pxcb_connection_t; window: Txcb_window_t; name: Txcb_atom_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_delete_monitor(c: Pxcb_connection_t; window: Txcb_window_t; name: Txcb_atom_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_create_lease_sizeof(_buffer: pointer): longint; cdecl; external libxcb_randr;
function xcb_randr_create_lease(c: Pxcb_connection_t; window: Txcb_window_t; lid: Txcb_randr_lease_t; num_crtcs: Tuint16_t; num_outputs: Tuint16_t;
  crtcs: Pxcb_randr_crtc_t; outputs: Pxcb_randr_output_t): Txcb_randr_create_lease_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_create_lease_unchecked(c: Pxcb_connection_t; window: Txcb_window_t; lid: Txcb_randr_lease_t; num_crtcs: Tuint16_t; num_outputs: Tuint16_t;
  crtcs: Pxcb_randr_crtc_t; outputs: Pxcb_randr_output_t): Txcb_randr_create_lease_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_create_lease_reply(c: Pxcb_connection_t; cookie: Txcb_randr_create_lease_cookie_t; e: PPxcb_generic_error_t): Pxcb_randr_create_lease_reply_t; cdecl; external libxcb_randr;
function xcb_randr_create_lease_reply_fds(c: Pxcb_connection_t; reply: Pxcb_randr_create_lease_reply_t): Plongint; cdecl; external libxcb_randr;
function xcb_randr_free_lease_checked(c: Pxcb_connection_t; lid: Txcb_randr_lease_t; terminate: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
function xcb_randr_free_lease(c: Pxcb_connection_t; lid: Txcb_randr_lease_t; terminate: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_randr;
procedure xcb_randr_lease_notify_next(i: Pxcb_randr_lease_notify_iterator_t); cdecl; external libxcb_randr;
function xcb_randr_lease_notify_end(i: Txcb_randr_lease_notify_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;
procedure xcb_randr_notify_data_next(i: Pxcb_randr_notify_data_iterator_t); cdecl; external libxcb_randr;
function xcb_randr_notify_data_end(i: Txcb_randr_notify_data_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_randr;

// === Konventiert am: 11-10-25 16:34:05 ===


implementation



end.
