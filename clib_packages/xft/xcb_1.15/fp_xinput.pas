unit fp_xinput;

interface

uses
  fp_xcb, fp_xcb_util, fp_xfixes;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}



const
  XCB_INPUT_MAJOR_VERSION = 2;
  XCB_INPUT_MINOR_VERSION = 4;

var
  xcb_input_id: Txcb_extension_t; cvar;external libxcb_xinput;

type
  Pxcb_input_event_class_t = ^Txcb_input_event_class_t;
  Txcb_input_event_class_t = Tuint32_t;

  Txcb_input_event_class_iterator_t = record
    data: Pxcb_input_event_class_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_event_class_iterator_t = ^Txcb_input_event_class_iterator_t;

  Pxcb_input_key_code_t = ^Txcb_input_key_code_t;
  Txcb_input_key_code_t = Tuint8_t;

  Txcb_input_key_code_iterator_t = record
    data: Pxcb_input_key_code_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_key_code_iterator_t = ^Txcb_input_key_code_iterator_t;

  Pxcb_input_device_id_t = ^Txcb_input_device_id_t;
  Txcb_input_device_id_t = Tuint16_t;

  Txcb_input_device_id_iterator_t = record
    data: Pxcb_input_device_id_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_device_id_iterator_t = ^Txcb_input_device_id_iterator_t;

  Pxcb_input_fp1616_t = ^Txcb_input_fp1616_t;
  Txcb_input_fp1616_t = Tint32_t;

  Txcb_input_fp1616_iterator_t = record
    data: Pxcb_input_fp1616_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_fp1616_iterator_t = ^Txcb_input_fp1616_iterator_t;

  Txcb_input_fp3232_t = record
    integral: Tint32_t;
    frac: Tuint32_t;
  end;
  Pxcb_input_fp3232_t = ^Txcb_input_fp3232_t;

  Txcb_input_fp3232_iterator_t = record
    data: Pxcb_input_fp3232_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_fp3232_iterator_t = ^Txcb_input_fp3232_iterator_t;

  Txcb_input_get_extension_version_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_get_extension_version_cookie_t = ^Txcb_input_get_extension_version_cookie_t;

const
  XCB_INPUT_GET_EXTENSION_VERSION_ = 1;

type
  Txcb_input_get_extension_version_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    name_len: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_input_get_extension_version_request_t = ^Txcb_input_get_extension_version_request_t;

  Txcb_input_get_extension_version_reply_t = record
    response_type: Tuint8_t;
    xi_reply_type: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    server_major: Tuint16_t;
    server_minor: Tuint16_t;
    present: Tuint8_t;
    pad0: array[0..18] of Tuint8_t;
  end;
  Pxcb_input_get_extension_version_reply_t = ^Txcb_input_get_extension_version_reply_t;

  Pxcb_input_device_use_t = ^Txcb_input_device_use_t;
  Txcb_input_device_use_t = longint;

const
  XCB_INPUT_DEVICE_USE_IS_X_POINTER = 0;
  XCB_INPUT_DEVICE_USE_IS_X_KEYBOARD = 1;
  XCB_INPUT_DEVICE_USE_IS_X_EXTENSION_DEVICE = 2;
  XCB_INPUT_DEVICE_USE_IS_X_EXTENSION_KEYBOARD = 3;
  XCB_INPUT_DEVICE_USE_IS_X_EXTENSION_POINTER = 4;

type
  Pxcb_input_input_class_t = ^Txcb_input_input_class_t;
  Txcb_input_input_class_t = longint;

const
  XCB_INPUT_INPUT_CLASS_KEY = 0;
  XCB_INPUT_INPUT_CLASS_BUTTON = 1;
  XCB_INPUT_INPUT_CLASS_VALUATOR = 2;
  XCB_INPUT_INPUT_CLASS_FEEDBACK = 3;
  XCB_INPUT_INPUT_CLASS_PROXIMITY = 4;
  XCB_INPUT_INPUT_CLASS_FOCUS = 5;
  XCB_INPUT_INPUT_CLASS_OTHER = 6;

type
  Pxcb_input_valuator_mode_t = ^Txcb_input_valuator_mode_t;
  Txcb_input_valuator_mode_t = longint;

const
  XCB_INPUT_VALUATOR_MODE_RELATIVE = 0;
  XCB_INPUT_VALUATOR_MODE_ABSOLUTE = 1;

type
  Txcb_input_device_info_t = record
    device_type: Txcb_atom_t;
    device_id: Tuint8_t;
    num_class_info: Tuint8_t;
    device_use: Tuint8_t;
    pad0: Tuint8_t;
  end;
  Pxcb_input_device_info_t = ^Txcb_input_device_info_t;

  Txcb_input_device_info_iterator_t = record
    data: Pxcb_input_device_info_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_device_info_iterator_t = ^Txcb_input_device_info_iterator_t;

  Txcb_input_key_info_t = record
    class_id: Tuint8_t;
    len: Tuint8_t;
    min_keycode: Txcb_input_key_code_t;
    max_keycode: Txcb_input_key_code_t;
    num_keys: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_input_key_info_t = ^Txcb_input_key_info_t;

  Txcb_input_key_info_iterator_t = record
    data: Pxcb_input_key_info_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_key_info_iterator_t = ^Txcb_input_key_info_iterator_t;

  Txcb_input_button_info_t = record
    class_id: Tuint8_t;
    len: Tuint8_t;
    num_buttons: Tuint16_t;
  end;
  Pxcb_input_button_info_t = ^Txcb_input_button_info_t;

  Txcb_input_button_info_iterator_t = record
    data: Pxcb_input_button_info_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_button_info_iterator_t = ^Txcb_input_button_info_iterator_t;

  Txcb_input_axis_info_t = record
    resolution: Tuint32_t;
    minimum: Tint32_t;
    maximum: Tint32_t;
  end;
  Pxcb_input_axis_info_t = ^Txcb_input_axis_info_t;

  Txcb_input_axis_info_iterator_t = record
    data: Pxcb_input_axis_info_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_axis_info_iterator_t = ^Txcb_input_axis_info_iterator_t;

  Txcb_input_valuator_info_t = record
    class_id: Tuint8_t;
    len: Tuint8_t;
    axes_len: Tuint8_t;
    mode: Tuint8_t;
    motion_size: Tuint32_t;
  end;
  Pxcb_input_valuator_info_t = ^Txcb_input_valuator_info_t;

  Txcb_input_valuator_info_iterator_t = record
    data: Pxcb_input_valuator_info_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_valuator_info_iterator_t = ^Txcb_input_valuator_info_iterator_t;

  Txcb_input_input_info_info_t = record
    key: record
      min_keycode: Txcb_input_key_code_t;
      max_keycode: Txcb_input_key_code_t;
      num_keys: Tuint16_t;
      pad0: array[0..1] of Tuint8_t;
      end;
    button: record
      num_buttons: Tuint16_t;
      end;
    valuator: record
      axes_len: Tuint8_t;
      mode: Tuint8_t;
      motion_size: Tuint32_t;
      axes: Pxcb_input_axis_info_t;
      end;
  end;
  Pxcb_input_input_info_info_t = ^Txcb_input_input_info_info_t;

  Txcb_input_input_info_t = record
    class_id: Tuint8_t;
    len: Tuint8_t;
  end;
  Pxcb_input_input_info_t = ^Txcb_input_input_info_t;

function xcb_input_input_info_info(R: Pxcb_input_input_info_t): pointer; cdecl; external libxcb_xinput;

type
  Txcb_input_input_info_iterator_t = record
    data: Pxcb_input_input_info_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_input_info_iterator_t = ^Txcb_input_input_info_iterator_t;

  Txcb_input_device_name_t = record
    len: Tuint8_t;
  end;
  Pxcb_input_device_name_t = ^Txcb_input_device_name_t;

  Txcb_input_device_name_iterator_t = record
    data: Pxcb_input_device_name_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_device_name_iterator_t = ^Txcb_input_device_name_iterator_t;

  Txcb_input_list_input_devices_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_list_input_devices_cookie_t = ^Txcb_input_list_input_devices_cookie_t;

const
  XCB_INPUT_LIST_INPUT_DEVICES_ = 2;

type
  Txcb_input_list_input_devices_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
  end;
  Pxcb_input_list_input_devices_request_t = ^Txcb_input_list_input_devices_request_t;

  Txcb_input_list_input_devices_reply_t = record
    response_type: Tuint8_t;
    xi_reply_type: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    devices_len: Tuint8_t;
    pad0: array[0..22] of Tuint8_t;
  end;
  Pxcb_input_list_input_devices_reply_t = ^Txcb_input_list_input_devices_reply_t;

  Pxcb_input_event_type_base_t = ^Txcb_input_event_type_base_t;
  Txcb_input_event_type_base_t = Tuint8_t;

  Txcb_input_event_type_base_iterator_t = record
    data: Pxcb_input_event_type_base_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_event_type_base_iterator_t = ^Txcb_input_event_type_base_iterator_t;

  Txcb_input_input_class_info_t = record
    class_id: Tuint8_t;
    event_type_base: Txcb_input_event_type_base_t;
  end;
  Pxcb_input_input_class_info_t = ^Txcb_input_input_class_info_t;

  Txcb_input_input_class_info_iterator_t = record
    data: Pxcb_input_input_class_info_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_input_class_info_iterator_t = ^Txcb_input_input_class_info_iterator_t;

  Txcb_input_open_device_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_open_device_cookie_t = ^Txcb_input_open_device_cookie_t;

const
  XCB_INPUT_OPEN_DEVICE_ = 3;

type
  Txcb_input_open_device_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    device_id: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_input_open_device_request_t = ^Txcb_input_open_device_request_t;

  Txcb_input_open_device_reply_t = record
    response_type: Tuint8_t;
    xi_reply_type: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    num_classes: Tuint8_t;
    pad0: array[0..22] of Tuint8_t;
  end;
  Pxcb_input_open_device_reply_t = ^Txcb_input_open_device_reply_t;

const
  XCB_INPUT_CLOSE_DEVICE_ = 4;

type
  Txcb_input_close_device_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    device_id: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_input_close_device_request_t = ^Txcb_input_close_device_request_t;

  Txcb_input_set_device_mode_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_set_device_mode_cookie_t = ^Txcb_input_set_device_mode_cookie_t;

const
  XCB_INPUT_SET_DEVICE_MODE_ = 5;

type
  Txcb_input_set_device_mode_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    device_id: Tuint8_t;
    mode: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_input_set_device_mode_request_t = ^Txcb_input_set_device_mode_request_t;

  Txcb_input_set_device_mode_reply_t = record
    response_type: Tuint8_t;
    xi_reply_type: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    status: Tuint8_t;
    pad0: array[0..22] of Tuint8_t;
  end;
  Pxcb_input_set_device_mode_reply_t = ^Txcb_input_set_device_mode_reply_t;

const
  XCB_INPUT_SELECT_EXTENSION_EVENT_ = 6;

type
  Txcb_input_select_extension_event_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    num_classes: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_input_select_extension_event_request_t = ^Txcb_input_select_extension_event_request_t;

  Txcb_input_get_selected_extension_events_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_get_selected_extension_events_cookie_t = ^Txcb_input_get_selected_extension_events_cookie_t;

const
  XCB_INPUT_GET_SELECTED_EXTENSION_EVENTS_ = 7;

type
  Txcb_input_get_selected_extension_events_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
  end;
  Pxcb_input_get_selected_extension_events_request_t = ^Txcb_input_get_selected_extension_events_request_t;

  Txcb_input_get_selected_extension_events_reply_t = record
    response_type: Tuint8_t;
    xi_reply_type: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    num_this_classes: Tuint16_t;
    num_all_classes: Tuint16_t;
    pad0: array[0..19] of Tuint8_t;
  end;
  Pxcb_input_get_selected_extension_events_reply_t = ^Txcb_input_get_selected_extension_events_reply_t;

type
  Pxcb_input_propagate_mode_t = ^Txcb_input_propagate_mode_t;
  Txcb_input_propagate_mode_t = longint;

const
  XCB_INPUT_PROPAGATE_MODE_ADD_TO_LIST = 0;
  XCB_INPUT_PROPAGATE_MODE_DELETE_FROM_LIST = 1;

const
  XCB_INPUT_CHANGE_DEVICE_DONT_PROPAGATE_LIST_ = 8;

type
  Txcb_input_change_device_dont_propagate_list_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    num_classes: Tuint16_t;
    mode: Tuint8_t;
    pad0: Tuint8_t;
  end;
  Pxcb_input_change_device_dont_propagate_list_request_t = ^Txcb_input_change_device_dont_propagate_list_request_t;

  Txcb_input_get_device_dont_propagate_list_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_get_device_dont_propagate_list_cookie_t = ^Txcb_input_get_device_dont_propagate_list_cookie_t;

const
  XCB_INPUT_GET_DEVICE_DONT_PROPAGATE_LIST_ = 9;

type
  Txcb_input_get_device_dont_propagate_list_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
  end;
  Pxcb_input_get_device_dont_propagate_list_request_t = ^Txcb_input_get_device_dont_propagate_list_request_t;

  Txcb_input_get_device_dont_propagate_list_reply_t = record
    response_type: Tuint8_t;
    xi_reply_type: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    num_classes: Tuint16_t;
    pad0: array[0..21] of Tuint8_t;
  end;
  Pxcb_input_get_device_dont_propagate_list_reply_t = ^Txcb_input_get_device_dont_propagate_list_reply_t;

  Txcb_input_device_time_coord_t = record
    time: Txcb_timestamp_t;
  end;
  Pxcb_input_device_time_coord_t = ^Txcb_input_device_time_coord_t;

  Txcb_input_device_time_coord_iterator_t = record
    data: Pxcb_input_device_time_coord_t;
    rem: longint;
    index: longint;
    num_axes: Tuint8_t;
  end;
  Pxcb_input_device_time_coord_iterator_t = ^Txcb_input_device_time_coord_iterator_t;

  Txcb_input_get_device_motion_events_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_get_device_motion_events_cookie_t = ^Txcb_input_get_device_motion_events_cookie_t;

const
  XCB_INPUT_GET_DEVICE_MOTION_EVENTS_ = 10;

type
  Txcb_input_get_device_motion_events_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    start: Txcb_timestamp_t;
    stop: Txcb_timestamp_t;
    device_id: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_input_get_device_motion_events_request_t = ^Txcb_input_get_device_motion_events_request_t;

  Txcb_input_get_device_motion_events_reply_t = record
    response_type: Tuint8_t;
    xi_reply_type: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    num_events: Tuint32_t;
    num_axes: Tuint8_t;
    device_mode: Tuint8_t;
    pad0: array[0..17] of Tuint8_t;
  end;
  Pxcb_input_get_device_motion_events_reply_t = ^Txcb_input_get_device_motion_events_reply_t;

  Txcb_input_change_keyboard_device_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_change_keyboard_device_cookie_t = ^Txcb_input_change_keyboard_device_cookie_t;

const
  XCB_INPUT_CHANGE_KEYBOARD_DEVICE_ = 11;

type
  Txcb_input_change_keyboard_device_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    device_id: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_input_change_keyboard_device_request_t = ^Txcb_input_change_keyboard_device_request_t;

  Txcb_input_change_keyboard_device_reply_t = record
    response_type: Tuint8_t;
    xi_reply_type: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    status: Tuint8_t;
    pad0: array[0..22] of Tuint8_t;
  end;
  Pxcb_input_change_keyboard_device_reply_t = ^Txcb_input_change_keyboard_device_reply_t;

  Txcb_input_change_pointer_device_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_change_pointer_device_cookie_t = ^Txcb_input_change_pointer_device_cookie_t;

const
  XCB_INPUT_CHANGE_POINTER_DEVICE_ = 12;

type
  Txcb_input_change_pointer_device_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    x_axis: Tuint8_t;
    y_axis: Tuint8_t;
    device_id: Tuint8_t;
    pad0: Tuint8_t;
  end;
  Pxcb_input_change_pointer_device_request_t = ^Txcb_input_change_pointer_device_request_t;

  Txcb_input_change_pointer_device_reply_t = record
    response_type: Tuint8_t;
    xi_reply_type: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    status: Tuint8_t;
    pad0: array[0..22] of Tuint8_t;
  end;
  Pxcb_input_change_pointer_device_reply_t = ^Txcb_input_change_pointer_device_reply_t;

  Txcb_input_grab_device_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_grab_device_cookie_t = ^Txcb_input_grab_device_cookie_t;

const
  XCB_INPUT_GRAB_DEVICE_ = 13;

type
  Txcb_input_grab_device_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    grab_window: Txcb_window_t;
    time: Txcb_timestamp_t;
    num_classes: Tuint16_t;
    this_device_mode: Tuint8_t;
    other_device_mode: Tuint8_t;
    owner_events: Tuint8_t;
    device_id: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_input_grab_device_request_t = ^Txcb_input_grab_device_request_t;

  Txcb_input_grab_device_reply_t = record
    response_type: Tuint8_t;
    xi_reply_type: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    status: Tuint8_t;
    pad0: array[0..22] of Tuint8_t;
  end;
  Pxcb_input_grab_device_reply_t = ^Txcb_input_grab_device_reply_t;

const
  XCB_INPUT_UNGRAB_DEVICE_ = 14;

type
  Txcb_input_ungrab_device_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    time: Txcb_timestamp_t;
    device_id: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_input_ungrab_device_request_t = ^Txcb_input_ungrab_device_request_t;

type
  Pxcb_input_modifier_device_t = ^Txcb_input_modifier_device_t;
  Txcb_input_modifier_device_t = longint;

const
  XCB_INPUT_MODIFIER_DEVICE_USE_X_KEYBOARD = 255;

const
  XCB_INPUT_GRAB_DEVICE_KEY_ = 15;

type
  Txcb_input_grab_device_key_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    grab_window: Txcb_window_t;
    num_classes: Tuint16_t;
    modifiers: Tuint16_t;
    modifier_device: Tuint8_t;
    grabbed_device: Tuint8_t;
    key: Tuint8_t;
    this_device_mode: Tuint8_t;
    other_device_mode: Tuint8_t;
    owner_events: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_input_grab_device_key_request_t = ^Txcb_input_grab_device_key_request_t;

const
  XCB_INPUT_UNGRAB_DEVICE_KEY_ = 16;

type
  Txcb_input_ungrab_device_key_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    grabWindow: Txcb_window_t;
    modifiers: Tuint16_t;
    modifier_device: Tuint8_t;
    key: Tuint8_t;
    grabbed_device: Tuint8_t;
  end;
  Pxcb_input_ungrab_device_key_request_t = ^Txcb_input_ungrab_device_key_request_t;

const
  XCB_INPUT_GRAB_DEVICE_BUTTON_ = 17;

type
  Txcb_input_grab_device_button_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    grab_window: Txcb_window_t;
    grabbed_device: Tuint8_t;
    modifier_device: Tuint8_t;
    num_classes: Tuint16_t;
    modifiers: Tuint16_t;
    this_device_mode: Tuint8_t;
    other_device_mode: Tuint8_t;
    button: Tuint8_t;
    owner_events: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_input_grab_device_button_request_t = ^Txcb_input_grab_device_button_request_t;

const
  XCB_INPUT_UNGRAB_DEVICE_BUTTON_ = 18;

type
  Txcb_input_ungrab_device_button_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    grab_window: Txcb_window_t;
    modifiers: Tuint16_t;
    modifier_device: Tuint8_t;
    button: Tuint8_t;
    grabbed_device: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_input_ungrab_device_button_request_t = ^Txcb_input_ungrab_device_button_request_t;

type
  Pxcb_input_device_input_mode_t = ^Txcb_input_device_input_mode_t;
  Txcb_input_device_input_mode_t = longint;

const
  XCB_INPUT_DEVICE_INPUT_MODE_ASYNC_THIS_DEVICE = 0;
  XCB_INPUT_DEVICE_INPUT_MODE_SYNC_THIS_DEVICE = 1;
  XCB_INPUT_DEVICE_INPUT_MODE_REPLAY_THIS_DEVICE = 2;
  XCB_INPUT_DEVICE_INPUT_MODE_ASYNC_OTHER_DEVICES = 3;
  XCB_INPUT_DEVICE_INPUT_MODE_ASYNC_ALL = 4;
  XCB_INPUT_DEVICE_INPUT_MODE_SYNC_ALL = 5;

const
  XCB_INPUT_ALLOW_DEVICE_EVENTS_ = 19;

type
  Txcb_input_allow_device_events_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    time: Txcb_timestamp_t;
    mode: Tuint8_t;
    device_id: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_input_allow_device_events_request_t = ^Txcb_input_allow_device_events_request_t;

  Txcb_input_get_device_focus_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_get_device_focus_cookie_t = ^Txcb_input_get_device_focus_cookie_t;

const
  XCB_INPUT_GET_DEVICE_FOCUS_ = 20;

type
  Txcb_input_get_device_focus_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    device_id: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_input_get_device_focus_request_t = ^Txcb_input_get_device_focus_request_t;

  Txcb_input_get_device_focus_reply_t = record
    response_type: Tuint8_t;
    xi_reply_type: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    focus: Txcb_window_t;
    time: Txcb_timestamp_t;
    revert_to: Tuint8_t;
    pad0: array[0..14] of Tuint8_t;
  end;
  Pxcb_input_get_device_focus_reply_t = ^Txcb_input_get_device_focus_reply_t;

const
  XCB_INPUT_SET_DEVICE_FOCUS_ = 21;

type
  Txcb_input_set_device_focus_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    focus: Txcb_window_t;
    time: Txcb_timestamp_t;
    revert_to: Tuint8_t;
    device_id: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_input_set_device_focus_request_t = ^Txcb_input_set_device_focus_request_t;

type
  Pxcb_input_feedback_class_t = ^Txcb_input_feedback_class_t;
  Txcb_input_feedback_class_t = longint;

const
  XCB_INPUT_FEEDBACK_CLASS_KEYBOARD = 0;
  XCB_INPUT_FEEDBACK_CLASS_POINTER = 1;
  XCB_INPUT_FEEDBACK_CLASS_STRING = 2;
  XCB_INPUT_FEEDBACK_CLASS_INTEGER = 3;
  XCB_INPUT_FEEDBACK_CLASS_LED = 4;
  XCB_INPUT_FEEDBACK_CLASS_BELL = 5;

type
  Txcb_input_kbd_feedback_state_t = record
    class_id: Tuint8_t;
    feedback_id: Tuint8_t;
    len: Tuint16_t;
    pitch: Tuint16_t;
    duration: Tuint16_t;
    led_mask: Tuint32_t;
    led_values: Tuint32_t;
    global_auto_repeat: Tuint8_t;
    click: Tuint8_t;
    percent: Tuint8_t;
    pad0: Tuint8_t;
    auto_repeats: array[0..31] of Tuint8_t;
  end;
  Pxcb_input_kbd_feedback_state_t = ^Txcb_input_kbd_feedback_state_t;

  Txcb_input_kbd_feedback_state_iterator_t = record
    data: Pxcb_input_kbd_feedback_state_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_kbd_feedback_state_iterator_t = ^Txcb_input_kbd_feedback_state_iterator_t;

  Txcb_input_ptr_feedback_state_t = record
    class_id: Tuint8_t;
    feedback_id: Tuint8_t;
    len: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
    accel_num: Tuint16_t;
    accel_denom: Tuint16_t;
    threshold: Tuint16_t;
  end;
  Pxcb_input_ptr_feedback_state_t = ^Txcb_input_ptr_feedback_state_t;

  Txcb_input_ptr_feedback_state_iterator_t = record
    data: Pxcb_input_ptr_feedback_state_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_ptr_feedback_state_iterator_t = ^Txcb_input_ptr_feedback_state_iterator_t;

  Txcb_input_integer_feedback_state_t = record
    class_id: Tuint8_t;
    feedback_id: Tuint8_t;
    len: Tuint16_t;
    resolution: Tuint32_t;
    min_value: Tint32_t;
    max_value: Tint32_t;
  end;
  Pxcb_input_integer_feedback_state_t = ^Txcb_input_integer_feedback_state_t;

  Txcb_input_integer_feedback_state_iterator_t = record
    data: Pxcb_input_integer_feedback_state_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_integer_feedback_state_iterator_t = ^Txcb_input_integer_feedback_state_iterator_t;

  Txcb_input_string_feedback_state_t = record
    class_id: Tuint8_t;
    feedback_id: Tuint8_t;
    len: Tuint16_t;
    max_symbols: Tuint16_t;
    num_keysyms: Tuint16_t;
  end;
  Pxcb_input_string_feedback_state_t = ^Txcb_input_string_feedback_state_t;

  Txcb_input_string_feedback_state_iterator_t = record
    data: Pxcb_input_string_feedback_state_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_string_feedback_state_iterator_t = ^Txcb_input_string_feedback_state_iterator_t;

  Txcb_input_bell_feedback_state_t = record
    class_id: Tuint8_t;
    feedback_id: Tuint8_t;
    len: Tuint16_t;
    percent: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
    pitch: Tuint16_t;
    duration: Tuint16_t;
  end;
  Pxcb_input_bell_feedback_state_t = ^Txcb_input_bell_feedback_state_t;

  Txcb_input_bell_feedback_state_iterator_t = record
    data: Pxcb_input_bell_feedback_state_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_bell_feedback_state_iterator_t = ^Txcb_input_bell_feedback_state_iterator_t;

  Txcb_input_led_feedback_state_t = record
    class_id: Tuint8_t;
    feedback_id: Tuint8_t;
    len: Tuint16_t;
    led_mask: Tuint32_t;
    led_values: Tuint32_t;
  end;
  Pxcb_input_led_feedback_state_t = ^Txcb_input_led_feedback_state_t;

  Txcb_input_led_feedback_state_iterator_t = record
    data: Pxcb_input_led_feedback_state_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_led_feedback_state_iterator_t = ^Txcb_input_led_feedback_state_iterator_t;

  Txcb_input_feedback_state_data_t = record
    keyboard: record
      pitch: Tuint16_t;
      duration: Tuint16_t;
      led_mask: Tuint32_t;
      led_values: Tuint32_t;
      global_auto_repeat: Tuint8_t;
      click: Tuint8_t;
      percent: Tuint8_t;
      pad0: Tuint8_t;
      auto_repeats: array[0..31] of Tuint8_t;
      end;
    pointer: record
      pad1: array[0..1] of Tuint8_t;
      accel_num: Tuint16_t;
      accel_denom: Tuint16_t;
      threshold: Tuint16_t;
      end;
    _string: record
      max_symbols: Tuint16_t;
      num_keysyms: Tuint16_t;
      keysyms: Pxcb_keysym_t;
      end;
    integer: record
      resolution: Tuint32_t;
      min_value: Tint32_t;
      max_value: Tint32_t;
      end;
    led: record
      led_mask: Tuint32_t;
      led_values: Tuint32_t;
      end;
    bell: record
      percent: Tuint8_t;
      pad2: array[0..2] of Tuint8_t;
      pitch: Tuint16_t;
      duration: Tuint16_t;
      end;
  end;
  Pxcb_input_feedback_state_data_t = ^Txcb_input_feedback_state_data_t;

  Txcb_input_feedback_state_t = record
    class_id: Tuint8_t;
    feedback_id: Tuint8_t;
    len: Tuint16_t;
  end;
  Pxcb_input_feedback_state_t = ^Txcb_input_feedback_state_t;

