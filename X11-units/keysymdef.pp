
unit keysymdef;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/keysymdef.h
  The following command line parameters were used:
    /usr/include/X11/keysymdef.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/keysymdef.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}






  const
    XK_VoidSymbol = $ffffff;    
{$ifdef XK_MISCELLANY}


    XK_BackSpace = $ff08;    
    XK_Tab = $ff09;    

    XK_Linefeed = $ff0a;    
    XK_Clear = $ff0b;    

    XK_Return = $ff0d;    

    XK_Pause = $ff13;    
    XK_Scroll_Lock = $ff14;    
    XK_Sys_Req = $ff15;    
    XK_Escape = $ff1b;    

    XK_Delete = $ffff;    


    XK_Multi_key = $ff20;    
    XK_Codeinput = $ff37;    
    XK_SingleCandidate = $ff3c;    
    XK_MultipleCandidate = $ff3d;    
    XK_PreviousCandidate = $ff3e;    


    XK_Kanji = $ff21;    

    XK_Muhenkan = $ff22;    

    XK_Henkan_Mode = $ff23;    

    XK_Henkan = $ff23;    

    XK_Romaji = $ff24;    

    XK_Hiragana = $ff25;    

    XK_Katakana = $ff26;    

    XK_Hiragana_Katakana = $ff27;    

    XK_Zenkaku = $ff28;    

    XK_Hankaku = $ff29;    

    XK_Zenkaku_Hankaku = $ff2a;    

    XK_Touroku = $ff2b;    

    XK_Massyo = $ff2c;    

    XK_Kana_Lock = $ff2d;    

    XK_Kana_Shift = $ff2e;    

    XK_Eisu_Shift = $ff2f;    

    XK_Eisu_toggle = $ff30;    

    XK_Kanji_Bangou = $ff37;    

    XK_Zen_Koho = $ff3d;    

    XK_Mae_Koho = $ff3e;    


    XK_Home = $ff50;    

    XK_Left = $ff51;    

    XK_Up = $ff52;    

    XK_Right = $ff53;    

    XK_Down = $ff54;    

    XK_Prior = $ff55;    
    XK_Page_Up = $ff55;    

    XK_Next = $ff56;    
    XK_Page_Down = $ff56;    

    XK_End = $ff57;    

    XK_Begin = $ff58;    


    XK_Select = $ff60;    
    XK_Print = $ff61;    

    XK_Execute = $ff62;    

    XK_Insert = $ff63;    
    XK_Undo = $ff65;    

    XK_Redo = $ff66;    
    XK_Menu = $ff67;    

    XK_Find = $ff68;    

    XK_Cancel = $ff69;    

    XK_Help = $ff6a;    
    XK_Break = $ff6b;    

    XK_Mode_switch = $ff7e;    

    XK_script_switch = $ff7e;    
    XK_Num_Lock = $ff7f;    


    XK_KP_Space = $ff80;    
    XK_KP_Tab = $ff89;    

    XK_KP_Enter = $ff8d;    

    XK_KP_F1 = $ff91;    
    XK_KP_F2 = $ff92;    
    XK_KP_F3 = $ff93;    
    XK_KP_F4 = $ff94;    
    XK_KP_Home = $ff95;    
    XK_KP_Left = $ff96;    
    XK_KP_Up = $ff97;    
    XK_KP_Right = $ff98;    
    XK_KP_Down = $ff99;    
    XK_KP_Prior = $ff9a;    
    XK_KP_Page_Up = $ff9a;    
    XK_KP_Next = $ff9b;    
    XK_KP_Page_Down = $ff9b;    
    XK_KP_End = $ff9c;    
    XK_KP_Begin = $ff9d;    
    XK_KP_Insert = $ff9e;    
    XK_KP_Delete = $ff9f;    

    XK_KP_Equal = $ffbd;    
    XK_KP_Multiply = $ffaa;    
    XK_KP_Add = $ffab;    

    XK_KP_Separator = $ffac;    
    XK_KP_Subtract = $ffad;    
    XK_KP_Decimal = $ffae;    
    XK_KP_Divide = $ffaf;    
    XK_KP_0 = $ffb0;    
    XK_KP_1 = $ffb1;    
    XK_KP_2 = $ffb2;    
    XK_KP_3 = $ffb3;    
    XK_KP_4 = $ffb4;    
    XK_KP_5 = $ffb5;    
    XK_KP_6 = $ffb6;    
    XK_KP_7 = $ffb7;    
    XK_KP_8 = $ffb8;    
    XK_KP_9 = $ffb9;    

    XK_F1 = $ffbe;    
    XK_F2 = $ffbf;    
    XK_F3 = $ffc0;    
    XK_F4 = $ffc1;    
    XK_F5 = $ffc2;    
    XK_F6 = $ffc3;    
    XK_F7 = $ffc4;    
    XK_F8 = $ffc5;    
    XK_F9 = $ffc6;    
    XK_F10 = $ffc7;    
    XK_F11 = $ffc8;    
    XK_L1 = $ffc8;    
    XK_F12 = $ffc9;    
    XK_L2 = $ffc9;    
    XK_F13 = $ffca;    
    XK_L3 = $ffca;    
    XK_F14 = $ffcb;    
    XK_L4 = $ffcb;    
    XK_F15 = $ffcc;    
    XK_L5 = $ffcc;    
    XK_F16 = $ffcd;    
    XK_L6 = $ffcd;    
    XK_F17 = $ffce;    
    XK_L7 = $ffce;    
    XK_F18 = $ffcf;    
    XK_L8 = $ffcf;    
    XK_F19 = $ffd0;    
    XK_L9 = $ffd0;    
    XK_F20 = $ffd1;    
    XK_L10 = $ffd1;    
    XK_F21 = $ffd2;    
    XK_R1 = $ffd2;    
    XK_F22 = $ffd3;    
    XK_R2 = $ffd3;    
    XK_F23 = $ffd4;    
    XK_R3 = $ffd4;    
    XK_F24 = $ffd5;    
    XK_R4 = $ffd5;    
    XK_F25 = $ffd6;    
    XK_R5 = $ffd6;    
    XK_F26 = $ffd7;    
    XK_R6 = $ffd7;    
    XK_F27 = $ffd8;    
    XK_R7 = $ffd8;    
    XK_F28 = $ffd9;    
    XK_R8 = $ffd9;    
    XK_F29 = $ffda;    
    XK_R9 = $ffda;    
    XK_F30 = $ffdb;    
    XK_R10 = $ffdb;    
    XK_F31 = $ffdc;    
    XK_R11 = $ffdc;    
    XK_F32 = $ffdd;    
    XK_R12 = $ffdd;    
    XK_F33 = $ffde;    
    XK_R13 = $ffde;    
    XK_F34 = $ffdf;    
    XK_R14 = $ffdf;    
    XK_F35 = $ffe0;    
    XK_R15 = $ffe0;    


    XK_Shift_L = $ffe1;    

    XK_Shift_R = $ffe2;    

    XK_Control_L = $ffe3;    

    XK_Control_R = $ffe4;    

    XK_Caps_Lock = $ffe5;    

    XK_Shift_Lock = $ffe6;    

    XK_Meta_L = $ffe7;    

    XK_Meta_R = $ffe8;    

    XK_Alt_L = $ffe9;    

    XK_Alt_R = $ffea;    

    XK_Super_L = $ffeb;    

    XK_Super_R = $ffec;    

    XK_Hyper_L = $ffed;    

    XK_Hyper_R = $ffee;    
{$endif}


{$ifdef XK_XKB_KEYS}

  const
    XK_ISO_Lock = $fe01;    
    XK_ISO_Level2_Latch = $fe02;    
    XK_ISO_Level3_Shift = $fe03;    
    XK_ISO_Level3_Latch = $fe04;    
    XK_ISO_Level3_Lock = $fe05;    
    XK_ISO_Level5_Shift = $fe11;    
    XK_ISO_Level5_Latch = $fe12;    
    XK_ISO_Level5_Lock = $fe13;    

    XK_ISO_Group_Shift = $ff7e;    
    XK_ISO_Group_Latch = $fe06;    
    XK_ISO_Group_Lock = $fe07;    
    XK_ISO_Next_Group = $fe08;    
    XK_ISO_Next_Group_Lock = $fe09;    
    XK_ISO_Prev_Group = $fe0a;    
    XK_ISO_Prev_Group_Lock = $fe0b;    
    XK_ISO_First_Group = $fe0c;    
    XK_ISO_First_Group_Lock = $fe0d;    
    XK_ISO_Last_Group = $fe0e;    
    XK_ISO_Last_Group_Lock = $fe0f;    
    XK_ISO_Left_Tab = $fe20;    
    XK_ISO_Move_Line_Up = $fe21;    
    XK_ISO_Move_Line_Down = $fe22;    
    XK_ISO_Partial_Line_Up = $fe23;    
    XK_ISO_Partial_Line_Down = $fe24;    
    XK_ISO_Partial_Space_Left = $fe25;    
    XK_ISO_Partial_Space_Right = $fe26;    
    XK_ISO_Set_Margin_Left = $fe27;    
    XK_ISO_Set_Margin_Right = $fe28;    
    XK_ISO_Release_Margin_Left = $fe29;    
    XK_ISO_Release_Margin_Right = $fe2a;    
    XK_ISO_Release_Both_Margins = $fe2b;    
    XK_ISO_Fast_Cursor_Left = $fe2c;    
    XK_ISO_Fast_Cursor_Right = $fe2d;    
    XK_ISO_Fast_Cursor_Up = $fe2e;    
    XK_ISO_Fast_Cursor_Down = $fe2f;    
    XK_ISO_Continuous_Underline = $fe30;    
    XK_ISO_Discontinuous_Underline = $fe31;    
    XK_ISO_Emphasize = $fe32;    
    XK_ISO_Center_Object = $fe33;    
    XK_ISO_Enter = $fe34;    
    XK_dead_grave = $fe50;    
    XK_dead_acute = $fe51;    
    XK_dead_circumflex = $fe52;    
    XK_dead_tilde = $fe53;    

    XK_dead_perispomeni = $fe53;    
    XK_dead_macron = $fe54;    
    XK_dead_breve = $fe55;    
    XK_dead_abovedot = $fe56;    
    XK_dead_diaeresis = $fe57;    
    XK_dead_abovering = $fe58;    
    XK_dead_doubleacute = $fe59;    
    XK_dead_caron = $fe5a;    
    XK_dead_cedilla = $fe5b;    
    XK_dead_ogonek = $fe5c;    
    XK_dead_iota = $fe5d;    
    XK_dead_voiced_sound = $fe5e;    
    XK_dead_semivoiced_sound = $fe5f;    
    XK_dead_belowdot = $fe60;    
    XK_dead_hook = $fe61;    
    XK_dead_horn = $fe62;    
    XK_dead_stroke = $fe63;    
    XK_dead_abovecomma = $fe64;    

    XK_dead_psili = $fe64;    
    XK_dead_abovereversedcomma = $fe65;    

    XK_dead_dasia = $fe65;    
    XK_dead_doublegrave = $fe66;    
    XK_dead_belowring = $fe67;    
    XK_dead_belowmacron = $fe68;    
    XK_dead_belowcircumflex = $fe69;    
    XK_dead_belowtilde = $fe6a;    
    XK_dead_belowbreve = $fe6b;    
    XK_dead_belowdiaeresis = $fe6c;    
    XK_dead_invertedbreve = $fe6d;    
    XK_dead_belowcomma = $fe6e;    
    XK_dead_currency = $fe6f;    

    XK_dead_lowline = $fe90;    
    XK_dead_aboveverticalline = $fe91;    
    XK_dead_belowverticalline = $fe92;    
    XK_dead_longsolidusoverlay = $fe93;    

    XK_dead_a = $fe80;    
    XK_dead_A = $fe81;    
    XK_dead_e = $fe82;    
    XK_dead_E = $fe83;    
    XK_dead_i = $fe84;    
    XK_dead_I = $fe85;    
    XK_dead_o = $fe86;    
    XK_dead_O = $fe87;    
    XK_dead_u = $fe88;    
    XK_dead_U = $fe89;    
    XK_dead_small_schwa = $fe8a;    
    XK_dead_capital_schwa = $fe8b;    
    XK_dead_greek = $fe8c;    
    XK_First_Virtual_Screen = $fed0;    
    XK_Prev_Virtual_Screen = $fed1;    
    XK_Next_Virtual_Screen = $fed2;    
    XK_Last_Virtual_Screen = $fed4;    
    XK_Terminate_Server = $fed5;    
    XK_AccessX_Enable = $fe70;    
    XK_AccessX_Feedback_Enable = $fe71;    
    XK_RepeatKeys_Enable = $fe72;    
    XK_SlowKeys_Enable = $fe73;    
    XK_BounceKeys_Enable = $fe74;    
    XK_StickyKeys_Enable = $fe75;    
    XK_MouseKeys_Enable = $fe76;    
    XK_MouseKeys_Accel_Enable = $fe77;    
    XK_Overlay1_Enable = $fe78;    
    XK_Overlay2_Enable = $fe79;    
    XK_AudibleBell_Enable = $fe7a;    
    XK_Pointer_Left = $fee0;    
    XK_Pointer_Right = $fee1;    
    XK_Pointer_Up = $fee2;    
    XK_Pointer_Down = $fee3;    
    XK_Pointer_UpLeft = $fee4;    
    XK_Pointer_UpRight = $fee5;    
    XK_Pointer_DownLeft = $fee6;    
    XK_Pointer_DownRight = $fee7;    
    XK_Pointer_Button_Dflt = $fee8;    
    XK_Pointer_Button1 = $fee9;    
    XK_Pointer_Button2 = $feea;    
    XK_Pointer_Button3 = $feeb;    
    XK_Pointer_Button4 = $feec;    
    XK_Pointer_Button5 = $feed;    
    XK_Pointer_DblClick_Dflt = $feee;    
    XK_Pointer_DblClick1 = $feef;    
    XK_Pointer_DblClick2 = $fef0;    
    XK_Pointer_DblClick3 = $fef1;    
    XK_Pointer_DblClick4 = $fef2;    
    XK_Pointer_DblClick5 = $fef3;    
    XK_Pointer_Drag_Dflt = $fef4;    
    XK_Pointer_Drag1 = $fef5;    
    XK_Pointer_Drag2 = $fef6;    
    XK_Pointer_Drag3 = $fef7;    
    XK_Pointer_Drag4 = $fef8;    
    XK_Pointer_Drag5 = $fefd;    
    XK_Pointer_EnableKeys = $fef9;    
    XK_Pointer_Accelerate = $fefa;    
    XK_Pointer_DfltBtnNext = $fefb;    
    XK_Pointer_DfltBtnPrev = $fefc;    

    XK_ch = $fea0;    
    XK_Ch = $fea1;    
    XK_CH = $fea2;    
    XK_c_h = $fea3;    
    XK_C_h = $fea4;    
    XK_C_H = $fea5;    
{$endif}


