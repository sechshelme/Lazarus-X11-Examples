
unit xforms_forms;
interface

{
  Automatically converted by H2Pas 1.0.0 from xforms_forms.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    xforms_forms.h
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
    Pblablabla  = ^blablabla;
    Pbyte  = ^byte;
    Pchar  = ^char;
    PDisplay  = ^Display;
    Pdouble  = ^double;
    Pdword  = ^dword;
    PFD_Any  = ^FD_Any;
    PFD_CMDLOG  = ^FD_CMDLOG;
    PFD_FSELECTOR  = ^FD_FSELECTOR;
    PFILE  = ^FILE;
    PFL_ALIGN  = ^FL_ALIGN;
    PFL_BOX_TYPE  = ^FL_BOX_TYPE;
    PFL_BROWSER_TYPE  = ^FL_BROWSER_TYPE;
    PFL_BUTTON_SPEC  = ^FL_BUTTON_SPEC;
    PFL_BUTTON_STRUCT  = ^FL_BUTTON_STRUCT;
    PFL_BUTTON_TYPE  = ^FL_BUTTON_TYPE;
    PFL_CANVAS_TYPE  = ^FL_CANVAS_TYPE;
    PFL_CHART_TYPE  = ^FL_CHART_TYPE;
    PFL_CHOICE_TYPE  = ^FL_CHOICE_TYPE;
    PFL_CLASS  = ^FL_CLASS;
    PFL_CMD_OPT  = ^FL_CMD_OPT;
    PFL_COLOR  = ^FL_COLOR;
    PFL_Coord  = ^FL_Coord;
    PFL_COORD_UNIT  = ^FL_COORD_UNIT;
    PFL_COUNTER_TYPE  = ^FL_COUNTER_TYPE;
    PFL_CPTYPE  = ^FL_CPTYPE;
    PFL_DIAL_TYPE  = ^FL_DIAL_TYPE;
    PFL_Dirlist  = ^FL_Dirlist;
    PFL_EditKeymap  = ^FL_EditKeymap;
    PFL_EVENTS  = ^FL_EVENTS;
    PFL_FONT  = ^FL_FONT;
    PFL_FORM  = ^FL_FORM;
    PFL_FORM_  = ^FL_FORM_;
    PFL_FREE_TYPE  = ^FL_FREE_TYPE;
    PFL_INPUT_TYPE  = ^FL_INPUT_TYPE;
    PFL_IOPT  = ^FL_IOPT;
    PFL_KEY  = ^FL_KEY;
    PFL_MENU_TYPE  = ^FL_MENU_TYPE;
    PFL_OBJECT  = ^FL_OBJECT;
    PFL_OBJECT_  = ^FL_OBJECT_;
    PFL_PACKED4  = ^FL_PACKED4;
    PFL_PCTYPE  = ^FL_PCTYPE;
    PFL_PD_COL  = ^FL_PD_COL;
    PFL_pixmap  = ^FL_pixmap;
    PFL_pixmap_  = ^FL_pixmap_;
    PFL_PLACE  = ^FL_PLACE;
    PFL_POINT  = ^FL_POINT;
    PFL_POPUP  = ^FL_POPUP;
    PFL_POPUP_  = ^FL_POPUP_;
    PFL_POPUP_ENTRY  = ^FL_POPUP_ENTRY;
    PFL_POPUP_ENTRY_  = ^FL_POPUP_ENTRY_;
    PFL_POPUP_ITEM  = ^FL_POPUP_ITEM;
    PFL_POPUP_RETURN  = ^FL_POPUP_RETURN;
    PFL_POPUP_RETURN_  = ^FL_POPUP_RETURN_;
    PFL_PUP_ENTRY  = ^FL_PUP_ENTRY;
    PFL_RECT  = ^FL_RECT;
    PFL_RESIZE_T  = ^FL_RESIZE_T;
    PFL_RESOURCE  = ^FL_RESOURCE;
    PFL_RGB2PIXEL_  = ^FL_RGB2PIXEL_;
    PFL_RTYPE  = ^FL_RTYPE;
    PFL_SLIDER_TYPE  = ^FL_SLIDER_TYPE;
    PFL_SPINNER_TYPE  = ^FL_SPINNER_TYPE;
    PFL_State  = ^FL_State;
    PFL_TEXT_STYLE  = ^FL_TEXT_STYLE;
    PFL_TIMER_FILTER  = ^FL_TIMER_FILTER;
    PFL_TIMER_TYPE  = ^FL_TIMER_TYPE;
    PFL_VAL_FILTER  = ^FL_VAL_FILTER;
    PFL_XYPLOT_TYPE  = ^FL_XYPLOT_TYPE;
    PFLPS_CONTROL  = ^FLPS_CONTROL;
    Plongint  = ^longint;
    PPixmap  = ^Pixmap;
    Psingle  = ^single;
    PVisual  = ^Visual;
    PXEvent  = ^XEvent;
    PXFontStruct  = ^XFontStruct;
    PXSetWindowAttributes  = ^XSetWindowAttributes;
    PXVisualInfo  = ^XVisualInfo;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{
 *
 *  This file is part of the XForms library package.
 *
 * XForms is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as
 * published by the Free Software Foundation; either version 2.1, or
 * (at your option) any later version.
 *
 * XForms is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with XForms.  If not, see <http://www.gnu.org/licenses/>.
  }
{*
 *  \file forms.h
 *
 *. All XForms files as distributed in this package are
 *  Copyright(c) 1996-2002 by T.C. Zhao and Mark Overmars,
 *  with part of the code Copyright (c) 1999-2002 by T.C. Zhao
 *  and Steve Lamont.
 *  ALL RIGHTS RESERVED.
 *
 * Permission to use, copy, and distribute this software in its entirety
 * without fee, is hereby granted, provided that the above copyright
 * notice and this permission notice appear in all copies and their
 * documentation.
 *
 * As of April 2002, xforms is released under the GNU LGPL license.
 * You can use xforms for any purpose that's compatible with
 * LGPL with the restriction that you will need a special license
 * for distributed  binary commercial software that requires or is
 * based on xforms or its derivative.
 *
 * This software is provided "as is" without expressed or implied
 * warranty of any kind.
 *
 * The homepage for XForms is at
 * https://savannah.nongnu.org/projects/xforms/
 *
 * If you have questions about XForms or encounter problems please
 * subscribe to the mailing list at
 * http://cweblog.usuhs.mil/mailman/listinfo/xforms
 *
 * ******** This file is generated automatically. DO NOT CHANGE *********
  }
{$ifndef FL_FORMS_H}
{$define FL_FORMS_H}

const
  FL_VERSION = 1;  
  FL_REVISION = 2;  
  FL_FIXLEVEL = '5pre1';  
  FL_INCLUDE_VERSION = (1*1000)+2;  
{$include <stdio.h>}
{$include <stdarg.h>}
{$include <string.h>}
{$include <limits.h>}
{#if defined __cplusplus }
{extern "C" }
{ }
{#endif }
{$if defined _WIN32}
{$define FL_WIN32}
{$include <windows.h>}
{$endif}
{#if ! defined FL_WIN32 || ! defined SHARED_LIB }
{#define  extern }
{#else }
{#ifdef MAKING_FORMS }
{#define  __declspec( dllexport ) extern }
{#else }
{#define  __declspec( dllimport ) extern }
{#endif              /* MAKING_FORMS */ }
{#endif              /* FL_WIN32 */ }
{*
 * \file Basic.h
 *
 *  Basic definitions and limits.
 *  Window system independent prototypes
 *
 *  Modify with care
  }
{$ifndef FL_BASIC_H}
{$define FL_BASIC_H}
{$include <math.h>}
{$include <X11/Xlib.h>}
{$include <X11/Xutil.h>}
{$include <X11/Xatom.h>}
{$include <X11/keysym.h>}
{$include <X11/Xresource.h>}
{$if defined __GNUC__}

{ was #define dname def_expr }
function FL_UNUSED_ARG : longint; { return type might be wrong }

{$else}
{$define FL_UNUSED_ARG}
{$endif}
{ Some general constants  }
{ WM_DELETE_WINDOW callback return  }
type
  Pblablabla = ^Tblablabla;
  Tblablabla =  Longint;
  Const
    FL_ON = 1;
    FL_OK = 1;
    FL_VALID = 1;
    FL_PREEMPT = 1;
    FL_AUTO = 2;
    FL_WHEN_NEEDED = FL_AUTO;
    FL_OFF = 0;
    FL_CANCEL = 0;
    FL_INVALID = 0;
    FL_IGNORE = -(1);
;
{ Max  directory length   }
{$ifndef FL_PATH_MAX}
{$ifndef PATH_MAX}

const
  FL_PATH_MAX = 1024;  
{$else}

const
  FL_PATH_MAX = PATH_MAX;  
{$endif}
{$endif}
{ ! def FL_PATH_MAX  }
{ The screen coordinate unit, FL_Coord, must be of signed type  }
type
  PFL_Coord = ^TFL_Coord;
  TFL_Coord = longint;

const
  FL_COORD = FL_Coord;  
type
  PFL_COLOR = ^TFL_COLOR;
  TFL_COLOR = dword;
{ Coordinates can be in pixels, milli-meters or points (1/72inch)  }
{ default, Pixel            }
{ milli-meter               }
{ point                     }
{ one hundredth of a mm     }
{ one hundredth of a point  }

  PFL_COORD_UNIT = ^TFL_COORD_UNIT;
  TFL_COORD_UNIT =  Longint;
  Const
    FL_COORD_PIXEL = 0;
    FL_COORD_MM = 1;
    FL_COORD_POINT = 2;
    FL_COORD_centiMM = 3;
    FL_COORD_centiPOINT = 4;
;
{ All object classes.  }
{  0  }
{  1  }
{  2  }
{  3  }
{  4  }
{  5  }
{  6  }
{  7  }
{  8  }
{  9  }
{ 10  }
{ 11  }
{ 12  }
{ 13  }
{ 14  }
{ 15  }
{ 16  }
{ 17  }
{ 18  }
{ 19  }
{ 20  }
{ 21  }
{ 22  }
{ 23  }
{ 24  }
{ 25  }
{ 26  }
{ 27  }
{ 28  }
{ 29  }
{ 30  }
{ 31  }
{ 32  }
{ 33  }
{ 34, for internal use only  }
{ 35  }
{ 36  }
{ 37  }
{ 38  }
{ 39  }
{ 40  }
{ 41  }
{ 42  }
{ 43  }
{ 44  }
{ sentinel  }
type
  PFL_CLASS = ^TFL_CLASS;
  TFL_CLASS =  Longint;
  Const
    FL_INVALID_CLASS = 0;
    FL_BUTTON = 1;
    FL_LIGHTBUTTON = 2;
    FL_ROUNDBUTTON = 3;
    FL_ROUND3DBUTTON = 4;
    FL_CHECKBUTTON = 5;
    FL_BITMAPBUTTON = 6;
    FL_PIXMAPBUTTON = 7;
    FL_BITMAP = 8;
    FL_PIXMAP = 9;
    FL_BOX = 10;
    FL_TEXT = 11;
    FL_MENU = 12;
    FL_CHART = 13;
    FL_CHOICE = 14;
    FL_COUNTER = 15;
    FL_SLIDER = 16;
    FL_VALSLIDER = 17;
    FL_INPUT = 18;
    FL_BROWSER = 19;
    FL_DIAL = 20;
    FL_TIMER = 21;
    FL_CLOCK = 22;
    FL_POSITIONER = 23;
    FL_FREE = 24;
    FL_XYPLOT = 25;
    FL_FRAME = 26;
    FL_LABELFRAME = 27;
    FL_CANVAS = 28;
    FL_GLCANVAS = 29;
    FL_TABFOLDER = 30;
    FL_SCROLLBAR = 31;
    FL_SCROLLBUTTON = 32;
    FL_MENUBAR = 33;
    FL_TEXTBOX = 34;
    FL_LABELBUTTON = 35;
    FL_COMBOBOX = 36;
    FL_IMAGECANVAS = 37;
    FL_THUMBWHEEL = 38;
    FL_COLORWHEEL = 39;
    FL_FORMBROWSER = 40;
    FL_SELECT = 41;
    FL_NMENU = 42;
    FL_SPINNER = 43;
    FL_TBOX = 44;
    FL_CLASS_END = 45;
;
  FL_BEGIN_GROUP = 10000;  
  FL_END_GROUP = 20000;  
{ min. user class  value  }
  FL_USER_CLASS_START = 1001;  
{ max. user class  value  }
  FL_USER_CLASS_END = 9999;  
{ Maximum border width (in pixel)  }
  FL_MAX_BW = 10;  
{ How to display a form onto screen  }
{ size remain resizable       }
{ mouse centered on form      }
{ center of the screen        }
{ specific position           }
{ specific size               }
{ specific size and position  }
{ keep aspect ratio           }
{ scale to fit to screen      }
{ so mouse fall on (x,y)      }
{ start in iconified form     }
{ Modifiers  }
{ seems to be useless, but some
										  programs seem to rely on it...  }
type
  PFL_PLACE = ^TFL_PLACE;
  TFL_PLACE =  Longint;
  Const
    FL_PLACE_FREE = 0;
    FL_PLACE_MOUSE = 1;
    FL_PLACE_CENTER = 2;
    FL_PLACE_POSITION = 4;
    FL_PLACE_SIZE = 8;
    FL_PLACE_GEOMETRY = 16;
    FL_PLACE_ASPECT = 32;
    FL_PLACE_FULLSCREEN = 64;
    FL_PLACE_HOTSPOT = 128;
    FL_PLACE_ICONIC = 256;
    FL_FREE_SIZE = 1 shl 14;
    FL_FIX_SIZE = 1 shl 15;
;
  FL_PLACE_FREE_CENTER = FL_PLACE_CENTER or FL_FREE_SIZE;  
  FL_PLACE_CENTERFREE = FL_PLACE_CENTER or FL_FREE_SIZE;  
{ Window manager decoration request and forms attributes  }
{ normal                                   }
{ set TRANSIENT_FOR property               }
{ use override_redirect to supress decor.  }
type
  Pblablabla = ^Tblablabla;
  Tblablabla =  Longint;
  Const
    FL_FULLBORDER = 1;
    FL_TRANSIENT = 2;
    FL_NOBORDER = 3;
;
{ All box types  }
{  0  }
{  1  }
{  2  }
{  3  }
{  4  }
{  5  }
{  6  }
{  7  }
{  8  }
{  9  }
{ 10  }
{ 11  }
{ 12  }
{ 13  }
{ 14  }
{ 15  }
{ 16  }
{ 17  }
{ for internal use only  }
{ sentinel  }
type
  PFL_BOX_TYPE = ^TFL_BOX_TYPE;
  TFL_BOX_TYPE =  Longint;
  Const
    FL_NO_BOX = 0;
    FL_UP_BOX = 1;
    FL_DOWN_BOX = 2;
    FL_BORDER_BOX = 3;
    FL_SHADOW_BOX = 4;
    FL_FRAME_BOX = 5;
    FL_ROUNDED_BOX = 6;
    FL_EMBOSSED_BOX = 7;
    FL_FLAT_BOX = 8;
    FL_RFLAT_BOX = 9;
    FL_RSHADOW_BOX = 10;
    FL_OVAL_BOX = 11;
    FL_ROUNDED3D_UPBOX = 12;
    FL_ROUNDED3D_DOWNBOX = 13;
    FL_OVAL3D_UPBOX = 14;
    FL_OVAL3D_DOWNBOX = 15;
    FL_OVAL3D_FRAMEBOX = 16;
    FL_OVAL3D_EMBOSSEDBOX = 17;
    FL_TOPTAB_UPBOX = 18;
    FL_SELECTED_TOPTAB_UPBOX = 19;
    FL_BOTTOMTAB_UPBOX = 20;
    FL_SELECTED_BOTTOMTAB_UPBOX = 21;
    FL_MAX_BOX_STYLES = 22;
;
(* error 
                              || ( t ) == FL_OVAL3D_UPBOX     \
in define line 283 *)
(* error 
                              || ( t ) == FL_OVAL3D_DOWNBOX    \
in define line 287 *)
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   

    function FL_TO_DOWNBOX(t : longint) : longint;    

    { How to place text relative to a box  }
    { not functional yet   }
    { the rest is for backward compatibility only, don't use!  }
    type
      PFL_ALIGN = ^TFL_ALIGN;
      TFL_ALIGN =  Longint;
      Const
        FL_ALIGN_CENTER = 0;
        FL_ALIGN_TOP = 1;
        FL_ALIGN_BOTTOM = 2;
        FL_ALIGN_LEFT = 4;
        FL_ALIGN_RIGHT = 8;
        FL_ALIGN_LEFT_TOP = FL_ALIGN_TOP or FL_ALIGN_LEFT;
        FL_ALIGN_RIGHT_TOP = FL_ALIGN_TOP or FL_ALIGN_RIGHT;
        FL_ALIGN_LEFT_BOTTOM = FL_ALIGN_BOTTOM or FL_ALIGN_LEFT;
        FL_ALIGN_RIGHT_BOTTOM = FL_ALIGN_BOTTOM or FL_ALIGN_RIGHT;
        FL_ALIGN_INSIDE = 1 shl 13;
        FL_ALIGN_VERT = 1 shl 14;
        FL_ALIGN_TOP_LEFT = FL_ALIGN_LEFT_TOP;
        FL_ALIGN_TOP_RIGHT = FL_ALIGN_RIGHT_TOP;
        FL_ALIGN_BOTTOM_LEFT = FL_ALIGN_LEFT_BOTTOM;
        FL_ALIGN_BOTTOM_RIGHT = FL_ALIGN_RIGHT_BOTTOM;
;

function fl_is_inside_lalign(align:longint):longint;cdecl;external;
function fl_is_outside_lalign(align:longint):longint;cdecl;external;
function fl_is_center_lalign(align:longint):longint;cdecl;external;
function fl_to_inside_lalign(align:longint):longint;cdecl;external;
function fl_to_outside_lalign(align:longint):longint;cdecl;external;
    { Mouse buttons  }
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_MBUTTON1 = 1;
        FL_MBUTTON2 = 2;
        FL_MBUTTON3 = 3;
        FL_MBUTTON4 = 4;
        FL_MBUTTON5 = 5;
;
      FL_LEFT_MOUSE = FL_MBUTTON1;      
      FL_MIDDLE_MOUSE = FL_MBUTTON2;      
      FL_RIGHT_MOUSE = FL_MBUTTON3;      
      FL_SCROLLUP_MOUSE = FL_MBUTTON4;      
      FL_SCROLLDOWN_MOUSE = FL_MBUTTON5;      
      FL_LEFTMOUSE = FL_LEFT_MOUSE;      
      FL_MIDDLEMOUSE = FL_MIDDLE_MOUSE;      
      FL_RIGHTMOUSE = FL_RIGHT_MOUSE;      
      FL_SCROLLUPMOUSE = FL_SCROLLUP_MOUSE;      
      FL_SCROLLDOWNMOUSE = FL_SCROLLDOWN_MOUSE;      
    { Flags for when to return an object  }
      FL_RETURN_NONE = 0;      
      FL_RETURN_CHANGED = 1;      
      FL_RETURN_END = 2;      
      FL_RETURN_END_CHANGED = 4;      
      FL_RETURN_SELECTION = 8;      
      FL_RETURN_DESELECTION = 16;      
      FL_RETURN_TRIGGERED = 1024;      
      FL_RETURN_ALWAYS =  not (FL_RETURN_END_CHANGED);      
    {  Some special color indices for FL private colormap. It does not matter
     *  what the value of each enum is, but it must start from 0 and be
     *  consecutive.  }
    type
      PFL_PD_COL = ^TFL_PD_COL;
      TFL_PD_COL =  Longint;
      Const
        FL_BLACK = 0;
        FL_RED = 1;
        FL_GREEN = 2;
        FL_YELLOW = 3;
        FL_BLUE = 4;
        FL_MAGENTA = 5;
        FL_CYAN = 6;
        FL_WHITE = 7;
        FL_TOMATO = 8;
        FL_INDIANRED = 9;
        FL_SLATEBLUE = 10;
        FL_COL1 = 11;
        FL_RIGHT_BCOL = 12;
        FL_BOTTOM_BCOL = 13;
        FL_TOP_BCOL = 14;
        FL_LEFT_BCOL = 15;
        FL_MCOL = 16;
        FL_INACTIVE = 17;
        FL_PALEGREEN = 18;
        FL_DARKGOLD = 19;
        FL_ORCHID = 20;
        FL_DARKCYAN = 21;
        FL_DARKTOMATO = 22;
        FL_WHEAT = 23;
        FL_DARKORANGE = 24;
        FL_DEEPPINK = 25;
        FL_CHARTREUSE = 26;
        FL_DARKVIOLET = 27;
        FL_SPRINGGREEN = 28;
        FL_DODGERBLUE = 29;
        FL_LIGHTER_COL1 = 30;
        FL_DARKER_COL1 = 31;
        FL_ALICEBLUE = 32;
        FL_ANTIQUEWHITE = 33;
        FL_AQUA = 34;
        FL_AQUAMARINE = 35;
        FL_AZURE = 36;
        FL_BEIGE = 37;
        FL_BISQUE = 38;
        FL_BLANCHEDALMOND = 39;
        FL_BLUEVIOLET = 40;
        FL_BROWN = 41;
        FL_BURLYWOOD = 42;
        FL_CADETBLUE = 43;
        FL_CHOCOLATE = 44;
        FL_CORAL = 45;
        FL_CORNFLOWERBLUE = 46;
        FL_CORNSILK = 47;
        FL_CRIMSON = 48;
        FL_DARKBLUE = 49;
        FL_DARKGOLDENROD = 50;
        FL_DARKGRAY = 51;
        FL_DARKGREEN = 52;
        FL_DARKGREY = 53;
        FL_DARKKHAKI = 54;
        FL_DARKMAGENTA = 55;
        FL_DARKOLIVEGREEN = 56;
        FL_DARKORCHID = 57;
        FL_DARKRED = 58;
        FL_DARKSALMON = 59;
        FL_DARKSEAGREEN = 60;
        FL_DARKSLATEBLUE = 61;
        FL_DARKSLATEGRAY = 62;
        FL_DARKSLATEGREY = 63;
        FL_DARKTURQUOISE = 64;
        FL_DEEPSKYBLUE = 65;
        FL_DIMGRAY = 66;
        FL_DIMGREY = 67;
        FL_FIREBRICK = 68;
        FL_FLORALWHITE = 69;
        FL_FORESTGREEN = 70;
        FL_FUCHSIA = 71;
        FL_GAINSBORO = 72;
        FL_GHOSTWHITE = 73;
        FL_GOLD = 74;
        FL_GOLDENROD = 75;
        FL_GRAY = 76;
        FL_GREENYELLOW = 77;
        FL_GREY = 78;
        FL_HONEYDEW = 79;
        FL_HOTPINK = 80;
        FL_INDIGO = 81;
        FL_IVORY = 82;
        FL_KHAKI = 83;
        FL_LAVENDER = 84;
        FL_LAVENDERBLUSH = 85;
        FL_LAWNGREEN = 86;
        FL_LEMONCHIFFON = 87;
        FL_LIGHTBLUE = 88;
        FL_LIGHTCORAL = 89;
        FL_LIGHTCYAN = 90;
        FL_LIGHTGOLDENRODYELLOW = 91;
        FL_LIGHTGRAY = 92;
        FL_LIGHTGREEN = 93;
        FL_LIGHTGREY = 94;
        FL_LIGHTPINK = 95;
        FL_LIGHTSALMON = 96;
        FL_LIGHTSEAGREEN = 97;
        FL_LIGHTSKYBLUE = 98;
        FL_LIGHTSLATEGRAY = 99;
        FL_LIGHTSLATEGREY = 100;
        FL_LIGHTSTEELBLUE = 101;
        FL_LIGHTYELLOW = 102;
        FL_LIME = 103;
        FL_LIMEGREEN = 104;
        FL_LINEN = 105;
        FL_MAROON = 106;
        FL_MEDIUMAQUAMARINE = 107;
        FL_MEDIUMBLUE = 108;
        FL_MEDIUMORCHID = 109;
        FL_MEDIUMPURPLE = 110;
        FL_MEDIUMSEAGREEN = 111;
        FL_MEDIUMSLATEBLUE = 112;
        FL_MEDIUMSPRINGGREEN = 113;
        FL_MEDIUMTURQUOISE = 114;
        FL_MEDIUMVIOLETRED = 115;
        FL_MIDNIGHTBLUE = 116;
        FL_MINTCREAM = 117;
        FL_MISTYROSE = 118;
        FL_MOCCASIN = 119;
        FL_NAVAJOWHITE = 120;
        FL_NAVY = 121;
        FL_OLDLACE = 122;
        FL_OLIVE = 123;
        FL_OLIVEDRAB = 124;
        FL_ORANGE = 125;
        FL_ORANGERED = 126;
        FL_PALEGOLDENROD = 127;
        FL_PALETURQUOISE = 128;
        FL_PALEVIOLETRED = 129;
        FL_PAPAYAWHIP = 130;
        FL_PEACHPUFF = 131;
        FL_PERU = 132;
        FL_PINK = 133;
        FL_PLUM = 134;
        FL_POWDERBLUE = 135;
        FL_PURPLE = 136;
        FL_ROSYBROWN = 137;
        FL_ROYALBLUE = 138;
        FL_SADDLEBROWN = 139;
        FL_SALMON = 140;
        FL_SANDYBROWN = 141;
        FL_SEAGREEN = 142;
        FL_SEASHELL = 143;
        FL_SIENNA = 144;
        FL_SILVER = 145;
        FL_SKYBLUE = 146;
        FL_SLATEGRAY = 147;
        FL_SLATEGREY = 148;
        FL_SNOW = 149;
        FL_STEELBLUE = 150;
        FL_TAN = 151;
        FL_TEAL = 152;
        FL_THISTLE = 153;
        FL_TURQUOISE = 154;
        FL_VIOLET = 155;
        FL_WHITESMOKE = 156;
        FL_YELLOWGREEN = 157;
        FL_COLOR_CHOOSER_COLOR = 158;
        FL_FREE_COL1 = 159;
        FL_FREE_COL2 = 160;
        FL_FREE_COL3 = 161;
        FL_FREE_COL4 = 162;
        FL_FREE_COL5 = 163;
        FL_FREE_COL6 = 164;
        FL_FREE_COL7 = 165;
        FL_FREE_COL8 = 166;
        FL_FREE_COL9 = 167;
        FL_FREE_COL10 = 168;
        FL_FREE_COL11 = 169;
        FL_FREE_COL12 = 170;
        FL_FREE_COL13 = 171;
        FL_FREE_COL14 = 172;
        FL_FREE_COL15 = 173;
        FL_FREE_COL16 = 174;
        FL_NOCOLOR = INT_MAX;
;
      FL_BUILT_IN_COLS = FL_YELLOWGREEN+1;      
      FL_INACTIVE_COL = FL_INACTIVE;      
    { Some aliases for a number of colors  }
      FL_GRAY16 = FL_RIGHT_BCOL;      
      FL_GRAY35 = FL_BOTTOM_BCOL;      
      FL_GRAY80 = FL_TOP_BCOL;      
      FL_GRAY90 = FL_LEFT_BCOL;      
      FL_GRAY63 = FL_COL1;      
      FL_GRAY75 = FL_MCOL;      
      FL_LCOL = FL_BLACK;      
      FL_NoColor = FL_NOCOLOR;      
    { An alias probably for an earlier typo  }
      FL_DOGERBLUE = FL_DODGERBLUE;      
    { Events that a form reacts to   }
    {  0 No event  }
    {  1 object is asked to redraw itself  }
    {  2 mouse button was pressed on the object  }
    {  3 mouse button was release gain  }
    {  4 mouse entered the object  }
    {  5 mouse left the object  }
    {  6 mouse motion over the object happend  }
    {  7 object obtained focus  }
    {  8 object lost focus  }
    {  9 key was pressed while object has focus  }
    { 10 for objects that need to update something
                                         from time to time  }
    { 11  }
    { 12  }
    { 13 object is asked to free all its memory  }
    { 14 property, selection etc  }
    { 15  }
    { 16 double click on object  }
    { 17 triple click on object  }
    { 18 an object attribute changed  }
    { 19 key was released while object has focus  }
    { 20 dump a form into EPS       }
    { 21 dragging the form across the screen
                                         changes its absolute x,y coords. Objects
                                         that themselves contain forms should
                                         ensure that they are up to date.  }
    { 22 the object has been resized by scale_form
                                         Tell it that this has happened so that
                                         it can resize any FL_FORMs that it
                                         contains.  }
    { 23 text was pasted into input object  }
    { 24 result of fl_trigger_object()  }
    { The following are only for backward compatibility, not used anymore  }
    type
      PFL_EVENTS = ^TFL_EVENTS;
      TFL_EVENTS =  Longint;
      Const
        FL_NOEVENT = 0;
        FL_DRAW = 1;
        FL_PUSH = 2;
        FL_RELEASE = 3;
        FL_ENTER = 4;
        FL_LEAVE = 5;
        FL_MOTION = 6;
        FL_FOCUS = 7;
        FL_UNFOCUS = 8;
        FL_KEYPRESS = 9;
        FL_UPDATE = 10;
        FL_STEP = 11;
        FL_SHORTCUT = 12;
        FL_FREEMEM = 13;
        FL_OTHER = 14;
        FL_DRAWLABEL = 15;
        FL_DBLCLICK = 16;
        FL_TRPLCLICK = 17;
        FL_ATTRIB = 18;
        FL_KEYRELEASE = 19;
        FL_PS = 20;
        FL_MOVEORIGIN = 21;
        FL_RESIZED = 22;
        FL_PASTE = 23;
        FL_TRIGGER = 24;
        FL_MOVE = FL_MOTION;
        FL_KEYBOARD = FL_KEYPRESS;
        FL_MOUSE = FL_UPDATE;
;
    { Resize policies  }
    type
      PFL_RESIZE_T = ^TFL_RESIZE_T;
      TFL_RESIZE_T =  Longint;
      Const
        FL_RESIZE_NONE = 0;
        FL_RESIZE_X = 1;
        FL_RESIZE_Y = 2;
        FL_RESIZE_ALL = FL_RESIZE_X or FL_RESIZE_Y;
;
    { Keyboard focus control  }
    { normal keys(0-255) - tab +left/right  }
    { normal keys + 4 direction cursor      }
    { only needs special keys (>255)        }
    { all keys                              }
    type
      PFL_KEY = ^TFL_KEY;
      TFL_KEY =  Longint;
      Const
        FL_KEY_NORMAL = 1;
        FL_KEY_TAB = 2;
        FL_KEY_SPECIAL = 4;
        FL_KEY_ALL = 7;
;
    { alt + Key --> FL_ALT_MASK + key  }
      FL_ALT_MASK = 1 shl 25;      
      FL_CONTROL_MASK = 1 shl 26;      
      FL_SHIFT_MASK = 1 shl 27;      
    { Don' use!  }
      FL_ALT_VAL = FL_ALT_MASK;      
      MAX_SHORTCUTS = 8;      
    { Pop-up menu item attributes. NOTE if more than 8, need to change
     * choice and menu class where mode is kept by a single byte  }
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_PUP_NONE = 0;
        FL_PUP_GREY = 1;
        FL_PUP_BOX = 2;
        FL_PUP_CHECK = 4;
        FL_PUP_RADIO = 8;
;
      FL_PUP_GRAY = FL_PUP_GREY;      
    { not used anymore  }
      FL_PUP_TOGGLE = FL_PUP_BOX;      
      FL_PUP_INACTIVE = FL_PUP_GREY;      
    { Popup and menu entries  }
    type

      TFL_PUP_CB = function (para1:longint):longint;cdecl;
    { callback prototype   }
(* Const before type ignored *)
    { label of a popup/menu item    }
    { the callback function         }
(* Const before type ignored *)
    { hotkeys                       }
    { FL_PUP_GRAY, FL_PUP_CHECK etc  }

      PFL_PUP_ENTRY = ^TFL_PUP_ENTRY;
      TFL_PUP_ENTRY = record
          text : Pchar;
          callback : TFL_PUP_CB;
          shortcut : Pchar;
          mode : longint;
        end;

    const
      FL_MENU_ENTRY = FL_PUP_ENTRY;      
    {******************************************************************
     * FONTS
     ***************************************************************** }
    { max number of fonts  }
      FL_MAXFONTS = 48;      
    { modfier masks. Need to fit a short   }
    type
      PFL_TEXT_STYLE = ^TFL_TEXT_STYLE;
      TFL_TEXT_STYLE =  Longint;
      Const
        FL_INVALID_STYLE = -(1);
        FL_NORMAL_STYLE = (-(1))+1;
        FL_BOLD_STYLE = (-(1))+2;
        FL_ITALIC_STYLE = (-(1))+3;
        FL_BOLDITALIC_STYLE = (-(1))+4;
        FL_FIXED_STYLE = (-(1))+5;
        FL_FIXEDBOLD_STYLE = (-(1))+6;
        FL_FIXEDITALIC_STYLE = (-(1))+7;
        FL_FIXEDBOLDITALIC_STYLE = (-(1))+8;
        FL_TIMES_STYLE = (-(1))+9;
        FL_TIMESBOLD_STYLE = (-(1))+10;
        FL_TIMESITALIC_STYLE = (-(1))+11;
        FL_TIMESBOLDITALIC_STYLE = (-(1))+12;
        FL_MISC_STYLE = (-(1))+13;
        FL_MISCBOLD_STYLE = (-(1))+14;
        FL_MISCITALIC_STYLE = (-(1))+15;
        FL_SYMBOL_STYLE = (-(1))+16;
        FL_SHADOW_STYLE = 1 shl 9;
        FL_ENGRAVED_STYLE = 1 shl 10;
        FL_EMBOSSED_STYLE = 1 shl 11;
;
      FL_FONT_STYLE = FL_TEXT_STYLE;      
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   

    function special_style(a : longint) : longint;    

    { Standard sizes in XForms  }
    const
      FL_TINY_SIZE = 8;      
      FL_SMALL_SIZE = 10;      
      FL_NORMAL_SIZE = 12;      
      FL_MEDIUM_SIZE = 14;      
      FL_LARGE_SIZE = 18;      
      FL_HUGE_SIZE = 24;      
      FL_DEFAULT_SIZE = FL_SMALL_SIZE;      
    { Defines for compatibility  }
      FL_TINY_FONT = FL_TINY_SIZE;      
      FL_SMALL_FONT = FL_SMALL_SIZE;      
      FL_NORMAL_FONT = FL_NORMAL_SIZE;      
      FL_MEDIUM_FONT = FL_MEDIUM_SIZE;      
      FL_LARGE_FONT = FL_LARGE_SIZE;      
      FL_HUGE_FONT = FL_HUGE_SIZE;      
      FL_NORMAL_FONT1 = FL_SMALL_FONT;      
      FL_NORMAL_FONT2 = FL_NORMAL_FONT;      
      FL_DEFAULT_FONT = FL_SMALL_FONT;      
    { Border width of boxes  }

    { was #define dname def_expr }
    function FL_BOUND_WIDTH : TFL_Coord;      

    { Definition of basic struct that holds an object  }
    { double click interval  }
    const
      FL_CLICK_TIMEOUT = 400;      
    type
      TFL_FORM_ = TFL_FORM;
      TFL_OBJECT_ = TFL_OBJECT;
      TFL_pixmap_ = TFL_pixmap;
    { the form this object belongs to  }
    { anything the user likes  }
    { anything the user likes  }
    { anything the user likes  }
    { class of object, button, slider etc  }
    { type within the class  }
    { what kind of box type  }
    { current obj. location and size  }
    { distances of upper left hand (1) and  }
    { lower right hand corner (2) to left,  }
    { right, top and bottom of enclosing    }
    { form  }
    { colors of obj  }
    { object label  }
    { label color  }
    { label size and style  }
    { instantiation  }
    { Re-configure preference  }
    { what to do if WM resizes the FORM      }
    { how to re-position top-left corner     }
    { how to re-position lower-right corner  }
    { prev. obj in form  }
    { next. obj in form  }
    { next child  }
    { pixmap double buffering stateinfo  }
    { true to use pixmap double buffering }
    { Some interaction flags  }
    { what last interaction returned  }
    { under which conditions to return  }
    { only used by mesa/gl canvas  }
    { if object accepts events  }
    { if (partially) hidden by other object  }
    { for class use  }
    { for class use  }
    { for class use  }
    { double buffer background  }
      PFL_OBJECT_ = ^TFL_OBJECT_;
      TFL_OBJECT_ = record
          form : PFL_FORM;
          u_vdata : pointer;
          u_cdata : Pchar;
          u_ldata : longint;
          objclass : longint;
          _type : longint;
          boxtype : longint;
          x : TFL_Coord;
          y : TFL_Coord;
          w : TFL_Coord;
          h : TFL_Coord;
          fl1 : Tdouble;
          fr1 : Tdouble;
          ft1 : Tdouble;
          fb1 : Tdouble;
          fl2 : Tdouble;
          fr2 : Tdouble;
          ft2 : Tdouble;
          fb2 : Tdouble;
          bw : TFL_Coord;
          col1 : TFL_COLOR;
          col2 : TFL_COLOR;
          _label : Pchar;
          lcol : TFL_COLOR;
          align : longint;
          lsize : longint;
          lstyle : longint;
          shortcut : Plongint;
          handle : function (para1:PFL_OBJECT; para2:longint; para3:TFL_Coord; para4:TFL_Coord; para5:longint; 
                       para6:pointer):longint;cdecl;
          object_callback : procedure (para1:PFL_OBJECT; para2:longint);cdecl;
          argument : longint;
          spec : pointer;
          prehandle : function (para1:PFL_OBJECT; para2:longint; para3:TFL_Coord; para4:TFL_Coord; para5:longint; 
                       para6:pointer):longint;cdecl;
          posthandle : function (para1:PFL_OBJECT; para2:longint; para3:TFL_Coord; para4:TFL_Coord; para5:longint; 
                       para6:pointer):longint;cdecl;
          set_return : procedure (para1:PFL_OBJECT; para2:dword);cdecl;
          resize : dword;
          nwgravity : dword;
          segravity : dword;
          prev : PFL_OBJECT;
          next : PFL_OBJECT;
          parent : PFL_OBJECT;
          child : PFL_OBJECT;
          nc : PFL_OBJECT;
          flpixmap : PFL_pixmap;
          use_pixmap : longint;
          returned : longint;
          how_return : dword;
          double_buffer : longint;
          pushed : longint;
          focus : longint;
          belowmouse : longint;
          active : longint;
          input : longint;
          wantkey : longint;
          radio : longint;
          automatic : longint;
          redraw : longint;
          visible : longint;
          is_under : longint;
          clip : longint;
          click_timeout : dword;
          c_vdata : pointer;
          c_cdata : Pchar;
          c_ldata : longint;
          dbl_background : TFL_COLOR;
          tooltip : Pchar;
          tipID : longint;
          group_id : longint;
          want_motion : longint;
          want_update : longint;
        end;

    { Callback function for an entire form  }

      TFL_FORMCALLBACKPTR = procedure (para1:PFL_OBJECT; para2:pointer);cdecl;
    { Object callback function       }

      TFL_CALLBACKPTR = procedure (para1:PFL_OBJECT; para2:longint);cdecl;
    { Preemptive callback function   }

      TFL_RAW_CALLBACK = function (para1:PFL_FORM; para2:pointer):longint;cdecl;
    { At close (WM menu delete/close etc.) function  }

      TFL_FORM_ATCLOSE = function (para1:PFL_FORM; para2:pointer):longint;cdecl;
    { Deactivate/activate callback  }

      TFL_FORM_ATDEACTIVATE = procedure (para1:PFL_FORM; para2:pointer);cdecl;

      TFL_FORM_ATACTIVATE = procedure (para1:PFL_FORM; para2:pointer);cdecl;

      TFL_HANDLEPTR = function (para1:PFL_OBJECT; para2:longint; para3:TFL_Coord; para4:TFL_Coord; para5:longint; 
                   para6:pointer):longint;cdecl;
    { Error callback  }
(* Const before type ignored *)
(* Const before type ignored *)

      TFL_ERROR_FUNC = procedure (para1:Pchar; para2:Pchar; args:array of const);cdecl;
      var
        FL_EVENT : PFL_OBJECT;cvar;public;
    {** FORM *** }
    { Form visibility state: form->visible  }
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_BEING_HIDDEN = -(1);
        FL_HIDDEN = 0;
        FL_INVISIBLE = FL_HIDDEN;
        FL_VISIBLE = 1;
;
    { for fdesign  }
    { for application  }
    { for application  }
    { for application  }
    { window title  }
    { X resource ID for window  }
    { current geometry info  }
    { hot-spot of the form  }
    { high resolution width and height  }
    { (needed for precise scaling)  }
    { WM_DELETE_WINDOW message handler  }
    { back buffer  }
    { Interaction and other flags  }
    { non-zero if deactivated  }
    { true if dbl buffering  }
    { true if sync change  }
    { true if mapped  }
    { window manager info  }
    { other attributes  }
    { internal use  }
    { not independent anymore  }
    type
      PFL_FORM_ = ^TFL_FORM_;
      TFL_FORM_ = record
          fdui : pointer;
          u_vdata : pointer;
          u_cdata : Pchar;
          u_ldata : longint;
          _label : Pchar;
          window : TWindow;
          x : TFL_Coord;
          y : TFL_Coord;
          w : TFL_Coord;
          h : TFL_Coord;
          handle_dec_x : longint;
          handle_dec_y : longint;
          hotx : TFL_Coord;
          hoty : TFL_Coord;
          w_hr : Tdouble;
          h_hr : Tdouble;
          first : PFL_OBJECT;
          last : PFL_OBJECT;
          focusobj : PFL_OBJECT;
          form_callback : TFL_FORMCALLBACKPTR;
          activate_callback : TFL_FORM_ATACTIVATE;
          deactivate_callback : TFL_FORM_ATDEACTIVATE;
          form_cb_data : pointer;
          activate_data : pointer;
          deactivate_data : pointer;
          key_callback : TFL_RAW_CALLBACK;
          push_callback : TFL_RAW_CALLBACK;
          crossing_callback : TFL_RAW_CALLBACK;
          motion_callback : TFL_RAW_CALLBACK;
          all_callback : TFL_RAW_CALLBACK;
          compress_mask : dword;
          evmask : dword;
          close_callback : TFL_FORM_ATCLOSE;
          close_data : pointer;
          flpixmap : PFL_pixmap;
          icon_pixmap : TPixmap;
          icon_mask : TPixmap;
          deactivated : longint;
          use_pixmap : longint;
          frozen : longint;
          visible : longint;
          wm_border : longint;
          prop : dword;
          num_auto_objects : longint;
          needs_full_redraw : longint;
          sort_of_modal : longint;
          parent : PFL_FORM;
          child : PFL_FORM;
          parent_obj : PFL_OBJECT;
          attached : longint;
          pre_attach : procedure (para1:PFL_FORM);cdecl;
          attach_data : pointer;
          in_redraw : longint;
        end;

    { All FD_xxx structure emitted by fdesign contains at least the
     * following  }

      PFD_Any = ^TFD_Any;
      TFD_Any = record
          form : PFL_FORM;
          vdata : pointer;
          cdata : Pchar;
          ldata : longint;
        end;
    { Async IO stuff  }

      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_READ = 1;
        FL_WRITE = 2;
        FL_EXCEPT = 4;
;
    { IO other than XEvent Q  }
    type

      TFL_IO_CALLBACK = procedure (para1:longint; para2:pointer);cdecl;

procedure fl_add_io_callback(fd:longint; mask:dword; callback:TFL_IO_CALLBACK; data:pointer);cdecl;external;
procedure fl_remove_io_callback(fd:longint; mask:dword; cb:TFL_IO_CALLBACK);cdecl;external;
    { signals  }
    type

      TFL_SIGNAL_HANDLER = procedure (para1:longint; para2:pointer);cdecl;

procedure fl_add_signal_callback(s:longint; cb:TFL_SIGNAL_HANDLER; data:pointer);cdecl;external;
procedure fl_remove_signal_callback(s:longint);cdecl;external;
procedure fl_signal_caught(s:longint);cdecl;external;
procedure fl_app_signal_direct(y:longint);cdecl;external;
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_INPUT_END_EVENT_CLASSIC = 0;
        FL_INPUT_END_EVENT_ALWAYS = 1;
;

function fl_input_end_return_handling(_type:longint):longint;cdecl;external;
    { Timeouts  }
    type

      TFL_TIMEOUT_CALLBACK = procedure (para1:longint; para2:pointer);cdecl;

function fl_add_timeout(msec:longint; callback:TFL_TIMEOUT_CALLBACK; data:pointer):longint;cdecl;external;
procedure fl_remove_timeout(id:longint);cdecl;external;
    { Basic public routine prototypes  }
function fl_library_version(ver:Plongint; rev:Plongint):longint;cdecl;external;
(* Const before type ignored *)
function fl_library_full_version(version:Plongint; revision:Plongint; fix_level:Plongint; extra:PPchar):longint;cdecl;external;
    {* Generic routines that deal with FORMS * }
function fl_bgn_form(_type:longint; w:TFL_Coord; h:TFL_Coord):PFL_FORM;cdecl;external;
procedure fl_end_form;cdecl;external;
function fl_do_forms:PFL_OBJECT;cdecl;external;
function fl_check_forms:PFL_OBJECT;cdecl;external;
function fl_do_only_forms:PFL_OBJECT;cdecl;external;
function fl_check_only_forms:PFL_OBJECT;cdecl;external;
procedure fl_freeze_form(form:PFL_FORM);cdecl;external;
procedure fl_set_focus_object(form:PFL_FORM; obj:PFL_OBJECT);cdecl;external;
function fl_get_focus_object(form:PFL_FORM):PFL_OBJECT;cdecl;external;
procedure fl_reset_focus_object(ob:PFL_OBJECT);cdecl;external;
    const
      fl_set_object_focus = fl_set_focus_object;      

function fl_set_form_atclose(form:PFL_FORM; fmclose:TFL_FORM_ATCLOSE; data:pointer):TFL_FORM_ATCLOSE;cdecl;external;
function fl_set_atclose(fmclose:TFL_FORM_ATCLOSE; data:pointer):TFL_FORM_ATCLOSE;cdecl;external;
function fl_set_form_atactivate(form:PFL_FORM; cb:TFL_FORM_ATACTIVATE; data:pointer):TFL_FORM_ATACTIVATE;cdecl;external;
function fl_set_form_atdeactivate(form:PFL_FORM; cb:TFL_FORM_ATDEACTIVATE; data:pointer):TFL_FORM_ATDEACTIVATE;cdecl;external;
procedure fl_unfreeze_form(form:PFL_FORM);cdecl;external;
function fl_form_is_activated(form:PFL_FORM):longint;cdecl;external;
procedure fl_deactivate_form(form:PFL_FORM);cdecl;external;
procedure fl_activate_form(form:PFL_FORM);cdecl;external;
procedure fl_deactivate_all_forms;cdecl;external;
procedure fl_activate_all_forms;cdecl;external;
procedure fl_freeze_all_forms;cdecl;external;
procedure fl_unfreeze_all_forms;cdecl;external;
procedure fl_scale_form(form:PFL_FORM; xsc:Tdouble; ysc:Tdouble);cdecl;external;
procedure fl_set_form_position(form:PFL_FORM; x:TFL_Coord; y:TFL_Coord);cdecl;external;
(* Const before type ignored *)
procedure fl_set_form_title(form:PFL_FORM; name:Pchar);cdecl;external;
(* Const before type ignored *)
procedure fl_set_form_title_f(form:PFL_FORM; fmt:Pchar; args:array of const);cdecl;external;
procedure fl_set_form_title_f(form:PFL_FORM; fmt:Pchar);cdecl;external;
procedure fl_set_app_mainform(form:PFL_FORM);cdecl;external;
function fl_get_app_mainform:PFL_FORM;cdecl;external;
procedure fl_set_app_nomainform(flag:longint);cdecl;external;
procedure fl_set_form_callback(form:PFL_FORM; callback:TFL_FORMCALLBACKPTR; d:pointer);cdecl;external;
    const
      fl_set_form_call_back = fl_set_form_callback;      

procedure fl_set_form_size(form:PFL_FORM; w:TFL_Coord; h:TFL_Coord);cdecl;external;
procedure fl_set_form_background_color(form:PFL_FORM; color:TFL_COLOR);cdecl;external;
function fl_get_form_background_color(form:PFL_FORM):TFL_COLOR;cdecl;external;
procedure fl_set_form_hotspot(form:PFL_FORM; x:TFL_Coord; y:TFL_Coord);cdecl;external;
procedure fl_set_form_hotobject(form:PFL_FORM; ob:PFL_OBJECT);cdecl;external;
procedure fl_set_form_minsize(form:PFL_FORM; w:TFL_Coord; h:TFL_Coord);cdecl;external;
procedure fl_set_form_maxsize(form:PFL_FORM; w:TFL_Coord; h:TFL_Coord);cdecl;external;
procedure fl_set_form_event_cmask(form:PFL_FORM; cmask:dword);cdecl;external;
function fl_get_form_event_cmask(form:PFL_FORM):dword;cdecl;external;
procedure fl_set_form_geometry(form:PFL_FORM; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord);cdecl;external;
    const
      fl_set_initial_placement = fl_set_form_geometry;      
(* Const before type ignored *)

function fl_show_form(form:PFL_FORM; place:longint; border:longint; name:Pchar):TWindow;cdecl;external;
(* Const before type ignored *)
function fl_show_form_f(form:PFL_FORM; place:longint; border:longint; fmt:Pchar; args:array of const):TWindow;cdecl;external;
function fl_show_form_f(form:PFL_FORM; place:longint; border:longint; fmt:Pchar):TWindow;cdecl;external;
procedure fl_hide_form(form:PFL_FORM);cdecl;external;
procedure fl_free_form(form:PFL_FORM);cdecl;external;
procedure fl_redraw_form(form:PFL_FORM);cdecl;external;
procedure fl_set_form_dblbuffer(form:PFL_FORM; y:longint);cdecl;external;
(* Const before type ignored *)
function fl_prepare_form_window(form:PFL_FORM; place:longint; border:longint; name:Pchar):TWindow;cdecl;external;
(* Const before type ignored *)
function fl_prepare_form_window_f(form:PFL_FORM; place:longint; border:longint; fmt:Pchar; args:array of const):TWindow;cdecl;external;
function fl_prepare_form_window_f(form:PFL_FORM; place:longint; border:longint; fmt:Pchar):TWindow;cdecl;external;
function fl_show_form_window(form:PFL_FORM):TWindow;cdecl;external;
function fl_adjust_form_size(form:PFL_FORM):Tdouble;cdecl;external;
function fl_form_is_visible(form:PFL_FORM):longint;cdecl;external;
function fl_form_is_iconified(form:PFL_FORM):longint;cdecl;external;
function fl_register_raw_callback(form:PFL_FORM; mask:dword; rcb:TFL_RAW_CALLBACK):TFL_RAW_CALLBACK;cdecl;external;
    const
      fl_register_call_back = fl_register_raw_callback;      

function fl_bgn_group:PFL_OBJECT;cdecl;external;
procedure fl_end_group;cdecl;external;
function fl_addto_group(group:PFL_OBJECT):PFL_OBJECT;cdecl;external;
    {***** Routines that deal with FL_OBJECTS ******* }
function fl_get_object_objclass(obj:PFL_OBJECT):longint;cdecl;external;
function fl_get_object_type(obj:PFL_OBJECT):longint;cdecl;external;
procedure fl_set_object_boxtype(ob:PFL_OBJECT; boxtype:longint);cdecl;external;
function fl_get_object_boxtype(obj:PFL_OBJECT):longint;cdecl;external;
procedure fl_set_object_bw(ob:PFL_OBJECT; bw:longint);cdecl;external;
function fl_get_object_bw(ob:PFL_OBJECT):longint;cdecl;external;
procedure fl_set_object_resize(ob:PFL_OBJECT; what:dword);cdecl;external;
procedure fl_get_object_resize(ob:PFL_OBJECT; what:Pdword);cdecl;external;
procedure fl_set_object_gravity(ob:PFL_OBJECT; nw:dword; se:dword);cdecl;external;
procedure fl_get_object_gravity(ob:PFL_OBJECT; nw:Pdword; se:Pdword);cdecl;external;
procedure fl_set_object_lsize(obj:PFL_OBJECT; lsize:longint);cdecl;external;
function fl_get_object_lsize(obj:PFL_OBJECT):longint;cdecl;external;
procedure fl_set_object_lstyle(obj:PFL_OBJECT; lstyle:longint);cdecl;external;
function fl_get_object_lstyle(obj:PFL_OBJECT):longint;cdecl;external;
procedure fl_set_object_lcol(ob:PFL_OBJECT; lcol:TFL_COLOR);cdecl;external;
function fl_get_object_lcol(obj:PFL_OBJECT):TFL_COLOR;cdecl;external;
function fl_set_object_return(ob:PFL_OBJECT; when:dword):dword;cdecl;external;
function fl_get_object_return(ob:PFL_OBJECT):dword;cdecl;external;
procedure fl_set_object_lalign(obj:PFL_OBJECT; align:longint);cdecl;external;
function fl_get_object_lalign(obj:PFL_OBJECT):longint;cdecl;external;
(* Const before type ignored *)
procedure fl_set_object_shortcut(obj:PFL_OBJECT; sstr:Pchar; showit:longint);cdecl;external;
procedure fl_set_object_shortcutkey(obj:PFL_OBJECT; keysym:dword);cdecl;external;
procedure fl_set_object_dblbuffer(ob:PFL_OBJECT; y:longint);cdecl;external;
procedure fl_set_object_color(ob:PFL_OBJECT; col1:TFL_COLOR; col2:TFL_COLOR);cdecl;external;
procedure fl_get_object_color(obj:PFL_OBJECT; col1:PFL_COLOR; col2:PFL_COLOR);cdecl;external;
(* Const before type ignored *)
procedure fl_set_object_label(ob:PFL_OBJECT; _label:Pchar);cdecl;external;
(* Const before type ignored *)
procedure fl_set_object_label_f(obj:PFL_OBJECT; fmt:Pchar; args:array of const);cdecl;external;
procedure fl_set_object_label_f(obj:PFL_OBJECT; fmt:Pchar);cdecl;external;
(* Const before type ignored *)
function fl_get_object_label(obj:PFL_OBJECT):Pchar;cdecl;external;
(* Const before type ignored *)
procedure fl_set_object_helper(ob:PFL_OBJECT; tip:Pchar);cdecl;external;
(* Const before type ignored *)
procedure fl_set_object_helper_f(ob:PFL_OBJECT; fmt:Pchar; args:array of const);cdecl;external;
procedure fl_set_object_helper_f(ob:PFL_OBJECT; fmt:Pchar);cdecl;external;
procedure fl_set_object_position(obj:PFL_OBJECT; x:TFL_Coord; y:TFL_Coord);cdecl;external;
procedure fl_get_object_size(obj:PFL_OBJECT; w:PFL_Coord; h:PFL_Coord);cdecl;external;
procedure fl_set_object_size(obj:PFL_OBJECT; w:TFL_Coord; h:TFL_Coord);cdecl;external;
procedure fl_set_object_automatic(obj:PFL_OBJECT; flag:longint);cdecl;external;
function fl_object_is_automatic(obj:PFL_OBJECT):longint;cdecl;external;
procedure fl_draw_object_label(ob:PFL_OBJECT);cdecl;external;
procedure fl_draw_object_label_outside(ob:PFL_OBJECT);cdecl;external;
function fl_get_object_component(composite:PFL_OBJECT; objclass:longint; _type:longint; numb:longint):PFL_OBJECT;cdecl;external;
procedure fl_for_all_objects(form:PFL_FORM; cb:function (para1:PFL_OBJECT; para2:pointer):longint; v:pointer);cdecl;external;
    const
      fl_draw_object_outside_label = fl_draw_object_label_outside;      

procedure fl_set_object_dblclick(obj:PFL_OBJECT; timeout:dword);cdecl;external;
function fl_get_object_dblclick(obj:PFL_OBJECT):dword;cdecl;external;
procedure fl_set_object_geometry(obj:PFL_OBJECT; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord);cdecl;external;
procedure fl_move_object(obj:PFL_OBJECT; dx:TFL_Coord; dy:TFL_Coord);cdecl;external;
    const
      fl_set_object_lcolor = fl_set_object_lcol;      
      fl_get_object_lcolor = fl_get_object_lcol;      

procedure fl_fit_object_label(obj:PFL_OBJECT; xmargin:TFL_Coord; ymargin:TFL_Coord);cdecl;external;
procedure fl_get_object_geometry(ob:PFL_OBJECT; x:PFL_Coord; y:PFL_Coord; w:PFL_Coord; h:PFL_Coord);cdecl;external;
procedure fl_get_object_position(ob:PFL_OBJECT; x:PFL_Coord; y:PFL_Coord);cdecl;external;
    { This one takes into account the label  }
procedure fl_get_object_bbox(obj:PFL_OBJECT; x:PFL_Coord; y:PFL_Coord; w:PFL_Coord; h:PFL_Coord);cdecl;external;
    const
      fl_compute_object_geometry = fl_get_object_bbox;      

procedure fl_call_object_callback(ob:PFL_OBJECT);cdecl;external;
function fl_set_object_prehandler(ob:PFL_OBJECT; phandler:TFL_HANDLEPTR):TFL_HANDLEPTR;cdecl;external;
function fl_set_object_posthandler(ob:PFL_OBJECT; post:TFL_HANDLEPTR):TFL_HANDLEPTR;cdecl;external;
function fl_set_object_callback(obj:PFL_OBJECT; callback:TFL_CALLBACKPTR; argument:longint):TFL_CALLBACKPTR;cdecl;external;
    const
      fl_set_object_align = fl_set_object_lalign;      
      fl_set_call_back = fl_set_object_callback;      

procedure fl_redraw_object(obj:PFL_OBJECT);cdecl;external;
procedure fl_show_object(ob:PFL_OBJECT);cdecl;external;
procedure fl_hide_object(ob:PFL_OBJECT);cdecl;external;
function fl_object_is_visible(obj:PFL_OBJECT):longint;cdecl;external;
procedure fl_free_object(obj:PFL_OBJECT);cdecl;external;
procedure fl_delete_object(obj:PFL_OBJECT);cdecl;external;
function fl_get_object_return_state(obj:PFL_OBJECT):longint;cdecl;external;
procedure fl_trigger_object(obj:PFL_OBJECT);cdecl;external;
procedure fl_activate_object(ob:PFL_OBJECT);cdecl;external;
procedure fl_deactivate_object(ob:PFL_OBJECT);cdecl;external;
function fl_object_is_active(obj:PFL_OBJECT):longint;cdecl;external;
(* Const before type ignored *)
function fl_enumerate_fonts(output:procedure (s:Pchar); shortform:longint):longint;cdecl;external;
(* Const before type ignored *)
function fl_set_font_name(n:longint; name:Pchar):longint;cdecl;external;
(* Const before type ignored *)
function fl_set_font_name_f(n:longint; fmt:Pchar; args:array of const):longint;cdecl;external;
function fl_set_font_name_f(n:longint; fmt:Pchar):longint;cdecl;external;
(* Const before type ignored *)
function fl_get_font_name(n:longint):Pchar;cdecl;external;
procedure fl_set_font(numb:longint; size:longint);cdecl;external;
    { Routines that facilitate free object  }
function fl_get_char_height(style:longint; size:longint; asc:Plongint; desc:Plongint):longint;cdecl;external;
function fl_get_char_width(style:longint; size:longint):longint;cdecl;external;
(* Const before type ignored *)
function fl_get_string_height(style:longint; size:longint; s:Pchar; len:longint; asc:Plongint; 
               desc:Plongint):longint;cdecl;external;
(* Const before type ignored *)
function fl_get_string_width(style:longint; size:longint; s:Pchar; len:longint):longint;cdecl;external;
(* Const before type ignored *)
function fl_get_string_widthTAB(style:longint; size:longint; s:Pchar; len:longint):longint;cdecl;external;
(* Const before type ignored *)
procedure fl_get_string_dimension(fntstyle:longint; fntsize:longint; s:Pchar; len:longint; width:Plongint; 
                height:Plongint);cdecl;external;
    const
      fl_get_string_size = fl_get_string_dimension;      

procedure fl_get_align_xy(align:longint; x:longint; y:longint; w:longint; h:longint; 
                xsize:longint; ysize:longint; xoff:longint; yoff:longint; xx:Plongint; 
                yy:Plongint);cdecl;external;
function fl_get_label_char_at_mouse(obj:PFL_OBJECT):longint;cdecl;external;
    const
      fl_drw_text = fl_draw_text;      
(* Const before type ignored *)

procedure fl_draw_text(align:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
                c:TFL_COLOR; style:longint; size:longint; istr:Pchar);cdecl;external;
    const
      fl_drw_text_beside = fl_draw_text_beside;      
(* Const before type ignored *)

procedure fl_draw_text_beside(align:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
                c:TFL_COLOR; style:longint; size:longint; str:Pchar);cdecl;external;
    const
      fl_drw_text_cursor = fl_draw_text_cursor;      
(* Const before type ignored *)

procedure fl_draw_text_cursor(align:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
                c:TFL_COLOR; style:longint; size:longint; str:Pchar; cc:TFL_COLOR; 
                pos:longint);cdecl;external;
    const
      fl_drw_box = fl_draw_box;      

procedure fl_draw_box(style:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
                c:TFL_COLOR; bw_in:longint);cdecl;external;
    type

      TFL_DRAWPTR = procedure (para1:TFL_Coord; para2:TFL_Coord; para3:TFL_Coord; para4:TFL_Coord; para5:longint; 
                    para6:TFL_COLOR);cdecl;
(* Const before type ignored *)

function fl_add_symbol(name:Pchar; drawit:TFL_DRAWPTR; scalable:longint):longint;cdecl;external;
(* Const before type ignored *)
function fl_delete_symbol(name:Pchar):longint;cdecl;external;
(* Const before type ignored *)
function fl_draw_symbol(_label:Pchar; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               col:TFL_COLOR):longint;cdecl;external;
function fl_mapcolor(col:TFL_COLOR; r:longint; g:longint; b:longint):dword;cdecl;external;
(* Const before type ignored *)
function fl_mapcolorname(col:TFL_COLOR; name:Pchar):longint;cdecl;external;
    const
      fl_mapcolor_name = fl_mapcolorname;      

procedure fl_free_colors(c:PFL_COLOR; n:longint);cdecl;external;
procedure fl_free_pixels(pix:Pdword; n:longint);cdecl;external;
procedure fl_set_color_leak(y:longint);cdecl;external;
function fl_getmcolor(i:TFL_COLOR; r:Plongint; g:Plongint; b:Plongint):dword;cdecl;external;
function fl_get_pixel(col:TFL_COLOR):dword;cdecl;external;
    const
      fl_get_flcolor = fl_get_pixel;      

procedure fl_get_icm_color(col:TFL_COLOR; r:Plongint; g:Plongint; b:Plongint);cdecl;external;
procedure fl_set_icm_color(col:TFL_COLOR; r:longint; g:longint; b:longint);cdecl;external;
procedure fl_color(col:TFL_COLOR);cdecl;external;
procedure fl_bk_color(col:TFL_COLOR);cdecl;external;
procedure fl_set_gamma(r:Tdouble; g:Tdouble; b:Tdouble);cdecl;external;
procedure fl_show_errors(y:longint);cdecl;external;
    { Some macros  }
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_max(a,b : longint) : longint;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_min(a,b : longint) : longint;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_abs(a : longint) : longint;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    function FL_nint(a : longint) : longint;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    function FL_nlong(a : longint) : longint;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_clamp(a,amin,amax : longint) : longint;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    function FL_crnd(a : longint) : TFL_Coord;    

(* Const before type ignored *)
    type

      TFL_FSCB = function (para1:Pchar; para2:pointer):longint;cdecl;
    { Utilities for new objects  }
      var
        fl_current_form : PFL_FORM;cvar;public;

procedure fl_add_object(form:PFL_FORM; obj:PFL_OBJECT);cdecl;external;
function fl_addto_form(form:PFL_FORM):PFL_FORM;cdecl;external;
(* Const before type ignored *)
function fl_make_object(objclass:longint; _type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; 
               h:TFL_Coord; _label:Pchar; handle:TFL_HANDLEPTR):PFL_OBJECT;cdecl;external;
procedure fl_add_child(para1:PFL_OBJECT; para2:PFL_OBJECT);cdecl;external;
procedure fl_set_coordunit(u:longint);cdecl;external;
procedure fl_set_border_width(bw:longint);cdecl;external;
procedure fl_set_scrollbar_type(t:longint);cdecl;external;
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function fl_set_thinscrollbar(t : longint) : longint;    

procedure fl_flip_yorigin;cdecl;external;
function fl_get_coordunit:longint;cdecl;external;
function fl_get_border_width:longint;cdecl;external;
    { Misc. routines  }
procedure fl_ringbell(percent:longint);cdecl;external;
procedure fl_gettime(sec:Plongint; usec:Plongint);cdecl;external;
(* Const before type ignored *)
function fl_now:Pchar;cdecl;external;
(* Const before type ignored *)
function fl_whoami:Pchar;cdecl;external;
function fl_mouse_button:longint;cdecl;external;
function fl_current_event:longint;cdecl;external;
(* Const before type ignored *)
function fl_strdup(s:Pchar):Pchar;cdecl;external;
procedure fl_set_err_logfp(fp:PFILE);cdecl;external;
procedure fl_set_error_handler(user_func:TFL_ERROR_FUNC);cdecl;external;
function fl_get_cmdline_args(para1:Plongint):^Pchar;cdecl;external;
    { This function was called 'fl_set_error_logfp/' in XForms 0.89.  }
    const
      fl_set_error_logfp = fl_set_err_logfp;      
      fl_mousebutton = fl_mouse_button;      
    { These give more flexibility for future changes. Also application
     * can re-assign these pointers to whatever function it wants, e.g.,
     * to a shared memory pool allocator.  }
      var
        fl_free : procedure (para1:pointer);cvar;public;
        fl_malloc : function (para1:Tsize_t):pointer;cvar;public;
        fl_calloc : function (para1:Tsize_t; para2:Tsize_t):pointer;cvar;public;
        fl_realloc : function (para1:pointer; para2:Tsize_t):pointer;cvar;public;

function fl_msleep(msec:dword):longint;cdecl;external;
    const
      FL_MAX_MENU_CHOICE_ITEMS = 128;      
(* Const before type ignored *)
    type
      PFL_VAL_FILTER = ^TFL_VAL_FILTER;
      TFL_VAL_FILTER = function (para1:PFL_OBJECT; para2:Tdouble; para3:longint):Pchar;cdecl;

function fl_is_same_object(obj1:PFL_OBJECT; obj2:PFL_OBJECT):longint;cdecl;external;
{$endif}
    { ! defined FL_BASIC_H  }
    {*
     * \file XBasic.h
     *
     *  X Window dependent stuff
     *
      }
{$ifndef FL_XBASIC_H}
{$define FL_XBASIC_H}    
    { Draw mode  }
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_XOR = GXxor;
        FL_COPY = GXcopy;
        FL_AND = GXand;
;
      FL_MINDEPTH = 1;      
    { FL_xxx does not do anything anymore, but kept for compatibility  }
    { special request  }
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_IllegalVisual = -(1);
        FL_StaticGray = StaticGray;
        FL_GrayScale = GrayScale;
        FL_StaticColor = StaticColor;
        FL_PseudoColor = PseudoColor;
        FL_TrueColor = TrueColor;
        FL_DirectColor = DirectColor;
        FL_DefaultVisual = 10;
;
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_North = NorthGravity;
        FL_NorthEast = NorthEastGravity;
        FL_NorthWest = NorthWestGravity;
        FL_South = SouthGravity;
        FL_SouthEast = SouthEastGravity;
        FL_SouthWest = SouthWestGravity;
        FL_East = EastGravity;
        FL_West = WestGravity;
        FL_NoGravity = ForgetGravity;
        FL_ForgetGravity = ForgetGravity;
;
{$ifndef GreyScale}

    const
      GreyScale = GrayScale;      
      StaticGrey = StaticGray;      
{$endif}
    {#define FL_is_gray(v) ((v)==GrayScale||(v)==StaticGray) }
    {#define FL_is_rgb(v) ((v)==TrueColor||(v)==DirectColor) }
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   

    function FL_is_gray(v : longint) : longint;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_is_rgb(v : longint) : longint;    

    { Internal colormap size. Not really very meaningful as fl_mapcolor
     * and company allow color "leakage", that is, although only FL_MAX_COLS
     * are kept in the internal colormap, the server might have substantially
     * more colors allocated  }
    const
      FL_MAX_COLORS = 1024;      
      FL_MAX_COLS = FL_MAX_COLORS;      
    { FL graphics state information. Some are redundant.  }
    { current font in default GC  }
    { colormap valid for xvinfo  }
    { a valid window for xvinfo  }
    { visual class and color depth  }
    { primary color resolution  }
    { true if dithered color  }
    { true if colormap is not shared  }
    { working GC  }
    { GC used exclusively for text  }
    { A GC having a checkboard stipple  }
    { secondary lookup table  }
    type
      PFL_State = ^TFL_State;
      TFL_State = record
          xvinfo : PXVisualInfo;
          cur_fnt : PXFontStruct;
          colormap : TColormap;
          trailblazer : TWindow;
          vclass : longint;
          depth : longint;
          rgb_bits : longint;
          dithered : longint;
          pcm : longint;
          gc : array[0..15] of TGC;
          textgc : array[0..15] of TGC;
          dimmedGC : TGC;
          lut : array[0..(FL_MAX_COLS)-1] of dword;
          rshift : dword;
          rmask : dword;
          rbits : dword;
          gshift : dword;
          gmask : dword;
          gbits : dword;
          bshift : dword;
          bmask : dword;
          bbits : dword;
        end;
    { for compatibility  }

    const
      FL_STATE = FL_State;      
    {**** Global variables ***** }
      var
        fl_display : PDisplay;cvar;public;
        fl_screen : longint;cvar;public;
        fl_root : TWindow;cvar;public;
    { root window  }
        fl_vroot : TWindow;cvar;public;
    { virtual root window  }
    { screen dimension in pixels  }
        fl_scrh : longint;cvar;public;
        fl_vmode : longint;cvar;public;

    { was #define dname def_expr }
    function fl_visual : longint; { return type might be wrong }

    { was #define dname def_expr }
    function fl_colormap : longint; { return type might be wrong }

    { was #define dname(params) para_def_expr }
    { return type might be wrong }   
    function fl_get_visual : longint;    

    { was #define dname(params) para_def_expr }
    { return type might be wrong }   
    function fl_get_colormap : longint;    

    { Current version only runs in single visual mode  }
    { was #define dname(params) para_def_expr }
    { return type might be wrong }   
    function fl_get_vclass : longint;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function fl_get_form_vclass(a : longint) : longint;    

    { was #define dname(params) para_def_expr }
    { return type might be wrong }   
    function fl_get_gc : longint;    

      var
        fl_state : PFL_State;cvar;public;
        fl_ul_magic_char : Pchar;cvar;public;
        fl_dpi : Tdouble;cvar;public;
    { was #define dname(params) para_def_expr }
    { return type might be wrong }   

    function fl_get_dpi : longint;    

function fl_mode_capable(mode:longint; warn:longint):longint;cdecl;external;
    { was #define dname(params) para_def_expr }
    { return type might be wrong }   
    function fl_default_win : longint;    

    { was #define dname(params) para_def_expr }
    { return type might be wrong }   
    function fl_default_window : longint;    

    { All pixmaps used by FL_OBJECT to simulate double buffering have the
     * following entries in the structure. FL_Coord x,y are used to shift
     * the origin of the drawing routines  }
    type
      PFL_pixmap_ = ^TFL_pixmap_;
      TFL_pixmap_ = record
          pixmap : TPixmap;
          win : TWindow;
          visual : PVisual;
          x : TFL_Coord;
          y : TFL_Coord;
          w : TFL_Coord;
          h : TFL_Coord;
          depth : longint;
          dbl_background : TFL_COLOR;
          pixel : TFL_COLOR;
        end;

    { Fonts related  }

    const
      FL_MAX_FONTSIZES = 10;      
      FL_MAX_FONTNAME_LENGTH = 80;      
    { cached fontstruct  }
    { cached sizes  }
    { cached so far  }
    { without size info  }
    type
      PFL_FONT = ^TFL_FONT;
      TFL_FONT = record
          fs : array[0..(FL_MAX_FONTSIZES)-1] of PXFontStruct;
          size : array[0..(FL_MAX_FONTSIZES)-1] of smallint;
          nsize : smallint;
          fname : array[0..(FL_MAX_FONTNAME_LENGTH+1)-1] of char;
        end;
    { Some basic drawing routines  }

      PFL_POINT = ^TFL_POINT;
      TFL_POINT = TXPoint;

      PFL_RECT = ^TFL_RECT;
      TFL_RECT = TXRectangle;
    { Rectangles  }

procedure fl_rectangle(fill:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
                col:TFL_COLOR);cdecl;external;
procedure fl_rectbound(x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; col:TFL_COLOR);cdecl;external;
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function fl_rectf(x,y,w,h,c : longint) : longint;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function fl_rect(x,y,w,h,c : longint) : longint;    

    { Rectangle with rounded-corners  }
procedure fl_roundrectangle(fill:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
                col:TFL_COLOR);cdecl;external;
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function fl_roundrectf(x,y,w,h,c : longint) : longint;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function fl_roundrect(x,y,w,h,c : longint) : longint;    

    { General polygon and polylines  }
procedure fl_polygon(fill:longint; xp:PFL_POINT; n:longint; col:TFL_COLOR);cdecl;external;
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function fl_polyf(p,n,c : longint) : longint;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function fl_polyl(p,n,c : longint) : longint;    

(* error 
    do { fl_polygon( 1, p, n, c );            \
in declaration at line 1915 *)
(* error 
    do { fl_polygon( 1, p, n, c );            \
(* error 
         fl_polygon( 0, p, n, FL_BLACK );     \
in declaration at line 1916 *)
(* error 
         fl_polygon( 0, p, n, FL_BLACK );     \
(* error 
       } while( 0 )
in declaration at line 1921 *)
procedure fl_line(xi:TFL_Coord; yi:TFL_Coord; xf:TFL_Coord; yf:TFL_Coord; c:TFL_COLOR);cdecl;external;
procedure fl_point(x:TFL_Coord; y:TFL_Coord; c:TFL_COLOR);cdecl;external;
procedure fl_points(p:PFL_POINT; np:longint; c:TFL_COLOR);cdecl;external;
    const
      fl_simple_line = fl_line;      
(* Const before type ignored *)

procedure fl_dashedlinestyle(dash:Pchar; ndash:longint);cdecl;external;
procedure fl_update_display(block:longint);cdecl;external;
(* error 
    {                                                                         \
in declaration at line 1948 *)
(* error 
        FL_COORD fli_x = ( x ), fli_y = ( y );                                \
(* error 
        fl_line( fli_x, fli_y, fli_x + ( w ) - 1, fli_y + ( h ) - 1, ( c ) ); \
in declaration at line 1949 *)
(* error 
        fl_line( fli_x, fli_y, fli_x + ( w ) - 1, fli_y + ( h ) - 1, ( c ) ); \
(* error 
    } while ( 0 )
    { Line attributes  }
in declaration at line 1962 *)
procedure fl_linewidth(n:longint);cdecl;external;
procedure fl_linestyle(n:longint);cdecl;external;
procedure fl_drawmode(request:longint);cdecl;external;
function fl_get_linewidth:longint;cdecl;external;
function fl_get_linestyle:longint;cdecl;external;
function fl_get_drawmode:longint;cdecl;external;
    const
      fl_set_linewidth = fl_linewidth;      
      fl_set_linestyle = fl_linestyle;      
      fl_set_drawmode = fl_drawmode;      
    {* Ellipses * }

procedure fl_circ(x:TFL_COORD; y:TFL_COORD; r:TFL_COORD; col:TFL_COLOR);cdecl;external;
procedure fl_circf(x:TFL_COORD; y:TFL_COORD; r:TFL_COORD; col:TFL_COLOR);cdecl;external;
procedure fl_circbound(x:TFL_COORD; y:TFL_COORD; r:TFL_COORD; col:TFL_COLOR);cdecl;external;
procedure fl_oval(fill:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
                col:TFL_COLOR);cdecl;external;
procedure fl_ovalbound(x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; col:TFL_COLOR);cdecl;external;
procedure fl_ovalarc(fill:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
                t0:longint; dt:longint; col:TFL_COLOR);cdecl;external;
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function fl_ovalf(x,y,w,h,c : longint) : longint;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function fl_ovall(x,y,w,h,c : longint) : longint;    

    const
      fl_oval_bound = fl_ovalbound;      
    { Arcs  }

procedure fl_arcf(x:TFL_COORD; y:TFL_Coord; r:TFL_COORD; a1:longint; a2:longint; 
                col:TFL_COLOR);cdecl;external;
procedure fl_arc(x:TFL_COORD; y:TFL_Coord; r:TFL_COORD; a1:longint; a2:longint; 
                col:TFL_COLOR);cdecl;external;
procedure fl_pieslice(fill:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
                a1:longint; a2:longint; col:TFL_COLOR);cdecl;external;
    { High level drawing routines  }
    const
      fl_drw_frame = fl_draw_frame;      

procedure fl_draw_frame(style:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
                c:TFL_COLOR; bw:longint);cdecl;external;
    {
     * Interfaces
      }
function fl_get_fontstruct(style:longint; size:longint):PXFontStruct;cdecl;external;
    const
      fl_get_font_struct = fl_get_fontstruct;      
      fl_get_fntstruct = fl_get_font_struct;      

function fl_get_mouse(x:PFL_Coord; y:PFL_Coord; keymask:Pdword):TWindow;cdecl;external;
procedure fl_set_mouse(mx:TFL_Coord; my:TFL_Coord);cdecl;external;
function fl_get_win_mouse(win:TWindow; x:PFL_Coord; y:PFL_Coord; keymask:Pdword):TWindow;cdecl;external;
function fl_get_form_mouse(fm:PFL_FORM; x:PFL_Coord; y:PFL_Coord; keymask:Pdword):TWindow;cdecl;external;
function fl_win_to_form(win:TWindow):PFL_FORM;cdecl;external;
procedure fl_set_form_icon(form:PFL_FORM; p:TPixmap; m:TPixmap);cdecl;external;
function fl_get_decoration_sizes(form:PFL_FORM; top:Plongint; right:Plongint; bottom:Plongint; left:Plongint):longint;cdecl;external;
procedure fl_raise_form(form:PFL_FORM);cdecl;external;
procedure fl_lower_form(form:PFL_FORM);cdecl;external;
procedure fl_set_foreground(gc:TGC; color:TFL_COLOR);cdecl;external;
procedure fl_set_background(gc:TGC; color:TFL_COLOR);cdecl;external;
    { General windowing support  }
(* Const before type ignored *)
function fl_wincreate(_label:Pchar):TWindow;cdecl;external;
function fl_winshow(win:TWindow):TWindow;cdecl;external;
(* Const before type ignored *)
function fl_winopen(_label:Pchar):TWindow;cdecl;external;
procedure fl_winhide(win:TWindow);cdecl;external;
procedure fl_winclose(win:TWindow);cdecl;external;
procedure fl_winset(win:TWindow);cdecl;external;
function fl_winreparent(win:TWindow; new_parent:TWindow):longint;cdecl;external;
procedure fl_winfocus(win:TWindow);cdecl;external;
function fl_winget:TWindow;cdecl;external;
function fl_iconify(win:TWindow):longint;cdecl;external;
procedure fl_winresize(win:TWindow; neww:TFL_Coord; newh:TFL_Coord);cdecl;external;
procedure fl_winmove(win:TWindow; dx:TFL_Coord; dy:TFL_Coord);cdecl;external;
procedure fl_winreshape(win:TWindow; dx:TFL_Coord; dy:TFL_Coord; w:TFL_Coord; h:TFL_Coord);cdecl;external;
procedure fl_winicon(win:TWindow; p:TPixmap; m:TPixmap);cdecl;external;
procedure fl_winbackground(win:TWindow; bk:dword);cdecl;external;
procedure fl_winstepsize(win:TWindow; dx:TFL_Coord; dy:TFL_Coord);cdecl;external;
function fl_winisvalid(win:TWindow):longint;cdecl;external;
(* Const before type ignored *)
procedure fl_wintitle(win:TWindow; title:Pchar);cdecl;external;
(* Const before type ignored *)
procedure fl_wintitle_f(win:TWindow; fmt:Pchar; args:array of const);cdecl;external;
procedure fl_wintitle_f(win:TWindow; fmt:Pchar);cdecl;external;
(* Const before type ignored *)
procedure fl_winicontitle(win:TWindow; title:Pchar);cdecl;external;
(* Const before type ignored *)
procedure fl_winicontitle_f(win:TWindow; fmt:Pchar; args:array of const);cdecl;external;
procedure fl_winicontitle_f(win:TWindow; fmt:Pchar);cdecl;external;
procedure fl_winposition(x:TFL_Coord; y:TFL_Coord);cdecl;external;
    const
      fl_pref_winposition = fl_winposition;      
      fl_win_background = fl_winbackground;      
      fl_winstepunit = fl_winstepsize;      
      fl_set_winstepunit = fl_winstepsize;      

procedure fl_winminsize(win:TWindow; w:TFL_Coord; h:TFL_Coord);cdecl;external;
procedure fl_winmaxsize(win:TWindow; w:TFL_Coord; h:TFL_Coord);cdecl;external;
procedure fl_winaspect(win:TWindow; x:TFL_Coord; y:TFL_Coord);cdecl;external;
procedure fl_reset_winconstraints(win:TWindow);cdecl;external;
procedure fl_winsize(w:TFL_Coord; h:TFL_Coord);cdecl;external;
procedure fl_initial_winsize(w:TFL_Coord; h:TFL_Coord);cdecl;external;
    const
      fl_pref_winsize = fl_winsize;      

procedure fl_initial_winstate(state:longint);cdecl;external;
function fl_create_colormap(xv:PXVisualInfo; nfill:longint):TColormap;cdecl;external;
procedure fl_wingeometry(x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord);cdecl;external;
    const
      fl_pref_wingeometry = fl_wingeometry;      

procedure fl_initial_wingeometry(x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord);cdecl;external;
procedure fl_noborder;cdecl;external;
procedure fl_transient;cdecl;external;
procedure fl_get_winsize(win:TWindow; w:PFL_Coord; h:PFL_Coord);cdecl;external;
procedure fl_get_winorigin(win:TWindow; x:PFL_Coord; y:PFL_Coord);cdecl;external;
procedure fl_get_wingeometry(win:TWindow; x:PFL_Coord; y:PFL_Coord; w:PFL_Coord; h:PFL_Coord);cdecl;external;
    { For compatibility  }
    const
      fl_get_win_size = fl_get_winsize;      
      fl_get_win_origin = fl_get_winorigin;      
      fl_get_win_geometry = fl_get_wingeometry;      
      fl_initial_winposition = fl_pref_winposition;      
    { was #define dname(params) para_def_expr }
    { return type might be wrong }   

    function fl_get_display : longint;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_FormDisplay(form : longint) : longint;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_ObjectDisplay(object : longint) : longint;    

    {#define FL_IS_CANVAS( o ) ( ( o )->objclass == FL_CANVAS || ( o )->objclass == FL_GLCANVAS ) }
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_IS_CANVAS(o : longint) : longint;    

    { The window an object belongs to - for drawing  }
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_ObjWin(o : longint) : longint;    

function fl_get_real_object_window(ob:PFL_OBJECT):TWindow;cdecl;external;
    const
      FL_OBJECT_WID = FL_ObjWin;      
    {  All registerable events, including Client Message  }
      FL_ALL_EVENT = ((((((KeyPressMask or KeyReleaseMask) or ButtonPressMask) or ButtonReleaseMask) or EnterWindowMask) or LeaveWindowMask) or ButtonMotionMask) or PointerMotionMask;      
    { Replacements for X functions that access the event queue  }

function fl_XNextEvent(xev:PXEvent):longint;cdecl;external;
function fl_XPeekEvent(xev:PXEvent):longint;cdecl;external;
function fl_XEventsQueued(mode:longint):longint;cdecl;external;
procedure fl_XPutBackEvent(xev:PXEvent);cdecl;external;
(* Const before type ignored *)
function fl_last_event:PXEvent;cdecl;external;
    type

      TFL_APPEVENT_CB = function (para1:PXEvent; para2:pointer):longint;cdecl;

function fl_set_event_callback(callback:TFL_APPEVENT_CB; user_data:pointer):TFL_APPEVENT_CB;cdecl;external;
function fl_set_idle_callback(callback:TFL_APPEVENT_CB; user_data:pointer):TFL_APPEVENT_CB;cdecl;external;
function fl_addto_selected_xevent(win:TWindow; mask:longint):longint;cdecl;external;
function fl_remove_selected_xevent(win:TWindow; mask:longint):longint;cdecl;external;
    const
      fl_add_selected_xevent = fl_addto_selected_xevent;      

procedure fl_set_idle_delta(delta:longint);cdecl;external;
function fl_add_event_callback(win:TWindow; ev:longint; wincb:TFL_APPEVENT_CB; user_data:pointer):TFL_APPEVENT_CB;cdecl;external;
procedure fl_remove_event_callback(win:TWindow; ev:longint);cdecl;external;
procedure fl_activate_event_callbacks(win:TWindow);cdecl;external;
(* Const before type ignored *)
(* Const before type ignored *)
function fl_print_xevent_name(where:Pchar; xev:PXEvent):PXEvent;cdecl;external;
procedure fl_XFlush;cdecl;external;
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    function metakey_down(mask : longint) : Tmask;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    function shiftkey_down(mask : longint) : Tmask;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    function controlkey_down(mask : longint) : Tmask;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function button_down(mask : longint) : longint;    

    {#define button_down( mask )      (    ( ( mask ) & Button1Mask )  \ }
    {                                   || ( ( mask ) & Button2Mask )  \ }
    {                                   || ( ( mask ) & Button3Mask )  \ }
    {                                   || ( ( mask ) & Button4Mask )  \ }
    {                                   || ( ( mask ) & Button5Mask ) ) }
    const
      fl_keypressed = fl_keysym_pressed;      
    {***************** Resources ************** }
    type
      PFL_RTYPE = ^TFL_RTYPE;
      TFL_RTYPE =  Longint;
      Const
        FL_NONE = 0;
        FL_SHORT = 10;
        FL_BOOL = 11;
        FL_INT = 12;
        FL_LONG = 13;
        FL_FLOAT = 14;
        FL_STRING = 15;
;
(* Const before type ignored *)
    { resource name                         }
(* Const before type ignored *)
    { resource class                        }
    { FL_INT, FL_FLOAT, FL_BOOL, FL_STRING  }
    { address for the variable              }
(* Const before type ignored *)
    { default setting in string form        }
    { used only for strings                 }
    type
      PFL_RESOURCE = ^TFL_RESOURCE;
      TFL_RESOURCE = record
          res_name : Pchar;
          res_class : Pchar;
          _type : TFL_RTYPE;
          var : pointer;
          defval : Pchar;
          nbytes : longint;
        end;

    const
      FL_resource = FL_RESOURCE;      
      FL_CMD_OPT = XrmOptionDescRec;      
(* Const before type ignored *)

function fl_initialize(na:Plongint; arg:PPchar; appclass:Pchar; appopt:PFL_CMD_OPT; nappopt:longint):PDisplay;cdecl;external;
procedure fl_finish;cdecl;external;
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
function fl_get_resource(rname:Pchar; cname:Pchar; dtype:TFL_RTYPE; defval:Pchar; val:pointer; 
               size:longint):Pchar;cdecl;external;
(* Const before type ignored *)
(* Const before type ignored *)
procedure fl_set_resource(str:Pchar; val:Pchar);cdecl;external;
procedure fl_get_app_resources(appresource:PFL_RESOURCE; n:longint);cdecl;external;
procedure fl_set_visualID(id:longint);cdecl;external;
function fl_keysym_pressed(k:TKeySym):longint;cdecl;external;
    const
      buttonLabelSize = buttonFontSize;      
      sliderLabelSize = sliderFontSize;      
      inputLabelSize = inputFontSize;      
    { All Form control variables. Named closely as its resource name  }
    { underline stuff        }
    { all other labels fonts  }
    { font for pop-up menus   }
    { where RGB file is, not used  }
    type
      PFL_IOPT = ^TFL_IOPT;
      TFL_IOPT = record
          rgamma : single;
          ggamma : single;
          bgamma : single;
          debug : longint;
          sync : longint;
          depth : longint;
          vclass : longint;
          doubleBuffer : longint;
          ulPropWidth : longint;
          ulThickness : longint;
          buttonFontSize : longint;
          sliderFontSize : longint;
          inputFontSize : longint;
          browserFontSize : longint;
          menuFontSize : longint;
          choiceFontSize : longint;
          labelFontSize : longint;
          pupFontSize : longint;
          pupFontStyle : longint;
          privateColormap : longint;
          sharedColormap : longint;
          standardColormap : longint;
          scrollbarType : longint;
          backingStore : longint;
          coordUnit : longint;
          borderWidth : longint;
          safe : longint;
          rgbfile : Pchar;
          vname : array[0..23] of char;
        end;

    const
      FL_PDButtonLabelSize = FL_PDButtonFontSize;      
      FL_PDSliderLabelSize = FL_PDSliderFontSize;      
      FL_PDInputLabelSize = FL_PDInputFontSize;      
    { Program default masks  }
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_PDDepth = 1 shl 1;
        FL_PDClass = 1 shl 2;
        FL_PDDouble = 1 shl 3;
        FL_PDSync = 1 shl 4;
        FL_PDPrivateMap = 1 shl 5;
        FL_PDScrollbarType = 1 shl 6;
        FL_PDPupFontSize = 1 shl 7;
        FL_PDButtonFontSize = 1 shl 8;
        FL_PDInputFontSize = 1 shl 9;
        FL_PDSliderFontSize = 1 shl 10;
        FL_PDVisual = 1 shl 11;
        FL_PDULThickness = 1 shl 12;
        FL_PDULPropWidth = 1 shl 13;
        FL_PDBS = 1 shl 14;
        FL_PDCoordUnit = 1 shl 15;
        FL_PDDebug = 1 shl 16;
        FL_PDSharedMap = 1 shl 17;
        FL_PDStandardMap = 1 shl 18;
        FL_PDBorderWidth = 1 shl 19;
        FL_PDSafe = 1 shl 20;
        FL_PDMenuFontSize = 1 shl 21;
        FL_PDBrowserFontSize = 1 shl 22;
        FL_PDChoiceFontSize = 1 shl 23;
        FL_PDLabelFontSize = 1 shl 24;
;
      FL_PDButtonLabel = FL_PDButtonLabelSize;      

procedure fl_set_defaults(mask:dword; cntl:PFL_IOPT);cdecl;external;
(* Const before type ignored *)
procedure fl_set_tabstop(s:Pchar);cdecl;external;
function fl_get_visual_depth:longint;cdecl;external;
function fl_is_global_clipped:longint;cdecl;external;
function fl_is_clipped(include_global:longint):longint;cdecl;external;
function fl_is_text_clipped(include_global:longint):longint;cdecl;external;
procedure fl_set_clipping(x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord);cdecl;external;
procedure fl_unset_clipping;cdecl;external;
procedure fl_set_text_clipping(x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord);cdecl;external;
procedure fl_unset_text_clipping;cdecl;external;
function fl_get_global_clipping(x:PFL_COORD; y:PFL_COORD; w:PFL_COORD; h:PFL_COORD):longint;cdecl;external;
function fl_get_clipping(include_global:longint; x:PFL_COORD; y:PFL_COORD; w:PFL_COORD; h:PFL_COORD):longint;cdecl;external;
function fl_get_text_clipping(include_global:longint; x:PFL_COORD; y:PFL_COORD; w:PFL_COORD; h:PFL_COORD):longint;cdecl;external;
procedure fl_set_gc_clipping(gc:TGC; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord);cdecl;external;
procedure fl_unset_gc_clipping(gc:TGC);cdecl;external;
    { How we pack and unpack colors  }
{$ifndef FL_PCBITS}
    type
      PFL_PCTYPE = ^TFL_PCTYPE;
      TFL_PCTYPE = byte;
    { primary color type  }
    { primary color bits  }

    const
      FL_PCBITS = 8;      
      FL_PCMAX = (1 shl FL_PCBITS)-1;      
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   

    function FL_PCCLAMP(a : longint) : longint;    

    type
      PFL_PACKED4 = ^TFL_PACKED4;
      TFL_PACKED4 = dword;

    const
      FL_PACKED = FL_PACKED4;      
      FL_RMASK = $000000ff;      
      FL_RSHIFT = 0;      
      FL_GMASK = $0000ff00;      
      FL_GSHIFT = 8;      
      FL_BMASK = $00ff0000;      
      FL_BSHIFT = 16;      
      FL_AMASK = $ff000000;      
      FL_ASHIFT = 24;      
    { If PCBITS is not 8, we need to apply the RGBmask  }
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   

    function FL_GETR(packed : longint) : longint;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_GETG(packed : longint) : longint;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_GETB(packed : longint) : longint;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_GETA(packed : longint) : longint;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_PACK3(r,g,b : longint) : longint;    

    const
      FL_PACK = FL_PACK3;      
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   

    function FL_PACK4(r,g,b,a : longint) : longint;    

    {#define FL_UNPACK( p, r, g, b )   \ }
    {    do  r = FL_GETR( p );        \ }
    {         g = FL_GETG( p );        \ }
    {         b = FL_GETB( p );        \ }
    {     while( 0 ) }
    {#define FL_UNPACK3 FL_UNPACK }
    {#define FL_UNPACK4( p, r, g, b, a )   \ }
    {    do  FL_UNPACK3( p, r, g, b );    \ }
    {         a = FL_GETA( p );            \ }
    {     while( 0 ) }
    {#endif }
    type
      PFL_RGB2PIXEL_ = ^TFL_RGB2PIXEL_;
      TFL_RGB2PIXEL_ = record
          rshift : dword;
          rmask : dword;
          rbits : dword;
          gshift : dword;
          gmask : dword;
          gbits : dword;
          bshift : dword;
          bmask : dword;
          bbits : dword;
          bits_per_rgb : longint;
          colormap_size : longint;
        end;

    const
      FL_RGB2PIXEL = FL_RGB2PIXEL_;      
{$endif}
    { ! defined FL_XBASIC_H  }
    {
     * Local variables:
     * tab-width: 4
     * indent-tabs-mode: nil
     * End:
      }
{$ifndef FL_POPUP_H}
{$define FL_POPUP_H}    
    type
      TFL_POPUP_ = TFL_POPUP;
      TFL_POPUP_ENTRY_ = TFL_POPUP_ENTRY;
      TFL_POPUP_RETURN_ = TFL_POPUP_RETURN;

      TFL_POPUP_CB = function (para1:PFL_POPUP_RETURN):longint;cdecl;
    { value assigned to popup entry  }
    { pointer to user data  }
(* Const before type ignored *)
    { text of the selected popup entry  }
(* Const before type ignored *)
    { left-flushed label part  }
(* Const before type ignored *)
    { right-flushed label part  }
(* Const before type ignored *)
    { pointer to selected popup entry  }
(* Const before type ignored *)
    { popup we're called for  }
      PFL_POPUP_RETURN_ = ^TFL_POPUP_RETURN_;
      TFL_POPUP_RETURN_ = record
          val : longint;cdecl;
          user_data : pointer;
          text : Pchar;
          _label : Pchar;
          accel : Pchar;
          entry : PFL_POPUP_ENTRY;
          popup : PFL_POPUP;
        end;

    { next in linked list  }
    { previous in linked list  }
    { for sub-popups: direct parent  }
    { and top-most parent  }
    { pointer to list of entries  }
    { popup window  }
    { parent window of popup window  }
    { cursor for the popup  }
    { if set use req_x, req_y  }
    { position of popup window  }
    { dimensions of popup window  }
    { minimum width of popup  }
    { position of title box  }
    { dimensions of title box  }
    { border width  }
    { background color of popup }
    { color of entry under mouse  }
    { color of title text  }
    { normal text color of entry  }
    { text color when mouse on entry  }
    { text color of disabled entry  }
    { color of radio buttons  }
    { do we need to recalc position?  }
    { structure passed to calbacks
                                                and returned on selection  }
      PFL_POPUP_ = ^TFL_POPUP_;
      TFL_POPUP_ = record
          next : PFL_POPUP;
          prev : PFL_POPUP;
          parent : PFL_POPUP;
          top_parent : PFL_POPUP;
          entries : PFL_POPUP_ENTRY;
          title : Pchar;
          win : TWindow;
          parent_win : TWindow;
          cursor : TCursor;
          callback : TFL_POPUP_CB;
          use_req_pos : longint;
          req_x : longint;
          req_y : longint;
          x : longint;
          y : longint;
          w : dword;
          h : dword;
          min_width : longint;
          title_box_x : longint;
          title_box_y : longint;
          title_box_w : dword;
          title_box_h : dword;
          has_subs : longint;
          has_boxes : longint;
          counter : longint;
          title_font_style : longint;
          title_font_size : longint;
          entry_font_style : longint;
          entry_font_size : longint;
          event_mask : dword;
          bw : longint;
          bg_color : TFL_COLOR;
          on_color : TFL_COLOR;
          title_color : TFL_COLOR;
          text_color : TFL_COLOR;
          text_on_color : TFL_COLOR;
          text_off_color : TFL_COLOR;
          radio_color : TFL_COLOR;
          policy : longint;
          need_recalc : longint;
          ret : TFL_POPUP_RETURN;
        end;

    { next in linked list  }
    { previous in linked list  }
    { popup it belongs to  }
    { set while mouse is over it  }
    { complete text of entry  }
    { cleaned-up label text  }
    { cleaned-up accelerator key text  }
    { value associated with entry  }
    { pointer to user data  }
    { normal, toggle, radio, sub-popup  }
    { disabled, hidden, checked  }
    { group (for radio entries only)  }
    { sub-popup bound to entry  }
    { keyboard shortcuts  }
    { underline position in text  }
    { callback for entry  }
    { callback for entering entry  }
    { callback for leaving entry  }
    { position of entry text  }
    { height of entry text  }
      PFL_POPUP_ENTRY_ = ^TFL_POPUP_ENTRY_;
      TFL_POPUP_ENTRY_ = record
          prev : PFL_POPUP_ENTRY;
          next : PFL_POPUP_ENTRY;
          popup : PFL_POPUP;
          is_act : longint;
          text : Pchar;
          _label : Pchar;
          accel : Pchar;
          val : longint;
          user_data : pointer;
          _type : longint;
          state : dword;
          group : longint;
          sub : PFL_POPUP;
          shortcut : Plongint;
          ulpos : longint;
          callback : TFL_POPUP_CB;
          enter_callback : TFL_POPUP_CB;
          leave_callback : TFL_POPUP_CB;
          x : longint;
          y : longint;
          w : dword;
          h : dword;
          box_x : longint;
          box_y : longint;
          box_w : dword;
          box_h : dword;
          sl_h : dword;
          ul_x : longint;
          ul_y : longint;
          ul_w : dword;
          ul_h : dword;
        end;

(* Const before type ignored *)
    { text of entry  }
    { (selection) callback  }
(* Const before type ignored *)
    { keyboard shortcut description  }
    { type of entry  }
    { disabled, hidden, checked  }

      PFL_POPUP_ITEM = ^TFL_POPUP_ITEM;
      TFL_POPUP_ITEM = record
          text : Pchar;
          callback : TFL_POPUP_CB;
          shortcut : Pchar;
          _type : longint;
          state : longint;
        end;
    { Popup policies  }

      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_POPUP_NORMAL_SELECT = 0;
        FL_POPUP_DRAG_SELECT = 1;
;
    { Popup states  }
    { entry is disabled  }
    { entry is temporarily hidden  }
    { tooogle/radio item is in on state  }
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_POPUP_NONE = 0;
        FL_POPUP_DISABLED = 1;
        FL_POPUP_HIDDEN = 2;
        FL_POPUP_CHECKED = 4;
;
    { Popup entry types  }
    { normal popup entry  }
    { toggle ("binary") popup entry  }
    { radio popup entry  }
    { sub-popup popup entry  }
    { line popup entry  }
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_POPUP_NORMAL = 0;
        FL_POPUP_TOGGLE = 1;
        FL_POPUP_RADIO = 2;
        FL_POPUP_SUB = 3;
        FL_POPUP_LINE = 4;
;
    { Popup color types  }
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_POPUP_BACKGROUND_COLOR = 0;
        FL_POPUP_HIGHLIGHT_COLOR = 1;
        FL_POPUP_TITLE_COLOR = 2;
        FL_POPUP_TEXT_COLOR = 3;
        FL_POPUP_HIGHLIGHT_TEXT_COLOR = 4;
        FL_POPUP_DISABLED_TEXT_COLOR = 5;
        FL_POPUP_RADIO_COLOR = 6;
;
(* Const before type ignored *)

function fl_popup_add(para1:TWindow; para2:Pchar):PFL_POPUP;cdecl;external;
(* Const before type ignored *)
function fl_popup_add_entries(para1:PFL_POPUP; para2:Pchar; args:array of const):PFL_POPUP_ENTRY;cdecl;external;
function fl_popup_add_entries(para1:PFL_POPUP; para2:Pchar):PFL_POPUP_ENTRY;cdecl;external;
(* Const before type ignored *)
function fl_popup_insert_entries(para1:PFL_POPUP; para2:PFL_POPUP_ENTRY; para3:Pchar; args:array of const):PFL_POPUP_ENTRY;cdecl;external;
function fl_popup_insert_entries(para1:PFL_POPUP; para2:PFL_POPUP_ENTRY; para3:Pchar):PFL_POPUP_ENTRY;cdecl;external;
(* Const before type ignored *)
function fl_popup_create(para1:TWindow; para2:Pchar; para3:PFL_POPUP_ITEM):PFL_POPUP;cdecl;external;
function fl_popup_add_items(para1:PFL_POPUP; para2:PFL_POPUP_ITEM):PFL_POPUP_ENTRY;cdecl;external;
function fl_popup_insert_items(para1:PFL_POPUP; para2:PFL_POPUP_ENTRY; para3:PFL_POPUP_ITEM):PFL_POPUP_ENTRY;cdecl;external;
function fl_popup_delete(para1:PFL_POPUP):longint;cdecl;external;
function fl_popup_entry_delete(para1:PFL_POPUP_ENTRY):longint;cdecl;external;
function fl_popup_do(para1:PFL_POPUP):PFL_POPUP_RETURN;cdecl;external;
procedure fl_popup_set_position(para1:PFL_POPUP; para2:longint; para3:longint);cdecl;external;
function fl_popup_get_policy(para1:PFL_POPUP):longint;cdecl;external;
function fl_popup_set_policy(para1:PFL_POPUP; para2:longint):longint;cdecl;external;
function fl_popup_set_callback(para1:PFL_POPUP; para2:TFL_POPUP_CB):TFL_POPUP_CB;cdecl;external;
procedure fl_popup_get_title_font(para1:PFL_POPUP; para2:Plongint; para3:Plongint);cdecl;external;
procedure fl_popup_set_title_font(para1:PFL_POPUP; para2:longint; para3:longint);cdecl;external;
procedure fl_popup_entry_get_font(para1:PFL_POPUP; para2:Plongint; para3:Plongint);cdecl;external;
procedure fl_popup_entry_set_font(para1:PFL_POPUP; para2:longint; para3:longint);cdecl;external;
function fl_popup_get_bw(para1:PFL_POPUP):longint;cdecl;external;
function fl_popup_set_bw(para1:PFL_POPUP; para2:longint):longint;cdecl;external;
function fl_popup_get_color(para1:PFL_POPUP; para2:longint):TFL_COLOR;cdecl;external;
function fl_popup_set_color(para1:PFL_POPUP; para2:longint; para3:TFL_COLOR):TFL_COLOR;cdecl;external;
procedure fl_popup_set_cursor(para1:PFL_POPUP; para2:longint);cdecl;external;
(* Const before type ignored *)
function fl_popup_get_title(para1:PFL_POPUP):Pchar;cdecl;external;
(* Const before type ignored *)
function fl_popup_set_title(para1:PFL_POPUP; para2:Pchar):PFL_POPUP;cdecl;external;
(* Const before type ignored *)
function fl_popup_set_title_f(popup:PFL_POPUP; fmt:Pchar; args:array of const):PFL_POPUP;cdecl;external;
function fl_popup_set_title_f(popup:PFL_POPUP; fmt:Pchar):PFL_POPUP;cdecl;external;
function fl_popup_entry_set_callback(para1:PFL_POPUP_ENTRY; para2:TFL_POPUP_CB):TFL_POPUP_CB;cdecl;external;
function fl_popup_entry_set_enter_callback(para1:PFL_POPUP_ENTRY; para2:TFL_POPUP_CB):TFL_POPUP_CB;cdecl;external;
function fl_popup_entry_set_leave_callback(para1:PFL_POPUP_ENTRY; para2:TFL_POPUP_CB):TFL_POPUP_CB;cdecl;external;
function fl_popup_entry_get_state(para1:PFL_POPUP_ENTRY):dword;cdecl;external;
function fl_popup_entry_set_state(para1:PFL_POPUP_ENTRY; para2:dword):dword;cdecl;external;
function fl_popup_entry_clear_state(para1:PFL_POPUP_ENTRY; para2:dword):dword;cdecl;external;
function fl_popup_entry_raise_state(para1:PFL_POPUP_ENTRY; para2:dword):dword;cdecl;external;
function fl_popup_entry_toggle_state(para1:PFL_POPUP_ENTRY; para2:dword):dword;cdecl;external;
(* Const before type ignored *)
function fl_popup_entry_set_text(para1:PFL_POPUP_ENTRY; para2:Pchar):longint;cdecl;external;
(* Const before type ignored *)
procedure fl_popup_entry_set_shortcut(para1:PFL_POPUP_ENTRY; para2:Pchar);cdecl;external;
function fl_popup_entry_set_value(para1:PFL_POPUP_ENTRY; para2:longint):longint;cdecl;external;
function fl_popup_entry_set_user_data(para1:PFL_POPUP_ENTRY; para2:pointer):pointer;cdecl;external;
function fl_popup_entry_get_by_position(para1:PFL_POPUP; para2:longint):PFL_POPUP_ENTRY;cdecl;external;
function fl_popup_entry_get_by_value(para1:PFL_POPUP; para2:longint):PFL_POPUP_ENTRY;cdecl;external;
function fl_popup_entry_get_by_user_data(para1:PFL_POPUP; para2:pointer):PFL_POPUP_ENTRY;cdecl;external;
(* Const before type ignored *)
function fl_popup_entry_get_by_text(para1:PFL_POPUP; para2:Pchar):PFL_POPUP_ENTRY;cdecl;external;
(* Const before type ignored *)
function fl_popup_entry_get_by_text_f(para1:PFL_POPUP; para2:Pchar; args:array of const):PFL_POPUP_ENTRY;cdecl;external;
function fl_popup_entry_get_by_text_f(para1:PFL_POPUP; para2:Pchar):PFL_POPUP_ENTRY;cdecl;external;
(* Const before type ignored *)
function fl_popup_entry_get_by_label(para1:PFL_POPUP; para2:Pchar):PFL_POPUP_ENTRY;cdecl;external;
(* Const before type ignored *)
function fl_popup_entry_get_by_label_f(para1:PFL_POPUP; para2:Pchar; args:array of const):PFL_POPUP_ENTRY;cdecl;external;
function fl_popup_entry_get_by_label_f(para1:PFL_POPUP; para2:Pchar):PFL_POPUP_ENTRY;cdecl;external;
function fl_popup_entry_get_group(para1:PFL_POPUP_ENTRY):longint;cdecl;external;
function fl_popup_entry_set_group(para1:PFL_POPUP_ENTRY; para2:longint):longint;cdecl;external;
function fl_popup_entry_get_subpopup(para1:PFL_POPUP_ENTRY):PFL_POPUP;cdecl;external;
function fl_popup_entry_set_subpopup(para1:PFL_POPUP_ENTRY; para2:PFL_POPUP):PFL_POPUP;cdecl;external;
function fl_popup_get_size(para1:PFL_POPUP; para2:Pdword; para3:Pdword):longint;cdecl;external;
function fl_popup_get_min_width(para1:PFL_POPUP):longint;cdecl;external;
function fl_popup_set_min_width(para1:PFL_POPUP; para2:longint):longint;cdecl;external;
{$endif}
    { ! defined FL_POPUP_H  }
    {*
     * \file bitmap.h
     *
     *   Object Class: Bitmap
      }
{$ifndef FL_BITMAP_H}
{$define FL_BITMAP_H}    

    const
      FL_NORMAL_BITMAP = 0;      
    {**** Defaults **** }
      FL_BITMAP_BOXTYPE = FL_NO_BOX;      
    { background of bitmap  }
      FL_BITMAP_COL1 = FL_COL1;      
    { not used currently    }
      FL_BITMAP_COL2 = FL_COL1;      
    { foreground of bitmap  }
      FL_BITMAP_LCOL = FL_LCOL;      
      FL_BITMAP_ALIGN = FL_ALIGN_BOTTOM;      
    {**** Routines **** }
(* Const before type ignored *)

function fl_create_bitmap(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_bitmap(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
procedure fl_set_bitmap_data(ob:PFL_OBJECT; w:longint; h:longint; data:Pbyte);cdecl;external;
(* Const before type ignored *)
procedure fl_set_bitmap_file(ob:PFL_OBJECT; fname:Pchar);cdecl;external;
(* Const before type ignored *)
function fl_read_bitmapfile(win:TWindow; file:Pchar; w:Pdword; h:Pdword; hotx:Plongint; 
               hoty:Plongint):TPixmap;cdecl;external;
(* Const before type ignored *)
function fl_create_from_bitmapdata(win:TWindow; data:Pchar; width:longint; height:longint):TPixmap;cdecl;external;
    { for compatibility  }
    const
      fl_set_bitmap_datafile = fl_set_bitmap_file;      
    { PIXMAP stuff  }
      FL_NORMAL_PIXMAP = 0;      
(* Const before type ignored *)

function fl_create_pixmap(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_pixmap(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
procedure fl_set_pixmap_data(ob:PFL_OBJECT; bits:PPchar);cdecl;external;
(* Const before type ignored *)
procedure fl_set_pixmap_file(ob:PFL_OBJECT; fname:Pchar);cdecl;external;
procedure fl_set_pixmap_align(ob:PFL_OBJECT; align:longint; xmargin:longint; ymargin:longint);cdecl;external;
procedure fl_set_pixmap_pixmap(ob:PFL_OBJECT; id:TPixmap; mask:TPixmap);cdecl;external;
procedure fl_set_pixmap_colorcloseness(red:longint; green:longint; blue:longint);cdecl;external;
procedure fl_free_pixmap_pixmap(ob:PFL_OBJECT);cdecl;external;
procedure fl_free_pixmap_focus_pixmap(obj:PFL_OBJECT);cdecl;external;
function fl_get_pixmap_pixmap(ob:PFL_OBJECT; p:PPixmap; m:PPixmap):TPixmap;cdecl;external;
(* Const before type ignored *)
function fl_read_pixmapfile(win:TWindow; file:Pchar; w:Pdword; h:Pdword; shape_mask:PPixmap; 
               hotx:Plongint; hoty:Plongint; tran:TFL_COLOR):TPixmap;cdecl;external;
function fl_create_from_pixmapdata(win:TWindow; data:PPchar; w:Pdword; h:Pdword; sm:PPixmap; 
               hotx:Plongint; hoty:Plongint; tran:TFL_COLOR):TPixmap;cdecl;external;
procedure fl_free_pixmap(id:TPixmap);cdecl;external;
{$endif}
    { ! defined FL_BITMAP_H  }
    {*
     * \file box.h
     *
      }
{$ifndef FL_BOX_H}
{$define FL_BOX_H}    
    { Type is already defined in Basic.h  }
(* Const before type ignored *)

function fl_create_box(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_box(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
{$endif}
    { ! defined FL_BOX_H  }
    {
     * \file browser.h
     *
     *  Object class Browser
      }
{$ifndef FL_BROWSER_H}
{$define FL_BROWSER_H}    
    {**** Types    **** }
    type
      PFL_BROWSER_TYPE = ^TFL_BROWSER_TYPE;
      TFL_BROWSER_TYPE =  Longint;
      Const
        FL_NORMAL_BROWSER = 0;
        FL_SELECT_BROWSER = 1;
        FL_HOLD_BROWSER = 2;
        FL_MULTI_BROWSER = 3;
        FL_DESELECTABLE_HOLD_BROWSER = 4;
;
    {**** Defaults **** }
      FL_BROWSER_BOXTYPE = FL_DOWN_BOX;      
      FL_BROWSER_COL1 = FL_COL1;      
      FL_BROWSER_COL2 = FL_YELLOW;      
      FL_BROWSER_LCOL = FL_LCOL;      
      FL_BROWSER_ALIGN = FL_ALIGN_BOTTOM;      
    {**** Others   **** }
      FL_BROWSER_SLCOL = FL_COL1;      
      FL_BROWSER_FONTSIZE = FL_SMALL_SIZE;      
    { This exists only for backward compatibility and isn't used anymore!  }
      FL_BROWSER_LINELENGTH = 2048;      
    {**** Routines **** }
(* Const before type ignored *)

function fl_create_browser(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_browser(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
procedure fl_clear_browser(ob:PFL_OBJECT);cdecl;external;
(* Const before type ignored *)
procedure fl_add_browser_line(ob:PFL_OBJECT; newtext:Pchar);cdecl;external;
(* Const before type ignored *)
procedure fl_add_browser_line_f(ob:PFL_OBJECT; fmt:Pchar; args:array of const);cdecl;external;
procedure fl_add_browser_line_f(ob:PFL_OBJECT; fmt:Pchar);cdecl;external;
(* Const before type ignored *)
procedure fl_addto_browser(obj:PFL_OBJECT; text:Pchar);cdecl;external;
(* Const before type ignored *)
procedure fl_addto_browser_f(obj:PFL_OBJECT; fmt:Pchar; args:array of const);cdecl;external;
procedure fl_addto_browser_f(obj:PFL_OBJECT; fmt:Pchar);cdecl;external;
    const
      fl_append_browser = fl_addto_browser_chars;      
(* Const before type ignored *)

procedure fl_addto_browser_chars(ob:PFL_OBJECT; str:Pchar);cdecl;external;
(* Const before type ignored *)
procedure fl_addto_browser_chars_f(ob:PFL_OBJECT; fmt:Pchar; args:array of const);cdecl;external;
procedure fl_addto_browser_chars_f(ob:PFL_OBJECT; fmt:Pchar);cdecl;external;
    const
      fl_append_browser_f = fl_addto_browser_chars_f;      
(* Const before type ignored *)

procedure fl_insert_browser_line(ob:PFL_OBJECT; linenumb:longint; newtext:Pchar);cdecl;external;
(* Const before type ignored *)
procedure fl_insert_browser_line_f(ob:PFL_OBJECT; linenumb:longint; fmt:Pchar; args:array of const);cdecl;external;
procedure fl_insert_browser_line_f(ob:PFL_OBJECT; linenumb:longint; fmt:Pchar);cdecl;external;
procedure fl_delete_browser_line(ob:PFL_OBJECT; linenumb:longint);cdecl;external;
(* Const before type ignored *)
procedure fl_replace_browser_line(ob:PFL_OBJECT; linenumb:longint; newtext:Pchar);cdecl;external;
(* Const before type ignored *)
procedure fl_replace_browser_line_f(ob:PFL_OBJECT; linenumb:longint; fmt:Pchar; args:array of const);cdecl;external;
procedure fl_replace_browser_line_f(ob:PFL_OBJECT; linenumb:longint; fmt:Pchar);cdecl;external;
(* Const before type ignored *)
function fl_get_browser_line(ob:PFL_OBJECT; linenumb:longint):Pchar;cdecl;external;
(* Const before type ignored *)
function fl_load_browser(ob:PFL_OBJECT; filename:Pchar):longint;cdecl;external;
procedure fl_select_browser_line(ob:PFL_OBJECT; line:longint);cdecl;external;
procedure fl_deselect_browser_line(ob:PFL_OBJECT; line:longint);cdecl;external;
procedure fl_deselect_browser(ob:PFL_OBJECT);cdecl;external;
function fl_isselected_browser_line(ob:PFL_OBJECT; line:longint):longint;cdecl;external;
function fl_get_browser_topline(ob:PFL_OBJECT):longint;cdecl;external;
function fl_get_browser(ob:PFL_OBJECT):longint;cdecl;external;
function fl_get_browser_maxline(ob:PFL_OBJECT):longint;cdecl;external;
function fl_get_browser_screenlines(ob:PFL_OBJECT):longint;cdecl;external;
procedure fl_set_browser_topline(ob:PFL_OBJECT; line:longint);cdecl;external;
procedure fl_set_browser_bottomline(ob:PFL_OBJECT; line:longint);cdecl;external;
procedure fl_set_browser_fontsize(ob:PFL_OBJECT; size:longint);cdecl;external;
procedure fl_set_browser_fontstyle(ob:PFL_OBJECT; style:longint);cdecl;external;
procedure fl_set_browser_specialkey(ob:PFL_OBJECT; specialkey:longint);cdecl;external;
procedure fl_set_browser_vscrollbar(ob:PFL_OBJECT; on:longint);cdecl;external;
procedure fl_set_browser_hscrollbar(ob:PFL_OBJECT; on:longint);cdecl;external;
procedure fl_set_browser_line_selectable(ob:PFL_OBJECT; line:longint; flag:longint);cdecl;external;
procedure fl_get_browser_dimension(ob:PFL_OBJECT; x:PFL_Coord; y:PFL_Coord; w:PFL_Coord; h:PFL_Coord);cdecl;external;
procedure fl_set_browser_dblclick_callback(ob:PFL_OBJECT; cb:TFL_CALLBACKPTR; a:longint);cdecl;external;
function fl_get_browser_xoffset(ob:PFL_OBJECT):TFL_Coord;cdecl;external;
function fl_get_browser_rel_xoffset(ob:PFL_OBJECT):Tdouble;cdecl;external;
procedure fl_set_browser_xoffset(ob:PFL_OBJECT; npixels:TFL_Coord);cdecl;external;
procedure fl_set_browser_rel_xoffset(ob:PFL_OBJECT; val:Tdouble);cdecl;external;
function fl_get_browser_yoffset(ob:PFL_OBJECT):TFL_Coord;cdecl;external;
function fl_get_browser_rel_yoffset(ob:PFL_OBJECT):Tdouble;cdecl;external;
procedure fl_set_browser_yoffset(ob:PFL_OBJECT; npixels:TFL_Coord);cdecl;external;
procedure fl_set_browser_rel_yoffset(ob:PFL_OBJECT; val:Tdouble);cdecl;external;
procedure fl_set_browser_scrollbarsize(ob:PFL_OBJECT; hh:longint; vw:longint);cdecl;external;
procedure fl_show_browser_line(ob:PFL_OBJECT; j:longint);cdecl;external;
function fl_set_default_browser_maxlinelength(n:longint):longint;cdecl;external;
{$ifndef FL_BROWSER_SCROLL_CALLBACKt}
{$define FL_BROWSER_SCROLL_CALLBACKt}    
    type

      TFL_BROWSER_SCROLL_CALLBACK = procedure (para1:PFL_OBJECT; para2:longint; para3:pointer);cdecl;
{$endif}

procedure fl_set_browser_hscroll_callback(para1:PFL_OBJECT; para2:TFL_BROWSER_SCROLL_CALLBACK; para3:pointer);cdecl;external;
procedure fl_set_browser_vscroll_callback(para1:PFL_OBJECT; para2:TFL_BROWSER_SCROLL_CALLBACK; para3:pointer);cdecl;external;
function fl_get_browser_line_yoffset(para1:PFL_OBJECT; para2:longint):longint;cdecl;external;
function fl_get_browser_hscroll_callback(para1:PFL_OBJECT):TFL_BROWSER_SCROLL_CALLBACK;cdecl;external;
function fl_get_browser_vscroll_callback(para1:PFL_OBJECT):TFL_BROWSER_SCROLL_CALLBACK;cdecl;external;
function fl_get_browser_scrollbar_repeat(para1:PFL_OBJECT):longint;cdecl;external;
procedure fl_set_browser_scrollbar_repeat(para1:PFL_OBJECT; para2:longint);cdecl;external;
{$endif}
    { ! defined FL_BROWSER_H  }
    {*
     * \file button.h
     *
     * All Buttons: regular button, light button and round button
     *
      }
{$ifndef FL_BUTTON_H}
{$define FL_BUTTON_H}    
    type
      PFL_BUTTON_TYPE = ^TFL_BUTTON_TYPE;
      TFL_BUTTON_TYPE =  Longint;
      Const
        FL_NORMAL_BUTTON = 0;
        FL_PUSH_BUTTON = 1;
        FL_RADIO_BUTTON = 2;
        FL_HIDDEN_BUTTON = 3;
        FL_TOUCH_BUTTON = 4;
        FL_INOUT_BUTTON = 5;
        FL_RETURN_BUTTON = 6;
        FL_HIDDEN_RET_BUTTON = 7;
        FL_MENU_BUTTON = 8;
;
      FL_TOGGLE_BUTTON = FL_PUSH_BUTTON;      
    { state of button (on/off)  }
    { mouse button that caused the push      }
    { time since last touch (TOUCH buttons)  }
    { what event triggers redraw             }
    { set while drawn as pushed down         }
    { mouse buttons button reacts to         }
    { reserved for class specfic stuff       }
    { misc. things                           }
    type
      PFL_BUTTON_SPEC = ^TFL_BUTTON_SPEC;
      TFL_BUTTON_SPEC = record
          pixmap : TPixmap;
          mask : TPixmap;
          bits_w : dword;
          bits_h : dword;
          val : longint;
          mousebut : longint;
          timdel : longint;
          event : longint;
          is_pushed : longint;
          react_to : array[0..4] of longint;
          cspecl : longint;
          cspecv : pointer;
          filename : Pchar;
          focus_pixmap : TPixmap;
          focus_mask : TPixmap;
          focus_filename : Pchar;
        end;

    const
      FL_BUTTON_STRUCT = FL_BUTTON_SPEC;      
    type

      TFL_DrawButton = procedure (para1:PFL_OBJECT);cdecl;

      TFL_CleanupButton = procedure (para1:PFL_BUTTON_STRUCT);cdecl;

    const
      FL_DRAWBUTTON = FL_DrawButton;      
      FL_CLEANUPBUTTON = FL_CleanupButton;      
    { normal button default  }
      FL_BUTTON_BOXTYPE = FL_UP_BOX;      
      FL_BUTTON_COL1 = FL_COL1;      
      FL_BUTTON_COL2 = FL_COL1;      
      FL_BUTTON_LCOL = FL_LCOL;      
      FL_BUTTON_ALIGN = FL_ALIGN_CENTER;      
      FL_BUTTON_MCOL1 = FL_MCOL;      
      FL_BUTTON_MCOL2 = FL_MCOL;      
      FL_BUTTON_BW = FL_BOUND_WIDTH;      
    { light button defaults  }
      FL_LIGHTBUTTON_BOXTYPE = FL_UP_BOX;      
      FL_LIGHTBUTTON_COL1 = FL_COL1;      
      FL_LIGHTBUTTON_COL2 = FL_YELLOW;      
      FL_LIGHTBUTTON_LCOL = FL_LCOL;      
      FL_LIGHTBUTTON_ALIGN = FL_ALIGN_CENTER or FL_ALIGN_INSIDE;      
      FL_LIGHTBUTTON_TOPCOL = FL_COL1;      
      FL_LIGHTBUTTON_MCOL = FL_MCOL;      

    { was #define dname def_expr }
    function FL_LIGHTBUTTON_MINSIZE : TFL_Coord;      

    { round button defaults  }
    const
      FL_ROUNDBUTTON_BOXTYPE = FL_NO_BOX;      
      FL_ROUNDBUTTON_COL1 = FL_MCOL;      
      FL_ROUNDBUTTON_COL2 = FL_YELLOW;      
      FL_ROUNDBUTTON_LCOL = FL_LCOL;      
      FL_ROUNDBUTTON_ALIGN = FL_ALIGN_CENTER;      
      FL_ROUNDBUTTON_TOPCOL = FL_COL1;      
      FL_ROUNDBUTTON_MCOL = FL_MCOL;      
    { round3d button defaults  }
      FL_ROUND3DBUTTON_BOXTYPE = FL_NO_BOX;      
      FL_ROUND3DBUTTON_COL1 = FL_COL1;      
      FL_ROUND3DBUTTON_COL2 = FL_BLACK;      
      FL_ROUND3DBUTTON_LCOL = FL_LCOL;      
      FL_ROUND3DBUTTON_ALIGN = FL_ALIGN_CENTER;      
      FL_ROUND3DBUTTON_TOPCOL = FL_COL1;      
      FL_ROUND3DBUTTON_MCOL = FL_MCOL;      
    { check button defaults  }
      FL_CHECKBUTTON_BOXTYPE = FL_NO_BOX;      
      FL_CHECKBUTTON_COL1 = FL_COL1;      
      FL_CHECKBUTTON_COL2 = FL_YELLOW;      
      FL_CHECKBUTTON_LCOL = FL_LCOL;      
      FL_CHECKBUTTON_ALIGN = FL_ALIGN_CENTER;      
      FL_CHECKBUTTON_TOPCOL = FL_COL1;      
      FL_CHECKBUTTON_MCOL = FL_MCOL;      
    { bitmap button defaults  }
      FL_BITMAPBUTTON_BOXTYPE = FL_UP_BOX;      
    { bitmap background   }
      FL_BITMAPBUTTON_COL1 = FL_COL1;      
    { "focus" color        }
      FL_BITMAPBUTTON_COL2 = FL_BLUE;      
    { bitmap foreground    }
      FL_BITMAPBUTTON_LCOL = FL_LCOL;      
      FL_BITMAPBUTTON_ALIGN = FL_ALIGN_BOTTOM;      
    { bitmap button defaults  }
      FL_PIXMAPBUTTON_BOXTYPE = FL_UP_BOX;      
      FL_PIXMAPBUTTON_COL1 = FL_BUTTON_COL1;      
      FL_PIXMAPBUTTON_COL2 = FL_BUTTON_COL2;      
      FL_PIXMAPBUTTON_LCOL = FL_BUTTON_LCOL;      
      FL_PIXMAPBUTTON_MCOL1 = FL_BUTTON_MCOL1;      
      FL_PIXMAPBUTTON_MCOL2 = FL_BUTTON_MCOL2;      
      FL_PIXMAPBUTTON_ALIGN = FL_ALIGN_BOTTOM;      
    {**** Routines **** }
(* Const before type ignored *)

function fl_create_button(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_create_roundbutton(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_create_round3dbutton(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_create_lightbutton(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_create_checkbutton(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_create_bitmapbutton(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_create_pixmapbutton(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_create_scrollbutton(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_create_labelbutton(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_roundbutton(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_round3dbutton(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_lightbutton(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_checkbutton(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_button(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_bitmapbutton(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_scrollbutton(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_labelbutton(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
    const
      fl_set_bitmapbutton_file = fl_set_bitmap_file;      

procedure fl_set_bitmapbutton_data(ob:PFL_OBJECT; w:longint; h:longint; bits:Pbyte);cdecl;external;
    const
      fl_set_bitmapbutton_datafile = fl_set_bitmapbutton_file;      
(* Const before type ignored *)

function fl_add_pixmapbutton(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
    const
      fl_set_pixmapbutton_data = fl_set_pixmap_data;      
      fl_set_pixmapbutton_file = fl_set_pixmap_file;      
      fl_set_pixmapbutton_pixmap = fl_set_pixmap_pixmap;      
      fl_get_pixmapbutton_pixmap = fl_get_pixmap_pixmap;      
      fl_set_pixmapbutton_align = fl_set_pixmap_align;      
      fl_free_pixmapbutton_pixmap = fl_free_pixmap_pixmap;      
      fl_set_pixmapbutton_datafile = fl_set_pixmapbutton_file;      
      fl_set_pixmapbutton_show_focus = fl_set_pixmapbutton_focus_outline;      

procedure fl_set_pixmapbutton_focus_outline(ob:PFL_OBJECT; yes:longint);cdecl;external;
procedure fl_set_pixmapbutton_focus_data(ob:PFL_OBJECT; bits:PPchar);cdecl;external;
(* Const before type ignored *)
procedure fl_set_pixmapbutton_focus_file(ob:PFL_OBJECT; fname:Pchar);cdecl;external;
procedure fl_set_pixmapbutton_focus_pixmap(ob:PFL_OBJECT; id:TPixmap; mask:TPixmap);cdecl;external;
function fl_get_button(ob:PFL_OBJECT):longint;cdecl;external;
procedure fl_set_button(ob:PFL_OBJECT; pushed:longint);cdecl;external;
function fl_get_button_numb(ob:PFL_OBJECT):longint;cdecl;external;
    const
      fl_set_button_shortcut = fl_set_object_shortcut;      
(* Const before type ignored *)

function fl_create_generic_button(objclass:longint; _type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; 
               h:TFL_Coord; _label:Pchar):PFL_OBJECT;cdecl;external;
procedure fl_add_button_class(bclass:longint; drawit:TFL_DrawButton; cleanup:TFL_CleanupButton);cdecl;external;
procedure fl_set_button_mouse_buttons(ob:PFL_OBJECT; buttons:dword);cdecl;external;
procedure fl_get_button_mouse_buttons(ob:PFL_OBJECT; buttons:Pdword);cdecl;external;
{$endif}
    { ! defined FL_BUTTON_H  }
    {*
     * \file canvas.h
     *
     * Header for FL_CANVAS
     *
      }
{$ifndef FL_CANVAS_H_}
{$define FL_CANVAS_H_}    
    type
      PFL_CANVAS_TYPE = ^TFL_CANVAS_TYPE;
      TFL_CANVAS_TYPE =  Longint;
      Const
        FL_NORMAL_CANVAS = 0;
        FL_SCROLLED_CANVAS = 1;
;
    type

      TFL_HANDLE_CANVAS = function (para1:PFL_OBJECT; para2:TWindow; para3:longint; para4:longint; para5:PXEvent; 
                   para6:pointer):longint;cdecl;

      TFL_MODIFY_CANVAS_PROP = function (para1:PFL_OBJECT):longint;cdecl;
    {******************* Default ******************** }
    { really the decoration frame  }

    const
      FL_CANVAS_BOXTYPE = FL_DOWN_BOX;      
      FL_CANVAS_ALIGN = FL_ALIGN_TOP;      
    {*********** Interfaces    *********************** }
(* Const before type ignored *)

function fl_create_generic_canvas(canvas_class:longint; _type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; 
               h:TFL_Coord; _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_canvas(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_create_canvas(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
    { backward compatibility  }
    const
      fl_set_canvas_decoration = fl_set_object_boxtype;      

procedure fl_set_canvas_colormap(ob:PFL_OBJECT; colormap:TColormap);cdecl;external;
procedure fl_set_canvas_visual(obj:PFL_OBJECT; vi:PVisual);cdecl;external;
procedure fl_set_canvas_depth(obj:PFL_OBJECT; depth:longint);cdecl;external;
procedure fl_set_canvas_attributes(ob:PFL_OBJECT; mask:dword; xswa:PXSetWindowAttributes);cdecl;external;
function fl_add_canvas_handler(ob:PFL_OBJECT; ev:longint; h:TFL_HANDLE_CANVAS; udata:pointer):TFL_HANDLE_CANVAS;cdecl;external;
function fl_get_canvas_id(ob:PFL_OBJECT):TWindow;cdecl;external;
function fl_get_canvas_colormap(ob:PFL_OBJECT):TColormap;cdecl;external;
function fl_get_canvas_depth(obj:PFL_OBJECT):longint;cdecl;external;
procedure fl_remove_canvas_handler(ob:PFL_OBJECT; ev:longint; h:TFL_HANDLE_CANVAS);cdecl;external;
procedure fl_share_canvas_colormap(ob:PFL_OBJECT; colormap:TColormap);cdecl;external;
procedure fl_clear_canvas(ob:PFL_OBJECT);cdecl;external;
procedure fl_modify_canvas_prop(obj:PFL_OBJECT; init:TFL_MODIFY_CANVAS_PROP; activate:TFL_MODIFY_CANVAS_PROP; cleanup:TFL_MODIFY_CANVAS_PROP);cdecl;external;
procedure fl_canvas_yield_to_shortcut(ob:PFL_OBJECT; yes:longint);cdecl;external;
    { This is an attempt to maintain some sort of backwards compatibility
     * with old code whilst also getting rid of the old, system-specific
     * hack.  }
{$ifdef AUTOINCLUDE_GLCANVAS_H}
{$include <glcanvas.h>}
{$endif}
{$endif}
    { ! defined FL_CANVAS_H  }
    {*
     * \file chart.h
     *
     * Object Class: Chart
     *
      }
{$ifndef FL_CHART_H}
{$define FL_CHART_H}    
    type
      PFL_CHART_TYPE = ^TFL_CHART_TYPE;
      TFL_CHART_TYPE =  Longint;
      Const
        FL_BAR_CHART = 0;
        FL_HORBAR_CHART = 1;
        FL_LINE_CHART = 2;
        FL_FILL_CHART = 3;
        FL_SPIKE_CHART = 4;
        FL_PIE_CHART = 5;
        FL_SPECIALPIE_CHART = 6;
;
    { for backward compatibility  }
      FL_FILLED_CHART = FL_FILL_CHART;      
    {**** Defaults **** }
      FL_CHART_BOXTYPE = FL_BORDER_BOX;      
      FL_CHART_COL1 = FL_COL1;      
      FL_CHART_LCOL = FL_LCOL;      
      FL_CHART_ALIGN = FL_ALIGN_BOTTOM;      
    {**** Others   **** }
      FL_CHART_MAX = 2048;      
    {**** Routines **** }
(* Const before type ignored *)

function fl_create_chart(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_chart(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
procedure fl_clear_chart(ob:PFL_OBJECT);cdecl;external;
(* Const before type ignored *)
procedure fl_add_chart_value(ob:PFL_OBJECT; val:Tdouble; str:Pchar; col:TFL_COLOR);cdecl;external;
(* Const before type ignored *)
procedure fl_insert_chart_value(ob:PFL_OBJECT; indx:longint; val:Tdouble; str:Pchar; col:TFL_COLOR);cdecl;external;
(* Const before type ignored *)
procedure fl_replace_chart_value(ob:PFL_OBJECT; indx:longint; val:Tdouble; str:Pchar; col:TFL_COLOR);cdecl;external;
procedure fl_set_chart_bounds(ob:PFL_OBJECT; min:Tdouble; max:Tdouble);cdecl;external;
procedure fl_get_chart_bounds(ob:PFL_OBJECT; min:Pdouble; max:Pdouble);cdecl;external;
procedure fl_set_chart_maxnumb(ob:PFL_OBJECT; maxnumb:longint);cdecl;external;
procedure fl_set_chart_autosize(ob:PFL_OBJECT; autosize:longint);cdecl;external;
procedure fl_set_chart_lstyle(ob:PFL_OBJECT; lstyle:longint);cdecl;external;
procedure fl_set_chart_lsize(ob:PFL_OBJECT; lsize:longint);cdecl;external;
procedure fl_set_chart_lcolor(ob:PFL_OBJECT; lcol:TFL_COLOR);cdecl;external;
procedure fl_set_chart_baseline(ob:PFL_OBJECT; iYesNo:longint);cdecl;external;
    const
      fl_set_chart_lcol = fl_set_chart_lcolor;      
{$endif}
    { ! defined FL_CHART_H  }
    {*
     * \file choice.h
     *
      }
{$ifndef FL_CHOICE_H}
{$define FL_CHOICE_H}    
    type
      PFL_CHOICE_TYPE = ^TFL_CHOICE_TYPE;
      TFL_CHOICE_TYPE =  Longint;
      Const
        FL_NORMAL_CHOICE = 0;
        FL_NORMAL_CHOICE2 = 1;
        FL_DROPLIST_CHOICE = 2;
        FL_BROWSER_CHOICE = 3;
;
      FL_SIMPLE_CHOICE = FL_NORMAL_CHOICE;      
    {**** Defaults **** }
      FL_CHOICE_BOXTYPE = FL_ROUNDED_BOX;      
      FL_CHOICE_COL1 = FL_COL1;      
      FL_CHOICE_COL2 = FL_LCOL;      
      FL_CHOICE_LCOL = FL_LCOL;      
      FL_CHOICE_ALIGN = FL_ALIGN_LEFT;      
    {**** Others   **** }
      FL_CHOICE_MCOL = FL_MCOL;      
      FL_CHOICE_MAXITEMS = 128;      
    {**** Routines **** }
(* Const before type ignored *)

function fl_create_choice(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_choice(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
procedure fl_clear_choice(ob:PFL_OBJECT);cdecl;external;
(* Const before type ignored *)
function fl_addto_choice(ob:PFL_OBJECT; str:Pchar):longint;cdecl;external;
(* Const before type ignored *)
function fl_addto_choice_f(ob:PFL_OBJECT; fmt:Pchar; args:array of const):longint;cdecl;external;
function fl_addto_choice_f(ob:PFL_OBJECT; fmt:Pchar):longint;cdecl;external;
(* Const before type ignored *)
procedure fl_replace_choice(ob:PFL_OBJECT; numb:longint; str:Pchar);cdecl;external;
(* Const before type ignored *)
procedure fl_replace_choice_f(ob:PFL_OBJECT; numb:longint; fmt:Pchar; args:array of const);cdecl;external;
procedure fl_replace_choice_f(ob:PFL_OBJECT; numb:longint; fmt:Pchar);cdecl;external;
procedure fl_delete_choice(ob:PFL_OBJECT; numb:longint);cdecl;external;
procedure fl_set_choice(ob:PFL_OBJECT; choice:longint);cdecl;external;
(* Const before type ignored *)
procedure fl_set_choice_text(ob:PFL_OBJECT; txt:Pchar);cdecl;external;
(* Const before type ignored *)
procedure fl_set_choice_text_f(ob:PFL_OBJECT; fmt:Pchar; args:array of const);cdecl;external;
procedure fl_set_choice_text_f(ob:PFL_OBJECT; fmt:Pchar);cdecl;external;
function fl_get_choice(ob:PFL_OBJECT):longint;cdecl;external;
(* Const before type ignored *)
function fl_get_choice_item_text(ob:PFL_OBJECT; n:longint):Pchar;cdecl;external;
function fl_get_choice_maxitems(ob:PFL_OBJECT):longint;cdecl;external;
(* Const before type ignored *)
function fl_get_choice_text(ob:PFL_OBJECT):Pchar;cdecl;external;
procedure fl_set_choice_fontsize(ob:PFL_OBJECT; size:longint);cdecl;external;
procedure fl_set_choice_fontstyle(ob:PFL_OBJECT; style:longint);cdecl;external;
procedure fl_set_choice_align(ob:PFL_OBJECT; align:longint);cdecl;external;
function fl_get_choice_item_mode(ob:PFL_OBJECT; item:longint):longint;cdecl;external;
procedure fl_set_choice_item_mode(ob:PFL_OBJECT; item:longint; mode:dword);cdecl;external;
(* Const before type ignored *)
procedure fl_set_choice_item_shortcut(ob:PFL_OBJECT; item:longint; sc:Pchar);cdecl;external;
function fl_set_choice_entries(ob:PFL_OBJECT; ent:PFL_PUP_ENTRY):longint;cdecl;external;
function fl_set_choice_notitle(ob:PFL_OBJECT; n:longint):longint;cdecl;external;
function fl_set_choice_align_bottom(ob:PFL_OBJECT; n:longint):longint;cdecl;external;
{$endif}
    { ! defined FL_CHOICE_H  }
    {*
     * \file clipbd.h
     *
     * prototypes for clipboard stuff
      }
{$ifndef FL_CLIPBD_H}
{$define FL_CLIPBD_H}    
    type
      PFL_CPTYPE = ^TFL_CPTYPE;
      TFL_CPTYPE = TAtom;

      TFL_LOSE_SELECTION_CB = function (para1:PFL_OBJECT; para2:longint):longint;cdecl;
(* Const before type ignored *)

      TFL_SELECTION_CB = function (para1:PFL_OBJECT; para2:longint; para3:pointer; para4:longint):longint;cdecl;

    const
      FL_SELECTION_CALLBACK = FL_SELECTION_CB;      
      FL_LOSE_SELECTION_CALLBACK = FL_LOSE_SELECTION_CB;      
(* Const before type ignored *)

function fl_stuff_clipboard(ob:PFL_OBJECT; _type:longint; data:pointer; size:longint; lose_callback:TFL_LOSE_SELECTION_CB):longint;cdecl;external;
function fl_request_clipboard(ob:PFL_OBJECT; _type:longint; got_it_callback:TFL_SELECTION_CB):longint;cdecl;external;
{$endif}
    { ! defined FL_CLIPBD_H  }
    {*
     * \file clock.h
      }
{$ifndef FL_CLOCK_H}
{$define FL_CLOCK_H}    
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_ANALOG_CLOCK = 0;
        FL_DIGITAL_CLOCK = 1;
;
      FL_CLOCK_BOXTYPE = FL_UP_BOX;      
      FL_CLOCK_COL1 = FL_INACTIVE_COL;      
      FL_CLOCK_COL2 = FL_BOTTOM_BCOL;      
      FL_CLOCK_LCOL = FL_BLACK;      
      FL_CLOCK_ALIGN = FL_ALIGN_BOTTOM;      
      FL_CLOCK_TOPCOL = FL_COL1;      
(* Const before type ignored *)

function fl_create_clock(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               s:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_clock(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               s:Pchar):PFL_OBJECT;cdecl;external;
procedure fl_get_clock(ob:PFL_OBJECT; h:Plongint; m:Plongint; s:Plongint);cdecl;external;
function fl_set_clock_adjustment(ob:PFL_OBJECT; offset:longint):longint;cdecl;external;
procedure fl_set_clock_ampm(ob:PFL_OBJECT; y:longint);cdecl;external;
{$endif}
    { ! defined FL_CLOCK_H  }
    {*
     * \file counter.h
      }
{$ifndef FL_COUNTER_H}
{$define FL_COUNTER_H}    
    type
      PFL_COUNTER_TYPE = ^TFL_COUNTER_TYPE;
      TFL_COUNTER_TYPE =  Longint;
      Const
        FL_NORMAL_COUNTER = 0;
        FL_SIMPLE_COUNTER = 1;
;
    {**** Defaults **** }
      FL_COUNTER_BOXTYPE = FL_UP_BOX;      
      FL_COUNTER_COL1 = FL_COL1;      
    { ct label      }
      FL_COUNTER_COL2 = FL_BLUE;      
    { ct reporting  }
      FL_COUNTER_LCOL = FL_LCOL;      
      FL_COUNTER_ALIGN = FL_ALIGN_BOTTOM;      
    {**** Others **** }
      FL_COUNTER_BW = FL_BOUND_WIDTH;      
    {**** Routines **** }
(* Const before type ignored *)

function fl_create_counter(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_counter(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
procedure fl_set_counter_value(ob:PFL_OBJECT; val:Tdouble);cdecl;external;
procedure fl_set_counter_bounds(ob:PFL_OBJECT; min:Tdouble; max:Tdouble);cdecl;external;
procedure fl_set_counter_step(ob:PFL_OBJECT; s:Tdouble; l:Tdouble);cdecl;external;
procedure fl_set_counter_precision(ob:PFL_OBJECT; prec:longint);cdecl;external;
function fl_get_counter_precision(ob:PFL_OBJECT):longint;cdecl;external;
procedure fl_set_counter_return(ob:PFL_OBJECT; how:dword);cdecl;external;
function fl_get_counter_value(ob:PFL_OBJECT):Tdouble;cdecl;external;
procedure fl_get_counter_bounds(ob:PFL_OBJECT; min:Pdouble; max:Pdouble);cdecl;external;
procedure fl_get_counter_step(ob:PFL_OBJECT; s:Pdouble; l:Pdouble);cdecl;external;
procedure fl_set_counter_filter(ob:PFL_OBJECT; filter:TFL_VAL_FILTER);cdecl;external;
    { Functions to set and get the timeout value used by the
     * counter code to control modification of the counter value.  }
function fl_get_counter_repeat(ob:PFL_OBJECT):longint;cdecl;external;
procedure fl_set_counter_repeat(ob:PFL_OBJECT; millisec:longint);cdecl;external;
function fl_get_counter_min_repeat(ob:PFL_OBJECT):longint;cdecl;external;
procedure fl_set_counter_min_repeat(ob:PFL_OBJECT; millisec:longint);cdecl;external;
function fl_get_counter_speedjump(ob:PFL_OBJECT):longint;cdecl;external;
procedure fl_set_counter_speedjump(ob:PFL_OBJECT; yes_no:longint);cdecl;external;
{$endif}
    { ! defined FL_COUNTER_H  }
    {*
     * \file cursor.h
     *
     * Cursor defs and prototypes
      }
{$ifndef FL_CURSOR_H}
{$define FL_CURSOR_H}    
{$include <X11/cursorfont.h>}
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_INVISIBLE_CURSOR = -(2);
        FL_DEFAULT_CURSOR = -(1);
        FL_BUSY_CURSOR = XC_watch;
        FL_CROSSHAIR_CURSOR = XC_tcross;
        FL_KILL_CURSOR = XC_pirate;
        FL_NWARROW_CURSOR = XC_top_left_arrow;
        FL_NEARROW_CURSOR = XC_arrow;
;
{$ifndef XC_invisible}

    const
      XC_invisible = FL_INVISIBLE_CURSOR;      
{$endif}

procedure fl_set_cursor(win:TWindow; name:longint);cdecl;external;
procedure fl_set_cursor_color(name:longint; fg:TFL_COLOR; bg:TFL_COLOR);cdecl;external;
(* Const before type ignored *)
(* Const before type ignored *)
function fl_create_bitmap_cursor(source:Pchar; mask:Pchar; w:longint; h:longint; hotx:longint; 
               hoty:longint):longint;cdecl;external;
function fl_create_animated_cursor(cur_names:Plongint; timeout:longint):longint;cdecl;external;
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function fl_reset_cursor(win : longint) : longint;    

{$endif}
    { ! defined FL_CURSOR_H  }
    {*
     * \file dial.h
      }
{$ifndef FL_DIAL_H}
{$define FL_DIAL_H}    
    type
      PFL_DIAL_TYPE = ^TFL_DIAL_TYPE;
      TFL_DIAL_TYPE =  Longint;
      Const
        FL_NORMAL_DIAL = 0;
        FL_LINE_DIAL = 1;
        FL_FILL_DIAL = 2;
;
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_DIAL_CW = 0;
        FL_DIAL_CCW = 1;
;
    {**** Defaults **** }
      FL_DIAL_BOXTYPE = FL_FLAT_BOX;      
      FL_DIAL_COL1 = FL_COL1;      
      FL_DIAL_COL2 = FL_RIGHT_BCOL;      
      FL_DIAL_LCOL = FL_LCOL;      
      FL_DIAL_ALIGN = FL_ALIGN_BOTTOM;      
    {**** Others   **** }
      FL_DIAL_TOPCOL = FL_COL1;      
    {**** Routines **** }
(* Const before type ignored *)

function fl_create_dial(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_dial(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
procedure fl_set_dial_value(obj:PFL_OBJECT; val:Tdouble);cdecl;external;
function fl_get_dial_value(obj:PFL_OBJECT):Tdouble;cdecl;external;
procedure fl_set_dial_bounds(obj:PFL_OBJECT; min:Tdouble; max:Tdouble);cdecl;external;
procedure fl_get_dial_bounds(obj:PFL_OBJECT; min:Pdouble; max:Pdouble);cdecl;external;
procedure fl_set_dial_step(obj:PFL_OBJECT; value:Tdouble);cdecl;external;
function fl_get_dial_step(obj:PFL_OBJECT):Tdouble;cdecl;external;
procedure fl_set_dial_return(obj:PFL_OBJECT; value:dword);cdecl;external;
procedure fl_set_dial_angles(obj:PFL_OBJECT; amin:Tdouble; amax:Tdouble);cdecl;external;
procedure fl_get_dial_angles(obj:PFL_OBJECT; amin:Pdouble; amax:Pdouble);cdecl;external;
procedure fl_set_dial_cross(obj:PFL_OBJECT; flag:longint);cdecl;external;
    const
      fl_set_dial_crossover = fl_set_dial_cross;      

procedure fl_set_dial_direction(obj:PFL_OBJECT; dir:longint);cdecl;external;
function fl_get_dial_direction(obj:PFL_OBJECT):longint;cdecl;external;
{$endif}
    { ! defined FL_DIAL_H  }
    {*
     * \file filesys.h
     *
     *  Convenience functions to read a directory
      }
{$ifndef FL_FILESYS_H}
{$define FL_FILESYS_H}    
    {  File types  }
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FT_FILE = 0;
        FT_DIR = 1;
        FT_LINK = 2;
        FT_SOCK = 3;
        FT_FIFO = 4;
        FT_BLK = 5;
        FT_CHR = 6;
        FT_OTHER = 7;
;
    { entry name              }
    { FILE_TYPE               }
    { file modification time  }
    { file size in bytes      }
    type
      PFL_Dirlist = ^TFL_Dirlist;
      TFL_Dirlist = record
          name : Pchar;
          _type : longint;
          dl_mtime : longint;
          dl_size : dword;
        end;
    { sort in alphabetic order            }
    { sort in reverse alphabetic order    }
    { sort according to modifcation time  }
    { sort in reverse modificaiton time   }
    { sort in increasing size order       }
    { sort in decreasing size order       }
    { sort case insensitive               }
    { sort case insensitive               }

      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_ALPHASORT = 1;
        FL_RALPHASORT = 2;
        FL_MTIMESORT = 3;
        FL_RMTIMESORT = 4;
        FL_SIZESORT = 5;
        FL_RSIZESORT = 6;
        FL_CASEALPHASORT = 7;
        FL_RCASEALPHASORT = 8;
;
(* Const before type ignored *)
    type

      TFL_DIRLIST_FILTER = function (para1:Pchar; para2:longint):longint;cdecl;
    { read dir with pattern filtering. All dirs read might be cached.
     * Must not change dirlist in anyway.  }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)

function fl_get_dirlist(dir:Pchar; pattern:Pchar; n:Plongint; rescan:longint):PFL_Dirlist;cdecl;external;
function fl_set_dirlist_filter(filter:TFL_DIRLIST_FILTER):TFL_DIRLIST_FILTER;cdecl;external;
function fl_set_dirlist_sort(method:longint):longint;cdecl;external;
function fl_set_dirlist_filterdir(yes:longint):longint;cdecl;external;
(* Const before type ignored *)
procedure fl_free_dirlist(dl:PFL_Dirlist);cdecl;external;
{$endif}
    { ! defined FL_FILESYS_H  }
    {*
     * \file flps.h
      }
{$ifndef FLPS_H}
{$define FLPS_H}    
    { postscript stuff  }
    { switch to landscale if does not fit  }
    { landscape always                     }
    { portrait always                      }
    { even margins/best fit                }
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FLPS_AUTO = 0;
        FLPS_LANDSCAPE = 1;
        FLPS_PORTRAIT = 2;
        FLPS_BESTFIT = 3;
;
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FLPS_BW = -(1);
        FLPS_GRAYSCALE = (-(1))+1;
        FLPS_COLOR = (-(1))+2;
;
(* Const before type ignored *)
    type
      PFLPS_CONTROL = ^TFLPS_CONTROL;
      TFLPS_CONTROL = record
          ps_color : longint;
          orientation : longint;
          auto_fit : longint;
          drawbox : longint;
          eps : longint;
          xdpi : single;
          ydpi : single;
          paper_w : single;
          paper_h : single;
          gamma : single;
          tmpdir : Pchar;
          printer_dpi : longint;
          hm : single;
          vm : single;
          xscale : single;
          yscale : single;
          scale_text : longint;
          first_page_only : longint;
          clip : longint;
        end;

function flps_init:PFLPS_CONTROL;cdecl;external;
(* Const before type ignored *)
function fl_object_ps_dump(ob:PFL_OBJECT; fname:Pchar):longint;cdecl;external;
{$endif}
    { ! defined FLPS_H  }
    {*
     * \file formbrowser.h
     *
      }
{$ifndef FL_FORMBROWSER_H}
{$define FL_FORMBROWSER_H}    
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_NORMAL_FORMBROWSER = 0;
;
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_SMOOTH_SCROLL = 0;
        FL_JUMP_SCROLL = 1;
;
      FL_FORMBROWSER_BOXTYPE = FL_DOWN_BOX;      
      FL_FORMBROWSER_COL1 = FL_COL1;      
      FL_FORMBROWSER_ALIGN = FL_ALIGN_TOP;      

function fl_addto_formbrowser(ob:PFL_OBJECT; form:PFL_FORM):longint;cdecl;external;
function fl_delete_formbrowser_bynumber(ob:PFL_OBJECT; num:longint):PFL_FORM;cdecl;external;
function fl_delete_formbrowser(ob:PFL_OBJECT; form:PFL_FORM):longint;cdecl;external;
function fl_replace_formbrowser(ob:PFL_OBJECT; num:longint; form:PFL_FORM):PFL_FORM;cdecl;external;
function fl_insert_formbrowser(ob:PFL_OBJECT; line:longint; new_form:PFL_FORM):longint;cdecl;external;
function fl_get_formbrowser_area(ob:PFL_OBJECT; x:Plongint; y:Plongint; w:Plongint; h:Plongint):longint;cdecl;external;
procedure fl_set_formbrowser_scroll(ob:PFL_OBJECT; how:longint);cdecl;external;
procedure fl_set_formbrowser_hscrollbar(ob:PFL_OBJECT; how:longint);cdecl;external;
procedure fl_set_formbrowser_vscrollbar(ob:PFL_OBJECT; how:longint);cdecl;external;
function fl_get_formbrowser_topform(ob:PFL_OBJECT):PFL_FORM;cdecl;external;
function fl_set_formbrowser_topform(ob:PFL_OBJECT; form:PFL_FORM):longint;cdecl;external;
function fl_set_formbrowser_topform_bynumber(ob:PFL_OBJECT; n:longint):PFL_FORM;cdecl;external;
function fl_set_formbrowser_xoffset(ob:PFL_OBJECT; offset:longint):longint;cdecl;external;
function fl_set_formbrowser_yoffset(ob:PFL_OBJECT; offset:longint):longint;cdecl;external;
function fl_get_formbrowser_xoffset(ob:PFL_OBJECT):longint;cdecl;external;
function fl_get_formbrowser_yoffset(ob:PFL_OBJECT):longint;cdecl;external;
function fl_find_formbrowser_form_number(ob:PFL_OBJECT; form:PFL_FORM):longint;cdecl;external;
(* Const before type ignored *)
function fl_add_formbrowser(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_create_formbrowser(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
function fl_get_formbrowser_numforms(ob:PFL_OBJECT):longint;cdecl;external;
    const
      fl_get_formbrowser_forms = fl_get_formbrowser_numforms;      

function fl_get_formbrowser_form(ob:PFL_OBJECT; n:longint):PFL_FORM;cdecl;external;
{$endif}
    { ! defined FL_FORMBROWSER_H  }
    {*
     * \file frame.h
      }
{$ifndef FL_FRAME_H}
{$define FL_FRAME_H}    
    { types of frames  }
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_NO_FRAME = 0;
        FL_UP_FRAME = 1;
        FL_DOWN_FRAME = 2;
        FL_BORDER_FRAME = 3;
        FL_SHADOW_FRAME = 4;
        FL_ENGRAVED_FRAME = 5;
        FL_ROUNDED_FRAME = 6;
        FL_EMBOSSED_FRAME = 7;
        FL_OVAL_FRAME = 8;
;
    { border color      }
      FL_FRAME_COL1 = FL_BLACK;      
    { label background  }
      FL_FRAME_COL2 = FL_COL1;      
    { label color       }
      FL_FRAME_LCOL = FL_BLACK;      
(* Const before type ignored *)

function fl_create_frame(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_frame(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
    { labeld frame  }
(* Const before type ignored *)
function fl_create_labelframe(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_labelframe(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
{$endif}
    { ! defined FL_FRAME_H  }
    {*
     * \file free.h
     *
     *  Object Class: Free
      }
{$ifndef FL_FREE_H}
{$define FL_FREE_H}    
    type
      PFL_FREE_TYPE = ^TFL_FREE_TYPE;
      TFL_FREE_TYPE =  Longint;
      Const
        FL_NORMAL_FREE = 0;
        FL_INACTIVE_FREE = 1;
        FL_INPUT_FREE = 2;
        FL_CONTINUOUS_FREE = 3;
        FL_ALL_FREE = 4;
;
      FL_SLEEPING_FREE = FL_INACTIVE_FREE;      
(* Const before type ignored *)

function fl_create_free(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar; handle:TFL_HANDLEPTR):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_free(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar; handle:TFL_HANDLEPTR):PFL_OBJECT;cdecl;external;
{$endif}
    { ! defined FL_FREE_H  }
    {*
     * \file goodies.h
      }
{$ifndef FL_GOODIES_H}
{$define FL_GOODIES_H}    
    {**** Resources and misc. goodie routines ***** }

    const
      FLAlertDismissLabel = 'flAlert.dismiss.label';      
      FLAlertTitle = 'flAlert.title';      
      FLQuestionYesLabel = 'flQuestion.yes.label';      
      FLQuestionNoLabel = 'flQuestion.no.label';      
      FLQuestionTitle = 'flQuestion.title';      
      FLOKLabel = 'flInput.ok.label';      
      FLInputClearLabel = 'flInput.clear.label';      
      FLInputCancelLabel = 'flInput.cancel.label';      
      FLInputTitle = 'flInput.title';      
      FLChoiceTitle = 'flChoice.title';      

procedure fl_set_goodies_font(style:longint; size:longint);cdecl;external;
    {********** messages and questions ************* }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
procedure fl_show_message(para1:Pchar; para2:Pchar; para3:Pchar);cdecl;external;
(* Const before type ignored *)
procedure fl_show_messages(para1:Pchar);cdecl;external;
    const
      fl_show_msg = fl_show_messages_f;      
(* Const before type ignored *)

procedure fl_show_messages_f(para1:Pchar; args:array of const);cdecl;external;
procedure fl_show_messages_f(para1:Pchar);cdecl;external;
procedure fl_hide_message;cdecl;external;
    const
      fl_hide_msg = fl_hide_message;      
      fl_hide_messages = fl_hide_message;      
(* Const before type ignored *)

function fl_show_question(para1:Pchar; para2:longint):longint;cdecl;external;
procedure fl_hide_question;cdecl;external;
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
procedure fl_show_alert(para1:Pchar; para2:Pchar; para3:Pchar; para4:longint);cdecl;external;
    const
      fl_show_alert2 = fl_show_alert_f;      
(* Const before type ignored *)

procedure fl_show_alert_f(c:longint; fmt:Pchar; args:array of const);cdecl;external;
procedure fl_show_alert_f(c:longint; fmt:Pchar);cdecl;external;
procedure fl_hide_alert;cdecl;external;
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
function fl_show_input(para1:Pchar; para2:Pchar):Pchar;cdecl;external;
procedure fl_hide_input;cdecl;external;
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
function fl_show_simple_input(para1:Pchar; para2:Pchar):Pchar;cdecl;external;
function fl_show_colormap(para1:longint):longint;cdecl;external;
    {******** choices **************** }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
function fl_show_choices(para1:Pchar; para2:longint; para3:Pchar; para4:Pchar; para5:Pchar; 
               para6:longint):longint;cdecl;external;
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
function fl_show_choice(para1:Pchar; para2:Pchar; para3:Pchar; para4:longint; para5:Pchar; 
               para6:Pchar; para7:Pchar; para8:longint):longint;cdecl;external;
procedure fl_hide_choice;cdecl;external;
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
procedure fl_set_choices_shortcut(para1:Pchar; para2:Pchar; para3:Pchar);cdecl;external;
    const
      fl_set_choice_shortcut = fl_set_choices_shortcut;      
    {*********** one liner ************** }
(* Const before type ignored *)

procedure fl_show_oneliner(para1:Pchar; para2:TFL_Coord; para3:TFL_Coord);cdecl;external;
procedure fl_hide_oneliner;cdecl;external;
procedure fl_set_oneliner_font(para1:longint; para2:longint);cdecl;external;
procedure fl_set_oneliner_color(para1:TFL_COLOR; para2:TFL_COLOR);cdecl;external;
procedure fl_set_tooltip_font(para1:longint; para2:longint);cdecl;external;
procedure fl_set_tooltip_color(para1:TFL_COLOR; para2:TFL_COLOR);cdecl;external;
procedure fl_set_tooltip_boxtype(para1:longint);cdecl;external;
procedure fl_set_tooltip_lalign(para1:longint);cdecl;external;
    {************ command log ************* }
    { UNUSED, remove in later version  }
    { UNUSED, remove in later version  }
    { UNUSED, remove in later version  }
    type
      PFD_CMDLOG = ^TFD_CMDLOG;
      TFD_CMDLOG = record
          form : PFL_FORM;
          vdata : pointer;
          cdata : Pchar;
          ldata : longint;
          browser : PFL_OBJECT;
          close_browser : PFL_OBJECT;
          clear_browser : PFL_OBJECT;
        end;
{$ifdef FL_WIN32}

    const
      FL_PID_T = HANDLE;      
{$else}

    const
      FL_PID_T = longint;      
{$endif}
(* Const before type ignored *)

function fl_exe_command(para1:Pchar; para2:longint):TFL_PID_T;cdecl;external;
function fl_end_command(para1:TFL_PID_T):longint;cdecl;external;
function fl_check_command(para1:TFL_PID_T):longint;cdecl;external;
(* Const before type ignored *)
(* Const before type ignored *)
function fl_popen(para1:Pchar; para2:Pchar):PFILE;cdecl;external;
function fl_pclose(para1:PFILE):longint;cdecl;external;
function fl_end_all_command:longint;cdecl;external;
procedure fl_show_command_log(para1:longint);cdecl;external;
procedure fl_hide_command_log;cdecl;external;
procedure fl_clear_command_log;cdecl;external;
(* Const before type ignored *)
procedure fl_addto_command_log(para1:Pchar);cdecl;external;
(* Const before type ignored *)
procedure fl_addto_command_log_f(para1:Pchar; args:array of const);cdecl;external;
procedure fl_addto_command_log_f(para1:Pchar);cdecl;external;
procedure fl_set_command_log_position(para1:longint; para2:longint);cdecl;external;
function fl_get_command_log_fdstruct:PFD_CMDLOG;cdecl;external;
    { Aliases  }
    const
      fl_open_command = fl_exe_command;      
      fl_close_command = fl_end_command;      
    {****** File selector **************** }
      FL_MAX_FSELECTOR = 6;      
    type
      PFD_FSELECTOR = ^TFD_FSELECTOR;
      TFD_FSELECTOR = record
          fselect : PFL_FORM;
          vdata : pointer;
          cdata : pointer;
          ldata : longint;
          browser : PFL_OBJECT;
          input : PFL_OBJECT;
          prompt : PFL_OBJECT;
          resbutt : PFL_OBJECT;
          patbutt : PFL_OBJECT;
          dirbutt : PFL_OBJECT;
          cancel : PFL_OBJECT;
          ready : PFL_OBJECT;
          dirlabel : PFL_OBJECT;
          patlabel : PFL_OBJECT;
          appbutt : array[0..2] of PFL_OBJECT;
        end;

function fl_use_fselector(para1:longint):longint;cdecl;external;
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
function fl_show_fselector(para1:Pchar; para2:Pchar; para3:Pchar; para4:Pchar):Pchar;cdecl;external;
procedure fl_hide_fselector;cdecl;external;
procedure fl_set_fselector_fontsize(para1:longint);cdecl;external;
procedure fl_set_fselector_fontstyle(para1:longint);cdecl;external;
procedure fl_set_fselector_placement(para1:longint);cdecl;external;
procedure fl_set_fselector_border(para1:longint);cdecl;external;
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function fl_set_fselector_transient(b : longint) : longint;    

procedure fl_set_fselector_callback(para1:TFL_FSCB; para2:pointer);cdecl;external;
(* Const before type ignored *)
function fl_get_filename:Pchar;cdecl;external;
(* Const before type ignored *)
function fl_get_directory:Pchar;cdecl;external;
(* Const before type ignored *)
function fl_get_pattern:Pchar;cdecl;external;
(* Const before type ignored *)
function fl_set_directory(para1:Pchar):longint;cdecl;external;
(* Const before type ignored *)
procedure fl_set_pattern(para1:Pchar);cdecl;external;
procedure fl_refresh_fselector;cdecl;external;
(* Const before type ignored *)
procedure fl_add_fselector_appbutton(para1:Pchar; para2:procedure (para1:pointer); para3:pointer);cdecl;external;
(* Const before type ignored *)
procedure fl_remove_fselector_appbutton(para1:Pchar);cdecl;external;
procedure fl_disable_fselector_cache(para1:longint);cdecl;external;
procedure fl_invalidate_fselector_cache;cdecl;external;
function fl_get_fselector_form:PFL_FORM;cdecl;external;
function fl_get_fselector_fdstruct:PFD_FSELECTOR;cdecl;external;
procedure fl_hide_fselector;cdecl;external;
procedure fl_set_fselector_filetype_marker(para1:longint; para2:longint; para3:longint; para4:longint; para5:longint);cdecl;external;
    const
      fl_show_file_selector = fl_show_fselector;      
      fl_set_fselector_cb = fl_set_fselector_callback;      
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   

    function fl_set_fselector_title(s : longint) : longint;    

function fl_goodies_atclose(para1:PFL_FORM; para2:pointer):longint;cdecl;external;
(* Const before type ignored *)
function fl_show_color_chooser(rgb_in:Plongint; rgb_out:Plongint):longint;cdecl;external;
{$endif}
    { ! defined FL_GOODIES_H  }
    {*
     * \file input.h
      }
{$ifndef FL_INPUT_H}
{$define FL_INPUT_H}    
    {**** Types    **** }
    type
      PFL_INPUT_TYPE = ^TFL_INPUT_TYPE;
      TFL_INPUT_TYPE =  Longint;
      Const
        FL_NORMAL_INPUT = 0;
        FL_FLOAT_INPUT = 1;
        FL_INT_INPUT = 2;
        FL_DATE_INPUT = 3;
        FL_MULTILINE_INPUT = 4;
        FL_HIDDEN_INPUT = 5;
        FL_SECRET_INPUT = 6;
;
    { for date input  }
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_INPUT_MMDD = 0;
        FL_INPUT_DDMM = 1;
;
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_NORMAL_INPUT_MODE = 0;
        FL_DOS_INPUT_MODE = 1;
;
    {**** Defaults **** }
      FL_INPUT_BOXTYPE = FL_DOWN_BOX;      
      FL_INPUT_COL1 = FL_COL1;      
      FL_INPUT_COL2 = FL_MCOL;      
      FL_INPUT_LCOL = FL_LCOL;      
      FL_INPUT_ALIGN = FL_ALIGN_LEFT;      
    {**** Others   **** }
      FL_INPUT_TCOL = FL_LCOL;      
      FL_INPUT_CCOL = FL_BLUE;      
      FL_RINGBELL = 1 shl 4;      
    {**** Routines **** }
(* Const before type ignored *)

function fl_create_input(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_input(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
procedure fl_set_input(ob:PFL_OBJECT; str:Pchar);cdecl;external;
(* Const before type ignored *)
procedure fl_set_input_f(obj:PFL_OBJECT; fmt:Pchar; args:array of const);cdecl;external;
procedure fl_set_input_f(obj:PFL_OBJECT; fmt:Pchar);cdecl;external;
procedure fl_set_input_return(ob:PFL_OBJECT; when:dword);cdecl;external;
procedure fl_set_input_color(ob:PFL_OBJECT; textcol:TFL_COLOR; curscol:TFL_COLOR);cdecl;external;
procedure fl_get_input_color(ob:PFL_OBJECT; textcol:PFL_COLOR; curscol:PFL_COLOR);cdecl;external;
procedure fl_set_input_scroll(ob:PFL_OBJECT; yes:longint);cdecl;external;
procedure fl_set_input_cursorpos(ob:PFL_OBJECT; xpos:longint; ypos:longint);cdecl;external;
procedure fl_set_input_selected(ob:PFL_OBJECT; yes:longint);cdecl;external;
procedure fl_set_input_selected_range(ob:PFL_OBJECT; begin:longint; end:longint);cdecl;external;
(* Const before type ignored *)
function fl_get_input_selected_range(ob:PFL_OBJECT; begin:Plongint; end:Plongint):Pchar;cdecl;external;
procedure fl_set_input_maxchars(ob:PFL_OBJECT; maxchars:longint);cdecl;external;
procedure fl_set_input_format(ob:PFL_OBJECT; fmt:longint; sep:longint);cdecl;external;
procedure fl_set_input_hscrollbar(ob:PFL_OBJECT; pref:longint);cdecl;external;
procedure fl_set_input_vscrollbar(ob:PFL_OBJECT; pref:longint);cdecl;external;
procedure fl_set_input_topline(ob:PFL_OBJECT; top:longint);cdecl;external;
procedure fl_set_input_scrollbarsize(ob:PFL_OBJECT; hh:longint; vw:longint);cdecl;external;
procedure fl_get_input_scrollbarsize(ob:PFL_OBJECT; hh:Plongint; vw:Plongint);cdecl;external;
procedure fl_set_input_xoffset(ob:PFL_OBJECT; xoff:longint);cdecl;external;
function fl_get_input_xoffset(ob:PFL_OBJECT):longint;cdecl;external;
function fl_set_input_fieldchar(ob:PFL_OBJECT; fchar:longint):longint;cdecl;external;
function fl_get_input_topline(ob:PFL_OBJECT):longint;cdecl;external;
function fl_get_input_screenlines(ob:PFL_OBJECT):longint;cdecl;external;
function fl_get_input_cursorpos(ob:PFL_OBJECT; x:Plongint; y:Plongint):longint;cdecl;external;
procedure fl_set_input_cursor_visible(ob:PFL_OBJECT; visible:longint);cdecl;external;
function fl_get_input_numberoflines(ob:PFL_OBJECT):longint;cdecl;external;
procedure fl_get_input_format(ob:PFL_OBJECT; fmt:Plongint; sep:Plongint);cdecl;external;
(* Const before type ignored *)
function fl_get_input(ob:PFL_OBJECT):Pchar;cdecl;external;
(* Const before type ignored *)
(* Const before type ignored *)
    type

      TFL_INPUT_VALIDATOR = function (para1:PFL_OBJECT; para2:Pchar; para3:Pchar; para4:longint):longint;cdecl;

    const
      FL_INPUTVALIDATOR = FL_INPUT_VALIDATOR;      

function fl_set_input_filter(ob:PFL_OBJECT; validate:TFL_INPUT_VALIDATOR):TFL_INPUT_VALIDATOR;cdecl;external;
function fl_validate_input(obj:PFL_OBJECT):longint;cdecl;external;
    const
      fl_set_input_shortcut = fl_set_object_shortcut;      
    { edit keys.  }
    { basic editing  }
    { delete previous char     }
    { delete next char         }
    { delete previous word     }
    { delete next word         }
    { movement  }
    { one line  up              }
    { one line down             }
    { one char left             }
    { one char right            }
    { one word left             }
    { one word right            }
    { one page up               }
    { one page down             }
    { move to begining of line  }
    { move to end of line       }
    { move to begin of file     }
    { move to end of file       }
    { misc. stuff  }
    { switch two char positions  }
    { paste the edit buffer     }
    { another  del_prev_char    }
    { cut to begining of line   }
    { cut to end of line        }
    { delete everything         }
    { not implemented           }
    type
      PFL_EditKeymap = ^TFL_EditKeymap;
      TFL_EditKeymap = record
          del_prev_char : longint;
          del_next_char : longint;
          del_prev_word : longint;
          del_next_word : longint;
          moveto_prev_line : longint;
          moveto_next_line : longint;
          moveto_prev_char : longint;
          moveto_next_char : longint;
          moveto_prev_word : longint;
          moveto_next_word : longint;
          moveto_prev_page : longint;
          moveto_next_page : longint;
          moveto_bol : longint;
          moveto_eol : longint;
          moveto_bof : longint;
          moveto_eof : longint;
          transpose : longint;
          paste : longint;
          backspace : longint;
          del_to_bol : longint;
          del_to_eol : longint;
          clear_field : longint;
          del_to_eos : longint;
        end;
(* Const before type ignored *)

procedure fl_set_input_editkeymap(keymap:PFL_EditKeymap);cdecl;external;
procedure fl_get_input_editkeymap(keymap:PFL_EditKeymap);cdecl;external;
procedure fl_set_default_editkeymap;cdecl;external;
function fl_set_input_mode(mode:longint):longint;cdecl;external;
{$endif}
    { ! defined FL_INPUT_H  }
    {*
     * \file menu.h
      }
{$ifndef FL_MENU_H}
{$define FL_MENU_H}    
    {***********   Object Class: Menu         *********** }
    type
      PFL_MENU_TYPE = ^TFL_MENU_TYPE;
      TFL_MENU_TYPE =  Longint;
      Const
        FL_TOUCH_MENU = 0;
        FL_PUSH_MENU = 1;
        FL_PULLDOWN_MENU = 2;
;
    {**** Defaults **** }
      FL_MENU_BOXTYPE = FL_BORDER_BOX;      
      FL_MENU_COL1 = FL_COL1;      
      FL_MENU_COL2 = FL_MCOL;      
      FL_MENU_LCOL = FL_LCOL;      
      FL_MENU_ALIGN = FL_ALIGN_CENTER;      
    {**** Others   **** }
      FL_MENU_MAXITEMS = 128;      
    { not used anymore! JTT  }
      FL_MENU_MAXSTR = 64;      
    {**** Routines **** }
(* Const before type ignored *)

function fl_create_menu(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_menu(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
procedure fl_clear_menu(ob:PFL_OBJECT);cdecl;external;
(* Const before type ignored *)
procedure fl_set_menu(ob:PFL_OBJECT; menustr:Pchar; args:array of const);cdecl;external;
procedure fl_set_menu(ob:PFL_OBJECT; menustr:Pchar);cdecl;external;
(* Const before type ignored *)
function fl_addto_menu(ob:PFL_OBJECT; menustr:Pchar; args:array of const):longint;cdecl;external;
function fl_addto_menu(ob:PFL_OBJECT; menustr:Pchar):longint;cdecl;external;
(* Const before type ignored *)
procedure fl_replace_menu_item(ob:PFL_OBJECT; numb:longint; str:Pchar; args:array of const);cdecl;external;
procedure fl_replace_menu_item(ob:PFL_OBJECT; numb:longint; str:Pchar);cdecl;external;
procedure fl_delete_menu_item(ob:PFL_OBJECT; numb:longint);cdecl;external;
function fl_set_menu_item_callback(ob:PFL_OBJECT; numb:longint; cb:TFL_PUP_CB):TFL_PUP_CB;cdecl;external;
(* Const before type ignored *)
procedure fl_set_menu_item_shortcut(ob:PFL_OBJECT; numb:longint; str:Pchar);cdecl;external;
procedure fl_set_menu_item_mode(ob:PFL_OBJECT; numb:longint; mode:dword);cdecl;external;
procedure fl_show_menu_symbol(ob:PFL_OBJECT; show:longint);cdecl;external;
procedure fl_set_menu_popup(ob:PFL_OBJECT; pup:longint);cdecl;external;
function fl_get_menu_popup(ob:PFL_OBJECT):longint;cdecl;external;
function fl_get_menu(ob:PFL_OBJECT):longint;cdecl;external;
(* Const before type ignored *)
function fl_get_menu_item_text(ob:PFL_OBJECT; numb:longint):Pchar;cdecl;external;
function fl_get_menu_maxitems(ob:PFL_OBJECT):longint;cdecl;external;
function fl_get_menu_item_mode(ob:PFL_OBJECT; numb:longint):dword;cdecl;external;
(* Const before type ignored *)
function fl_get_menu_text(ob:PFL_OBJECT):Pchar;cdecl;external;
function fl_set_menu_entries(ob:PFL_OBJECT; ent:PFL_PUP_ENTRY):longint;cdecl;external;
function fl_set_menu_notitle(ob:PFL_OBJECT; off:longint):longint;cdecl;external;
function fl_set_menu_item_id(ob:PFL_OBJECT; item:longint; id:longint):longint;cdecl;external;
{$endif}
    { ! defined FL_MENU_H  }
{$ifndef FL_NMENU_H}
{$define FL_NMENU_H}    
    { Nmenu object types  }
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_NORMAL_NMENU = 0;
        FL_NORMAL_TOUCH_NMENU = 1;
        FL_BUTTON_NMENU = 2;
        FL_BUTTON_TOUCH_NMENU = 3;
;
(* Const before type ignored *)

function fl_create_nmenu(para1:longint; para2:TFL_Coord; para3:TFL_Coord; para4:TFL_Coord; para5:TFL_Coord; 
               para6:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_nmenu(para1:longint; para2:TFL_Coord; para3:TFL_Coord; para4:TFL_Coord; para5:TFL_Coord; 
               para6:Pchar):PFL_OBJECT;cdecl;external;
function fl_clear_nmenu(para1:PFL_OBJECT):longint;cdecl;external;
(* Const before type ignored *)
function fl_add_nmenu_items(para1:PFL_OBJECT; para2:Pchar; args:array of const):PFL_POPUP_ENTRY;cdecl;external;
function fl_add_nmenu_items(para1:PFL_OBJECT; para2:Pchar):PFL_POPUP_ENTRY;cdecl;external;
(* Const before type ignored *)
function fl_insert_nmenu_items(para1:PFL_OBJECT; para2:PFL_POPUP_ENTRY; para3:Pchar; args:array of const):PFL_POPUP_ENTRY;cdecl;external;
function fl_insert_nmenu_items(para1:PFL_OBJECT; para2:PFL_POPUP_ENTRY; para3:Pchar):PFL_POPUP_ENTRY;cdecl;external;
(* Const before type ignored *)
function fl_replace_nmenu_item(para1:PFL_OBJECT; para2:PFL_POPUP_ENTRY; para3:Pchar; args:array of const):PFL_POPUP_ENTRY;cdecl;external;
function fl_replace_nmenu_item(para1:PFL_OBJECT; para2:PFL_POPUP_ENTRY; para3:Pchar):PFL_POPUP_ENTRY;cdecl;external;
function fl_delete_nmenu_item(para1:PFL_OBJECT; para2:PFL_POPUP_ENTRY):longint;cdecl;external;
function fl_set_nmenu_items(para1:PFL_OBJECT; para2:PFL_POPUP_ITEM):PFL_POPUP_ENTRY;cdecl;external;
function fl_add_nmenu_items2(para1:PFL_OBJECT; para2:PFL_POPUP_ITEM):PFL_POPUP_ENTRY;cdecl;external;
function fl_insert_nmenu_items2(para1:PFL_OBJECT; para2:PFL_POPUP_ENTRY; para3:PFL_POPUP_ITEM):PFL_POPUP_ENTRY;cdecl;external;
function fl_replace_nmenu_items2(para1:PFL_OBJECT; para2:PFL_POPUP_ENTRY; para3:PFL_POPUP_ITEM):PFL_POPUP_ENTRY;cdecl;external;
function fl_get_nmenu_popup(para1:PFL_OBJECT):PFL_POPUP;cdecl;external;
function fl_set_nmenu_popup(para1:PFL_OBJECT; para2:PFL_POPUP):longint;cdecl;external;
function fl_get_nmenu_item(para1:PFL_OBJECT):PFL_POPUP_RETURN;cdecl;external;
function fl_get_nmenu_item_by_value(para1:PFL_OBJECT; para2:longint):PFL_POPUP_ENTRY;cdecl;external;
(* Const before type ignored *)
function fl_get_nmenu_item_by_label(para1:PFL_OBJECT; para2:Pchar):PFL_POPUP_ENTRY;cdecl;external;
(* Const before type ignored *)
function fl_get_nmenu_item_by_text(para1:PFL_OBJECT; para2:Pchar):PFL_POPUP_ENTRY;cdecl;external;
function fl_set_nmenu_policy(para1:PFL_OBJECT; para2:longint):longint;cdecl;external;
function fl_set_nmenu_hl_text_color(para1:PFL_OBJECT; para2:TFL_COLOR):TFL_COLOR;cdecl;external;
{$endif}
    { ! defined FL_NMENU_H  }
    {*
     * \file positioner.h
      }
{$ifndef FL_POSITIONER_H}
{$define FL_POSITIONER_H}    

    const
      FL_NORMAL_POSITIONER = 0;      
      FL_OVERLAY_POSITIONER = 1;      
      FL_INVISIBLE_POSITIONER = 2;      
    {**** Defaults **** }
      FL_POSITIONER_BOXTYPE = FL_DOWN_BOX;      
      FL_POSITIONER_COL1 = FL_COL1;      
      FL_POSITIONER_COL2 = FL_RED;      
      FL_POSITIONER_LCOL = FL_LCOL;      
      FL_POSITIONER_ALIGN = FL_ALIGN_BOTTOM;      
    type

      TFL_POSITIONER_VALIDATOR = function (obj:PFL_OBJECT; x:Tdouble; y:Tdouble; x_repl:Pdouble; y_repl:Pdouble):longint;cdecl;

    const
      FL_POSITIONER_INVALID = 0;      
      FL_POSITIONER_VALID = 1;      
      FL_POSITIONER_REPLACED = 2;      
    {**** Routines **** }
(* Const before type ignored *)

function fl_create_positioner(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_positioner(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
function fl_set_positioner_values(obj:PFL_OBJECT; new_x:Tdouble; new_y:Tdouble):longint;cdecl;external;
function fl_set_positioner_xvalue(ob:PFL_OBJECT; val:Tdouble):longint;cdecl;external;
function fl_get_positioner_xvalue(ob:PFL_OBJECT):Tdouble;cdecl;external;
procedure fl_set_positioner_xbounds(ob:PFL_OBJECT; min:Tdouble; max:Tdouble);cdecl;external;
procedure fl_get_positioner_xbounds(ob:PFL_OBJECT; min:Pdouble; max:Pdouble);cdecl;external;
function fl_set_positioner_yvalue(ob:PFL_OBJECT; val:Tdouble):longint;cdecl;external;
function fl_get_positioner_yvalue(ob:PFL_OBJECT):Tdouble;cdecl;external;
procedure fl_set_positioner_ybounds(ob:PFL_OBJECT; min:Tdouble; max:Tdouble);cdecl;external;
procedure fl_get_positioner_ybounds(ob:PFL_OBJECT; min:Pdouble; max:Pdouble);cdecl;external;
procedure fl_set_positioner_xstep(ob:PFL_OBJECT; value:Tdouble);cdecl;external;
function fl_get_positioner_xstep(ob:PFL_OBJECT):Tdouble;cdecl;external;
procedure fl_set_positioner_ystep(ob:PFL_OBJECT; value:Tdouble);cdecl;external;
function fl_get_positioner_ystep(ob:PFL_OBJECT):Tdouble;cdecl;external;
procedure fl_set_positioner_return(ob:PFL_OBJECT; when:dword);cdecl;external;
procedure fl_set_positioner_mouse_buttons(obj:PFL_OBJECT; mouse_buttons:dword);cdecl;external;
procedure fl_get_positioner_mouse_buttons(obj:PFL_OBJECT; mouse_buttons:Pdword);cdecl;external;
function fl_get_positioner_numb(obj:PFL_OBJECT):longint;cdecl;external;
function fl_set_positioner_validator(obj:PFL_OBJECT; validator:TFL_POSITIONER_VALIDATOR):TFL_POSITIONER_VALIDATOR;cdecl;external;
procedure fl_reset_positioner(obj:PFL_OBJECT);cdecl;external;
{$endif}
    { ! defined FL_POSITIONER_H  }
{$ifndef FL_SCROLLBAR_H}
{$define FL_SCROLLBAR_H}    
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_VERT_SCROLLBAR = 0;
        FL_HOR_SCROLLBAR = 1;
        FL_VERT_THIN_SCROLLBAR = 2;
        FL_HOR_THIN_SCROLLBAR = 3;
        FL_VERT_NICE_SCROLLBAR = 4;
        FL_HOR_NICE_SCROLLBAR = 5;
        FL_VERT_PLAIN_SCROLLBAR = 6;
        FL_HOR_PLAIN_SCROLLBAR = 7;
        FL_HOR_BASIC_SCROLLBAR = FL_HOR_PLAIN_SCROLLBAR;
        FL_VERT_BASIC_SCROLLBAR = FL_VERT_PLAIN_SCROLLBAR;
;
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_NORMAL_SCROLLBAR = 0;
        FL_THIN_SCROLLBAR = 1;
        FL_NICE_SCROLLBAR = 2;
        FL_PLAIN_SCROLLBAR = 3;
;
      FL_SCROLLBAR_ALIGN = FL_ALIGN_BOTTOM;      
(* Const before type ignored *)

function fl_create_scrollbar(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_scrollbar(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
function fl_get_scrollbar_value(ob:PFL_OBJECT):Tdouble;cdecl;external;
procedure fl_set_scrollbar_value(ob:PFL_OBJECT; val:Tdouble);cdecl;external;
procedure fl_set_scrollbar_size(ob:PFL_OBJECT; val:Tdouble);cdecl;external;
function fl_get_scrollbar_size(obj:PFL_OBJECT):Tdouble;cdecl;external;
procedure fl_set_scrollbar_increment(ob:PFL_OBJECT; l:Tdouble; r:Tdouble);cdecl;external;
procedure fl_get_scrollbar_increment(ob:PFL_OBJECT; a:Pdouble; b:Pdouble);cdecl;external;
procedure fl_set_scrollbar_bounds(ob:PFL_OBJECT; b1:Tdouble; b2:Tdouble);cdecl;external;
procedure fl_get_scrollbar_bounds(ob:PFL_OBJECT; b1:Pdouble; b2:Pdouble);cdecl;external;
procedure fl_set_scrollbar_return(ob:PFL_OBJECT; when:dword);cdecl;external;
procedure fl_set_scrollbar_step(ob:PFL_OBJECT; step:Tdouble);cdecl;external;
function fl_get_scrollbar_repeat(obj:PFL_OBJECT):longint;cdecl;external;
procedure fl_set_scrollbar_repeat(obj:PFL_OBJECT; millisec:longint);cdecl;external;
{$endif}
    { ! defined FL_SCROLLBAR_H  }
    {*
     * \file select.h
      }
{$ifndef FL_SELECT_H}
{$define FL_SELECT_H}    
    { Select object types  }
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_NORMAL_SELECT = 0;
        FL_MENU_SELECT = 1;
        FL_DROPLIST_SELECT = 2;
;
    { Defaults  }
      FL_SELECT_COL1 = FL_COL1;      
      FL_SELECT_COL2 = FL_MCOL;      
      FL_SELECT_LCOL = FL_LCOL;      
      FL_SELECT_ALIGN = FL_ALIGN_LEFT;      
(* Const before type ignored *)

function fl_create_select(para1:longint; para2:TFL_Coord; para3:TFL_Coord; para4:TFL_Coord; para5:TFL_Coord; 
               para6:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_select(para1:longint; para2:TFL_Coord; para3:TFL_Coord; para4:TFL_Coord; para5:TFL_Coord; 
               para6:Pchar):PFL_OBJECT;cdecl;external;
function fl_clear_select(para1:PFL_OBJECT):longint;cdecl;external;
(* Const before type ignored *)
function fl_add_select_items(para1:PFL_OBJECT; para2:Pchar; args:array of const):PFL_POPUP_ENTRY;cdecl;external;
function fl_add_select_items(para1:PFL_OBJECT; para2:Pchar):PFL_POPUP_ENTRY;cdecl;external;
(* Const before type ignored *)
function fl_insert_select_items(para1:PFL_OBJECT; para2:PFL_POPUP_ENTRY; para3:Pchar; args:array of const):PFL_POPUP_ENTRY;cdecl;external;
function fl_insert_select_items(para1:PFL_OBJECT; para2:PFL_POPUP_ENTRY; para3:Pchar):PFL_POPUP_ENTRY;cdecl;external;
(* Const before type ignored *)
function fl_replace_select_item(para1:PFL_OBJECT; para2:PFL_POPUP_ENTRY; para3:Pchar; args:array of const):PFL_POPUP_ENTRY;cdecl;external;
function fl_replace_select_item(para1:PFL_OBJECT; para2:PFL_POPUP_ENTRY; para3:Pchar):PFL_POPUP_ENTRY;cdecl;external;
function fl_delete_select_item(para1:PFL_OBJECT; para2:PFL_POPUP_ENTRY):longint;cdecl;external;
function fl_set_select_items(para1:PFL_OBJECT; para2:PFL_POPUP_ITEM):longint;cdecl;external;
function fl_get_select_popup(para1:PFL_OBJECT):PFL_POPUP;cdecl;external;
function fl_set_select_popup(para1:PFL_OBJECT; para2:PFL_POPUP):longint;cdecl;external;
function fl_get_select_item(para1:PFL_OBJECT):PFL_POPUP_RETURN;cdecl;external;
function fl_set_select_item(para1:PFL_OBJECT; para2:PFL_POPUP_ENTRY):PFL_POPUP_RETURN;cdecl;external;
function fl_get_select_item_by_value(para1:PFL_OBJECT; para2:longint):PFL_POPUP_ENTRY;cdecl;external;
(* Const before type ignored *)
function fl_get_select_item_by_label(para1:PFL_OBJECT; para2:Pchar):PFL_POPUP_ENTRY;cdecl;external;
(* Const before type ignored *)
function fl_get_select_item_by_label_f(para1:PFL_OBJECT; para2:Pchar; args:array of const):PFL_POPUP_ENTRY;cdecl;external;
function fl_get_select_item_by_label_f(para1:PFL_OBJECT; para2:Pchar):PFL_POPUP_ENTRY;cdecl;external;
(* Const before type ignored *)
function fl_get_select_item_by_text_f(obj:PFL_OBJECT; fmt:Pchar; args:array of const):PFL_POPUP_ENTRY;cdecl;external;
function fl_get_select_item_by_text_f(obj:PFL_OBJECT; fmt:Pchar):PFL_POPUP_ENTRY;cdecl;external;
(* Const before type ignored *)
function fl_get_select_item_by_text(para1:PFL_OBJECT; para2:Pchar):PFL_POPUP_ENTRY;cdecl;external;
function fl_get_select_text_color(para1:PFL_OBJECT):TFL_COLOR;cdecl;external;
function fl_set_select_text_color(para1:PFL_OBJECT; para2:TFL_COLOR):TFL_COLOR;cdecl;external;
function fl_get_select_text_font(para1:PFL_OBJECT; para2:Plongint; para3:Plongint):longint;cdecl;external;
function fl_set_select_text_font(para1:PFL_OBJECT; para2:longint; para3:longint):longint;cdecl;external;
function fl_get_select_text_align(para1:PFL_OBJECT):longint;cdecl;external;
function fl_set_select_text_align(para1:PFL_OBJECT; para2:longint):longint;cdecl;external;
function fl_set_select_policy(para1:PFL_OBJECT; para2:longint):longint;cdecl;external;
{$endif}
    { ! defined FL_SELECT_H  }
    {*
     * \file slider.h
     *
     * Object Class: Slider
      }
{$ifndef FL_SLIDER_H}
{$define FL_SLIDER_H}    

    const
      FL_HOR_FLAG = 1;      
      FL_SCROLL_FLAG = 16;      
    { The following are for use with scrollbars only!  }
    { For FL_VERT_SCROLLBAR and FL_HOR_SCROLLBAR  }
    { for FL_VERT_THIN_SCROLLBAR and FL_VERT_THIN_SCROLLBAR  }
    { For FL_VERT_NICE_SCROLLBAR and FL_HOR_NICE_SCROLLBAR  }
    { for use as FL_VERT_PLAIN_SCROLLBAR and FL_VERT_PLAIN_SCROLLBAR  }
    type
      PFL_SLIDER_TYPE = ^TFL_SLIDER_TYPE;
      TFL_SLIDER_TYPE =  Longint;
      Const
        FL_VERT_SLIDER = 0;
        FL_HOR_SLIDER = FL_VERT_SLIDER or FL_HOR_FLAG;
        FL_VERT_FILL_SLIDER = 2;
        FL_HOR_FILL_SLIDER = FL_VERT_FILL_SLIDER or FL_HOR_FLAG;
        FL_VERT_NICE_SLIDER = 4;
        FL_HOR_NICE_SLIDER = FL_VERT_NICE_SLIDER or FL_HOR_FLAG;
        FL_VERT_BROWSER_SLIDER = 6;
        FL_HOR_BROWSER_SLIDER = FL_VERT_BROWSER_SLIDER or FL_HOR_FLAG;
        FL_VERT_PROGRESS_BAR = 8;
        FL_HOR_PROGRESS_BAR = FL_VERT_PROGRESS_BAR or FL_HOR_FLAG;
        FL_VERT_BROWSER_SLIDER2 = FL_VERT_SLIDER or FL_SCROLL_FLAG;
        FL_HOR_BROWSER_SLIDER2 = FL_HOR_SLIDER or FL_SCROLL_FLAG;
        FL_VERT_THIN_SLIDER = FL_VERT_FILL_SLIDER or FL_SCROLL_FLAG;
        FL_HOR_THIN_SLIDER = FL_HOR_FILL_SLIDER or FL_SCROLL_FLAG;
        FL_VERT_NICE_SLIDER2 = FL_VERT_NICE_SLIDER or FL_SCROLL_FLAG;
        FL_HOR_NICE_SLIDER2 = FL_HOR_NICE_SLIDER or FL_SCROLL_FLAG;
        FL_VERT_BASIC_SLIDER = FL_VERT_BROWSER_SLIDER or FL_SCROLL_FLAG;
        FL_HOR_BASIC_SLIDER = FL_HOR_BROWSER_SLIDER or FL_SCROLL_FLAG;
;
    {**** Defaults **** }
      FL_SLIDER_BW1 = FL_BOUND_WIDTH;      

    { was #define dname def_expr }
    function FL_SLIDER_BW2 : longint; { return type might be wrong }

    const
      FL_SLIDER_BOXTYPE = FL_DOWN_BOX;      
      FL_SLIDER_COL1 = FL_COL1;      
      FL_SLIDER_COL2 = FL_COL1;      
      FL_SLIDER_LCOL = FL_LCOL;      
      FL_SLIDER_ALIGN = FL_ALIGN_BOTTOM;      
    {**** Others   **** }
      FL_SLIDER_FINE = 0.25;      
      FL_SLIDER_WIDTH = 0.10;      
      FL_SLIDER_MAX_PREC = 10;      
    {**** Routines **** }
(* Const before type ignored *)

function fl_create_slider(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_slider(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_create_valslider(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_valslider(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
procedure fl_set_slider_value(ob:PFL_OBJECT; val:Tdouble);cdecl;external;
function fl_get_slider_value(ob:PFL_OBJECT):Tdouble;cdecl;external;
procedure fl_set_slider_bounds(ob:PFL_OBJECT; min:Tdouble; max:Tdouble);cdecl;external;
procedure fl_get_slider_bounds(ob:PFL_OBJECT; min:Pdouble; max:Pdouble);cdecl;external;
procedure fl_set_slider_return(ob:PFL_OBJECT; value:dword);cdecl;external;
procedure fl_set_slider_step(ob:PFL_OBJECT; value:Tdouble);cdecl;external;
procedure fl_set_slider_increment(ob:PFL_OBJECT; l:Tdouble; r:Tdouble);cdecl;external;
procedure fl_get_slider_increment(ob:PFL_OBJECT; l:Pdouble; r:Pdouble);cdecl;external;
procedure fl_set_slider_size(ob:PFL_OBJECT; size:Tdouble);cdecl;external;
function fl_get_slider_size(obj:PFL_OBJECT):Tdouble;cdecl;external;
procedure fl_set_slider_precision(ob:PFL_OBJECT; prec:longint);cdecl;external;
procedure fl_set_slider_filter(ob:PFL_OBJECT; filter:TFL_VAL_FILTER);cdecl;external;
function fl_get_slider_repeat(obj:PFL_OBJECT):longint;cdecl;external;
procedure fl_set_slider_repeat(obj:PFL_OBJECT; millisec:longint);cdecl;external;
procedure fl_set_slider_mouse_buttons(obj:PFL_OBJECT; mouse_buttons:dword);cdecl;external;
procedure fl_get_slider_mouse_buttons(obj:PFL_OBJECT; mouse_buttons:Pdword);cdecl;external;
{$endif}
    { ! defined FL_SLIDER_H  }
{$ifndef FL_SPINNER_H}
{$define FL_SPINNER_H}    
    type
      PFL_SPINNER_TYPE = ^TFL_SPINNER_TYPE;
      TFL_SPINNER_TYPE =  Longint;
      Const
        FL_INT_SPINNER = 0;
        FL_FLOAT_SPINNER = 1;
;
(* Const before type ignored *)

function fl_create_spinner(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_spinner(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
function fl_get_spinner_value(obj:PFL_OBJECT):Tdouble;cdecl;external;
function fl_set_spinner_value(obj:PFL_OBJECT; val:Tdouble):Tdouble;cdecl;external;
procedure fl_set_spinner_bounds(obj:PFL_OBJECT; min:Tdouble; max:Tdouble);cdecl;external;
procedure fl_get_spinner_bounds(obj:PFL_OBJECT; min:Pdouble; max:Pdouble);cdecl;external;
procedure fl_set_spinner_step(obj:PFL_OBJECT; step:Tdouble);cdecl;external;
function fl_get_spinner_step(obj:PFL_OBJECT):Tdouble;cdecl;external;
procedure fl_set_spinner_precision(obj:PFL_OBJECT; prec:longint);cdecl;external;
function fl_get_spinner_precision(obj:PFL_OBJECT):longint;cdecl;external;
function fl_get_spinner_input(obj:PFL_OBJECT):PFL_OBJECT;cdecl;external;
function fl_get_spinner_up_button(obj:PFL_OBJECT):PFL_OBJECT;cdecl;external;
function fl_get_spinner_down_button(obj:PFL_OBJECT):PFL_OBJECT;cdecl;external;
{$endif}
    { ! defined FL_SPINNER_H  }
    {*
     * \file tabfolder.h
      }
{$ifndef FL_FOLDER_H}
{$define FL_FOLDER_H}    
    { tab on top  }
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_TOP_TABFOLDER = 0;
        FL_BOTTOM_TABFOLDER = 1;
        FL_LEFT_TABFOLDER = 2;
        FL_RIGHT_TABFOLDER = 3;
        FL_NORMAL_TABFOLDER = FL_TOP_TABFOLDER;
;
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_NO = 0;
        FL_FIT = 1;
        FL_ENLARGE_ONLY = 2;
;
(* Const before type ignored *)

function fl_create_tabfolder(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_tabfolder(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_addto_tabfolder(ob:PFL_OBJECT; title:Pchar; form:PFL_FORM):PFL_OBJECT;cdecl;external;
function fl_get_tabfolder_folder_bynumber(ob:PFL_OBJECT; num:longint):PFL_FORM;cdecl;external;
(* Const before type ignored *)
function fl_get_tabfolder_folder_byname(ob:PFL_OBJECT; name:Pchar):PFL_FORM;cdecl;external;
(* Const before type ignored *)
function fl_get_tabfolder_folder_byname_f(ob:PFL_OBJECT; fmt:Pchar; args:array of const):PFL_FORM;cdecl;external;
function fl_get_tabfolder_folder_byname_f(ob:PFL_OBJECT; fmt:Pchar):PFL_FORM;cdecl;external;
procedure fl_delete_folder(ob:PFL_OBJECT; form:PFL_FORM);cdecl;external;
procedure fl_delete_folder_bynumber(ob:PFL_OBJECT; num:longint);cdecl;external;
(* Const before type ignored *)
procedure fl_delete_folder_byname(ob:PFL_OBJECT; name:Pchar);cdecl;external;
(* Const before type ignored *)
procedure fl_delete_folder_byname_f(ob:PFL_OBJECT; fmt:Pchar; args:array of const);cdecl;external;
procedure fl_delete_folder_byname_f(ob:PFL_OBJECT; fmt:Pchar);cdecl;external;
procedure fl_set_folder(ob:PFL_OBJECT; form:PFL_FORM);cdecl;external;
(* Const before type ignored *)
procedure fl_set_folder_byname(ob:PFL_OBJECT; name:Pchar);cdecl;external;
(* Const before type ignored *)
procedure fl_set_folder_byname_f(ob:PFL_OBJECT; fmt:Pchar; args:array of const);cdecl;external;
procedure fl_set_folder_byname_f(ob:PFL_OBJECT; fmt:Pchar);cdecl;external;
procedure fl_set_folder_bynumber(ob:PFL_OBJECT; num:longint);cdecl;external;
function fl_get_folder(ob:PFL_OBJECT):PFL_FORM;cdecl;external;
function fl_get_folder_number(ob:PFL_OBJECT):longint;cdecl;external;
(* Const before type ignored *)
function fl_get_folder_name(ob:PFL_OBJECT):Pchar;cdecl;external;
function fl_get_tabfolder_numfolders(ob:PFL_OBJECT):longint;cdecl;external;
function fl_get_active_folder(ob:PFL_OBJECT):PFL_FORM;cdecl;external;
function fl_get_active_folder_number(ob:PFL_OBJECT):longint;cdecl;external;
(* Const before type ignored *)
function fl_get_active_folder_name(ob:PFL_OBJECT):Pchar;cdecl;external;
procedure fl_get_folder_area(ob:PFL_OBJECT; x:PFL_Coord; y:PFL_Coord; w:PFL_Coord; h:PFL_Coord);cdecl;external;
procedure fl_replace_folder_bynumber(ob:PFL_OBJECT; num:longint; form:PFL_FORM);cdecl;external;
function fl_set_tabfolder_autofit(ob:PFL_OBJECT; y:longint):longint;cdecl;external;
function fl_set_default_tabfolder_corner(n:longint):longint;cdecl;external;
function fl_set_tabfolder_offset(obj:PFL_OBJECT; offset:longint):longint;cdecl;external;
function fl_get_tabfolder_offset(obj:PFL_OBJECT):longint;cdecl;external;
{$endif}
    { ! defined FL_FOLDER_H  }
    {*
     * \file text.h
      }
{$ifndef FL_TEXT_H}
{$define FL_TEXT_H}    
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_NORMAL_TEXT = 0;
;
      FL_TEXT_BOXTYPE = FL_FLAT_BOX;      
      FL_TEXT_COL1 = FL_COL1;      
      FL_TEXT_COL2 = FL_MCOL;      
      FL_TEXT_LCOL = FL_LCOL;      
      FL_TEXT_ALIGN = FL_ALIGN_LEFT or FL_ALIGN_INSIDE;      
(* Const before type ignored *)

function fl_create_text(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_text(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
{$endif}
    { ! defined FL_TEXT_H  }
    {*
     * \file thumbwheel.h
      }
{$ifndef FL_THUMBWHEEL_H}
{$define FL_THUMBWHEEL_H}    
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_VERT_THUMBWHEEL = 0;
        FL_HOR_THUMBWHEEL = 1;
;
    { defaults  }
      FL_THUMBWHEEL_COL1 = FL_COL1;      
      FL_THUMBWHEEL_COL2 = FL_COL1;      
      FL_THUMBWHEEL_LCOL = FL_BLACK;      
      FL_THUMBWHEEL_BOXTYPE = FL_BORDER_BOX;      
      FL_THUMBWHEEL_ALIGN = FL_ALIGN_BOTTOM;      

function fl_get_thumbwheel_value(ob:PFL_OBJECT):Tdouble;cdecl;external;
function fl_set_thumbwheel_value(ob:PFL_OBJECT; value:Tdouble):Tdouble;cdecl;external;
function fl_get_thumbwheel_step(ob:PFL_OBJECT):Tdouble;cdecl;external;
function fl_set_thumbwheel_step(ob:PFL_OBJECT; step:Tdouble):Tdouble;cdecl;external;
function fl_set_thumbwheel_return(ob:PFL_OBJECT; when:dword):longint;cdecl;external;
function fl_set_thumbwheel_crossover(ob:PFL_OBJECT; flag:longint):longint;cdecl;external;
procedure fl_set_thumbwheel_bounds(ob:PFL_OBJECT; min:Tdouble; max:Tdouble);cdecl;external;
procedure fl_get_thumbwheel_bounds(ob:PFL_OBJECT; min:Pdouble; max:Pdouble);cdecl;external;
(* Const before type ignored *)
function fl_create_thumbwheel(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_thumbwheel(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
{$endif}
    { ! defined FL_THUMBWHEEL_H  }
    {*
     * \file timer.h
     *
     *  Object Class: Timer
      }
{$ifndef FL_TIMER_H}
{$define FL_TIMER_H}    
    type
      PFL_TIMER_TYPE = ^TFL_TIMER_TYPE;
      TFL_TIMER_TYPE =  Longint;
      Const
        FL_NORMAL_TIMER = 0;
        FL_VALUE_TIMER = 1;
        FL_HIDDEN_TIMER = 2;
;
    {**** Defaults **** }
      FL_TIMER_BOXTYPE = FL_DOWN_BOX;      
      FL_TIMER_COL1 = FL_COL1;      
      FL_TIMER_COL2 = FL_RED;      
      FL_TIMER_LCOL = FL_LCOL;      
      FL_TIMER_ALIGN = FL_ALIGN_CENTER;      
    {**** Others   **** }
      FL_TIMER_BLINKRATE = 0.2;      
    {**** Routines **** }
    type
      PFL_TIMER_FILTER = ^TFL_TIMER_FILTER;
      TFL_TIMER_FILTER = function (para1:PFL_OBJECT; para2:Tdouble):Pchar;cdecl;
(* Const before type ignored *)

function fl_create_timer(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_timer(_type:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
procedure fl_set_timer(ob:PFL_OBJECT; total:Tdouble);cdecl;external;
function fl_get_timer(ob:PFL_OBJECT):Tdouble;cdecl;external;
procedure fl_set_timer_countup(ob:PFL_OBJECT; yes:longint);cdecl;external;
function fl_set_timer_filter(ob:PFL_OBJECT; filter:TFL_TIMER_FILTER):TFL_TIMER_FILTER;cdecl;external;
procedure fl_suspend_timer(ob:PFL_OBJECT);cdecl;external;
procedure fl_resume_timer(ob:PFL_OBJECT);cdecl;external;
{$endif}
    { ! defined FL_TIMER_H  }
    {*
     * \file xpopup.h
     *
     *  Prototypes for xpop-up menus
      }
{$ifndef FL_XPOPUP_H}
{$define FL_XPOPUP_H}    
    { max item each pup         }

    const
      FL_MAXPUPI = 128;      
    { space between each items  }
      FL_PUP_PADH = 4;      
    type

      TFL_PUP_ENTERCB = procedure (para1:longint; para2:pointer);cdecl;
    { call back prototype   }

      TFL_PUP_LEAVECB = procedure (para1:longint; para2:pointer);cdecl;
    { call back prototype   }

function fl_setpup_entries(nm:longint; entries:PFL_PUP_ENTRY):longint;cdecl;external;
function fl_newpup(win:TWindow):longint;cdecl;external;
(* Const before type ignored *)
function fl_defpup(win:TWindow; str:Pchar; args:array of const):longint;cdecl;external;
function fl_defpup(win:TWindow; str:Pchar):longint;cdecl;external;
(* Const before type ignored *)
function fl_addtopup(n:longint; str:Pchar; args:array of const):longint;cdecl;external;
function fl_addtopup(n:longint; str:Pchar):longint;cdecl;external;
function fl_setpup_mode(nm:longint; ni:longint; mode:dword):longint;cdecl;external;
procedure fl_freepup(n:longint);cdecl;external;
function fl_dopup(n:longint):longint;cdecl;external;
function fl_setpup_default_cursor(cursor:longint):TCursor;cdecl;external;
procedure fl_setpup_default_color(fg:TFL_COLOR; bg:TFL_COLOR);cdecl;external;
procedure fl_setpup_default_pup_checked_color(col:TFL_COLOR);cdecl;external;
function fl_setpup_default_fontsize(size:longint):longint;cdecl;external;
function fl_setpup_default_fontstyle(style:longint):longint;cdecl;external;
    const
      fl_setpup_fontsize = fl_setpup_default_fontsize;      
      fl_setpup_fontstyle = fl_setpup_default_fontstyle;      
      fl_setpup_color = fl_setpup_default_color;      
      fl_setpup_default_checkcolor = fl_setpup_default_pup_checked_color;      
      fl_setpup_checkcolor = fl_setpup_default_pup_checked_color;      

function fl_setpup_default_bw(bw:longint):longint;cdecl;external;
(* Const before type ignored *)
procedure fl_setpup_shortcut(nm:longint; ni:longint; sc:Pchar);cdecl;external;
procedure fl_setpup_position(x:longint; y:longint);cdecl;external;
procedure fl_setpup_align_bottom;cdecl;external;
procedure fl_setpup_selection(nm:longint; ni:longint);cdecl;external;
procedure fl_setpup_shadow(n:longint; y:longint);cdecl;external;
procedure fl_setpup_softedge(n:longint; y:longint);cdecl;external;
procedure fl_setpup_bw(n:longint; bw:longint);cdecl;external;
(* Const before type ignored *)
procedure fl_setpup_title(nm:longint; title:Pchar);cdecl;external;
(* Const before type ignored *)
procedure fl_setpup_title_f(nm:longint; fmt:Pchar; args:array of const);cdecl;external;
procedure fl_setpup_title_f(nm:longint; fmt:Pchar);cdecl;external;
function fl_setpup_entercb(nm:longint; cb:TFL_PUP_ENTERCB; data:pointer):TFL_PUP_ENTERCB;cdecl;external;
function fl_setpup_leavecb(nm:longint; cb:TFL_PUP_LEAVECB; data:pointer):TFL_PUP_LEAVECB;cdecl;external;
procedure fl_setpup_pad(n:longint; padw:longint; padh:longint);cdecl;external;
function fl_setpup_cursor(nm:longint; cursor:longint):TCursor;cdecl;external;
function fl_setpup_maxpup(n:longint):longint;cdecl;external;
function fl_getpup_mode(nm:longint; ni:longint):dword;cdecl;external;
(* Const before type ignored *)
function fl_getpup_text(nm:longint; ni:longint):Pchar;cdecl;external;
procedure fl_showpup(n:longint);cdecl;external;
procedure fl_hidepup(n:longint);cdecl;external;
function fl_getpup_items(n:longint):longint;cdecl;external;
function fl_current_pup:longint;cdecl;external;
    const
      fl_setpup_hotkey = fl_setpup_shortcut;      

function fl_setpup_itemcb(nm:longint; ni:longint; cb:TFL_PUP_CB):TFL_PUP_CB;cdecl;external;
function fl_setpup_menucb(nm:longint; cb:TFL_PUP_CB):TFL_PUP_CB;cdecl;external;
procedure fl_setpup_submenu(m:longint; i:longint; subm:longint);cdecl;external;
    const
      fl_setpup = fl_setpup_mode;      
{$endif}
    { ! defined FL_XPOPUP_H  }
    {*
     * \file xyplot.h
      }
{$ifndef FL_XYPLOT_H}
{$define FL_XYPLOT_H}    
    {  Class FL_XYPLOT  }
    { solid line                         }
    { with added square                  }
    { with added circle                  }
    { fill completely                    }
    { only data points                   }
    { dashed line                        }
    { accepts interactive manipulations  }
    { line & points                      }
    type
      PFL_XYPLOT_TYPE = ^TFL_XYPLOT_TYPE;
      TFL_XYPLOT_TYPE =  Longint;
      Const
        FL_NORMAL_XYPLOT = 0;
        FL_SQUARE_XYPLOT = 1;
        FL_CIRCLE_XYPLOT = 2;
        FL_FILL_XYPLOT = 3;
        FL_POINTS_XYPLOT = 4;
        FL_DASHED_XYPLOT = 5;
        FL_IMPULSE_XYPLOT = 6;
        FL_ACTIVE_XYPLOT = 7;
        FL_EMPTY_XYPLOT = 8;
        FL_DOTTED_XYPLOT = 9;
        FL_DOTDASHED_XYPLOT = 10;
        FL_LONGDASHED_XYPLOT = 11;
        FL_LINEPOINTS_XYPLOT = 12;
;
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_LINEAR = 0;
        FL_LOG = 1;
;
    type
      Pblablabla = ^Tblablabla;
      Tblablabla =  Longint;
      Const
        FL_GRID_NONE = 0;
        FL_GRID_MAJOR = 1;
        FL_GRID_MINOR = 2;
;
    {**** Defaults **** }
      FL_XYPLOT_BOXTYPE = FL_FLAT_BOX;      
      FL_XYPLOT_COL1 = FL_COL1;      
      FL_XYPLOT_LCOL = FL_LCOL;      
      FL_XYPLOT_ALIGN = FL_ALIGN_BOTTOM;      
      FL_MAX_XYPLOTOVERLAY = 32;      
    {**** Others   **** }
(* Const before type ignored *)

function fl_create_xyplot(t:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
function fl_add_xyplot(t:longint; x:TFL_Coord; y:TFL_Coord; w:TFL_Coord; h:TFL_Coord; 
               _label:Pchar):PFL_OBJECT;cdecl;external;
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
procedure fl_set_xyplot_data(ob:PFL_OBJECT; x:Psingle; y:Psingle; n:longint; title:Pchar; 
                xlabel:Pchar; ylabel:Pchar);cdecl;external;
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
procedure fl_set_xyplot_data_double(ob:PFL_OBJECT; x:Pdouble; y:Pdouble; n:longint; title:Pchar; 
                xlabel:Pchar; ylabel:Pchar);cdecl;external;
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
function fl_set_xyplot_file(ob:PFL_OBJECT; f:Pchar; title:Pchar; xl:Pchar; yl:Pchar):longint;cdecl;external;
procedure fl_insert_xyplot_data(ob:PFL_OBJECT; id:longint; n:longint; x:Tdouble; y:Tdouble);cdecl;external;
    const
      fl_set_xyplot_datafile = fl_set_xyplot_file;      
(* Const before type ignored *)

procedure fl_add_xyplot_text(ob:PFL_OBJECT; x:Tdouble; y:Tdouble; text:Pchar; al:longint; 
                col:TFL_COLOR);cdecl;external;
(* Const before type ignored *)
procedure fl_delete_xyplot_text(ob:PFL_OBJECT; text:Pchar);cdecl;external;
function fl_set_xyplot_maxoverlays(ob:PFL_OBJECT; maxover:longint):longint;cdecl;external;
procedure fl_add_xyplot_overlay(ob:PFL_OBJECT; id:longint; x:Psingle; y:Psingle; n:longint; 
                col:TFL_COLOR);cdecl;external;
(* Const before type ignored *)
function fl_add_xyplot_overlay_file(ob:PFL_OBJECT; id:longint; f:Pchar; c:TFL_COLOR):longint;cdecl;external;
procedure fl_set_xyplot_return(ob:PFL_OBJECT; when:dword);cdecl;external;
procedure fl_set_xyplot_xtics(ob:PFL_OBJECT; major:longint; minor:longint);cdecl;external;
procedure fl_set_xyplot_ytics(ob:PFL_OBJECT; major:longint; minor:longint);cdecl;external;
procedure fl_set_xyplot_xbounds(ob:PFL_OBJECT; xmin:Tdouble; xmax:Tdouble);cdecl;external;
procedure fl_set_xyplot_ybounds(ob:PFL_OBJECT; ymin:Tdouble; ymax:Tdouble);cdecl;external;
procedure fl_get_xyplot_xbounds(ob:PFL_OBJECT; xmin:Psingle; xmax:Psingle);cdecl;external;
procedure fl_get_xyplot_ybounds(ob:PFL_OBJECT; ymin:Psingle; ymax:Psingle);cdecl;external;
procedure fl_get_xyplot(ob:PFL_OBJECT; x:Psingle; y:Psingle; i:Plongint);cdecl;external;
function fl_get_xyplot_data_size(obj:PFL_OBJECT):longint;cdecl;external;
procedure fl_get_xyplot_data(ob:PFL_OBJECT; x:Psingle; y:Psingle; n:Plongint);cdecl;external;
procedure fl_get_xyplot_data_pointer(ob:PFL_OBJECT; id:longint; x:PPsingle; y:PPsingle; n:Plongint);cdecl;external;
procedure fl_get_xyplot_overlay_data(ob:PFL_OBJECT; id:longint; x:Psingle; y:Psingle; n:Plongint);cdecl;external;
procedure fl_set_xyplot_overlay_type(ob:PFL_OBJECT; id:longint; _type:longint);cdecl;external;
procedure fl_delete_xyplot_overlay(ob:PFL_OBJECT; id:longint);cdecl;external;
procedure fl_set_xyplot_interpolate(ob:PFL_OBJECT; id:longint; deg:longint; grid:Tdouble);cdecl;external;
procedure fl_set_xyplot_inspect(ob:PFL_OBJECT; yes:longint);cdecl;external;
procedure fl_set_xyplot_symbolsize(ob:PFL_OBJECT; n:longint);cdecl;external;
procedure fl_replace_xyplot_point(ob:PFL_OBJECT; i:longint; x:Tdouble; y:Tdouble);cdecl;external;
    { Replace the value of a particular point in dataset setID,
     * where setID=0 is the first data set.
     * This routine is an extension of fl_replace_xyplot_point
     * which acts on the first dataset only.  }
procedure fl_replace_xyplot_point_in_overlay(ob:PFL_OBJECT; i:longint; setID:longint; x:Tdouble; y:Tdouble);cdecl;external;
procedure fl_get_xyplot_xmapping(ob:PFL_OBJECT; a:Psingle; b:Psingle);cdecl;external;
procedure fl_get_xyplot_ymapping(ob:PFL_OBJECT; a:Psingle; b:Psingle);cdecl;external;
procedure fl_set_xyplot_keys(ob:PFL_OBJECT; keys:PPchar; x:single; y:single; align:longint);cdecl;external;
(* Const before type ignored *)
procedure fl_set_xyplot_key(ob:PFL_OBJECT; id:longint; key:Pchar);cdecl;external;
procedure fl_set_xyplot_key_position(ob:PFL_OBJECT; x:single; y:single; align:longint);cdecl;external;
procedure fl_set_xyplot_key_font(ob:PFL_OBJECT; style:longint; size:longint);cdecl;external;
function fl_get_xyplot_numdata(ob:PFL_OBJECT; id:longint):longint;cdecl;external;
    { The following two functions will be removed.
     * Use fl_set_object_l[size|style] for the functionalities  }
procedure fl_set_xyplot_fontsize(ob:PFL_OBJECT; size:longint);cdecl;external;
procedure fl_set_xyplot_fontstyle(ob:PFL_OBJECT; style:longint);cdecl;external;
procedure fl_xyplot_s2w(ob:PFL_OBJECT; sx:Tdouble; sy:Tdouble; wx:Psingle; wy:Psingle);cdecl;external;
procedure fl_xyplot_w2s(ob:PFL_OBJECT; wx:Tdouble; wy:Tdouble; sx:Psingle; sy:Psingle);cdecl;external;
procedure fl_set_xyplot_xscale(ob:PFL_OBJECT; scale:longint; base:Tdouble);cdecl;external;
procedure fl_set_xyplot_yscale(ob:PFL_OBJECT; scale:longint; base:Tdouble);cdecl;external;
procedure fl_clear_xyplot(ob:PFL_OBJECT);cdecl;external;
procedure fl_set_xyplot_linewidth(ob:PFL_OBJECT; id:longint; lw:longint);cdecl;external;
procedure fl_set_xyplot_xgrid(ob:PFL_OBJECT; xgrid:longint);cdecl;external;
procedure fl_set_xyplot_ygrid(ob:PFL_OBJECT; ygrid:longint);cdecl;external;
function fl_set_xyplot_grid_linestyle(ob:PFL_OBJECT; style:longint):longint;cdecl;external;
(* Const before type ignored *)
(* Const before type ignored *)
procedure fl_set_xyplot_alphaxtics(ob:PFL_OBJECT; m:Pchar; s:Pchar);cdecl;external;
(* Const before type ignored *)
(* Const before type ignored *)
procedure fl_set_xyplot_alphaytics(ob:PFL_OBJECT; m:Pchar; s:Pchar);cdecl;external;
(* Const before type ignored *)
(* Const before type ignored *)
procedure fl_set_xyplot_fixed_xaxis(ob:PFL_OBJECT; lm:Pchar; rm:Pchar);cdecl;external;
(* Const before type ignored *)
(* Const before type ignored *)
procedure fl_set_xyplot_fixed_yaxis(ob:PFL_OBJECT; bm:Pchar; tm:Pchar);cdecl;external;
(* Const before type ignored *)
(* Const before type ignored *)
function fl_interpolate(wx:Psingle; wy:Psingle; nin:longint; x:Psingle; y:Psingle; 
               grid:Tdouble; ndeg:longint):longint;cdecl;external;
    type

      TFL_XYPLOT_SYMBOL = procedure (para1:PFL_OBJECT; para2:longint; para3:PFL_POINT; para4:longint; para5:longint; 
                    para6:longint);cdecl;

function fl_set_xyplot_symbol(ob:PFL_OBJECT; id:longint; symbol:TFL_XYPLOT_SYMBOL):TFL_XYPLOT_SYMBOL;cdecl;external;
function fl_set_xyplot_mark_active(ob:PFL_OBJECT; y:longint):longint;cdecl;external;
procedure fl_get_xyplot_screen_area(obj:PFL_OBJECT; llx:PFL_COORD; lly:PFL_COORD; urx:PFL_COORD; ury:PFL_COORD);cdecl;external;
procedure fl_get_xyplot_world_area(obj:PFL_OBJECT; llx:Psingle; lly:Psingle; urx:Psingle; ury:Psingle);cdecl;external;
function fl_set_xyplot_log_minor_xtics(obj:PFL_OBJECT; yesno:longint):longint;cdecl;external;
function fl_set_xyplot_log_minor_ytics(obj:PFL_OBJECT; yesno:longint):longint;cdecl;external;
procedure fl_set_xyplot_mouse_buttons(obj:PFL_OBJECT; mouse_buttons:dword);cdecl;external;
procedure fl_get_xyplot_mouse_buttons(obj:PFL_OBJECT; mouse_buttons:Pdword);cdecl;external;
{$endif}
    { ! defined FL_XYPLOT_H  }
    { the following (fl_fheight) etc. were never documented and were
       removed from V0.89, but apparently this broke some applications that
       were using them. Put them back in 10/22/00  }

    { was #define dname def_expr }
    function fl_textgc : longint; { return type might be wrong }

    { was #define dname def_expr }
    function fl_gc : longint; { return type might be wrong }

    { was #define dname def_expr }
    function fl_cur_win : longint; { return type might be wrong }

    { was #define dname def_expr }
    function fl_fheight : longint; { return type might be wrong }

    { was #define dname def_expr }
    function fl_fdesc : longint; { return type might be wrong }

    { was #define dname def_expr }
    function fl_cur_fs : longint; { return type might be wrong }

function fl_gc_:TGC;cdecl;external;
function fl_textgc_:TGC;cdecl;external;
function fl_fheight_:longint;cdecl;external;
function fl_fdesc_:longint;cdecl;external;
function fl_cur_win_:TWindow;cdecl;external;
function fl_cur_fs_:PXFontStruct;cdecl;external;
function fl_display_:PDisplay;cdecl;external;
{$if ! defined FL_TRUE && ! defined FL_FALSE}

    const
      FL_FALSE = 0;      
      FL_TRUE =  not (FL_FALSE);      
{$endif}
    {#if defined __cplusplus }
    { }
    {#endif }
{$endif}
    { FL_FORMS_H  }

implementation

{ was #define dname def_expr }
function FL_UNUSED_ARG : longint; { return type might be wrong }
  begin
    FL_UNUSED_ARG:=__attribute__(unused);
  end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_TO_DOWNBOX(t : longint) : longint;
    var
       if_local1, if_local2, if_local3 : longint;
    (* result types are not known *)
    begin
      if FL_OVAL3D_UPBOX then
        if_local1:=FL_OVAL3D_DOWNBOX
      else
        if_local1:=t;
      if FL_ROUNDED3D_UPBOX then
        if_local2:=FL_ROUNDED3D_DOWNBOX
      else
        if_local2:=t=(if_local1);
      if FL_UP_BOX then
        if_local3:=FL_DOWN_BOX
      else
        if_local3:=t=(if_local2);
      FL_TO_DOWNBOX:=t=(if_local3);
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function special_style(a : longint) : longint;
    begin
      special_style:=(a>=(FL_SHADOW_STYLE and (@(a))))<=(FL_EMBOSSED_STYLE+FL_MAXFONTS);
    end;

    { was #define dname def_expr }
    function FL_BOUND_WIDTH : TFL_Coord;
      begin
        FL_BOUND_WIDTH:=TFL_Coord(1);
      end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_max(a,b : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      if b then
        if_local1:=a
      else
        if_local1:=b;
      FL_max:=a>(if_local1);
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_min(a,b : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      if b then
        if_local1:=a
      else
        if_local1:=b;
      FL_min:=a<(if_local1);
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_abs(a : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      if 0 then
        if_local1:=a
      else
        if_local1:=-(a);
      FL_abs:=a>(if_local1);
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    function FL_nint(a : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      if 0 then
        if_local1:=Ta(+(0.5))
      else
        if_local1:=Ta(-(0.5));
      FL_nint:=longint(a>(if_local1));
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    function FL_nlong(a : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      if 0 then
        if_local1:=Ta(+(0.5))
      else
        if_local1:=Ta(-(0.5));
      FL_nlong:=longint(a>(if_local1));
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_clamp(a,amin,amax : longint) : longint;
    var
       if_local1, if_local2 : longint;
    (* result types are not known *)
    begin
      if amax then
        if_local1:=amax
      else
        if_local1:=a;
      if amin then
        if_local2:=amin
      else
        if_local2:=a>(if_local1);
      FL_clamp:=a<(if_local2);
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    function FL_crnd(a : longint) : TFL_Coord;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      if 0 then
        if_local1:=Ta(+(0.5))
      else
        if_local1:=Ta(-(0.5));
      FL_crnd:=TFL_Coord(a>(if_local1));
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function fl_set_thinscrollbar(t : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      fl_set_thinscrollbar:=fl_set_scrollbar_type(if_local1);
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_is_gray(v : longint) : longint;
    begin
      FL_is_gray:=(v=(GrayScale or v))=StaticGray;
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_is_rgb(v : longint) : longint;
    begin
      FL_is_rgb:=(v=(TrueColor or v))=DirectColor;
    end;

    { was #define dname def_expr }
    function fl_visual : longint; { return type might be wrong }
      begin
        fl_visual:=(fl_state[fl_vmode]).(xvinfo^.visual);
      end;

    { was #define dname def_expr }
    function fl_colormap : longint; { return type might be wrong }
      begin
        fl_colormap:=(fl_state[fl_vmode]).colormap;
      end;

    { was #define dname(params) para_def_expr }
    { return type might be wrong }   
    function fl_get_visual : longint;
    begin
      fl_get_visual:=(fl_state[fl_vmode]).(xvinfo^.visual);
    end;

    { was #define dname(params) para_def_expr }
    { return type might be wrong }   
    function fl_get_colormap : longint;
    begin
      fl_get_colormap:=(fl_state[fl_vmode]).colormap;
    end;

    { was #define dname(params) para_def_expr }
    { return type might be wrong }   
    function fl_get_vclass : longint;
    begin
      fl_get_vclass:=fl_vmode;
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function fl_get_form_vclass(a : longint) : longint;
    begin
      fl_get_form_vclass:=fl_vmode;
    end;

    { was #define dname(params) para_def_expr }
    { return type might be wrong }   
    function fl_get_gc : longint;
    begin
      fl_get_gc:=(fl_state[fl_vmode]).(gc[0]);
    end;

    { was #define dname(params) para_def_expr }
    { return type might be wrong }   
    function fl_get_dpi : longint;
    begin
      fl_get_dpi:=fl_dpi;
    end;

    { was #define dname(params) para_def_expr }
    { return type might be wrong }   
    function fl_default_win : longint;
    begin
      fl_default_win:=(fl_state[fl_vmode]).trailblazer;
    end;

    { was #define dname(params) para_def_expr }
    { return type might be wrong }   
    function fl_default_window : longint;
    begin
      fl_default_window:=(fl_state[fl_vmode]).trailblazer;
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function fl_rectf(x,y,w,h,c : longint) : longint;
    begin
      fl_rectf:=fl_rectangle(1,x,y,w,h,c);
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function fl_rect(x,y,w,h,c : longint) : longint;
    begin
      fl_rect:=fl_rectangle(0,x,y,w,h,c);
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function fl_roundrectf(x,y,w,h,c : longint) : longint;
    begin
      fl_roundrectf:=fl_roundrectangle(1,x,y,w,h,c);
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function fl_roundrect(x,y,w,h,c : longint) : longint;
    begin
      fl_roundrect:=fl_roundrectangle(0,x,y,w,h,c);
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function fl_polyf(p,n,c : longint) : longint;
    begin
      fl_polyf:=fl_polygon(1,p,n,c);
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function fl_polyl(p,n,c : longint) : longint;
    begin
      fl_polyl:=fl_polygon(0,p,n,c);
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function fl_ovalf(x,y,w,h,c : longint) : longint;
    begin
      fl_ovalf:=fl_oval(1,x,y,w,h,c);
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function fl_ovall(x,y,w,h,c : longint) : longint;
    begin
      fl_ovall:=fl_oval(0,x,y,w,h,c);
    end;

    { was #define dname(params) para_def_expr }
    { return type might be wrong }   
    function fl_get_display : longint;
    begin
      fl_get_display:=fl_display;
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_FormDisplay(form : longint) : longint;
    begin
      FL_FormDisplay:=fl_display;
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_ObjectDisplay(object : longint) : longint;
    begin
      FL_ObjectDisplay:=fl_display;
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_IS_CANVAS(o : longint) : longint;
    begin
      FL_IS_CANVAS:=((o^.objclass)=(FL_CANVAS or (o^.objclass)))=FL_GLCANVAS;
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_ObjWin(o : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      if FL_IS_CANVAS(o) then
        if_local1:=fl_get_canvas_id(o)
      else
        if_local1:=o^.(form^.window);
      FL_ObjWin:=if_local1;
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    function metakey_down(mask : longint) : Tmask;
    begin
      metakey_down:=Tmask(@(Mod1Mask));
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    function shiftkey_down(mask : longint) : Tmask;
    begin
      shiftkey_down:=Tmask(@(ShiftMask));
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    function controlkey_down(mask : longint) : Tmask;
    begin
      controlkey_down:=Tmask(@(ControlMask));
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function button_down(mask : longint) : longint;
    begin
      button_down:=((((Tmask(@(Button1Mask))) or (Tmask(@(Button2Mask)))) or (Tmask(@(Button3Mask)))) or (Tmask(@(Button4Mask)))) or (Tmask(@(Button5Mask)));
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_PCCLAMP(a : longint) : longint;
    var
       if_local1, if_local2 : longint;
    (* result types are not known *)
    begin
      if 0 then
        if_local1:=0
      else
        if_local1:=a;
      if FL_PCMAX then
        if_local2:=FL_PCMAX
      else
        if_local2:=a<(if_local1);
      FL_PCCLAMP:=a>(if_local2);
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_GETR(packed : longint) : longint;
    begin
      FL_GETR:=(packed shr FL_RSHIFT) and FL_RMASK;
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_GETG(packed : longint) : longint;
    begin
      FL_GETG:=(packed shr FL_GSHIFT) and FL_PCMAX;
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_GETB(packed : longint) : longint;
    begin
      FL_GETB:=(packed shr FL_BSHIFT) and FL_PCMAX;
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_GETA(packed : longint) : longint;
    begin
      FL_GETA:=(packed shr FL_ASHIFT) and FL_PCMAX;
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_PACK3(r,g,b : longint) : longint;
    begin
      FL_PACK3:=((r shl FL_RSHIFT) or (g shl FL_GSHIFT)) or (b shl FL_BSHIFT);
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_PACK4(r,g,b,a : longint) : longint;
    begin
      FL_PACK4:=(FL_PACK3(r,g,b)) or (a shl FL_ASHIFT);
    end;

    { was #define dname def_expr }
    function FL_LIGHTBUTTON_MINSIZE : TFL_Coord;
      begin
        FL_LIGHTBUTTON_MINSIZE:=TFL_Coord(12);
      end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function fl_reset_cursor(win : longint) : longint;
    begin
      fl_reset_cursor:=fl_set_cursor(win,FL_DEFAULT_CURSOR);
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function fl_set_fselector_transient(b : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      fl_set_fselector_transient:=fl_set_fselector_border(if_local1);
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function fl_set_fselector_title(s : longint) : longint;
    begin
      fl_set_fselector_title:=fl_set_form_title(fl_get_fselector_form,s);
    end;

    { was #define dname def_expr }
    function FL_SLIDER_BW2 : longint; { return type might be wrong }
      begin
        FL_SLIDER_BW2:=FL_abs(FL_BOUND_WIDTH);
      end;

    { was #define dname def_expr }
    function fl_textgc : longint; { return type might be wrong }
      begin
        fl_textgc:=fl_textgc_;
      end;

    { was #define dname def_expr }
    function fl_gc : longint; { return type might be wrong }
      begin
        fl_gc:=fl_gc_;
      end;

    { was #define dname def_expr }
    function fl_cur_win : longint; { return type might be wrong }
      begin
        fl_cur_win:=fl_cur_win_;
      end;

    { was #define dname def_expr }
    function fl_fheight : longint; { return type might be wrong }
      begin
        fl_fheight:=fl_fheight_;
      end;

    { was #define dname def_expr }
    function fl_fdesc : longint; { return type might be wrong }
      begin
        fl_fdesc:=fl_fdesc_;
      end;

    { was #define dname def_expr }
    function fl_cur_fs : longint; { return type might be wrong }
      begin
        fl_cur_fs:=fl_cur_fs_;
      end;


end.
