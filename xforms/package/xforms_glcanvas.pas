
unit xforms_glcanvas;
interface

{
  Automatically converted by H2Pas 1.0.0 from xforms_glcanvas.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    xforms_glcanvas.h
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

Type
Pchar  = ^char;
PFL_OBJECT  = ^FL_OBJECT;
PGLXContext  = ^GLXContext;
Plongint  = ^longint;
PXVisualInfo  = ^XVisualInfo;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{$ifndef FL_GLCANVAS_H}
{$define FL_GLCANVAS_H}
{#if defined( __cplusplus ) }
{extern "C" }
{ }
{#endif }
{#include <GL/glx.h> }
{ OpenGL canvases  }
(* Const before type ignored *)

function fl_create_glcanvas(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
           _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_glcanvas(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
           _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
procedure fl_set_glcanvas_defaults(config:Plongint);cdecl;external;
procedure fl_get_glcanvas_defaults(cconfig:Plongint);cdecl;external;
(* Const before type ignored *)
procedure fl_set_glcanvas_attributes(ob:PFL_OBJECT; config:Plongint);cdecl;external;
procedure fl_get_glcanvas_attributes(ob:PFL_OBJECT; attributes:Plongint);cdecl;external;
procedure fl_set_glcanvas_direct(ob:PFL_OBJECT; direct:longint);cdecl;external;
procedure fl_activate_glcanvas(ob:PFL_OBJECT);cdecl;external;
function fl_get_glcanvas_xvisualinfo(ob:PFL_OBJECT):PXVisualInfo;cdecl;external;
function fl_get_glcanvas_context(ob:PFL_OBJECT):TGLXContext;cdecl;external;
function fl_glwincreate(config:Plongint; context:PGLXContext; w:longint; h:longint):TWindow;cdecl;external;
function fl_glwinopen(config:Plongint; context:PGLXContext; w:longint; h:longint):TWindow;cdecl;external;
{$if defined( __cplusplus )}
(* error 
}
{$endif}
{$endif}
{ NOT FL_GLCANVAS_H  }

implementation


end.
