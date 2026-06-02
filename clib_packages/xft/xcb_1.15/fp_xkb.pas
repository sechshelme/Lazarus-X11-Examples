unit fp_xkb;

interface

uses
  fp_xcb;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


const
  XCB_XKB_MAJOR_VERSION = 1;
  XCB_XKB_MINOR_VERSION = 0;

var
  xcb_xkb_id: Txcb_extension_t; cvar;external libxcb_xkb;

type
  Pxcb_xkb_const_t = ^Txcb_xkb_const_t;
  Txcb_xkb_const_t = longint;

const
  XCB_XKB_CONST_MAX_LEGAL_KEY_CODE = 255;
  XCB_XKB_CONST_PER_KEY_BIT_ARRAY_SIZE = 32;
  XCB_XKB_CONST_KEY_NAME_LENGTH = 4;

type
  Pxcb_xkb_event_type_t = ^Txcb_xkb_event_type_t;
  Txcb_xkb_event_type_t = longint;

const
  XCB_XKB_EVENT_TYPE_NEW_KEYBOARD_NOTIFY = 1;
  XCB_XKB_EVENT_TYPE_MAP_NOTIFY = 2;
  XCB_XKB_EVENT_TYPE_STATE_NOTIFY = 4;
  XCB_XKB_EVENT_TYPE_CONTROLS_NOTIFY = 8;
  XCB_XKB_EVENT_TYPE_INDICATOR_STATE_NOTIFY = 16;
  XCB_XKB_EVENT_TYPE_INDICATOR_MAP_NOTIFY = 32;
  XCB_XKB_EVENT_TYPE_NAMES_NOTIFY = 64;
  XCB_XKB_EVENT_TYPE_COMPAT_MAP_NOTIFY = 128;
  XCB_XKB_EVENT_TYPE_BELL_NOTIFY = 256;
  XCB_XKB_EVENT_TYPE_ACTION_MESSAGE = 512;
  XCB_XKB_EVENT_TYPE_ACCESS_X_NOTIFY = 1024;
  XCB_XKB_EVENT_TYPE_EXTENSION_DEVICE_NOTIFY = 2048;

type
  Pxcb_xkb_nkn_detail_t = ^Txcb_xkb_nkn_detail_t;
  Txcb_xkb_nkn_detail_t = longint;

const
  XCB_XKB_NKN_DETAIL_KEYCODES = 1;
  XCB_XKB_NKN_DETAIL_GEOMETRY = 2;
  XCB_XKB_NKN_DETAIL_DEVICE_ID = 4;

type
  Pxcb_xkb_axn_detail_t = ^Txcb_xkb_axn_detail_t;
  Txcb_xkb_axn_detail_t = longint;

const
  XCB_XKB_AXN_DETAIL_SK_PRESS = 1;
  XCB_XKB_AXN_DETAIL_SK_ACCEPT = 2;
  XCB_XKB_AXN_DETAIL_SK_REJECT = 4;
  XCB_XKB_AXN_DETAIL_SK_RELEASE = 8;
  XCB_XKB_AXN_DETAIL_BK_ACCEPT = 16;
  XCB_XKB_AXN_DETAIL_BK_REJECT = 32;
  XCB_XKB_AXN_DETAIL_AXK_WARNING = 64;

type
  Pxcb_xkb_map_part_t = ^Txcb_xkb_map_part_t;
  Txcb_xkb_map_part_t = longint;

const
  XCB_XKB_MAP_PART_KEY_TYPES = 1;
  XCB_XKB_MAP_PART_KEY_SYMS = 2;
  XCB_XKB_MAP_PART_MODIFIER_MAP = 4;
  XCB_XKB_MAP_PART_EXPLICIT_COMPONENTS = 8;
  XCB_XKB_MAP_PART_KEY_ACTIONS = 16;
  XCB_XKB_MAP_PART_KEY_BEHAVIORS = 32;
  XCB_XKB_MAP_PART_VIRTUAL_MODS = 64;
  XCB_XKB_MAP_PART_VIRTUAL_MOD_MAP = 128;

type
  Pxcb_xkb_set_map_flags_t = ^Txcb_xkb_set_map_flags_t;
  Txcb_xkb_set_map_flags_t = longint;

const
  XCB_XKB_SET_MAP_FLAGS_RESIZE_TYPES = 1;
  XCB_XKB_SET_MAP_FLAGS_RECOMPUTE_ACTIONS = 2;

type
  Pxcb_xkb_state_part_t = ^Txcb_xkb_state_part_t;
  Txcb_xkb_state_part_t = longint;

const
  XCB_XKB_STATE_PART_MODIFIER_STATE = 1;
  XCB_XKB_STATE_PART_MODIFIER_BASE = 2;
  XCB_XKB_STATE_PART_MODIFIER_LATCH = 4;
  XCB_XKB_STATE_PART_MODIFIER_LOCK = 8;
  XCB_XKB_STATE_PART_GROUP_STATE = 16;
  XCB_XKB_STATE_PART_GROUP_BASE = 32;
  XCB_XKB_STATE_PART_GROUP_LATCH = 64;
  XCB_XKB_STATE_PART_GROUP_LOCK = 128;
  XCB_XKB_STATE_PART_COMPAT_STATE = 256;
  XCB_XKB_STATE_PART_GRAB_MODS = 512;
  XCB_XKB_STATE_PART_COMPAT_GRAB_MODS = 1024;
  XCB_XKB_STATE_PART_LOOKUP_MODS = 2048;
  XCB_XKB_STATE_PART_COMPAT_LOOKUP_MODS = 4096;
  XCB_XKB_STATE_PART_POINTER_BUTTONS = 8192;

type
  Pxcb_xkb_bool_ctrl_t = ^Txcb_xkb_bool_ctrl_t;
  Txcb_xkb_bool_ctrl_t = longint;

const
  XCB_XKB_BOOL_CTRL_REPEAT_KEYS = 1;
  XCB_XKB_BOOL_CTRL_SLOW_KEYS = 2;
  XCB_XKB_BOOL_CTRL_BOUNCE_KEYS = 4;
  XCB_XKB_BOOL_CTRL_STICKY_KEYS = 8;
  XCB_XKB_BOOL_CTRL_MOUSE_KEYS = 16;
  XCB_XKB_BOOL_CTRL_MOUSE_KEYS_ACCEL = 32;
  XCB_XKB_BOOL_CTRL_ACCESS_X_KEYS = 64;
  XCB_XKB_BOOL_CTRL_ACCESS_X_TIMEOUT_MASK = 128;
  XCB_XKB_BOOL_CTRL_ACCESS_X_FEEDBACK_MASK = 256;
  XCB_XKB_BOOL_CTRL_AUDIBLE_BELL_MASK = 512;
  XCB_XKB_BOOL_CTRL_OVERLAY_1_MASK = 1024;
  XCB_XKB_BOOL_CTRL_OVERLAY_2_MASK = 2048;
  XCB_XKB_BOOL_CTRL_IGNORE_GROUP_LOCK_MASK = 4096;

type
  Pxcb_xkb_control_t = ^Txcb_xkb_control_t;
  Txcb_xkb_control_t = longint;

const
  XCB_XKB_CONTROL_GROUPS_WRAP = 134217728;
  XCB_XKB_CONTROL_INTERNAL_MODS = 268435456;
  XCB_XKB_CONTROL_IGNORE_LOCK_MODS = 536870912;
  XCB_XKB_CONTROL_PER_KEY_REPEAT = 1073741824;
  XCB_XKB_CONTROL_CONTROLS_ENABLED = 2147483648;

type
  Pxcb_xkb_ax_option_t = ^Txcb_xkb_ax_option_t;
  Txcb_xkb_ax_option_t = longint;

const
  XCB_XKB_AX_OPTION_SK_PRESS_FB = 1;
  XCB_XKB_AX_OPTION_SK_ACCEPT_FB = 2;
  XCB_XKB_AX_OPTION_FEATURE_FB = 4;
  XCB_XKB_AX_OPTION_SLOW_WARN_FB = 8;
  XCB_XKB_AX_OPTION_INDICATOR_FB = 16;
  XCB_XKB_AX_OPTION_STICKY_KEYS_FB = 32;
  XCB_XKB_AX_OPTION_TWO_KEYS = 64;
  XCB_XKB_AX_OPTION_LATCH_TO_LOCK = 128;
  XCB_XKB_AX_OPTION_SK_RELEASE_FB = 256;
  XCB_XKB_AX_OPTION_SK_REJECT_FB = 512;
  XCB_XKB_AX_OPTION_BK_REJECT_FB = 1024;
  XCB_XKB_AX_OPTION_DUMB_BELL = 2048;

type
  Pxcb_xkb_device_spec_t = ^Txcb_xkb_device_spec_t;
  Txcb_xkb_device_spec_t = Tuint16_t;

  Txcb_xkb_device_spec_iterator_t = record
    data: Pxcb_xkb_device_spec_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_device_spec_iterator_t = ^Txcb_xkb_device_spec_iterator_t;

type
  Pxcb_xkb_led_class_result_t = ^Txcb_xkb_led_class_result_t;
  Txcb_xkb_led_class_result_t = longint;

const
  XCB_XKB_LED_CLASS_RESULT_KBD_FEEDBACK_CLASS = 0;
  XCB_XKB_LED_CLASS_RESULT_LED_FEEDBACK_CLASS = 4;

type
  Pxcb_xkb_led_class_t = ^Txcb_xkb_led_class_t;
  Txcb_xkb_led_class_t = longint;

const
  XCB_XKB_LED_CLASS_KBD_FEEDBACK_CLASS = 0;
  XCB_XKB_LED_CLASS_LED_FEEDBACK_CLASS = 4;
  XCB_XKB_LED_CLASS_DFLT_XI_CLASS = 768;
  XCB_XKB_LED_CLASS_ALL_XI_CLASSES = 1280;

type
  Pxcb_xkb_led_class_spec_t = ^Txcb_xkb_led_class_spec_t;
  Txcb_xkb_led_class_spec_t = Tuint16_t;

  Txcb_xkb_led_class_spec_iterator_t = record
    data: Pxcb_xkb_led_class_spec_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_led_class_spec_iterator_t = ^Txcb_xkb_led_class_spec_iterator_t;

type
  Pxcb_xkb_bell_class_result_t = ^Txcb_xkb_bell_class_result_t;
  Txcb_xkb_bell_class_result_t = longint;

const
  XCB_XKB_BELL_CLASS_RESULT_KBD_FEEDBACK_CLASS = 0;
  XCB_XKB_BELL_CLASS_RESULT_BELL_FEEDBACK_CLASS = 5;

type
  Pxcb_xkb_bell_class_t = ^Txcb_xkb_bell_class_t;
  Txcb_xkb_bell_class_t = longint;

const
  XCB_XKB_BELL_CLASS_KBD_FEEDBACK_CLASS = 0;
  XCB_XKB_BELL_CLASS_BELL_FEEDBACK_CLASS = 5;
  XCB_XKB_BELL_CLASS_DFLT_XI_CLASS = 768;

type
  Pxcb_xkb_bell_class_spec_t = ^Txcb_xkb_bell_class_spec_t;
  Txcb_xkb_bell_class_spec_t = Tuint16_t;

  Txcb_xkb_bell_class_spec_iterator_t = record
    data: Pxcb_xkb_bell_class_spec_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_bell_class_spec_iterator_t = ^Txcb_xkb_bell_class_spec_iterator_t;

type
  Pxcb_xkb_id_t = ^Txcb_xkb_id_t;
  Txcb_xkb_id_t = longint;

const
  XCB_XKB_ID_USE_CORE_KBD = 256;
  XCB_XKB_ID_USE_CORE_PTR = 512;
  XCB_XKB_ID_DFLT_XI_CLASS = 768;
  XCB_XKB_ID_DFLT_XI_ID = 1024;
  XCB_XKB_ID_ALL_XI_CLASS = 1280;
  XCB_XKB_ID_ALL_XI_ID = 1536;
  XCB_XKB_ID_XI_NONE = 65280;

type
  Pxcb_xkb_id_spec_t = ^Txcb_xkb_id_spec_t;
  Txcb_xkb_id_spec_t = Tuint16_t;

  Txcb_xkb_id_spec_iterator_t = record
    data: Pxcb_xkb_id_spec_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_id_spec_iterator_t = ^Txcb_xkb_id_spec_iterator_t;

type
  Pxcb_xkb_group_t = ^Txcb_xkb_group_t;
  Txcb_xkb_group_t = longint;

const
  XCB_XKB_GROUP_1 = 0;
  XCB_XKB_GROUP_2 = 1;
  XCB_XKB_GROUP_3 = 2;
  XCB_XKB_GROUP_4 = 3;

type
  Pxcb_xkb_groups_t = ^Txcb_xkb_groups_t;
  Txcb_xkb_groups_t = longint;

const
  XCB_XKB_GROUPS_ANY = 254;
  XCB_XKB_GROUPS_ALL = 255;

type
  Pxcb_xkb_set_of_group_t = ^Txcb_xkb_set_of_group_t;
  Txcb_xkb_set_of_group_t = longint;

const
  XCB_XKB_SET_OF_GROUP_GROUP_1 = 1;
  XCB_XKB_SET_OF_GROUP_GROUP_2 = 2;
  XCB_XKB_SET_OF_GROUP_GROUP_3 = 4;
  XCB_XKB_SET_OF_GROUP_GROUP_4 = 8;

type
  Pxcb_xkb_set_of_groups_t = ^Txcb_xkb_set_of_groups_t;
  Txcb_xkb_set_of_groups_t = longint;

const
  XCB_XKB_SET_OF_GROUPS_ANY = 128;

type
  Pxcb_xkb_groups_wrap_t = ^Txcb_xkb_groups_wrap_t;
  Txcb_xkb_groups_wrap_t = longint;

const
  XCB_XKB_GROUPS_WRAP_WRAP_INTO_RANGE = 0;
  XCB_XKB_GROUPS_WRAP_CLAMP_INTO_RANGE = 64;
  XCB_XKB_GROUPS_WRAP_REDIRECT_INTO_RANGE = 128;

type
  Pxcb_xkb_v_mods_high_t = ^Txcb_xkb_v_mods_high_t;
  Txcb_xkb_v_mods_high_t = longint;

const
  XCB_XKB_V_MODS_HIGH_15 = 128;
  XCB_XKB_V_MODS_HIGH_14 = 64;
  XCB_XKB_V_MODS_HIGH_13 = 32;
  XCB_XKB_V_MODS_HIGH_12 = 16;
  XCB_XKB_V_MODS_HIGH_11 = 8;
  XCB_XKB_V_MODS_HIGH_10 = 4;
  XCB_XKB_V_MODS_HIGH_9 = 2;
  XCB_XKB_V_MODS_HIGH_8 = 1;

type
  Pxcb_xkb_v_mods_low_t = ^Txcb_xkb_v_mods_low_t;
  Txcb_xkb_v_mods_low_t = longint;

const
  XCB_XKB_V_MODS_LOW_7 = 128;
  XCB_XKB_V_MODS_LOW_6 = 64;
  XCB_XKB_V_MODS_LOW_5 = 32;
  XCB_XKB_V_MODS_LOW_4 = 16;
  XCB_XKB_V_MODS_LOW_3 = 8;
  XCB_XKB_V_MODS_LOW_2 = 4;
  XCB_XKB_V_MODS_LOW_1 = 2;
  XCB_XKB_V_MODS_LOW_0 = 1;

type
  Pxcb_xkb_v_mod_t = ^Txcb_xkb_v_mod_t;
  Txcb_xkb_v_mod_t = longint;

const
  XCB_XKB_V_MOD_15 = 32768;
  XCB_XKB_V_MOD_14 = 16384;
  XCB_XKB_V_MOD_13 = 8192;
  XCB_XKB_V_MOD_12 = 4096;
  XCB_XKB_V_MOD_11 = 2048;
  XCB_XKB_V_MOD_10 = 1024;
  XCB_XKB_V_MOD_9 = 512;
  XCB_XKB_V_MOD_8 = 256;
  XCB_XKB_V_MOD_7 = 128;
  XCB_XKB_V_MOD_6 = 64;
  XCB_XKB_V_MOD_5 = 32;
  XCB_XKB_V_MOD_4 = 16;
  XCB_XKB_V_MOD_3 = 8;
  XCB_XKB_V_MOD_2 = 4;
  XCB_XKB_V_MOD_1 = 2;
  XCB_XKB_V_MOD_0 = 1;

type
  Pxcb_xkb_explicit_t = ^Txcb_xkb_explicit_t;
  Txcb_xkb_explicit_t = longint;

const
  XCB_XKB_EXPLICIT_V_MOD_MAP = 128;
  XCB_XKB_EXPLICIT_BEHAVIOR = 64;
  XCB_XKB_EXPLICIT_AUTO_REPEAT = 32;
  XCB_XKB_EXPLICIT_INTERPRET = 16;
  XCB_XKB_EXPLICIT_KEY_TYPE_4 = 8;
  XCB_XKB_EXPLICIT_KEY_TYPE_3 = 4;
  XCB_XKB_EXPLICIT_KEY_TYPE_2 = 2;
  XCB_XKB_EXPLICIT_KEY_TYPE_1 = 1;

type
  Pxcb_xkb_sym_interpret_match_t = ^Txcb_xkb_sym_interpret_match_t;
  Txcb_xkb_sym_interpret_match_t = longint;

const
  XCB_XKB_SYM_INTERPRET_MATCH_NONE_OF = 0;
  XCB_XKB_SYM_INTERPRET_MATCH_ANY_OF_OR_NONE = 1;
  XCB_XKB_SYM_INTERPRET_MATCH_ANY_OF = 2;
  XCB_XKB_SYM_INTERPRET_MATCH_ALL_OF = 3;
  XCB_XKB_SYM_INTERPRET_MATCH_EXACTLY = 4;

type
  Pxcb_xkb_sym_interp_match_t = ^Txcb_xkb_sym_interp_match_t;
  Txcb_xkb_sym_interp_match_t = longint;

const
  XCB_XKB_SYM_INTERP_MATCH_LEVEL_ONE_ONLY = 128;
  XCB_XKB_SYM_INTERP_MATCH_OP_MASK = 127;

type
  Pxcb_xkb_im_flag_t = ^Txcb_xkb_im_flag_t;
  Txcb_xkb_im_flag_t = longint;

const
  XCB_XKB_IM_FLAG_NO_EXPLICIT = 128;
  XCB_XKB_IM_FLAG_NO_AUTOMATIC = 64;
  XCB_XKB_IM_FLAG_LED_DRIVES_KB = 32;

type
  Pxcb_xkb_im_mods_which_t = ^Txcb_xkb_im_mods_which_t;
  Txcb_xkb_im_mods_which_t = longint;

const
  XCB_XKB_IM_MODS_WHICH_USE_COMPAT = 16;
  XCB_XKB_IM_MODS_WHICH_USE_EFFECTIVE = 8;
  XCB_XKB_IM_MODS_WHICH_USE_LOCKED = 4;
  XCB_XKB_IM_MODS_WHICH_USE_LATCHED = 2;
  XCB_XKB_IM_MODS_WHICH_USE_BASE = 1;

type
  Pxcb_xkb_im_groups_which_t = ^Txcb_xkb_im_groups_which_t;
  Txcb_xkb_im_groups_which_t = longint;

const
  XCB_XKB_IM_GROUPS_WHICH_USE_COMPAT = 16;
  XCB_XKB_IM_GROUPS_WHICH_USE_EFFECTIVE = 8;
  XCB_XKB_IM_GROUPS_WHICH_USE_LOCKED = 4;
  XCB_XKB_IM_GROUPS_WHICH_USE_LATCHED = 2;
  XCB_XKB_IM_GROUPS_WHICH_USE_BASE = 1;

type
  Txcb_xkb_indicator_map_t = record
    flags: Tuint8_t;
    whichGroups: Tuint8_t;
    groups: Tuint8_t;
    whichMods: Tuint8_t;
    mods: Tuint8_t;
    realMods: Tuint8_t;
    vmods: Tuint16_t;
    ctrls: Tuint32_t;
  end;
  Pxcb_xkb_indicator_map_t = ^Txcb_xkb_indicator_map_t;

  Txcb_xkb_indicator_map_iterator_t = record
    data: Pxcb_xkb_indicator_map_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_indicator_map_iterator_t = ^Txcb_xkb_indicator_map_iterator_t;

type
  Pxcb_xkb_cm_detail_t = ^Txcb_xkb_cm_detail_t;
  Txcb_xkb_cm_detail_t = longint;

const
  XCB_XKB_CM_DETAIL_SYM_INTERP = 1;
  XCB_XKB_CM_DETAIL_GROUP_COMPAT = 2;

type
  Pxcb_xkb_name_detail_t = ^Txcb_xkb_name_detail_t;
  Txcb_xkb_name_detail_t = longint;

const
  XCB_XKB_NAME_DETAIL_KEYCODES = 1;
  XCB_XKB_NAME_DETAIL_GEOMETRY = 2;
  XCB_XKB_NAME_DETAIL_SYMBOLS = 4;
  XCB_XKB_NAME_DETAIL_PHYS_SYMBOLS = 8;
  XCB_XKB_NAME_DETAIL_TYPES = 16;
  XCB_XKB_NAME_DETAIL_COMPAT = 32;
  XCB_XKB_NAME_DETAIL_KEY_TYPE_NAMES = 64;
  XCB_XKB_NAME_DETAIL_KT_LEVEL_NAMES = 128;
  XCB_XKB_NAME_DETAIL_INDICATOR_NAMES = 256;
  XCB_XKB_NAME_DETAIL_KEY_NAMES = 512;
  XCB_XKB_NAME_DETAIL_KEY_ALIASES = 1024;
  XCB_XKB_NAME_DETAIL_VIRTUAL_MOD_NAMES = 2048;
  XCB_XKB_NAME_DETAIL_GROUP_NAMES = 4096;
  XCB_XKB_NAME_DETAIL_RG_NAMES = 8192;

type
  Pxcb_xkb_gbn_detail_t = ^Txcb_xkb_gbn_detail_t;
  Txcb_xkb_gbn_detail_t = longint;

