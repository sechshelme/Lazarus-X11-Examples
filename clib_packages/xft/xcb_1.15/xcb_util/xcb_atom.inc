{$IFDEF read_interface}


function xcb_atom_name_by_screen(base: pchar; screen: Tuint8_t): pchar; cdecl; external libxcb_util;
function xcb_atom_name_by_resource(base: pchar; resource: Tuint32_t): pchar; cdecl; external libxcb_util;
function xcb_atom_name_unique(base: pchar; id: Tuint32_t): pchar; cdecl; external libxcb_util;

// === Konventiert am: 9-10-25 19:41:20 ===


{$ENDIF read_interface}


{$IFDEF read_implementation}



{$ENDIF read_implementation}