function xcb_input_feedback_state_data(R: Pxcb_input_feedback_state_t): pointer; cdecl; external libxcb_xinput;

type
  Txcb_input_feedback_state_iterator_t = record
    data: Pxcb_input_feedback_state_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_feedback_state_iterator_t = ^Txcb_input_feedback_state_iterator_t;

  Txcb_input_get_feedback_control_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_get_feedback_control_cookie_t = ^Txcb_input_get_feedback_control_cookie_t;

const
  XCB_INPUT_GET_FEEDBACK_CONTROL_ = 22;

type
  Txcb_input_get_feedback_control_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    device_id: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_input_get_feedback_control_request_t = ^Txcb_input_get_feedback_control_request_t;

  Txcb_input_get_feedback_control_reply_t = record
    response_type: Tuint8_t;
    xi_reply_type: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    num_feedbacks: Tuint16_t;
    pad0: array[0..21] of Tuint8_t;
  end;
  Pxcb_input_get_feedback_control_reply_t = ^Txcb_input_get_feedback_control_reply_t;

  Txcb_input_kbd_feedback_ctl_t = record
    class_id: Tuint8_t;
    feedback_id: Tuint8_t;
    len: Tuint16_t;
    key: Txcb_input_key_code_t;
    auto_repeat_mode: Tuint8_t;
    key_click_percent: Tint8_t;
    bell_percent: Tint8_t;
    bell_pitch: Tint16_t;
    bell_duration: Tint16_t;
    led_mask: Tuint32_t;
    led_values: Tuint32_t;
  end;
  Pxcb_input_kbd_feedback_ctl_t = ^Txcb_input_kbd_feedback_ctl_t;

  Txcb_input_kbd_feedback_ctl_iterator_t = record
    data: Pxcb_input_kbd_feedback_ctl_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_kbd_feedback_ctl_iterator_t = ^Txcb_input_kbd_feedback_ctl_iterator_t;

  Txcb_input_ptr_feedback_ctl_t = record
    class_id: Tuint8_t;
    feedback_id: Tuint8_t;
    len: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
    num: Tint16_t;
    denom: Tint16_t;
    threshold: Tint16_t;
  end;
  Pxcb_input_ptr_feedback_ctl_t = ^Txcb_input_ptr_feedback_ctl_t;

  Txcb_input_ptr_feedback_ctl_iterator_t = record
    data: Pxcb_input_ptr_feedback_ctl_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_ptr_feedback_ctl_iterator_t = ^Txcb_input_ptr_feedback_ctl_iterator_t;

  Txcb_input_integer_feedback_ctl_t = record
    class_id: Tuint8_t;
    feedback_id: Tuint8_t;
    len: Tuint16_t;
    int_to_display: Tint32_t;
  end;
  Pxcb_input_integer_feedback_ctl_t = ^Txcb_input_integer_feedback_ctl_t;

  Txcb_input_integer_feedback_ctl_iterator_t = record
    data: Pxcb_input_integer_feedback_ctl_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_integer_feedback_ctl_iterator_t = ^Txcb_input_integer_feedback_ctl_iterator_t;

  Txcb_input_string_feedback_ctl_t = record
    class_id: Tuint8_t;
    feedback_id: Tuint8_t;
    len: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
    num_keysyms: Tuint16_t;
  end;
  Pxcb_input_string_feedback_ctl_t = ^Txcb_input_string_feedback_ctl_t;

  Txcb_input_string_feedback_ctl_iterator_t = record
    data: Pxcb_input_string_feedback_ctl_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_string_feedback_ctl_iterator_t = ^Txcb_input_string_feedback_ctl_iterator_t;

  Txcb_input_bell_feedback_ctl_t = record
    class_id: Tuint8_t;
    feedback_id: Tuint8_t;
    len: Tuint16_t;
    percent: Tint8_t;
    pad0: array[0..2] of Tuint8_t;
    pitch: Tint16_t;
    duration: Tint16_t;
  end;
  Pxcb_input_bell_feedback_ctl_t = ^Txcb_input_bell_feedback_ctl_t;

  Txcb_input_bell_feedback_ctl_iterator_t = record
    data: Pxcb_input_bell_feedback_ctl_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_bell_feedback_ctl_iterator_t = ^Txcb_input_bell_feedback_ctl_iterator_t;

  Txcb_input_led_feedback_ctl_t = record
    class_id: Tuint8_t;
    feedback_id: Tuint8_t;
    len: Tuint16_t;
    led_mask: Tuint32_t;
    led_values: Tuint32_t;
  end;
  Pxcb_input_led_feedback_ctl_t = ^Txcb_input_led_feedback_ctl_t;

  Txcb_input_led_feedback_ctl_iterator_t = record
    data: Pxcb_input_led_feedback_ctl_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_led_feedback_ctl_iterator_t = ^Txcb_input_led_feedback_ctl_iterator_t;

  Txcb_input_feedback_ctl_data_t = record
    keyboard: record
      key: Txcb_input_key_code_t;
      auto_repeat_mode: Tuint8_t;
      key_click_percent: Tint8_t;
      bell_percent: Tint8_t;
      bell_pitch: Tint16_t;
      bell_duration: Tint16_t;
      led_mask: Tuint32_t;
      led_values: Tuint32_t;
      end;
    pointer: record
      pad0: array[0..1] of Tuint8_t;
      num: Tint16_t;
      denom: Tint16_t;
      threshold: Tint16_t;
      end;
    _string: record
      pad1: array[0..1] of Tuint8_t;
      num_keysyms: Tuint16_t;
      keysyms: Pxcb_keysym_t;
      end;
    integer: record
      int_to_display: Tint32_t;
      end;
    led: record
      led_mask: Tuint32_t;
      led_values: Tuint32_t;
      end;
    bell: record
      percent: Tint8_t;
      pad2: array[0..2] of Tuint8_t;
      pitch: Tint16_t;
      duration: Tint16_t;
      end;
  end;
  Pxcb_input_feedback_ctl_data_t = ^Txcb_input_feedback_ctl_data_t;

  Txcb_input_feedback_ctl_t = record
    class_id: Tuint8_t;
    feedback_id: Tuint8_t;
    len: Tuint16_t;
  end;
  Pxcb_input_feedback_ctl_t = ^Txcb_input_feedback_ctl_t;

function xcb_input_feedback_ctl_data(R: Pxcb_input_feedback_ctl_t): pointer; cdecl; external libxcb_xinput;

type
  Txcb_input_feedback_ctl_iterator_t = record
    data: Pxcb_input_feedback_ctl_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_feedback_ctl_iterator_t = ^Txcb_input_feedback_ctl_iterator_t;

type
  Pxcb_input_change_feedback_control_mask_t = ^Txcb_input_change_feedback_control_mask_t;
  Txcb_input_change_feedback_control_mask_t = longint;

const
  XCB_INPUT_CHANGE_FEEDBACK_CONTROL_MASK_KEY_CLICK_PERCENT = 1;
  XCB_INPUT_CHANGE_FEEDBACK_CONTROL_MASK_PERCENT = 2;
  XCB_INPUT_CHANGE_FEEDBACK_CONTROL_MASK_PITCH = 4;
  XCB_INPUT_CHANGE_FEEDBACK_CONTROL_MASK_DURATION = 8;
  XCB_INPUT_CHANGE_FEEDBACK_CONTROL_MASK_LED = 16;
  XCB_INPUT_CHANGE_FEEDBACK_CONTROL_MASK_LED_MODE = 32;
  XCB_INPUT_CHANGE_FEEDBACK_CONTROL_MASK_KEY = 64;
  XCB_INPUT_CHANGE_FEEDBACK_CONTROL_MASK_AUTO_REPEAT_MODE = 128;
  XCB_INPUT_CHANGE_FEEDBACK_CONTROL_MASK_STRING = 1;
  XCB_INPUT_CHANGE_FEEDBACK_CONTROL_MASK_INTEGER = 1;
  XCB_INPUT_CHANGE_FEEDBACK_CONTROL_MASK_ACCEL_NUM = 1;
  XCB_INPUT_CHANGE_FEEDBACK_CONTROL_MASK_ACCEL_DENOM = 2;
  XCB_INPUT_CHANGE_FEEDBACK_CONTROL_MASK_THRESHOLD = 4;

const
  XCB_INPUT_CHANGE_FEEDBACK_CONTROL_ = 23;

type
  Txcb_input_change_feedback_control_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    mask: Tuint32_t;
    device_id: Tuint8_t;
    feedback_id: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_input_change_feedback_control_request_t = ^Txcb_input_change_feedback_control_request_t;

  Txcb_input_get_device_key_mapping_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_get_device_key_mapping_cookie_t = ^Txcb_input_get_device_key_mapping_cookie_t;

const
  XCB_INPUT_GET_DEVICE_KEY_MAPPING_ = 24;

type
  Txcb_input_get_device_key_mapping_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    device_id: Tuint8_t;
    first_keycode: Txcb_input_key_code_t;
    count: Tuint8_t;
    pad0: Tuint8_t;
  end;
  Pxcb_input_get_device_key_mapping_request_t = ^Txcb_input_get_device_key_mapping_request_t;

  Txcb_input_get_device_key_mapping_reply_t = record
    response_type: Tuint8_t;
    xi_reply_type: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    keysyms_per_keycode: Tuint8_t;
    pad0: array[0..22] of Tuint8_t;
  end;
  Pxcb_input_get_device_key_mapping_reply_t = ^Txcb_input_get_device_key_mapping_reply_t;

const
  XCB_INPUT_CHANGE_DEVICE_KEY_MAPPING_ = 25;

type
  Txcb_input_change_device_key_mapping_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    device_id: Tuint8_t;
    first_keycode: Txcb_input_key_code_t;
    keysyms_per_keycode: Tuint8_t;
    keycode_count: Tuint8_t;
  end;
  Pxcb_input_change_device_key_mapping_request_t = ^Txcb_input_change_device_key_mapping_request_t;

  Txcb_input_get_device_modifier_mapping_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_get_device_modifier_mapping_cookie_t = ^Txcb_input_get_device_modifier_mapping_cookie_t;

const
  XCB_INPUT_GET_DEVICE_MODIFIER_MAPPING_ = 26;

type
  Txcb_input_get_device_modifier_mapping_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    device_id: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_input_get_device_modifier_mapping_request_t = ^Txcb_input_get_device_modifier_mapping_request_t;

  Txcb_input_get_device_modifier_mapping_reply_t = record
    response_type: Tuint8_t;
    xi_reply_type: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    keycodes_per_modifier: Tuint8_t;
    pad0: array[0..22] of Tuint8_t;
  end;
  Pxcb_input_get_device_modifier_mapping_reply_t = ^Txcb_input_get_device_modifier_mapping_reply_t;

  Txcb_input_set_device_modifier_mapping_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_set_device_modifier_mapping_cookie_t = ^Txcb_input_set_device_modifier_mapping_cookie_t;

const
  XCB_INPUT_SET_DEVICE_MODIFIER_MAPPING_ = 27;

type
  Txcb_input_set_device_modifier_mapping_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    device_id: Tuint8_t;
    keycodes_per_modifier: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_input_set_device_modifier_mapping_request_t = ^Txcb_input_set_device_modifier_mapping_request_t;

  Txcb_input_set_device_modifier_mapping_reply_t = record
    response_type: Tuint8_t;
    xi_reply_type: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    status: Tuint8_t;
    pad0: array[0..22] of Tuint8_t;
  end;
  Pxcb_input_set_device_modifier_mapping_reply_t = ^Txcb_input_set_device_modifier_mapping_reply_t;

  Txcb_input_get_device_button_mapping_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_get_device_button_mapping_cookie_t = ^Txcb_input_get_device_button_mapping_cookie_t;

const
  XCB_INPUT_GET_DEVICE_BUTTON_MAPPING_ = 28;

type
  Txcb_input_get_device_button_mapping_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    device_id: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_input_get_device_button_mapping_request_t = ^Txcb_input_get_device_button_mapping_request_t;

  Txcb_input_get_device_button_mapping_reply_t = record
    response_type: Tuint8_t;
    xi_reply_type: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    map_size: Tuint8_t;
    pad0: array[0..22] of Tuint8_t;
  end;
  Pxcb_input_get_device_button_mapping_reply_t = ^Txcb_input_get_device_button_mapping_reply_t;

  Txcb_input_set_device_button_mapping_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_set_device_button_mapping_cookie_t = ^Txcb_input_set_device_button_mapping_cookie_t;

const
  XCB_INPUT_SET_DEVICE_BUTTON_MAPPING_ = 29;

type
  Txcb_input_set_device_button_mapping_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    device_id: Tuint8_t;
    map_size: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_input_set_device_button_mapping_request_t = ^Txcb_input_set_device_button_mapping_request_t;

  Txcb_input_set_device_button_mapping_reply_t = record
    response_type: Tuint8_t;
    xi_reply_type: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    status: Tuint8_t;
    pad0: array[0..22] of Tuint8_t;
  end;
  Pxcb_input_set_device_button_mapping_reply_t = ^Txcb_input_set_device_button_mapping_reply_t;

  Txcb_input_key_state_t = record
    class_id: Tuint8_t;
    len: Tuint8_t;
    num_keys: Tuint8_t;
    pad0: Tuint8_t;
    keys: array[0..31] of Tuint8_t;
  end;
  Pxcb_input_key_state_t = ^Txcb_input_key_state_t;

  Txcb_input_key_state_iterator_t = record
    data: Pxcb_input_key_state_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_key_state_iterator_t = ^Txcb_input_key_state_iterator_t;

  Txcb_input_button_state_t = record
    class_id: Tuint8_t;
    len: Tuint8_t;
    num_buttons: Tuint8_t;
    pad0: Tuint8_t;
    buttons: array[0..31] of Tuint8_t;
  end;
  Pxcb_input_button_state_t = ^Txcb_input_button_state_t;

  Txcb_input_button_state_iterator_t = record
    data: Pxcb_input_button_state_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_button_state_iterator_t = ^Txcb_input_button_state_iterator_t;

type
  Pxcb_input_valuator_state_mode_mask_t = ^Txcb_input_valuator_state_mode_mask_t;
  Txcb_input_valuator_state_mode_mask_t = longint;

const
  XCB_INPUT_VALUATOR_STATE_MODE_MASK_DEVICE_MODE_ABSOLUTE = 1;
  XCB_INPUT_VALUATOR_STATE_MODE_MASK_OUT_OF_PROXIMITY = 2;

type
  Txcb_input_valuator_state_t = record
    class_id: Tuint8_t;
    len: Tuint8_t;
    num_valuators: Tuint8_t;
    mode: Tuint8_t;
  end;
  Pxcb_input_valuator_state_t = ^Txcb_input_valuator_state_t;

  Txcb_input_valuator_state_iterator_t = record
    data: Pxcb_input_valuator_state_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_valuator_state_iterator_t = ^Txcb_input_valuator_state_iterator_t;

  Txcb_input_input_state_data_t = record
    key: record
      num_keys: Tuint8_t;
      pad0: Tuint8_t;
      keys: array[0..31] of Tuint8_t;
      end;
    button: record
      num_buttons: Tuint8_t;
      pad1: Tuint8_t;
      buttons: array[0..31] of Tuint8_t;
      end;
    valuator: record
      num_valuators: Tuint8_t;
      mode: Tuint8_t;
      valuators: Pint32_t;
      end;
  end;
  Pxcb_input_input_state_data_t = ^Txcb_input_input_state_data_t;

  Txcb_input_input_state_t = record
    class_id: Tuint8_t;
    len: Tuint8_t;
  end;
  Pxcb_input_input_state_t = ^Txcb_input_input_state_t;

function xcb_input_input_state_data(R: Pxcb_input_input_state_t): pointer; cdecl; external libxcb_xinput;

type
  Txcb_input_input_state_iterator_t = record
    data: Pxcb_input_input_state_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_input_state_iterator_t = ^Txcb_input_input_state_iterator_t;

  Txcb_input_query_device_state_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_query_device_state_cookie_t = ^Txcb_input_query_device_state_cookie_t;

const
  XCB_INPUT_QUERY_DEVICE_STATE_ = 30;

type
  Txcb_input_query_device_state_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    device_id: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_input_query_device_state_request_t = ^Txcb_input_query_device_state_request_t;

  Txcb_input_query_device_state_reply_t = record
    response_type: Tuint8_t;
    xi_reply_type: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    num_classes: Tuint8_t;
    pad0: array[0..22] of Tuint8_t;
  end;
  Pxcb_input_query_device_state_reply_t = ^Txcb_input_query_device_state_reply_t;

const
  XCB_INPUT_DEVICE_BELL_ = 32;

type
  Txcb_input_device_bell_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    device_id: Tuint8_t;
    feedback_id: Tuint8_t;
    feedback_class: Tuint8_t;
    percent: Tint8_t;
  end;
  Pxcb_input_device_bell_request_t = ^Txcb_input_device_bell_request_t;

  Txcb_input_set_device_valuators_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_set_device_valuators_cookie_t = ^Txcb_input_set_device_valuators_cookie_t;

const
  XCB_INPUT_SET_DEVICE_VALUATORS_ = 33;

type
  Txcb_input_set_device_valuators_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    device_id: Tuint8_t;
    first_valuator: Tuint8_t;
    num_valuators: Tuint8_t;
    pad0: Tuint8_t;
  end;
  Pxcb_input_set_device_valuators_request_t = ^Txcb_input_set_device_valuators_request_t;

  Txcb_input_set_device_valuators_reply_t = record
    response_type: Tuint8_t;
    xi_reply_type: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    status: Tuint8_t;
    pad0: array[0..22] of Tuint8_t;
  end;
  Pxcb_input_set_device_valuators_reply_t = ^Txcb_input_set_device_valuators_reply_t;

type
  Pxcb_input_device_control_t = ^Txcb_input_device_control_t;
  Txcb_input_device_control_t = longint;

const
  XCB_INPUT_DEVICE_CONTROL_RESOLUTION = 1;
  XCB_INPUT_DEVICE_CONTROL_ABS_CALIB = 2;
  XCB_INPUT_DEVICE_CONTROL_CORE = 3;
  XCB_INPUT_DEVICE_CONTROL_ENABLE = 4;
  XCB_INPUT_DEVICE_CONTROL_ABS_AREA = 5;

type
  Txcb_input_device_resolution_state_t = record
    control_id: Tuint16_t;
    len: Tuint16_t;
    num_valuators: Tuint32_t;
  end;
  Pxcb_input_device_resolution_state_t = ^Txcb_input_device_resolution_state_t;

  Txcb_input_device_resolution_state_iterator_t = record
    data: Pxcb_input_device_resolution_state_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_device_resolution_state_iterator_t = ^Txcb_input_device_resolution_state_iterator_t;

  Txcb_input_device_abs_calib_state_t = record
    control_id: Tuint16_t;
    len: Tuint16_t;
    min_x: Tint32_t;
    max_x: Tint32_t;
    min_y: Tint32_t;
    max_y: Tint32_t;
    flip_x: Tuint32_t;
    flip_y: Tuint32_t;
    rotation: Tuint32_t;
    button_threshold: Tuint32_t;
  end;
  Pxcb_input_device_abs_calib_state_t = ^Txcb_input_device_abs_calib_state_t;

  Txcb_input_device_abs_calib_state_iterator_t = record
    data: Pxcb_input_device_abs_calib_state_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_device_abs_calib_state_iterator_t = ^Txcb_input_device_abs_calib_state_iterator_t;

  Txcb_input_device_abs_area_state_t = record
    control_id: Tuint16_t;
    len: Tuint16_t;
    offset_x: Tuint32_t;
    offset_y: Tuint32_t;
    width: Tuint32_t;
    height: Tuint32_t;
    screen: Tuint32_t;
    following: Tuint32_t;
  end;
  Pxcb_input_device_abs_area_state_t = ^Txcb_input_device_abs_area_state_t;

  Txcb_input_device_abs_area_state_iterator_t = record
    data: Pxcb_input_device_abs_area_state_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_device_abs_area_state_iterator_t = ^Txcb_input_device_abs_area_state_iterator_t;

  Txcb_input_device_core_state_t = record
    control_id: Tuint16_t;
    len: Tuint16_t;
    status: Tuint8_t;
    iscore: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_input_device_core_state_t = ^Txcb_input_device_core_state_t;

  Txcb_input_device_core_state_iterator_t = record
    data: Pxcb_input_device_core_state_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_device_core_state_iterator_t = ^Txcb_input_device_core_state_iterator_t;

  Txcb_input_device_enable_state_t = record
    control_id: Tuint16_t;
    len: Tuint16_t;
    enable: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_input_device_enable_state_t = ^Txcb_input_device_enable_state_t;

  Txcb_input_device_enable_state_iterator_t = record
    data: Pxcb_input_device_enable_state_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_device_enable_state_iterator_t = ^Txcb_input_device_enable_state_iterator_t;

  Txcb_input_device_state_data_t = record
    resolution: record
      num_valuators: Tuint32_t;
      resolution_values: Puint32_t;
      resolution_min: Puint32_t;
      resolution_max: Puint32_t;
      end;
    abs_calib: record
      min_x: Tint32_t;
      max_x: Tint32_t;
      min_y: Tint32_t;
      max_y: Tint32_t;
      flip_x: Tuint32_t;
      flip_y: Tuint32_t;
      rotation: Tuint32_t;
      button_threshold: Tuint32_t;
      end;
    core: record
      status: Tuint8_t;
      iscore: Tuint8_t;
      pad0: array[0..1] of Tuint8_t;
      end;
    enable: record
      enable: Tuint8_t;
      pad1: array[0..2] of Tuint8_t;
      end;
    abs_area: record
      offset_x: Tuint32_t;
      offset_y: Tuint32_t;
      width: Tuint32_t;
      height: Tuint32_t;
      screen: Tuint32_t;
      following: Tuint32_t;
      end;
  end;
  Pxcb_input_device_state_data_t = ^Txcb_input_device_state_data_t;

  Txcb_input_device_state_t = record
    control_id: Tuint16_t;
    len: Tuint16_t;
  end;
  Pxcb_input_device_state_t = ^Txcb_input_device_state_t;

function xcb_input_device_state_data(R: Pxcb_input_device_state_t): pointer; cdecl; external libxcb_xinput;

type
  Txcb_input_device_state_iterator_t = record
    data: Pxcb_input_device_state_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_device_state_iterator_t = ^Txcb_input_device_state_iterator_t;

  Txcb_input_get_device_control_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_get_device_control_cookie_t = ^Txcb_input_get_device_control_cookie_t;

const
  XCB_INPUT_GET_DEVICE_CONTROL_ = 34;

type
  Txcb_input_get_device_control_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    control_id: Tuint16_t;
    device_id: Tuint8_t;
    pad0: Tuint8_t;
  end;
  Pxcb_input_get_device_control_request_t = ^Txcb_input_get_device_control_request_t;

  Txcb_input_get_device_control_reply_t = record
    response_type: Tuint8_t;
    xi_reply_type: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    status: Tuint8_t;
    pad0: array[0..22] of Tuint8_t;
  end;
  Pxcb_input_get_device_control_reply_t = ^Txcb_input_get_device_control_reply_t;

  Txcb_input_device_resolution_ctl_t = record
    control_id: Tuint16_t;
    len: Tuint16_t;
    first_valuator: Tuint8_t;
    num_valuators: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_input_device_resolution_ctl_t = ^Txcb_input_device_resolution_ctl_t;

  Txcb_input_device_resolution_ctl_iterator_t = record
    data: Pxcb_input_device_resolution_ctl_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_device_resolution_ctl_iterator_t = ^Txcb_input_device_resolution_ctl_iterator_t;

  Txcb_input_device_abs_calib_ctl_t = record
    control_id: Tuint16_t;
    len: Tuint16_t;
    min_x: Tint32_t;
    max_x: Tint32_t;
    min_y: Tint32_t;
    max_y: Tint32_t;
    flip_x: Tuint32_t;
    flip_y: Tuint32_t;
    rotation: Tuint32_t;
    button_threshold: Tuint32_t;
  end;
  Pxcb_input_device_abs_calib_ctl_t = ^Txcb_input_device_abs_calib_ctl_t;

  Txcb_input_device_abs_calib_ctl_iterator_t = record
    data: Pxcb_input_device_abs_calib_ctl_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_device_abs_calib_ctl_iterator_t = ^Txcb_input_device_abs_calib_ctl_iterator_t;

  Txcb_input_device_abs_area_ctrl_t = record
    control_id: Tuint16_t;
    len: Tuint16_t;
    offset_x: Tuint32_t;
    offset_y: Tuint32_t;
    width: Tint32_t;
    height: Tint32_t;
    screen: Tint32_t;
    following: Tuint32_t;
  end;
  Pxcb_input_device_abs_area_ctrl_t = ^Txcb_input_device_abs_area_ctrl_t;

  Txcb_input_device_abs_area_ctrl_iterator_t = record
    data: Pxcb_input_device_abs_area_ctrl_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_device_abs_area_ctrl_iterator_t = ^Txcb_input_device_abs_area_ctrl_iterator_t;

  Txcb_input_device_core_ctrl_t = record
    control_id: Tuint16_t;
    len: Tuint16_t;
    status: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_input_device_core_ctrl_t = ^Txcb_input_device_core_ctrl_t;

  Txcb_input_device_core_ctrl_iterator_t = record
    data: Pxcb_input_device_core_ctrl_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_device_core_ctrl_iterator_t = ^Txcb_input_device_core_ctrl_iterator_t;

  Txcb_input_device_enable_ctrl_t = record
    control_id: Tuint16_t;
    len: Tuint16_t;
    enable: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_input_device_enable_ctrl_t = ^Txcb_input_device_enable_ctrl_t;

  Txcb_input_device_enable_ctrl_iterator_t = record
    data: Pxcb_input_device_enable_ctrl_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_device_enable_ctrl_iterator_t = ^Txcb_input_device_enable_ctrl_iterator_t;

  Txcb_input_device_ctl_data_t = record
    resolution: record
      first_valuator: Tuint8_t;
      num_valuators: Tuint8_t;
      pad0: array[0..1] of Tuint8_t;
      resolution_values: Puint32_t;
      end;
    abs_calib: record
      min_x: Tint32_t;
      max_x: Tint32_t;
      min_y: Tint32_t;
      max_y: Tint32_t;
      flip_x: Tuint32_t;
      flip_y: Tuint32_t;
      rotation: Tuint32_t;
      button_threshold: Tuint32_t;
      end;
    core: record
      status: Tuint8_t;
      pad1: array[0..2] of Tuint8_t;
      end;
    enable: record
      enable: Tuint8_t;
      pad2: array[0..2] of Tuint8_t;
      end;
    abs_area: record
      offset_x: Tuint32_t;
      offset_y: Tuint32_t;
      width: Tint32_t;
      height: Tint32_t;
      screen: Tint32_t;
      following: Tuint32_t;
      end;
  end;
  Pxcb_input_device_ctl_data_t = ^Txcb_input_device_ctl_data_t;

  Txcb_input_device_ctl_t = record
    control_id: Tuint16_t;
    len: Tuint16_t;
  end;
  Pxcb_input_device_ctl_t = ^Txcb_input_device_ctl_t;