const
  XCB_XKB_GBN_DETAIL_TYPES = 1;
  XCB_XKB_GBN_DETAIL_COMPAT_MAP = 2;
  XCB_XKB_GBN_DETAIL_CLIENT_SYMBOLS = 4;
  XCB_XKB_GBN_DETAIL_SERVER_SYMBOLS = 8;
  XCB_XKB_GBN_DETAIL_INDICATOR_MAPS = 16;
  XCB_XKB_GBN_DETAIL_KEY_NAMES = 32;
  XCB_XKB_GBN_DETAIL_GEOMETRY = 64;
  XCB_XKB_GBN_DETAIL_OTHER_NAMES = 128;

type
  Pxcb_xkb_xi_feature_t = ^Txcb_xkb_xi_feature_t;
  Txcb_xkb_xi_feature_t = longint;

const
  XCB_XKB_XI_FEATURE_KEYBOARDS = 1;
  XCB_XKB_XI_FEATURE_BUTTON_ACTIONS = 2;
  XCB_XKB_XI_FEATURE_INDICATOR_NAMES = 4;
  XCB_XKB_XI_FEATURE_INDICATOR_MAPS = 8;
  XCB_XKB_XI_FEATURE_INDICATOR_STATE = 16;

type
  Pxcb_xkb_per_client_flag_t = ^Txcb_xkb_per_client_flag_t;
  Txcb_xkb_per_client_flag_t = longint;

const
  XCB_XKB_PER_CLIENT_FLAG_DETECTABLE_AUTO_REPEAT = 1;
  XCB_XKB_PER_CLIENT_FLAG_GRABS_USE_XKB_STATE = 2;
  XCB_XKB_PER_CLIENT_FLAG_AUTO_RESET_CONTROLS = 4;
  XCB_XKB_PER_CLIENT_FLAG_LOOKUP_STATE_WHEN_GRABBED = 8;
  XCB_XKB_PER_CLIENT_FLAG_SEND_EVENT_USES_XKB_STATE = 16;

type
  Txcb_xkb_mod_def_t = record
    mask: Tuint8_t;
    realMods: Tuint8_t;
    vmods: Tuint16_t;
  end;
  Pxcb_xkb_mod_def_t = ^Txcb_xkb_mod_def_t;

  Txcb_xkb_mod_def_iterator_t = record
    data: Pxcb_xkb_mod_def_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_mod_def_iterator_t = ^Txcb_xkb_mod_def_iterator_t;

  Txcb_xkb_key_name_t = record
    name: array[0..3] of char;
  end;
  Pxcb_xkb_key_name_t = ^Txcb_xkb_key_name_t;

  Txcb_xkb_key_name_iterator_t = record
    data: Pxcb_xkb_key_name_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_key_name_iterator_t = ^Txcb_xkb_key_name_iterator_t;

  Txcb_xkb_key_alias_t = record
    real: array[0..3] of char;
    alias: array[0..3] of char;
  end;
  Pxcb_xkb_key_alias_t = ^Txcb_xkb_key_alias_t;

  Txcb_xkb_key_alias_iterator_t = record
    data: Pxcb_xkb_key_alias_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_key_alias_iterator_t = ^Txcb_xkb_key_alias_iterator_t;

  Txcb_xkb_counted_string_16_t = record
    length: Tuint16_t;
  end;
  Pxcb_xkb_counted_string_16_t = ^Txcb_xkb_counted_string_16_t;

  Txcb_xkb_counted_string_16_iterator_t = record
    data: Pxcb_xkb_counted_string_16_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_counted_string_16_iterator_t = ^Txcb_xkb_counted_string_16_iterator_t;

  Txcb_xkb_kt_map_entry_t = record
    active: Tuint8_t;
    mods_mask: Tuint8_t;
    level: Tuint8_t;
    mods_mods: Tuint8_t;
    mods_vmods: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_xkb_kt_map_entry_t = ^Txcb_xkb_kt_map_entry_t;

  Txcb_xkb_kt_map_entry_iterator_t = record
    data: Pxcb_xkb_kt_map_entry_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_kt_map_entry_iterator_t = ^Txcb_xkb_kt_map_entry_iterator_t;

  Txcb_xkb_key_type_t = record
    mods_mask: Tuint8_t;
    mods_mods: Tuint8_t;
    mods_vmods: Tuint16_t;
    numLevels: Tuint8_t;
    nMapEntries: Tuint8_t;
    hasPreserve: Tuint8_t;
    pad0: Tuint8_t;
  end;
  Pxcb_xkb_key_type_t = ^Txcb_xkb_key_type_t;

  Txcb_xkb_key_type_iterator_t = record
    data: Pxcb_xkb_key_type_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_key_type_iterator_t = ^Txcb_xkb_key_type_iterator_t;

  Txcb_xkb_key_sym_map_t = record
    kt_index: array[0..3] of Tuint8_t;
    groupInfo: Tuint8_t;
    width: Tuint8_t;
    nSyms: Tuint16_t;
  end;
  Pxcb_xkb_key_sym_map_t = ^Txcb_xkb_key_sym_map_t;

  Txcb_xkb_key_sym_map_iterator_t = record
    data: Pxcb_xkb_key_sym_map_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_key_sym_map_iterator_t = ^Txcb_xkb_key_sym_map_iterator_t;

  Txcb_xkb_common_behavior_t = record
    _type: Tuint8_t;
    data: Tuint8_t;
  end;
  Pxcb_xkb_common_behavior_t = ^Txcb_xkb_common_behavior_t;

  Txcb_xkb_common_behavior_iterator_t = record
    data: Pxcb_xkb_common_behavior_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_common_behavior_iterator_t = ^Txcb_xkb_common_behavior_iterator_t;

  Txcb_xkb_default_behavior_t = record
    _type: Tuint8_t;
    pad0: Tuint8_t;
  end;
  Pxcb_xkb_default_behavior_t = ^Txcb_xkb_default_behavior_t;

  Txcb_xkb_default_behavior_iterator_t = record
    data: Pxcb_xkb_default_behavior_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_default_behavior_iterator_t = ^Txcb_xkb_default_behavior_iterator_t;

  Txcb_xkb_lock_behavior_t = record
    _type: Tuint8_t;
    pad0: Tuint8_t;
  end;
  Pxcb_xkb_lock_behavior_t = ^Txcb_xkb_lock_behavior_t;

  Txcb_xkb_lock_behavior_iterator_t = record
    data: Pxcb_xkb_lock_behavior_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_lock_behavior_iterator_t = ^Txcb_xkb_lock_behavior_iterator_t;

  Txcb_xkb_radio_group_behavior_t = record
    _type: Tuint8_t;
    group: Tuint8_t;
  end;
  Pxcb_xkb_radio_group_behavior_t = ^Txcb_xkb_radio_group_behavior_t;

  Txcb_xkb_radio_group_behavior_iterator_t = record
    data: Pxcb_xkb_radio_group_behavior_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_radio_group_behavior_iterator_t = ^Txcb_xkb_radio_group_behavior_iterator_t;

  Txcb_xkb_overlay_behavior_t = record
    _type: Tuint8_t;
    key: Txcb_keycode_t;
  end;
  Pxcb_xkb_overlay_behavior_t = ^Txcb_xkb_overlay_behavior_t;

  Txcb_xkb_overlay_behavior_iterator_t = record
    data: Pxcb_xkb_overlay_behavior_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_overlay_behavior_iterator_t = ^Txcb_xkb_overlay_behavior_iterator_t;

  Txcb_xkb_permament_lock_behavior_t = record
    _type: Tuint8_t;
    pad0: Tuint8_t;
  end;
  Pxcb_xkb_permament_lock_behavior_t = ^Txcb_xkb_permament_lock_behavior_t;

  Txcb_xkb_permament_lock_behavior_iterator_t = record
    data: Pxcb_xkb_permament_lock_behavior_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_permament_lock_behavior_iterator_t = ^Txcb_xkb_permament_lock_behavior_iterator_t;

  Txcb_xkb_permament_radio_group_behavior_t = record
    _type: Tuint8_t;
    group: Tuint8_t;
  end;
  Pxcb_xkb_permament_radio_group_behavior_t = ^Txcb_xkb_permament_radio_group_behavior_t;

  Txcb_xkb_permament_radio_group_behavior_iterator_t = record
    data: Pxcb_xkb_permament_radio_group_behavior_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_permament_radio_group_behavior_iterator_t = ^Txcb_xkb_permament_radio_group_behavior_iterator_t;

  Txcb_xkb_permament_overlay_behavior_t = record
    _type: Tuint8_t;
    key: Txcb_keycode_t;
  end;
  Pxcb_xkb_permament_overlay_behavior_t = ^Txcb_xkb_permament_overlay_behavior_t;

  Txcb_xkb_permament_overlay_behavior_iterator_t = record
    data: Pxcb_xkb_permament_overlay_behavior_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_permament_overlay_behavior_iterator_t = ^Txcb_xkb_permament_overlay_behavior_iterator_t;

  Txcb_xkb_behavior_t = record
    case longint of
      0: (common: Txcb_xkb_common_behavior_t);
      1: (_default: Txcb_xkb_default_behavior_t);
      2: (lock: Txcb_xkb_lock_behavior_t);
      3: (radioGroup: Txcb_xkb_radio_group_behavior_t);
      4: (overlay1: Txcb_xkb_overlay_behavior_t);
      5: (overlay2: Txcb_xkb_overlay_behavior_t);
      6: (permamentLock: Txcb_xkb_permament_lock_behavior_t);
      7: (permamentRadioGroup: Txcb_xkb_permament_radio_group_behavior_t);
      8: (permamentOverlay1: Txcb_xkb_permament_overlay_behavior_t);
      9: (permamentOverlay2: Txcb_xkb_permament_overlay_behavior_t);
      10: (_type: Tuint8_t);
  end;
  Pxcb_xkb_behavior_t = ^Txcb_xkb_behavior_t;

  Txcb_xkb_behavior_iterator_t = record
    data: Pxcb_xkb_behavior_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_behavior_iterator_t = ^Txcb_xkb_behavior_iterator_t;

type
  Pxcb_xkb_behavior_type_t = ^Txcb_xkb_behavior_type_t;
  Txcb_xkb_behavior_type_t = longint;

const
  XCB_XKB_BEHAVIOR_TYPE_DEFAULT = 0;
  XCB_XKB_BEHAVIOR_TYPE_LOCK = 1;
  XCB_XKB_BEHAVIOR_TYPE_RADIO_GROUP = 2;
  XCB_XKB_BEHAVIOR_TYPE_OVERLAY_1 = 3;
  XCB_XKB_BEHAVIOR_TYPE_OVERLAY_2 = 4;
  XCB_XKB_BEHAVIOR_TYPE_PERMAMENT_LOCK = 129;
  XCB_XKB_BEHAVIOR_TYPE_PERMAMENT_RADIO_GROUP = 130;
  XCB_XKB_BEHAVIOR_TYPE_PERMAMENT_OVERLAY_1 = 131;
  XCB_XKB_BEHAVIOR_TYPE_PERMAMENT_OVERLAY_2 = 132;

type
  Txcb_xkb_set_behavior_t = record
    keycode: Txcb_keycode_t;
    behavior: Txcb_xkb_behavior_t;
    pad0: Tuint8_t;
  end;
  Pxcb_xkb_set_behavior_t = ^Txcb_xkb_set_behavior_t;

  Txcb_xkb_set_behavior_iterator_t = record
    data: Pxcb_xkb_set_behavior_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_set_behavior_iterator_t = ^Txcb_xkb_set_behavior_iterator_t;

  Txcb_xkb_set_explicit_t = record
    keycode: Txcb_keycode_t;
    explicit: Tuint8_t;
  end;
  Pxcb_xkb_set_explicit_t = ^Txcb_xkb_set_explicit_t;

  Txcb_xkb_set_explicit_iterator_t = record
    data: Pxcb_xkb_set_explicit_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_set_explicit_iterator_t = ^Txcb_xkb_set_explicit_iterator_t;

  Txcb_xkb_key_mod_map_t = record
    keycode: Txcb_keycode_t;
    mods: Tuint8_t;
  end;
  Pxcb_xkb_key_mod_map_t = ^Txcb_xkb_key_mod_map_t;

  Txcb_xkb_key_mod_map_iterator_t = record
    data: Pxcb_xkb_key_mod_map_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_key_mod_map_iterator_t = ^Txcb_xkb_key_mod_map_iterator_t;

  Txcb_xkb_key_v_mod_map_t = record
    keycode: Txcb_keycode_t;
    pad0: Tuint8_t;
    vmods: Tuint16_t;
  end;
  Pxcb_xkb_key_v_mod_map_t = ^Txcb_xkb_key_v_mod_map_t;

  Txcb_xkb_key_v_mod_map_iterator_t = record
    data: Pxcb_xkb_key_v_mod_map_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_key_v_mod_map_iterator_t = ^Txcb_xkb_key_v_mod_map_iterator_t;

  Txcb_xkb_kt_set_map_entry_t = record
    level: Tuint8_t;
    realMods: Tuint8_t;
    virtualMods: Tuint16_t;
  end;
  Pxcb_xkb_kt_set_map_entry_t = ^Txcb_xkb_kt_set_map_entry_t;

  Txcb_xkb_kt_set_map_entry_iterator_t = record
    data: Pxcb_xkb_kt_set_map_entry_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_kt_set_map_entry_iterator_t = ^Txcb_xkb_kt_set_map_entry_iterator_t;

  Txcb_xkb_set_key_type_t = record
    mask: Tuint8_t;
    realMods: Tuint8_t;
    virtualMods: Tuint16_t;
    numLevels: Tuint8_t;
    nMapEntries: Tuint8_t;
    preserve: Tuint8_t;
    pad0: Tuint8_t;
  end;
  Pxcb_xkb_set_key_type_t = ^Txcb_xkb_set_key_type_t;

  Txcb_xkb_set_key_type_iterator_t = record
    data: Pxcb_xkb_set_key_type_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_set_key_type_iterator_t = ^Txcb_xkb_set_key_type_iterator_t;

  Pxcb_xkb_string8_t = ^Txcb_xkb_string8_t;
  Txcb_xkb_string8_t = char;

  Txcb_xkb_string8_iterator_t = record
    data: Pxcb_xkb_string8_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_string8_iterator_t = ^Txcb_xkb_string8_iterator_t;

  Txcb_xkb_outline_t = record
    nPoints: Tuint8_t;
    cornerRadius: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_xkb_outline_t = ^Txcb_xkb_outline_t;

  Txcb_xkb_outline_iterator_t = record
    data: Pxcb_xkb_outline_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_outline_iterator_t = ^Txcb_xkb_outline_iterator_t;

  Txcb_xkb_shape_t = record
    name: Txcb_atom_t;
    nOutlines: Tuint8_t;
    primaryNdx: Tuint8_t;
    approxNdx: Tuint8_t;
    pad0: Tuint8_t;
  end;
  Pxcb_xkb_shape_t = ^Txcb_xkb_shape_t;

  Txcb_xkb_shape_iterator_t = record
    data: Pxcb_xkb_shape_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_shape_iterator_t = ^Txcb_xkb_shape_iterator_t;

  Txcb_xkb_key_t = record
    name: array[0..3] of Txcb_xkb_string8_t;
    gap: Tint16_t;
    shapeNdx: Tuint8_t;
    colorNdx: Tuint8_t;
  end;
  Pxcb_xkb_key_t = ^Txcb_xkb_key_t;

  Txcb_xkb_key_iterator_t = record
    data: Pxcb_xkb_key_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_key_iterator_t = ^Txcb_xkb_key_iterator_t;

  Txcb_xkb_overlay_key_t = record
    over: array[0..3] of Txcb_xkb_string8_t;
    under: array[0..3] of Txcb_xkb_string8_t;
  end;
  Pxcb_xkb_overlay_key_t = ^Txcb_xkb_overlay_key_t;

  Txcb_xkb_overlay_key_iterator_t = record
    data: Pxcb_xkb_overlay_key_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_overlay_key_iterator_t = ^Txcb_xkb_overlay_key_iterator_t;

  Txcb_xkb_overlay_row_t = record
    rowUnder: Tuint8_t;
    nKeys: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_xkb_overlay_row_t = ^Txcb_xkb_overlay_row_t;

  Txcb_xkb_overlay_row_iterator_t = record
    data: Pxcb_xkb_overlay_row_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_overlay_row_iterator_t = ^Txcb_xkb_overlay_row_iterator_t;

  Txcb_xkb_overlay_t = record
    name: Txcb_atom_t;
    nRows: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_xkb_overlay_t = ^Txcb_xkb_overlay_t;

  Txcb_xkb_overlay_iterator_t = record
    data: Pxcb_xkb_overlay_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_overlay_iterator_t = ^Txcb_xkb_overlay_iterator_t;

  Txcb_xkb_row_t = record
    top: Tint16_t;
    left: Tint16_t;
    nKeys: Tuint8_t;
    vertical: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_xkb_row_t = ^Txcb_xkb_row_t;

  Pxcb_xkb_row_iterator_t = ^Txcb_xkb_row_iterator_t;

  Txcb_xkb_row_iterator_t = record
    data: Pxcb_xkb_row_t;
    rem: longint;
    index: longint;
  end;

type
  Pxcb_xkb_doodad_type_t = ^Txcb_xkb_doodad_type_t;
  Txcb_xkb_doodad_type_t = longint;

const
  XCB_XKB_DOODAD_TYPE_OUTLINE = 1;
  XCB_XKB_DOODAD_TYPE_SOLID = 2;
  XCB_XKB_DOODAD_TYPE_TEXT = 3;
  XCB_XKB_DOODAD_TYPE_INDICATOR = 4;
  XCB_XKB_DOODAD_TYPE_LOGO = 5;

type
  Txcb_xkb_listing_t = record
    flags: Tuint16_t;
    length: Tuint16_t;
  end;
  Pxcb_xkb_listing_t = ^Txcb_xkb_listing_t;

  Txcb_xkb_listing_iterator_t = record
    data: Pxcb_xkb_listing_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_listing_iterator_t = ^Txcb_xkb_listing_iterator_t;

  Txcb_xkb_device_led_info_t = record
    ledClass: Txcb_xkb_led_class_spec_t;
    ledID: Txcb_xkb_id_spec_t;
    namesPresent: Tuint32_t;
    mapsPresent: Tuint32_t;
    physIndicators: Tuint32_t;
    state: Tuint32_t;
  end;
  Pxcb_xkb_device_led_info_t = ^Txcb_xkb_device_led_info_t;

  Txcb_xkb_device_led_info_iterator_t = record
    data: Pxcb_xkb_device_led_info_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_device_led_info_iterator_t = ^Txcb_xkb_device_led_info_iterator_t;

type
  Pxcb_xkb_error_t = ^Txcb_xkb_error_t;
  Txcb_xkb_error_t = longint;

const
  XCB_XKB_ERROR_BAD_DEVICE = 255;
  XCB_XKB_ERROR_BAD_CLASS = 254;
  XCB_XKB_ERROR_BAD_ID = 253;

const
  XCB_XKB_KEYBOARD = 0;

type
  Txcb_xkb_keyboard_error_t = record
    response_type: Tuint8_t;
    error_code: Tuint8_t;
    sequence: Tuint16_t;
    value: Tuint32_t;
    minorOpcode: Tuint16_t;
    majorOpcode: Tuint8_t;
    pad0: array[0..20] of Tuint8_t;
  end;
  Pxcb_xkb_keyboard_error_t = ^Txcb_xkb_keyboard_error_t;

type
  Pxcb_xkb_sa_t = ^Txcb_xkb_sa_t;
  Txcb_xkb_sa_t = longint;

const
  XCB_XKB_SA_CLEAR_LOCKS = 1;
  XCB_XKB_SA_LATCH_TO_LOCK = 2;
  XCB_XKB_SA_USE_MOD_MAP_MODS = 4;
  XCB_XKB_SA_GROUP_ABSOLUTE = 4;

type
  Pxcb_xkb_sa_type_t = ^Txcb_xkb_sa_type_t;
  Txcb_xkb_sa_type_t = longint;

const
  XCB_XKB_SA_TYPE_NO_ACTION = 0;
  XCB_XKB_SA_TYPE_SET_MODS = 1;
  XCB_XKB_SA_TYPE_LATCH_MODS = 2;
  XCB_XKB_SA_TYPE_LOCK_MODS = 3;
  XCB_XKB_SA_TYPE_SET_GROUP = 4;
  XCB_XKB_SA_TYPE_LATCH_GROUP = 5;
  XCB_XKB_SA_TYPE_LOCK_GROUP = 6;
  XCB_XKB_SA_TYPE_MOVE_PTR = 7;
  XCB_XKB_SA_TYPE_PTR_BTN = 8;
  XCB_XKB_SA_TYPE_LOCK_PTR_BTN = 9;
  XCB_XKB_SA_TYPE_SET_PTR_DFLT = 10;
  XCB_XKB_SA_TYPE_ISO_LOCK = 11;
  XCB_XKB_SA_TYPE_TERMINATE = 12;
  XCB_XKB_SA_TYPE_SWITCH_SCREEN = 13;
  XCB_XKB_SA_TYPE_SET_CONTROLS = 14;
  XCB_XKB_SA_TYPE_LOCK_CONTROLS = 15;
  XCB_XKB_SA_TYPE_ACTION_MESSAGE = 16;
  XCB_XKB_SA_TYPE_REDIRECT_KEY = 17;
  XCB_XKB_SA_TYPE_DEVICE_BTN = 18;
  XCB_XKB_SA_TYPE_LOCK_DEVICE_BTN = 19;
  XCB_XKB_SA_TYPE_DEVICE_VALUATOR = 20;