{$ifdef XK_3270}

  const
    XK_3270_Duplicate = $fd01;    
    XK_3270_FieldMark = $fd02;    
    XK_3270_Right2 = $fd03;    
    XK_3270_Left2 = $fd04;    
    XK_3270_BackTab = $fd05;    
    XK_3270_EraseEOF = $fd06;    
    XK_3270_EraseInput = $fd07;    
    XK_3270_Reset = $fd08;    
    XK_3270_Quit = $fd09;    
    XK_3270_PA1 = $fd0a;    
    XK_3270_PA2 = $fd0b;    
    XK_3270_PA3 = $fd0c;    
    XK_3270_Test = $fd0d;    
    XK_3270_Attn = $fd0e;    
    XK_3270_CursorBlink = $fd0f;    
    XK_3270_AltCursor = $fd10;    
    XK_3270_KeyClick = $fd11;    
    XK_3270_Jump = $fd12;    
    XK_3270_Ident = $fd13;    
    XK_3270_Rule = $fd14;    
    XK_3270_Copy = $fd15;    
    XK_3270_Play = $fd16;    
    XK_3270_Setup = $fd17;    
    XK_3270_Record = $fd18;    
    XK_3270_ChangeScreen = $fd19;    
    XK_3270_DeleteWord = $fd1a;    
    XK_3270_ExSelect = $fd1b;    
    XK_3270_CursorSelect = $fd1c;    
    XK_3270_PrintScreen = $fd1d;    
    XK_3270_Enter = $fd1e;    
{$endif}


{$ifdef XK_LATIN1}


  const
    XK_space = $0020;    

    XK_exclam = $0021;    

    XK_quotedbl = $0022;    

    XK_numbersign = $0023;    

    XK_dollar = $0024;    

    XK_percent = $0025;    

    XK_ampersand = $0026;    

    XK_apostrophe = $0027;    

    XK_quoteright = $0027;    

    XK_parenleft = $0028;    

    XK_parenright = $0029;    

    XK_asterisk = $002a;    

    XK_plus = $002b;    

    XK_comma = $002c;    

    XK_minus = $002d;    

    XK_period = $002e;    

    XK_slash = $002f;    

    XK_0 = $0030;    

    XK_1 = $0031;    

    XK_2 = $0032;    

    XK_3 = $0033;    

    XK_4 = $0034;    

    XK_5 = $0035;    

    XK_6 = $0036;    

    XK_7 = $0037;    

    XK_8 = $0038;    

    XK_9 = $0039;    

    XK_colon = $003a;    

    XK_semicolon = $003b;    

    XK_less = $003c;    

    XK_equal = $003d;    

    XK_greater = $003e;    

    XK_question = $003f;    

    XK_at = $0040;    

    XK_A = $0041;    

    XK_B = $0042;    

    XK_C = $0043;    

    XK_D = $0044;    

    XK_E = $0045;    

    XK_F = $0046;    

    XK_G = $0047;    

    XK_H = $0048;    

    XK_I = $0049;    

    XK_J = $004a;    

    XK_K = $004b;    

    XK_L = $004c;    

    XK_M = $004d;    

    XK_N = $004e;    

    XK_O = $004f;    

    XK_P = $0050;    

    XK_Q = $0051;    

    XK_R = $0052;    

    XK_S = $0053;    

    XK_T = $0054;    

    XK_U = $0055;    

    XK_V = $0056;    

    XK_W = $0057;    

    XK_X = $0058;    

    XK_Y = $0059;    

    XK_Z = $005a;    

    XK_bracketleft = $005b;    

    XK_backslash = $005c;    

    XK_bracketright = $005d;    

    XK_asciicircum = $005e;    

    XK_underscore = $005f;    

    XK_grave = $0060;    

    XK_quoteleft = $0060;    

    XK_a = $0061;    

    XK_b = $0062;    

    XK_c = $0063;    

    XK_d = $0064;    

    XK_e = $0065;    

    XK_f = $0066;    

    XK_g = $0067;    

    XK_h = $0068;    

    XK_i = $0069;    

    XK_j = $006a;    

    XK_k = $006b;    

    XK_l = $006c;    

    XK_m = $006d;    

    XK_n = $006e;    

    XK_o = $006f;    

    XK_p = $0070;    

    XK_q = $0071;    

    XK_r = $0072;    

    XK_s = $0073;    

    XK_t = $0074;    

    XK_u = $0075;    

    XK_v = $0076;    

    XK_w = $0077;    

    XK_x = $0078;    

    XK_y = $0079;    

    XK_z = $007a;    

    XK_braceleft = $007b;    

    XK_bar = $007c;    

    XK_braceright = $007d;    

    XK_asciitilde = $007e;    

    XK_nobreakspace = $00a0;    

    XK_exclamdown = $00a1;    

    XK_cent = $00a2;    

    XK_sterling = $00a3;    

    XK_currency = $00a4;    

    XK_yen = $00a5;    

    XK_brokenbar = $00a6;    

    XK_section = $00a7;    

    XK_diaeresis = $00a8;    

    XK_copyright = $00a9;    

    XK_ordfeminine = $00aa;    

    XK_guillemotleft = $00ab;    

    XK_notsign = $00ac;    

    XK_hyphen = $00ad;    

    XK_registered = $00ae;    

    XK_macron = $00af;    

    XK_degree = $00b0;    

    XK_plusminus = $00b1;    

    XK_twosuperior = $00b2;    

    XK_threesuperior = $00b3;    

    XK_acute = $00b4;    

    XK_mu = $00b5;    

    XK_paragraph = $00b6;    

    XK_periodcentered = $00b7;    

    XK_cedilla = $00b8;    

    XK_onesuperior = $00b9;    

    XK_masculine = $00ba;    

    XK_guillemotright = $00bb;    

    XK_onequarter = $00bc;    

    XK_onehalf = $00bd;    

    XK_threequarters = $00be;    

    XK_questiondown = $00bf;    

    XK_Agrave = $00c0;    

    XK_Aacute = $00c1;    

    XK_Acircumflex = $00c2;    

    XK_Atilde = $00c3;    

    XK_Adiaeresis = $00c4;    

    XK_Aring = $00c5;    

    XK_AE = $00c6;    

    XK_Ccedilla = $00c7;    

    XK_Egrave = $00c8;    

    XK_Eacute = $00c9;    

    XK_Ecircumflex = $00ca;    

    XK_Ediaeresis = $00cb;    

    XK_Igrave = $00cc;    

    XK_Iacute = $00cd;    

    XK_Icircumflex = $00ce;    

    XK_Idiaeresis = $00cf;    

    XK_ETH = $00d0;    

    XK_Eth = $00d0;    

    XK_Ntilde = $00d1;    

    XK_Ograve = $00d2;    

    XK_Oacute = $00d3;    

    XK_Ocircumflex = $00d4;    

    XK_Otilde = $00d5;    

    XK_Odiaeresis = $00d6;    

    XK_multiply = $00d7;    

    XK_Oslash = $00d8;    

    XK_Ooblique = $00d8;    

    XK_Ugrave = $00d9;    

    XK_Uacute = $00da;    

    XK_Ucircumflex = $00db;    

    XK_Udiaeresis = $00dc;    

    XK_Yacute = $00dd;    

    XK_THORN = $00de;    

    XK_Thorn = $00de;    

    XK_ssharp = $00df;    

    XK_agrave = $00e0;    

    XK_aacute = $00e1;    

    XK_acircumflex = $00e2;    

    XK_atilde = $00e3;    

    XK_adiaeresis = $00e4;    

    XK_aring = $00e5;    

    XK_ae = $00e6;    

    XK_ccedilla = $00e7;    

    XK_egrave = $00e8;    

    XK_eacute = $00e9;    

    XK_ecircumflex = $00ea;    

    XK_ediaeresis = $00eb;    

    XK_igrave = $00ec;    

    XK_iacute = $00ed;    

    XK_icircumflex = $00ee;    

    XK_idiaeresis = $00ef;    

    XK_eth = $00f0;    

    XK_ntilde = $00f1;    

    XK_ograve = $00f2;    

    XK_oacute = $00f3;    

    XK_ocircumflex = $00f4;    

    XK_otilde = $00f5;    

    XK_odiaeresis = $00f6;    

    XK_division = $00f7;    

    XK_oslash = $00f8;    

    XK_ooblique = $00f8;    

    XK_ugrave = $00f9;    

    XK_uacute = $00fa;    

    XK_ucircumflex = $00fb;    

    XK_udiaeresis = $00fc;    

    XK_yacute = $00fd;    

    XK_thorn = $00fe;    

    XK_ydiaeresis = $00ff;    
{$endif}


{$ifdef XK_LATIN2}


  const
    XK_Aogonek = $01a1;    

    XK_breve = $01a2;    

    XK_Lstroke = $01a3;    

    XK_Lcaron = $01a5;    

    XK_Sacute = $01a6;    

    XK_Scaron = $01a9;    

    XK_Scedilla = $01aa;    

    XK_Tcaron = $01ab;    

    XK_Zacute = $01ac;    

    XK_Zcaron = $01ae;    

    XK_Zabovedot = $01af;    

    XK_aogonek = $01b1;    

    XK_ogonek = $01b2;    

    XK_lstroke = $01b3;    

    XK_lcaron = $01b5;    

    XK_sacute = $01b6;    

    XK_caron = $01b7;    

    XK_scaron = $01b9;    

    XK_scedilla = $01ba;    

    XK_tcaron = $01bb;    

    XK_zacute = $01bc;    

    XK_doubleacute = $01bd;    

    XK_zcaron = $01be;    

    XK_zabovedot = $01bf;    

    XK_Racute = $01c0;    

    XK_Abreve = $01c3;    

    XK_Lacute = $01c5;    

    XK_Cacute = $01c6;    

    XK_Ccaron = $01c8;    

    XK_Eogonek = $01ca;    

    XK_Ecaron = $01cc;    

    XK_Dcaron = $01cf;    

    XK_Dstroke = $01d0;    

    XK_Nacute = $01d1;    

    XK_Ncaron = $01d2;    

    XK_Odoubleacute = $01d5;    

    XK_Rcaron = $01d8;    

    XK_Uring = $01d9;    

    XK_Udoubleacute = $01db;    

    XK_Tcedilla = $01de;    

    XK_racute = $01e0;    

    XK_abreve = $01e3;    

    XK_lacute = $01e5;    

    XK_cacute = $01e6;    

    XK_ccaron = $01e8;    

    XK_eogonek = $01ea;    

    XK_ecaron = $01ec;    

    XK_dcaron = $01ef;    

    XK_dstroke = $01f0;    

    XK_nacute = $01f1;    

    XK_ncaron = $01f2;    

    XK_odoubleacute = $01f5;    

    XK_rcaron = $01f8;    

    XK_uring = $01f9;    

    XK_udoubleacute = $01fb;    

    XK_tcedilla = $01fe;    

    XK_abovedot = $01ff;    
{$endif}


