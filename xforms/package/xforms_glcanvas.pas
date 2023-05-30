unit xforms_glcanvas;

interface

uses
  x,
  xutil,
  glx,
  xforms_forms;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  PGLXContext = ^TGLXContext;

function fl_create_glcanvas(_type: longint; x: TFL_Coord; y: TFL_Coord; w: TFL_Coord; h: TFL_Coord; _label: PChar): PFL_OBJECT; cdecl; external;
(* Const before type ignored *)
function fl_add_glcanvas(_type: longint; x: TFL_Coord; y: TFL_Coord; w: TFL_Coord; h: TFL_Coord; _label: PChar): PFL_OBJECT; cdecl; external;
(* Const before type ignored *)
procedure fl_set_glcanvas_defaults(config: Plongint); cdecl; external;
procedure fl_get_glcanvas_defaults(cconfig: Plongint); cdecl; external;
(* Const before type ignored *)
procedure fl_set_glcanvas_attributes(ob: PFL_OBJECT; config: Plongint); cdecl; external;
procedure fl_get_glcanvas_attributes(ob: PFL_OBJECT; attributes: Plongint); cdecl; external;
procedure fl_set_glcanvas_direct(ob: PFL_OBJECT; direct: longint); cdecl; external;
procedure fl_activate_glcanvas(ob: PFL_OBJECT); cdecl; external;
function fl_get_glcanvas_xvisualinfo(ob: PFL_OBJECT): PXVisualInfo; cdecl; external;
function fl_get_glcanvas_context(ob: PFL_OBJECT): TGLXContext; cdecl; external;
function fl_glwincreate(config: Plongint; context: PGLXContext; w: longint; h: longint): TWindow; cdecl; external;
function fl_glwinopen(config: Plongint; context: PGLXContext; w: longint; h: longint): TWindow; cdecl; external;

implementation

end.