type
  Txcb_xkb_sa_no_action_t = record
    _type: Tuint8_t;
    pad0: array[0..6] of Tuint8_t;
  end;
  Pxcb_xkb_sa_no_action_t = ^Txcb_xkb_sa_no_action_t;

  Txcb_xkb_sa_no_action_iterator_t = record
    data: Pxcb_xkb_sa_no_action_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_sa_no_action_iterator_t = ^Txcb_xkb_sa_no_action_iterator_t;

  Txcb_xkb_sa_set_mods_t = record
    _type: Tuint8_t;
    flags: Tuint8_t;
    mask: Tuint8_t;
    realMods: Tuint8_t;
    vmodsHigh: Tuint8_t;
    vmodsLow: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_xkb_sa_set_mods_t = ^Txcb_xkb_sa_set_mods_t;

  Txcb_xkb_sa_set_mods_iterator_t = record
    data: Pxcb_xkb_sa_set_mods_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_sa_set_mods_iterator_t = ^Txcb_xkb_sa_set_mods_iterator_t;

  Txcb_xkb_sa_latch_mods_t = record
    _type: Tuint8_t;
    flags: Tuint8_t;
    mask: Tuint8_t;
    realMods: Tuint8_t;
    vmodsHigh: Tuint8_t;
    vmodsLow: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_xkb_sa_latch_mods_t = ^Txcb_xkb_sa_latch_mods_t;

  Txcb_xkb_sa_latch_mods_iterator_t = record
    data: Pxcb_xkb_sa_latch_mods_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_sa_latch_mods_iterator_t = ^Txcb_xkb_sa_latch_mods_iterator_t;

  Txcb_xkb_sa_lock_mods_t = record
    _type: Tuint8_t;
    flags: Tuint8_t;
    mask: Tuint8_t;
    realMods: Tuint8_t;
    vmodsHigh: Tuint8_t;
    vmodsLow: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_xkb_sa_lock_mods_t = ^Txcb_xkb_sa_lock_mods_t;

  Txcb_xkb_sa_lock_mods_iterator_t = record
    data: Pxcb_xkb_sa_lock_mods_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_sa_lock_mods_iterator_t = ^Txcb_xkb_sa_lock_mods_iterator_t;

  Txcb_xkb_sa_set_group_t = record
    _type: Tuint8_t;
    flags: Tuint8_t;
    group: Tint8_t;
    pad0: array[0..4] of Tuint8_t;
  end;
  Pxcb_xkb_sa_set_group_t = ^Txcb_xkb_sa_set_group_t;

  Txcb_xkb_sa_set_group_iterator_t = record
    data: Pxcb_xkb_sa_set_group_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_sa_set_group_iterator_t = ^Txcb_xkb_sa_set_group_iterator_t;

  Txcb_xkb_sa_latch_group_t = record
    _type: Tuint8_t;
    flags: Tuint8_t;
    group: Tint8_t;
    pad0: array[0..4] of Tuint8_t;
  end;
  Pxcb_xkb_sa_latch_group_t = ^Txcb_xkb_sa_latch_group_t;

  Txcb_xkb_sa_latch_group_iterator_t = record
    data: Pxcb_xkb_sa_latch_group_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_sa_latch_group_iterator_t = ^Txcb_xkb_sa_latch_group_iterator_t;

  Txcb_xkb_sa_lock_group_t = record
    _type: Tuint8_t;
    flags: Tuint8_t;
    group: Tint8_t;
    pad0: array[0..4] of Tuint8_t;
  end;
  Pxcb_xkb_sa_lock_group_t = ^Txcb_xkb_sa_lock_group_t;

  Txcb_xkb_sa_lock_group_iterator_t = record
    data: Pxcb_xkb_sa_lock_group_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_sa_lock_group_iterator_t = ^Txcb_xkb_sa_lock_group_iterator_t;

type
  Pxcb_xkb_sa_move_ptr_flag_t = ^Txcb_xkb_sa_move_ptr_flag_t;
  Txcb_xkb_sa_move_ptr_flag_t = longint;

const
  XCB_XKB_SA_MOVE_PTR_FLAG_NO_ACCELERATION = 1;
  XCB_XKB_SA_MOVE_PTR_FLAG_MOVE_ABSOLUTE_X = 2;
  XCB_XKB_SA_MOVE_PTR_FLAG_MOVE_ABSOLUTE_Y = 4;

type
  Txcb_xkb_sa_move_ptr_t = record
    _type: Tuint8_t;
    flags: Tuint8_t;
    xHigh: Tint8_t;
    xLow: Tuint8_t;
    yHigh: Tint8_t;
    yLow: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_xkb_sa_move_ptr_t = ^Txcb_xkb_sa_move_ptr_t;

  Txcb_xkb_sa_move_ptr_iterator_t = record
    data: Pxcb_xkb_sa_move_ptr_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_sa_move_ptr_iterator_t = ^Txcb_xkb_sa_move_ptr_iterator_t;

  Txcb_xkb_sa_ptr_btn_t = record
    _type: Tuint8_t;
    flags: Tuint8_t;
    count: Tuint8_t;
    button: Tuint8_t;
    pad0: array[0..3] of Tuint8_t;
  end;
  Pxcb_xkb_sa_ptr_btn_t = ^Txcb_xkb_sa_ptr_btn_t;

  Txcb_xkb_sa_ptr_btn_iterator_t = record
    data: Pxcb_xkb_sa_ptr_btn_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_sa_ptr_btn_iterator_t = ^Txcb_xkb_sa_ptr_btn_iterator_t;

  Txcb_xkb_sa_lock_ptr_btn_t = record
    _type: Tuint8_t;
    flags: Tuint8_t;
    pad0: Tuint8_t;
    button: Tuint8_t;
    pad1: array[0..3] of Tuint8_t;
  end;
  Pxcb_xkb_sa_lock_ptr_btn_t = ^Txcb_xkb_sa_lock_ptr_btn_t;

  Txcb_xkb_sa_lock_ptr_btn_iterator_t = record
    data: Pxcb_xkb_sa_lock_ptr_btn_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_sa_lock_ptr_btn_iterator_t = ^Txcb_xkb_sa_lock_ptr_btn_iterator_t;

type
  Pxcb_xkb_sa_set_ptr_dflt_flag_t = ^Txcb_xkb_sa_set_ptr_dflt_flag_t;
  Txcb_xkb_sa_set_ptr_dflt_flag_t = longint;

const
  XCB_XKB_SA_SET_PTR_DFLT_FLAG_DFLT_BTN_ABSOLUTE = 4;
  XCB_XKB_SA_SET_PTR_DFLT_FLAG_AFFECT_DFLT_BUTTON = 1;

type
  Txcb_xkb_sa_set_ptr_dflt_t = record
    _type: Tuint8_t;
    flags: Tuint8_t;
    affect: Tuint8_t;
    value: Tint8_t;
    pad0: array[0..3] of Tuint8_t;
  end;
  Pxcb_xkb_sa_set_ptr_dflt_t = ^Txcb_xkb_sa_set_ptr_dflt_t;

  Txcb_xkb_sa_set_ptr_dflt_iterator_t = record
    data: Pxcb_xkb_sa_set_ptr_dflt_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_sa_set_ptr_dflt_iterator_t = ^Txcb_xkb_sa_set_ptr_dflt_iterator_t;

type
  Pxcb_xkb_sa_iso_lock_flag_t = ^Txcb_xkb_sa_iso_lock_flag_t;
  Txcb_xkb_sa_iso_lock_flag_t = longint;

const
  XCB_XKB_SA_ISO_LOCK_FLAG_NO_LOCK = 1;
  XCB_XKB_SA_ISO_LOCK_FLAG_NO_UNLOCK = 2;
  XCB_XKB_SA_ISO_LOCK_FLAG_USE_MOD_MAP_MODS = 4;
  XCB_XKB_SA_ISO_LOCK_FLAG_GROUP_ABSOLUTE = 4;
  XCB_XKB_SA_ISO_LOCK_FLAG_ISO_DFLT_IS_GROUP = 8;

type
  Pxcb_xkb_sa_iso_lock_no_affect_t = ^Txcb_xkb_sa_iso_lock_no_affect_t;
  Txcb_xkb_sa_iso_lock_no_affect_t = longint;

const
  XCB_XKB_SA_ISO_LOCK_NO_AFFECT_CTRLS = 8;
  XCB_XKB_SA_ISO_LOCK_NO_AFFECT_PTR = 16;
  XCB_XKB_SA_ISO_LOCK_NO_AFFECT_GROUP = 32;
  XCB_XKB_SA_ISO_LOCK_NO_AFFECT_MODS = 64;

type
  Txcb_xkb_sa_iso_lock_t = record
    _type: Tuint8_t;
    flags: Tuint8_t;
    mask: Tuint8_t;
    realMods: Tuint8_t;
    group: Tint8_t;
    affect: Tuint8_t;
    vmodsHigh: Tuint8_t;
    vmodsLow: Tuint8_t;
  end;
  Pxcb_xkb_sa_iso_lock_t = ^Txcb_xkb_sa_iso_lock_t;

  Txcb_xkb_sa_iso_lock_iterator_t = record
    data: Pxcb_xkb_sa_iso_lock_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_sa_iso_lock_iterator_t = ^Txcb_xkb_sa_iso_lock_iterator_t;

  Txcb_xkb_sa_terminate_t = record
    _type: Tuint8_t;
    pad0: array[0..6] of Tuint8_t;
  end;
  Pxcb_xkb_sa_terminate_t = ^Txcb_xkb_sa_terminate_t;

  Txcb_xkb_sa_terminate_iterator_t = record
    data: Pxcb_xkb_sa_terminate_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_sa_terminate_iterator_t = ^Txcb_xkb_sa_terminate_iterator_t;

type
  Pxcb_xkb_switch_screen_flag_t = ^Txcb_xkb_switch_screen_flag_t;
  Txcb_xkb_switch_screen_flag_t = longint;

const
  XCB_XKB_SWITCH_SCREEN_FLAG_APPLICATION = 1;
  XCB_XKB_SWITCH_SCREEN_FLAG_ABSOLUTE = 4;

type
  Txcb_xkb_sa_switch_screen_t = record
    _type: Tuint8_t;
    flags: Tuint8_t;
    newScreen: Tint8_t;
    pad0: array[0..4] of Tuint8_t;
  end;
  Pxcb_xkb_sa_switch_screen_t = ^Txcb_xkb_sa_switch_screen_t;

  Txcb_xkb_sa_switch_screen_iterator_t = record
    data: Pxcb_xkb_sa_switch_screen_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_sa_switch_screen_iterator_t = ^Txcb_xkb_sa_switch_screen_iterator_t;

type
  Pxcb_xkb_bool_ctrls_high_t = ^Txcb_xkb_bool_ctrls_high_t;
  Txcb_xkb_bool_ctrls_high_t = longint;

const
  XCB_XKB_BOOL_CTRLS_HIGH_ACCESS_X_FEEDBACK = 1;
  XCB_XKB_BOOL_CTRLS_HIGH_AUDIBLE_BELL = 2;
  XCB_XKB_BOOL_CTRLS_HIGH_OVERLAY_1 = 4;
  XCB_XKB_BOOL_CTRLS_HIGH_OVERLAY_2 = 8;
  XCB_XKB_BOOL_CTRLS_HIGH_IGNORE_GROUP_LOCK = 16;

type
  Pxcb_xkb_bool_ctrls_low_t = ^Txcb_xkb_bool_ctrls_low_t;
  Txcb_xkb_bool_ctrls_low_t = longint;

const
  XCB_XKB_BOOL_CTRLS_LOW_REPEAT_KEYS = 1;
  XCB_XKB_BOOL_CTRLS_LOW_SLOW_KEYS = 2;
  XCB_XKB_BOOL_CTRLS_LOW_BOUNCE_KEYS = 4;
  XCB_XKB_BOOL_CTRLS_LOW_STICKY_KEYS = 8;
  XCB_XKB_BOOL_CTRLS_LOW_MOUSE_KEYS = 16;
  XCB_XKB_BOOL_CTRLS_LOW_MOUSE_KEYS_ACCEL = 32;
  XCB_XKB_BOOL_CTRLS_LOW_ACCESS_X_KEYS = 64;
  XCB_XKB_BOOL_CTRLS_LOW_ACCESS_X_TIMEOUT = 128;

type
  Txcb_xkb_sa_set_controls_t = record
    _type: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
    boolCtrlsHigh: Tuint8_t;
    boolCtrlsLow: Tuint8_t;
    pad1: array[0..1] of Tuint8_t;
  end;
  Pxcb_xkb_sa_set_controls_t = ^Txcb_xkb_sa_set_controls_t;

  Txcb_xkb_sa_set_controls_iterator_t = record
    data: Pxcb_xkb_sa_set_controls_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_sa_set_controls_iterator_t = ^Txcb_xkb_sa_set_controls_iterator_t;

  Txcb_xkb_sa_lock_controls_t = record
    _type: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
    boolCtrlsHigh: Tuint8_t;
    boolCtrlsLow: Tuint8_t;
    pad1: array[0..1] of Tuint8_t;
  end;
  Pxcb_xkb_sa_lock_controls_t = ^Txcb_xkb_sa_lock_controls_t;

  Txcb_xkb_sa_lock_controls_iterator_t = record
    data: Pxcb_xkb_sa_lock_controls_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_sa_lock_controls_iterator_t = ^Txcb_xkb_sa_lock_controls_iterator_t;

type
  Pxcb_xkb_action_message_flag_t = ^Txcb_xkb_action_message_flag_t;
  Txcb_xkb_action_message_flag_t = longint;

const
  XCB_XKB_ACTION_MESSAGE_FLAG_ON_PRESS = 1;
  XCB_XKB_ACTION_MESSAGE_FLAG_ON_RELEASE = 2;
  XCB_XKB_ACTION_MESSAGE_FLAG_GEN_KEY_EVENT = 4;

type
  Txcb_xkb_sa_action_message_t = record
    _type: Tuint8_t;
    flags: Tuint8_t;
    message: array[0..5] of Tuint8_t;
  end;
  Pxcb_xkb_sa_action_message_t = ^Txcb_xkb_sa_action_message_t;

  Txcb_xkb_sa_action_message_iterator_t = record
    data: Pxcb_xkb_sa_action_message_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_sa_action_message_iterator_t = ^Txcb_xkb_sa_action_message_iterator_t;

  Txcb_xkb_sa_redirect_key_t = record
    _type: Tuint8_t;
    newkey: Txcb_keycode_t;
    mask: Tuint8_t;
    realModifiers: Tuint8_t;
    vmodsMaskHigh: Tuint8_t;
    vmodsMaskLow: Tuint8_t;
    vmodsHigh: Tuint8_t;
    vmodsLow: Tuint8_t;
  end;
  Pxcb_xkb_sa_redirect_key_t = ^Txcb_xkb_sa_redirect_key_t;

  Txcb_xkb_sa_redirect_key_iterator_t = record
    data: Pxcb_xkb_sa_redirect_key_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_sa_redirect_key_iterator_t = ^Txcb_xkb_sa_redirect_key_iterator_t;

  Txcb_xkb_sa_device_btn_t = record
    _type: Tuint8_t;
    flags: Tuint8_t;
    count: Tuint8_t;
    button: Tuint8_t;
    device: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_xkb_sa_device_btn_t = ^Txcb_xkb_sa_device_btn_t;

  Txcb_xkb_sa_device_btn_iterator_t = record
    data: Pxcb_xkb_sa_device_btn_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_sa_device_btn_iterator_t = ^Txcb_xkb_sa_device_btn_iterator_t;

type
  Pxcb_xkb_lock_device_flags_t = ^Txcb_xkb_lock_device_flags_t;
  Txcb_xkb_lock_device_flags_t = longint;

const
  XCB_XKB_LOCK_DEVICE_FLAGS_NO_LOCK = 1;
  XCB_XKB_LOCK_DEVICE_FLAGS_NO_UNLOCK = 2;

type
  Txcb_xkb_sa_lock_device_btn_t = record
    _type: Tuint8_t;
    flags: Tuint8_t;
    pad0: Tuint8_t;
    button: Tuint8_t;
    device: Tuint8_t;
    pad1: array[0..2] of Tuint8_t;
  end;
  Pxcb_xkb_sa_lock_device_btn_t = ^Txcb_xkb_sa_lock_device_btn_t;

  Txcb_xkb_sa_lock_device_btn_iterator_t = record
    data: Pxcb_xkb_sa_lock_device_btn_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_sa_lock_device_btn_iterator_t = ^Txcb_xkb_sa_lock_device_btn_iterator_t;

type
  Pxcb_xkb_sa_val_what_t = ^Txcb_xkb_sa_val_what_t;
  Txcb_xkb_sa_val_what_t = longint;

const
  XCB_XKB_SA_VAL_WHAT_IGNORE_VAL = 0;
  XCB_XKB_SA_VAL_WHAT_SET_VAL_MIN = 1;
  XCB_XKB_SA_VAL_WHAT_SET_VAL_CENTER = 2;
  XCB_XKB_SA_VAL_WHAT_SET_VAL_MAX = 3;
  XCB_XKB_SA_VAL_WHAT_SET_VAL_RELATIVE = 4;
  XCB_XKB_SA_VAL_WHAT_SET_VAL_ABSOLUTE = 5;

type
  Txcb_xkb_sa_device_valuator_t = record
    _type: Tuint8_t;
    device: Tuint8_t;
    val1what: Tuint8_t;
    val1index: Tuint8_t;
    val1value: Tuint8_t;
    val2what: Tuint8_t;
    val2index: Tuint8_t;
    val2value: Tuint8_t;
  end;
  Pxcb_xkb_sa_device_valuator_t = ^Txcb_xkb_sa_device_valuator_t;

  Txcb_xkb_sa_device_valuator_iterator_t = record
    data: Pxcb_xkb_sa_device_valuator_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_sa_device_valuator_iterator_t = ^Txcb_xkb_sa_device_valuator_iterator_t;

  Txcb_xkb_si_action_t = record
    _type: Tuint8_t;
    data: array[0..6] of Tuint8_t;
  end;
  Pxcb_xkb_si_action_t = ^Txcb_xkb_si_action_t;

  Txcb_xkb_si_action_iterator_t = record
    data: Pxcb_xkb_si_action_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_si_action_iterator_t = ^Txcb_xkb_si_action_iterator_t;

  Txcb_xkb_sym_interpret_t = record
    sym: Txcb_keysym_t;
    mods: Tuint8_t;
    match: Tuint8_t;
    virtualMod: Tuint8_t;
    flags: Tuint8_t;
    action: Txcb_xkb_si_action_t;
  end;
  Pxcb_xkb_sym_interpret_t = ^Txcb_xkb_sym_interpret_t;

  Txcb_xkb_sym_interpret_iterator_t = record
    data: Pxcb_xkb_sym_interpret_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_sym_interpret_iterator_t = ^Txcb_xkb_sym_interpret_iterator_t;

  Txcb_xkb_action_t = record
    case longint of
      0: (noaction: Txcb_xkb_sa_no_action_t);
      1: (setmods: Txcb_xkb_sa_set_mods_t);
      2: (latchmods: Txcb_xkb_sa_latch_mods_t);
      3: (lockmods: Txcb_xkb_sa_lock_mods_t);
      4: (setgroup: Txcb_xkb_sa_set_group_t);
      5: (latchgroup: Txcb_xkb_sa_latch_group_t);
      6: (lockgroup: Txcb_xkb_sa_lock_group_t);
      7: (moveptr: Txcb_xkb_sa_move_ptr_t);
      8: (ptrbtn: Txcb_xkb_sa_ptr_btn_t);
      9: (lockptrbtn: Txcb_xkb_sa_lock_ptr_btn_t);
      10: (setptrdflt: Txcb_xkb_sa_set_ptr_dflt_t);
      11: (isolock: Txcb_xkb_sa_iso_lock_t);
      12: (terminate: Txcb_xkb_sa_terminate_t);
      13: (switchscreen: Txcb_xkb_sa_switch_screen_t);
      14: (setcontrols: Txcb_xkb_sa_set_controls_t);
      15: (lockcontrols: Txcb_xkb_sa_lock_controls_t);
      16: (message: Txcb_xkb_sa_action_message_t);
      17: (redirect: Txcb_xkb_sa_redirect_key_t);
      18: (devbtn: Txcb_xkb_sa_device_btn_t);
      19: (lockdevbtn: Txcb_xkb_sa_lock_device_btn_t);
      20: (devval: Txcb_xkb_sa_device_valuator_t);
      21: (_type: Tuint8_t);
  end;
  Pxcb_xkb_action_t = ^Txcb_xkb_action_t;

  Txcb_xkb_action_iterator_t = record
    data: Pxcb_xkb_action_t;
    rem: longint;
    index: longint;
  end;
  Pxcb_xkb_action_iterator_t = ^Txcb_xkb_action_iterator_t;

  Txcb_xkb_use_extension_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xkb_use_extension_cookie_t = ^Txcb_xkb_use_extension_cookie_t;

const
  XCB_XKB_USE_EXTENSION_ = 0;

type
  Txcb_xkb_use_extension_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    wantedMajor: Tuint16_t;
    wantedMinor: Tuint16_t;
  end;
  Pxcb_xkb_use_extension_request_t = ^Txcb_xkb_use_extension_request_t;

  Txcb_xkb_use_extension_reply_t = record
    response_type: Tuint8_t;
    supported: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    serverMajor: Tuint16_t;
    serverMinor: Tuint16_t;
    pad0: array[0..19] of Tuint8_t;
  end;
  Pxcb_xkb_use_extension_reply_t = ^Txcb_xkb_use_extension_reply_t;

  Txcb_xkb_select_events_details_t = record
    affectNewKeyboard: Tuint16_t;
    newKeyboardDetails: Tuint16_t;
    affectState: Tuint16_t;
    stateDetails: Tuint16_t;
    affectCtrls: Tuint32_t;
    ctrlDetails: Tuint32_t;
    affectIndicatorState: Tuint32_t;
    indicatorStateDetails: Tuint32_t;
    affectIndicatorMap: Tuint32_t;
    indicatorMapDetails: Tuint32_t;
    affectNames: Tuint16_t;
    namesDetails: Tuint16_t;
    affectCompat: Tuint8_t;
    compatDetails: Tuint8_t;
    affectBell: Tuint8_t;
    bellDetails: Tuint8_t;
    affectMsgDetails: Tuint8_t;
    msgDetails: Tuint8_t;
    affectAccessX: Tuint16_t;
    accessXDetails: Tuint16_t;
    affectExtDev: Tuint16_t;
    extdevDetails: Tuint16_t;
  end;
  Pxcb_xkb_select_events_details_t = ^Txcb_xkb_select_events_details_t;

const
  XCB_XKB_SELECT_EVENTS_ = 1;

type
  Txcb_xkb_select_events_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    deviceSpec: Txcb_xkb_device_spec_t;
    affectWhich: Tuint16_t;
    clear: Tuint16_t;
    selectAll: Tuint16_t;
    affectMap: Tuint16_t;
    map: Tuint16_t;
  end;
  Pxcb_xkb_select_events_request_t = ^Txcb_xkb_select_events_request_t;

const
  XCB_XKB_BELL_ = 3;