{$ifdef XK_LATIN3}


  const
    XK_Hstroke = $02a1;    

    XK_Hcircumflex = $02a6;    

    XK_Iabovedot = $02a9;    

    XK_Gbreve = $02ab;    

    XK_Jcircumflex = $02ac;    

    XK_hstroke = $02b1;    

    XK_hcircumflex = $02b6;    

    XK_idotless = $02b9;    

    XK_gbreve = $02bb;    

    XK_jcircumflex = $02bc;    

    XK_Cabovedot = $02c5;    

    XK_Ccircumflex = $02c6;    

    XK_Gabovedot = $02d5;    

    XK_Gcircumflex = $02d8;    

    XK_Ubreve = $02dd;    

    XK_Scircumflex = $02de;    

    XK_cabovedot = $02e5;    

    XK_ccircumflex = $02e6;    

    XK_gabovedot = $02f5;    

    XK_gcircumflex = $02f8;    

    XK_ubreve = $02fd;    

    XK_scircumflex = $02fe;    
{$endif}


{$ifdef XK_LATIN4}


  const
    XK_kra = $03a2;    

    XK_kappa = $03a2;    

    XK_Rcedilla = $03a3;    

    XK_Itilde = $03a5;    

    XK_Lcedilla = $03a6;    

    XK_Emacron = $03aa;    

    XK_Gcedilla = $03ab;    

    XK_Tslash = $03ac;    

    XK_rcedilla = $03b3;    

    XK_itilde = $03b5;    

    XK_lcedilla = $03b6;    

    XK_emacron = $03ba;    

    XK_gcedilla = $03bb;    

    XK_tslash = $03bc;    

    XK_ENG = $03bd;    

    XK_eng = $03bf;    

    XK_Amacron = $03c0;    

    XK_Iogonek = $03c7;    

    XK_Eabovedot = $03cc;    

    XK_Imacron = $03cf;    

    XK_Ncedilla = $03d1;    

    XK_Omacron = $03d2;    

    XK_Kcedilla = $03d3;    

    XK_Uogonek = $03d9;    

    XK_Utilde = $03dd;    

    XK_Umacron = $03de;    

    XK_amacron = $03e0;    

    XK_iogonek = $03e7;    

    XK_eabovedot = $03ec;    

    XK_imacron = $03ef;    

    XK_ncedilla = $03f1;    

    XK_omacron = $03f2;    

    XK_kcedilla = $03f3;    

    XK_uogonek = $03f9;    

    XK_utilde = $03fd;    

    XK_umacron = $03fe;    
{$endif}


{$ifdef XK_LATIN8}


  const
    XK_Wcircumflex = $1000174;    

    XK_wcircumflex = $1000175;    

    XK_Ycircumflex = $1000176;    

    XK_ycircumflex = $1000177;    

    XK_Babovedot = $1001e02;    

    XK_babovedot = $1001e03;    

    XK_Dabovedot = $1001e0a;    

    XK_dabovedot = $1001e0b;    

    XK_Fabovedot = $1001e1e;    

    XK_fabovedot = $1001e1f;    

    XK_Mabovedot = $1001e40;    

    XK_mabovedot = $1001e41;    

    XK_Pabovedot = $1001e56;    

    XK_pabovedot = $1001e57;    

    XK_Sabovedot = $1001e60;    

    XK_sabovedot = $1001e61;    

    XK_Tabovedot = $1001e6a;    

    XK_tabovedot = $1001e6b;    

    XK_Wgrave = $1001e80;    

    XK_wgrave = $1001e81;    

    XK_Wacute = $1001e82;    

    XK_wacute = $1001e83;    

    XK_Wdiaeresis = $1001e84;    

    XK_wdiaeresis = $1001e85;    

    XK_Ygrave = $1001ef2;    

    XK_ygrave = $1001ef3;    
{$endif}


{$ifdef XK_LATIN9}


  const
    XK_OE = $13bc;    

    XK_oe = $13bd;    

    XK_Ydiaeresis = $13be;    
{$endif}


{$ifdef XK_KATAKANA}


  const
    XK_overline = $047e;    

    XK_kana_fullstop = $04a1;    

    XK_kana_openingbracket = $04a2;    

    XK_kana_closingbracket = $04a3;    

    XK_kana_comma = $04a4;    

    XK_kana_conjunctive = $04a5;    

    XK_kana_middledot = $04a5;    

    XK_kana_WO = $04a6;    

    XK_kana_a = $04a7;    

    XK_kana_i = $04a8;    

    XK_kana_u = $04a9;    

    XK_kana_e = $04aa;    

    XK_kana_o = $04ab;    

    XK_kana_ya = $04ac;    

    XK_kana_yu = $04ad;    

    XK_kana_yo = $04ae;    

    XK_kana_tsu = $04af;    

    XK_kana_tu = $04af;    

    XK_prolongedsound = $04b0;    

    XK_kana_A = $04b1;    

    XK_kana_I = $04b2;    

    XK_kana_U = $04b3;    

    XK_kana_E = $04b4;    

    XK_kana_O = $04b5;    

    XK_kana_KA = $04b6;    

    XK_kana_KI = $04b7;    

    XK_kana_KU = $04b8;    

    XK_kana_KE = $04b9;    

    XK_kana_KO = $04ba;    

    XK_kana_SA = $04bb;    

    XK_kana_SHI = $04bc;    

    XK_kana_SU = $04bd;    

    XK_kana_SE = $04be;    

    XK_kana_SO = $04bf;    

    XK_kana_TA = $04c0;    

    XK_kana_CHI = $04c1;    

    XK_kana_TI = $04c1;    

    XK_kana_TSU = $04c2;    

    XK_kana_TU = $04c2;    

    XK_kana_TE = $04c3;    

    XK_kana_TO = $04c4;    

    XK_kana_NA = $04c5;    

    XK_kana_NI = $04c6;    

    XK_kana_NU = $04c7;    

    XK_kana_NE = $04c8;    

    XK_kana_NO = $04c9;    

    XK_kana_HA = $04ca;    

    XK_kana_HI = $04cb;    

    XK_kana_FU = $04cc;    

    XK_kana_HU = $04cc;    

    XK_kana_HE = $04cd;    

    XK_kana_HO = $04ce;    

    XK_kana_MA = $04cf;    

    XK_kana_MI = $04d0;    

    XK_kana_MU = $04d1;    

    XK_kana_ME = $04d2;    

    XK_kana_MO = $04d3;    

    XK_kana_YA = $04d4;    

    XK_kana_YU = $04d5;    

    XK_kana_YO = $04d6;    

    XK_kana_RA = $04d7;    

    XK_kana_RI = $04d8;    

    XK_kana_RU = $04d9;    

    XK_kana_RE = $04da;    

    XK_kana_RO = $04db;    

    XK_kana_WA = $04dc;    

    XK_kana_N = $04dd;    

    XK_voicedsound = $04de;    

    XK_semivoicedsound = $04df;    

    XK_kana_switch = $ff7e;    
{$endif}


{$ifdef XK_ARABIC}


  const
    XK_Farsi_0 = $10006f0;    

    XK_Farsi_1 = $10006f1;    

    XK_Farsi_2 = $10006f2;    

    XK_Farsi_3 = $10006f3;    

    XK_Farsi_4 = $10006f4;    

    XK_Farsi_5 = $10006f5;    

    XK_Farsi_6 = $10006f6;    

    XK_Farsi_7 = $10006f7;    

    XK_Farsi_8 = $10006f8;    

    XK_Farsi_9 = $10006f9;    

    XK_Arabic_percent = $100066a;    

    XK_Arabic_superscript_alef = $1000670;    

    XK_Arabic_tteh = $1000679;    

    XK_Arabic_peh = $100067e;    

    XK_Arabic_tcheh = $1000686;    

    XK_Arabic_ddal = $1000688;    

    XK_Arabic_rreh = $1000691;    

    XK_Arabic_comma = $05ac;    

    XK_Arabic_fullstop = $10006d4;    

    XK_Arabic_0 = $1000660;    

    XK_Arabic_1 = $1000661;    

    XK_Arabic_2 = $1000662;    

    XK_Arabic_3 = $1000663;    

    XK_Arabic_4 = $1000664;    

    XK_Arabic_5 = $1000665;    

    XK_Arabic_6 = $1000666;    

    XK_Arabic_7 = $1000667;    

    XK_Arabic_8 = $1000668;    

    XK_Arabic_9 = $1000669;    

    XK_Arabic_semicolon = $05bb;    

    XK_Arabic_question_mark = $05bf;    

    XK_Arabic_hamza = $05c1;    

    XK_Arabic_maddaonalef = $05c2;    

    XK_Arabic_hamzaonalef = $05c3;    

    XK_Arabic_hamzaonwaw = $05c4;    

    XK_Arabic_hamzaunderalef = $05c5;    

    XK_Arabic_hamzaonyeh = $05c6;    

    XK_Arabic_alef = $05c7;    

    XK_Arabic_beh = $05c8;    

    XK_Arabic_tehmarbuta = $05c9;    

    XK_Arabic_teh = $05ca;    

    XK_Arabic_theh = $05cb;    

    XK_Arabic_jeem = $05cc;    

    XK_Arabic_hah = $05cd;    

    XK_Arabic_khah = $05ce;    

    XK_Arabic_dal = $05cf;    

    XK_Arabic_thal = $05d0;    

    XK_Arabic_ra = $05d1;    

    XK_Arabic_zain = $05d2;    

    XK_Arabic_seen = $05d3;    

    XK_Arabic_sheen = $05d4;    

    XK_Arabic_sad = $05d5;    

    XK_Arabic_dad = $05d6;    

    XK_Arabic_tah = $05d7;    

    XK_Arabic_zah = $05d8;    

    XK_Arabic_ain = $05d9;    

    XK_Arabic_ghain = $05da;    

    XK_Arabic_tatweel = $05e0;    

    XK_Arabic_feh = $05e1;    

    XK_Arabic_qaf = $05e2;    

    XK_Arabic_kaf = $05e3;    

    XK_Arabic_lam = $05e4;    

    XK_Arabic_meem = $05e5;    

    XK_Arabic_noon = $05e6;    

    XK_Arabic_ha = $05e7;    

    XK_Arabic_heh = $05e7;    

    XK_Arabic_waw = $05e8;    

    XK_Arabic_alefmaksura = $05e9;    

    XK_Arabic_yeh = $05ea;    

    XK_Arabic_fathatan = $05eb;    

    XK_Arabic_dammatan = $05ec;    

    XK_Arabic_kasratan = $05ed;    

    XK_Arabic_fatha = $05ee;    

    XK_Arabic_damma = $05ef;    

    XK_Arabic_kasra = $05f0;    

    XK_Arabic_shadda = $05f1;    

    XK_Arabic_sukun = $05f2;    

    XK_Arabic_madda_above = $1000653;    

    XK_Arabic_hamza_above = $1000654;    

    XK_Arabic_hamza_below = $1000655;    

    XK_Arabic_jeh = $1000698;    

    XK_Arabic_veh = $10006a4;    

    XK_Arabic_keheh = $10006a9;    

    XK_Arabic_gaf = $10006af;    

    XK_Arabic_noon_ghunna = $10006ba;    

    XK_Arabic_heh_doachashmee = $10006be;    

    XK_Farsi_yeh = $10006cc;    

    XK_Arabic_farsi_yeh = $10006cc;    

    XK_Arabic_yeh_baree = $10006d2;    

    XK_Arabic_heh_goal = $10006c1;    

    XK_Arabic_switch = $ff7e;    
{$endif}