function xcb_input_device_ctl_data(R: Pxcb_input_device_ctl_t): pointer; cdecl; external libxcb_xinput;

type
  Txcb_input_device_ctl_iterator_t = record
    data: Pxcb_input_device_ctl_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_device_ctl_iterator_t = ^Txcb_input_device_ctl_iterator_t;

  Txcb_input_change_device_control_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_change_device_control_cookie_t = ^Txcb_input_change_device_control_cookie_t;

const
  XCB_INPUT_CHANGE_DEVICE_CONTROL_ = 35;

type
  Txcb_input_change_device_control_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    control_id: Tuint16_t;
    device_id: Tuint8_t;
    pad0: Tuint8_t;
  end;
  Pxcb_input_change_device_control_request_t = ^Txcb_input_change_device_control_request_t;

  Txcb_input_change_device_control_reply_t = record
    response_type: Tuint8_t;
    xi_reply_type: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    status: Tuint8_t;
    pad0: array[0..22] of Tuint8_t;
  end;
  Pxcb_input_change_device_control_reply_t = ^Txcb_input_change_device_control_reply_t;

  Txcb_input_list_device_properties_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_list_device_properties_cookie_t = ^Txcb_input_list_device_properties_cookie_t;

const
  XCB_INPUT_LIST_DEVICE_PROPERTIES_ = 36;

type
  Txcb_input_list_device_properties_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    device_id: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_input_list_device_properties_request_t = ^Txcb_input_list_device_properties_request_t;

  Txcb_input_list_device_properties_reply_t = record
    response_type: Tuint8_t;
    xi_reply_type: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    num_atoms: Tuint16_t;
    pad0: array[0..21] of Tuint8_t;
  end;
  Pxcb_input_list_device_properties_reply_t = ^Txcb_input_list_device_properties_reply_t;

type
  Pxcb_input_property_format_t = ^Txcb_input_property_format_t;
  Txcb_input_property_format_t = longint;

const
  XCB_INPUT_PROPERTY_FORMAT_8_BITS = 8;
  XCB_INPUT_PROPERTY_FORMAT_16_BITS = 16;
  XCB_INPUT_PROPERTY_FORMAT_32_BITS = 32;

type
  Txcb_input_change_device_property_items_t = record
    data8: Puint8_t;
    data16: Puint16_t;
    data32: Puint32_t;
  end;
  Pxcb_input_change_device_property_items_t = ^Txcb_input_change_device_property_items_t;

const
  XCB_INPUT_CHANGE_DEVICE_PROPERTY_ = 37;

type
  Txcb_input_change_device_property_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    _property: Txcb_atom_t;
    _type: Txcb_atom_t;
    device_id: Tuint8_t;
    format: Tuint8_t;
    mode: Tuint8_t;
    pad0: Tuint8_t;
    num_items: Tuint32_t;
  end;
  Pxcb_input_change_device_property_request_t = ^Txcb_input_change_device_property_request_t;

const
  XCB_INPUT_DELETE_DEVICE_PROPERTY_ = 38;

type
  Txcb_input_delete_device_property_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    _property: Txcb_atom_t;
    device_id: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_input_delete_device_property_request_t = ^Txcb_input_delete_device_property_request_t;

  Txcb_input_get_device_property_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_get_device_property_cookie_t = ^Txcb_input_get_device_property_cookie_t;

const
  XCB_INPUT_GET_DEVICE_PROPERTY_ = 39;

type
  Txcb_input_get_device_property_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    _property: Txcb_atom_t;
    _type: Txcb_atom_t;
    offset: Tuint32_t;
    len: Tuint32_t;
    device_id: Tuint8_t;
    _delete: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_input_get_device_property_request_t = ^Txcb_input_get_device_property_request_t;

  Txcb_input_get_device_property_items_t = record
    data8: Puint8_t;
    data16: Puint16_t;
    data32: Puint32_t;
  end;
  Pxcb_input_get_device_property_items_t = ^Txcb_input_get_device_property_items_t;

  Txcb_input_get_device_property_reply_t = record
    response_type: Tuint8_t;
    xi_reply_type: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    _type: Txcb_atom_t;
    bytes_after: Tuint32_t;
    num_items: Tuint32_t;
    format: Tuint8_t;
    device_id: Tuint8_t;
    pad0: array[0..9] of Tuint8_t;
  end;
  Pxcb_input_get_device_property_reply_t = ^Txcb_input_get_device_property_reply_t;

type
  Pxcb_input_device_t = ^Txcb_input_device_t;
  Txcb_input_device_t = longint;

const
  XCB_INPUT_DEVICE_ALL = 0;
  XCB_INPUT_DEVICE_ALL_MASTER = 1;

type
  Txcb_input_group_info_t = record
    base: Tuint8_t;
    latched: Tuint8_t;
    locked: Tuint8_t;
    effective: Tuint8_t;
  end;
  Pxcb_input_group_info_t = ^Txcb_input_group_info_t;

  Txcb_input_group_info_iterator_t = record
    data: Pxcb_input_group_info_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_group_info_iterator_t = ^Txcb_input_group_info_iterator_t;

  Txcb_input_modifier_info_t = record
    base: Tuint32_t;
    latched: Tuint32_t;
    locked: Tuint32_t;
    effective: Tuint32_t;
  end;
  Pxcb_input_modifier_info_t = ^Txcb_input_modifier_info_t;

  Txcb_input_modifier_info_iterator_t = record
    data: Pxcb_input_modifier_info_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_modifier_info_iterator_t = ^Txcb_input_modifier_info_iterator_t;

  Txcb_input_xi_query_pointer_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_xi_query_pointer_cookie_t = ^Txcb_input_xi_query_pointer_cookie_t;

const
  XCB_INPUT_XI_QUERY_POINTER_ = 40;

type
  Txcb_input_xi_query_pointer_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    deviceid: Txcb_input_device_id_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_input_xi_query_pointer_request_t = ^Txcb_input_xi_query_pointer_request_t;

  Txcb_input_xi_query_pointer_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    root: Txcb_window_t;
    child: Txcb_window_t;
    root_x: Txcb_input_fp1616_t;
    root_y: Txcb_input_fp1616_t;
    win_x: Txcb_input_fp1616_t;
    win_y: Txcb_input_fp1616_t;
    same_screen: Tuint8_t;
    pad1: Tuint8_t;
    buttons_len: Tuint16_t;
    mods: Txcb_input_modifier_info_t;
    group: Txcb_input_group_info_t;
  end;
  Pxcb_input_xi_query_pointer_reply_t = ^Txcb_input_xi_query_pointer_reply_t;

const
  XCB_INPUT_XI_WARP_POINTER_ = 41;

type
  Txcb_input_xi_warp_pointer_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    src_win: Txcb_window_t;
    dst_win: Txcb_window_t;
    src_x: Txcb_input_fp1616_t;
    src_y: Txcb_input_fp1616_t;
    src_width: Tuint16_t;
    src_height: Tuint16_t;
    dst_x: Txcb_input_fp1616_t;
    dst_y: Txcb_input_fp1616_t;
    deviceid: Txcb_input_device_id_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_input_xi_warp_pointer_request_t = ^Txcb_input_xi_warp_pointer_request_t;

const
  XCB_INPUT_XI_CHANGE_CURSOR_ = 42;

type
  Txcb_input_xi_change_cursor_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    cursor: Txcb_cursor_t;
    deviceid: Txcb_input_device_id_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_input_xi_change_cursor_request_t = ^Txcb_input_xi_change_cursor_request_t;

type
  Pxcb_input_hierarchy_change_type_t = ^Txcb_input_hierarchy_change_type_t;
  Txcb_input_hierarchy_change_type_t = longint;

const
  XCB_INPUT_HIERARCHY_CHANGE_TYPE_ADD_MASTER = 1;
  XCB_INPUT_HIERARCHY_CHANGE_TYPE_REMOVE_MASTER = 2;
  XCB_INPUT_HIERARCHY_CHANGE_TYPE_ATTACH_SLAVE = 3;
  XCB_INPUT_HIERARCHY_CHANGE_TYPE_DETACH_SLAVE = 4;

type
  Pxcb_input_change_mode_t = ^Txcb_input_change_mode_t;
  Txcb_input_change_mode_t = longint;

const
  XCB_INPUT_CHANGE_MODE_ATTACH = 1;
  XCB_INPUT_CHANGE_MODE_FLOAT = 2;

type
  Txcb_input_add_master_t = record
    _type: Tuint16_t;
    len: Tuint16_t;
    name_len: Tuint16_t;
    send_core: Tuint8_t;
    enable: Tuint8_t;
  end;
  Pxcb_input_add_master_t = ^Txcb_input_add_master_t;

  Txcb_input_add_master_iterator_t = record
    data: Pxcb_input_add_master_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_add_master_iterator_t = ^Txcb_input_add_master_iterator_t;

  Txcb_input_remove_master_t = record
    _type: Tuint16_t;
    len: Tuint16_t;
    deviceid: Txcb_input_device_id_t;
    return_mode: Tuint8_t;
    pad0: Tuint8_t;
    return_pointer: Txcb_input_device_id_t;
    return_keyboard: Txcb_input_device_id_t;
  end;
  Pxcb_input_remove_master_t = ^Txcb_input_remove_master_t;

  Txcb_input_remove_master_iterator_t = record
    data: Pxcb_input_remove_master_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_remove_master_iterator_t = ^Txcb_input_remove_master_iterator_t;

  Txcb_input_attach_slave_t = record
    _type: Tuint16_t;
    len: Tuint16_t;
    deviceid: Txcb_input_device_id_t;
    master: Txcb_input_device_id_t;
  end;
  Pxcb_input_attach_slave_t = ^Txcb_input_attach_slave_t;

  Txcb_input_attach_slave_iterator_t = record
    data: Pxcb_input_attach_slave_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_attach_slave_iterator_t = ^Txcb_input_attach_slave_iterator_t;

  Txcb_input_detach_slave_t = record
    _type: Tuint16_t;
    len: Tuint16_t;
    deviceid: Txcb_input_device_id_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_input_detach_slave_t = ^Txcb_input_detach_slave_t;

  Txcb_input_detach_slave_iterator_t = record
    data: Pxcb_input_detach_slave_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_detach_slave_iterator_t = ^Txcb_input_detach_slave_iterator_t;

  Txcb_input_hierarchy_change_data_t = record
    add_master: record
      name_len: Tuint16_t;
      send_core: Tuint8_t;
      enable: Tuint8_t;
      name: pchar;
      end;
    remove_master: record
      deviceid: Txcb_input_device_id_t;
      return_mode: Tuint8_t;
      pad1: Tuint8_t;
      return_pointer: Txcb_input_device_id_t;
      return_keyboard: Txcb_input_device_id_t;
      end;
    attach_slave: record
      deviceid: Txcb_input_device_id_t;
      master: Txcb_input_device_id_t;
      end;
    detach_slave: record
      deviceid: Txcb_input_device_id_t;
      pad2: array[0..1] of Tuint8_t;
      end;
  end;
  Pxcb_input_hierarchy_change_data_t = ^Txcb_input_hierarchy_change_data_t;

  Txcb_input_hierarchy_change_t = record
    _type: Tuint16_t;
    len: Tuint16_t;
  end;
  Pxcb_input_hierarchy_change_t = ^Txcb_input_hierarchy_change_t;

function xcb_input_hierarchy_change_data(R: Pxcb_input_hierarchy_change_t): pointer; cdecl; external libxcb_xinput;

type
  Txcb_input_hierarchy_change_iterator_t = record
    data: Pxcb_input_hierarchy_change_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_hierarchy_change_iterator_t = ^Txcb_input_hierarchy_change_iterator_t;

const
  XCB_INPUT_XI_CHANGE_HIERARCHY_ = 43;

type
  Txcb_input_xi_change_hierarchy_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    num_changes: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_input_xi_change_hierarchy_request_t = ^Txcb_input_xi_change_hierarchy_request_t;

const
  XCB_INPUT_XI_SET_CLIENT_POINTER_ = 44;

type
  Txcb_input_xi_set_client_pointer_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    deviceid: Txcb_input_device_id_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_input_xi_set_client_pointer_request_t = ^Txcb_input_xi_set_client_pointer_request_t;

  Txcb_input_xi_get_client_pointer_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_xi_get_client_pointer_cookie_t = ^Txcb_input_xi_get_client_pointer_cookie_t;

const
  XCB_INPUT_XI_GET_CLIENT_POINTER_ = 45;

type
  Txcb_input_xi_get_client_pointer_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
  end;
  Pxcb_input_xi_get_client_pointer_request_t = ^Txcb_input_xi_get_client_pointer_request_t;

  Txcb_input_xi_get_client_pointer_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    set_: Tuint8_t;
    pad1: Tuint8_t;
    deviceid: Txcb_input_device_id_t;
    pad2: array[0..19] of Tuint8_t;
  end;
  Pxcb_input_xi_get_client_pointer_reply_t = ^Txcb_input_xi_get_client_pointer_reply_t;

type
  Pxcb_input_xi_event_mask_t = ^Txcb_input_xi_event_mask_t;
  Txcb_input_xi_event_mask_t = longint;

const
  XCB_INPUT_XI_EVENT_MASK_DEVICE_CHANGED = 2;
  XCB_INPUT_XI_EVENT_MASK_KEY_PRESS = 4;
  XCB_INPUT_XI_EVENT_MASK_KEY_RELEASE = 8;
  XCB_INPUT_XI_EVENT_MASK_BUTTON_PRESS = 16;
  XCB_INPUT_XI_EVENT_MASK_BUTTON_RELEASE = 32;
  XCB_INPUT_XI_EVENT_MASK_MOTION = 64;
  XCB_INPUT_XI_EVENT_MASK_ENTER = 128;
  XCB_INPUT_XI_EVENT_MASK_LEAVE = 256;
  XCB_INPUT_XI_EVENT_MASK_FOCUS_IN = 512;
  XCB_INPUT_XI_EVENT_MASK_FOCUS_OUT = 1024;
  XCB_INPUT_XI_EVENT_MASK_HIERARCHY = 2048;
  XCB_INPUT_XI_EVENT_MASK_PROPERTY = 4096;
  XCB_INPUT_XI_EVENT_MASK_RAW_KEY_PRESS = 8192;
  XCB_INPUT_XI_EVENT_MASK_RAW_KEY_RELEASE = 16384;
  XCB_INPUT_XI_EVENT_MASK_RAW_BUTTON_PRESS = 32768;
  XCB_INPUT_XI_EVENT_MASK_RAW_BUTTON_RELEASE = 65536;
  XCB_INPUT_XI_EVENT_MASK_RAW_MOTION = 131072;
  XCB_INPUT_XI_EVENT_MASK_TOUCH_BEGIN = 262144;
  XCB_INPUT_XI_EVENT_MASK_TOUCH_UPDATE = 524288;
  XCB_INPUT_XI_EVENT_MASK_TOUCH_END = 1048576;
  XCB_INPUT_XI_EVENT_MASK_TOUCH_OWNERSHIP = 2097152;
  XCB_INPUT_XI_EVENT_MASK_RAW_TOUCH_BEGIN = 4194304;
  XCB_INPUT_XI_EVENT_MASK_RAW_TOUCH_UPDATE = 8388608;
  XCB_INPUT_XI_EVENT_MASK_RAW_TOUCH_END = 16777216;
  XCB_INPUT_XI_EVENT_MASK_BARRIER_HIT = 33554432;
  XCB_INPUT_XI_EVENT_MASK_BARRIER_LEAVE = 67108864;

type
  Txcb_input_event_mask_t = record
    deviceid: Txcb_input_device_id_t;
    mask_len: Tuint16_t;
  end;
  Pxcb_input_event_mask_t = ^Txcb_input_event_mask_t;

  Txcb_input_event_mask_iterator_t = record
    data: Pxcb_input_event_mask_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_event_mask_iterator_t = ^Txcb_input_event_mask_iterator_t;

const
  XCB_INPUT_XI_SELECT_EVENTS_ = 46;

type
  Txcb_input_xi_select_events_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    num_mask: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_input_xi_select_events_request_t = ^Txcb_input_xi_select_events_request_t;

  Txcb_input_xi_query_version_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_xi_query_version_cookie_t = ^Txcb_input_xi_query_version_cookie_t;

const
  XCB_INPUT_XI_QUERY_VERSION_ = 47;

type
  Txcb_input_xi_query_version_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    major_version: Tuint16_t;
    minor_version: Tuint16_t;
  end;
  Pxcb_input_xi_query_version_request_t = ^Txcb_input_xi_query_version_request_t;

  Txcb_input_xi_query_version_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    major_version: Tuint16_t;
    minor_version: Tuint16_t;
    pad1: array[0..19] of Tuint8_t;
  end;
  Pxcb_input_xi_query_version_reply_t = ^Txcb_input_xi_query_version_reply_t;

type
  Pxcb_input_device_class_type_t = ^Txcb_input_device_class_type_t;
  Txcb_input_device_class_type_t = longint;

const
  XCB_INPUT_DEVICE_CLASS_TYPE_KEY = 0;
  XCB_INPUT_DEVICE_CLASS_TYPE_BUTTON = 1;
  XCB_INPUT_DEVICE_CLASS_TYPE_VALUATOR = 2;
  XCB_INPUT_DEVICE_CLASS_TYPE_SCROLL = 3;
  XCB_INPUT_DEVICE_CLASS_TYPE_TOUCH = 8;
  XCB_INPUT_DEVICE_CLASS_TYPE_GESTURE = 9;

type
  Pxcb_input_device_type_t = ^Txcb_input_device_type_t;
  Txcb_input_device_type_t = longint;

const
  XCB_INPUT_DEVICE_TYPE_MASTER_POINTER = 1;
  XCB_INPUT_DEVICE_TYPE_MASTER_KEYBOARD = 2;
  XCB_INPUT_DEVICE_TYPE_SLAVE_POINTER = 3;
  XCB_INPUT_DEVICE_TYPE_SLAVE_KEYBOARD = 4;
  XCB_INPUT_DEVICE_TYPE_FLOATING_SLAVE = 5;

type
  Pxcb_input_scroll_flags_t = ^Txcb_input_scroll_flags_t;
  Txcb_input_scroll_flags_t = longint;

const
  XCB_INPUT_SCROLL_FLAGS_NO_EMULATION = 1;
  XCB_INPUT_SCROLL_FLAGS_PREFERRED = 2;

type
  Pxcb_input_scroll_type_t = ^Txcb_input_scroll_type_t;
  Txcb_input_scroll_type_t = longint;

const
  XCB_INPUT_SCROLL_TYPE_VERTICAL = 1;
  XCB_INPUT_SCROLL_TYPE_HORIZONTAL = 2;

type
  Pxcb_input_touch_mode_t = ^Txcb_input_touch_mode_t;
  Txcb_input_touch_mode_t = longint;

const
  XCB_INPUT_TOUCH_MODE_DIRECT = 1;
  XCB_INPUT_TOUCH_MODE_DEPENDENT = 2;

type
  Txcb_input_button_class_t = record
    _type: Tuint16_t;
    len: Tuint16_t;
    sourceid: Txcb_input_device_id_t;
    num_buttons: Tuint16_t;
  end;
  Pxcb_input_button_class_t = ^Txcb_input_button_class_t;

  Txcb_input_button_class_iterator_t = record
    data: Pxcb_input_button_class_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_button_class_iterator_t = ^Txcb_input_button_class_iterator_t;

  Txcb_input_key_class_t = record
    _type: Tuint16_t;
    len: Tuint16_t;
    sourceid: Txcb_input_device_id_t;
    num_keys: Tuint16_t;
  end;
  Pxcb_input_key_class_t = ^Txcb_input_key_class_t;

  Txcb_input_key_class_iterator_t = record
    data: Pxcb_input_key_class_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_key_class_iterator_t = ^Txcb_input_key_class_iterator_t;

  Txcb_input_scroll_class_t = record
    _type: Tuint16_t;
    len: Tuint16_t;
    sourceid: Txcb_input_device_id_t;
    number: Tuint16_t;
    scroll_type: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
    flags: Tuint32_t;
    increment: Txcb_input_fp3232_t;
  end;
  Pxcb_input_scroll_class_t = ^Txcb_input_scroll_class_t;

  Txcb_input_scroll_class_iterator_t = record
    data: Pxcb_input_scroll_class_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_scroll_class_iterator_t = ^Txcb_input_scroll_class_iterator_t;

  Txcb_input_touch_class_t = record
    _type: Tuint16_t;
    len: Tuint16_t;
    sourceid: Txcb_input_device_id_t;
    mode: Tuint8_t;
    num_touches: Tuint8_t;
  end;
  Pxcb_input_touch_class_t = ^Txcb_input_touch_class_t;

  Txcb_input_touch_class_iterator_t = record
    data: Pxcb_input_touch_class_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_touch_class_iterator_t = ^Txcb_input_touch_class_iterator_t;

  Txcb_input_gesture_class_t = record
    _type: Tuint16_t;
    len: Tuint16_t;
    sourceid: Txcb_input_device_id_t;
    num_touches: Tuint8_t;
    pad0: Tuint8_t;
  end;
  Pxcb_input_gesture_class_t = ^Txcb_input_gesture_class_t;

  Txcb_input_gesture_class_iterator_t = record
    data: Pxcb_input_gesture_class_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_gesture_class_iterator_t = ^Txcb_input_gesture_class_iterator_t;

  Txcb_input_valuator_class_t = record
    _type: Tuint16_t;
    len: Tuint16_t;
    sourceid: Txcb_input_device_id_t;
    number: Tuint16_t;
    _label: Txcb_atom_t;
    min: Txcb_input_fp3232_t;
    max: Txcb_input_fp3232_t;
    value: Txcb_input_fp3232_t;
    resolution: Tuint32_t;
    mode: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_input_valuator_class_t = ^Txcb_input_valuator_class_t;

  Txcb_input_valuator_class_iterator_t = record
    data: Pxcb_input_valuator_class_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_valuator_class_iterator_t = ^Txcb_input_valuator_class_iterator_t;

  Txcb_input_device_class_data_t = record
    key: record
      num_keys: Tuint16_t;
      keys: Puint32_t;
      end;
    button: record
      num_buttons: Tuint16_t;
      state: Puint32_t;
      labels: Pxcb_atom_t;
      end;
    valuator: record
      number: Tuint16_t;
      _label: Txcb_atom_t;
      min: Txcb_input_fp3232_t;
      max: Txcb_input_fp3232_t;
      value: Txcb_input_fp3232_t;
      resolution: Tuint32_t;
      mode: Tuint8_t;
      pad0: array[0..2] of Tuint8_t;
      end;
    scroll: record
      number: Tuint16_t;
      scroll_type: Tuint16_t;
      pad1: array[0..1] of Tuint8_t;
      flags: Tuint32_t;
      increment: Txcb_input_fp3232_t;
      end;
    touch: record
      mode: Tuint8_t;
      num_touches: Tuint8_t;
      end;
    gesture: record
      num_touches: Tuint8_t;
      pad2: Tuint8_t;
      end;
  end;
  Pxcb_input_device_class_data_t = ^Txcb_input_device_class_data_t;

  Txcb_input_device_class_t = record
    _type: Tuint16_t;
    len: Tuint16_t;
    sourceid: Txcb_input_device_id_t;
  end;
  Pxcb_input_device_class_t = ^Txcb_input_device_class_t;

function xcb_input_device_class_data(R: Pxcb_input_device_class_t): pointer; cdecl; external libxcb_xinput;

type
  Txcb_input_device_class_iterator_t = record
    data: Pxcb_input_device_class_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_device_class_iterator_t = ^Txcb_input_device_class_iterator_t;

  Txcb_input_xi_device_info_t = record
    deviceid: Txcb_input_device_id_t;
    _type: Tuint16_t;
    attachment: Txcb_input_device_id_t;
    num_classes: Tuint16_t;
    name_len: Tuint16_t;
    enabled: Tuint8_t;
    pad0: Tuint8_t;
  end;
  Pxcb_input_xi_device_info_t = ^Txcb_input_xi_device_info_t;

  Txcb_input_xi_device_info_iterator_t = record
    data: Pxcb_input_xi_device_info_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_xi_device_info_iterator_t = ^Txcb_input_xi_device_info_iterator_t;

  Txcb_input_xi_query_device_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_xi_query_device_cookie_t = ^Txcb_input_xi_query_device_cookie_t;

const
  XCB_INPUT_XI_QUERY_DEVICE_ = 48;

type
  Txcb_input_xi_query_device_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    deviceid: Txcb_input_device_id_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_input_xi_query_device_request_t = ^Txcb_input_xi_query_device_request_t;

  Txcb_input_xi_query_device_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    num_infos: Tuint16_t;
    pad1: array[0..21] of Tuint8_t;
  end;
  Pxcb_input_xi_query_device_reply_t = ^Txcb_input_xi_query_device_reply_t;