type
  Txcb_xkb_bell_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    deviceSpec: Txcb_xkb_device_spec_t;
    bellClass: Txcb_xkb_bell_class_spec_t;
    bellID: Txcb_xkb_id_spec_t;
    percent: Tint8_t;
    forceSound: Tuint8_t;
    eventOnly: Tuint8_t;
    pad0: Tuint8_t;
    pitch: Tint16_t;
    duration: Tint16_t;
    pad1: array[0..1] of Tuint8_t;
    name: Txcb_atom_t;
    window: Txcb_window_t;
  end;
  Pxcb_xkb_bell_request_t = ^Txcb_xkb_bell_request_t;

  Txcb_xkb_get_state_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xkb_get_state_cookie_t = ^Txcb_xkb_get_state_cookie_t;

const
  XCB_XKB_GET_STATE_ = 4;

type
  Txcb_xkb_get_state_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    deviceSpec: Txcb_xkb_device_spec_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_xkb_get_state_request_t = ^Txcb_xkb_get_state_request_t;

  Txcb_xkb_get_state_reply_t = record
    response_type: Tuint8_t;
    deviceID: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    mods: Tuint8_t;
    baseMods: Tuint8_t;
    latchedMods: Tuint8_t;
    lockedMods: Tuint8_t;
    group: Tuint8_t;
    lockedGroup: Tuint8_t;
    baseGroup: Tint16_t;
    latchedGroup: Tint16_t;
    compatState: Tuint8_t;
    grabMods: Tuint8_t;
    compatGrabMods: Tuint8_t;
    lookupMods: Tuint8_t;
    compatLookupMods: Tuint8_t;
    pad0: Tuint8_t;
    ptrBtnState: Tuint16_t;
    pad1: array[0..5] of Tuint8_t;
  end;
  Pxcb_xkb_get_state_reply_t = ^Txcb_xkb_get_state_reply_t;

const
  XCB_XKB_LATCH_LOCK_STATE_ = 5;

type
  Txcb_xkb_latch_lock_state_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    deviceSpec: Txcb_xkb_device_spec_t;
    affectModLocks: Tuint8_t;
    modLocks: Tuint8_t;
    lockGroup: Tuint8_t;
    groupLock: Tuint8_t;
    affectModLatches: Tuint8_t;
    pad0: Tuint8_t;
    pad1: Tuint8_t;
    latchGroup: Tuint8_t;
    groupLatch: Tuint16_t;
  end;
  Pxcb_xkb_latch_lock_state_request_t = ^Txcb_xkb_latch_lock_state_request_t;

  Txcb_xkb_get_controls_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xkb_get_controls_cookie_t = ^Txcb_xkb_get_controls_cookie_t;

const
  XCB_XKB_GET_CONTROLS_ = 6;

type
  Txcb_xkb_get_controls_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    deviceSpec: Txcb_xkb_device_spec_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_xkb_get_controls_request_t = ^Txcb_xkb_get_controls_request_t;

  Txcb_xkb_get_controls_reply_t = record
    response_type: Tuint8_t;
    deviceID: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    mouseKeysDfltBtn: Tuint8_t;
    numGroups: Tuint8_t;
    groupsWrap: Tuint8_t;
    internalModsMask: Tuint8_t;
    ignoreLockModsMask: Tuint8_t;
    internalModsRealMods: Tuint8_t;
    ignoreLockModsRealMods: Tuint8_t;
    pad0: Tuint8_t;
    internalModsVmods: Tuint16_t;
    ignoreLockModsVmods: Tuint16_t;
    repeatDelay: Tuint16_t;
    repeatInterval: Tuint16_t;
    slowKeysDelay: Tuint16_t;
    debounceDelay: Tuint16_t;
    mouseKeysDelay: Tuint16_t;
    mouseKeysInterval: Tuint16_t;
    mouseKeysTimeToMax: Tuint16_t;
    mouseKeysMaxSpeed: Tuint16_t;
    mouseKeysCurve: Tint16_t;
    accessXOption: Tuint16_t;
    accessXTimeout: Tuint16_t;
    accessXTimeoutOptionsMask: Tuint16_t;
    accessXTimeoutOptionsValues: Tuint16_t;
    pad1: array[0..1] of Tuint8_t;
    accessXTimeoutMask: Tuint32_t;
    accessXTimeoutValues: Tuint32_t;
    enabledControls: Tuint32_t;
    perKeyRepeat: array[0..31] of Tuint8_t;
  end;
  Pxcb_xkb_get_controls_reply_t = ^Txcb_xkb_get_controls_reply_t;

const
  XCB_XKB_SET_CONTROLS_ = 7;

type
  Txcb_xkb_set_controls_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    deviceSpec: Txcb_xkb_device_spec_t;
    affectInternalRealMods: Tuint8_t;
    internalRealMods: Tuint8_t;
    affectIgnoreLockRealMods: Tuint8_t;
    ignoreLockRealMods: Tuint8_t;
    affectInternalVirtualMods: Tuint16_t;
    internalVirtualMods: Tuint16_t;
    affectIgnoreLockVirtualMods: Tuint16_t;
    ignoreLockVirtualMods: Tuint16_t;
    mouseKeysDfltBtn: Tuint8_t;
    groupsWrap: Tuint8_t;
    accessXOptions: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
    affectEnabledControls: Tuint32_t;
    enabledControls: Tuint32_t;
    changeControls: Tuint32_t;
    repeatDelay: Tuint16_t;
    repeatInterval: Tuint16_t;
    slowKeysDelay: Tuint16_t;
    debounceDelay: Tuint16_t;
    mouseKeysDelay: Tuint16_t;
    mouseKeysInterval: Tuint16_t;
    mouseKeysTimeToMax: Tuint16_t;
    mouseKeysMaxSpeed: Tuint16_t;
    mouseKeysCurve: Tint16_t;
    accessXTimeout: Tuint16_t;
    accessXTimeoutMask: Tuint32_t;
    accessXTimeoutValues: Tuint32_t;
    accessXTimeoutOptionsMask: Tuint16_t;
    accessXTimeoutOptionsValues: Tuint16_t;
    perKeyRepeat: array[0..31] of Tuint8_t;
  end;
  Pxcb_xkb_set_controls_request_t = ^Txcb_xkb_set_controls_request_t;

  Txcb_xkb_get_map_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xkb_get_map_cookie_t = ^Txcb_xkb_get_map_cookie_t;

const
  XCB_XKB_GET_MAP_ = 8;

type
  Txcb_xkb_get_map_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    deviceSpec: Txcb_xkb_device_spec_t;
    full: Tuint16_t;
    partial: Tuint16_t;
    firstType: Tuint8_t;
    nTypes: Tuint8_t;
    firstKeySym: Txcb_keycode_t;
    nKeySyms: Tuint8_t;
    firstKeyAction: Txcb_keycode_t;
    nKeyActions: Tuint8_t;
    firstKeyBehavior: Txcb_keycode_t;
    nKeyBehaviors: Tuint8_t;
    virtualMods: Tuint16_t;
    firstKeyExplicit: Txcb_keycode_t;
    nKeyExplicit: Tuint8_t;
    firstModMapKey: Txcb_keycode_t;
    nModMapKeys: Tuint8_t;
    firstVModMapKey: Txcb_keycode_t;
    nVModMapKeys: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_xkb_get_map_request_t = ^Txcb_xkb_get_map_request_t;

  Txcb_xkb_get_map_map_t = record
    types_rtrn: Pxcb_xkb_key_type_t;
    syms_rtrn: Pxcb_xkb_key_sym_map_t;
    acts_rtrn_count: Puint8_t;
    pad2: Puint8_t;
    acts_rtrn_acts: Pxcb_xkb_action_t;
    behaviors_rtrn: Pxcb_xkb_set_behavior_t;
    vmods_rtrn: Puint8_t;
    pad3: Puint8_t;
    explicit_rtrn: Pxcb_xkb_set_explicit_t;
    pad4: Puint8_t;
    modmap_rtrn: Pxcb_xkb_key_mod_map_t;
    pad5: Puint8_t;
    vmodmap_rtrn: Pxcb_xkb_key_v_mod_map_t;
  end;
  Pxcb_xkb_get_map_map_t = ^Txcb_xkb_get_map_map_t;

  Txcb_xkb_get_map_reply_t = record
    response_type: Tuint8_t;
    deviceID: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    pad0: array[0..1] of Tuint8_t;
    minKeyCode: Txcb_keycode_t;
    maxKeyCode: Txcb_keycode_t;
    present: Tuint16_t;
    firstType: Tuint8_t;
    nTypes: Tuint8_t;
    totalTypes: Tuint8_t;
    firstKeySym: Txcb_keycode_t;
    totalSyms: Tuint16_t;
    nKeySyms: Tuint8_t;
    firstKeyAction: Txcb_keycode_t;
    totalActions: Tuint16_t;
    nKeyActions: Tuint8_t;
    firstKeyBehavior: Txcb_keycode_t;
    nKeyBehaviors: Tuint8_t;
    totalKeyBehaviors: Tuint8_t;
    firstKeyExplicit: Txcb_keycode_t;
    nKeyExplicit: Tuint8_t;
    totalKeyExplicit: Tuint8_t;
    firstModMapKey: Txcb_keycode_t;
    nModMapKeys: Tuint8_t;
    totalModMapKeys: Tuint8_t;
    firstVModMapKey: Txcb_keycode_t;
    nVModMapKeys: Tuint8_t;
    totalVModMapKeys: Tuint8_t;
    pad1: Tuint8_t;
    virtualMods: Tuint16_t;
  end;
  Pxcb_xkb_get_map_reply_t = ^Txcb_xkb_get_map_reply_t;

  Txcb_xkb_set_map_values_t = record
    types: Pxcb_xkb_set_key_type_t;
    syms: Pxcb_xkb_key_sym_map_t;
    actionsCount: Puint8_t;
    actions: Pxcb_xkb_action_t;
    behaviors: Pxcb_xkb_set_behavior_t;
    vmods: Puint8_t;
    explicit: Pxcb_xkb_set_explicit_t;
    modmap: Pxcb_xkb_key_mod_map_t;
    vmodmap: Pxcb_xkb_key_v_mod_map_t;
  end;
  Pxcb_xkb_set_map_values_t = ^Txcb_xkb_set_map_values_t;

const
  XCB_XKB_SET_MAP_ = 9;

type
  Txcb_xkb_set_map_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    deviceSpec: Txcb_xkb_device_spec_t;
    present: Tuint16_t;
    flags: Tuint16_t;
    minKeyCode: Txcb_keycode_t;
    maxKeyCode: Txcb_keycode_t;
    firstType: Tuint8_t;
    nTypes: Tuint8_t;
    firstKeySym: Txcb_keycode_t;
    nKeySyms: Tuint8_t;
    totalSyms: Tuint16_t;
    firstKeyAction: Txcb_keycode_t;
    nKeyActions: Tuint8_t;
    totalActions: Tuint16_t;
    firstKeyBehavior: Txcb_keycode_t;
    nKeyBehaviors: Tuint8_t;
    totalKeyBehaviors: Tuint8_t;
    firstKeyExplicit: Txcb_keycode_t;
    nKeyExplicit: Tuint8_t;
    totalKeyExplicit: Tuint8_t;
    firstModMapKey: Txcb_keycode_t;
    nModMapKeys: Tuint8_t;
    totalModMapKeys: Tuint8_t;
    firstVModMapKey: Txcb_keycode_t;
    nVModMapKeys: Tuint8_t;
    totalVModMapKeys: Tuint8_t;
    virtualMods: Tuint16_t;
  end;
  Pxcb_xkb_set_map_request_t = ^Txcb_xkb_set_map_request_t;

  Txcb_xkb_get_compat_map_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xkb_get_compat_map_cookie_t = ^Txcb_xkb_get_compat_map_cookie_t;

const
  XCB_XKB_GET_COMPAT_MAP_ = 10;

type
  Txcb_xkb_get_compat_map_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    deviceSpec: Txcb_xkb_device_spec_t;
    groups: Tuint8_t;
    getAllSI: Tuint8_t;
    firstSI: Tuint16_t;
    nSI: Tuint16_t;
  end;
  Pxcb_xkb_get_compat_map_request_t = ^Txcb_xkb_get_compat_map_request_t;

  Txcb_xkb_get_compat_map_reply_t = record
    response_type: Tuint8_t;
    deviceID: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    groupsRtrn: Tuint8_t;
    pad0: Tuint8_t;
    firstSIRtrn: Tuint16_t;
    nSIRtrn: Tuint16_t;
    nTotalSI: Tuint16_t;
    pad1: array[0..15] of Tuint8_t;
  end;
  Pxcb_xkb_get_compat_map_reply_t = ^Txcb_xkb_get_compat_map_reply_t;

const
  XCB_XKB_SET_COMPAT_MAP_ = 11;

type
  Txcb_xkb_set_compat_map_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    deviceSpec: Txcb_xkb_device_spec_t;
    pad0: Tuint8_t;
    recomputeActions: Tuint8_t;
    truncateSI: Tuint8_t;
    groups: Tuint8_t;
    firstSI: Tuint16_t;
    nSI: Tuint16_t;
    pad1: array[0..1] of Tuint8_t;
  end;
  Pxcb_xkb_set_compat_map_request_t = ^Txcb_xkb_set_compat_map_request_t;

  Txcb_xkb_get_indicator_state_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xkb_get_indicator_state_cookie_t = ^Txcb_xkb_get_indicator_state_cookie_t;

const
  XCB_XKB_GET_INDICATOR_STATE_ = 12;

type
  Txcb_xkb_get_indicator_state_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    deviceSpec: Txcb_xkb_device_spec_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_xkb_get_indicator_state_request_t = ^Txcb_xkb_get_indicator_state_request_t;

  Txcb_xkb_get_indicator_state_reply_t = record
    response_type: Tuint8_t;
    deviceID: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    state: Tuint32_t;
    pad0: array[0..19] of Tuint8_t;
  end;
  Pxcb_xkb_get_indicator_state_reply_t = ^Txcb_xkb_get_indicator_state_reply_t;

  Txcb_xkb_get_indicator_map_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xkb_get_indicator_map_cookie_t = ^Txcb_xkb_get_indicator_map_cookie_t;

const
  XCB_XKB_GET_INDICATOR_MAP_ = 13;

type
  Txcb_xkb_get_indicator_map_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    deviceSpec: Txcb_xkb_device_spec_t;
    pad0: array[0..1] of Tuint8_t;
    which: Tuint32_t;
  end;
  Pxcb_xkb_get_indicator_map_request_t = ^Txcb_xkb_get_indicator_map_request_t;

  Txcb_xkb_get_indicator_map_reply_t = record
    response_type: Tuint8_t;
    deviceID: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    which: Tuint32_t;
    realIndicators: Tuint32_t;
    nIndicators: Tuint8_t;
    pad0: array[0..14] of Tuint8_t;
  end;
  Pxcb_xkb_get_indicator_map_reply_t = ^Txcb_xkb_get_indicator_map_reply_t;

const
  XCB_XKB_SET_INDICATOR_MAP_ = 14;

type
  Txcb_xkb_set_indicator_map_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    deviceSpec: Txcb_xkb_device_spec_t;
    pad0: array[0..1] of Tuint8_t;
    which: Tuint32_t;
  end;
  Pxcb_xkb_set_indicator_map_request_t = ^Txcb_xkb_set_indicator_map_request_t;

  Txcb_xkb_get_named_indicator_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xkb_get_named_indicator_cookie_t = ^Txcb_xkb_get_named_indicator_cookie_t;

const
  XCB_XKB_GET_NAMED_INDICATOR_ = 15;

type
  Txcb_xkb_get_named_indicator_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    deviceSpec: Txcb_xkb_device_spec_t;
    ledClass: Txcb_xkb_led_class_spec_t;
    ledID: Txcb_xkb_id_spec_t;
    pad0: array[0..1] of Tuint8_t;
    indicator: Txcb_atom_t;
  end;
  Pxcb_xkb_get_named_indicator_request_t = ^Txcb_xkb_get_named_indicator_request_t;

  Txcb_xkb_get_named_indicator_reply_t = record
    response_type: Tuint8_t;
    deviceID: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    indicator: Txcb_atom_t;
    found: Tuint8_t;
    on: Tuint8_t;
    realIndicator: Tuint8_t;
    ndx: Tuint8_t;
    map_flags: Tuint8_t;
    map_whichGroups: Tuint8_t;
    map_groups: Tuint8_t;
    map_whichMods: Tuint8_t;
    map_mods: Tuint8_t;
    map_realMods: Tuint8_t;
    map_vmod: Tuint16_t;
    map_ctrls: Tuint32_t;
    supported: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
  end;
  Pxcb_xkb_get_named_indicator_reply_t = ^Txcb_xkb_get_named_indicator_reply_t;

const
  XCB_XKB_SET_NAMED_INDICATOR_ = 16;

type
  Txcb_xkb_set_named_indicator_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    deviceSpec: Txcb_xkb_device_spec_t;
    ledClass: Txcb_xkb_led_class_spec_t;
    ledID: Txcb_xkb_id_spec_t;
    pad0: array[0..1] of Tuint8_t;
    indicator: Txcb_atom_t;
    setState: Tuint8_t;
    on: Tuint8_t;
    setMap: Tuint8_t;
    createMap: Tuint8_t;
    pad1: Tuint8_t;
    map_flags: Tuint8_t;
    map_whichGroups: Tuint8_t;
    map_groups: Tuint8_t;
    map_whichMods: Tuint8_t;
    map_realMods: Tuint8_t;
    map_vmods: Tuint16_t;
    map_ctrls: Tuint32_t;
  end;
  Pxcb_xkb_set_named_indicator_request_t = ^Txcb_xkb_set_named_indicator_request_t;

  Txcb_xkb_get_names_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xkb_get_names_cookie_t = ^Txcb_xkb_get_names_cookie_t;

const
  XCB_XKB_GET_NAMES_ = 17;

type
  Txcb_xkb_get_names_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    deviceSpec: Txcb_xkb_device_spec_t;
    pad0: array[0..1] of Tuint8_t;
    which: Tuint32_t;
  end;
  Pxcb_xkb_get_names_request_t = ^Txcb_xkb_get_names_request_t;

  Txcb_xkb_get_names_value_list_t = record
    keycodesName: Txcb_atom_t;
    geometryName: Txcb_atom_t;
    symbolsName: Txcb_atom_t;
    physSymbolsName: Txcb_atom_t;
    typesName: Txcb_atom_t;
    compatName: Txcb_atom_t;
    typeNames: Pxcb_atom_t;
    nLevelsPerType: Puint8_t;
    pad1: Puint8_t;
    ktLevelNames: Pxcb_atom_t;
    indicatorNames: Pxcb_atom_t;
    virtualModNames: Pxcb_atom_t;
    groups: Pxcb_atom_t;
    keyNames: Pxcb_xkb_key_name_t;
    keyAliases: Pxcb_xkb_key_alias_t;
    radioGroupNames: Pxcb_atom_t;
  end;
  Pxcb_xkb_get_names_value_list_t = ^Txcb_xkb_get_names_value_list_t;

  Txcb_xkb_get_names_reply_t = record
    response_type: Tuint8_t;
    deviceID: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    which: Tuint32_t;
    minKeyCode: Txcb_keycode_t;
    maxKeyCode: Txcb_keycode_t;
    nTypes: Tuint8_t;
    groupNames: Tuint8_t;
    virtualMods: Tuint16_t;
    firstKey: Txcb_keycode_t;
    nKeys: Tuint8_t;
    indicators: Tuint32_t;
    nRadioGroups: Tuint8_t;
    nKeyAliases: Tuint8_t;
    nKTLevels: Tuint16_t;
    pad0: array[0..3] of Tuint8_t;
  end;
  Pxcb_xkb_get_names_reply_t = ^Txcb_xkb_get_names_reply_t;

  Txcb_xkb_set_names_values_t = record
    keycodesName: Txcb_atom_t;
    geometryName: Txcb_atom_t;
    symbolsName: Txcb_atom_t;
    physSymbolsName: Txcb_atom_t;
    typesName: Txcb_atom_t;
    compatName: Txcb_atom_t;
    typeNames: Pxcb_atom_t;
    nLevelsPerType: Puint8_t;
    ktLevelNames: Pxcb_atom_t;
    indicatorNames: Pxcb_atom_t;
    virtualModNames: Pxcb_atom_t;
    groups: Pxcb_atom_t;
    keyNames: Pxcb_xkb_key_name_t;
    keyAliases: Pxcb_xkb_key_alias_t;
    radioGroupNames: Pxcb_atom_t;
  end;
  Pxcb_xkb_set_names_values_t = ^Txcb_xkb_set_names_values_t;

const
  XCB_XKB_SET_NAMES_ = 18;

type
  Txcb_xkb_set_names_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    deviceSpec: Txcb_xkb_device_spec_t;
    virtualMods: Tuint16_t;
    which: Tuint32_t;
    firstType: Tuint8_t;
    nTypes: Tuint8_t;
    firstKTLevelt: Tuint8_t;
    nKTLevels: Tuint8_t;
    indicators: Tuint32_t;
    groupNames: Tuint8_t;
    nRadioGroups: Tuint8_t;
    firstKey: Txcb_keycode_t;
    nKeys: Tuint8_t;
    nKeyAliases: Tuint8_t;
    pad0: Tuint8_t;
    totalKTLevelNames: Tuint16_t;
  end;
  Pxcb_xkb_set_names_request_t = ^Txcb_xkb_set_names_request_t;

  Txcb_xkb_per_client_flags_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xkb_per_client_flags_cookie_t = ^Txcb_xkb_per_client_flags_cookie_t;

const
  XCB_XKB_PER_CLIENT_FLAGS_ = 21;

type
  Txcb_xkb_per_client_flags_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    deviceSpec: Txcb_xkb_device_spec_t;
    pad0: array[0..1] of Tuint8_t;
    change: Tuint32_t;
    value: Tuint32_t;
    ctrlsToChange: Tuint32_t;
    autoCtrls: Tuint32_t;
    autoCtrlsValues: Tuint32_t;
  end;
  Pxcb_xkb_per_client_flags_request_t = ^Txcb_xkb_per_client_flags_request_t;

  Txcb_xkb_per_client_flags_reply_t = record
    response_type: Tuint8_t;
    deviceID: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    supported: Tuint32_t;
    value: Tuint32_t;
    autoCtrls: Tuint32_t;
    autoCtrlsValues: Tuint32_t;
    pad0: array[0..7] of Tuint8_t;
  end;
  Pxcb_xkb_per_client_flags_reply_t = ^Txcb_xkb_per_client_flags_reply_t;

  Txcb_xkb_list_components_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xkb_list_components_cookie_t = ^Txcb_xkb_list_components_cookie_t;