{$ifdef XK_CYRILLIC}


  const
    XK_Cyrillic_GHE_bar = $1000492;    

    XK_Cyrillic_ghe_bar = $1000493;    

    XK_Cyrillic_ZHE_descender = $1000496;    

    XK_Cyrillic_zhe_descender = $1000497;    

    XK_Cyrillic_KA_descender = $100049a;    

    XK_Cyrillic_ka_descender = $100049b;    

    XK_Cyrillic_KA_vertstroke = $100049c;    

    XK_Cyrillic_ka_vertstroke = $100049d;    

    XK_Cyrillic_EN_descender = $10004a2;    

    XK_Cyrillic_en_descender = $10004a3;    

    XK_Cyrillic_U_straight = $10004ae;    

    XK_Cyrillic_u_straight = $10004af;    

    XK_Cyrillic_U_straight_bar = $10004b0;    

    XK_Cyrillic_u_straight_bar = $10004b1;    

    XK_Cyrillic_HA_descender = $10004b2;    

    XK_Cyrillic_ha_descender = $10004b3;    

    XK_Cyrillic_CHE_descender = $10004b6;    

    XK_Cyrillic_che_descender = $10004b7;    

    XK_Cyrillic_CHE_vertstroke = $10004b8;    

    XK_Cyrillic_che_vertstroke = $10004b9;    

    XK_Cyrillic_SHHA = $10004ba;    

    XK_Cyrillic_shha = $10004bb;    

    XK_Cyrillic_SCHWA = $10004d8;    

    XK_Cyrillic_schwa = $10004d9;    

    XK_Cyrillic_I_macron = $10004e2;    

    XK_Cyrillic_i_macron = $10004e3;    

    XK_Cyrillic_O_bar = $10004e8;    

    XK_Cyrillic_o_bar = $10004e9;    

    XK_Cyrillic_U_macron = $10004ee;    

    XK_Cyrillic_u_macron = $10004ef;    

    XK_Serbian_dje = $06a1;    

    XK_Macedonia_gje = $06a2;    

    XK_Cyrillic_io = $06a3;    

    XK_Ukrainian_ie = $06a4;    

    XK_Ukranian_je = $06a4;    

    XK_Macedonia_dse = $06a5;    

    XK_Ukrainian_i = $06a6;    

    XK_Ukranian_i = $06a6;    

    XK_Ukrainian_yi = $06a7;    

    XK_Ukranian_yi = $06a7;    

    XK_Cyrillic_je = $06a8;    

    XK_Serbian_je = $06a8;    

    XK_Cyrillic_lje = $06a9;    

    XK_Serbian_lje = $06a9;    

    XK_Cyrillic_nje = $06aa;    

    XK_Serbian_nje = $06aa;    

    XK_Serbian_tshe = $06ab;    

    XK_Macedonia_kje = $06ac;    

    XK_Ukrainian_ghe_with_upturn = $06ad;    

    XK_Byelorussian_shortu = $06ae;    

    XK_Cyrillic_dzhe = $06af;    

    XK_Serbian_dze = $06af;    

    XK_numerosign = $06b0;    

    XK_Serbian_DJE = $06b1;    

    XK_Macedonia_GJE = $06b2;    

    XK_Cyrillic_IO = $06b3;    

    XK_Ukrainian_IE = $06b4;    

    XK_Ukranian_JE = $06b4;    

    XK_Macedonia_DSE = $06b5;    

    XK_Ukrainian_I = $06b6;    

    XK_Ukranian_I = $06b6;    

    XK_Ukrainian_YI = $06b7;    

    XK_Ukranian_YI = $06b7;    

    XK_Cyrillic_JE = $06b8;    

    XK_Serbian_JE = $06b8;    

    XK_Cyrillic_LJE = $06b9;    

    XK_Serbian_LJE = $06b9;    

    XK_Cyrillic_NJE = $06ba;    

    XK_Serbian_NJE = $06ba;    

    XK_Serbian_TSHE = $06bb;    

    XK_Macedonia_KJE = $06bc;    

    XK_Ukrainian_GHE_WITH_UPTURN = $06bd;    

    XK_Byelorussian_SHORTU = $06be;    

    XK_Cyrillic_DZHE = $06bf;    

    XK_Serbian_DZE = $06bf;    

    XK_Cyrillic_yu = $06c0;    

    XK_Cyrillic_a = $06c1;    

    XK_Cyrillic_be = $06c2;    

    XK_Cyrillic_tse = $06c3;    

    XK_Cyrillic_de = $06c4;    

    XK_Cyrillic_ie = $06c5;    

    XK_Cyrillic_ef = $06c6;    

    XK_Cyrillic_ghe = $06c7;    

    XK_Cyrillic_ha = $06c8;    

    XK_Cyrillic_i = $06c9;    

    XK_Cyrillic_shorti = $06ca;    

    XK_Cyrillic_ka = $06cb;    

    XK_Cyrillic_el = $06cc;    

    XK_Cyrillic_em = $06cd;    

    XK_Cyrillic_en = $06ce;    

    XK_Cyrillic_o = $06cf;    

    XK_Cyrillic_pe = $06d0;    

    XK_Cyrillic_ya = $06d1;    

    XK_Cyrillic_er = $06d2;    

    XK_Cyrillic_es = $06d3;    

    XK_Cyrillic_te = $06d4;    

    XK_Cyrillic_u = $06d5;    

    XK_Cyrillic_zhe = $06d6;    

    XK_Cyrillic_ve = $06d7;    

    XK_Cyrillic_softsign = $06d8;    

    XK_Cyrillic_yeru = $06d9;    

    XK_Cyrillic_ze = $06da;    

    XK_Cyrillic_sha = $06db;    

    XK_Cyrillic_e = $06dc;    

    XK_Cyrillic_shcha = $06dd;    

    XK_Cyrillic_che = $06de;    

    XK_Cyrillic_hardsign = $06df;    

    XK_Cyrillic_YU = $06e0;    

    XK_Cyrillic_A = $06e1;    

    XK_Cyrillic_BE = $06e2;    

    XK_Cyrillic_TSE = $06e3;    

    XK_Cyrillic_DE = $06e4;    

    XK_Cyrillic_IE = $06e5;    

    XK_Cyrillic_EF = $06e6;    

    XK_Cyrillic_GHE = $06e7;    

    XK_Cyrillic_HA = $06e8;    

    XK_Cyrillic_I = $06e9;    

    XK_Cyrillic_SHORTI = $06ea;    

    XK_Cyrillic_KA = $06eb;    

    XK_Cyrillic_EL = $06ec;    

    XK_Cyrillic_EM = $06ed;    

    XK_Cyrillic_EN = $06ee;    

    XK_Cyrillic_O = $06ef;    

    XK_Cyrillic_PE = $06f0;    

    XK_Cyrillic_YA = $06f1;    

    XK_Cyrillic_ER = $06f2;    

    XK_Cyrillic_ES = $06f3;    

    XK_Cyrillic_TE = $06f4;    

    XK_Cyrillic_U = $06f5;    

    XK_Cyrillic_ZHE = $06f6;    

    XK_Cyrillic_VE = $06f7;    

    XK_Cyrillic_SOFTSIGN = $06f8;    

    XK_Cyrillic_YERU = $06f9;    

    XK_Cyrillic_ZE = $06fa;    

    XK_Cyrillic_SHA = $06fb;    

    XK_Cyrillic_E = $06fc;    

    XK_Cyrillic_SHCHA = $06fd;    

    XK_Cyrillic_CHE = $06fe;    

    XK_Cyrillic_HARDSIGN = $06ff;    
{$endif}


{$ifdef XK_GREEK}


  const
    XK_Greek_ALPHAaccent = $07a1;    

    XK_Greek_EPSILONaccent = $07a2;    

    XK_Greek_ETAaccent = $07a3;    

    XK_Greek_IOTAaccent = $07a4;    

    XK_Greek_IOTAdieresis = $07a5;    

    XK_Greek_IOTAdiaeresis = $07a5;    

    XK_Greek_OMICRONaccent = $07a7;    

    XK_Greek_UPSILONaccent = $07a8;    

    XK_Greek_UPSILONdieresis = $07a9;    

    XK_Greek_OMEGAaccent = $07ab;    

    XK_Greek_accentdieresis = $07ae;    

    XK_Greek_horizbar = $07af;    

    XK_Greek_alphaaccent = $07b1;    

    XK_Greek_epsilonaccent = $07b2;    

    XK_Greek_etaaccent = $07b3;    

    XK_Greek_iotaaccent = $07b4;    

    XK_Greek_iotadieresis = $07b5;    

    XK_Greek_iotaaccentdieresis = $07b6;    

    XK_Greek_omicronaccent = $07b7;    

    XK_Greek_upsilonaccent = $07b8;    

    XK_Greek_upsilondieresis = $07b9;    

    XK_Greek_upsilonaccentdieresis = $07ba;    

    XK_Greek_omegaaccent = $07bb;    

    XK_Greek_ALPHA = $07c1;    

    XK_Greek_BETA = $07c2;    

    XK_Greek_GAMMA = $07c3;    

    XK_Greek_DELTA = $07c4;    

    XK_Greek_EPSILON = $07c5;    

    XK_Greek_ZETA = $07c6;    

    XK_Greek_ETA = $07c7;    

    XK_Greek_THETA = $07c8;    

    XK_Greek_IOTA = $07c9;    

    XK_Greek_KAPPA = $07ca;    

    XK_Greek_LAMDA = $07cb;    

    XK_Greek_LAMBDA = $07cb;    

    XK_Greek_MU = $07cc;    

    XK_Greek_NU = $07cd;    

    XK_Greek_XI = $07ce;    

    XK_Greek_OMICRON = $07cf;    

    XK_Greek_PI = $07d0;    

    XK_Greek_RHO = $07d1;    

    XK_Greek_SIGMA = $07d2;    

    XK_Greek_TAU = $07d4;    

    XK_Greek_UPSILON = $07d5;    

    XK_Greek_PHI = $07d6;    

    XK_Greek_CHI = $07d7;    

    XK_Greek_PSI = $07d8;    

    XK_Greek_OMEGA = $07d9;    

    XK_Greek_alpha = $07e1;    

    XK_Greek_beta = $07e2;    

    XK_Greek_gamma = $07e3;    

    XK_Greek_delta = $07e4;    

    XK_Greek_epsilon = $07e5;    

    XK_Greek_zeta = $07e6;    

    XK_Greek_eta = $07e7;    

    XK_Greek_theta = $07e8;    

    XK_Greek_iota = $07e9;    

    XK_Greek_kappa = $07ea;    

    XK_Greek_lamda = $07eb;    

    XK_Greek_lambda = $07eb;    

    XK_Greek_mu = $07ec;    

    XK_Greek_nu = $07ed;    

    XK_Greek_xi = $07ee;    

    XK_Greek_omicron = $07ef;    

    XK_Greek_pi = $07f0;    

    XK_Greek_rho = $07f1;    

    XK_Greek_sigma = $07f2;    

    XK_Greek_finalsmallsigma = $07f3;    

    XK_Greek_tau = $07f4;    

    XK_Greek_upsilon = $07f5;    

    XK_Greek_phi = $07f6;    

    XK_Greek_chi = $07f7;    

    XK_Greek_psi = $07f8;    

    XK_Greek_omega = $07f9;    

    XK_Greek_switch = $ff7e;    
{$endif}


{$ifdef XK_TECHNICAL}


  const
    XK_leftradical = $08a1;    

    XK_topleftradical = $08a2;    

    XK_horizconnector = $08a3;    

    XK_topintegral = $08a4;    

    XK_botintegral = $08a5;    

    XK_vertconnector = $08a6;    

    XK_topleftsqbracket = $08a7;    

    XK_botleftsqbracket = $08a8;    

    XK_toprightsqbracket = $08a9;    

    XK_botrightsqbracket = $08aa;    

    XK_topleftparens = $08ab;    

    XK_botleftparens = $08ac;    

    XK_toprightparens = $08ad;    

    XK_botrightparens = $08ae;    

    XK_leftmiddlecurlybrace = $08af;    

    XK_rightmiddlecurlybrace = $08b0;    
    XK_topleftsummation = $08b1;    
    XK_botleftsummation = $08b2;    
    XK_topvertsummationconnector = $08b3;    
    XK_botvertsummationconnector = $08b4;    
    XK_toprightsummation = $08b5;    
    XK_botrightsummation = $08b6;    
    XK_rightmiddlesummation = $08b7;    

    XK_lessthanequal = $08bc;    

    XK_notequal = $08bd;    

    XK_greaterthanequal = $08be;    

    XK_integral = $08bf;    

    XK_therefore = $08c0;    

    XK_variation = $08c1;    

    XK_infinity = $08c2;    

    XK_nabla = $08c5;    

    XK_approximate = $08c8;    

    XK_similarequal = $08c9;    

    XK_ifonlyif = $08cd;    

    XK_implies = $08ce;    

    XK_identical = $08cf;    

    XK_radical = $08d6;    

    XK_includedin = $08da;    

    XK_includes = $08db;    

    XK_intersection = $08dc;    

    XK_union = $08dd;    

    XK_logicaland = $08de;    

    XK_logicalor = $08df;    

    XK_partialderivative = $08ef;    

    XK_function = $08f6;    

    XK_leftarrow = $08fb;    

    XK_uparrow = $08fc;    

    XK_rightarrow = $08fd;    

    XK_downarrow = $08fe;    
{$endif}