const
  XCB_INPUT_XI_SET_FOCUS_ = 49;

type
  Txcb_input_xi_set_focus_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    time: Txcb_timestamp_t;
    deviceid: Txcb_input_device_id_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_input_xi_set_focus_request_t = ^Txcb_input_xi_set_focus_request_t;

  Txcb_input_xi_get_focus_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_xi_get_focus_cookie_t = ^Txcb_input_xi_get_focus_cookie_t;

const
  XCB_INPUT_XI_GET_FOCUS_ = 50;

type
  Txcb_input_xi_get_focus_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    deviceid: Txcb_input_device_id_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_input_xi_get_focus_request_t = ^Txcb_input_xi_get_focus_request_t;

  Txcb_input_xi_get_focus_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    focus: Txcb_window_t;
    pad1: array[0..19] of Tuint8_t;
  end;
  Pxcb_input_xi_get_focus_reply_t = ^Txcb_input_xi_get_focus_reply_t;

type
  Pxcb_input_grab_owner_t = ^Txcb_input_grab_owner_t;
  Txcb_input_grab_owner_t = longint;

const
  XCB_INPUT_GRAB_OWNER_NO_OWNER = 0;
  XCB_INPUT_GRAB_OWNER_OWNER = 1;

type
  Txcb_input_xi_grab_device_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_xi_grab_device_cookie_t = ^Txcb_input_xi_grab_device_cookie_t;

const
  XCB_INPUT_XI_GRAB_DEVICE_ = 51;

type
  Txcb_input_xi_grab_device_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
    time: Txcb_timestamp_t;
    cursor: Txcb_cursor_t;
    deviceid: Txcb_input_device_id_t;
    mode: Tuint8_t;
    paired_device_mode: Tuint8_t;
    owner_events: Tuint8_t;
    pad0: Tuint8_t;
    mask_len: Tuint16_t;
  end;
  Pxcb_input_xi_grab_device_request_t = ^Txcb_input_xi_grab_device_request_t;

  Txcb_input_xi_grab_device_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    status: Tuint8_t;
    pad1: array[0..22] of Tuint8_t;
  end;
  Pxcb_input_xi_grab_device_reply_t = ^Txcb_input_xi_grab_device_reply_t;

const
  XCB_INPUT_XI_UNGRAB_DEVICE_ = 52;

type
  Txcb_input_xi_ungrab_device_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    time: Txcb_timestamp_t;
    deviceid: Txcb_input_device_id_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_input_xi_ungrab_device_request_t = ^Txcb_input_xi_ungrab_device_request_t;

type
  Pxcb_input_event_mode_t = ^Txcb_input_event_mode_t;
  Txcb_input_event_mode_t = longint;

const
  XCB_INPUT_EVENT_MODE_ASYNC_DEVICE = 0;
  XCB_INPUT_EVENT_MODE_SYNC_DEVICE = 1;
  XCB_INPUT_EVENT_MODE_REPLAY_DEVICE = 2;
  XCB_INPUT_EVENT_MODE_ASYNC_PAIRED_DEVICE = 3;
  XCB_INPUT_EVENT_MODE_ASYNC_PAIR = 4;
  XCB_INPUT_EVENT_MODE_SYNC_PAIR = 5;
  XCB_INPUT_EVENT_MODE_ACCEPT_TOUCH = 6;
  XCB_INPUT_EVENT_MODE_REJECT_TOUCH = 7;

const
  XCB_INPUT_XI_ALLOW_EVENTS_ = 53;

type
  Txcb_input_xi_allow_events_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    time: Txcb_timestamp_t;
    deviceid: Txcb_input_device_id_t;
    event_mode: Tuint8_t;
    pad0: Tuint8_t;
    touchid: Tuint32_t;
    grab_window: Txcb_window_t;
  end;
  Pxcb_input_xi_allow_events_request_t = ^Txcb_input_xi_allow_events_request_t;

type
  Pxcb_input_grab_mode_22_t = ^Txcb_input_grab_mode_22_t;
  Txcb_input_grab_mode_22_t = longint;

const
  XCB_INPUT_GRAB_MODE_22_SYNC = 0;
  XCB_INPUT_GRAB_MODE_22_ASYNC = 1;
  XCB_INPUT_GRAB_MODE_22_TOUCH = 2;

type
  Pxcb_input_grab_type_t = ^Txcb_input_grab_type_t;
  Txcb_input_grab_type_t = longint;

const
  XCB_INPUT_GRAB_TYPE_BUTTON = 0;
  XCB_INPUT_GRAB_TYPE_KEYCODE = 1;
  XCB_INPUT_GRAB_TYPE_ENTER = 2;
  XCB_INPUT_GRAB_TYPE_FOCUS_IN = 3;
  XCB_INPUT_GRAB_TYPE_TOUCH_BEGIN = 4;
  XCB_INPUT_GRAB_TYPE_GESTURE_PINCH_BEGIN = 5;
  XCB_INPUT_GRAB_TYPE_GESTURE_SWIPE_BEGIN = 6;

type
  Pxcb_input_modifier_mask_t = ^Txcb_input_modifier_mask_t;
  Txcb_input_modifier_mask_t = longint;

const
  XCB_INPUT_MODIFIER_MASK_ANY = 2147483648;

type
  Txcb_input_grab_modifier_info_t = record
    modifiers: Tuint32_t;
    status: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_input_grab_modifier_info_t = ^Txcb_input_grab_modifier_info_t;

  Txcb_input_grab_modifier_info_iterator_t = record
    data: Pxcb_input_grab_modifier_info_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_grab_modifier_info_iterator_t = ^Txcb_input_grab_modifier_info_iterator_t;

  Txcb_input_xi_passive_grab_device_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_xi_passive_grab_device_cookie_t = ^Txcb_input_xi_passive_grab_device_cookie_t;

const
  XCB_INPUT_XI_PASSIVE_GRAB_DEVICE_ = 54;

type
  Txcb_input_xi_passive_grab_device_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    time: Txcb_timestamp_t;
    grab_window: Txcb_window_t;
    cursor: Txcb_cursor_t;
    detail: Tuint32_t;
    deviceid: Txcb_input_device_id_t;
    num_modifiers: Tuint16_t;
    mask_len: Tuint16_t;
    grab_type: Tuint8_t;
    grab_mode: Tuint8_t;
    paired_device_mode: Tuint8_t;
    owner_events: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_input_xi_passive_grab_device_request_t = ^Txcb_input_xi_passive_grab_device_request_t;

  Txcb_input_xi_passive_grab_device_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    num_modifiers: Tuint16_t;
    pad1: array[0..21] of Tuint8_t;
  end;
  Pxcb_input_xi_passive_grab_device_reply_t = ^Txcb_input_xi_passive_grab_device_reply_t;

const
  XCB_INPUT_XI_PASSIVE_UNGRAB_DEVICE_ = 55;

type
  Txcb_input_xi_passive_ungrab_device_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    grab_window: Txcb_window_t;
    detail: Tuint32_t;
    deviceid: Txcb_input_device_id_t;
    num_modifiers: Tuint16_t;
    grab_type: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_input_xi_passive_ungrab_device_request_t = ^Txcb_input_xi_passive_ungrab_device_request_t;

  Txcb_input_xi_list_properties_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_xi_list_properties_cookie_t = ^Txcb_input_xi_list_properties_cookie_t;

const
  XCB_INPUT_XI_LIST_PROPERTIES_ = 56;

type
  Txcb_input_xi_list_properties_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    deviceid: Txcb_input_device_id_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_input_xi_list_properties_request_t = ^Txcb_input_xi_list_properties_request_t;

  Txcb_input_xi_list_properties_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    num_properties: Tuint16_t;
    pad1: array[0..21] of Tuint8_t;
  end;
  Pxcb_input_xi_list_properties_reply_t = ^Txcb_input_xi_list_properties_reply_t;

  Txcb_input_xi_change_property_items_t = record
    data8: Puint8_t;
    data16: Puint16_t;
    data32: Puint32_t;
  end;
  Pxcb_input_xi_change_property_items_t = ^Txcb_input_xi_change_property_items_t;

const
  XCB_INPUT_XI_CHANGE_PROPERTY_ = 57;

type
  Txcb_input_xi_change_property_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    deviceid: Txcb_input_device_id_t;
    mode: Tuint8_t;
    format: Tuint8_t;
    _property: Txcb_atom_t;
    _type: Txcb_atom_t;
    num_items: Tuint32_t;
  end;
  Pxcb_input_xi_change_property_request_t = ^Txcb_input_xi_change_property_request_t;

const
  XCB_INPUT_XI_DELETE_PROPERTY_ = 58;

type
  Txcb_input_xi_delete_property_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    deviceid: Txcb_input_device_id_t;
    pad0: array[0..1] of Tuint8_t;
    _property: Txcb_atom_t;
  end;
  Pxcb_input_xi_delete_property_request_t = ^Txcb_input_xi_delete_property_request_t;

  Txcb_input_xi_get_property_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_xi_get_property_cookie_t = ^Txcb_input_xi_get_property_cookie_t;

const
  XCB_INPUT_XI_GET_PROPERTY_ = 59;

type
  Txcb_input_xi_get_property_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    deviceid: Txcb_input_device_id_t;
    _delete: Tuint8_t;
    pad0: Tuint8_t;
    _property: Txcb_atom_t;
    _type: Txcb_atom_t;
    offset: Tuint32_t;
    len: Tuint32_t;
  end;
  Pxcb_input_xi_get_property_request_t = ^Txcb_input_xi_get_property_request_t;

  Txcb_input_xi_get_property_items_t = record
    data8: Puint8_t;
    data16: Puint16_t;
    data32: Puint32_t;
  end;
  Pxcb_input_xi_get_property_items_t = ^Txcb_input_xi_get_property_items_t;

  Txcb_input_xi_get_property_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    _type: Txcb_atom_t;
    bytes_after: Tuint32_t;
    num_items: Tuint32_t;
    format: Tuint8_t;
    pad1: array[0..10] of Tuint8_t;
  end;
  Pxcb_input_xi_get_property_reply_t = ^Txcb_input_xi_get_property_reply_t;

  Txcb_input_xi_get_selected_events_cookie_t = record
    sequence: dword;
  end;
  Pxcb_input_xi_get_selected_events_cookie_t = ^Txcb_input_xi_get_selected_events_cookie_t;

const
  XCB_INPUT_XI_GET_SELECTED_EVENTS_ = 60;

type
  Txcb_input_xi_get_selected_events_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    window: Txcb_window_t;
  end;
  Pxcb_input_xi_get_selected_events_request_t = ^Txcb_input_xi_get_selected_events_request_t;

  Txcb_input_xi_get_selected_events_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    num_masks: Tuint16_t;
    pad1: array[0..21] of Tuint8_t;
  end;
  Pxcb_input_xi_get_selected_events_reply_t = ^Txcb_input_xi_get_selected_events_reply_t;

  Txcb_input_barrier_release_pointer_info_t = record
    deviceid: Txcb_input_device_id_t;
    pad0: array[0..1] of Tuint8_t;
    barrier: Txcb_xfixes_barrier_t;
    eventid: Tuint32_t;
  end;
  Pxcb_input_barrier_release_pointer_info_t = ^Txcb_input_barrier_release_pointer_info_t;

  Txcb_input_barrier_release_pointer_info_iterator_t = record
    data: Pxcb_input_barrier_release_pointer_info_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_barrier_release_pointer_info_iterator_t = ^Txcb_input_barrier_release_pointer_info_iterator_t;

const
  XCB_INPUT_XI_BARRIER_RELEASE_POINTER_ = 61;

type
  Txcb_input_xi_barrier_release_pointer_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    num_barriers: Tuint32_t;
  end;
  Pxcb_input_xi_barrier_release_pointer_request_t = ^Txcb_input_xi_barrier_release_pointer_request_t;

const
  XCB_INPUT_DEVICE_VALUATOR = 0;

type
  Txcb_input_device_valuator_event_t = record
    response_type: Tuint8_t;
    device_id: Tuint8_t;
    sequence: Tuint16_t;
    device_state: Tuint16_t;
    num_valuators: Tuint8_t;
    first_valuator: Tuint8_t;
    valuators: array[0..5] of Tint32_t;
  end;

type
  Pxcb_input_more_events_mask_t = ^Txcb_input_more_events_mask_t;
  Txcb_input_more_events_mask_t = longint;

const
  XCB_INPUT_MORE_EVENTS_MASK_MORE_EVENTS = 128;

const
  XCB_INPUT_DEVICE_KEY_PRESS = 1;

type
  Txcb_input_device_key_press_event_t = record
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
    device_id: Tuint8_t;
  end;
  Pxcb_input_device_key_press_event_t = ^Txcb_input_device_key_press_event_t;

const
  XCB_INPUT_DEVICE_KEY_RELEASE = 2;

type
  Pxcb_input_device_key_release_event_t = ^Txcb_input_device_key_release_event_t;
  Txcb_input_device_key_release_event_t = Txcb_input_device_key_press_event_t;

const
  XCB_INPUT_DEVICE_BUTTON_PRESS = 3;

type
  Pxcb_input_device_button_press_event_t = ^Txcb_input_device_button_press_event_t;
  Txcb_input_device_button_press_event_t = Txcb_input_device_key_press_event_t;

const
  XCB_INPUT_DEVICE_BUTTON_RELEASE = 4;

type
  Pxcb_input_device_button_release_event_t = ^Txcb_input_device_button_release_event_t;
  Txcb_input_device_button_release_event_t = Txcb_input_device_key_press_event_t;

const
  XCB_INPUT_DEVICE_MOTION_NOTIFY = 5;

type
  Pxcb_input_device_motion_notify_event_t = ^Txcb_input_device_motion_notify_event_t;
  Txcb_input_device_motion_notify_event_t = Txcb_input_device_key_press_event_t;

const
  XCB_INPUT_DEVICE_FOCUS_IN = 6;

type
  Txcb_input_device_focus_in_event_t = record
    response_type: Tuint8_t;
    detail: Tuint8_t;
    sequence: Tuint16_t;
    time: Txcb_timestamp_t;
    window: Txcb_window_t;
    mode: Tuint8_t;
    device_id: Tuint8_t;
    pad0: array[0..17] of Tuint8_t;
  end;
  Pxcb_input_device_focus_in_event_t = ^Txcb_input_device_focus_in_event_t;

const
  XCB_INPUT_DEVICE_FOCUS_OUT = 7;

type
  Pxcb_input_device_focus_out_event_t = ^Txcb_input_device_focus_out_event_t;
  Txcb_input_device_focus_out_event_t = Txcb_input_device_focus_in_event_t;

const
  XCB_INPUT_PROXIMITY_IN = 8;

type
  Pxcb_input_proximity_in_event_t = ^Txcb_input_proximity_in_event_t;
  Txcb_input_proximity_in_event_t = Txcb_input_device_key_press_event_t;

const
  XCB_INPUT_PROXIMITY_OUT = 9;

type
  Pxcb_input_proximity_out_event_t = ^Txcb_input_proximity_out_event_t;
  Txcb_input_proximity_out_event_t = Txcb_input_device_key_press_event_t;

type
  Pxcb_input_classes_reported_mask_t = ^Txcb_input_classes_reported_mask_t;
  Txcb_input_classes_reported_mask_t = longint;

const
  XCB_INPUT_CLASSES_REPORTED_MASK_OUT_OF_PROXIMITY = 128;
  XCB_INPUT_CLASSES_REPORTED_MASK_DEVICE_MODE_ABSOLUTE = 64;
  XCB_INPUT_CLASSES_REPORTED_MASK_REPORTING_VALUATORS = 4;
  XCB_INPUT_CLASSES_REPORTED_MASK_REPORTING_BUTTONS = 2;
  XCB_INPUT_CLASSES_REPORTED_MASK_REPORTING_KEYS = 1;

const
  XCB_INPUT_DEVICE_STATE_NOTIFY = 10;

type
  Txcb_input_device_state_notify_event_t = record
    response_type: Tuint8_t;
    device_id: Tuint8_t;
    sequence: Tuint16_t;
    time: Txcb_timestamp_t;
    num_keys: Tuint8_t;
    num_buttons: Tuint8_t;
    num_valuators: Tuint8_t;
    classes_reported: Tuint8_t;
    buttons: array[0..3] of Tuint8_t;
    keys: array[0..3] of Tuint8_t;
    valuators: array[0..2] of Tuint32_t;
  end;
  Pxcb_input_device_state_notify_event_t = ^Txcb_input_device_state_notify_event_t;

const
  XCB_INPUT_DEVICE_MAPPING_NOTIFY = 11;

type
  Txcb_input_device_mapping_notify_event_t = record
    response_type: Tuint8_t;
    device_id: Tuint8_t;
    sequence: Tuint16_t;
    request: Tuint8_t;
    first_keycode: Txcb_input_key_code_t;
    count: Tuint8_t;
    pad0: Tuint8_t;
    time: Txcb_timestamp_t;
    pad1: array[0..19] of Tuint8_t;
  end;
  Pxcb_input_device_mapping_notify_event_t = ^Txcb_input_device_mapping_notify_event_t;

type
  Pxcb_input_change_device_t = ^Txcb_input_change_device_t;
  Txcb_input_change_device_t = longint;

const
  XCB_INPUT_CHANGE_DEVICE_NEW_POINTER = 0;
  XCB_INPUT_CHANGE_DEVICE_NEW_KEYBOARD = 1;

const
  XCB_INPUT_CHANGE_DEVICE_NOTIFY = 12;

type
  Txcb_input_change_device_notify_event_t = record
    response_type: Tuint8_t;
    device_id: Tuint8_t;
    sequence: Tuint16_t;
    time: Txcb_timestamp_t;
    request: Tuint8_t;
    pad0: array[0..22] of Tuint8_t;
  end;
  Pxcb_input_change_device_notify_event_t = ^Txcb_input_change_device_notify_event_t;

const
  XCB_INPUT_DEVICE_KEY_STATE_NOTIFY = 13;

type
  Txcb_input_device_key_state_notify_event_t = record
    response_type: Tuint8_t;
    device_id: Tuint8_t;
    sequence: Tuint16_t;
    keys: array[0..27] of Tuint8_t;
  end;
  Pxcb_input_device_key_state_notify_event_t = ^Txcb_input_device_key_state_notify_event_t;

const
  XCB_INPUT_DEVICE_BUTTON_STATE_NOTIFY = 14;

type
  Txcb_input_device_button_state_notify_event_t = record
    response_type: Tuint8_t;
    device_id: Tuint8_t;
    sequence: Tuint16_t;
    buttons: array[0..27] of Tuint8_t;
  end;
  Pxcb_input_device_button_state_notify_event_t = ^Txcb_input_device_button_state_notify_event_t;

type
  Pxcb_input_device_change_t = ^Txcb_input_device_change_t;
  Txcb_input_device_change_t = longint;

const
  XCB_INPUT_DEVICE_CHANGE_ADDED = 0;
  XCB_INPUT_DEVICE_CHANGE_REMOVED = 1;
  XCB_INPUT_DEVICE_CHANGE_ENABLED = 2;
  XCB_INPUT_DEVICE_CHANGE_DISABLED = 3;
  XCB_INPUT_DEVICE_CHANGE_UNRECOVERABLE = 4;
  XCB_INPUT_DEVICE_CHANGE_CONTROL_CHANGED = 5;

const
  XCB_INPUT_DEVICE_PRESENCE_NOTIFY = 15;

type
  Txcb_input_device_presence_notify_event_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    time: Txcb_timestamp_t;
    devchange: Tuint8_t;
    device_id: Tuint8_t;
    control: Tuint16_t;
    pad1: array[0..19] of Tuint8_t;
  end;
  Pxcb_input_device_presence_notify_event_t = ^Txcb_input_device_presence_notify_event_t;

const
  XCB_INPUT_DEVICE_PROPERTY_NOTIFY = 16;

type
  Txcb_input_device_property_notify_event_t = record
    response_type: Tuint8_t;
    state: Tuint8_t;
    sequence: Tuint16_t;
    time: Txcb_timestamp_t;
    _property: Txcb_atom_t;
    pad0: array[0..18] of Tuint8_t;
    device_id: Tuint8_t;
  end;
  Pxcb_input_device_property_notify_event_t = ^Txcb_input_device_property_notify_event_t;

type
  Pxcb_input_change_reason_t = ^Txcb_input_change_reason_t;
  Txcb_input_change_reason_t = longint;

const
  XCB_INPUT_CHANGE_REASON_SLAVE_SWITCH = 1;
  XCB_INPUT_CHANGE_REASON_DEVICE_CHANGE = 2;

const
  XCB_INPUT_DEVICE_CHANGED = 1;

type
  Txcb_input_device_changed_event_t = record
    response_type: Tuint8_t;
    extension: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    event_type: Tuint16_t;
    deviceid: Txcb_input_device_id_t;
    time: Txcb_timestamp_t;
    num_classes: Tuint16_t;
    sourceid: Txcb_input_device_id_t;
    reason: Tuint8_t;
    pad0: array[0..10] of Tuint8_t;
    full_sequence: Tuint32_t;
  end;
  Pxcb_input_device_changed_event_t = ^Txcb_input_device_changed_event_t;

type
  Pxcb_input_key_event_flags_t = ^Txcb_input_key_event_flags_t;
  Txcb_input_key_event_flags_t = longint;

const
  XCB_INPUT_KEY_EVENT_FLAGS_KEY_REPEAT = 65536;

const
  XCB_INPUT_KEY_PRESS = 2;

type
  Txcb_input_key_press_event_t = record
    response_type: Tuint8_t;
    extension: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    event_type: Tuint16_t;
    deviceid: Txcb_input_device_id_t;
    time: Txcb_timestamp_t;
    detail: Tuint32_t;
    root: Txcb_window_t;
    event: Txcb_window_t;
    child: Txcb_window_t;
    full_sequence: Tuint32_t;
    root_x: Txcb_input_fp1616_t;
    root_y: Txcb_input_fp1616_t;
    event_x: Txcb_input_fp1616_t;
    event_y: Txcb_input_fp1616_t;
    buttons_len: Tuint16_t;
    valuators_len: Tuint16_t;
    sourceid: Txcb_input_device_id_t;
    pad0: array[0..1] of Tuint8_t;
    flags: Tuint32_t;
    mods: Txcb_input_modifier_info_t;
    group: Txcb_input_group_info_t;
  end;
  Pxcb_input_key_press_event_t = ^Txcb_input_key_press_event_t;

const
  XCB_INPUT_KEY_RELEASE = 3;

type
  Pxcb_input_key_release_event_t = ^Txcb_input_key_release_event_t;
  Txcb_input_key_release_event_t = Txcb_input_key_press_event_t;

type
  Pxcb_input_pointer_event_flags_t = ^Txcb_input_pointer_event_flags_t;
  Txcb_input_pointer_event_flags_t = longint;

const
  XCB_INPUT_POINTER_EVENT_FLAGS_POINTER_EMULATED = 65536;

const
  XCB_INPUT_BUTTON_PRESS = 4;

type
  Txcb_input_button_press_event_t = record
    response_type: Tuint8_t;
    extension: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    event_type: Tuint16_t;
    deviceid: Txcb_input_device_id_t;
    time: Txcb_timestamp_t;
    detail: Tuint32_t;
    root: Txcb_window_t;
    event: Txcb_window_t;
    child: Txcb_window_t;
    full_sequence: Tuint32_t;
    root_x: Txcb_input_fp1616_t;
    root_y: Txcb_input_fp1616_t;
    event_x: Txcb_input_fp1616_t;
    event_y: Txcb_input_fp1616_t;
    buttons_len: Tuint16_t;
    valuators_len: Tuint16_t;
    sourceid: Txcb_input_device_id_t;
    pad0: array[0..1] of Tuint8_t;
    flags: Tuint32_t;
    mods: Txcb_input_modifier_info_t;
    group: Txcb_input_group_info_t;
  end;
  Pxcb_input_button_press_event_t = ^Txcb_input_button_press_event_t;

const
  XCB_INPUT_BUTTON_RELEASE = 5;

type
  Pxcb_input_button_release_event_t = ^Txcb_input_button_release_event_t;
  Txcb_input_button_release_event_t = Txcb_input_button_press_event_t;

const
  XCB_INPUT_MOTION = 6;

type
  Pxcb_input_motion_event_t = ^Txcb_input_motion_event_t;
  Txcb_input_motion_event_t = Txcb_input_button_press_event_t;

type
  Pxcb_input_notify_mode_t = ^Txcb_input_notify_mode_t;
  Txcb_input_notify_mode_t = longint;

const
  XCB_INPUT_NOTIFY_MODE_NORMAL = 0;
  XCB_INPUT_NOTIFY_MODE_GRAB = 1;
  XCB_INPUT_NOTIFY_MODE_UNGRAB = 2;
  XCB_INPUT_NOTIFY_MODE_WHILE_GRABBED = 3;
  XCB_INPUT_NOTIFY_MODE_PASSIVE_GRAB = 4;
  XCB_INPUT_NOTIFY_MODE_PASSIVE_UNGRAB = 5;

type
  Pxcb_input_notify_detail_t = ^Txcb_input_notify_detail_t;
  Txcb_input_notify_detail_t = longint;

const
  XCB_INPUT_NOTIFY_DETAIL_ANCESTOR = 0;
  XCB_INPUT_NOTIFY_DETAIL_VIRTUAL = 1;
  XCB_INPUT_NOTIFY_DETAIL_INFERIOR = 2;
  XCB_INPUT_NOTIFY_DETAIL_NONLINEAR = 3;
  XCB_INPUT_NOTIFY_DETAIL_NONLINEAR_VIRTUAL = 4;
  XCB_INPUT_NOTIFY_DETAIL_POINTER = 5;
  XCB_INPUT_NOTIFY_DETAIL_POINTER_ROOT = 6;
  XCB_INPUT_NOTIFY_DETAIL_NONE = 7;

const
  XCB_INPUT_ENTER = 7;