const
  XCB_XKB_LIST_COMPONENTS_ = 22;

type
  Txcb_xkb_list_components_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    deviceSpec: Txcb_xkb_device_spec_t;
    maxNames: Tuint16_t;
  end;
  Pxcb_xkb_list_components_request_t = ^Txcb_xkb_list_components_request_t;

  Txcb_xkb_list_components_reply_t = record
    response_type: Tuint8_t;
    deviceID: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    nKeymaps: Tuint16_t;
    nKeycodes: Tuint16_t;
    nTypes: Tuint16_t;
    nCompatMaps: Tuint16_t;
    nSymbols: Tuint16_t;
    nGeometries: Tuint16_t;
    extra: Tuint16_t;
    pad0: array[0..9] of Tuint8_t;
  end;
  Pxcb_xkb_list_components_reply_t = ^Txcb_xkb_list_components_reply_t;

  Txcb_xkb_get_kbd_by_name_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xkb_get_kbd_by_name_cookie_t = ^Txcb_xkb_get_kbd_by_name_cookie_t;

const
  XCB_XKB_GET_KBD_BY_NAME_ = 23;

type
  Txcb_xkb_get_kbd_by_name_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    deviceSpec: Txcb_xkb_device_spec_t;
    need: Tuint16_t;
    want: Tuint16_t;
    load: Tuint8_t;
    pad0: Tuint8_t;
  end;
  Pxcb_xkb_get_kbd_by_name_request_t = ^Txcb_xkb_get_kbd_by_name_request_t;

  Txcb_xkb_get_kbd_by_name_replies_types_map_t = record
    types_rtrn: Pxcb_xkb_key_type_t;
    syms_rtrn: Pxcb_xkb_key_sym_map_t;
    acts_rtrn_count: Puint8_t;
    acts_rtrn_acts: Pxcb_xkb_action_t;
    behaviors_rtrn: Pxcb_xkb_set_behavior_t;
    vmods_rtrn: Puint8_t;
    explicit_rtrn: Pxcb_xkb_set_explicit_t;
    modmap_rtrn: Pxcb_xkb_key_mod_map_t;
    vmodmap_rtrn: Pxcb_xkb_key_v_mod_map_t;
  end;
  Pxcb_xkb_get_kbd_by_name_replies_types_map_t = ^Txcb_xkb_get_kbd_by_name_replies_types_map_t;

  Txcb_xkb_get_kbd_by_name_replies_key_names_value_list_t = record
    keycodesName: Txcb_atom_t;
    geometryName: Txcb_atom_t;
    symbolsName: Txcb_atom_t;
    physSymbolsName: Txcb_atom_t;
    typesName: Txcb_atom_t;
    compatName: Txcb_atom_t;
    typeNames: Pxcb_atom_t;
    nLevelsPerType: Puint8_t;
    ktLevelNames: Pxcb_atom_t;
    indicatorNames: Pxcb_atom_t;
    virtualModNames: Pxcb_atom_t;
    groups: Pxcb_atom_t;
    keyNames: Pxcb_xkb_key_name_t;
    keyAliases: Pxcb_xkb_key_alias_t;
    radioGroupNames: Pxcb_atom_t;
  end;
  Pxcb_xkb_get_kbd_by_name_replies_key_names_value_list_t = ^Txcb_xkb_get_kbd_by_name_replies_key_names_value_list_t;

  Txcb_xkb_get_kbd_by_name_replies_t = record
    types: record
      getmap_type: Tuint8_t;
      typeDeviceID: Tuint8_t;
      getmap_sequence: Tuint16_t;
      getmap_length: Tuint32_t;
      pad1: array[0..1] of Tuint8_t;
      typeMinKeyCode: Txcb_keycode_t;
      typeMaxKeyCode: Txcb_keycode_t;
      present: Tuint16_t;
      firstType: Tuint8_t;
      nTypes: Tuint8_t;
      totalTypes: Tuint8_t;
      firstKeySym: Txcb_keycode_t;
      totalSyms: Tuint16_t;
      nKeySyms: Tuint8_t;
      firstKeyAction: Txcb_keycode_t;
      totalActions: Tuint16_t;
      nKeyActions: Tuint8_t;
      firstKeyBehavior: Txcb_keycode_t;
      nKeyBehaviors: Tuint8_t;
      totalKeyBehaviors: Tuint8_t;
      firstKeyExplicit: Txcb_keycode_t;
      nKeyExplicit: Tuint8_t;
      totalKeyExplicit: Tuint8_t;
      firstModMapKey: Txcb_keycode_t;
      nModMapKeys: Tuint8_t;
      totalModMapKeys: Tuint8_t;
      firstVModMapKey: Txcb_keycode_t;
      nVModMapKeys: Tuint8_t;
      totalVModMapKeys: Tuint8_t;
      pad2: Tuint8_t;
      virtualMods: Tuint16_t;
      map: Txcb_xkb_get_kbd_by_name_replies_types_map_t;
      end;
    compat_map: record
      compatmap_type: Tuint8_t;
      compatDeviceID: Tuint8_t;
      compatmap_sequence: Tuint16_t;
      compatmap_length: Tuint32_t;
      groupsRtrn: Tuint8_t;
      pad7: Tuint8_t;
      firstSIRtrn: Tuint16_t;
      nSIRtrn: Tuint16_t;
      nTotalSI: Tuint16_t;
      pad8: array[0..15] of Tuint8_t;
      si_rtrn: Pxcb_xkb_sym_interpret_t;
      group_rtrn: Pxcb_xkb_mod_def_t;
      end;
    indicator_maps: record
      indicatormap_type: Tuint8_t;
      indicatorDeviceID: Tuint8_t;
      indicatormap_sequence: Tuint16_t;
      indicatormap_length: Tuint32_t;
      which: Tuint32_t;
      realIndicators: Tuint32_t;
      nIndicators: Tuint8_t;
      pad9: array[0..14] of Tuint8_t;
      maps: Pxcb_xkb_indicator_map_t;
      end;
    key_names: record
      keyname_type: Tuint8_t;
      keyDeviceID: Tuint8_t;
      keyname_sequence: Tuint16_t;
      keyname_length: Tuint32_t;
      which: Tuint32_t;
      keyMinKeyCode: Txcb_keycode_t;
      keyMaxKeyCode: Txcb_keycode_t;
      nTypes: Tuint8_t;
      groupNames: Tuint8_t;
      virtualMods: Tuint16_t;
      firstKey: Txcb_keycode_t;
      nKeys: Tuint8_t;
      indicators: Tuint32_t;
      nRadioGroups: Tuint8_t;
      nKeyAliases: Tuint8_t;
      nKTLevels: Tuint16_t;
      pad10: array[0..3] of Tuint8_t;
      valueList: Txcb_xkb_get_kbd_by_name_replies_key_names_value_list_t;
      end;
    geometry: record
      geometry_type: Tuint8_t;
      geometryDeviceID: Tuint8_t;
      geometry_sequence: Tuint16_t;
      geometry_length: Tuint32_t;
      name: Txcb_atom_t;
      geometryFound: Tuint8_t;
      pad12: Tuint8_t;
      widthMM: Tuint16_t;
      heightMM: Tuint16_t;
      nProperties: Tuint16_t;
      nColors: Tuint16_t;
      nShapes: Tuint16_t;
      nSections: Tuint16_t;
      nDoodads: Tuint16_t;
      nKeyAliases: Tuint16_t;
      baseColorNdx: Tuint8_t;
      labelColorNdx: Tuint8_t;
      labelFont: Pxcb_xkb_counted_string_16_t;
      end;
  end;
  Pxcb_xkb_get_kbd_by_name_replies_t = ^Txcb_xkb_get_kbd_by_name_replies_t;

function xcb_xkb_get_kbd_by_name_replies_types_map(R: Pxcb_xkb_get_kbd_by_name_replies_t): Pxcb_xkb_get_kbd_by_name_replies_types_map_t; cdecl; external libxcb_xkb;

type
  Txcb_xkb_get_kbd_by_name_reply_t = record
    response_type: Tuint8_t;
    deviceID: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    minKeyCode: Txcb_keycode_t;
    maxKeyCode: Txcb_keycode_t;
    loaded: Tuint8_t;
    newKeyboard: Tuint8_t;
    found: Tuint16_t;
    reported: Tuint16_t;
    pad0: array[0..15] of Tuint8_t;
  end;
  Pxcb_xkb_get_kbd_by_name_reply_t = ^Txcb_xkb_get_kbd_by_name_reply_t;

  Txcb_xkb_get_device_info_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xkb_get_device_info_cookie_t = ^Txcb_xkb_get_device_info_cookie_t;

const
  XCB_XKB_GET_DEVICE_INFO_ = 24;

type
  Txcb_xkb_get_device_info_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    deviceSpec: Txcb_xkb_device_spec_t;
    wanted: Tuint16_t;
    allButtons: Tuint8_t;
    firstButton: Tuint8_t;
    nButtons: Tuint8_t;
    pad0: Tuint8_t;
    ledClass: Txcb_xkb_led_class_spec_t;
    ledID: Txcb_xkb_id_spec_t;
  end;
  Pxcb_xkb_get_device_info_request_t = ^Txcb_xkb_get_device_info_request_t;

  Txcb_xkb_get_device_info_reply_t = record
    response_type: Tuint8_t;
    deviceID: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    present: Tuint16_t;
    supported: Tuint16_t;
    unsupported: Tuint16_t;
    nDeviceLedFBs: Tuint16_t;
    firstBtnWanted: Tuint8_t;
    nBtnsWanted: Tuint8_t;
    firstBtnRtrn: Tuint8_t;
    nBtnsRtrn: Tuint8_t;
    totalBtns: Tuint8_t;
    hasOwnState: Tuint8_t;
    dfltKbdFB: Tuint16_t;
    dfltLedFB: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
    devType: Txcb_atom_t;
    nameLen: Tuint16_t;
  end;
  Pxcb_xkb_get_device_info_reply_t = ^Txcb_xkb_get_device_info_reply_t;

const
  XCB_XKB_SET_DEVICE_INFO_ = 25;

type
  Txcb_xkb_set_device_info_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    deviceSpec: Txcb_xkb_device_spec_t;
    firstBtn: Tuint8_t;
    nBtns: Tuint8_t;
    change: Tuint16_t;
    nDeviceLedFBs: Tuint16_t;
  end;
  Pxcb_xkb_set_device_info_request_t = ^Txcb_xkb_set_device_info_request_t;

  Txcb_xkb_set_debugging_flags_cookie_t = record
    sequence: dword;
  end;
  Pxcb_xkb_set_debugging_flags_cookie_t = ^Txcb_xkb_set_debugging_flags_cookie_t;

const
  XCB_XKB_SET_DEBUGGING_FLAGS_ = 101;

type
  Txcb_xkb_set_debugging_flags_request_t = record
    major_opcode: Tuint8_t;
    minor_opcode: Tuint8_t;
    length: Tuint16_t;
    msgLength: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
    affectFlags: Tuint32_t;
    flags: Tuint32_t;
    affectCtrls: Tuint32_t;
    ctrls: Tuint32_t;
  end;
  Pxcb_xkb_set_debugging_flags_request_t = ^Txcb_xkb_set_debugging_flags_request_t;

  Txcb_xkb_set_debugging_flags_reply_t = record
    response_type: Tuint8_t;
    pad0: Tuint8_t;
    sequence: Tuint16_t;
    length: Tuint32_t;
    currentFlags: Tuint32_t;
    currentCtrls: Tuint32_t;
    supportedFlags: Tuint32_t;
    supportedCtrls: Tuint32_t;
    pad1: array[0..7] of Tuint8_t;
  end;
  Pxcb_xkb_set_debugging_flags_reply_t = ^Txcb_xkb_set_debugging_flags_reply_t;

const
  XCB_XKB_NEW_KEYBOARD_NOTIFY = 0;

type
  Txcb_xkb_new_keyboard_notify_event_t = record
    response_type: Tuint8_t;
    xkbType: Tuint8_t;
    sequence: Tuint16_t;
    time: Txcb_timestamp_t;
    deviceID: Tuint8_t;
    oldDeviceID: Tuint8_t;
    minKeyCode: Txcb_keycode_t;
    maxKeyCode: Txcb_keycode_t;
    oldMinKeyCode: Txcb_keycode_t;
    oldMaxKeyCode: Txcb_keycode_t;
    requestMajor: Tuint8_t;
    requestMinor: Tuint8_t;
    changed: Tuint16_t;
    pad0: array[0..13] of Tuint8_t;
  end;
  Pxcb_xkb_new_keyboard_notify_event_t = ^Txcb_xkb_new_keyboard_notify_event_t;

const
  XCB_XKB_MAP_NOTIFY = 1;

type
  Txcb_xkb_map_notify_event_t = record
    response_type: Tuint8_t;
    xkbType: Tuint8_t;
    sequence: Tuint16_t;
    time: Txcb_timestamp_t;
    deviceID: Tuint8_t;
    ptrBtnActions: Tuint8_t;
    changed: Tuint16_t;
    minKeyCode: Txcb_keycode_t;
    maxKeyCode: Txcb_keycode_t;
    firstType: Tuint8_t;
    nTypes: Tuint8_t;
    firstKeySym: Txcb_keycode_t;
    nKeySyms: Tuint8_t;
    firstKeyAct: Txcb_keycode_t;
    nKeyActs: Tuint8_t;
    firstKeyBehavior: Txcb_keycode_t;
    nKeyBehavior: Tuint8_t;
    firstKeyExplicit: Txcb_keycode_t;
    nKeyExplicit: Tuint8_t;
    firstModMapKey: Txcb_keycode_t;
    nModMapKeys: Tuint8_t;
    firstVModMapKey: Txcb_keycode_t;
    nVModMapKeys: Tuint8_t;
    virtualMods: Tuint16_t;
    pad0: array[0..1] of Tuint8_t;
  end;
  Pxcb_xkb_map_notify_event_t = ^Txcb_xkb_map_notify_event_t;

const
  XCB_XKB_STATE_NOTIFY = 2;

type
  Txcb_xkb_state_notify_event_t = record
    response_type: Tuint8_t;
    xkbType: Tuint8_t;
    sequence: Tuint16_t;
    time: Txcb_timestamp_t;
    deviceID: Tuint8_t;
    mods: Tuint8_t;
    baseMods: Tuint8_t;
    latchedMods: Tuint8_t;
    lockedMods: Tuint8_t;
    group: Tuint8_t;
    baseGroup: Tint16_t;
    latchedGroup: Tint16_t;
    lockedGroup: Tuint8_t;
    compatState: Tuint8_t;
    grabMods: Tuint8_t;
    compatGrabMods: Tuint8_t;
    lookupMods: Tuint8_t;
    compatLoockupMods: Tuint8_t;
    ptrBtnState: Tuint16_t;
    changed: Tuint16_t;
    keycode: Txcb_keycode_t;
    eventType: Tuint8_t;
    requestMajor: Tuint8_t;
    requestMinor: Tuint8_t;
  end;
  Pxcb_xkb_state_notify_event_t = ^Txcb_xkb_state_notify_event_t;

const
  XCB_XKB_CONTROLS_NOTIFY = 3;

type
  Txcb_xkb_controls_notify_event_t = record
    response_type: Tuint8_t;
    xkbType: Tuint8_t;
    sequence: Tuint16_t;
    time: Txcb_timestamp_t;
    deviceID: Tuint8_t;
    numGroups: Tuint8_t;
    pad0: array[0..1] of Tuint8_t;
    changedControls: Tuint32_t;
    enabledControls: Tuint32_t;
    enabledControlChanges: Tuint32_t;
    keycode: Txcb_keycode_t;
    eventType: Tuint8_t;
    requestMajor: Tuint8_t;
    requestMinor: Tuint8_t;
    pad1: array[0..3] of Tuint8_t;
  end;
  Pxcb_xkb_controls_notify_event_t = ^Txcb_xkb_controls_notify_event_t;

const
  XCB_XKB_INDICATOR_STATE_NOTIFY = 4;

type
  Txcb_xkb_indicator_state_notify_event_t = record
    response_type: Tuint8_t;
    xkbType: Tuint8_t;
    sequence: Tuint16_t;
    time: Txcb_timestamp_t;
    deviceID: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
    state: Tuint32_t;
    stateChanged: Tuint32_t;
    pad1: array[0..11] of Tuint8_t;
  end;
  Pxcb_xkb_indicator_state_notify_event_t = ^Txcb_xkb_indicator_state_notify_event_t;

const
  XCB_XKB_INDICATOR_MAP_NOTIFY = 5;

type
  Txcb_xkb_indicator_map_notify_event_t = record
    response_type: Tuint8_t;
    xkbType: Tuint8_t;
    sequence: Tuint16_t;
    time: Txcb_timestamp_t;
    deviceID: Tuint8_t;
    pad0: array[0..2] of Tuint8_t;
    state: Tuint32_t;
    mapChanged: Tuint32_t;
    pad1: array[0..11] of Tuint8_t;
  end;
  Pxcb_xkb_indicator_map_notify_event_t = ^Txcb_xkb_indicator_map_notify_event_t;

const
  XCB_XKB_NAMES_NOTIFY = 6;

type
  Txcb_xkb_names_notify_event_t = record
    response_type: Tuint8_t;
    xkbType: Tuint8_t;
    sequence: Tuint16_t;
    time: Txcb_timestamp_t;
    deviceID: Tuint8_t;
    pad0: Tuint8_t;
    changed: Tuint16_t;
    firstType: Tuint8_t;
    nTypes: Tuint8_t;
    firstLevelName: Tuint8_t;
    nLevelNames: Tuint8_t;
    pad1: Tuint8_t;
    nRadioGroups: Tuint8_t;
    nKeyAliases: Tuint8_t;
    changedGroupNames: Tuint8_t;
    changedVirtualMods: Tuint16_t;
    firstKey: Txcb_keycode_t;
    nKeys: Tuint8_t;
    changedIndicators: Tuint32_t;
    pad2: array[0..3] of Tuint8_t;
  end;
  Pxcb_xkb_names_notify_event_t = ^Txcb_xkb_names_notify_event_t;

const
  XCB_XKB_COMPAT_MAP_NOTIFY = 7;

type
  Txcb_xkb_compat_map_notify_event_t = record
    response_type: Tuint8_t;
    xkbType: Tuint8_t;
    sequence: Tuint16_t;
    time: Txcb_timestamp_t;
    deviceID: Tuint8_t;
    changedGroups: Tuint8_t;
    firstSI: Tuint16_t;
    nSI: Tuint16_t;
    nTotalSI: Tuint16_t;
    pad0: array[0..15] of Tuint8_t;
  end;
  Pxcb_xkb_compat_map_notify_event_t = ^Txcb_xkb_compat_map_notify_event_t;

const
  XCB_XKB_BELL_NOTIFY = 8;

type
  Txcb_xkb_bell_notify_event_t = record
    response_type: Tuint8_t;
    xkbType: Tuint8_t;
    sequence: Tuint16_t;
    time: Txcb_timestamp_t;
    deviceID: Tuint8_t;
    bellClass: Tuint8_t;
    bellID: Tuint8_t;
    percent: Tuint8_t;
    pitch: Tuint16_t;
    duration: Tuint16_t;
    name: Txcb_atom_t;
    window: Txcb_window_t;
    eventOnly: Tuint8_t;
    pad0: array[0..6] of Tuint8_t;
  end;
  Pxcb_xkb_bell_notify_event_t = ^Txcb_xkb_bell_notify_event_t;

const
  XCB_XKB_ACTION_MESSAGE = 9;

type
  Txcb_xkb_action_message_event_t = record
    response_type: Tuint8_t;
    xkbType: Tuint8_t;
    sequence: Tuint16_t;
    time: Txcb_timestamp_t;
    deviceID: Tuint8_t;
    keycode: Txcb_keycode_t;
    press: Tuint8_t;
    keyEventFollows: Tuint8_t;
    mods: Tuint8_t;
    group: Tuint8_t;
    message: array[0..7] of Txcb_xkb_string8_t;
    pad0: array[0..9] of Tuint8_t;
  end;
  Pxcb_xkb_action_message_event_t = ^Txcb_xkb_action_message_event_t;

const
  XCB_XKB_ACCESS_X_NOTIFY = 10;

type
  Txcb_xkb_access_x_notify_event_t = record
    response_type: Tuint8_t;
    xkbType: Tuint8_t;
    sequence: Tuint16_t;
    time: Txcb_timestamp_t;
    deviceID: Tuint8_t;
    keycode: Txcb_keycode_t;
    detailt: Tuint16_t;
    slowKeysDelay: Tuint16_t;
    debounceDelay: Tuint16_t;
    pad0: array[0..15] of Tuint8_t;
  end;
  Pxcb_xkb_access_x_notify_event_t = ^Txcb_xkb_access_x_notify_event_t;

const
  XCB_XKB_EXTENSION_DEVICE_NOTIFY = 11;

type
  Txcb_xkb_extension_device_notify_event_t = record
    response_type: Tuint8_t;
    xkbType: Tuint8_t;
    sequence: Tuint16_t;
    time: Txcb_timestamp_t;
    deviceID: Tuint8_t;
    pad0: Tuint8_t;
    reason: Tuint16_t;
    ledClass: Tuint16_t;
    ledID: Tuint16_t;
    ledsDefined: Tuint32_t;
    ledState: Tuint32_t;
    firstButton: Tuint8_t;
    nButtons: Tuint8_t;
    supported: Tuint16_t;
    unsupported: Tuint16_t;
    pad1: array[0..1] of Tuint8_t;
  end;
  Pxcb_xkb_extension_device_notify_event_t = ^Txcb_xkb_extension_device_notify_event_t;