{$ifdef XK_SPECIAL}

  const
    XK_blank = $09df;    

    XK_soliddiamond = $09e0;    

    XK_checkerboard = $09e1;    

    XK_ht = $09e2;    

    XK_ff = $09e3;    

    XK_cr = $09e4;    

    XK_lf = $09e5;    

    XK_nl = $09e8;    

    XK_vt = $09e9;    

    XK_lowrightcorner = $09ea;    

    XK_uprightcorner = $09eb;    

    XK_upleftcorner = $09ec;    

    XK_lowleftcorner = $09ed;    

    XK_crossinglines = $09ee;    

    XK_horizlinescan1 = $09ef;    

    XK_horizlinescan3 = $09f0;    

    XK_horizlinescan5 = $09f1;    

    XK_horizlinescan7 = $09f2;    

    XK_horizlinescan9 = $09f3;    

    XK_leftt = $09f4;    

    XK_rightt = $09f5;    

    XK_bott = $09f6;    

    XK_topt = $09f7;    

    XK_vertbar = $09f8;    
{$endif}


{$ifdef XK_PUBLISHING}


  const
    XK_emspace = $0aa1;    

    XK_enspace = $0aa2;    

    XK_em3space = $0aa3;    

    XK_em4space = $0aa4;    

    XK_digitspace = $0aa5;    

    XK_punctspace = $0aa6;    

    XK_thinspace = $0aa7;    

    XK_hairspace = $0aa8;    

    XK_emdash = $0aa9;    

    XK_endash = $0aaa;    

    XK_signifblank = $0aac;    

    XK_ellipsis = $0aae;    

    XK_doubbaselinedot = $0aaf;    

    XK_onethird = $0ab0;    

    XK_twothirds = $0ab1;    

    XK_onefifth = $0ab2;    

    XK_twofifths = $0ab3;    

    XK_threefifths = $0ab4;    

    XK_fourfifths = $0ab5;    

    XK_onesixth = $0ab6;    

    XK_fivesixths = $0ab7;    

    XK_careof = $0ab8;    

    XK_figdash = $0abb;    

    XK_leftanglebracket = $0abc;    

    XK_decimalpoint = $0abd;    

    XK_rightanglebracket = $0abe;    
    XK_marker = $0abf;    

    XK_oneeighth = $0ac3;    

    XK_threeeighths = $0ac4;    

    XK_fiveeighths = $0ac5;    

    XK_seveneighths = $0ac6;    

    XK_trademark = $0ac9;    

    XK_signaturemark = $0aca;    
    XK_trademarkincircle = $0acb;    

    XK_leftopentriangle = $0acc;    

    XK_rightopentriangle = $0acd;    

    XK_emopencircle = $0ace;    

    XK_emopenrectangle = $0acf;    

    XK_leftsinglequotemark = $0ad0;    

    XK_rightsinglequotemark = $0ad1;    

    XK_leftdoublequotemark = $0ad2;    

    XK_rightdoublequotemark = $0ad3;    

    XK_prescription = $0ad4;    

    XK_permille = $0ad5;    

    XK_minutes = $0ad6;    

    XK_seconds = $0ad7;    

    XK_latincross = $0ad9;    
    XK_hexagram = $0ada;    

    XK_filledrectbullet = $0adb;    

    XK_filledlefttribullet = $0adc;    

    XK_filledrighttribullet = $0add;    

    XK_emfilledcircle = $0ade;    

    XK_emfilledrect = $0adf;    

    XK_enopencircbullet = $0ae0;    

    XK_enopensquarebullet = $0ae1;    

    XK_openrectbullet = $0ae2;    

    XK_opentribulletup = $0ae3;    

    XK_opentribulletdown = $0ae4;    

    XK_openstar = $0ae5;    

    XK_enfilledcircbullet = $0ae6;    

    XK_enfilledsqbullet = $0ae7;    

    XK_filledtribulletup = $0ae8;    

    XK_filledtribulletdown = $0ae9;    

    XK_leftpointer = $0aea;    

    XK_rightpointer = $0aeb;    

    XK_club = $0aec;    

    XK_diamond = $0aed;    

    XK_heart = $0aee;    

    XK_maltesecross = $0af0;    

    XK_dagger = $0af1;    

    XK_doubledagger = $0af2;    

    XK_checkmark = $0af3;    

    XK_ballotcross = $0af4;    

    XK_musicalsharp = $0af5;    

    XK_musicalflat = $0af6;    

    XK_malesymbol = $0af7;    

    XK_femalesymbol = $0af8;    

    XK_telephone = $0af9;    

    XK_telephonerecorder = $0afa;    

    XK_phonographcopyright = $0afb;    

    XK_caret = $0afc;    

    XK_singlelowquotemark = $0afd;    

    XK_doublelowquotemark = $0afe;    
    XK_cursor = $0aff;    
{$endif}


{$ifdef XK_APL}


  const
    XK_leftcaret = $0ba3;    

    XK_rightcaret = $0ba6;    

    XK_downcaret = $0ba8;    

    XK_upcaret = $0ba9;    

    XK_overbar = $0bc0;    

    XK_downtack = $0bc2;    

    XK_upshoe = $0bc3;    

    XK_downstile = $0bc4;    

    XK_underbar = $0bc6;    

    XK_jot = $0bca;    

    XK_quad = $0bcc;    

    XK_uptack = $0bce;    

    XK_circle = $0bcf;    

    XK_upstile = $0bd3;    

    XK_downshoe = $0bd6;    

    XK_rightshoe = $0bd8;    

    XK_leftshoe = $0bda;    

    XK_lefttack = $0bdc;    

    XK_righttack = $0bfc;    
{$endif}


{$ifdef XK_HEBREW}


  const
    XK_hebrew_doublelowline = $0cdf;    

    XK_hebrew_aleph = $0ce0;    

    XK_hebrew_bet = $0ce1;    

    XK_hebrew_beth = $0ce1;    

    XK_hebrew_gimel = $0ce2;    

    XK_hebrew_gimmel = $0ce2;    

    XK_hebrew_dalet = $0ce3;    

    XK_hebrew_daleth = $0ce3;    

    XK_hebrew_he = $0ce4;    

    XK_hebrew_waw = $0ce5;    

    XK_hebrew_zain = $0ce6;    

    XK_hebrew_zayin = $0ce6;    

    XK_hebrew_chet = $0ce7;    

    XK_hebrew_het = $0ce7;    

    XK_hebrew_tet = $0ce8;    

    XK_hebrew_teth = $0ce8;    

    XK_hebrew_yod = $0ce9;    

    XK_hebrew_finalkaph = $0cea;    

    XK_hebrew_kaph = $0ceb;    

    XK_hebrew_lamed = $0cec;    

    XK_hebrew_finalmem = $0ced;    

    XK_hebrew_mem = $0cee;    

    XK_hebrew_finalnun = $0cef;    

    XK_hebrew_nun = $0cf0;    

    XK_hebrew_samech = $0cf1;    

    XK_hebrew_samekh = $0cf1;    

    XK_hebrew_ayin = $0cf2;    

    XK_hebrew_finalpe = $0cf3;    

    XK_hebrew_pe = $0cf4;    

    XK_hebrew_finalzade = $0cf5;    

    XK_hebrew_finalzadi = $0cf5;    

    XK_hebrew_zade = $0cf6;    

    XK_hebrew_zadi = $0cf6;    

    XK_hebrew_qoph = $0cf7;    

    XK_hebrew_kuf = $0cf7;    

    XK_hebrew_resh = $0cf8;    

    XK_hebrew_shin = $0cf9;    

    XK_hebrew_taw = $0cfa;    

    XK_hebrew_taf = $0cfa;    

    XK_Hebrew_switch = $ff7e;    
{$endif}


{$ifdef XK_THAI}


  const
    XK_Thai_kokai = $0da1;    

    XK_Thai_khokhai = $0da2;    

    XK_Thai_khokhuat = $0da3;    

    XK_Thai_khokhwai = $0da4;    

    XK_Thai_khokhon = $0da5;    

    XK_Thai_khorakhang = $0da6;    

    XK_Thai_ngongu = $0da7;    

    XK_Thai_chochan = $0da8;    

    XK_Thai_choching = $0da9;    

    XK_Thai_chochang = $0daa;    

    XK_Thai_soso = $0dab;    

    XK_Thai_chochoe = $0dac;    

    XK_Thai_yoying = $0dad;    

    XK_Thai_dochada = $0dae;    

    XK_Thai_topatak = $0daf;    

    XK_Thai_thothan = $0db0;    

    XK_Thai_thonangmontho = $0db1;    

    XK_Thai_thophuthao = $0db2;    

    XK_Thai_nonen = $0db3;    

    XK_Thai_dodek = $0db4;    

    XK_Thai_totao = $0db5;    

    XK_Thai_thothung = $0db6;    

    XK_Thai_thothahan = $0db7;    

    XK_Thai_thothong = $0db8;    

    XK_Thai_nonu = $0db9;    

    XK_Thai_bobaimai = $0dba;    

    XK_Thai_popla = $0dbb;    

    XK_Thai_phophung = $0dbc;    

    XK_Thai_fofa = $0dbd;    

    XK_Thai_phophan = $0dbe;    

    XK_Thai_fofan = $0dbf;    

    XK_Thai_phosamphao = $0dc0;    

    XK_Thai_moma = $0dc1;    

    XK_Thai_yoyak = $0dc2;    

    XK_Thai_rorua = $0dc3;    

    XK_Thai_ru = $0dc4;    

    XK_Thai_loling = $0dc5;    

    XK_Thai_lu = $0dc6;    

    XK_Thai_wowaen = $0dc7;    

    XK_Thai_sosala = $0dc8;    

    XK_Thai_sorusi = $0dc9;    

    XK_Thai_sosua = $0dca;    

    XK_Thai_hohip = $0dcb;    

    XK_Thai_lochula = $0dcc;    

    XK_Thai_oang = $0dcd;    

    XK_Thai_honokhuk = $0dce;    

    XK_Thai_paiyannoi = $0dcf;    

    XK_Thai_saraa = $0dd0;    

    XK_Thai_maihanakat = $0dd1;    

    XK_Thai_saraaa = $0dd2;    

    XK_Thai_saraam = $0dd3;    

    XK_Thai_sarai = $0dd4;    

    XK_Thai_saraii = $0dd5;    

    XK_Thai_saraue = $0dd6;    

    XK_Thai_sarauee = $0dd7;    

    XK_Thai_sarau = $0dd8;    

    XK_Thai_sarauu = $0dd9;    

    XK_Thai_phinthu = $0dda;    
    XK_Thai_maihanakat_maitho = $0dde;    

    XK_Thai_baht = $0ddf;    

    XK_Thai_sarae = $0de0;    

    XK_Thai_saraae = $0de1;    

    XK_Thai_sarao = $0de2;    

    XK_Thai_saraaimaimuan = $0de3;    

    XK_Thai_saraaimaimalai = $0de4;    

    XK_Thai_lakkhangyao = $0de5;    

    XK_Thai_maiyamok = $0de6;    

    XK_Thai_maitaikhu = $0de7;    

    XK_Thai_maiek = $0de8;    

    XK_Thai_maitho = $0de9;    

    XK_Thai_maitri = $0dea;    

    XK_Thai_maichattawa = $0deb;    

    XK_Thai_thanthakhat = $0dec;    

    XK_Thai_nikhahit = $0ded;    

    XK_Thai_leksun = $0df0;    

    XK_Thai_leknung = $0df1;    

    XK_Thai_leksong = $0df2;    

    XK_Thai_leksam = $0df3;    

    XK_Thai_leksi = $0df4;    

    XK_Thai_lekha = $0df5;    

    XK_Thai_lekhok = $0df6;    

    XK_Thai_lekchet = $0df7;    

    XK_Thai_lekpaet = $0df8;    

    XK_Thai_lekkao = $0df9;    
{$endif}