type
  Txcb_input_enter_event_t = record
    response_type: Tuint8_t;
    extension: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    event_type: Tuint16_t;
    deviceid: Txcb_input_device_id_t;
    time: Txcb_timestamp_t;
    sourceid: Txcb_input_device_id_t;
    mode: Tuint8_t;
    detail: Tuint8_t;
    root: Txcb_window_t;
    event: Txcb_window_t;
    child: Txcb_window_t;
    full_sequence: Tuint32_t;
    root_x: Txcb_input_fp1616_t;
    root_y: Txcb_input_fp1616_t;
    event_x: Txcb_input_fp1616_t;
    event_y: Txcb_input_fp1616_t;
    same_screen: Tuint8_t;
    focus: Tuint8_t;
    buttons_len: Tuint16_t;
    mods: Txcb_input_modifier_info_t;
    group: Txcb_input_group_info_t;
  end;
  Pxcb_input_enter_event_t = ^Txcb_input_enter_event_t;

const
  XCB_INPUT_LEAVE = 8;

type
  Pxcb_input_leave_event_t = ^Txcb_input_leave_event_t;
  Txcb_input_leave_event_t = Txcb_input_enter_event_t;

const
  XCB_INPUT_FOCUS_IN = 9;

type
  Pxcb_input_focus_in_event_t = ^Txcb_input_focus_in_event_t;
  Txcb_input_focus_in_event_t = Txcb_input_enter_event_t;

const
  XCB_INPUT_FOCUS_OUT = 10;

type
  Pxcb_input_focus_out_event_t = ^Txcb_input_focus_out_event_t;
  Txcb_input_focus_out_event_t = Txcb_input_enter_event_t;

type
  Pxcb_input_hierarchy_mask_t = ^Txcb_input_hierarchy_mask_t;
  Txcb_input_hierarchy_mask_t = longint;

const
  XCB_INPUT_HIERARCHY_MASK_MASTER_ADDED = 1;
  XCB_INPUT_HIERARCHY_MASK_MASTER_REMOVED = 2;
  XCB_INPUT_HIERARCHY_MASK_SLAVE_ADDED = 4;
  XCB_INPUT_HIERARCHY_MASK_SLAVE_REMOVED = 8;
  XCB_INPUT_HIERARCHY_MASK_SLAVE_ATTACHED = 16;
  XCB_INPUT_HIERARCHY_MASK_SLAVE_DETACHED = 32;
  XCB_INPUT_HIERARCHY_MASK_DEVICE_ENABLED = 64;
  XCB_INPUT_HIERARCHY_MASK_DEVICE_DISABLED = 128;

type
  Txcb_input_hierarchy_info_t = record
    deviceid: Txcb_input_device_id_t;
    attachment: Txcb_input_device_id_t;
    _type: Tuint8_t;
    enabled: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
    flags: Tuint32_t;
  end;
  Pxcb_input_hierarchy_info_t = ^Txcb_input_hierarchy_info_t;

  Txcb_input_hierarchy_info_iterator_t = record
    data: Pxcb_input_hierarchy_info_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_hierarchy_info_iterator_t = ^Txcb_input_hierarchy_info_iterator_t;

const
  XCB_INPUT_HIERARCHY = 11;

type
  Txcb_input_hierarchy_event_t = record
    response_type: Tuint8_t;
    extension: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    event_type: Tuint16_t;
    deviceid: Txcb_input_device_id_t;
    time: Txcb_timestamp_t;
    flags: Tuint32_t;
    num_infos: Tuint16_t;
    pad0: array[0..9] of Tuint8_t;
    full_sequence: Tuint32_t;
  end;
  Pxcb_input_hierarchy_event_t = ^Txcb_input_hierarchy_event_t;

type
  Pxcb_input_property_flag_t = ^Txcb_input_property_flag_t;
  Txcb_input_property_flag_t = longint;

const
  XCB_INPUT_PROPERTY_FLAG_DELETED = 0;
  XCB_INPUT_PROPERTY_FLAG_CREATED = 1;
  XCB_INPUT_PROPERTY_FLAG_MODIFIED = 2;

const
  XCB_INPUT_PROPERTY = 12;

type
  Txcb_input_property_event_t = record
    response_type: Tuint8_t;
    extension: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    event_type: Tuint16_t;
    deviceid: Txcb_input_device_id_t;
    time: Txcb_timestamp_t;
    _property: Txcb_atom_t;
    what: Tuint8_t;
    pad0: array[0..10] of Tuint8_t;
    full_sequence: Tuint32_t;
  end;
  Pxcb_input_property_event_t = ^Txcb_input_property_event_t;

const
  XCB_INPUT_RAW_KEY_PRESS = 13;

type
  Txcb_input_raw_key_press_event_t = record
    response_type: Tuint8_t;
    extension: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    event_type: Tuint16_t;
    deviceid: Txcb_input_device_id_t;
    time: Txcb_timestamp_t;
    detail: Tuint32_t;
    sourceid: Txcb_input_device_id_t;
    valuators_len: Tuint16_t;
    flags: Tuint32_t;
    pad0: array[0..3] of Tuint8_t;
    full_sequence: Tuint32_t;
  end;
  Pxcb_input_raw_key_press_event_t = ^Txcb_input_raw_key_press_event_t;

const
  XCB_INPUT_RAW_KEY_RELEASE = 14;

type
  Pxcb_input_raw_key_release_event_t = ^Txcb_input_raw_key_release_event_t;
  Txcb_input_raw_key_release_event_t = Txcb_input_raw_key_press_event_t;

const
  XCB_INPUT_RAW_BUTTON_PRESS = 15;

type
  Txcb_input_raw_button_press_event_t = record
    response_type: Tuint8_t;
    extension: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    event_type: Tuint16_t;
    deviceid: Txcb_input_device_id_t;
    time: Txcb_timestamp_t;
    detail: Tuint32_t;
    sourceid: Txcb_input_device_id_t;
    valuators_len: Tuint16_t;
    flags: Tuint32_t;
    pad0: array[0..3] of Tuint8_t;
    full_sequence: Tuint32_t;
  end;
  Pxcb_input_raw_button_press_event_t = ^Txcb_input_raw_button_press_event_t;

const
  XCB_INPUT_RAW_BUTTON_RELEASE = 16;

type
  Pxcb_input_raw_button_release_event_t = ^Txcb_input_raw_button_release_event_t;
  Txcb_input_raw_button_release_event_t = Txcb_input_raw_button_press_event_t;

const
  XCB_INPUT_RAW_MOTION = 17;

type
  Pxcb_input_raw_motion_event_t = ^Txcb_input_raw_motion_event_t;
  Txcb_input_raw_motion_event_t = Txcb_input_raw_button_press_event_t;

type
  Pxcb_input_touch_event_flags_t = ^Txcb_input_touch_event_flags_t;
  Txcb_input_touch_event_flags_t = longint;

const
  XCB_INPUT_TOUCH_EVENT_FLAGS_TOUCH_PENDING_END = 65536;
  XCB_INPUT_TOUCH_EVENT_FLAGS_TOUCH_EMULATING_POINTER = 131072;

const
  XCB_INPUT_TOUCH_BEGIN = 18;

type
  Txcb_input_touch_begin_event_t = record
    response_type: Tuint8_t;
    extension: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    event_type: Tuint16_t;
    deviceid: Txcb_input_device_id_t;
    time: Txcb_timestamp_t;
    detail: Tuint32_t;
    root: Txcb_window_t;
    event: Txcb_window_t;
    child: Txcb_window_t;
    full_sequence: Tuint32_t;
    root_x: Txcb_input_fp1616_t;
    root_y: Txcb_input_fp1616_t;
    event_x: Txcb_input_fp1616_t;
    event_y: Txcb_input_fp1616_t;
    buttons_len: Tuint16_t;
    valuators_len: Tuint16_t;
    sourceid: Txcb_input_device_id_t;
    pad0: array[0..1] of Tuint8_t;
    flags: Tuint32_t;
    mods: Txcb_input_modifier_info_t;
    group: Txcb_input_group_info_t;
  end;
  Pxcb_input_touch_begin_event_t = ^Txcb_input_touch_begin_event_t;

const
  XCB_INPUT_TOUCH_UPDATE = 19;

type
  Pxcb_input_touch_update_event_t = ^Txcb_input_touch_update_event_t;
  Txcb_input_touch_update_event_t = Txcb_input_touch_begin_event_t;

const
  XCB_INPUT_TOUCH_END = 20;

type
  Pxcb_input_touch_end_event_t = ^Txcb_input_touch_end_event_t;
  Txcb_input_touch_end_event_t = Txcb_input_touch_begin_event_t;

type
  Pxcb_input_touch_ownership_flags_t = ^Txcb_input_touch_ownership_flags_t;
  Txcb_input_touch_ownership_flags_t = longint;

const
  XCB_INPUT_TOUCH_OWNERSHIP_FLAGS_NONE = 0;

const
  XCB_INPUT_TOUCH_OWNERSHIP = 21;

type
  Txcb_input_touch_ownership_event_t = record
    response_type: Tuint8_t;
    extension: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    event_type: Tuint16_t;
    deviceid: Txcb_input_device_id_t;
    time: Txcb_timestamp_t;
    touchid: Tuint32_t;
    root: Txcb_window_t;
    event: Txcb_window_t;
    child: Txcb_window_t;
    full_sequence: Tuint32_t;
    sourceid: Txcb_input_device_id_t;
    pad0: array[0..1] of Tuint8_t;
    flags: Tuint32_t;
    pad1: array[0..7] of Tuint8_t;
  end;
  Pxcb_input_touch_ownership_event_t = ^Txcb_input_touch_ownership_event_t;

const
  XCB_INPUT_RAW_TOUCH_BEGIN = 22;

type
  Txcb_input_raw_touch_begin_event_t = record
    response_type: Tuint8_t;
    extension: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    event_type: Tuint16_t;
    deviceid: Txcb_input_device_id_t;
    time: Txcb_timestamp_t;
    detail: Tuint32_t;
    sourceid: Txcb_input_device_id_t;
    valuators_len: Tuint16_t;
    flags: Tuint32_t;
    pad0: array[0..3] of Tuint8_t;
    full_sequence: Tuint32_t;
  end;
  Pxcb_input_raw_touch_begin_event_t = ^Txcb_input_raw_touch_begin_event_t;

const
  XCB_INPUT_RAW_TOUCH_UPDATE = 23;

type
  Pxcb_input_raw_touch_update_event_t = ^Txcb_input_raw_touch_update_event_t;
  Txcb_input_raw_touch_update_event_t = Txcb_input_raw_touch_begin_event_t;

const
  XCB_INPUT_RAW_TOUCH_END = 24;

type
  Pxcb_input_raw_touch_end_event_t = ^Txcb_input_raw_touch_end_event_t;
  Txcb_input_raw_touch_end_event_t = Txcb_input_raw_touch_begin_event_t;

type
  Pxcb_input_barrier_flags_t = ^Txcb_input_barrier_flags_t;
  Txcb_input_barrier_flags_t = longint;

const
  XCB_INPUT_BARRIER_FLAGS_POINTER_RELEASED = 1;

const
  XCB_INPUT_BARRIER_HIT = 25;

type
  Txcb_input_barrier_hit_event_t = record
    response_type: Tuint8_t;
    extension: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    event_type: Tuint16_t;
    deviceid: Txcb_input_device_id_t;
    time: Txcb_timestamp_t;
    eventid: Tuint32_t;
    root: Txcb_window_t;
    event: Txcb_window_t;
    barrier: Txcb_xfixes_barrier_t;
    full_sequence: Tuint32_t;
    dtime: Tuint32_t;
    flags: Tuint32_t;
    sourceid: Txcb_input_device_id_t;
    pad0: array[0..1] of Tuint8_t;
    root_x: Txcb_input_fp1616_t;
    root_y: Txcb_input_fp1616_t;
    dx: Txcb_input_fp3232_t;
    dy: Txcb_input_fp3232_t;
  end;
  Pxcb_input_barrier_hit_event_t = ^Txcb_input_barrier_hit_event_t;

const
  XCB_INPUT_BARRIER_LEAVE = 26;

type
  Pxcb_input_barrier_leave_event_t = ^Txcb_input_barrier_leave_event_t;
  Txcb_input_barrier_leave_event_t = Txcb_input_barrier_hit_event_t;

type
  Pxcb_input_gesture_pinch_event_flags_t = ^Txcb_input_gesture_pinch_event_flags_t;
  Txcb_input_gesture_pinch_event_flags_t = longint;

const
  XCB_INPUT_GESTURE_PINCH_EVENT_FLAGS_GESTURE_PINCH_CANCELLED = 1;

const
  XCB_INPUT_GESTURE_PINCH_BEGIN = 27;

type
  Txcb_input_gesture_pinch_begin_event_t = record
    response_type: Tuint8_t;
    extension: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    event_type: Tuint16_t;
    deviceid: Txcb_input_device_id_t;
    time: Txcb_timestamp_t;
    detail: Tuint32_t;
    root: Txcb_window_t;
    event: Txcb_window_t;
    child: Txcb_window_t;
    full_sequence: Tuint32_t;
    root_x: Txcb_input_fp1616_t;
    root_y: Txcb_input_fp1616_t;
    event_x: Txcb_input_fp1616_t;
    event_y: Txcb_input_fp1616_t;
    delta_x: Txcb_input_fp1616_t;
    delta_y: Txcb_input_fp1616_t;
    delta_unaccel_x: Txcb_input_fp1616_t;
    delta_unaccel_y: Txcb_input_fp1616_t;
    scale: Txcb_input_fp1616_t;
    delta_angle: Txcb_input_fp1616_t;
    sourceid: Txcb_input_device_id_t;
    pad0: array[0..1] of Tuint8_t;
    mods: Txcb_input_modifier_info_t;
    group: Txcb_input_group_info_t;
    flags: Tuint32_t;
  end;
  Pxcb_input_gesture_pinch_begin_event_t = ^Txcb_input_gesture_pinch_begin_event_t;

const
  XCB_INPUT_GESTURE_PINCH_UPDATE = 28;

type
  Pxcb_input_gesture_pinch_update_event_t = ^Txcb_input_gesture_pinch_update_event_t;
  Txcb_input_gesture_pinch_update_event_t = Txcb_input_gesture_pinch_begin_event_t;

const
  XCB_INPUT_GESTURE_PINCH_END = 29;

type
  Pxcb_input_gesture_pinch_end_event_t = ^Txcb_input_gesture_pinch_end_event_t;
  Txcb_input_gesture_pinch_end_event_t = Txcb_input_gesture_pinch_begin_event_t;

type
  Pxcb_input_gesture_swipe_event_flags_t = ^Txcb_input_gesture_swipe_event_flags_t;
  Txcb_input_gesture_swipe_event_flags_t = longint;

const
  XCB_INPUT_GESTURE_SWIPE_EVENT_FLAGS_GESTURE_SWIPE_CANCELLED = 1;

const
  XCB_INPUT_GESTURE_SWIPE_BEGIN = 30;

type
  Txcb_input_gesture_swipe_begin_event_t = record
    response_type: Tuint8_t;
    extension: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    event_type: Tuint16_t;
    deviceid: Txcb_input_device_id_t;
    time: Txcb_timestamp_t;
    detail: Tuint32_t;
    root: Txcb_window_t;
    event: Txcb_window_t;
    child: Txcb_window_t;
    full_sequence: Tuint32_t;
    root_x: Txcb_input_fp1616_t;
    root_y: Txcb_input_fp1616_t;
    event_x: Txcb_input_fp1616_t;
    event_y: Txcb_input_fp1616_t;
    delta_x: Txcb_input_fp1616_t;
    delta_y: Txcb_input_fp1616_t;
    delta_unaccel_x: Txcb_input_fp1616_t;
    delta_unaccel_y: Txcb_input_fp1616_t;
    sourceid: Txcb_input_device_id_t;
    pad0: array[0..1] of Tuint8_t;
    mods: Txcb_input_modifier_info_t;
    group: Txcb_input_group_info_t;
    flags: Tuint32_t;
  end;
  Pxcb_input_gesture_swipe_begin_event_t = ^Txcb_input_gesture_swipe_begin_event_t;

const
  XCB_INPUT_GESTURE_SWIPE_UPDATE = 31;

type
  Pxcb_input_gesture_swipe_update_event_t = ^Txcb_input_gesture_swipe_update_event_t;
  Txcb_input_gesture_swipe_update_event_t = Txcb_input_gesture_swipe_begin_event_t;

const
  XCB_INPUT_GESTURE_SWIPE_END = 32;

type
  Pxcb_input_gesture_swipe_end_event_t = ^Txcb_input_gesture_swipe_end_event_t;
  Txcb_input_gesture_swipe_end_event_t = Txcb_input_gesture_swipe_begin_event_t;

  Txcb_input_event_for_send_t = record
    case longint of
      0: (device_valuator: Txcb_input_device_valuator_event_t);
      1: (device_key_press: Txcb_input_device_key_press_event_t);
      2: (device_key_release: Txcb_input_device_key_release_event_t);
      3: (device_button_press: Txcb_input_device_button_press_event_t);
      4: (device_button_release: Txcb_input_device_button_release_event_t);
      5: (device_motion_notify: Txcb_input_device_motion_notify_event_t);
      6: (device_focus_in: Txcb_input_device_focus_in_event_t);
      7: (device_focus_out: Txcb_input_device_focus_out_event_t);
      8: (proximity_in: Txcb_input_proximity_in_event_t);
      9: (proximity_out: Txcb_input_proximity_out_event_t);
      10: (device_state_notify: Txcb_input_device_state_notify_event_t);
      11: (device_mapping_notify: Txcb_input_device_mapping_notify_event_t);
      12: (change_device_notify: Txcb_input_change_device_notify_event_t);
      13: (device_key_state_notify: Txcb_input_device_key_state_notify_event_t);
      14: (device_button_state_notify: Txcb_input_device_button_state_notify_event_t);
      15: (device_presence_notify: Txcb_input_device_presence_notify_event_t);
      16: (event_header: Txcb_raw_generic_event_t);
  end;
  Pxcb_input_event_for_send_t = ^Txcb_input_event_for_send_t;

  Txcb_input_event_for_send_iterator_t = record
    data: Pxcb_input_event_for_send_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_input_event_for_send_iterator_t = ^Txcb_input_event_for_send_iterator_t;

const
  XCB_INPUT_SEND_EXTENSION_EVENT_ = 31;

type
  Txcb_input_send_extension_event_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    destination: Txcb_window_t;
    device_id: Tuint8_t;
    propagate: Tuint8_t;
    num_classes: Tuint16_t;
    num_events: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_input_send_extension_event_request_t = ^Txcb_input_send_extension_event_request_t;

const
  XCB_INPUT_DEVICE = 0;

type
  Txcb_input_device_error_t = record
    response_type: Tuint8_t;
    error_code: Tuint8_t;
    sequence: Tuint16_t;
    bad_value: Tuint32_t;
    minor_opcode: Tuint16_t;
    major_opcode: Tuint8_t;
  end;
  Pxcb_input_device_error_t = ^Txcb_input_device_error_t;

const
  XCB_INPUT_EVENT = 1;

type
  Txcb_input_event_error_t = record
    response_type: Tuint8_t;
    error_code: Tuint8_t;
    sequence: Tuint16_t;
    bad_value: Tuint32_t;
    minor_opcode: Tuint16_t;
    major_opcode: Tuint8_t;
  end;
  Pxcb_input_event_error_t = ^Txcb_input_event_error_t;

const
  XCB_INPUT_MODE = 2;

type
  Txcb_input_mode_error_t = record
    response_type: Tuint8_t;
    error_code: Tuint8_t;
    sequence: Tuint16_t;
    bad_value: Tuint32_t;
    minor_opcode: Tuint16_t;
    major_opcode: Tuint8_t;
  end;
  Pxcb_input_mode_error_t = ^Txcb_input_mode_error_t;

const
  XCB_INPUT_DEVICE_BUSY = 3;

type
  Txcb_input_device_busy_error_t = record
    response_type: Tuint8_t;
    error_code: Tuint8_t;
    sequence: Tuint16_t;
    bad_value: Tuint32_t;
    minor_opcode: Tuint16_t;
    major_opcode: Tuint8_t;
  end;
  Pxcb_input_device_busy_error_t = ^Txcb_input_device_busy_error_t;

const
  XCB_INPUT_CLASS = 4;

type
  Txcb_input_class_error_t = record
    response_type: Tuint8_t;
    error_code: Tuint8_t;
    sequence: Tuint16_t;
    bad_value: Tuint32_t;
    minor_opcode: Tuint16_t;
    major_opcode: Tuint8_t;
  end;
  Pxcb_input_class_error_t = ^Txcb_input_class_error_t;