procedure xcb_xkb_device_spec_next(i: Pxcb_xkb_device_spec_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_device_spec_end(i: Txcb_xkb_device_spec_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_led_class_spec_next(i: Pxcb_xkb_led_class_spec_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_led_class_spec_end(i: Txcb_xkb_led_class_spec_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_bell_class_spec_next(i: Pxcb_xkb_bell_class_spec_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_bell_class_spec_end(i: Txcb_xkb_bell_class_spec_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_id_spec_next(i: Pxcb_xkb_id_spec_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_id_spec_end(i: Txcb_xkb_id_spec_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_indicator_map_next(i: Pxcb_xkb_indicator_map_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_indicator_map_end(i: Txcb_xkb_indicator_map_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_mod_def_next(i: Pxcb_xkb_mod_def_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_mod_def_end(i: Txcb_xkb_mod_def_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_key_name_next(i: Pxcb_xkb_key_name_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_key_name_end(i: Txcb_xkb_key_name_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_key_alias_next(i: Pxcb_xkb_key_alias_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_key_alias_end(i: Txcb_xkb_key_alias_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_counted_string_16_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xkb;
function xcb_xkb_counted_string_16_string(R: Pxcb_xkb_counted_string_16_t): pchar; cdecl; external libxcb_xkb;
function xcb_xkb_counted_string_16_string_length(R: Pxcb_xkb_counted_string_16_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_counted_string_16_string_end(R: Pxcb_xkb_counted_string_16_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_counted_string_16_alignment_pad(R: Pxcb_xkb_counted_string_16_t): pointer; cdecl; external libxcb_xkb;
function xcb_xkb_counted_string_16_alignment_pad_length(R: Pxcb_xkb_counted_string_16_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_counted_string_16_alignment_pad_end(R: Pxcb_xkb_counted_string_16_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_counted_string_16_next(i: Pxcb_xkb_counted_string_16_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_counted_string_16_end(i: Txcb_xkb_counted_string_16_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_kt_map_entry_next(i: Pxcb_xkb_kt_map_entry_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_kt_map_entry_end(i: Txcb_xkb_kt_map_entry_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_key_type_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xkb;
function xcb_xkb_key_type_map(R: Pxcb_xkb_key_type_t): Pxcb_xkb_kt_map_entry_t; cdecl; external libxcb_xkb;
function xcb_xkb_key_type_map_length(R: Pxcb_xkb_key_type_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_key_type_map_iterator(R: Pxcb_xkb_key_type_t): Txcb_xkb_kt_map_entry_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_key_type_preserve(R: Pxcb_xkb_key_type_t): Pxcb_xkb_mod_def_t; cdecl; external libxcb_xkb;
function xcb_xkb_key_type_preserve_length(R: Pxcb_xkb_key_type_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_key_type_preserve_iterator(R: Pxcb_xkb_key_type_t): Txcb_xkb_mod_def_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_key_type_next(i: Pxcb_xkb_key_type_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_key_type_end(i: Txcb_xkb_key_type_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_key_sym_map_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xkb;
function xcb_xkb_key_sym_map_syms(R: Pxcb_xkb_key_sym_map_t): Pxcb_keysym_t; cdecl; external libxcb_xkb;
function xcb_xkb_key_sym_map_syms_length(R: Pxcb_xkb_key_sym_map_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_key_sym_map_syms_end(R: Pxcb_xkb_key_sym_map_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_key_sym_map_next(i: Pxcb_xkb_key_sym_map_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_key_sym_map_end(i: Txcb_xkb_key_sym_map_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_common_behavior_next(i: Pxcb_xkb_common_behavior_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_common_behavior_end(i: Txcb_xkb_common_behavior_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_default_behavior_next(i: Pxcb_xkb_default_behavior_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_default_behavior_end(i: Txcb_xkb_default_behavior_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_lock_behavior_next(i: Pxcb_xkb_lock_behavior_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_lock_behavior_end(i: Txcb_xkb_lock_behavior_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_radio_group_behavior_next(i: Pxcb_xkb_radio_group_behavior_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_radio_group_behavior_end(i: Txcb_xkb_radio_group_behavior_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_overlay_behavior_next(i: Pxcb_xkb_overlay_behavior_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_overlay_behavior_end(i: Txcb_xkb_overlay_behavior_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_permament_lock_behavior_next(i: Pxcb_xkb_permament_lock_behavior_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_permament_lock_behavior_end(i: Txcb_xkb_permament_lock_behavior_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_permament_radio_group_behavior_next(i: Pxcb_xkb_permament_radio_group_behavior_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_permament_radio_group_behavior_end(i: Txcb_xkb_permament_radio_group_behavior_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_permament_overlay_behavior_next(i: Pxcb_xkb_permament_overlay_behavior_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_permament_overlay_behavior_end(i: Txcb_xkb_permament_overlay_behavior_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_behavior_next(i: Pxcb_xkb_behavior_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_behavior_end(i: Txcb_xkb_behavior_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_set_behavior_next(i: Pxcb_xkb_set_behavior_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_set_behavior_end(i: Txcb_xkb_set_behavior_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_set_explicit_next(i: Pxcb_xkb_set_explicit_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_set_explicit_end(i: Txcb_xkb_set_explicit_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_key_mod_map_next(i: Pxcb_xkb_key_mod_map_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_key_mod_map_end(i: Txcb_xkb_key_mod_map_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_key_v_mod_map_next(i: Pxcb_xkb_key_v_mod_map_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_key_v_mod_map_end(i: Txcb_xkb_key_v_mod_map_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_kt_set_map_entry_next(i: Pxcb_xkb_kt_set_map_entry_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_kt_set_map_entry_end(i: Txcb_xkb_kt_set_map_entry_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_key_type_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_key_type_entries(R: Pxcb_xkb_set_key_type_t): Pxcb_xkb_kt_set_map_entry_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_key_type_entries_length(R: Pxcb_xkb_set_key_type_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_key_type_entries_iterator(R: Pxcb_xkb_set_key_type_t): Txcb_xkb_kt_set_map_entry_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_key_type_preserve_entries(R: Pxcb_xkb_set_key_type_t): Pxcb_xkb_kt_set_map_entry_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_key_type_preserve_entries_length(R: Pxcb_xkb_set_key_type_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_key_type_preserve_entries_iterator(R: Pxcb_xkb_set_key_type_t): Txcb_xkb_kt_set_map_entry_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_set_key_type_next(i: Pxcb_xkb_set_key_type_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_set_key_type_end(i: Txcb_xkb_set_key_type_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_string8_next(i: Pxcb_xkb_string8_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_string8_end(i: Txcb_xkb_string8_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_outline_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xkb;
function xcb_xkb_outline_points(R: Pxcb_xkb_outline_t): Pxcb_point_t; cdecl; external libxcb_xkb;
function xcb_xkb_outline_points_length(R: Pxcb_xkb_outline_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_outline_points_iterator(R: Pxcb_xkb_outline_t): Txcb_point_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_outline_next(i: Pxcb_xkb_outline_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_outline_end(i: Txcb_xkb_outline_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_shape_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xkb;
function xcb_xkb_shape_outlines_length(R: Pxcb_xkb_shape_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_shape_outlines_iterator(R: Pxcb_xkb_shape_t): Txcb_xkb_outline_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_shape_next(i: Pxcb_xkb_shape_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_shape_end(i: Txcb_xkb_shape_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_key_next(i: Pxcb_xkb_key_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_key_end(i: Txcb_xkb_key_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_overlay_key_next(i: Pxcb_xkb_overlay_key_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_overlay_key_end(i: Txcb_xkb_overlay_key_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_overlay_row_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xkb;
function xcb_xkb_overlay_row_keys(R: Pxcb_xkb_overlay_row_t): Pxcb_xkb_overlay_key_t; cdecl; external libxcb_xkb;
function xcb_xkb_overlay_row_keys_length(R: Pxcb_xkb_overlay_row_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_overlay_row_keys_iterator(R: Pxcb_xkb_overlay_row_t): Txcb_xkb_overlay_key_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_overlay_row_next(i: Pxcb_xkb_overlay_row_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_overlay_row_end(i: Txcb_xkb_overlay_row_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_overlay_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xkb;
function xcb_xkb_overlay_rows_length(R: Pxcb_xkb_overlay_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_overlay_rows_iterator(R: Pxcb_xkb_overlay_t): Txcb_xkb_overlay_row_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_overlay_next(i: Pxcb_xkb_overlay_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_overlay_end(i: Txcb_xkb_overlay_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_row_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xkb;
function xcb_xkb_row_keys(R: Pxcb_xkb_row_t): Pxcb_xkb_key_t; cdecl; external libxcb_xkb;
function xcb_xkb_row_keys_length(R: Pxcb_xkb_row_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_row_keys_iterator(R: Pxcb_xkb_row_t): Txcb_xkb_key_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_row_next(i: Pxcb_xkb_row_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_row_end(i: Txcb_xkb_row_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_listing_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xkb;
function xcb_xkb_listing_string(R: Pxcb_xkb_listing_t): Pxcb_xkb_string8_t; cdecl; external libxcb_xkb;
function xcb_xkb_listing_string_length(R: Pxcb_xkb_listing_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_listing_string_end(R: Pxcb_xkb_listing_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_listing_next(i: Pxcb_xkb_listing_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_listing_end(i: Txcb_xkb_listing_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_device_led_info_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xkb;
function xcb_xkb_device_led_info_names(R: Pxcb_xkb_device_led_info_t): Pxcb_atom_t; cdecl; external libxcb_xkb;
function xcb_xkb_device_led_info_names_length(R: Pxcb_xkb_device_led_info_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_device_led_info_names_end(R: Pxcb_xkb_device_led_info_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_device_led_info_maps(R: Pxcb_xkb_device_led_info_t): Pxcb_xkb_indicator_map_t; cdecl; external libxcb_xkb;
function xcb_xkb_device_led_info_maps_length(R: Pxcb_xkb_device_led_info_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_device_led_info_maps_iterator(R: Pxcb_xkb_device_led_info_t): Txcb_xkb_indicator_map_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_device_led_info_next(i: Pxcb_xkb_device_led_info_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_device_led_info_end(i: Txcb_xkb_device_led_info_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_sa_no_action_next(i: Pxcb_xkb_sa_no_action_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_sa_no_action_end(i: Txcb_xkb_sa_no_action_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_sa_set_mods_next(i: Pxcb_xkb_sa_set_mods_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_sa_set_mods_end(i: Txcb_xkb_sa_set_mods_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_sa_latch_mods_next(i: Pxcb_xkb_sa_latch_mods_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_sa_latch_mods_end(i: Txcb_xkb_sa_latch_mods_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_sa_lock_mods_next(i: Pxcb_xkb_sa_lock_mods_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_sa_lock_mods_end(i: Txcb_xkb_sa_lock_mods_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_sa_set_group_next(i: Pxcb_xkb_sa_set_group_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_sa_set_group_end(i: Txcb_xkb_sa_set_group_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_sa_latch_group_next(i: Pxcb_xkb_sa_latch_group_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_sa_latch_group_end(i: Txcb_xkb_sa_latch_group_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_sa_lock_group_next(i: Pxcb_xkb_sa_lock_group_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_sa_lock_group_end(i: Txcb_xkb_sa_lock_group_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_sa_move_ptr_next(i: Pxcb_xkb_sa_move_ptr_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_sa_move_ptr_end(i: Txcb_xkb_sa_move_ptr_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_sa_ptr_btn_next(i: Pxcb_xkb_sa_ptr_btn_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_sa_ptr_btn_end(i: Txcb_xkb_sa_ptr_btn_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_sa_lock_ptr_btn_next(i: Pxcb_xkb_sa_lock_ptr_btn_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_sa_lock_ptr_btn_end(i: Txcb_xkb_sa_lock_ptr_btn_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_sa_set_ptr_dflt_next(i: Pxcb_xkb_sa_set_ptr_dflt_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_sa_set_ptr_dflt_end(i: Txcb_xkb_sa_set_ptr_dflt_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_sa_iso_lock_next(i: Pxcb_xkb_sa_iso_lock_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_sa_iso_lock_end(i: Txcb_xkb_sa_iso_lock_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_sa_terminate_next(i: Pxcb_xkb_sa_terminate_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_sa_terminate_end(i: Txcb_xkb_sa_terminate_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_sa_switch_screen_next(i: Pxcb_xkb_sa_switch_screen_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_sa_switch_screen_end(i: Txcb_xkb_sa_switch_screen_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_sa_set_controls_next(i: Pxcb_xkb_sa_set_controls_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_sa_set_controls_end(i: Txcb_xkb_sa_set_controls_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_sa_lock_controls_next(i: Pxcb_xkb_sa_lock_controls_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_sa_lock_controls_end(i: Txcb_xkb_sa_lock_controls_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_sa_action_message_next(i: Pxcb_xkb_sa_action_message_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_sa_action_message_end(i: Txcb_xkb_sa_action_message_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_sa_redirect_key_next(i: Pxcb_xkb_sa_redirect_key_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_sa_redirect_key_end(i: Txcb_xkb_sa_redirect_key_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_sa_device_btn_next(i: Pxcb_xkb_sa_device_btn_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_sa_device_btn_end(i: Txcb_xkb_sa_device_btn_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_sa_lock_device_btn_next(i: Pxcb_xkb_sa_lock_device_btn_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_sa_lock_device_btn_end(i: Txcb_xkb_sa_lock_device_btn_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_sa_device_valuator_next(i: Pxcb_xkb_sa_device_valuator_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_sa_device_valuator_end(i: Txcb_xkb_sa_device_valuator_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_si_action_next(i: Pxcb_xkb_si_action_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_si_action_end(i: Txcb_xkb_si_action_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_sym_interpret_next(i: Pxcb_xkb_sym_interpret_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_sym_interpret_end(i: Txcb_xkb_sym_interpret_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
procedure xcb_xkb_action_next(i: Pxcb_xkb_action_iterator_t); cdecl; external libxcb_xkb;
function xcb_xkb_action_end(i: Txcb_xkb_action_iterator_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_use_extension(c: Pxcb_connection_t; wantedMajor: Tuint16_t; wantedMinor: Tuint16_t): Txcb_xkb_use_extension_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_use_extension_unchecked(c: Pxcb_connection_t; wantedMajor: Tuint16_t; wantedMinor: Tuint16_t): Txcb_xkb_use_extension_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_use_extension_reply(c: Pxcb_connection_t; cookie: Txcb_xkb_use_extension_cookie_t; e: PPxcb_generic_error_t): Pxcb_xkb_use_extension_reply_t; cdecl; external libxcb_xkb;
function xcb_xkb_select_events_details_serialize(_buffer: Ppointer; affectWhich: Tuint16_t; clear: Tuint16_t; selectAll: Tuint16_t; _aux: Pxcb_xkb_select_events_details_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_select_events_details_unpack(_buffer: pointer; affectWhich: Tuint16_t; clear: Tuint16_t; selectAll: Tuint16_t; _aux: Pxcb_xkb_select_events_details_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_select_events_details_sizeof(_buffer: pointer; affectWhich: Tuint16_t; clear: Tuint16_t; selectAll: Tuint16_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_select_events_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xkb;
function xcb_xkb_select_events_checked(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; affectWhich: Tuint16_t; clear: Tuint16_t; selectAll: Tuint16_t;
  affectMap: Tuint16_t; map: Tuint16_t; details: pointer): Txcb_void_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_select_events(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; affectWhich: Tuint16_t; clear: Tuint16_t; selectAll: Tuint16_t;
  affectMap: Tuint16_t; map: Tuint16_t; details: pointer): Txcb_void_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_select_events_aux_checked(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; affectWhich: Tuint16_t; clear: Tuint16_t; selectAll: Tuint16_t;
  affectMap: Tuint16_t; map: Tuint16_t; details: Pxcb_xkb_select_events_details_t): Txcb_void_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_select_events_aux(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; affectWhich: Tuint16_t; clear: Tuint16_t; selectAll: Tuint16_t;
  affectMap: Tuint16_t; map: Tuint16_t; details: Pxcb_xkb_select_events_details_t): Txcb_void_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_select_events_details(R: Pxcb_xkb_select_events_request_t): pointer; cdecl; external libxcb_xkb;
function xcb_xkb_bell_checked(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; bellClass: Txcb_xkb_bell_class_spec_t; bellID: Txcb_xkb_id_spec_t; percent: Tint8_t;
  forceSound: Tuint8_t; eventOnly: Tuint8_t; pitch: Tint16_t; duration: Tint16_t; name: Txcb_atom_t;
  window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_bell(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; bellClass: Txcb_xkb_bell_class_spec_t; bellID: Txcb_xkb_id_spec_t; percent: Tint8_t;
  forceSound: Tuint8_t; eventOnly: Tuint8_t; pitch: Tint16_t; duration: Tint16_t; name: Txcb_atom_t;
  window: Txcb_window_t): Txcb_void_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_state(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t): Txcb_xkb_get_state_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_state_unchecked(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t): Txcb_xkb_get_state_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_state_reply(c: Pxcb_connection_t; cookie: Txcb_xkb_get_state_cookie_t; e: PPxcb_generic_error_t): Pxcb_xkb_get_state_reply_t; cdecl; external libxcb_xkb;
function xcb_xkb_latch_lock_state_checked(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; affectModLocks: Tuint8_t; modLocks: Tuint8_t; lockGroup: Tuint8_t;
  groupLock: Tuint8_t; affectModLatches: Tuint8_t; latchGroup: Tuint8_t; groupLatch: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_latch_lock_state(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; affectModLocks: Tuint8_t; modLocks: Tuint8_t; lockGroup: Tuint8_t;
  groupLock: Tuint8_t; affectModLatches: Tuint8_t; latchGroup: Tuint8_t; groupLatch: Tuint16_t): Txcb_void_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_controls(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t): Txcb_xkb_get_controls_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_controls_unchecked(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t): Txcb_xkb_get_controls_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_controls_reply(c: Pxcb_connection_t; cookie: Txcb_xkb_get_controls_cookie_t; e: PPxcb_generic_error_t): Pxcb_xkb_get_controls_reply_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_controls_checked(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; affectInternalRealMods: Tuint8_t; internalRealMods: Tuint8_t; affectIgnoreLockRealMods: Tuint8_t;
  ignoreLockRealMods: Tuint8_t; affectInternalVirtualMods: Tuint16_t; internalVirtualMods: Tuint16_t; affectIgnoreLockVirtualMods: Tuint16_t; ignoreLockVirtualMods: Tuint16_t;
  mouseKeysDfltBtn: Tuint8_t; groupsWrap: Tuint8_t; accessXOptions: Tuint16_t; affectEnabledControls: Tuint32_t; enabledControls: Tuint32_t;
  changeControls: Tuint32_t; repeatDelay: Tuint16_t; repeatInterval: Tuint16_t; slowKeysDelay: Tuint16_t; debounceDelay: Tuint16_t;
  mouseKeysDelay: Tuint16_t; mouseKeysInterval: Tuint16_t; mouseKeysTimeToMax: Tuint16_t; mouseKeysMaxSpeed: Tuint16_t; mouseKeysCurve: Tint16_t;
  accessXTimeout: Tuint16_t; accessXTimeoutMask: Tuint32_t; accessXTimeoutValues: Tuint32_t; accessXTimeoutOptionsMask: Tuint16_t; accessXTimeoutOptionsValues: Tuint16_t;
  perKeyRepeat: Puint8_t): Txcb_void_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_controls(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; affectInternalRealMods: Tuint8_t; internalRealMods: Tuint8_t; affectIgnoreLockRealMods: Tuint8_t;
  ignoreLockRealMods: Tuint8_t; affectInternalVirtualMods: Tuint16_t; internalVirtualMods: Tuint16_t; affectIgnoreLockVirtualMods: Tuint16_t; ignoreLockVirtualMods: Tuint16_t;
  mouseKeysDfltBtn: Tuint8_t; groupsWrap: Tuint8_t; accessXOptions: Tuint16_t; affectEnabledControls: Tuint32_t; enabledControls: Tuint32_t;
  changeControls: Tuint32_t; repeatDelay: Tuint16_t; repeatInterval: Tuint16_t; slowKeysDelay: Tuint16_t; debounceDelay: Tuint16_t;
  mouseKeysDelay: Tuint16_t; mouseKeysInterval: Tuint16_t; mouseKeysTimeToMax: Tuint16_t; mouseKeysMaxSpeed: Tuint16_t; mouseKeysCurve: Tint16_t;
  accessXTimeout: Tuint16_t; accessXTimeoutMask: Tuint32_t; accessXTimeoutValues: Tuint32_t; accessXTimeoutOptionsMask: Tuint16_t; accessXTimeoutOptionsValues: Tuint16_t;
  perKeyRepeat: Puint8_t): Txcb_void_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_map_types_rtrn_length(R: Pxcb_xkb_get_map_reply_t; S: Pxcb_xkb_get_map_map_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_map_types_rtrn_iterator(R: Pxcb_xkb_get_map_reply_t; S: Pxcb_xkb_get_map_map_t): Txcb_xkb_key_type_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_map_syms_rtrn_length(R: Pxcb_xkb_get_map_reply_t; S: Pxcb_xkb_get_map_map_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_map_syms_rtrn_iterator(R: Pxcb_xkb_get_map_reply_t; S: Pxcb_xkb_get_map_map_t): Txcb_xkb_key_sym_map_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_map_acts_rtrn_count(S: Pxcb_xkb_get_map_map_t): Puint8_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_map_acts_rtrn_count_length(R: Pxcb_xkb_get_map_reply_t; S: Pxcb_xkb_get_map_map_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_map_acts_rtrn_count_end(R: Pxcb_xkb_get_map_reply_t; S: Pxcb_xkb_get_map_map_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_map_acts_rtrn_acts(S: Pxcb_xkb_get_map_map_t): Pxcb_xkb_action_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_map_acts_rtrn_acts_length(R: Pxcb_xkb_get_map_reply_t; S: Pxcb_xkb_get_map_map_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_map_acts_rtrn_acts_iterator(R: Pxcb_xkb_get_map_reply_t; S: Pxcb_xkb_get_map_map_t): Txcb_xkb_action_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_map_behaviors_rtrn(S: Pxcb_xkb_get_map_map_t): Pxcb_xkb_set_behavior_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_map_behaviors_rtrn_length(R: Pxcb_xkb_get_map_reply_t; S: Pxcb_xkb_get_map_map_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_map_behaviors_rtrn_iterator(R: Pxcb_xkb_get_map_reply_t; S: Pxcb_xkb_get_map_map_t): Txcb_xkb_set_behavior_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_map_vmods_rtrn(S: Pxcb_xkb_get_map_map_t): Puint8_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_map_vmods_rtrn_length(R: Pxcb_xkb_get_map_reply_t; S: Pxcb_xkb_get_map_map_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_map_vmods_rtrn_end(R: Pxcb_xkb_get_map_reply_t; S: Pxcb_xkb_get_map_map_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_map_explicit_rtrn(S: Pxcb_xkb_get_map_map_t): Pxcb_xkb_set_explicit_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_map_explicit_rtrn_length(R: Pxcb_xkb_get_map_reply_t; S: Pxcb_xkb_get_map_map_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_map_explicit_rtrn_iterator(R: Pxcb_xkb_get_map_reply_t; S: Pxcb_xkb_get_map_map_t): Txcb_xkb_set_explicit_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_map_modmap_rtrn(S: Pxcb_xkb_get_map_map_t): Pxcb_xkb_key_mod_map_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_map_modmap_rtrn_length(R: Pxcb_xkb_get_map_reply_t; S: Pxcb_xkb_get_map_map_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_map_modmap_rtrn_iterator(R: Pxcb_xkb_get_map_reply_t; S: Pxcb_xkb_get_map_map_t): Txcb_xkb_key_mod_map_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_map_vmodmap_rtrn(S: Pxcb_xkb_get_map_map_t): Pxcb_xkb_key_v_mod_map_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_map_vmodmap_rtrn_length(R: Pxcb_xkb_get_map_reply_t; S: Pxcb_xkb_get_map_map_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_map_vmodmap_rtrn_iterator(R: Pxcb_xkb_get_map_reply_t; S: Pxcb_xkb_get_map_map_t): Txcb_xkb_key_v_mod_map_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_map_serialize(_buffer: Ppointer; nTypes: Tuint8_t; nKeySyms: Tuint8_t; nKeyActions: Tuint8_t; totalActions: Tuint16_t;
  totalKeyBehaviors: Tuint8_t; virtualMods: Tuint16_t; totalKeyExplicit: Tuint8_t; totalModMapKeys: Tuint8_t; totalVModMapKeys: Tuint8_t;
  present: Tuint16_t; _aux: Pxcb_xkb_get_map_map_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_map_unpack(_buffer: pointer; nTypes: Tuint8_t; nKeySyms: Tuint8_t; nKeyActions: Tuint8_t; totalActions: Tuint16_t;
  totalKeyBehaviors: Tuint8_t; virtualMods: Tuint16_t; totalKeyExplicit: Tuint8_t; totalModMapKeys: Tuint8_t; totalVModMapKeys: Tuint8_t;
  present: Tuint16_t; _aux: Pxcb_xkb_get_map_map_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_map_sizeof(_buffer: pointer; nTypes: Tuint8_t; nKeySyms: Tuint8_t; nKeyActions: Tuint8_t; totalActions: Tuint16_t;
  totalKeyBehaviors: Tuint8_t; virtualMods: Tuint16_t; totalKeyExplicit: Tuint8_t; totalModMapKeys: Tuint8_t; totalVModMapKeys: Tuint8_t;
  present: Tuint16_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_map(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; full: Tuint16_t; partial: Tuint16_t; firstType: Tuint8_t;
  nTypes: Tuint8_t; firstKeySym: Txcb_keycode_t; nKeySyms: Tuint8_t; firstKeyAction: Txcb_keycode_t; nKeyActions: Tuint8_t;
  firstKeyBehavior: Txcb_keycode_t; nKeyBehaviors: Tuint8_t; virtualMods: Tuint16_t; firstKeyExplicit: Txcb_keycode_t; nKeyExplicit: Tuint8_t;
  firstModMapKey: Txcb_keycode_t; nModMapKeys: Tuint8_t; firstVModMapKey: Txcb_keycode_t; nVModMapKeys: Tuint8_t): Txcb_xkb_get_map_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_unchecked(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; full: Tuint16_t; partial: Tuint16_t; firstType: Tuint8_t;
  nTypes: Tuint8_t; firstKeySym: Txcb_keycode_t; nKeySyms: Tuint8_t; firstKeyAction: Txcb_keycode_t; nKeyActions: Tuint8_t;
  firstKeyBehavior: Txcb_keycode_t; nKeyBehaviors: Tuint8_t; virtualMods: Tuint16_t; firstKeyExplicit: Txcb_keycode_t; nKeyExplicit: Tuint8_t;
  firstModMapKey: Txcb_keycode_t; nModMapKeys: Tuint8_t; firstVModMapKey: Txcb_keycode_t; nVModMapKeys: Tuint8_t): Txcb_xkb_get_map_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_map(R: Pxcb_xkb_get_map_reply_t): pointer; cdecl; external libxcb_xkb;
function xcb_xkb_get_map_reply(c: Pxcb_connection_t; cookie: Txcb_xkb_get_map_cookie_t; e: PPxcb_generic_error_t): Pxcb_xkb_get_map_reply_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_values_types_length(R: Pxcb_xkb_set_map_request_t; S: Pxcb_xkb_set_map_values_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_values_types_iterator(R: Pxcb_xkb_set_map_request_t; S: Pxcb_xkb_set_map_values_t): Txcb_xkb_set_key_type_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_values_syms_length(R: Pxcb_xkb_set_map_request_t; S: Pxcb_xkb_set_map_values_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_values_syms_iterator(R: Pxcb_xkb_set_map_request_t; S: Pxcb_xkb_set_map_values_t): Txcb_xkb_key_sym_map_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_values_actions_count(S: Pxcb_xkb_set_map_values_t): Puint8_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_values_actions_count_length(R: Pxcb_xkb_set_map_request_t; S: Pxcb_xkb_set_map_values_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_values_actions_count_end(R: Pxcb_xkb_set_map_request_t; S: Pxcb_xkb_set_map_values_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_values_actions(S: Pxcb_xkb_set_map_values_t): Pxcb_xkb_action_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_values_actions_length(R: Pxcb_xkb_set_map_request_t; S: Pxcb_xkb_set_map_values_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_values_actions_iterator(R: Pxcb_xkb_set_map_request_t; S: Pxcb_xkb_set_map_values_t): Txcb_xkb_action_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_values_behaviors(S: Pxcb_xkb_set_map_values_t): Pxcb_xkb_set_behavior_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_values_behaviors_length(R: Pxcb_xkb_set_map_request_t; S: Pxcb_xkb_set_map_values_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_values_behaviors_iterator(R: Pxcb_xkb_set_map_request_t; S: Pxcb_xkb_set_map_values_t): Txcb_xkb_set_behavior_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_values_vmods(S: Pxcb_xkb_set_map_values_t): Puint8_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_values_vmods_length(R: Pxcb_xkb_set_map_request_t; S: Pxcb_xkb_set_map_values_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_values_vmods_end(R: Pxcb_xkb_set_map_request_t; S: Pxcb_xkb_set_map_values_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_values_explicit(S: Pxcb_xkb_set_map_values_t): Pxcb_xkb_set_explicit_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_values_explicit_length(R: Pxcb_xkb_set_map_request_t; S: Pxcb_xkb_set_map_values_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_values_explicit_iterator(R: Pxcb_xkb_set_map_request_t; S: Pxcb_xkb_set_map_values_t): Txcb_xkb_set_explicit_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_values_modmap(S: Pxcb_xkb_set_map_values_t): Pxcb_xkb_key_mod_map_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_values_modmap_length(R: Pxcb_xkb_set_map_request_t; S: Pxcb_xkb_set_map_values_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_values_modmap_iterator(R: Pxcb_xkb_set_map_request_t; S: Pxcb_xkb_set_map_values_t): Txcb_xkb_key_mod_map_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_values_vmodmap(S: Pxcb_xkb_set_map_values_t): Pxcb_xkb_key_v_mod_map_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_values_vmodmap_length(R: Pxcb_xkb_set_map_request_t; S: Pxcb_xkb_set_map_values_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_values_vmodmap_iterator(R: Pxcb_xkb_set_map_request_t; S: Pxcb_xkb_set_map_values_t): Txcb_xkb_key_v_mod_map_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_values_serialize(_buffer: Ppointer; nTypes: Tuint8_t; nKeySyms: Tuint8_t; nKeyActions: Tuint8_t; totalActions: Tuint16_t;
  totalKeyBehaviors: Tuint8_t; virtualMods: Tuint16_t; totalKeyExplicit: Tuint8_t; totalModMapKeys: Tuint8_t; totalVModMapKeys: Tuint8_t;
  present: Tuint16_t; _aux: Pxcb_xkb_set_map_values_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_values_unpack(_buffer: pointer; nTypes: Tuint8_t; nKeySyms: Tuint8_t; nKeyActions: Tuint8_t; totalActions: Tuint16_t;
  totalKeyBehaviors: Tuint8_t; virtualMods: Tuint16_t; totalKeyExplicit: Tuint8_t; totalModMapKeys: Tuint8_t; totalVModMapKeys: Tuint8_t;
  present: Tuint16_t; _aux: Pxcb_xkb_set_map_values_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_values_sizeof(_buffer: pointer; nTypes: Tuint8_t; nKeySyms: Tuint8_t; nKeyActions: Tuint8_t; totalActions: Tuint16_t;
  totalKeyBehaviors: Tuint8_t; virtualMods: Tuint16_t; totalKeyExplicit: Tuint8_t; totalModMapKeys: Tuint8_t; totalVModMapKeys: Tuint8_t;
  present: Tuint16_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_checked(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; present: Tuint16_t; flags: Tuint16_t; minKeyCode: Txcb_keycode_t;
  maxKeyCode: Txcb_keycode_t; firstType: Tuint8_t; nTypes: Tuint8_t; firstKeySym: Txcb_keycode_t; nKeySyms: Tuint8_t;
  totalSyms: Tuint16_t; firstKeyAction: Txcb_keycode_t; nKeyActions: Tuint8_t; totalActions: Tuint16_t; firstKeyBehavior: Txcb_keycode_t;
  nKeyBehaviors: Tuint8_t; totalKeyBehaviors: Tuint8_t; firstKeyExplicit: Txcb_keycode_t; nKeyExplicit: Tuint8_t; totalKeyExplicit: Tuint8_t;
  firstModMapKey: Txcb_keycode_t; nModMapKeys: Tuint8_t; totalModMapKeys: Tuint8_t; firstVModMapKey: Txcb_keycode_t; nVModMapKeys: Tuint8_t;
  totalVModMapKeys: Tuint8_t; virtualMods: Tuint16_t; values: pointer): Txcb_void_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_map(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; present: Tuint16_t; flags: Tuint16_t; minKeyCode: Txcb_keycode_t;
  maxKeyCode: Txcb_keycode_t; firstType: Tuint8_t; nTypes: Tuint8_t; firstKeySym: Txcb_keycode_t; nKeySyms: Tuint8_t;
  totalSyms: Tuint16_t; firstKeyAction: Txcb_keycode_t; nKeyActions: Tuint8_t; totalActions: Tuint16_t; firstKeyBehavior: Txcb_keycode_t;
  nKeyBehaviors: Tuint8_t; totalKeyBehaviors: Tuint8_t; firstKeyExplicit: Txcb_keycode_t; nKeyExplicit: Tuint8_t; totalKeyExplicit: Tuint8_t;
  firstModMapKey: Txcb_keycode_t; nModMapKeys: Tuint8_t; totalModMapKeys: Tuint8_t; firstVModMapKey: Txcb_keycode_t; nVModMapKeys: Tuint8_t;
  totalVModMapKeys: Tuint8_t; virtualMods: Tuint16_t; values: pointer): Txcb_void_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_aux_checked(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; present: Tuint16_t; flags: Tuint16_t; minKeyCode: Txcb_keycode_t;
  maxKeyCode: Txcb_keycode_t; firstType: Tuint8_t; nTypes: Tuint8_t; firstKeySym: Txcb_keycode_t; nKeySyms: Tuint8_t;
  totalSyms: Tuint16_t; firstKeyAction: Txcb_keycode_t; nKeyActions: Tuint8_t; totalActions: Tuint16_t; firstKeyBehavior: Txcb_keycode_t;
  nKeyBehaviors: Tuint8_t; totalKeyBehaviors: Tuint8_t; firstKeyExplicit: Txcb_keycode_t; nKeyExplicit: Tuint8_t; totalKeyExplicit: Tuint8_t;
  firstModMapKey: Txcb_keycode_t; nModMapKeys: Tuint8_t; totalModMapKeys: Tuint8_t; firstVModMapKey: Txcb_keycode_t; nVModMapKeys: Tuint8_t;
  totalVModMapKeys: Tuint8_t; virtualMods: Tuint16_t; values: Pxcb_xkb_set_map_values_t): Txcb_void_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_aux(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; present: Tuint16_t; flags: Tuint16_t; minKeyCode: Txcb_keycode_t;
  maxKeyCode: Txcb_keycode_t; firstType: Tuint8_t; nTypes: Tuint8_t; firstKeySym: Txcb_keycode_t; nKeySyms: Tuint8_t;
  totalSyms: Tuint16_t; firstKeyAction: Txcb_keycode_t; nKeyActions: Tuint8_t; totalActions: Tuint16_t; firstKeyBehavior: Txcb_keycode_t;
  nKeyBehaviors: Tuint8_t; totalKeyBehaviors: Tuint8_t; firstKeyExplicit: Txcb_keycode_t; nKeyExplicit: Tuint8_t; totalKeyExplicit: Tuint8_t;
  firstModMapKey: Txcb_keycode_t; nModMapKeys: Tuint8_t; totalModMapKeys: Tuint8_t; firstVModMapKey: Txcb_keycode_t; nVModMapKeys: Tuint8_t;
  totalVModMapKeys: Tuint8_t; virtualMods: Tuint16_t; values: Pxcb_xkb_set_map_values_t): Txcb_void_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_map_values(R: Pxcb_xkb_set_map_request_t): pointer; cdecl; external libxcb_xkb;
function xcb_xkb_get_compat_map_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_compat_map(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; groups: Tuint8_t; getAllSI: Tuint8_t; firstSI: Tuint16_t;
  nSI: Tuint16_t): Txcb_xkb_get_compat_map_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_compat_map_unchecked(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; groups: Tuint8_t; getAllSI: Tuint8_t; firstSI: Tuint16_t;
  nSI: Tuint16_t): Txcb_xkb_get_compat_map_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_compat_map_si_rtrn(R: Pxcb_xkb_get_compat_map_reply_t): Pxcb_xkb_sym_interpret_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_compat_map_si_rtrn_length(R: Pxcb_xkb_get_compat_map_reply_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_compat_map_si_rtrn_iterator(R: Pxcb_xkb_get_compat_map_reply_t): Txcb_xkb_sym_interpret_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_compat_map_group_rtrn(R: Pxcb_xkb_get_compat_map_reply_t): Pxcb_xkb_mod_def_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_compat_map_group_rtrn_length(R: Pxcb_xkb_get_compat_map_reply_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_compat_map_group_rtrn_iterator(R: Pxcb_xkb_get_compat_map_reply_t): Txcb_xkb_mod_def_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_compat_map_reply(c: Pxcb_connection_t; cookie: Txcb_xkb_get_compat_map_cookie_t; e: PPxcb_generic_error_t): Pxcb_xkb_get_compat_map_reply_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_compat_map_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_compat_map_checked(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; recomputeActions: Tuint8_t; truncateSI: Tuint8_t; groups: Tuint8_t;
  firstSI: Tuint16_t; nSI: Tuint16_t; si: Pxcb_xkb_sym_interpret_t; groupMaps: Pxcb_xkb_mod_def_t): Txcb_void_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_compat_map(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; recomputeActions: Tuint8_t; truncateSI: Tuint8_t; groups: Tuint8_t;
  firstSI: Tuint16_t; nSI: Tuint16_t; si: Pxcb_xkb_sym_interpret_t; groupMaps: Pxcb_xkb_mod_def_t): Txcb_void_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_compat_map_si(R: Pxcb_xkb_set_compat_map_request_t): Pxcb_xkb_sym_interpret_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_compat_map_si_length(R: Pxcb_xkb_set_compat_map_request_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_compat_map_si_iterator(R: Pxcb_xkb_set_compat_map_request_t): Txcb_xkb_sym_interpret_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_compat_map_group_maps(R: Pxcb_xkb_set_compat_map_request_t): Pxcb_xkb_mod_def_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_compat_map_group_maps_length(R: Pxcb_xkb_set_compat_map_request_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_compat_map_group_maps_iterator(R: Pxcb_xkb_set_compat_map_request_t): Txcb_xkb_mod_def_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_indicator_state(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t): Txcb_xkb_get_indicator_state_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_indicator_state_unchecked(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t): Txcb_xkb_get_indicator_state_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_indicator_state_reply(c: Pxcb_connection_t; cookie: Txcb_xkb_get_indicator_state_cookie_t; e: PPxcb_generic_error_t): Pxcb_xkb_get_indicator_state_reply_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_indicator_map_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_indicator_map(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; which: Tuint32_t): Txcb_xkb_get_indicator_map_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_indicator_map_unchecked(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; which: Tuint32_t): Txcb_xkb_get_indicator_map_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_indicator_map_maps(R: Pxcb_xkb_get_indicator_map_reply_t): Pxcb_xkb_indicator_map_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_indicator_map_maps_length(R: Pxcb_xkb_get_indicator_map_reply_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_indicator_map_maps_iterator(R: Pxcb_xkb_get_indicator_map_reply_t): Txcb_xkb_indicator_map_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_indicator_map_reply(c: Pxcb_connection_t; cookie: Txcb_xkb_get_indicator_map_cookie_t; e: PPxcb_generic_error_t): Pxcb_xkb_get_indicator_map_reply_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_indicator_map_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_indicator_map_checked(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; which: Tuint32_t; maps: Pxcb_xkb_indicator_map_t): Txcb_void_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_indicator_map(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; which: Tuint32_t; maps: Pxcb_xkb_indicator_map_t): Txcb_void_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_indicator_map_maps(R: Pxcb_xkb_set_indicator_map_request_t): Pxcb_xkb_indicator_map_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_indicator_map_maps_length(R: Pxcb_xkb_set_indicator_map_request_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_indicator_map_maps_iterator(R: Pxcb_xkb_set_indicator_map_request_t): Txcb_xkb_indicator_map_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_named_indicator(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; ledClass: Txcb_xkb_led_class_spec_t; ledID: Txcb_xkb_id_spec_t; indicator: Txcb_atom_t): Txcb_xkb_get_named_indicator_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_named_indicator_unchecked(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; ledClass: Txcb_xkb_led_class_spec_t; ledID: Txcb_xkb_id_spec_t; indicator: Txcb_atom_t): Txcb_xkb_get_named_indicator_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_named_indicator_reply(c: Pxcb_connection_t; cookie: Txcb_xkb_get_named_indicator_cookie_t; e: PPxcb_generic_error_t): Pxcb_xkb_get_named_indicator_reply_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_named_indicator_checked(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; ledClass: Txcb_xkb_led_class_spec_t; ledID: Txcb_xkb_id_spec_t; indicator: Txcb_atom_t;
  setState: Tuint8_t; on: Tuint8_t; setMap: Tuint8_t; createMap: Tuint8_t; map_flags: Tuint8_t;
  map_whichGroups: Tuint8_t; map_groups: Tuint8_t; map_whichMods: Tuint8_t; map_realMods: Tuint8_t; map_vmods: Tuint16_t;
  map_ctrls: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_named_indicator(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; ledClass: Txcb_xkb_led_class_spec_t; ledID: Txcb_xkb_id_spec_t; indicator: Txcb_atom_t;
  setState: Tuint8_t; on: Tuint8_t; setMap: Tuint8_t; createMap: Tuint8_t; map_flags: Tuint8_t;
  map_whichGroups: Tuint8_t; map_groups: Tuint8_t; map_whichMods: Tuint8_t; map_realMods: Tuint8_t; map_vmods: Tuint16_t;
  map_ctrls: Tuint32_t): Txcb_void_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_value_list_type_names(S: Pxcb_xkb_get_names_value_list_t): Pxcb_atom_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_value_list_type_names_length(R: Pxcb_xkb_get_names_reply_t; S: Pxcb_xkb_get_names_value_list_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_value_list_type_names_end(R: Pxcb_xkb_get_names_reply_t; S: Pxcb_xkb_get_names_value_list_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_value_list_n_levels_per_type(S: Pxcb_xkb_get_names_value_list_t): Puint8_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_value_list_n_levels_per_type_length(R: Pxcb_xkb_get_names_reply_t; S: Pxcb_xkb_get_names_value_list_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_value_list_n_levels_per_type_end(R: Pxcb_xkb_get_names_reply_t; S: Pxcb_xkb_get_names_value_list_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_value_list_kt_level_names(S: Pxcb_xkb_get_names_value_list_t): Pxcb_atom_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_value_list_kt_level_names_length(R: Pxcb_xkb_get_names_reply_t; S: Pxcb_xkb_get_names_value_list_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_value_list_kt_level_names_end(R: Pxcb_xkb_get_names_reply_t; S: Pxcb_xkb_get_names_value_list_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_value_list_indicator_names(S: Pxcb_xkb_get_names_value_list_t): Pxcb_atom_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_value_list_indicator_names_length(R: Pxcb_xkb_get_names_reply_t; S: Pxcb_xkb_get_names_value_list_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_value_list_indicator_names_end(R: Pxcb_xkb_get_names_reply_t; S: Pxcb_xkb_get_names_value_list_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_value_list_virtual_mod_names(S: Pxcb_xkb_get_names_value_list_t): Pxcb_atom_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_value_list_virtual_mod_names_length(R: Pxcb_xkb_get_names_reply_t; S: Pxcb_xkb_get_names_value_list_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_value_list_virtual_mod_names_end(R: Pxcb_xkb_get_names_reply_t; S: Pxcb_xkb_get_names_value_list_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_value_list_groups(S: Pxcb_xkb_get_names_value_list_t): Pxcb_atom_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_value_list_groups_length(R: Pxcb_xkb_get_names_reply_t; S: Pxcb_xkb_get_names_value_list_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_value_list_groups_end(R: Pxcb_xkb_get_names_reply_t; S: Pxcb_xkb_get_names_value_list_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_value_list_key_names(S: Pxcb_xkb_get_names_value_list_t): Pxcb_xkb_key_name_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_value_list_key_names_length(R: Pxcb_xkb_get_names_reply_t; S: Pxcb_xkb_get_names_value_list_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_value_list_key_names_iterator(R: Pxcb_xkb_get_names_reply_t; S: Pxcb_xkb_get_names_value_list_t): Txcb_xkb_key_name_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_value_list_key_aliases(S: Pxcb_xkb_get_names_value_list_t): Pxcb_xkb_key_alias_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_value_list_key_aliases_length(R: Pxcb_xkb_get_names_reply_t; S: Pxcb_xkb_get_names_value_list_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_value_list_key_aliases_iterator(R: Pxcb_xkb_get_names_reply_t; S: Pxcb_xkb_get_names_value_list_t): Txcb_xkb_key_alias_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_value_list_radio_group_names(S: Pxcb_xkb_get_names_value_list_t): Pxcb_atom_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_value_list_radio_group_names_length(R: Pxcb_xkb_get_names_reply_t; S: Pxcb_xkb_get_names_value_list_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_value_list_radio_group_names_end(R: Pxcb_xkb_get_names_reply_t; S: Pxcb_xkb_get_names_value_list_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_value_list_serialize(_buffer: Ppointer; nTypes: Tuint8_t; indicators: Tuint32_t; virtualMods: Tuint16_t; groupNames: Tuint8_t;
  nKeys: Tuint8_t; nKeyAliases: Tuint8_t; nRadioGroups: Tuint8_t; which: Tuint32_t; _aux: Pxcb_xkb_get_names_value_list_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_value_list_unpack(_buffer: pointer; nTypes: Tuint8_t; indicators: Tuint32_t; virtualMods: Tuint16_t; groupNames: Tuint8_t;
  nKeys: Tuint8_t; nKeyAliases: Tuint8_t; nRadioGroups: Tuint8_t; which: Tuint32_t; _aux: Pxcb_xkb_get_names_value_list_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_value_list_sizeof(_buffer: pointer; nTypes: Tuint8_t; indicators: Tuint32_t; virtualMods: Tuint16_t; groupNames: Tuint8_t;
  nKeys: Tuint8_t; nKeyAliases: Tuint8_t; nRadioGroups: Tuint8_t; which: Tuint32_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_names(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; which: Tuint32_t): Txcb_xkb_get_names_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_unchecked(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; which: Tuint32_t): Txcb_xkb_get_names_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_value_list(R: Pxcb_xkb_get_names_reply_t): pointer; cdecl; external libxcb_xkb;
function xcb_xkb_get_names_reply(c: Pxcb_connection_t; cookie: Txcb_xkb_get_names_cookie_t; e: PPxcb_generic_error_t): Pxcb_xkb_get_names_reply_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_values_type_names(S: Pxcb_xkb_set_names_values_t): Pxcb_atom_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_values_type_names_length(R: Pxcb_xkb_set_names_request_t; S: Pxcb_xkb_set_names_values_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_values_type_names_end(R: Pxcb_xkb_set_names_request_t; S: Pxcb_xkb_set_names_values_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_values_n_levels_per_type(S: Pxcb_xkb_set_names_values_t): Puint8_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_values_n_levels_per_type_length(R: Pxcb_xkb_set_names_request_t; S: Pxcb_xkb_set_names_values_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_values_n_levels_per_type_end(R: Pxcb_xkb_set_names_request_t; S: Pxcb_xkb_set_names_values_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_values_kt_level_names(S: Pxcb_xkb_set_names_values_t): Pxcb_atom_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_values_kt_level_names_length(R: Pxcb_xkb_set_names_request_t; S: Pxcb_xkb_set_names_values_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_values_kt_level_names_end(R: Pxcb_xkb_set_names_request_t; S: Pxcb_xkb_set_names_values_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_values_indicator_names(S: Pxcb_xkb_set_names_values_t): Pxcb_atom_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_values_indicator_names_length(R: Pxcb_xkb_set_names_request_t; S: Pxcb_xkb_set_names_values_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_values_indicator_names_end(R: Pxcb_xkb_set_names_request_t; S: Pxcb_xkb_set_names_values_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_values_virtual_mod_names(S: Pxcb_xkb_set_names_values_t): Pxcb_atom_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_values_virtual_mod_names_length(R: Pxcb_xkb_set_names_request_t; S: Pxcb_xkb_set_names_values_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_values_virtual_mod_names_end(R: Pxcb_xkb_set_names_request_t; S: Pxcb_xkb_set_names_values_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_values_groups(S: Pxcb_xkb_set_names_values_t): Pxcb_atom_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_values_groups_length(R: Pxcb_xkb_set_names_request_t; S: Pxcb_xkb_set_names_values_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_values_groups_end(R: Pxcb_xkb_set_names_request_t; S: Pxcb_xkb_set_names_values_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_values_key_names(S: Pxcb_xkb_set_names_values_t): Pxcb_xkb_key_name_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_values_key_names_length(R: Pxcb_xkb_set_names_request_t; S: Pxcb_xkb_set_names_values_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_values_key_names_iterator(R: Pxcb_xkb_set_names_request_t; S: Pxcb_xkb_set_names_values_t): Txcb_xkb_key_name_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_values_key_aliases(S: Pxcb_xkb_set_names_values_t): Pxcb_xkb_key_alias_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_values_key_aliases_length(R: Pxcb_xkb_set_names_request_t; S: Pxcb_xkb_set_names_values_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_values_key_aliases_iterator(R: Pxcb_xkb_set_names_request_t; S: Pxcb_xkb_set_names_values_t): Txcb_xkb_key_alias_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_values_radio_group_names(S: Pxcb_xkb_set_names_values_t): Pxcb_atom_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_values_radio_group_names_length(R: Pxcb_xkb_set_names_request_t; S: Pxcb_xkb_set_names_values_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_values_radio_group_names_end(R: Pxcb_xkb_set_names_request_t; S: Pxcb_xkb_set_names_values_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_values_serialize(_buffer: Ppointer; nTypes: Tuint8_t; indicators: Tuint32_t; virtualMods: Tuint16_t; groupNames: Tuint8_t;
  nKeys: Tuint8_t; nKeyAliases: Tuint8_t; nRadioGroups: Tuint8_t; which: Tuint32_t; _aux: Pxcb_xkb_set_names_values_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_values_unpack(_buffer: pointer; nTypes: Tuint8_t; indicators: Tuint32_t; virtualMods: Tuint16_t; groupNames: Tuint8_t;
  nKeys: Tuint8_t; nKeyAliases: Tuint8_t; nRadioGroups: Tuint8_t; which: Tuint32_t; _aux: Pxcb_xkb_set_names_values_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_values_sizeof(_buffer: pointer; nTypes: Tuint8_t; indicators: Tuint32_t; virtualMods: Tuint16_t; groupNames: Tuint8_t;
  nKeys: Tuint8_t; nKeyAliases: Tuint8_t; nRadioGroups: Tuint8_t; which: Tuint32_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_checked(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; virtualMods: Tuint16_t; which: Tuint32_t; firstType: Tuint8_t;
  nTypes: Tuint8_t; firstKTLevelt: Tuint8_t; nKTLevels: Tuint8_t; indicators: Tuint32_t; groupNames: Tuint8_t;
  nRadioGroups: Tuint8_t; firstKey: Txcb_keycode_t; nKeys: Tuint8_t; nKeyAliases: Tuint8_t; totalKTLevelNames: Tuint16_t;
  values: pointer): Txcb_void_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_names(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; virtualMods: Tuint16_t; which: Tuint32_t; firstType: Tuint8_t;
  nTypes: Tuint8_t; firstKTLevelt: Tuint8_t; nKTLevels: Tuint8_t; indicators: Tuint32_t; groupNames: Tuint8_t;
  nRadioGroups: Tuint8_t; firstKey: Txcb_keycode_t; nKeys: Tuint8_t; nKeyAliases: Tuint8_t; totalKTLevelNames: Tuint16_t;
  values: pointer): Txcb_void_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_aux_checked(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; virtualMods: Tuint16_t; which: Tuint32_t; firstType: Tuint8_t;
  nTypes: Tuint8_t; firstKTLevelt: Tuint8_t; nKTLevels: Tuint8_t; indicators: Tuint32_t; groupNames: Tuint8_t;
  nRadioGroups: Tuint8_t; firstKey: Txcb_keycode_t; nKeys: Tuint8_t; nKeyAliases: Tuint8_t; totalKTLevelNames: Tuint16_t;
  values: Pxcb_xkb_set_names_values_t): Txcb_void_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_aux(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; virtualMods: Tuint16_t; which: Tuint32_t; firstType: Tuint8_t;
  nTypes: Tuint8_t; firstKTLevelt: Tuint8_t; nKTLevels: Tuint8_t; indicators: Tuint32_t; groupNames: Tuint8_t;
  nRadioGroups: Tuint8_t; firstKey: Txcb_keycode_t; nKeys: Tuint8_t; nKeyAliases: Tuint8_t; totalKTLevelNames: Tuint16_t;
  values: Pxcb_xkb_set_names_values_t): Txcb_void_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_names_values(R: Pxcb_xkb_set_names_request_t): pointer; cdecl; external libxcb_xkb;
function xcb_xkb_per_client_flags(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; change: Tuint32_t; value: Tuint32_t; ctrlsToChange: Tuint32_t;
  autoCtrls: Tuint32_t; autoCtrlsValues: Tuint32_t): Txcb_xkb_per_client_flags_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_per_client_flags_unchecked(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; change: Tuint32_t; value: Tuint32_t; ctrlsToChange: Tuint32_t;
  autoCtrls: Tuint32_t; autoCtrlsValues: Tuint32_t): Txcb_xkb_per_client_flags_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_per_client_flags_reply(c: Pxcb_connection_t; cookie: Txcb_xkb_per_client_flags_cookie_t; e: PPxcb_generic_error_t): Pxcb_xkb_per_client_flags_reply_t; cdecl; external libxcb_xkb;
function xcb_xkb_list_components_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xkb;
function xcb_xkb_list_components(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; maxNames: Tuint16_t): Txcb_xkb_list_components_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_list_components_unchecked(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; maxNames: Tuint16_t): Txcb_xkb_list_components_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_list_components_keymaps_length(R: Pxcb_xkb_list_components_reply_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_list_components_keymaps_iterator(R: Pxcb_xkb_list_components_reply_t): Txcb_xkb_listing_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_list_components_keycodes_length(R: Pxcb_xkb_list_components_reply_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_list_components_keycodes_iterator(R: Pxcb_xkb_list_components_reply_t): Txcb_xkb_listing_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_list_components_types_length(R: Pxcb_xkb_list_components_reply_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_list_components_types_iterator(R: Pxcb_xkb_list_components_reply_t): Txcb_xkb_listing_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_list_components_compat_maps_length(R: Pxcb_xkb_list_components_reply_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_list_components_compat_maps_iterator(R: Pxcb_xkb_list_components_reply_t): Txcb_xkb_listing_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_list_components_symbols_length(R: Pxcb_xkb_list_components_reply_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_list_components_symbols_iterator(R: Pxcb_xkb_list_components_reply_t): Txcb_xkb_listing_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_list_components_geometries_length(R: Pxcb_xkb_list_components_reply_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_list_components_geometries_iterator(R: Pxcb_xkb_list_components_reply_t): Txcb_xkb_listing_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_list_components_reply(c: Pxcb_connection_t; cookie: Txcb_xkb_list_components_cookie_t; e: PPxcb_generic_error_t): Pxcb_xkb_list_components_reply_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_types_map_types_rtrn_length(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_types_map_types_rtrn_iterator(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): Txcb_xkb_key_type_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_types_map_syms_rtrn_length(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_types_map_syms_rtrn_iterator(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): Txcb_xkb_key_sym_map_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count(S: Pxcb_xkb_get_kbd_by_name_replies_t): Puint8_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count_length(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count_end(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts(S: Pxcb_xkb_get_kbd_by_name_replies_t): Pxcb_xkb_action_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts_length(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts_iterator(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): Txcb_xkb_action_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn(S: Pxcb_xkb_get_kbd_by_name_replies_t): Pxcb_xkb_set_behavior_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn_length(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn_iterator(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): Txcb_xkb_set_behavior_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn(S: Pxcb_xkb_get_kbd_by_name_replies_t): Puint8_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn_length(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn_end(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn(S: Pxcb_xkb_get_kbd_by_name_replies_t): Pxcb_xkb_set_explicit_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn_length(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn_iterator(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): Txcb_xkb_set_explicit_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn(S: Pxcb_xkb_get_kbd_by_name_replies_t): Pxcb_xkb_key_mod_map_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn_length(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn_iterator(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): Txcb_xkb_key_mod_map_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn(S: Pxcb_xkb_get_kbd_by_name_replies_t): Pxcb_xkb_key_v_mod_map_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn_length(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn_iterator(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): Txcb_xkb_key_v_mod_map_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_types_map_serialize(_buffer: Ppointer; nTypes: Tuint8_t; nKeySyms: Tuint8_t; nKeyActions: Tuint8_t; totalActions: Tuint16_t;
  totalKeyBehaviors: Tuint8_t; virtualMods: Tuint16_t; totalKeyExplicit: Tuint8_t; totalModMapKeys: Tuint8_t; totalVModMapKeys: Tuint8_t;
  present: Tuint16_t; _aux: Pxcb_xkb_get_kbd_by_name_replies_types_map_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_types_map_unpack(_buffer: pointer; nTypes: Tuint8_t; nKeySyms: Tuint8_t; nKeyActions: Tuint8_t; totalActions: Tuint16_t;
  totalKeyBehaviors: Tuint8_t; virtualMods: Tuint16_t; totalKeyExplicit: Tuint8_t; totalModMapKeys: Tuint8_t; totalVModMapKeys: Tuint8_t;
  present: Tuint16_t; _aux: Pxcb_xkb_get_kbd_by_name_replies_types_map_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_types_map_sizeof(_buffer: pointer; nTypes: Tuint8_t; nKeySyms: Tuint8_t; nKeyActions: Tuint8_t; totalActions: Tuint16_t;
  totalKeyBehaviors: Tuint8_t; virtualMods: Tuint16_t; totalKeyExplicit: Tuint8_t; totalModMapKeys: Tuint8_t; totalVModMapKeys: Tuint8_t;
  present: Tuint16_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names(S: Pxcb_xkb_get_kbd_by_name_replies_t): Pxcb_atom_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names_length(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names_end(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type(S: Pxcb_xkb_get_kbd_by_name_replies_t): Puint8_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type_length(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type_end(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names(S: Pxcb_xkb_get_kbd_by_name_replies_t): Pxcb_atom_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names_length(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names_end(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names(S: Pxcb_xkb_get_kbd_by_name_replies_t): Pxcb_atom_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names_length(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names_end(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names(S: Pxcb_xkb_get_kbd_by_name_replies_t): Pxcb_atom_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names_length(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names_end(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups(S: Pxcb_xkb_get_kbd_by_name_replies_t): Pxcb_atom_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups_length(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups_end(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names(S: Pxcb_xkb_get_kbd_by_name_replies_t): Pxcb_xkb_key_name_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names_length(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names_iterator(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): Txcb_xkb_key_name_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases(S: Pxcb_xkb_get_kbd_by_name_replies_t): Pxcb_xkb_key_alias_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases_length(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases_iterator(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): Txcb_xkb_key_alias_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names(S: Pxcb_xkb_get_kbd_by_name_replies_t): Pxcb_atom_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names_length(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names_end(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_serialize(_buffer: Ppointer; nTypes: Tuint8_t; indicators: Tuint32_t; virtualMods: Tuint16_t; groupNames: Tuint8_t;
  nKeys: Tuint8_t; nKeyAliases: Tuint8_t; nRadioGroups: Tuint8_t; which: Tuint32_t; _aux: Pxcb_xkb_get_kbd_by_name_replies_key_names_value_list_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_unpack(_buffer: pointer; nTypes: Tuint8_t; indicators: Tuint32_t; virtualMods: Tuint16_t; groupNames: Tuint8_t;
  nKeys: Tuint8_t; nKeyAliases: Tuint8_t; nRadioGroups: Tuint8_t; which: Tuint32_t; _aux: Pxcb_xkb_get_kbd_by_name_replies_key_names_value_list_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_sizeof(_buffer: pointer; nTypes: Tuint8_t; indicators: Tuint32_t; virtualMods: Tuint16_t; groupNames: Tuint8_t;
  nKeys: Tuint8_t; nKeyAliases: Tuint8_t; nRadioGroups: Tuint8_t; which: Tuint32_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn(S: Pxcb_xkb_get_kbd_by_name_replies_t): Pxcb_xkb_sym_interpret_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn_length(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn_iterator(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): Txcb_xkb_sym_interpret_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn(S: Pxcb_xkb_get_kbd_by_name_replies_t): Pxcb_xkb_mod_def_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn_length(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn_iterator(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): Txcb_xkb_mod_def_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps(S: Pxcb_xkb_get_kbd_by_name_replies_t): Pxcb_xkb_indicator_map_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps_length(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps_iterator(R: Pxcb_xkb_get_kbd_by_name_reply_t; S: Pxcb_xkb_get_kbd_by_name_replies_t): Txcb_xkb_indicator_map_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_key_names_value_list(R: Pxcb_xkb_get_kbd_by_name_replies_t): Pxcb_xkb_get_kbd_by_name_replies_key_names_value_list_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_geometry_label_font(R: Pxcb_xkb_get_kbd_by_name_replies_t): Pxcb_xkb_counted_string_16_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_serialize(_buffer: Ppointer; reported: Tuint16_t; _aux: Pxcb_xkb_get_kbd_by_name_replies_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_unpack(_buffer: pointer; reported: Tuint16_t; _aux: Pxcb_xkb_get_kbd_by_name_replies_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies_sizeof(_buffer: pointer; reported: Tuint16_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; need: Tuint16_t; want: Tuint16_t; load: Tuint8_t): Txcb_xkb_get_kbd_by_name_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_unchecked(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; need: Tuint16_t; want: Tuint16_t; load: Tuint8_t): Txcb_xkb_get_kbd_by_name_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_replies(R: Pxcb_xkb_get_kbd_by_name_reply_t): pointer; cdecl; external libxcb_xkb;
function xcb_xkb_get_kbd_by_name_reply(c: Pxcb_connection_t; cookie: Txcb_xkb_get_kbd_by_name_cookie_t; e: PPxcb_generic_error_t): Pxcb_xkb_get_kbd_by_name_reply_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_device_info_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_device_info(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; wanted: Tuint16_t; allButtons: Tuint8_t; firstButton: Tuint8_t;
  nButtons: Tuint8_t; ledClass: Txcb_xkb_led_class_spec_t; ledID: Txcb_xkb_id_spec_t): Txcb_xkb_get_device_info_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_device_info_unchecked(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; wanted: Tuint16_t; allButtons: Tuint8_t; firstButton: Tuint8_t;
  nButtons: Tuint8_t; ledClass: Txcb_xkb_led_class_spec_t; ledID: Txcb_xkb_id_spec_t): Txcb_xkb_get_device_info_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_device_info_name(R: Pxcb_xkb_get_device_info_reply_t): Pxcb_xkb_string8_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_device_info_name_length(R: Pxcb_xkb_get_device_info_reply_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_device_info_name_end(R: Pxcb_xkb_get_device_info_reply_t): Txcb_generic_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_device_info_btn_actions(R: Pxcb_xkb_get_device_info_reply_t): Pxcb_xkb_action_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_device_info_btn_actions_length(R: Pxcb_xkb_get_device_info_reply_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_device_info_btn_actions_iterator(R: Pxcb_xkb_get_device_info_reply_t): Txcb_xkb_action_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_device_info_leds_length(R: Pxcb_xkb_get_device_info_reply_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_get_device_info_leds_iterator(R: Pxcb_xkb_get_device_info_reply_t): Txcb_xkb_device_led_info_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_get_device_info_reply(c: Pxcb_connection_t; cookie: Txcb_xkb_get_device_info_cookie_t; e: PPxcb_generic_error_t): Pxcb_xkb_get_device_info_reply_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_device_info_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_device_info_checked(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; firstBtn: Tuint8_t; nBtns: Tuint8_t; change: Tuint16_t;
  nDeviceLedFBs: Tuint16_t; btnActions: Pxcb_xkb_action_t; leds: Pxcb_xkb_device_led_info_t): Txcb_void_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_device_info(c: Pxcb_connection_t; deviceSpec: Txcb_xkb_device_spec_t; firstBtn: Tuint8_t; nBtns: Tuint8_t; change: Tuint16_t;
  nDeviceLedFBs: Tuint16_t; btnActions: Pxcb_xkb_action_t; leds: Pxcb_xkb_device_led_info_t): Txcb_void_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_device_info_btn_actions(R: Pxcb_xkb_set_device_info_request_t): Pxcb_xkb_action_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_device_info_btn_actions_length(R: Pxcb_xkb_set_device_info_request_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_device_info_btn_actions_iterator(R: Pxcb_xkb_set_device_info_request_t): Txcb_xkb_action_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_device_info_leds_length(R: Pxcb_xkb_set_device_info_request_t): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_device_info_leds_iterator(R: Pxcb_xkb_set_device_info_request_t): Txcb_xkb_device_led_info_iterator_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_debugging_flags_sizeof(_buffer: pointer): longint; cdecl; external libxcb_xkb;
function xcb_xkb_set_debugging_flags(c: Pxcb_connection_t; msgLength: Tuint16_t; affectFlags: Tuint32_t; flags: Tuint32_t; affectCtrls: Tuint32_t;
  ctrls: Tuint32_t; message: Pxcb_xkb_string8_t): Txcb_xkb_set_debugging_flags_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_debugging_flags_unchecked(c: Pxcb_connection_t; msgLength: Tuint16_t; affectFlags: Tuint32_t; flags: Tuint32_t; affectCtrls: Tuint32_t;
  ctrls: Tuint32_t; message: Pxcb_xkb_string8_t): Txcb_xkb_set_debugging_flags_cookie_t; cdecl; external libxcb_xkb;
function xcb_xkb_set_debugging_flags_reply(c: Pxcb_connection_t; cookie: Txcb_xkb_set_debugging_flags_cookie_t; e: PPxcb_generic_error_t): Pxcb_xkb_set_debugging_flags_reply_t; cdecl; external libxcb_xkb;

// === Konventiert am: 11-10-25 15:31:34 ===


implementation



end.