{$ifdef XK_KOREAN}


  const
    XK_Hangul = $ff31;    

    XK_Hangul_Start = $ff32;    

    XK_Hangul_End = $ff33;    

    XK_Hangul_Hanja = $ff34;    

    XK_Hangul_Jamo = $ff35;    

    XK_Hangul_Romaja = $ff36;    

    XK_Hangul_Codeinput = $ff37;    

    XK_Hangul_Jeonja = $ff38;    

    XK_Hangul_Banja = $ff39;    

    XK_Hangul_PreHanja = $ff3a;    

    XK_Hangul_PostHanja = $ff3b;    

    XK_Hangul_SingleCandidate = $ff3c;    

    XK_Hangul_MultipleCandidate = $ff3d;    

    XK_Hangul_PreviousCandidate = $ff3e;    

    XK_Hangul_Special = $ff3f;    

    XK_Hangul_switch = $ff7e;    


    XK_Hangul_Kiyeog = $0ea1;    

    XK_Hangul_SsangKiyeog = $0ea2;    

    XK_Hangul_KiyeogSios = $0ea3;    

    XK_Hangul_Nieun = $0ea4;    

    XK_Hangul_NieunJieuj = $0ea5;    

    XK_Hangul_NieunHieuh = $0ea6;    

    XK_Hangul_Dikeud = $0ea7;    

    XK_Hangul_SsangDikeud = $0ea8;    

    XK_Hangul_Rieul = $0ea9;    

    XK_Hangul_RieulKiyeog = $0eaa;    

    XK_Hangul_RieulMieum = $0eab;    

    XK_Hangul_RieulPieub = $0eac;    

    XK_Hangul_RieulSios = $0ead;    

    XK_Hangul_RieulTieut = $0eae;    

    XK_Hangul_RieulPhieuf = $0eaf;    

    XK_Hangul_RieulHieuh = $0eb0;    

    XK_Hangul_Mieum = $0eb1;    

    XK_Hangul_Pieub = $0eb2;    

    XK_Hangul_SsangPieub = $0eb3;    

    XK_Hangul_PieubSios = $0eb4;    

    XK_Hangul_Sios = $0eb5;    

    XK_Hangul_SsangSios = $0eb6;    

    XK_Hangul_Ieung = $0eb7;    

    XK_Hangul_Jieuj = $0eb8;    

    XK_Hangul_SsangJieuj = $0eb9;    

    XK_Hangul_Cieuc = $0eba;    

    XK_Hangul_Khieuq = $0ebb;    

    XK_Hangul_Tieut = $0ebc;    

    XK_Hangul_Phieuf = $0ebd;    

    XK_Hangul_Hieuh = $0ebe;    


    XK_Hangul_A = $0ebf;    

    XK_Hangul_AE = $0ec0;    

    XK_Hangul_YA = $0ec1;    

    XK_Hangul_YAE = $0ec2;    

    XK_Hangul_EO = $0ec3;    

    XK_Hangul_E = $0ec4;    

    XK_Hangul_YEO = $0ec5;    

    XK_Hangul_YE = $0ec6;    

    XK_Hangul_O = $0ec7;    

    XK_Hangul_WA = $0ec8;    

    XK_Hangul_WAE = $0ec9;    

    XK_Hangul_OE = $0eca;    

    XK_Hangul_YO = $0ecb;    

    XK_Hangul_U = $0ecc;    

    XK_Hangul_WEO = $0ecd;    

    XK_Hangul_WE = $0ece;    

    XK_Hangul_WI = $0ecf;    

    XK_Hangul_YU = $0ed0;    

    XK_Hangul_EU = $0ed1;    

    XK_Hangul_YI = $0ed2;    

    XK_Hangul_I = $0ed3;    


    XK_Hangul_J_Kiyeog = $0ed4;    

    XK_Hangul_J_SsangKiyeog = $0ed5;    

    XK_Hangul_J_KiyeogSios = $0ed6;    

    XK_Hangul_J_Nieun = $0ed7;    

    XK_Hangul_J_NieunJieuj = $0ed8;    

    XK_Hangul_J_NieunHieuh = $0ed9;    

    XK_Hangul_J_Dikeud = $0eda;    

    XK_Hangul_J_Rieul = $0edb;    

    XK_Hangul_J_RieulKiyeog = $0edc;    

    XK_Hangul_J_RieulMieum = $0edd;    

    XK_Hangul_J_RieulPieub = $0ede;    

    XK_Hangul_J_RieulSios = $0edf;    

    XK_Hangul_J_RieulTieut = $0ee0;    

    XK_Hangul_J_RieulPhieuf = $0ee1;    

    XK_Hangul_J_RieulHieuh = $0ee2;    

    XK_Hangul_J_Mieum = $0ee3;    

    XK_Hangul_J_Pieub = $0ee4;    

    XK_Hangul_J_PieubSios = $0ee5;    

    XK_Hangul_J_Sios = $0ee6;    

    XK_Hangul_J_SsangSios = $0ee7;    

    XK_Hangul_J_Ieung = $0ee8;    

    XK_Hangul_J_Jieuj = $0ee9;    

    XK_Hangul_J_Cieuc = $0eea;    

    XK_Hangul_J_Khieuq = $0eeb;    

    XK_Hangul_J_Tieut = $0eec;    

    XK_Hangul_J_Phieuf = $0eed;    

    XK_Hangul_J_Hieuh = $0eee;    


    XK_Hangul_RieulYeorinHieuh = $0eef;    

    XK_Hangul_SunkyeongeumMieum = $0ef0;    

    XK_Hangul_SunkyeongeumPieub = $0ef1;    

    XK_Hangul_PanSios = $0ef2;    

    XK_Hangul_KkogjiDalrinIeung = $0ef3;    

    XK_Hangul_SunkyeongeumPhieuf = $0ef4;    

    XK_Hangul_YeorinHieuh = $0ef5;    


    XK_Hangul_AraeA = $0ef6;    

    XK_Hangul_AraeAE = $0ef7;    


    XK_Hangul_J_PanSios = $0ef8;    

    XK_Hangul_J_KkogjiDalrinIeung = $0ef9;    

    XK_Hangul_J_YeorinHieuh = $0efa;    


    XK_Korean_Won = $0eff;    
{$endif}


{$ifdef XK_ARMENIAN}


  const
    XK_Armenian_ligature_ew = $1000587;    

    XK_Armenian_full_stop = $1000589;    

    XK_Armenian_verjaket = $1000589;    

    XK_Armenian_separation_mark = $100055d;    

    XK_Armenian_but = $100055d;    

    XK_Armenian_hyphen = $100058a;    

    XK_Armenian_yentamna = $100058a;    

    XK_Armenian_exclam = $100055c;    

    XK_Armenian_amanak = $100055c;    

    XK_Armenian_accent = $100055b;    

    XK_Armenian_shesht = $100055b;    

    XK_Armenian_question = $100055e;    

    XK_Armenian_paruyk = $100055e;    

    XK_Armenian_AYB = $1000531;    

    XK_Armenian_ayb = $1000561;    

    XK_Armenian_BEN = $1000532;    

    XK_Armenian_ben = $1000562;    

    XK_Armenian_GIM = $1000533;    

    XK_Armenian_gim = $1000563;    

    XK_Armenian_DA = $1000534;    

    XK_Armenian_da = $1000564;    

    XK_Armenian_YECH = $1000535;    

    XK_Armenian_yech = $1000565;    

    XK_Armenian_ZA = $1000536;    

    XK_Armenian_za = $1000566;    

    XK_Armenian_E = $1000537;    

    XK_Armenian_e = $1000567;    

    XK_Armenian_AT = $1000538;    

    XK_Armenian_at = $1000568;    

    XK_Armenian_TO = $1000539;    

    XK_Armenian_to = $1000569;    

    XK_Armenian_ZHE = $100053a;    

    XK_Armenian_zhe = $100056a;    

    XK_Armenian_INI = $100053b;    

    XK_Armenian_ini = $100056b;    

    XK_Armenian_LYUN = $100053c;    

    XK_Armenian_lyun = $100056c;    

    XK_Armenian_KHE = $100053d;    

    XK_Armenian_khe = $100056d;    

    XK_Armenian_TSA = $100053e;    

    XK_Armenian_tsa = $100056e;    

    XK_Armenian_KEN = $100053f;    

    XK_Armenian_ken = $100056f;    

    XK_Armenian_HO = $1000540;    

    XK_Armenian_ho = $1000570;    

    XK_Armenian_DZA = $1000541;    

    XK_Armenian_dza = $1000571;    

    XK_Armenian_GHAT = $1000542;    

    XK_Armenian_ghat = $1000572;    

    XK_Armenian_TCHE = $1000543;    

    XK_Armenian_tche = $1000573;    

    XK_Armenian_MEN = $1000544;    

    XK_Armenian_men = $1000574;    

    XK_Armenian_HI = $1000545;    

    XK_Armenian_hi = $1000575;    

    XK_Armenian_NU = $1000546;    

    XK_Armenian_nu = $1000576;    

    XK_Armenian_SHA = $1000547;    

    XK_Armenian_sha = $1000577;    

    XK_Armenian_VO = $1000548;    

    XK_Armenian_vo = $1000578;    

    XK_Armenian_CHA = $1000549;    

    XK_Armenian_cha = $1000579;    

    XK_Armenian_PE = $100054a;    

    XK_Armenian_pe = $100057a;    

    XK_Armenian_JE = $100054b;    

    XK_Armenian_je = $100057b;    

    XK_Armenian_RA = $100054c;    

    XK_Armenian_ra = $100057c;    

    XK_Armenian_SE = $100054d;    

    XK_Armenian_se = $100057d;    

    XK_Armenian_VEV = $100054e;    

    XK_Armenian_vev = $100057e;    

    XK_Armenian_TYUN = $100054f;    

    XK_Armenian_tyun = $100057f;    

    XK_Armenian_RE = $1000550;    

    XK_Armenian_re = $1000580;    

    XK_Armenian_TSO = $1000551;    

    XK_Armenian_tso = $1000581;    

    XK_Armenian_VYUN = $1000552;    

    XK_Armenian_vyun = $1000582;    

    XK_Armenian_PYUR = $1000553;    

    XK_Armenian_pyur = $1000583;    

    XK_Armenian_KE = $1000554;    

    XK_Armenian_ke = $1000584;    

    XK_Armenian_O = $1000555;    

    XK_Armenian_o = $1000585;    

    XK_Armenian_FE = $1000556;    

    XK_Armenian_fe = $1000586;    

    XK_Armenian_apostrophe = $100055a;    
{$endif}


{$ifdef XK_GEORGIAN}


  const
    XK_Georgian_an = $10010d0;    

    XK_Georgian_ban = $10010d1;    

    XK_Georgian_gan = $10010d2;    

    XK_Georgian_don = $10010d3;    

    XK_Georgian_en = $10010d4;    

    XK_Georgian_vin = $10010d5;    

    XK_Georgian_zen = $10010d6;    

    XK_Georgian_tan = $10010d7;    

    XK_Georgian_in = $10010d8;    

    XK_Georgian_kan = $10010d9;    

    XK_Georgian_las = $10010da;    

    XK_Georgian_man = $10010db;    

    XK_Georgian_nar = $10010dc;    

    XK_Georgian_on = $10010dd;    

    XK_Georgian_par = $10010de;    

    XK_Georgian_zhar = $10010df;    

    XK_Georgian_rae = $10010e0;    

    XK_Georgian_san = $10010e1;    

    XK_Georgian_tar = $10010e2;    

    XK_Georgian_un = $10010e3;    

    XK_Georgian_phar = $10010e4;    

    XK_Georgian_khar = $10010e5;    

    XK_Georgian_ghan = $10010e6;    

    XK_Georgian_qar = $10010e7;    

    XK_Georgian_shin = $10010e8;    

    XK_Georgian_chin = $10010e9;    

    XK_Georgian_can = $10010ea;    

    XK_Georgian_jil = $10010eb;    

    XK_Georgian_cil = $10010ec;    

    XK_Georgian_char = $10010ed;    

    XK_Georgian_xan = $10010ee;    

    XK_Georgian_jhan = $10010ef;    

    XK_Georgian_hae = $10010f0;    

    XK_Georgian_he = $10010f1;    

    XK_Georgian_hie = $10010f2;    

    XK_Georgian_we = $10010f3;    

    XK_Georgian_har = $10010f4;    

    XK_Georgian_hoe = $10010f5;    

    XK_Georgian_fi = $10010f6;    
{$endif}


{$ifdef XK_CAUCASUS}



  const
    XK_Xabovedot = $1001e8a;    

    XK_Ibreve = $100012c;    

    XK_Zstroke = $10001b5;    

    XK_Gcaron = $10001e6;    

    XK_Ocaron = $10001d1;    

    XK_Obarred = $100019f;    

    XK_xabovedot = $1001e8b;    

    XK_ibreve = $100012d;    

    XK_zstroke = $10001b6;    

    XK_gcaron = $10001e7;    

    XK_ocaron = $10001d2;    

    XK_obarred = $1000275;    

    XK_SCHWA = $100018f;    

    XK_schwa = $1000259;    

    XK_EZH = $10001b7;    

    XK_ezh = $1000292;    



    XK_Lbelowdot = $1001e36;    

    XK_lbelowdot = $1001e37;    
{$endif}