procedure xcb_input_event_class_next(i: Pxcb_input_event_class_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_event_class_end(i: Txcb_input_event_class_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_key_code_next(i: Pxcb_input_key_code_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_key_code_end(i: Txcb_input_key_code_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_device_id_next(i: Pxcb_input_device_id_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_device_id_end(i: Txcb_input_device_id_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_fp1616_next(i: Pxcb_input_fp1616_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_fp1616_end(i: Txcb_input_fp1616_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_fp3232_next(i: Pxcb_input_fp3232_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_fp3232_end(i: Txcb_input_fp3232_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_get_extension_version_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_get_extension_version(c: Pxcb_connection_t; name_len: Tuint16_t; name: pchar): Txcb_input_get_extension_version_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_get_extension_version_unchecked(c: Pxcb_connection_t; name_len: Tuint16_t; name: pchar): Txcb_input_get_extension_version_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_get_extension_version_reply(c: Pxcb_connection_t; cookie: Txcb_input_get_extension_version_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_get_extension_version_reply_t; cdecl; external libxcb_xinput;
procedure xcb_input_device_info_next(i: Pxcb_input_device_info_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_device_info_end(i: Txcb_input_device_info_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_key_info_next(i: Pxcb_input_key_info_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_key_info_end(i: Txcb_input_key_info_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_button_info_next(i: Pxcb_input_button_info_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_button_info_end(i: Txcb_input_button_info_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_axis_info_next(i: Pxcb_input_axis_info_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_axis_info_end(i: Txcb_input_axis_info_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_valuator_info_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_valuator_info_axes(R: Pxcb_input_valuator_info_t): Pxcb_input_axis_info_t; cdecl; external libxcb_xinput;
function xcb_input_valuator_info_axes_length(R: Pxcb_input_valuator_info_t): longint; cdecl; external libxcb_xinput;
function xcb_input_valuator_info_axes_iterator(R: Pxcb_input_valuator_info_t): Txcb_input_axis_info_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_valuator_info_next(i: Pxcb_input_valuator_info_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_valuator_info_end(i: Txcb_input_valuator_info_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_input_info_info_valuator_axes(S: Pxcb_input_input_info_info_t): Pxcb_input_axis_info_t; cdecl; external libxcb_xinput;
function xcb_input_input_info_info_valuator_axes_length(R: Pxcb_input_input_info_t; S: Pxcb_input_input_info_info_t): longint; cdecl; external libxcb_xinput;
function xcb_input_input_info_info_valuator_axes_iterator(R: Pxcb_input_input_info_t; S: Pxcb_input_input_info_info_t): Txcb_input_axis_info_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_input_info_info_serialize(_buffer: Ppointer; class_id: Tuint8_t; _aux: Pxcb_input_input_info_info_t): longint; cdecl; external libxcb_xinput;
function xcb_input_input_info_info_unpack(_buffer: pointer; class_id: Tuint8_t; _aux: Pxcb_input_input_info_info_t): longint; cdecl; external libxcb_xinput;
function xcb_input_input_info_info_sizeof(_buffer: pointer; class_id: Tuint8_t): longint; cdecl; external libxcb_xinput;
function xcb_input_input_info_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
procedure xcb_input_input_info_next(i: Pxcb_input_input_info_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_input_info_end(i: Txcb_input_input_info_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_device_name_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_device_name_string(R: Pxcb_input_device_name_t): pchar; cdecl; external libxcb_xinput;
function xcb_input_device_name_string_length(R: Pxcb_input_device_name_t): longint; cdecl; external libxcb_xinput;
function xcb_input_device_name_string_end(R: Pxcb_input_device_name_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_device_name_next(i: Pxcb_input_device_name_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_device_name_end(i: Txcb_input_device_name_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_list_input_devices_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_list_input_devices(c: Pxcb_connection_t): Txcb_input_list_input_devices_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_list_input_devices_unchecked(c: Pxcb_connection_t): Txcb_input_list_input_devices_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_list_input_devices_devices(R: Pxcb_input_list_input_devices_reply_t): Pxcb_input_device_info_t; cdecl; external libxcb_xinput;
function xcb_input_list_input_devices_devices_length(R: Pxcb_input_list_input_devices_reply_t): longint; cdecl; external libxcb_xinput;
function xcb_input_list_input_devices_devices_iterator(R: Pxcb_input_list_input_devices_reply_t): Txcb_input_device_info_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_list_input_devices_infos_length(R: Pxcb_input_list_input_devices_reply_t): longint; cdecl; external libxcb_xinput;
function xcb_input_list_input_devices_infos_iterator(R: Pxcb_input_list_input_devices_reply_t): Txcb_input_input_info_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_list_input_devices_names_length(R: Pxcb_input_list_input_devices_reply_t): longint; cdecl; external libxcb_xinput;
function xcb_input_list_input_devices_names_iterator(R: Pxcb_input_list_input_devices_reply_t): Txcb_str_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_list_input_devices_reply(c: Pxcb_connection_t; cookie: Txcb_input_list_input_devices_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_list_input_devices_reply_t; cdecl; external libxcb_xinput;
procedure xcb_input_event_type_base_next(i: Pxcb_input_event_type_base_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_event_type_base_end(i: Txcb_input_event_type_base_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_input_class_info_next(i: Pxcb_input_input_class_info_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_input_class_info_end(i: Txcb_input_input_class_info_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_open_device_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_open_device(c: Pxcb_connection_t; device_id: Tuint8_t): Txcb_input_open_device_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_open_device_unchecked(c: Pxcb_connection_t; device_id: Tuint8_t): Txcb_input_open_device_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_open_device_class_info(R: Pxcb_input_open_device_reply_t): Pxcb_input_input_class_info_t; cdecl; external libxcb_xinput;
function xcb_input_open_device_class_info_length(R: Pxcb_input_open_device_reply_t): longint; cdecl; external libxcb_xinput;
function xcb_input_open_device_class_info_iterator(R: Pxcb_input_open_device_reply_t): Txcb_input_input_class_info_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_open_device_reply(c: Pxcb_connection_t; cookie: Txcb_input_open_device_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_open_device_reply_t; cdecl; external libxcb_xinput;
function xcb_input_close_device_checked(c: Pxcb_connection_t; device_id: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_close_device(c: Pxcb_connection_t; device_id: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_set_device_mode(c: Pxcb_connection_t; device_id: Tuint8_t; mode: Tuint8_t): Txcb_input_set_device_mode_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_set_device_mode_unchecked(c: Pxcb_connection_t; device_id: Tuint8_t; mode: Tuint8_t): Txcb_input_set_device_mode_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_set_device_mode_reply(c: Pxcb_connection_t; cookie: Txcb_input_set_device_mode_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_set_device_mode_reply_t; cdecl; external libxcb_xinput;
function xcb_input_select_extension_event_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_select_extension_event_checked(c: Pxcb_connection_t; window: Txcb_window_t; num_classes: Tuint16_t; classes: Pxcb_input_event_class_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_select_extension_event(c: Pxcb_connection_t; window: Txcb_window_t; num_classes: Tuint16_t; classes: Pxcb_input_event_class_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_select_extension_event_classes(R: Pxcb_input_select_extension_event_request_t): Pxcb_input_event_class_t; cdecl; external libxcb_xinput;
function xcb_input_select_extension_event_classes_length(R: Pxcb_input_select_extension_event_request_t): longint; cdecl; external libxcb_xinput;
function xcb_input_select_extension_event_classes_end(R: Pxcb_input_select_extension_event_request_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_get_selected_extension_events_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_get_selected_extension_events(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_input_get_selected_extension_events_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_get_selected_extension_events_unchecked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_input_get_selected_extension_events_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_get_selected_extension_events_this_classes(R: Pxcb_input_get_selected_extension_events_reply_t): Pxcb_input_event_class_t; cdecl; external libxcb_xinput;
function xcb_input_get_selected_extension_events_this_classes_length(R: Pxcb_input_get_selected_extension_events_reply_t): longint; cdecl; external libxcb_xinput;
function xcb_input_get_selected_extension_events_this_classes_end(R: Pxcb_input_get_selected_extension_events_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_get_selected_extension_events_all_classes(R: Pxcb_input_get_selected_extension_events_reply_t): Pxcb_input_event_class_t; cdecl; external libxcb_xinput;
function xcb_input_get_selected_extension_events_all_classes_length(R: Pxcb_input_get_selected_extension_events_reply_t): longint; cdecl; external libxcb_xinput;
function xcb_input_get_selected_extension_events_all_classes_end(R: Pxcb_input_get_selected_extension_events_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_get_selected_extension_events_reply(c: Pxcb_connection_t; cookie: Txcb_input_get_selected_extension_events_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_get_selected_extension_events_reply_t; cdecl; external libxcb_xinput;
function xcb_input_change_device_dont_propagate_list_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_change_device_dont_propagate_list_checked(c: Pxcb_connection_t; window: Txcb_window_t; num_classes: Tuint16_t; mode: Tuint8_t; classes: Pxcb_input_event_class_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_change_device_dont_propagate_list(c: Pxcb_connection_t; window: Txcb_window_t; num_classes: Tuint16_t; mode: Tuint8_t; classes: Pxcb_input_event_class_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_change_device_dont_propagate_list_classes(R: Pxcb_input_change_device_dont_propagate_list_request_t): Pxcb_input_event_class_t; cdecl; external libxcb_xinput;
function xcb_input_change_device_dont_propagate_list_classes_length(R: Pxcb_input_change_device_dont_propagate_list_request_t): longint; cdecl; external libxcb_xinput;
function xcb_input_change_device_dont_propagate_list_classes_end(R: Pxcb_input_change_device_dont_propagate_list_request_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_dont_propagate_list_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_get_device_dont_propagate_list(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_input_get_device_dont_propagate_list_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_dont_propagate_list_unchecked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_input_get_device_dont_propagate_list_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_dont_propagate_list_classes(R: Pxcb_input_get_device_dont_propagate_list_reply_t): Pxcb_input_event_class_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_dont_propagate_list_classes_length(R: Pxcb_input_get_device_dont_propagate_list_reply_t): longint; cdecl; external libxcb_xinput;
function xcb_input_get_device_dont_propagate_list_classes_end(R: Pxcb_input_get_device_dont_propagate_list_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_dont_propagate_list_reply(c: Pxcb_connection_t; cookie: Txcb_input_get_device_dont_propagate_list_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_get_device_dont_propagate_list_reply_t; cdecl; external libxcb_xinput;
function xcb_input_device_time_coord_sizeof(_buffer: pointer; num_axes: Tuint8_t): longint; cdecl; external libxcb_xinput;
function xcb_input_device_time_coord_axisvalues(R: Pxcb_input_device_time_coord_t): Pint32_t; cdecl; external libxcb_xinput;
function xcb_input_device_time_coord_axisvalues_length(R: Pxcb_input_device_time_coord_t; num_axes: Tuint8_t): longint; cdecl; external libxcb_xinput;
function xcb_input_device_time_coord_axisvalues_end(R: Pxcb_input_device_time_coord_t; num_axes: Tuint8_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_device_time_coord_next(i: Pxcb_input_device_time_coord_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_device_time_coord_end(i: Txcb_input_device_time_coord_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_motion_events_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_get_device_motion_events(c: Pxcb_connection_t; start: Txcb_timestamp_t; stop: Txcb_timestamp_t; device_id: Tuint8_t): Txcb_input_get_device_motion_events_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_motion_events_unchecked(c: Pxcb_connection_t; start: Txcb_timestamp_t; stop: Txcb_timestamp_t; device_id: Tuint8_t): Txcb_input_get_device_motion_events_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_motion_events_events_length(R: Pxcb_input_get_device_motion_events_reply_t): longint; cdecl; external libxcb_xinput;
function xcb_input_get_device_motion_events_events_iterator(R: Pxcb_input_get_device_motion_events_reply_t): Txcb_input_device_time_coord_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_motion_events_reply(c: Pxcb_connection_t; cookie: Txcb_input_get_device_motion_events_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_get_device_motion_events_reply_t; cdecl; external libxcb_xinput;
function xcb_input_change_keyboard_device(c: Pxcb_connection_t; device_id: Tuint8_t): Txcb_input_change_keyboard_device_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_change_keyboard_device_unchecked(c: Pxcb_connection_t; device_id: Tuint8_t): Txcb_input_change_keyboard_device_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_change_keyboard_device_reply(c: Pxcb_connection_t; cookie: Txcb_input_change_keyboard_device_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_change_keyboard_device_reply_t; cdecl; external libxcb_xinput;
function xcb_input_change_pointer_device(c: Pxcb_connection_t; x_axis: Tuint8_t; y_axis: Tuint8_t; device_id: Tuint8_t): Txcb_input_change_pointer_device_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_change_pointer_device_unchecked(c: Pxcb_connection_t; x_axis: Tuint8_t; y_axis: Tuint8_t; device_id: Tuint8_t): Txcb_input_change_pointer_device_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_change_pointer_device_reply(c: Pxcb_connection_t; cookie: Txcb_input_change_pointer_device_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_change_pointer_device_reply_t; cdecl; external libxcb_xinput;
function xcb_input_grab_device_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_grab_device(c: Pxcb_connection_t; grab_window: Txcb_window_t; time: Txcb_timestamp_t; num_classes: Tuint16_t; this_device_mode: Tuint8_t;
  other_device_mode: Tuint8_t; owner_events: Tuint8_t; device_id: Tuint8_t; classes: Pxcb_input_event_class_t): Txcb_input_grab_device_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_grab_device_unchecked(c: Pxcb_connection_t; grab_window: Txcb_window_t; time: Txcb_timestamp_t; num_classes: Tuint16_t; this_device_mode: Tuint8_t;
  other_device_mode: Tuint8_t; owner_events: Tuint8_t; device_id: Tuint8_t; classes: Pxcb_input_event_class_t): Txcb_input_grab_device_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_grab_device_reply(c: Pxcb_connection_t; cookie: Txcb_input_grab_device_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_grab_device_reply_t; cdecl; external libxcb_xinput;
function xcb_input_ungrab_device_checked(c: Pxcb_connection_t; time: Txcb_timestamp_t; device_id: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_ungrab_device(c: Pxcb_connection_t; time: Txcb_timestamp_t; device_id: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_grab_device_key_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_grab_device_key_checked(c: Pxcb_connection_t; grab_window: Txcb_window_t; num_classes: Tuint16_t; modifiers: Tuint16_t; modifier_device: Tuint8_t;
  grabbed_device: Tuint8_t; key: Tuint8_t; this_device_mode: Tuint8_t; other_device_mode: Tuint8_t; owner_events: Tuint8_t;
  classes: Pxcb_input_event_class_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_grab_device_key(c: Pxcb_connection_t; grab_window: Txcb_window_t; num_classes: Tuint16_t; modifiers: Tuint16_t; modifier_device: Tuint8_t;
  grabbed_device: Tuint8_t; key: Tuint8_t; this_device_mode: Tuint8_t; other_device_mode: Tuint8_t; owner_events: Tuint8_t;
  classes: Pxcb_input_event_class_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_grab_device_key_classes(R: Pxcb_input_grab_device_key_request_t): Pxcb_input_event_class_t; cdecl; external libxcb_xinput;
function xcb_input_grab_device_key_classes_length(R: Pxcb_input_grab_device_key_request_t): longint; cdecl; external libxcb_xinput;
function xcb_input_grab_device_key_classes_end(R: Pxcb_input_grab_device_key_request_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_ungrab_device_key_checked(c: Pxcb_connection_t; grabWindow: Txcb_window_t; modifiers: Tuint16_t; modifier_device: Tuint8_t; key: Tuint8_t;
  grabbed_device: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_ungrab_device_key(c: Pxcb_connection_t; grabWindow: Txcb_window_t; modifiers: Tuint16_t; modifier_device: Tuint8_t; key: Tuint8_t;
  grabbed_device: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_grab_device_button_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_grab_device_button_checked(c: Pxcb_connection_t; grab_window: Txcb_window_t; grabbed_device: Tuint8_t; modifier_device: Tuint8_t; num_classes: Tuint16_t;
  modifiers: Tuint16_t; this_device_mode: Tuint8_t; other_device_mode: Tuint8_t; button: Tuint8_t; owner_events: Tuint8_t;
  classes: Pxcb_input_event_class_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_grab_device_button(c: Pxcb_connection_t; grab_window: Txcb_window_t; grabbed_device: Tuint8_t; modifier_device: Tuint8_t; num_classes: Tuint16_t;
  modifiers: Tuint16_t; this_device_mode: Tuint8_t; other_device_mode: Tuint8_t; button: Tuint8_t; owner_events: Tuint8_t;
  classes: Pxcb_input_event_class_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_grab_device_button_classes(R: Pxcb_input_grab_device_button_request_t): Pxcb_input_event_class_t; cdecl; external libxcb_xinput;
function xcb_input_grab_device_button_classes_length(R: Pxcb_input_grab_device_button_request_t): longint; cdecl; external libxcb_xinput;
function xcb_input_grab_device_button_classes_end(R: Pxcb_input_grab_device_button_request_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_ungrab_device_button_checked(c: Pxcb_connection_t; grab_window: Txcb_window_t; modifiers: Tuint16_t; modifier_device: Tuint8_t; button: Tuint8_t;
  grabbed_device: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_ungrab_device_button(c: Pxcb_connection_t; grab_window: Txcb_window_t; modifiers: Tuint16_t; modifier_device: Tuint8_t; button: Tuint8_t;
  grabbed_device: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_allow_device_events_checked(c: Pxcb_connection_t; time: Txcb_timestamp_t; mode: Tuint8_t; device_id: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_allow_device_events(c: Pxcb_connection_t; time: Txcb_timestamp_t; mode: Tuint8_t; device_id: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_focus(c: Pxcb_connection_t; device_id: Tuint8_t): Txcb_input_get_device_focus_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_focus_unchecked(c: Pxcb_connection_t; device_id: Tuint8_t): Txcb_input_get_device_focus_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_focus_reply(c: Pxcb_connection_t; cookie: Txcb_input_get_device_focus_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_get_device_focus_reply_t; cdecl; external libxcb_xinput;
function xcb_input_set_device_focus_checked(c: Pxcb_connection_t; focus: Txcb_window_t; time: Txcb_timestamp_t; revert_to: Tuint8_t; device_id: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_set_device_focus(c: Pxcb_connection_t; focus: Txcb_window_t; time: Txcb_timestamp_t; revert_to: Tuint8_t; device_id: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
procedure xcb_input_kbd_feedback_state_next(i: Pxcb_input_kbd_feedback_state_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_kbd_feedback_state_end(i: Txcb_input_kbd_feedback_state_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_ptr_feedback_state_next(i: Pxcb_input_ptr_feedback_state_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_ptr_feedback_state_end(i: Txcb_input_ptr_feedback_state_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_integer_feedback_state_next(i: Pxcb_input_integer_feedback_state_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_integer_feedback_state_end(i: Txcb_input_integer_feedback_state_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_string_feedback_state_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_string_feedback_state_keysyms(R: Pxcb_input_string_feedback_state_t): Pxcb_keysym_t; cdecl; external libxcb_xinput;
function xcb_input_string_feedback_state_keysyms_length(R: Pxcb_input_string_feedback_state_t): longint; cdecl; external libxcb_xinput;
function xcb_input_string_feedback_state_keysyms_end(R: Pxcb_input_string_feedback_state_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_string_feedback_state_next(i: Pxcb_input_string_feedback_state_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_string_feedback_state_end(i: Txcb_input_string_feedback_state_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_bell_feedback_state_next(i: Pxcb_input_bell_feedback_state_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_bell_feedback_state_end(i: Txcb_input_bell_feedback_state_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_led_feedback_state_next(i: Pxcb_input_led_feedback_state_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_led_feedback_state_end(i: Txcb_input_led_feedback_state_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_feedback_state_data_string_keysyms(S: Pxcb_input_feedback_state_data_t): Pxcb_keysym_t; cdecl; external libxcb_xinput;
function xcb_input_feedback_state_data_string_keysyms_length(R: Pxcb_input_feedback_state_t; S: Pxcb_input_feedback_state_data_t): longint; cdecl; external libxcb_xinput;
function xcb_input_feedback_state_data_string_keysyms_end(R: Pxcb_input_feedback_state_t; S: Pxcb_input_feedback_state_data_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_feedback_state_data_serialize(_buffer: Ppointer; class_id: Tuint8_t; _aux: Pxcb_input_feedback_state_data_t): longint; cdecl; external libxcb_xinput;
function xcb_input_feedback_state_data_unpack(_buffer: pointer; class_id: Tuint8_t; _aux: Pxcb_input_feedback_state_data_t): longint; cdecl; external libxcb_xinput;
function xcb_input_feedback_state_data_sizeof(_buffer: pointer; class_id: Tuint8_t): longint; cdecl; external libxcb_xinput;
function xcb_input_feedback_state_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
procedure xcb_input_feedback_state_next(i: Pxcb_input_feedback_state_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_feedback_state_end(i: Txcb_input_feedback_state_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_get_feedback_control_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_get_feedback_control(c: Pxcb_connection_t; device_id: Tuint8_t): Txcb_input_get_feedback_control_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_get_feedback_control_unchecked(c: Pxcb_connection_t; device_id: Tuint8_t): Txcb_input_get_feedback_control_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_get_feedback_control_feedbacks_length(R: Pxcb_input_get_feedback_control_reply_t): longint; cdecl; external libxcb_xinput;
function xcb_input_get_feedback_control_feedbacks_iterator(R: Pxcb_input_get_feedback_control_reply_t): Txcb_input_feedback_state_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_get_feedback_control_reply(c: Pxcb_connection_t; cookie: Txcb_input_get_feedback_control_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_get_feedback_control_reply_t; cdecl; external libxcb_xinput;
procedure xcb_input_kbd_feedback_ctl_next(i: Pxcb_input_kbd_feedback_ctl_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_kbd_feedback_ctl_end(i: Txcb_input_kbd_feedback_ctl_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_ptr_feedback_ctl_next(i: Pxcb_input_ptr_feedback_ctl_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_ptr_feedback_ctl_end(i: Txcb_input_ptr_feedback_ctl_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_integer_feedback_ctl_next(i: Pxcb_input_integer_feedback_ctl_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_integer_feedback_ctl_end(i: Txcb_input_integer_feedback_ctl_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_string_feedback_ctl_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_string_feedback_ctl_keysyms(R: Pxcb_input_string_feedback_ctl_t): Pxcb_keysym_t; cdecl; external libxcb_xinput;
function xcb_input_string_feedback_ctl_keysyms_length(R: Pxcb_input_string_feedback_ctl_t): longint; cdecl; external libxcb_xinput;
function xcb_input_string_feedback_ctl_keysyms_end(R: Pxcb_input_string_feedback_ctl_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_string_feedback_ctl_next(i: Pxcb_input_string_feedback_ctl_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_string_feedback_ctl_end(i: Txcb_input_string_feedback_ctl_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_bell_feedback_ctl_next(i: Pxcb_input_bell_feedback_ctl_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_bell_feedback_ctl_end(i: Txcb_input_bell_feedback_ctl_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_led_feedback_ctl_next(i: Pxcb_input_led_feedback_ctl_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_led_feedback_ctl_end(i: Txcb_input_led_feedback_ctl_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_feedback_ctl_data_string_keysyms(S: Pxcb_input_feedback_ctl_data_t): Pxcb_keysym_t; cdecl; external libxcb_xinput;
function xcb_input_feedback_ctl_data_string_keysyms_length(R: Pxcb_input_feedback_ctl_t; S: Pxcb_input_feedback_ctl_data_t): longint; cdecl; external libxcb_xinput;
function xcb_input_feedback_ctl_data_string_keysyms_end(R: Pxcb_input_feedback_ctl_t; S: Pxcb_input_feedback_ctl_data_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_feedback_ctl_data_serialize(_buffer: Ppointer; class_id: Tuint8_t; _aux: Pxcb_input_feedback_ctl_data_t): longint; cdecl; external libxcb_xinput;
function xcb_input_feedback_ctl_data_unpack(_buffer: pointer; class_id: Tuint8_t; _aux: Pxcb_input_feedback_ctl_data_t): longint; cdecl; external libxcb_xinput;
function xcb_input_feedback_ctl_data_sizeof(_buffer: pointer; class_id: Tuint8_t): longint; cdecl; external libxcb_xinput;
function xcb_input_feedback_ctl_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
procedure xcb_input_feedback_ctl_next(i: Pxcb_input_feedback_ctl_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_feedback_ctl_end(i: Txcb_input_feedback_ctl_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_change_feedback_control_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_change_feedback_control_checked(c: Pxcb_connection_t; mask: Tuint32_t; device_id: Tuint8_t; feedback_id: Tuint8_t; feedback: Pxcb_input_feedback_ctl_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_change_feedback_control(c: Pxcb_connection_t; mask: Tuint32_t; device_id: Tuint8_t; feedback_id: Tuint8_t; feedback: Pxcb_input_feedback_ctl_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_change_feedback_control_feedback(R: Pxcb_input_change_feedback_control_request_t): Pxcb_input_feedback_ctl_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_key_mapping_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_get_device_key_mapping(c: Pxcb_connection_t; device_id: Tuint8_t; first_keycode: Txcb_input_key_code_t; count: Tuint8_t): Txcb_input_get_device_key_mapping_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_key_mapping_unchecked(c: Pxcb_connection_t; device_id: Tuint8_t; first_keycode: Txcb_input_key_code_t; count: Tuint8_t): Txcb_input_get_device_key_mapping_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_key_mapping_keysyms(R: Pxcb_input_get_device_key_mapping_reply_t): Pxcb_keysym_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_key_mapping_keysyms_length(R: Pxcb_input_get_device_key_mapping_reply_t): longint; cdecl; external libxcb_xinput;
function xcb_input_get_device_key_mapping_keysyms_end(R: Pxcb_input_get_device_key_mapping_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_key_mapping_reply(c: Pxcb_connection_t; cookie: Txcb_input_get_device_key_mapping_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_get_device_key_mapping_reply_t; cdecl; external libxcb_xinput;
function xcb_input_change_device_key_mapping_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_change_device_key_mapping_checked(c: Pxcb_connection_t; device_id: Tuint8_t; first_keycode: Txcb_input_key_code_t; keysyms_per_keycode: Tuint8_t; keycode_count: Tuint8_t;
  keysyms: Pxcb_keysym_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_change_device_key_mapping(c: Pxcb_connection_t; device_id: Tuint8_t; first_keycode: Txcb_input_key_code_t; keysyms_per_keycode: Tuint8_t; keycode_count: Tuint8_t;
  keysyms: Pxcb_keysym_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_change_device_key_mapping_keysyms(R: Pxcb_input_change_device_key_mapping_request_t): Pxcb_keysym_t; cdecl; external libxcb_xinput;
function xcb_input_change_device_key_mapping_keysyms_length(R: Pxcb_input_change_device_key_mapping_request_t): longint; cdecl; external libxcb_xinput;
function xcb_input_change_device_key_mapping_keysyms_end(R: Pxcb_input_change_device_key_mapping_request_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_modifier_mapping_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_get_device_modifier_mapping(c: Pxcb_connection_t; device_id: Tuint8_t): Txcb_input_get_device_modifier_mapping_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_modifier_mapping_unchecked(c: Pxcb_connection_t; device_id: Tuint8_t): Txcb_input_get_device_modifier_mapping_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_modifier_mapping_keymaps(R: Pxcb_input_get_device_modifier_mapping_reply_t): Puint8_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_modifier_mapping_keymaps_length(R: Pxcb_input_get_device_modifier_mapping_reply_t): longint; cdecl; external libxcb_xinput;
function xcb_input_get_device_modifier_mapping_keymaps_end(R: Pxcb_input_get_device_modifier_mapping_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_modifier_mapping_reply(c: Pxcb_connection_t; cookie: Txcb_input_get_device_modifier_mapping_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_get_device_modifier_mapping_reply_t; cdecl; external libxcb_xinput;
function xcb_input_set_device_modifier_mapping_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_set_device_modifier_mapping(c: Pxcb_connection_t; device_id: Tuint8_t; keycodes_per_modifier: Tuint8_t; keymaps: Puint8_t): Txcb_input_set_device_modifier_mapping_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_set_device_modifier_mapping_unchecked(c: Pxcb_connection_t; device_id: Tuint8_t; keycodes_per_modifier: Tuint8_t; keymaps: Puint8_t): Txcb_input_set_device_modifier_mapping_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_set_device_modifier_mapping_reply(c: Pxcb_connection_t; cookie: Txcb_input_set_device_modifier_mapping_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_set_device_modifier_mapping_reply_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_button_mapping_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_get_device_button_mapping(c: Pxcb_connection_t; device_id: Tuint8_t): Txcb_input_get_device_button_mapping_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_button_mapping_unchecked(c: Pxcb_connection_t; device_id: Tuint8_t): Txcb_input_get_device_button_mapping_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_button_mapping_map(R: Pxcb_input_get_device_button_mapping_reply_t): Puint8_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_button_mapping_map_length(R: Pxcb_input_get_device_button_mapping_reply_t): longint; cdecl; external libxcb_xinput;
function xcb_input_get_device_button_mapping_map_end(R: Pxcb_input_get_device_button_mapping_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_button_mapping_reply(c: Pxcb_connection_t; cookie: Txcb_input_get_device_button_mapping_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_get_device_button_mapping_reply_t; cdecl; external libxcb_xinput;
function xcb_input_set_device_button_mapping_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_set_device_button_mapping(c: Pxcb_connection_t; device_id: Tuint8_t; map_size: Tuint8_t; map: Puint8_t): Txcb_input_set_device_button_mapping_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_set_device_button_mapping_unchecked(c: Pxcb_connection_t; device_id: Tuint8_t; map_size: Tuint8_t; map: Puint8_t): Txcb_input_set_device_button_mapping_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_set_device_button_mapping_reply(c: Pxcb_connection_t; cookie: Txcb_input_set_device_button_mapping_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_set_device_button_mapping_reply_t; cdecl; external libxcb_xinput;
procedure xcb_input_key_state_next(i: Pxcb_input_key_state_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_key_state_end(i: Txcb_input_key_state_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_button_state_next(i: Pxcb_input_button_state_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_button_state_end(i: Txcb_input_button_state_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_valuator_state_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_valuator_state_valuators(R: Pxcb_input_valuator_state_t): Pint32_t; cdecl; external libxcb_xinput;
function xcb_input_valuator_state_valuators_length(R: Pxcb_input_valuator_state_t): longint; cdecl; external libxcb_xinput;
function xcb_input_valuator_state_valuators_end(R: Pxcb_input_valuator_state_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_valuator_state_next(i: Pxcb_input_valuator_state_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_valuator_state_end(i: Txcb_input_valuator_state_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_input_state_data_valuator_valuators(S: Pxcb_input_input_state_data_t): Pint32_t; cdecl; external libxcb_xinput;
function xcb_input_input_state_data_valuator_valuators_length(R: Pxcb_input_input_state_t; S: Pxcb_input_input_state_data_t): longint; cdecl; external libxcb_xinput;
function xcb_input_input_state_data_valuator_valuators_end(R: Pxcb_input_input_state_t; S: Pxcb_input_input_state_data_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_input_state_data_serialize(_buffer: Ppointer; class_id: Tuint8_t; _aux: Pxcb_input_input_state_data_t): longint; cdecl; external libxcb_xinput;
function xcb_input_input_state_data_unpack(_buffer: pointer; class_id: Tuint8_t; _aux: Pxcb_input_input_state_data_t): longint; cdecl; external libxcb_xinput;
function xcb_input_input_state_data_sizeof(_buffer: pointer; class_id: Tuint8_t): longint; cdecl; external libxcb_xinput;
function xcb_input_input_state_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
procedure xcb_input_input_state_next(i: Pxcb_input_input_state_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_input_state_end(i: Txcb_input_input_state_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_query_device_state_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_query_device_state(c: Pxcb_connection_t; device_id: Tuint8_t): Txcb_input_query_device_state_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_query_device_state_unchecked(c: Pxcb_connection_t; device_id: Tuint8_t): Txcb_input_query_device_state_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_query_device_state_classes_length(R: Pxcb_input_query_device_state_reply_t): longint; cdecl; external libxcb_xinput;
function xcb_input_query_device_state_classes_iterator(R: Pxcb_input_query_device_state_reply_t): Txcb_input_input_state_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_query_device_state_reply(c: Pxcb_connection_t; cookie: Txcb_input_query_device_state_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_query_device_state_reply_t; cdecl; external libxcb_xinput;
function xcb_input_device_bell_checked(c: Pxcb_connection_t; device_id: Tuint8_t; feedback_id: Tuint8_t; feedback_class: Tuint8_t; percent: Tint8_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_device_bell(c: Pxcb_connection_t; device_id: Tuint8_t; feedback_id: Tuint8_t; feedback_class: Tuint8_t; percent: Tint8_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_set_device_valuators_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_set_device_valuators(c: Pxcb_connection_t; device_id: Tuint8_t; first_valuator: Tuint8_t; num_valuators: Tuint8_t; valuators: Pint32_t): Txcb_input_set_device_valuators_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_set_device_valuators_unchecked(c: Pxcb_connection_t; device_id: Tuint8_t; first_valuator: Tuint8_t; num_valuators: Tuint8_t; valuators: Pint32_t): Txcb_input_set_device_valuators_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_set_device_valuators_reply(c: Pxcb_connection_t; cookie: Txcb_input_set_device_valuators_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_set_device_valuators_reply_t; cdecl; external libxcb_xinput;
function xcb_input_device_resolution_state_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_device_resolution_state_resolution_values(R: Pxcb_input_device_resolution_state_t): Puint32_t; cdecl; external libxcb_xinput;
function xcb_input_device_resolution_state_resolution_values_length(R: Pxcb_input_device_resolution_state_t): longint; cdecl; external libxcb_xinput;
function xcb_input_device_resolution_state_resolution_values_end(R: Pxcb_input_device_resolution_state_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_device_resolution_state_resolution_min(R: Pxcb_input_device_resolution_state_t): Puint32_t; cdecl; external libxcb_xinput;
function xcb_input_device_resolution_state_resolution_min_length(R: Pxcb_input_device_resolution_state_t): longint; cdecl; external libxcb_xinput;
function xcb_input_device_resolution_state_resolution_min_end(R: Pxcb_input_device_resolution_state_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_device_resolution_state_resolution_max(R: Pxcb_input_device_resolution_state_t): Puint32_t; cdecl; external libxcb_xinput;
function xcb_input_device_resolution_state_resolution_max_length(R: Pxcb_input_device_resolution_state_t): longint; cdecl; external libxcb_xinput;
function xcb_input_device_resolution_state_resolution_max_end(R: Pxcb_input_device_resolution_state_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_device_resolution_state_next(i: Pxcb_input_device_resolution_state_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_device_resolution_state_end(i: Txcb_input_device_resolution_state_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_device_abs_calib_state_next(i: Pxcb_input_device_abs_calib_state_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_device_abs_calib_state_end(i: Txcb_input_device_abs_calib_state_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_device_abs_area_state_next(i: Pxcb_input_device_abs_area_state_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_device_abs_area_state_end(i: Txcb_input_device_abs_area_state_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_device_core_state_next(i: Pxcb_input_device_core_state_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_device_core_state_end(i: Txcb_input_device_core_state_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_device_enable_state_next(i: Pxcb_input_device_enable_state_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_device_enable_state_end(i: Txcb_input_device_enable_state_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_device_state_data_resolution_resolution_values(S: Pxcb_input_device_state_data_t): Puint32_t; cdecl; external libxcb_xinput;
function xcb_input_device_state_data_resolution_resolution_values_length(R: Pxcb_input_device_state_t; S: Pxcb_input_device_state_data_t): longint; cdecl; external libxcb_xinput;
function xcb_input_device_state_data_resolution_resolution_values_end(R: Pxcb_input_device_state_t; S: Pxcb_input_device_state_data_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_device_state_data_resolution_resolution_min(S: Pxcb_input_device_state_data_t): Puint32_t; cdecl; external libxcb_xinput;
function xcb_input_device_state_data_resolution_resolution_min_length(R: Pxcb_input_device_state_t; S: Pxcb_input_device_state_data_t): longint; cdecl; external libxcb_xinput;
function xcb_input_device_state_data_resolution_resolution_min_end(R: Pxcb_input_device_state_t; S: Pxcb_input_device_state_data_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_device_state_data_resolution_resolution_max(S: Pxcb_input_device_state_data_t): Puint32_t; cdecl; external libxcb_xinput;
function xcb_input_device_state_data_resolution_resolution_max_length(R: Pxcb_input_device_state_t; S: Pxcb_input_device_state_data_t): longint; cdecl; external libxcb_xinput;
function xcb_input_device_state_data_resolution_resolution_max_end(R: Pxcb_input_device_state_t; S: Pxcb_input_device_state_data_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_device_state_data_serialize(_buffer: Ppointer; control_id: Tuint16_t; _aux: Pxcb_input_device_state_data_t): longint; cdecl; external libxcb_xinput;
function xcb_input_device_state_data_unpack(_buffer: pointer; control_id: Tuint16_t; _aux: Pxcb_input_device_state_data_t): longint; cdecl; external libxcb_xinput;
function xcb_input_device_state_data_sizeof(_buffer: pointer; control_id: Tuint16_t): longint; cdecl; external libxcb_xinput;
function xcb_input_device_state_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
procedure xcb_input_device_state_next(i: Pxcb_input_device_state_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_device_state_end(i: Txcb_input_device_state_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_control_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_get_device_control(c: Pxcb_connection_t; control_id: Tuint16_t; device_id: Tuint8_t): Txcb_input_get_device_control_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_control_unchecked(c: Pxcb_connection_t; control_id: Tuint16_t; device_id: Tuint8_t): Txcb_input_get_device_control_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_control_control(R: Pxcb_input_get_device_control_reply_t): Pxcb_input_device_state_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_control_reply(c: Pxcb_connection_t; cookie: Txcb_input_get_device_control_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_get_device_control_reply_t; cdecl; external libxcb_xinput;
function xcb_input_device_resolution_ctl_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_device_resolution_ctl_resolution_values(R: Pxcb_input_device_resolution_ctl_t): Puint32_t; cdecl; external libxcb_xinput;
function xcb_input_device_resolution_ctl_resolution_values_length(R: Pxcb_input_device_resolution_ctl_t): longint; cdecl; external libxcb_xinput;
function xcb_input_device_resolution_ctl_resolution_values_end(R: Pxcb_input_device_resolution_ctl_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_device_resolution_ctl_next(i: Pxcb_input_device_resolution_ctl_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_device_resolution_ctl_end(i: Txcb_input_device_resolution_ctl_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_device_abs_calib_ctl_next(i: Pxcb_input_device_abs_calib_ctl_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_device_abs_calib_ctl_end(i: Txcb_input_device_abs_calib_ctl_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_device_abs_area_ctrl_next(i: Pxcb_input_device_abs_area_ctrl_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_device_abs_area_ctrl_end(i: Txcb_input_device_abs_area_ctrl_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_device_core_ctrl_next(i: Pxcb_input_device_core_ctrl_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_device_core_ctrl_end(i: Txcb_input_device_core_ctrl_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_device_enable_ctrl_next(i: Pxcb_input_device_enable_ctrl_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_device_enable_ctrl_end(i: Txcb_input_device_enable_ctrl_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_device_ctl_data_resolution_resolution_values(S: Pxcb_input_device_ctl_data_t): Puint32_t; cdecl; external libxcb_xinput;
function xcb_input_device_ctl_data_resolution_resolution_values_length(R: Pxcb_input_device_ctl_t; S: Pxcb_input_device_ctl_data_t): longint; cdecl; external libxcb_xinput;
function xcb_input_device_ctl_data_resolution_resolution_values_end(R: Pxcb_input_device_ctl_t; S: Pxcb_input_device_ctl_data_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_device_ctl_data_serialize(_buffer: Ppointer; control_id: Tuint16_t; _aux: Pxcb_input_device_ctl_data_t): longint; cdecl; external libxcb_xinput;
function xcb_input_device_ctl_data_unpack(_buffer: pointer; control_id: Tuint16_t; _aux: Pxcb_input_device_ctl_data_t): longint; cdecl; external libxcb_xinput;
function xcb_input_device_ctl_data_sizeof(_buffer: pointer; control_id: Tuint16_t): longint; cdecl; external libxcb_xinput;
function xcb_input_device_ctl_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
procedure xcb_input_device_ctl_next(i: Pxcb_input_device_ctl_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_device_ctl_end(i: Txcb_input_device_ctl_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_change_device_control_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_change_device_control(c: Pxcb_connection_t; control_id: Tuint16_t; device_id: Tuint8_t; control: Pxcb_input_device_ctl_t): Txcb_input_change_device_control_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_change_device_control_unchecked(c: Pxcb_connection_t; control_id: Tuint16_t; device_id: Tuint8_t; control: Pxcb_input_device_ctl_t): Txcb_input_change_device_control_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_change_device_control_reply(c: Pxcb_connection_t; cookie: Txcb_input_change_device_control_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_change_device_control_reply_t; cdecl; external libxcb_xinput;
function xcb_input_list_device_properties_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_list_device_properties(c: Pxcb_connection_t; device_id: Tuint8_t): Txcb_input_list_device_properties_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_list_device_properties_unchecked(c: Pxcb_connection_t; device_id: Tuint8_t): Txcb_input_list_device_properties_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_list_device_properties_atoms(R: Pxcb_input_list_device_properties_reply_t): Pxcb_atom_t; cdecl; external libxcb_xinput;
function xcb_input_list_device_properties_atoms_length(R: Pxcb_input_list_device_properties_reply_t): longint; cdecl; external libxcb_xinput;
function xcb_input_list_device_properties_atoms_end(R: Pxcb_input_list_device_properties_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_list_device_properties_reply(c: Pxcb_connection_t; cookie: Txcb_input_list_device_properties_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_list_device_properties_reply_t; cdecl; external libxcb_xinput;
function xcb_input_change_device_property_items_data_8(S: Pxcb_input_change_device_property_items_t): Puint8_t; cdecl; external libxcb_xinput;
function xcb_input_change_device_property_items_data_8_length(R: Pxcb_input_change_device_property_request_t; S: Pxcb_input_change_device_property_items_t): longint; cdecl; external libxcb_xinput;
function xcb_input_change_device_property_items_data_8_end(R: Pxcb_input_change_device_property_request_t; S: Pxcb_input_change_device_property_items_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_change_device_property_items_data_16(S: Pxcb_input_change_device_property_items_t): Puint16_t; cdecl; external libxcb_xinput;
function xcb_input_change_device_property_items_data_16_length(R: Pxcb_input_change_device_property_request_t; S: Pxcb_input_change_device_property_items_t): longint; cdecl; external libxcb_xinput;
function xcb_input_change_device_property_items_data_16_end(R: Pxcb_input_change_device_property_request_t; S: Pxcb_input_change_device_property_items_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_change_device_property_items_data_32(S: Pxcb_input_change_device_property_items_t): Puint32_t; cdecl; external libxcb_xinput;
function xcb_input_change_device_property_items_data_32_length(R: Pxcb_input_change_device_property_request_t; S: Pxcb_input_change_device_property_items_t): longint; cdecl; external libxcb_xinput;
function xcb_input_change_device_property_items_data_32_end(R: Pxcb_input_change_device_property_request_t; S: Pxcb_input_change_device_property_items_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_change_device_property_items_serialize(_buffer: Ppointer; num_items: Tuint32_t; format: Tuint8_t; _aux: Pxcb_input_change_device_property_items_t): longint; cdecl; external libxcb_xinput;
function xcb_input_change_device_property_items_unpack(_buffer: pointer; num_items: Tuint32_t; format: Tuint8_t; _aux: Pxcb_input_change_device_property_items_t): longint; cdecl; external libxcb_xinput;
function xcb_input_change_device_property_items_sizeof(_buffer: pointer; num_items: Tuint32_t; format: Tuint8_t): longint; cdecl; external libxcb_xinput;
function xcb_input_change_device_property_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_change_device_property_checked(c: Pxcb_connection_t; _property: Txcb_atom_t; _type: Txcb_atom_t; device_id: Tuint8_t; format: Tuint8_t;
  mode: Tuint8_t; num_items: Tuint32_t; items: pointer): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_change_device_property(c: Pxcb_connection_t; _property: Txcb_atom_t; _type: Txcb_atom_t; device_id: Tuint8_t; format: Tuint8_t;
  mode: Tuint8_t; num_items: Tuint32_t; items: pointer): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_change_device_property_aux_checked(c: Pxcb_connection_t; _property: Txcb_atom_t; _type: Txcb_atom_t; device_id: Tuint8_t; format: Tuint8_t;
  mode: Tuint8_t; num_items: Tuint32_t; items: Pxcb_input_change_device_property_items_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_change_device_property_aux(c: Pxcb_connection_t; _property: Txcb_atom_t; _type: Txcb_atom_t; device_id: Tuint8_t; format: Tuint8_t;
  mode: Tuint8_t; num_items: Tuint32_t; items: Pxcb_input_change_device_property_items_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_change_device_property_items(R: Pxcb_input_change_device_property_request_t): pointer; cdecl; external libxcb_xinput;
function xcb_input_delete_device_property_checked(c: Pxcb_connection_t; _property: Txcb_atom_t; device_id: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_delete_device_property(c: Pxcb_connection_t; _property: Txcb_atom_t; device_id: Tuint8_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_property_items_data_8(S: Pxcb_input_get_device_property_items_t): Puint8_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_property_items_data_8_length(R: Pxcb_input_get_device_property_reply_t; S: Pxcb_input_get_device_property_items_t): longint; cdecl; external libxcb_xinput;
function xcb_input_get_device_property_items_data_8_end(R: Pxcb_input_get_device_property_reply_t; S: Pxcb_input_get_device_property_items_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_property_items_data_16(S: Pxcb_input_get_device_property_items_t): Puint16_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_property_items_data_16_length(R: Pxcb_input_get_device_property_reply_t; S: Pxcb_input_get_device_property_items_t): longint; cdecl; external libxcb_xinput;
function xcb_input_get_device_property_items_data_16_end(R: Pxcb_input_get_device_property_reply_t; S: Pxcb_input_get_device_property_items_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_property_items_data_32(S: Pxcb_input_get_device_property_items_t): Puint32_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_property_items_data_32_length(R: Pxcb_input_get_device_property_reply_t; S: Pxcb_input_get_device_property_items_t): longint; cdecl; external libxcb_xinput;
function xcb_input_get_device_property_items_data_32_end(R: Pxcb_input_get_device_property_reply_t; S: Pxcb_input_get_device_property_items_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_property_items_serialize(_buffer: Ppointer; num_items: Tuint32_t; format: Tuint8_t; _aux: Pxcb_input_get_device_property_items_t): longint; cdecl; external libxcb_xinput;
function xcb_input_get_device_property_items_unpack(_buffer: pointer; num_items: Tuint32_t; format: Tuint8_t; _aux: Pxcb_input_get_device_property_items_t): longint; cdecl; external libxcb_xinput;
function xcb_input_get_device_property_items_sizeof(_buffer: pointer; num_items: Tuint32_t; format: Tuint8_t): longint; cdecl; external libxcb_xinput;
function xcb_input_get_device_property_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_get_device_property(c: Pxcb_connection_t; _property: Txcb_atom_t; _type: Txcb_atom_t; offset: Tuint32_t; len: Tuint32_t;
  device_id: Tuint8_t; _delete: Tuint8_t): Txcb_input_get_device_property_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_property_unchecked(c: Pxcb_connection_t; _property: Txcb_atom_t; _type: Txcb_atom_t; offset: Tuint32_t; len: Tuint32_t;
  device_id: Tuint8_t; _delete: Tuint8_t): Txcb_input_get_device_property_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_get_device_property_items(R: Pxcb_input_get_device_property_reply_t): pointer; cdecl; external libxcb_xinput;
function xcb_input_get_device_property_reply(c: Pxcb_connection_t; cookie: Txcb_input_get_device_property_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_get_device_property_reply_t; cdecl; external libxcb_xinput;
procedure xcb_input_group_info_next(i: Pxcb_input_group_info_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_group_info_end(i: Txcb_input_group_info_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_modifier_info_next(i: Pxcb_input_modifier_info_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_modifier_info_end(i: Txcb_input_modifier_info_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_xi_query_pointer_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_query_pointer(c: Pxcb_connection_t; window: Txcb_window_t; deviceid: Txcb_input_device_id_t): Txcb_input_xi_query_pointer_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_query_pointer_unchecked(c: Pxcb_connection_t; window: Txcb_window_t; deviceid: Txcb_input_device_id_t): Txcb_input_xi_query_pointer_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_query_pointer_buttons(R: Pxcb_input_xi_query_pointer_reply_t): Puint32_t; cdecl; external libxcb_xinput;
function xcb_input_xi_query_pointer_buttons_length(R: Pxcb_input_xi_query_pointer_reply_t): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_query_pointer_buttons_end(R: Pxcb_input_xi_query_pointer_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_xi_query_pointer_reply(c: Pxcb_connection_t; cookie: Txcb_input_xi_query_pointer_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_xi_query_pointer_reply_t; cdecl; external libxcb_xinput;
function xcb_input_xi_warp_pointer_checked(c: Pxcb_connection_t; src_win: Txcb_window_t; dst_win: Txcb_window_t; src_x: Txcb_input_fp1616_t; src_y: Txcb_input_fp1616_t;
  src_width: Tuint16_t; src_height: Tuint16_t; dst_x: Txcb_input_fp1616_t; dst_y: Txcb_input_fp1616_t; deviceid: Txcb_input_device_id_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_warp_pointer(c: Pxcb_connection_t; src_win: Txcb_window_t; dst_win: Txcb_window_t; src_x: Txcb_input_fp1616_t; src_y: Txcb_input_fp1616_t;
  src_width: Tuint16_t; src_height: Tuint16_t; dst_x: Txcb_input_fp1616_t; dst_y: Txcb_input_fp1616_t; deviceid: Txcb_input_device_id_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_change_cursor_checked(c: Pxcb_connection_t; window: Txcb_window_t; cursor: Txcb_cursor_t; deviceid: Txcb_input_device_id_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_change_cursor(c: Pxcb_connection_t; window: Txcb_window_t; cursor: Txcb_cursor_t; deviceid: Txcb_input_device_id_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_add_master_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_add_master_name(R: Pxcb_input_add_master_t): pchar; cdecl; external libxcb_xinput;
function xcb_input_add_master_name_length(R: Pxcb_input_add_master_t): longint; cdecl; external libxcb_xinput;
function xcb_input_add_master_name_end(R: Pxcb_input_add_master_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_add_master_next(i: Pxcb_input_add_master_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_add_master_end(i: Txcb_input_add_master_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_remove_master_next(i: Pxcb_input_remove_master_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_remove_master_end(i: Txcb_input_remove_master_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_attach_slave_next(i: Pxcb_input_attach_slave_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_attach_slave_end(i: Txcb_input_attach_slave_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_detach_slave_next(i: Pxcb_input_detach_slave_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_detach_slave_end(i: Txcb_input_detach_slave_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_hierarchy_change_data_add_master_name(S: Pxcb_input_hierarchy_change_data_t): pchar; cdecl; external libxcb_xinput;
function xcb_input_hierarchy_change_data_add_master_name_length(R: Pxcb_input_hierarchy_change_t; S: Pxcb_input_hierarchy_change_data_t): longint; cdecl; external libxcb_xinput;
function xcb_input_hierarchy_change_data_add_master_name_end(R: Pxcb_input_hierarchy_change_t; S: Pxcb_input_hierarchy_change_data_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_hierarchy_change_data_serialize(_buffer: Ppointer; _type: Tuint16_t; _aux: Pxcb_input_hierarchy_change_data_t): longint; cdecl; external libxcb_xinput;
function xcb_input_hierarchy_change_data_unpack(_buffer: pointer; _type: Tuint16_t; _aux: Pxcb_input_hierarchy_change_data_t): longint; cdecl; external libxcb_xinput;
function xcb_input_hierarchy_change_data_sizeof(_buffer: pointer; _type: Tuint16_t): longint; cdecl; external libxcb_xinput;
function xcb_input_hierarchy_change_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
procedure xcb_input_hierarchy_change_next(i: Pxcb_input_hierarchy_change_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_hierarchy_change_end(i: Txcb_input_hierarchy_change_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_xi_change_hierarchy_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_change_hierarchy_checked(c: Pxcb_connection_t; num_changes: Tuint8_t; changes: Pxcb_input_hierarchy_change_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_change_hierarchy(c: Pxcb_connection_t; num_changes: Tuint8_t; changes: Pxcb_input_hierarchy_change_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_change_hierarchy_changes_length(R: Pxcb_input_xi_change_hierarchy_request_t): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_change_hierarchy_changes_iterator(R: Pxcb_input_xi_change_hierarchy_request_t): Txcb_input_hierarchy_change_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_xi_set_client_pointer_checked(c: Pxcb_connection_t; window: Txcb_window_t; deviceid: Txcb_input_device_id_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_set_client_pointer(c: Pxcb_connection_t; window: Txcb_window_t; deviceid: Txcb_input_device_id_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_get_client_pointer(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_input_xi_get_client_pointer_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_get_client_pointer_unchecked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_input_xi_get_client_pointer_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_get_client_pointer_reply(c: Pxcb_connection_t; cookie: Txcb_input_xi_get_client_pointer_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_xi_get_client_pointer_reply_t; cdecl; external libxcb_xinput;
function xcb_input_event_mask_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_event_mask_mask(R: Pxcb_input_event_mask_t): Puint32_t; cdecl; external libxcb_xinput;
function xcb_input_event_mask_mask_length(R: Pxcb_input_event_mask_t): longint; cdecl; external libxcb_xinput;
function xcb_input_event_mask_mask_end(R: Pxcb_input_event_mask_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_event_mask_next(i: Pxcb_input_event_mask_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_event_mask_end(i: Txcb_input_event_mask_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_xi_select_events_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_select_events_checked(c: Pxcb_connection_t; window: Txcb_window_t; num_mask: Tuint16_t; masks: Pxcb_input_event_mask_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_select_events(c: Pxcb_connection_t; window: Txcb_window_t; num_mask: Tuint16_t; masks: Pxcb_input_event_mask_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_select_events_masks_length(R: Pxcb_input_xi_select_events_request_t): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_select_events_masks_iterator(R: Pxcb_input_xi_select_events_request_t): Txcb_input_event_mask_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_xi_query_version(c: Pxcb_connection_t; major_version: Tuint16_t; minor_version: Tuint16_t): Txcb_input_xi_query_version_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_query_version_unchecked(c: Pxcb_connection_t; major_version: Tuint16_t; minor_version: Tuint16_t): Txcb_input_xi_query_version_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_query_version_reply(c: Pxcb_connection_t; cookie: Txcb_input_xi_query_version_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_xi_query_version_reply_t; cdecl; external libxcb_xinput;
function xcb_input_button_class_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_button_class_state(R: Pxcb_input_button_class_t): Puint32_t; cdecl; external libxcb_xinput;
function xcb_input_button_class_state_length(R: Pxcb_input_button_class_t): longint; cdecl; external libxcb_xinput;
function xcb_input_button_class_state_end(R: Pxcb_input_button_class_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_button_class_labels(R: Pxcb_input_button_class_t): Pxcb_atom_t; cdecl; external libxcb_xinput;
function xcb_input_button_class_labels_length(R: Pxcb_input_button_class_t): longint; cdecl; external libxcb_xinput;
function xcb_input_button_class_labels_end(R: Pxcb_input_button_class_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_button_class_next(i: Pxcb_input_button_class_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_button_class_end(i: Txcb_input_button_class_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_key_class_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_key_class_keys(R: Pxcb_input_key_class_t): Puint32_t; cdecl; external libxcb_xinput;
function xcb_input_key_class_keys_length(R: Pxcb_input_key_class_t): longint; cdecl; external libxcb_xinput;
function xcb_input_key_class_keys_end(R: Pxcb_input_key_class_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_key_class_next(i: Pxcb_input_key_class_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_key_class_end(i: Txcb_input_key_class_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_scroll_class_next(i: Pxcb_input_scroll_class_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_scroll_class_end(i: Txcb_input_scroll_class_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_touch_class_next(i: Pxcb_input_touch_class_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_touch_class_end(i: Txcb_input_touch_class_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_gesture_class_next(i: Pxcb_input_gesture_class_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_gesture_class_end(i: Txcb_input_gesture_class_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_valuator_class_next(i: Pxcb_input_valuator_class_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_valuator_class_end(i: Txcb_input_valuator_class_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_device_class_data_key_keys(S: Pxcb_input_device_class_data_t): Puint32_t; cdecl; external libxcb_xinput;
function xcb_input_device_class_data_key_keys_length(R: Pxcb_input_device_class_t; S: Pxcb_input_device_class_data_t): longint; cdecl; external libxcb_xinput;
function xcb_input_device_class_data_key_keys_end(R: Pxcb_input_device_class_t; S: Pxcb_input_device_class_data_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_device_class_data_button_state(S: Pxcb_input_device_class_data_t): Puint32_t; cdecl; external libxcb_xinput;
function xcb_input_device_class_data_button_state_length(R: Pxcb_input_device_class_t; S: Pxcb_input_device_class_data_t): longint; cdecl; external libxcb_xinput;
function xcb_input_device_class_data_button_state_end(R: Pxcb_input_device_class_t; S: Pxcb_input_device_class_data_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_device_class_data_button_labels(S: Pxcb_input_device_class_data_t): Pxcb_atom_t; cdecl; external libxcb_xinput;
function xcb_input_device_class_data_button_labels_length(R: Pxcb_input_device_class_t; S: Pxcb_input_device_class_data_t): longint; cdecl; external libxcb_xinput;
function xcb_input_device_class_data_button_labels_end(R: Pxcb_input_device_class_t; S: Pxcb_input_device_class_data_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_device_class_data_serialize(_buffer: Ppointer; _type: Tuint16_t; _aux: Pxcb_input_device_class_data_t): longint; cdecl; external libxcb_xinput;
function xcb_input_device_class_data_unpack(_buffer: pointer; _type: Tuint16_t; _aux: Pxcb_input_device_class_data_t): longint; cdecl; external libxcb_xinput;
function xcb_input_device_class_data_sizeof(_buffer: pointer; _type: Tuint16_t): longint; cdecl; external libxcb_xinput;
function xcb_input_device_class_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
procedure xcb_input_device_class_next(i: Pxcb_input_device_class_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_device_class_end(i: Txcb_input_device_class_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_xi_device_info_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_device_info_name(R: Pxcb_input_xi_device_info_t): pchar; cdecl; external libxcb_xinput;
function xcb_input_xi_device_info_name_length(R: Pxcb_input_xi_device_info_t): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_device_info_name_end(R: Pxcb_input_xi_device_info_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_xi_device_info_classes_length(R: Pxcb_input_xi_device_info_t): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_device_info_classes_iterator(R: Pxcb_input_xi_device_info_t): Txcb_input_device_class_iterator_t; cdecl; external libxcb_xinput;
procedure xcb_input_xi_device_info_next(i: Pxcb_input_xi_device_info_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_xi_device_info_end(i: Txcb_input_xi_device_info_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_xi_query_device_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_query_device(c: Pxcb_connection_t; deviceid: Txcb_input_device_id_t): Txcb_input_xi_query_device_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_query_device_unchecked(c: Pxcb_connection_t; deviceid: Txcb_input_device_id_t): Txcb_input_xi_query_device_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_query_device_infos_length(R: Pxcb_input_xi_query_device_reply_t): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_query_device_infos_iterator(R: Pxcb_input_xi_query_device_reply_t): Txcb_input_xi_device_info_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_xi_query_device_reply(c: Pxcb_connection_t; cookie: Txcb_input_xi_query_device_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_xi_query_device_reply_t; cdecl; external libxcb_xinput;
function xcb_input_xi_set_focus_checked(c: Pxcb_connection_t; window: Txcb_window_t; time: Txcb_timestamp_t; deviceid: Txcb_input_device_id_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_set_focus(c: Pxcb_connection_t; window: Txcb_window_t; time: Txcb_timestamp_t; deviceid: Txcb_input_device_id_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_get_focus(c: Pxcb_connection_t; deviceid: Txcb_input_device_id_t): Txcb_input_xi_get_focus_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_get_focus_unchecked(c: Pxcb_connection_t; deviceid: Txcb_input_device_id_t): Txcb_input_xi_get_focus_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_get_focus_reply(c: Pxcb_connection_t; cookie: Txcb_input_xi_get_focus_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_xi_get_focus_reply_t; cdecl; external libxcb_xinput;
function xcb_input_xi_grab_device_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_grab_device(c: Pxcb_connection_t; window: Txcb_window_t; time: Txcb_timestamp_t; cursor: Txcb_cursor_t; deviceid: Txcb_input_device_id_t;
  mode: Tuint8_t; paired_device_mode: Tuint8_t; owner_events: Tuint8_t; mask_len: Tuint16_t; mask: Puint32_t): Txcb_input_xi_grab_device_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_grab_device_unchecked(c: Pxcb_connection_t; window: Txcb_window_t; time: Txcb_timestamp_t; cursor: Txcb_cursor_t; deviceid: Txcb_input_device_id_t;
  mode: Tuint8_t; paired_device_mode: Tuint8_t; owner_events: Tuint8_t; mask_len: Tuint16_t; mask: Puint32_t): Txcb_input_xi_grab_device_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_grab_device_reply(c: Pxcb_connection_t; cookie: Txcb_input_xi_grab_device_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_xi_grab_device_reply_t; cdecl; external libxcb_xinput;
function xcb_input_xi_ungrab_device_checked(c: Pxcb_connection_t; time: Txcb_timestamp_t; deviceid: Txcb_input_device_id_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_ungrab_device(c: Pxcb_connection_t; time: Txcb_timestamp_t; deviceid: Txcb_input_device_id_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_allow_events_checked(c: Pxcb_connection_t; time: Txcb_timestamp_t; deviceid: Txcb_input_device_id_t; event_mode: Tuint8_t; touchid: Tuint32_t;
  grab_window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_allow_events(c: Pxcb_connection_t; time: Txcb_timestamp_t; deviceid: Txcb_input_device_id_t; event_mode: Tuint8_t; touchid: Tuint32_t;
  grab_window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
procedure xcb_input_grab_modifier_info_next(i: Pxcb_input_grab_modifier_info_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_grab_modifier_info_end(i: Txcb_input_grab_modifier_info_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_xi_passive_grab_device_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_passive_grab_device(c: Pxcb_connection_t; time: Txcb_timestamp_t; grab_window: Txcb_window_t; cursor: Txcb_cursor_t; detail: Tuint32_t;
  deviceid: Txcb_input_device_id_t; num_modifiers: Tuint16_t; mask_len: Tuint16_t; grab_type: Tuint8_t; grab_mode: Tuint8_t;
  paired_device_mode: Tuint8_t; owner_events: Tuint8_t; mask: Puint32_t; modifiers: Puint32_t): Txcb_input_xi_passive_grab_device_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_passive_grab_device_unchecked(c: Pxcb_connection_t; time: Txcb_timestamp_t; grab_window: Txcb_window_t; cursor: Txcb_cursor_t; detail: Tuint32_t;
  deviceid: Txcb_input_device_id_t; num_modifiers: Tuint16_t; mask_len: Tuint16_t; grab_type: Tuint8_t; grab_mode: Tuint8_t;
  paired_device_mode: Tuint8_t; owner_events: Tuint8_t; mask: Puint32_t; modifiers: Puint32_t): Txcb_input_xi_passive_grab_device_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_passive_grab_device_modifiers(R: Pxcb_input_xi_passive_grab_device_reply_t): Pxcb_input_grab_modifier_info_t; cdecl; external libxcb_xinput;
function xcb_input_xi_passive_grab_device_modifiers_length(R: Pxcb_input_xi_passive_grab_device_reply_t): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_passive_grab_device_modifiers_iterator(R: Pxcb_input_xi_passive_grab_device_reply_t): Txcb_input_grab_modifier_info_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_xi_passive_grab_device_reply(c: Pxcb_connection_t; cookie: Txcb_input_xi_passive_grab_device_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_xi_passive_grab_device_reply_t; cdecl; external libxcb_xinput;
function xcb_input_xi_passive_ungrab_device_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_passive_ungrab_device_checked(c: Pxcb_connection_t; grab_window: Txcb_window_t; detail: Tuint32_t; deviceid: Txcb_input_device_id_t; num_modifiers: Tuint16_t;
  grab_type: Tuint8_t; modifiers: Puint32_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_passive_ungrab_device(c: Pxcb_connection_t; grab_window: Txcb_window_t; detail: Tuint32_t; deviceid: Txcb_input_device_id_t; num_modifiers: Tuint16_t;
  grab_type: Tuint8_t; modifiers: Puint32_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_passive_ungrab_device_modifiers(R: Pxcb_input_xi_passive_ungrab_device_request_t): Puint32_t; cdecl; external libxcb_xinput;
function xcb_input_xi_passive_ungrab_device_modifiers_length(R: Pxcb_input_xi_passive_ungrab_device_request_t): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_passive_ungrab_device_modifiers_end(R: Pxcb_input_xi_passive_ungrab_device_request_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_xi_list_properties_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_list_properties(c: Pxcb_connection_t; deviceid: Txcb_input_device_id_t): Txcb_input_xi_list_properties_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_list_properties_unchecked(c: Pxcb_connection_t; deviceid: Txcb_input_device_id_t): Txcb_input_xi_list_properties_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_list_properties_properties(R: Pxcb_input_xi_list_properties_reply_t): Pxcb_atom_t; cdecl; external libxcb_xinput;
function xcb_input_xi_list_properties_properties_length(R: Pxcb_input_xi_list_properties_reply_t): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_list_properties_properties_end(R: Pxcb_input_xi_list_properties_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_xi_list_properties_reply(c: Pxcb_connection_t; cookie: Txcb_input_xi_list_properties_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_xi_list_properties_reply_t; cdecl; external libxcb_xinput;
function xcb_input_xi_change_property_items_data_8(S: Pxcb_input_xi_change_property_items_t): Puint8_t; cdecl; external libxcb_xinput;
function xcb_input_xi_change_property_items_data_8_length(R: Pxcb_input_xi_change_property_request_t; S: Pxcb_input_xi_change_property_items_t): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_change_property_items_data_8_end(R: Pxcb_input_xi_change_property_request_t; S: Pxcb_input_xi_change_property_items_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_xi_change_property_items_data_16(S: Pxcb_input_xi_change_property_items_t): Puint16_t; cdecl; external libxcb_xinput;
function xcb_input_xi_change_property_items_data_16_length(R: Pxcb_input_xi_change_property_request_t; S: Pxcb_input_xi_change_property_items_t): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_change_property_items_data_16_end(R: Pxcb_input_xi_change_property_request_t; S: Pxcb_input_xi_change_property_items_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_xi_change_property_items_data_32(S: Pxcb_input_xi_change_property_items_t): Puint32_t; cdecl; external libxcb_xinput;
function xcb_input_xi_change_property_items_data_32_length(R: Pxcb_input_xi_change_property_request_t; S: Pxcb_input_xi_change_property_items_t): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_change_property_items_data_32_end(R: Pxcb_input_xi_change_property_request_t; S: Pxcb_input_xi_change_property_items_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_xi_change_property_items_serialize(_buffer: Ppointer; num_items: Tuint32_t; format: Tuint8_t; _aux: Pxcb_input_xi_change_property_items_t): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_change_property_items_unpack(_buffer: pointer; num_items: Tuint32_t; format: Tuint8_t; _aux: Pxcb_input_xi_change_property_items_t): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_change_property_items_sizeof(_buffer: pointer; num_items: Tuint32_t; format: Tuint8_t): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_change_property_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_change_property_checked(c: Pxcb_connection_t; deviceid: Txcb_input_device_id_t; mode: Tuint8_t; format: Tuint8_t; _property: Txcb_atom_t;
  _type: Txcb_atom_t; num_items: Tuint32_t; items: pointer): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_change_property(c: Pxcb_connection_t; deviceid: Txcb_input_device_id_t; mode: Tuint8_t; format: Tuint8_t; _property: Txcb_atom_t;
  _type: Txcb_atom_t; num_items: Tuint32_t; items: pointer): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_change_property_aux_checked(c: Pxcb_connection_t; deviceid: Txcb_input_device_id_t; mode: Tuint8_t; format: Tuint8_t; _property: Txcb_atom_t;
  _type: Txcb_atom_t; num_items: Tuint32_t; items: Pxcb_input_xi_change_property_items_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_change_property_aux(c: Pxcb_connection_t; deviceid: Txcb_input_device_id_t; mode: Tuint8_t; format: Tuint8_t; _property: Txcb_atom_t;
  _type: Txcb_atom_t; num_items: Tuint32_t; items: Pxcb_input_xi_change_property_items_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_change_property_items(R: Pxcb_input_xi_change_property_request_t): pointer; cdecl; external libxcb_xinput;
function xcb_input_xi_delete_property_checked(c: Pxcb_connection_t; deviceid: Txcb_input_device_id_t; _property: Txcb_atom_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_delete_property(c: Pxcb_connection_t; deviceid: Txcb_input_device_id_t; _property: Txcb_atom_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_get_property_items_data_8(S: Pxcb_input_xi_get_property_items_t): Puint8_t; cdecl; external libxcb_xinput;
function xcb_input_xi_get_property_items_data_8_length(R: Pxcb_input_xi_get_property_reply_t; S: Pxcb_input_xi_get_property_items_t): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_get_property_items_data_8_end(R: Pxcb_input_xi_get_property_reply_t; S: Pxcb_input_xi_get_property_items_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_xi_get_property_items_data_16(S: Pxcb_input_xi_get_property_items_t): Puint16_t; cdecl; external libxcb_xinput;
function xcb_input_xi_get_property_items_data_16_length(R: Pxcb_input_xi_get_property_reply_t; S: Pxcb_input_xi_get_property_items_t): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_get_property_items_data_16_end(R: Pxcb_input_xi_get_property_reply_t; S: Pxcb_input_xi_get_property_items_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_xi_get_property_items_data_32(S: Pxcb_input_xi_get_property_items_t): Puint32_t; cdecl; external libxcb_xinput;
function xcb_input_xi_get_property_items_data_32_length(R: Pxcb_input_xi_get_property_reply_t; S: Pxcb_input_xi_get_property_items_t): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_get_property_items_data_32_end(R: Pxcb_input_xi_get_property_reply_t; S: Pxcb_input_xi_get_property_items_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_xi_get_property_items_serialize(_buffer: Ppointer; num_items: Tuint32_t; format: Tuint8_t; _aux: Pxcb_input_xi_get_property_items_t): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_get_property_items_unpack(_buffer: pointer; num_items: Tuint32_t; format: Tuint8_t; _aux: Pxcb_input_xi_get_property_items_t): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_get_property_items_sizeof(_buffer: pointer; num_items: Tuint32_t; format: Tuint8_t): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_get_property_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_get_property(c: Pxcb_connection_t; deviceid: Txcb_input_device_id_t; _delete: Tuint8_t; _property: Txcb_atom_t; _type: Txcb_atom_t;
  offset: Tuint32_t; len: Tuint32_t): Txcb_input_xi_get_property_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_get_property_unchecked(c: Pxcb_connection_t; deviceid: Txcb_input_device_id_t; _delete: Tuint8_t; _property: Txcb_atom_t; _type: Txcb_atom_t;
  offset: Tuint32_t; len: Tuint32_t): Txcb_input_xi_get_property_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_get_property_items(R: Pxcb_input_xi_get_property_reply_t): pointer; cdecl; external libxcb_xinput;
function xcb_input_xi_get_property_reply(c: Pxcb_connection_t; cookie: Txcb_input_xi_get_property_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_xi_get_property_reply_t; cdecl; external libxcb_xinput;
function xcb_input_xi_get_selected_events_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_get_selected_events(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_input_xi_get_selected_events_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_get_selected_events_unchecked(c: Pxcb_connection_t; window: Txcb_window_t): Txcb_input_xi_get_selected_events_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_get_selected_events_masks_length(R: Pxcb_input_xi_get_selected_events_reply_t): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_get_selected_events_masks_iterator(R: Pxcb_input_xi_get_selected_events_reply_t): Txcb_input_event_mask_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_xi_get_selected_events_reply(c: Pxcb_connection_t; cookie: Txcb_input_xi_get_selected_events_cookie_t; e: PPxcb_generic_error_t): Pxcb_input_xi_get_selected_events_reply_t; cdecl; external libxcb_xinput;
procedure xcb_input_barrier_release_pointer_info_next(i: Pxcb_input_barrier_release_pointer_info_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_barrier_release_pointer_info_end(i: Txcb_input_barrier_release_pointer_info_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_xi_barrier_release_pointer_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_barrier_release_pointer_checked(c: Pxcb_connection_t; num_barriers: Tuint32_t; barriers: Pxcb_input_barrier_release_pointer_info_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_barrier_release_pointer(c: Pxcb_connection_t; num_barriers: Tuint32_t; barriers: Pxcb_input_barrier_release_pointer_info_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_xi_barrier_release_pointer_barriers(R: Pxcb_input_xi_barrier_release_pointer_request_t): Pxcb_input_barrier_release_pointer_info_t; cdecl; external libxcb_xinput;
function xcb_input_xi_barrier_release_pointer_barriers_length(R: Pxcb_input_xi_barrier_release_pointer_request_t): longint; cdecl; external libxcb_xinput;
function xcb_input_xi_barrier_release_pointer_barriers_iterator(R: Pxcb_input_xi_barrier_release_pointer_request_t): Txcb_input_barrier_release_pointer_info_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_device_changed_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_device_changed_classes_length(R: Pxcb_input_device_changed_event_t): longint; cdecl; external libxcb_xinput;
function xcb_input_device_changed_classes_iterator(R: Pxcb_input_device_changed_event_t): Txcb_input_device_class_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_key_press_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_key_press_button_mask(R: Pxcb_input_key_press_event_t): Puint32_t; cdecl; external libxcb_xinput;
function xcb_input_key_press_button_mask_length(R: Pxcb_input_key_press_event_t): longint; cdecl; external libxcb_xinput;
function xcb_input_key_press_button_mask_end(R: Pxcb_input_key_press_event_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_key_press_valuator_mask(R: Pxcb_input_key_press_event_t): Puint32_t; cdecl; external libxcb_xinput;
function xcb_input_key_press_valuator_mask_length(R: Pxcb_input_key_press_event_t): longint; cdecl; external libxcb_xinput;
function xcb_input_key_press_valuator_mask_end(R: Pxcb_input_key_press_event_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_key_press_axisvalues(R: Pxcb_input_key_press_event_t): Pxcb_input_fp3232_t; cdecl; external libxcb_xinput;
function xcb_input_key_press_axisvalues_length(R: Pxcb_input_key_press_event_t): longint; cdecl; external libxcb_xinput;
function xcb_input_key_press_axisvalues_iterator(R: Pxcb_input_key_press_event_t): Txcb_input_fp3232_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_key_release_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_button_press_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_button_press_button_mask(R: Pxcb_input_button_press_event_t): Puint32_t; cdecl; external libxcb_xinput;
function xcb_input_button_press_button_mask_length(R: Pxcb_input_button_press_event_t): longint; cdecl; external libxcb_xinput;
function xcb_input_button_press_button_mask_end(R: Pxcb_input_button_press_event_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_button_press_valuator_mask(R: Pxcb_input_button_press_event_t): Puint32_t; cdecl; external libxcb_xinput;
function xcb_input_button_press_valuator_mask_length(R: Pxcb_input_button_press_event_t): longint; cdecl; external libxcb_xinput;
function xcb_input_button_press_valuator_mask_end(R: Pxcb_input_button_press_event_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_button_press_axisvalues(R: Pxcb_input_button_press_event_t): Pxcb_input_fp3232_t; cdecl; external libxcb_xinput;
function xcb_input_button_press_axisvalues_length(R: Pxcb_input_button_press_event_t): longint; cdecl; external libxcb_xinput;
function xcb_input_button_press_axisvalues_iterator(R: Pxcb_input_button_press_event_t): Txcb_input_fp3232_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_button_release_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_motion_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_enter_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_enter_buttons(R: Pxcb_input_enter_event_t): Puint32_t; cdecl; external libxcb_xinput;
function xcb_input_enter_buttons_length(R: Pxcb_input_enter_event_t): longint; cdecl; external libxcb_xinput;
function xcb_input_enter_buttons_end(R: Pxcb_input_enter_event_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_leave_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_focus_in_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_focus_out_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
procedure xcb_input_hierarchy_info_next(i: Pxcb_input_hierarchy_info_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_hierarchy_info_end(i: Txcb_input_hierarchy_info_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_hierarchy_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_hierarchy_infos(R: Pxcb_input_hierarchy_event_t): Pxcb_input_hierarchy_info_t; cdecl; external libxcb_xinput;
function xcb_input_hierarchy_infos_length(R: Pxcb_input_hierarchy_event_t): longint; cdecl; external libxcb_xinput;
function xcb_input_hierarchy_infos_iterator(R: Pxcb_input_hierarchy_event_t): Txcb_input_hierarchy_info_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_raw_key_press_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_raw_key_press_valuator_mask(R: Pxcb_input_raw_key_press_event_t): Puint32_t; cdecl; external libxcb_xinput;
function xcb_input_raw_key_press_valuator_mask_length(R: Pxcb_input_raw_key_press_event_t): longint; cdecl; external libxcb_xinput;
function xcb_input_raw_key_press_valuator_mask_end(R: Pxcb_input_raw_key_press_event_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_raw_key_press_axisvalues(R: Pxcb_input_raw_key_press_event_t): Pxcb_input_fp3232_t; cdecl; external libxcb_xinput;
function xcb_input_raw_key_press_axisvalues_length(R: Pxcb_input_raw_key_press_event_t): longint; cdecl; external libxcb_xinput;
function xcb_input_raw_key_press_axisvalues_iterator(R: Pxcb_input_raw_key_press_event_t): Txcb_input_fp3232_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_raw_key_press_axisvalues_raw(R: Pxcb_input_raw_key_press_event_t): Pxcb_input_fp3232_t; cdecl; external libxcb_xinput;
function xcb_input_raw_key_press_axisvalues_raw_length(R: Pxcb_input_raw_key_press_event_t): longint; cdecl; external libxcb_xinput;
function xcb_input_raw_key_press_axisvalues_raw_iterator(R: Pxcb_input_raw_key_press_event_t): Txcb_input_fp3232_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_raw_key_release_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_raw_button_press_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_raw_button_press_valuator_mask(R: Pxcb_input_raw_button_press_event_t): Puint32_t; cdecl; external libxcb_xinput;
function xcb_input_raw_button_press_valuator_mask_length(R: Pxcb_input_raw_button_press_event_t): longint; cdecl; external libxcb_xinput;
function xcb_input_raw_button_press_valuator_mask_end(R: Pxcb_input_raw_button_press_event_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_raw_button_press_axisvalues(R: Pxcb_input_raw_button_press_event_t): Pxcb_input_fp3232_t; cdecl; external libxcb_xinput;
function xcb_input_raw_button_press_axisvalues_length(R: Pxcb_input_raw_button_press_event_t): longint; cdecl; external libxcb_xinput;
function xcb_input_raw_button_press_axisvalues_iterator(R: Pxcb_input_raw_button_press_event_t): Txcb_input_fp3232_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_raw_button_press_axisvalues_raw(R: Pxcb_input_raw_button_press_event_t): Pxcb_input_fp3232_t; cdecl; external libxcb_xinput;
function xcb_input_raw_button_press_axisvalues_raw_length(R: Pxcb_input_raw_button_press_event_t): longint; cdecl; external libxcb_xinput;
function xcb_input_raw_button_press_axisvalues_raw_iterator(R: Pxcb_input_raw_button_press_event_t): Txcb_input_fp3232_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_raw_button_release_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_raw_motion_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_touch_begin_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_touch_begin_button_mask(R: Pxcb_input_touch_begin_event_t): Puint32_t; cdecl; external libxcb_xinput;
function xcb_input_touch_begin_button_mask_length(R: Pxcb_input_touch_begin_event_t): longint; cdecl; external libxcb_xinput;
function xcb_input_touch_begin_button_mask_end(R: Pxcb_input_touch_begin_event_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_touch_begin_valuator_mask(R: Pxcb_input_touch_begin_event_t): Puint32_t; cdecl; external libxcb_xinput;
function xcb_input_touch_begin_valuator_mask_length(R: Pxcb_input_touch_begin_event_t): longint; cdecl; external libxcb_xinput;
function xcb_input_touch_begin_valuator_mask_end(R: Pxcb_input_touch_begin_event_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_touch_begin_axisvalues(R: Pxcb_input_touch_begin_event_t): Pxcb_input_fp3232_t; cdecl; external libxcb_xinput;
function xcb_input_touch_begin_axisvalues_length(R: Pxcb_input_touch_begin_event_t): longint; cdecl; external libxcb_xinput;
function xcb_input_touch_begin_axisvalues_iterator(R: Pxcb_input_touch_begin_event_t): Txcb_input_fp3232_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_touch_update_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_touch_end_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_raw_touch_begin_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_raw_touch_begin_valuator_mask(R: Pxcb_input_raw_touch_begin_event_t): Puint32_t; cdecl; external libxcb_xinput;
function xcb_input_raw_touch_begin_valuator_mask_length(R: Pxcb_input_raw_touch_begin_event_t): longint; cdecl; external libxcb_xinput;
function xcb_input_raw_touch_begin_valuator_mask_end(R: Pxcb_input_raw_touch_begin_event_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_raw_touch_begin_axisvalues(R: Pxcb_input_raw_touch_begin_event_t): Pxcb_input_fp3232_t; cdecl; external libxcb_xinput;
function xcb_input_raw_touch_begin_axisvalues_length(R: Pxcb_input_raw_touch_begin_event_t): longint; cdecl; external libxcb_xinput;
function xcb_input_raw_touch_begin_axisvalues_iterator(R: Pxcb_input_raw_touch_begin_event_t): Txcb_input_fp3232_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_raw_touch_begin_axisvalues_raw(R: Pxcb_input_raw_touch_begin_event_t): Pxcb_input_fp3232_t; cdecl; external libxcb_xinput;
function xcb_input_raw_touch_begin_axisvalues_raw_length(R: Pxcb_input_raw_touch_begin_event_t): longint; cdecl; external libxcb_xinput;
function xcb_input_raw_touch_begin_axisvalues_raw_iterator(R: Pxcb_input_raw_touch_begin_event_t): Txcb_input_fp3232_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_raw_touch_update_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_raw_touch_end_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
procedure xcb_input_event_for_send_next(i: Pxcb_input_event_for_send_iterator_t); cdecl; external libxcb_xinput;
function xcb_input_event_for_send_end(i: Txcb_input_event_for_send_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_send_extension_event_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xinput;
function xcb_input_send_extension_event_checked(c: Pxcb_connection_t; destination: Txcb_window_t; device_id: Tuint8_t; propagate: Tuint8_t; num_classes: Tuint16_t;
  num_events: Tuint8_t; events: Pxcb_input_event_for_send_t; classes: Pxcb_input_event_class_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_send_extension_event(c: Pxcb_connection_t; destination: Txcb_window_t; device_id: Tuint8_t; propagate: Tuint8_t; num_classes: Tuint16_t;
  num_events: Tuint8_t; events: Pxcb_input_event_for_send_t; classes: Pxcb_input_event_class_t): Txcb_void_cookie_t; cdecl; external libxcb_xinput;
function xcb_input_send_extension_event_events(R: Pxcb_input_send_extension_event_request_t): Pxcb_input_event_for_send_t; cdecl; external libxcb_xinput;
function xcb_input_send_extension_event_events_length(R: Pxcb_input_send_extension_event_request_t): longint; cdecl; external libxcb_xinput;
function xcb_input_send_extension_event_events_iterator(R: Pxcb_input_send_extension_event_request_t): Txcb_input_event_for_send_iterator_t; cdecl; external libxcb_xinput;
function xcb_input_send_extension_event_classes(R: Pxcb_input_send_extension_event_request_t): Pxcb_input_event_class_t; cdecl; external libxcb_xinput;
function xcb_input_send_extension_event_classes_length(R: Pxcb_input_send_extension_event_request_t): longint; cdecl; external libxcb_xinput;
function xcb_input_send_extension_event_classes_end(R: Pxcb_input_send_extension_event_request_t): Txcb_generic_iterator_t; cdecl; external libxcb_xinput;

// === Konventiert am: 9-10-25 19:21:03 ===


implementation



end.