{$ifdef XK_VIETNAMESE}


  const
    XK_Abelowdot = $1001ea0;    

    XK_abelowdot = $1001ea1;    

    XK_Ahook = $1001ea2;    

    XK_ahook = $1001ea3;    

    XK_Acircumflexacute = $1001ea4;    

    XK_acircumflexacute = $1001ea5;    

    XK_Acircumflexgrave = $1001ea6;    

    XK_acircumflexgrave = $1001ea7;    

    XK_Acircumflexhook = $1001ea8;    

    XK_acircumflexhook = $1001ea9;    

    XK_Acircumflextilde = $1001eaa;    

    XK_acircumflextilde = $1001eab;    

    XK_Acircumflexbelowdot = $1001eac;    

    XK_acircumflexbelowdot = $1001ead;    

    XK_Abreveacute = $1001eae;    

    XK_abreveacute = $1001eaf;    

    XK_Abrevegrave = $1001eb0;    

    XK_abrevegrave = $1001eb1;    

    XK_Abrevehook = $1001eb2;    

    XK_abrevehook = $1001eb3;    

    XK_Abrevetilde = $1001eb4;    

    XK_abrevetilde = $1001eb5;    

    XK_Abrevebelowdot = $1001eb6;    

    XK_abrevebelowdot = $1001eb7;    

    XK_Ebelowdot = $1001eb8;    

    XK_ebelowdot = $1001eb9;    

    XK_Ehook = $1001eba;    

    XK_ehook = $1001ebb;    

    XK_Etilde = $1001ebc;    

    XK_etilde = $1001ebd;    

    XK_Ecircumflexacute = $1001ebe;    

    XK_ecircumflexacute = $1001ebf;    

    XK_Ecircumflexgrave = $1001ec0;    

    XK_ecircumflexgrave = $1001ec1;    

    XK_Ecircumflexhook = $1001ec2;    

    XK_ecircumflexhook = $1001ec3;    

    XK_Ecircumflextilde = $1001ec4;    

    XK_ecircumflextilde = $1001ec5;    

    XK_Ecircumflexbelowdot = $1001ec6;    

    XK_ecircumflexbelowdot = $1001ec7;    

    XK_Ihook = $1001ec8;    

    XK_ihook = $1001ec9;    

    XK_Ibelowdot = $1001eca;    

    XK_ibelowdot = $1001ecb;    

    XK_Obelowdot = $1001ecc;    

    XK_obelowdot = $1001ecd;    

    XK_Ohook = $1001ece;    

    XK_ohook = $1001ecf;    

    XK_Ocircumflexacute = $1001ed0;    

    XK_ocircumflexacute = $1001ed1;    

    XK_Ocircumflexgrave = $1001ed2;    

    XK_ocircumflexgrave = $1001ed3;    

    XK_Ocircumflexhook = $1001ed4;    

    XK_ocircumflexhook = $1001ed5;    

    XK_Ocircumflextilde = $1001ed6;    

    XK_ocircumflextilde = $1001ed7;    

    XK_Ocircumflexbelowdot = $1001ed8;    

    XK_ocircumflexbelowdot = $1001ed9;    

    XK_Ohornacute = $1001eda;    

    XK_ohornacute = $1001edb;    

    XK_Ohorngrave = $1001edc;    

    XK_ohorngrave = $1001edd;    

    XK_Ohornhook = $1001ede;    

    XK_ohornhook = $1001edf;    

    XK_Ohorntilde = $1001ee0;    

    XK_ohorntilde = $1001ee1;    

    XK_Ohornbelowdot = $1001ee2;    

    XK_ohornbelowdot = $1001ee3;    

    XK_Ubelowdot = $1001ee4;    

    XK_ubelowdot = $1001ee5;    

    XK_Uhook = $1001ee6;    

    XK_uhook = $1001ee7;    

    XK_Uhornacute = $1001ee8;    

    XK_uhornacute = $1001ee9;    

    XK_Uhorngrave = $1001eea;    

    XK_uhorngrave = $1001eeb;    

    XK_Uhornhook = $1001eec;    

    XK_uhornhook = $1001eed;    

    XK_Uhorntilde = $1001eee;    

    XK_uhorntilde = $1001eef;    

    XK_Uhornbelowdot = $1001ef0;    

    XK_uhornbelowdot = $1001ef1;    

    XK_Ybelowdot = $1001ef4;    

    XK_ybelowdot = $1001ef5;    

    XK_Yhook = $1001ef6;    

    XK_yhook = $1001ef7;    

    XK_Ytilde = $1001ef8;    

    XK_ytilde = $1001ef9;    

    XK_Ohorn = $10001a0;    

    XK_ohorn = $10001a1;    

    XK_Uhorn = $10001af;    

    XK_uhorn = $10001b0;    

    XK_combining_tilde = $1000303;    

    XK_combining_grave = $1000300;    

    XK_combining_acute = $1000301;    

    XK_combining_hook = $1000309;    

    XK_combining_belowdot = $1000323;    
{$endif}

{$ifdef XK_CURRENCY}


  const
    XK_EcuSign = $10020a0;    

    XK_ColonSign = $10020a1;    

    XK_CruzeiroSign = $10020a2;    

    XK_FFrancSign = $10020a3;    

    XK_LiraSign = $10020a4;    

    XK_MillSign = $10020a5;    

    XK_NairaSign = $10020a6;    

    XK_PesetaSign = $10020a7;    

    XK_RupeeSign = $10020a8;    

    XK_WonSign = $10020a9;    

    XK_NewSheqelSign = $10020aa;    

    XK_DongSign = $10020ab;    

    XK_EuroSign = $20ac;    
{$endif}

{$ifdef XK_MATHEMATICAL}



  const
    XK_zerosuperior = $1002070;    

    XK_foursuperior = $1002074;    

    XK_fivesuperior = $1002075;    

    XK_sixsuperior = $1002076;    

    XK_sevensuperior = $1002077;    

    XK_eightsuperior = $1002078;    

    XK_ninesuperior = $1002079;    

    XK_zerosubscript = $1002080;    

    XK_onesubscript = $1002081;    

    XK_twosubscript = $1002082;    

    XK_threesubscript = $1002083;    

    XK_foursubscript = $1002084;    

    XK_fivesubscript = $1002085;    

    XK_sixsubscript = $1002086;    

    XK_sevensubscript = $1002087;    

    XK_eightsubscript = $1002088;    

    XK_ninesubscript = $1002089;    

    XK_partdifferential = $1002202;    

    XK_emptyset = $1002205;    

    XK_elementof = $1002208;    

    XK_notelementof = $1002209;    

    XK_containsas = $100220B;    

    XK_squareroot = $100221A;    

    XK_cuberoot = $100221B;    

    XK_fourthroot = $100221C;    

    XK_dintegral = $100222C;    

    XK_tintegral = $100222D;    

    XK_because = $1002235;    

    XK_approxeq = $1002248;    

    XK_notapproxeq = $1002247;    

    XK_notidentical = $1002262;    

    XK_stricteq = $1002263;    
{$endif}

{$ifdef XK_BRAILLE}

  const
    XK_braille_dot_1 = $fff1;    
    XK_braille_dot_2 = $fff2;    
    XK_braille_dot_3 = $fff3;    
    XK_braille_dot_4 = $fff4;    
    XK_braille_dot_5 = $fff5;    
    XK_braille_dot_6 = $fff6;    
    XK_braille_dot_7 = $fff7;    
    XK_braille_dot_8 = $fff8;    
    XK_braille_dot_9 = $fff9;    
    XK_braille_dot_10 = $fffa;    

    XK_braille_blank = $1002800;    

    XK_braille_dots_1 = $1002801;    

    XK_braille_dots_2 = $1002802;    

    XK_braille_dots_12 = $1002803;    

    XK_braille_dots_3 = $1002804;    

    XK_braille_dots_13 = $1002805;    

    XK_braille_dots_23 = $1002806;    

    XK_braille_dots_123 = $1002807;    

    XK_braille_dots_4 = $1002808;    

    XK_braille_dots_14 = $1002809;    

    XK_braille_dots_24 = $100280a;    

    XK_braille_dots_124 = $100280b;    

    XK_braille_dots_34 = $100280c;    

    XK_braille_dots_134 = $100280d;    

    XK_braille_dots_234 = $100280e;    

    XK_braille_dots_1234 = $100280f;    

    XK_braille_dots_5 = $1002810;    

    XK_braille_dots_15 = $1002811;    

    XK_braille_dots_25 = $1002812;    

    XK_braille_dots_125 = $1002813;    

    XK_braille_dots_35 = $1002814;    

    XK_braille_dots_135 = $1002815;    

    XK_braille_dots_235 = $1002816;    

    XK_braille_dots_1235 = $1002817;    

    XK_braille_dots_45 = $1002818;    

    XK_braille_dots_145 = $1002819;    

    XK_braille_dots_245 = $100281a;    

    XK_braille_dots_1245 = $100281b;    

    XK_braille_dots_345 = $100281c;    

    XK_braille_dots_1345 = $100281d;    

    XK_braille_dots_2345 = $100281e;    

    XK_braille_dots_12345 = $100281f;    

    XK_braille_dots_6 = $1002820;    

    XK_braille_dots_16 = $1002821;    

    XK_braille_dots_26 = $1002822;    

    XK_braille_dots_126 = $1002823;    

    XK_braille_dots_36 = $1002824;    

    XK_braille_dots_136 = $1002825;    

    XK_braille_dots_236 = $1002826;    

    XK_braille_dots_1236 = $1002827;    

    XK_braille_dots_46 = $1002828;    

    XK_braille_dots_146 = $1002829;    

    XK_braille_dots_246 = $100282a;    

    XK_braille_dots_1246 = $100282b;    

    XK_braille_dots_346 = $100282c;    

    XK_braille_dots_1346 = $100282d;    

    XK_braille_dots_2346 = $100282e;    

    XK_braille_dots_12346 = $100282f;    

    XK_braille_dots_56 = $1002830;    

    XK_braille_dots_156 = $1002831;    

    XK_braille_dots_256 = $1002832;    

    XK_braille_dots_1256 = $1002833;    

    XK_braille_dots_356 = $1002834;    

    XK_braille_dots_1356 = $1002835;    

    XK_braille_dots_2356 = $1002836;    

    XK_braille_dots_12356 = $1002837;    

    XK_braille_dots_456 = $1002838;    

    XK_braille_dots_1456 = $1002839;    

    XK_braille_dots_2456 = $100283a;    

    XK_braille_dots_12456 = $100283b;    

    XK_braille_dots_3456 = $100283c;    

    XK_braille_dots_13456 = $100283d;    

    XK_braille_dots_23456 = $100283e;    

    XK_braille_dots_123456 = $100283f;    

    XK_braille_dots_7 = $1002840;    

    XK_braille_dots_17 = $1002841;    

    XK_braille_dots_27 = $1002842;    

    XK_braille_dots_127 = $1002843;    

    XK_braille_dots_37 = $1002844;    

    XK_braille_dots_137 = $1002845;    

    XK_braille_dots_237 = $1002846;    

    XK_braille_dots_1237 = $1002847;    

    XK_braille_dots_47 = $1002848;    

    XK_braille_dots_147 = $1002849;    

    XK_braille_dots_247 = $100284a;    

    XK_braille_dots_1247 = $100284b;    

    XK_braille_dots_347 = $100284c;    

    XK_braille_dots_1347 = $100284d;    

    XK_braille_dots_2347 = $100284e;    

    XK_braille_dots_12347 = $100284f;    

    XK_braille_dots_57 = $1002850;    

    XK_braille_dots_157 = $1002851;    

    XK_braille_dots_257 = $1002852;    

    XK_braille_dots_1257 = $1002853;    

    XK_braille_dots_357 = $1002854;    

    XK_braille_dots_1357 = $1002855;    

    XK_braille_dots_2357 = $1002856;    

    XK_braille_dots_12357 = $1002857;    

    XK_braille_dots_457 = $1002858;    

    XK_braille_dots_1457 = $1002859;    

    XK_braille_dots_2457 = $100285a;    

    XK_braille_dots_12457 = $100285b;    

    XK_braille_dots_3457 = $100285c;    

    XK_braille_dots_13457 = $100285d;    

    XK_braille_dots_23457 = $100285e;    

    XK_braille_dots_123457 = $100285f;    

    XK_braille_dots_67 = $1002860;    

    XK_braille_dots_167 = $1002861;    

    XK_braille_dots_267 = $1002862;    

    XK_braille_dots_1267 = $1002863;    

    XK_braille_dots_367 = $1002864;    

    XK_braille_dots_1367 = $1002865;    

    XK_braille_dots_2367 = $1002866;    

    XK_braille_dots_12367 = $1002867;    

    XK_braille_dots_467 = $1002868;    

    XK_braille_dots_1467 = $1002869;    

    XK_braille_dots_2467 = $100286a;    

    XK_braille_dots_12467 = $100286b;    

    XK_braille_dots_3467 = $100286c;    

    XK_braille_dots_13467 = $100286d;    

    XK_braille_dots_23467 = $100286e;    

    XK_braille_dots_123467 = $100286f;    

    XK_braille_dots_567 = $1002870;    

    XK_braille_dots_1567 = $1002871;    

    XK_braille_dots_2567 = $1002872;    

    XK_braille_dots_12567 = $1002873;    

    XK_braille_dots_3567 = $1002874;    

    XK_braille_dots_13567 = $1002875;    

    XK_braille_dots_23567 = $1002876;    

    XK_braille_dots_123567 = $1002877;    

    XK_braille_dots_4567 = $1002878;    

    XK_braille_dots_14567 = $1002879;    

    XK_braille_dots_24567 = $100287a;    

    XK_braille_dots_124567 = $100287b;    

    XK_braille_dots_34567 = $100287c;    

    XK_braille_dots_134567 = $100287d;    

    XK_braille_dots_234567 = $100287e;    

    XK_braille_dots_1234567 = $100287f;    

    XK_braille_dots_8 = $1002880;    

    XK_braille_dots_18 = $1002881;    

    XK_braille_dots_28 = $1002882;    

    XK_braille_dots_128 = $1002883;    

    XK_braille_dots_38 = $1002884;    

    XK_braille_dots_138 = $1002885;    

    XK_braille_dots_238 = $1002886;    

    XK_braille_dots_1238 = $1002887;    

    XK_braille_dots_48 = $1002888;    

    XK_braille_dots_148 = $1002889;    

    XK_braille_dots_248 = $100288a;    

    XK_braille_dots_1248 = $100288b;    

    XK_braille_dots_348 = $100288c;    

    XK_braille_dots_1348 = $100288d;    

    XK_braille_dots_2348 = $100288e;    

    XK_braille_dots_12348 = $100288f;    

    XK_braille_dots_58 = $1002890;    

    XK_braille_dots_158 = $1002891;    

    XK_braille_dots_258 = $1002892;    

    XK_braille_dots_1258 = $1002893;    

    XK_braille_dots_358 = $1002894;    

    XK_braille_dots_1358 = $1002895;    

    XK_braille_dots_2358 = $1002896;    

    XK_braille_dots_12358 = $1002897;    

    XK_braille_dots_458 = $1002898;    

    XK_braille_dots_1458 = $1002899;    

    XK_braille_dots_2458 = $100289a;    

    XK_braille_dots_12458 = $100289b;    

    XK_braille_dots_3458 = $100289c;    

    XK_braille_dots_13458 = $100289d;    

    XK_braille_dots_23458 = $100289e;    

    XK_braille_dots_123458 = $100289f;    

    XK_braille_dots_68 = $10028a0;    

    XK_braille_dots_168 = $10028a1;    

    XK_braille_dots_268 = $10028a2;    

    XK_braille_dots_1268 = $10028a3;    

    XK_braille_dots_368 = $10028a4;    

    XK_braille_dots_1368 = $10028a5;    

    XK_braille_dots_2368 = $10028a6;    

    XK_braille_dots_12368 = $10028a7;    

    XK_braille_dots_468 = $10028a8;    

    XK_braille_dots_1468 = $10028a9;    

    XK_braille_dots_2468 = $10028aa;    

    XK_braille_dots_12468 = $10028ab;    

    XK_braille_dots_3468 = $10028ac;    

    XK_braille_dots_13468 = $10028ad;    

    XK_braille_dots_23468 = $10028ae;    

    XK_braille_dots_123468 = $10028af;    

    XK_braille_dots_568 = $10028b0;    

    XK_braille_dots_1568 = $10028b1;    

    XK_braille_dots_2568 = $10028b2;    

    XK_braille_dots_12568 = $10028b3;    

    XK_braille_dots_3568 = $10028b4;    

    XK_braille_dots_13568 = $10028b5;    

    XK_braille_dots_23568 = $10028b6;    

    XK_braille_dots_123568 = $10028b7;    

    XK_braille_dots_4568 = $10028b8;    

    XK_braille_dots_14568 = $10028b9;    

    XK_braille_dots_24568 = $10028ba;    

    XK_braille_dots_124568 = $10028bb;    

    XK_braille_dots_34568 = $10028bc;    

    XK_braille_dots_134568 = $10028bd;    

    XK_braille_dots_234568 = $10028be;    

    XK_braille_dots_1234568 = $10028bf;    

    XK_braille_dots_78 = $10028c0;    

    XK_braille_dots_178 = $10028c1;    

    XK_braille_dots_278 = $10028c2;    

    XK_braille_dots_1278 = $10028c3;    

    XK_braille_dots_378 = $10028c4;    

    XK_braille_dots_1378 = $10028c5;    

    XK_braille_dots_2378 = $10028c6;    

    XK_braille_dots_12378 = $10028c7;    

    XK_braille_dots_478 = $10028c8;    

    XK_braille_dots_1478 = $10028c9;    

    XK_braille_dots_2478 = $10028ca;    

    XK_braille_dots_12478 = $10028cb;    

    XK_braille_dots_3478 = $10028cc;    

    XK_braille_dots_13478 = $10028cd;    

    XK_braille_dots_23478 = $10028ce;    

    XK_braille_dots_123478 = $10028cf;    

    XK_braille_dots_578 = $10028d0;    

    XK_braille_dots_1578 = $10028d1;    

    XK_braille_dots_2578 = $10028d2;    

    XK_braille_dots_12578 = $10028d3;    

    XK_braille_dots_3578 = $10028d4;    

    XK_braille_dots_13578 = $10028d5;    

    XK_braille_dots_23578 = $10028d6;    

    XK_braille_dots_123578 = $10028d7;    

    XK_braille_dots_4578 = $10028d8;    

    XK_braille_dots_14578 = $10028d9;    

    XK_braille_dots_24578 = $10028da;    

    XK_braille_dots_124578 = $10028db;    

    XK_braille_dots_34578 = $10028dc;    

    XK_braille_dots_134578 = $10028dd;    

    XK_braille_dots_234578 = $10028de;    

    XK_braille_dots_1234578 = $10028df;    

    XK_braille_dots_678 = $10028e0;    

    XK_braille_dots_1678 = $10028e1;    

    XK_braille_dots_2678 = $10028e2;    

    XK_braille_dots_12678 = $10028e3;    

    XK_braille_dots_3678 = $10028e4;    

    XK_braille_dots_13678 = $10028e5;    

    XK_braille_dots_23678 = $10028e6;    

    XK_braille_dots_123678 = $10028e7;    

    XK_braille_dots_4678 = $10028e8;    

    XK_braille_dots_14678 = $10028e9;    

    XK_braille_dots_24678 = $10028ea;    

    XK_braille_dots_124678 = $10028eb;    

    XK_braille_dots_34678 = $10028ec;    

    XK_braille_dots_134678 = $10028ed;    

    XK_braille_dots_234678 = $10028ee;    

    XK_braille_dots_1234678 = $10028ef;    

    XK_braille_dots_5678 = $10028f0;    

    XK_braille_dots_15678 = $10028f1;    

    XK_braille_dots_25678 = $10028f2;    

    XK_braille_dots_125678 = $10028f3;    

    XK_braille_dots_35678 = $10028f4;    

    XK_braille_dots_135678 = $10028f5;    

    XK_braille_dots_235678 = $10028f6;    

    XK_braille_dots_1235678 = $10028f7;    

    XK_braille_dots_45678 = $10028f8;    

    XK_braille_dots_145678 = $10028f9;    

    XK_braille_dots_245678 = $10028fa;    

    XK_braille_dots_1245678 = $10028fb;    

    XK_braille_dots_345678 = $10028fc;    

    XK_braille_dots_1345678 = $10028fd;    

    XK_braille_dots_2345678 = $10028fe;    

    XK_braille_dots_12345678 = $10028ff;    
{$endif}


{$ifdef XK_SINHALA}


  const
    XK_Sinh_ng = $1000d82;    

    XK_Sinh_h2 = $1000d83;    

    XK_Sinh_a = $1000d85;    

    XK_Sinh_aa = $1000d86;    

    XK_Sinh_ae = $1000d87;    

    XK_Sinh_aee = $1000d88;    

    XK_Sinh_i = $1000d89;    

    XK_Sinh_ii = $1000d8a;    

    XK_Sinh_u = $1000d8b;    

    XK_Sinh_uu = $1000d8c;    

    XK_Sinh_ri = $1000d8d;    

    XK_Sinh_rii = $1000d8e;    

    XK_Sinh_lu = $1000d8f;    

    XK_Sinh_luu = $1000d90;    

    XK_Sinh_e = $1000d91;    

    XK_Sinh_ee = $1000d92;    

    XK_Sinh_ai = $1000d93;    

    XK_Sinh_o = $1000d94;    

    XK_Sinh_oo = $1000d95;    

    XK_Sinh_au = $1000d96;    

    XK_Sinh_ka = $1000d9a;    

    XK_Sinh_kha = $1000d9b;    

    XK_Sinh_ga = $1000d9c;    

    XK_Sinh_gha = $1000d9d;    

    XK_Sinh_ng2 = $1000d9e;    

    XK_Sinh_nga = $1000d9f;    

    XK_Sinh_ca = $1000da0;    

    XK_Sinh_cha = $1000da1;    

    XK_Sinh_ja = $1000da2;    

    XK_Sinh_jha = $1000da3;    

    XK_Sinh_nya = $1000da4;    

    XK_Sinh_jnya = $1000da5;    

    XK_Sinh_nja = $1000da6;    

    XK_Sinh_tta = $1000da7;    

    XK_Sinh_ttha = $1000da8;    

    XK_Sinh_dda = $1000da9;    

    XK_Sinh_ddha = $1000daa;    

    XK_Sinh_nna = $1000dab;    

    XK_Sinh_ndda = $1000dac;    

    XK_Sinh_tha = $1000dad;    

    XK_Sinh_thha = $1000dae;    

    XK_Sinh_dha = $1000daf;    

    XK_Sinh_dhha = $1000db0;    

    XK_Sinh_na = $1000db1;    

    XK_Sinh_ndha = $1000db3;    

    XK_Sinh_pa = $1000db4;    

    XK_Sinh_pha = $1000db5;    

    XK_Sinh_ba = $1000db6;    

    XK_Sinh_bha = $1000db7;    

    XK_Sinh_ma = $1000db8;    

    XK_Sinh_mba = $1000db9;    

    XK_Sinh_ya = $1000dba;    

    XK_Sinh_ra = $1000dbb;    

    XK_Sinh_la = $1000dbd;    

    XK_Sinh_va = $1000dc0;    

    XK_Sinh_sha = $1000dc1;    

    XK_Sinh_ssha = $1000dc2;    

    XK_Sinh_sa = $1000dc3;    

    XK_Sinh_ha = $1000dc4;    

    XK_Sinh_lla = $1000dc5;    

    XK_Sinh_fa = $1000dc6;    

    XK_Sinh_al = $1000dca;    

    XK_Sinh_aa2 = $1000dcf;    

    XK_Sinh_ae2 = $1000dd0;    

    XK_Sinh_aee2 = $1000dd1;    

    XK_Sinh_i2 = $1000dd2;    

    XK_Sinh_ii2 = $1000dd3;    

    XK_Sinh_u2 = $1000dd4;    

    XK_Sinh_uu2 = $1000dd6;    

    XK_Sinh_ru2 = $1000dd8;    

    XK_Sinh_e2 = $1000dd9;    

    XK_Sinh_ee2 = $1000dda;    

    XK_Sinh_ai2 = $1000ddb;    

    XK_Sinh_o2 = $1000ddc;    

    XK_Sinh_oo2 = $1000ddd;    

    XK_Sinh_au2 = $1000dde;    

    XK_Sinh_lu2 = $1000ddf;    

    XK_Sinh_ruu2 = $1000df2;    

    XK_Sinh_luu2 = $1000df3;    

    XK_Sinh_kunddaliya = $1000df4;    
{$endif}


implementation


end.
