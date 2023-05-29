
unit forms;
interface

{
  Automatically converted by H2Pas 1.0.0 from forms.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    forms.h
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
    Pdouble  = ^double;
    PFD_Any  = ^FD_Any;
    PFD_CMDLOG  = ^FD_CMDLOG;
    PFD_FSELECTOR  = ^FD_FSELECTOR;
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
    PVisual  = ^Visual;
    PXEvent  = ^XEvent;
    PXFontStruct  = ^XFontStruct;
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
{#define FL_EXPORT extern }
{#else }
{#ifdef MAKING_FORMS }
{#define FL_EXPORT __declspec( dllexport ) extern }
{#else }
{#define FL_EXPORT __declspec( dllimport ) extern }
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
(* error 
enum {
{ WM_DELETE_WINDOW callback return  }
in declaration at line 127 *)
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
(* error 
enum {
    { normal                                   }
    { set TRANSIENT_FOR property               }
    { use override_redirect to supress decor.  }
in declaration at line 247 *)
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
(* error 
FL_EXPORT int fl_is_inside_lalign( int align );
in declaration at line 319 *)
(* error 
FL_EXPORT int fl_is_outside_lalign( int align );
in declaration at line 321 *)
(* error 
FL_EXPORT int fl_is_center_lalign( int align );
in declaration at line 323 *)
(* error 
FL_EXPORT int fl_to_inside_lalign( int align );
in declaration at line 325 *)
(* error 
FL_EXPORT int fl_to_outside_lalign( int align );
in declaration at line 327 *)
    { Mouse buttons  }
(* error 
enum {
in declaration at line 337 *)
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
(* error 
enum {
in declaration at line 644 *)
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
(* error 
FL_EXPORT FL_OBJECT *FL_EVENT;
 in declarator_list *)
    {** FORM *** }
    { Form visibility state: form->visible  }
(* error 
enum {
in declaration at line 888 *)
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
      PFL_FORM_ = ^TFL_FORM_;
      TFL_FORM_ = record
          fdui : pointer;cdecl;
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
(* error 
enum {
in declaration at line 976 *)
    { IO other than XEvent Q  }

      TFL_IO_CALLBACK = procedure (para1:longint; para2:pointer);cdecl;
(* error 
FL_EXPORT void fl_add_io_callback( int              fd,
in declaration at line 986 *)
(* error 
FL_EXPORT void fl_remove_io_callback( int            fd,
in declaration at line 990 *)
    { signals  }

      TFL_SIGNAL_HANDLER = procedure (para1:longint; para2:pointer);cdecl;
(* error 
FL_EXPORT void fl_add_signal_callback( int                 s,
in declaration at line 999 *)
(* error 
FL_EXPORT void fl_remove_signal_callback( int s );
in declaration at line 1001 *)
(* error 
FL_EXPORT void fl_signal_caught( int s );
in declaration at line 1003 *)
(* error 
FL_EXPORT void fl_app_signal_direct( int y );
in declaration at line 1005 *)
(* error 
enum {
in declaration at line 1011 *)
(* error 
FL_EXPORT int fl_input_end_return_handling( int type );
in declaration at line 1013 *)
    { Timeouts  }

      TFL_TIMEOUT_CALLBACK = procedure (para1:longint; para2:pointer);cdecl;
(* error 
FL_EXPORT int fl_add_timeout( long                  msec,
in declaration at line 1022 *)
(* error 
FL_EXPORT void fl_remove_timeout( int id );
in declaration at line 1024 *)
    { Basic public routine prototypes  }
(* error 
FL_EXPORT int fl_library_version( int * ver,
in declaration at line 1029 *)
(* error 
FL_EXPORT long fl_library_full_version( int         * version,
in declaration at line 1034 *)
    {* Generic routines that deal with FORMS * }
(* error 
FL_EXPORT FL_FORM * fl_bgn_form( int      type,
(* error 
                                 FL_Coord w,
(* error 
                                 FL_Coord h );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_end_form( void );
in declaration at line 1042 *)
(* error 
FL_EXPORT FL_OBJECT * fl_do_forms( void );
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_check_forms( void );
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_do_only_forms( void );
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_check_only_forms( void );
 in declarator_list *)
(* error 
FL_EXPORT void fl_freeze_form( FL_FORM * form );
in declaration at line 1052 *)
(* error 
FL_EXPORT void fl_set_focus_object( FL_FORM   * form,
in declaration at line 1055 *)
(* error 
FL_EXPORT FL_OBJECT *fl_get_focus_object( FL_FORM * form );
 in declarator_list *)
(* error 
FL_EXPORT void fl_reset_focus_object( FL_OBJECT * ob );
in declaration at line 1059 *)

    const
      fl_set_object_focus = fl_set_focus_object;      
(* error 
FL_EXPORT FL_FORM_ATCLOSE fl_set_form_atclose( FL_FORM         * form,
(* error 
                                               FL_FORM_ATCLOSE   fmclose,
(* error 
                                               void            * data );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_FORM_ATCLOSE fl_set_atclose( FL_FORM_ATCLOSE   fmclose,
(* error 
                                          void            * data );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_FORM_ATACTIVATE fl_set_form_atactivate( FL_FORM            * form,
(* error 
													 FL_FORM_ATACTIVATE   cb,
(* error 
													 void               * data );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_FORM_ATDEACTIVATE fl_set_form_atdeactivate( FL_FORM              * form,
(* error 
														 FL_FORM_ATDEACTIVATE   cb,
(* error 
														 void                 * data );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_unfreeze_form( FL_FORM * form );
in declaration at line 1078 *)
(* error 
FL_EXPORT int fl_form_is_activated( FL_FORM * form );
in declaration at line 1080 *)
(* error 
FL_EXPORT void fl_deactivate_form( FL_FORM * form );
in declaration at line 1082 *)
(* error 
FL_EXPORT void fl_activate_form( FL_FORM * form );
in declaration at line 1084 *)
(* error 
FL_EXPORT void fl_deactivate_all_forms( void );
in declaration at line 1086 *)
(* error 
FL_EXPORT void fl_activate_all_forms( void );
in declaration at line 1088 *)
(* error 
FL_EXPORT void fl_freeze_all_forms( void );
in declaration at line 1090 *)
(* error 
FL_EXPORT void fl_unfreeze_all_forms( void );
in declaration at line 1092 *)
(* error 
FL_EXPORT void fl_scale_form( FL_FORM * form,
in declaration at line 1096 *)
(* error 
FL_EXPORT void fl_set_form_position( FL_FORM  * form,
in declaration at line 1100 *)
(* error 
FL_EXPORT void fl_set_form_title( FL_FORM    * form,
in declaration at line 1103 *)
(* error 
FL_EXPORT void fl_set_form_title_f( FL_FORM *    form,
in declaration at line 1107 *)
(* error 
FL_EXPORT void fl_set_app_mainform( FL_FORM * form );
in declaration at line 1109 *)
(* error 
FL_EXPORT FL_FORM * fl_get_app_mainform( void );
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_app_nomainform( int flag );
in declaration at line 1113 *)
(* error 
FL_EXPORT void fl_set_form_callback( FL_FORM            * form,
in declaration at line 1117 *)
      fl_set_form_call_back = fl_set_form_callback;      
(* error 
FL_EXPORT void fl_set_form_size( FL_FORM  * form,
in declaration at line 1123 *)
(* error 
FL_EXPORT void fl_set_form_background_color( FL_FORM * form,
in declaration at line 1126 *)
(* error 
FL_EXPORT FL_COLOR fl_get_form_background_color( FL_FORM * form );
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_form_hotspot( FL_FORM  * form,
in declaration at line 1132 *)
(* error 
FL_EXPORT void fl_set_form_hotobject( FL_FORM   * form,
in declaration at line 1135 *)
(* error 
FL_EXPORT void fl_set_form_minsize( FL_FORM  * form,
in declaration at line 1139 *)
(* error 
FL_EXPORT void fl_set_form_maxsize( FL_FORM  * form,
in declaration at line 1143 *)
(* error 
FL_EXPORT void fl_set_form_event_cmask( FL_FORM       * form,
in declaration at line 1146 *)
(* error 
FL_EXPORT unsigned long fl_get_form_event_cmask( FL_FORM * form );
in declaration at line 1148 *)
(* error 
FL_EXPORT void fl_set_form_geometry( FL_FORM  * form,
in declaration at line 1154 *)
      fl_set_initial_placement = fl_set_form_geometry;      
(* error 
FL_EXPORT Window fl_show_form( FL_FORM    * form,
(* error 
                               int          place,
(* error 
                               int          border,
(* error 
                               const char * name );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT Window fl_show_form_f( FL_FORM    * form,
(* error 
								 int          place,
(* error 
								 int          border,
(* error 
								 const char * fmt,
(* error 
								 ... );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_hide_form( FL_FORM * form );
in declaration at line 1169 *)
(* error 
FL_EXPORT void fl_free_form( FL_FORM * form );
in declaration at line 1171 *)
(* error 
FL_EXPORT void fl_redraw_form( FL_FORM * form );
in declaration at line 1173 *)
(* error 
FL_EXPORT void fl_set_form_dblbuffer( FL_FORM * form,
in declaration at line 1176 *)
(* error 
FL_EXPORT Window fl_prepare_form_window( FL_FORM    * form,
(* error 
                                         int          place,
(* error 
                                         int          border,
(* error 
                                         const char * name );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT Window fl_prepare_form_window_f( FL_FORM    * form,
(* error 
										   int          place,
(* error 
										   int          border,
(* error 
										   const char * fmt,
(* error 
										   ... );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT Window fl_show_form_window( FL_FORM * form );
 in declarator_list *)
(* error 
FL_EXPORT double fl_adjust_form_size( FL_FORM * form );
 in declarator_list *)
(* error 
FL_EXPORT int fl_form_is_visible( FL_FORM * form );
in declaration at line 1193 *)
(* error 
FL_EXPORT int fl_form_is_iconified( FL_FORM * form );
in declaration at line 1195 *)
(* error 
FL_EXPORT FL_RAW_CALLBACK fl_register_raw_callback( FL_FORM         * form,
(* error 
                                                    unsigned long     mask,
(* error 
                                                    FL_RAW_CALLBACK   rcb );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
      fl_register_call_back = fl_register_raw_callback;      
(* error 
FL_EXPORT FL_OBJECT * fl_bgn_group( void );
 in declarator_list *)
(* error 
FL_EXPORT void fl_end_group( void );
in declaration at line 1205 *)
(* error 
FL_EXPORT FL_OBJECT *fl_addto_group( FL_OBJECT * group );
 in declarator_list *)
    {***** Routines that deal with FL_OBJECTS ******* }
(* error 
FL_EXPORT int fl_get_object_objclass( FL_OBJECT * obj );
in declaration at line 1212 *)
(* error 
FL_EXPORT int fl_get_object_type( FL_OBJECT * obj );
in declaration at line 1214 *)
(* error 
FL_EXPORT void fl_set_object_boxtype( FL_OBJECT * ob,
in declaration at line 1217 *)
(* error 
FL_EXPORT int fl_get_object_boxtype( FL_OBJECT * obj );
in declaration at line 1219 *)
(* error 
FL_EXPORT void fl_set_object_bw( FL_OBJECT * ob,
in declaration at line 1222 *)
(* error 
FL_EXPORT int fl_get_object_bw( FL_OBJECT * ob );
in declaration at line 1224 *)
(* error 
FL_EXPORT void fl_set_object_resize( FL_OBJECT    * ob,
in declaration at line 1227 *)
(* error 
FL_EXPORT void fl_get_object_resize( FL_OBJECT    * ob,
in declaration at line 1230 *)
(* error 
FL_EXPORT void fl_set_object_gravity( FL_OBJECT    * ob,
in declaration at line 1234 *)
(* error 
FL_EXPORT void fl_get_object_gravity( FL_OBJECT    * ob,
in declaration at line 1238 *)
(* error 
FL_EXPORT void fl_set_object_lsize( FL_OBJECT * obj,
in declaration at line 1241 *)
(* error 
FL_EXPORT int fl_get_object_lsize( FL_OBJECT * obj );
in declaration at line 1243 *)
(* error 
FL_EXPORT void fl_set_object_lstyle( FL_OBJECT * obj,
in declaration at line 1247 *)
(* error 
FL_EXPORT int fl_get_object_lstyle( FL_OBJECT * obj );
in declaration at line 1249 *)
(* error 
FL_EXPORT void fl_set_object_lcol( FL_OBJECT * ob,
in declaration at line 1252 *)
(* error 
FL_EXPORT FL_COLOR fl_get_object_lcol( FL_OBJECT * obj );
 in declarator_list *)
(* error 
FL_EXPORT unsigned int fl_set_object_return( FL_OBJECT    * ob,
in declaration at line 1257 *)
(* error 
FL_EXPORT unsigned int fl_get_object_return( FL_OBJECT * ob );
in declaration at line 1259 *)
(* error 
FL_EXPORT void fl_set_object_lalign( FL_OBJECT * obj,
in declaration at line 1262 *)
(* error 
FL_EXPORT int fl_get_object_lalign( FL_OBJECT * obj );
in declaration at line 1264 *)
(* error 
FL_EXPORT void fl_set_object_shortcut( FL_OBJECT  * obj,
in declaration at line 1268 *)
(* error 
FL_EXPORT void fl_set_object_shortcutkey( FL_OBJECT    * obj,
in declaration at line 1271 *)
(* error 
FL_EXPORT void fl_set_object_dblbuffer( FL_OBJECT * ob,
in declaration at line 1274 *)
(* error 
FL_EXPORT void fl_set_object_color( FL_OBJECT * ob,
in declaration at line 1278 *)
(* error 
FL_EXPORT void fl_get_object_color( FL_OBJECT * obj,
in declaration at line 1282 *)
(* error 
FL_EXPORT void fl_set_object_label( FL_OBJECT  * ob,
in declaration at line 1285 *)
(* error 
FL_EXPORT void fl_set_object_label_f( FL_OBJECT  * obj,
in declaration at line 1289 *)
(* error 
FL_EXPORT const char * fl_get_object_label( FL_OBJECT * obj );
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_object_helper( FL_OBJECT  * ob,
in declaration at line 1294 *)
(* error 
FL_EXPORT void fl_set_object_helper_f( FL_OBJECT  * ob,
in declaration at line 1298 *)
(* error 
FL_EXPORT void fl_set_object_position( FL_OBJECT * obj,
in declaration at line 1302 *)
(* error 
FL_EXPORT void fl_get_object_size( FL_OBJECT * obj,
in declaration at line 1306 *)
(* error 
FL_EXPORT void fl_set_object_size( FL_OBJECT * obj,
in declaration at line 1310 *)
(* error 
FL_EXPORT void fl_set_object_automatic( FL_OBJECT * obj,
in declaration at line 1313 *)
(* error 
FL_EXPORT int fl_object_is_automatic( FL_OBJECT * obj );
in declaration at line 1315 *)
(* error 
FL_EXPORT void fl_draw_object_label( FL_OBJECT * ob );
in declaration at line 1317 *)
(* error 
FL_EXPORT void fl_draw_object_label_outside( FL_OBJECT * ob );
in declaration at line 1319 *)
(* error 
FL_EXPORT FL_OBJECT * fl_get_object_component( FL_OBJECT * composite,
(* error 
                                               int          objclass,
(* error 
                                               int          type,
(* error 
                                               int          numb );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_for_all_objects( FL_FORM * form,
in declaration at line 1328 *)
      fl_draw_object_outside_label = fl_draw_object_label_outside;      
(* error 
FL_EXPORT void fl_set_object_dblclick( FL_OBJECT     * obj,
in declaration at line 1333 *)
(* error 
FL_EXPORT unsigned long fl_get_object_dblclick( FL_OBJECT * obj );
in declaration at line 1335 *)
(* error 
FL_EXPORT void fl_set_object_geometry( FL_OBJECT * obj,
in declaration at line 1341 *)
(* error 
FL_EXPORT void fl_move_object( FL_OBJECT * obj,
in declaration at line 1345 *)
      fl_set_object_lcolor = fl_set_object_lcol;      
      fl_get_object_lcolor = fl_get_object_lcol;      
(* error 
FL_EXPORT void fl_fit_object_label( FL_OBJECT * obj,
in declaration at line 1352 *)
(* error 
FL_EXPORT void fl_get_object_geometry( FL_OBJECT * ob,
in declaration at line 1358 *)
(* error 
FL_EXPORT void fl_get_object_position( FL_OBJECT * ob,
in declaration at line 1362 *)
    { This one takes into account the label  }
(* error 
FL_EXPORT void fl_get_object_bbox( FL_OBJECT * obj,
in declaration at line 1370 *)
      fl_compute_object_geometry = fl_get_object_bbox;      
(* error 
FL_EXPORT void fl_call_object_callback( FL_OBJECT * ob );
in declaration at line 1374 *)
(* error 
FL_EXPORT FL_HANDLEPTR fl_set_object_prehandler( FL_OBJECT    * ob,
(* error 
                                                 FL_HANDLEPTR   phandler );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_HANDLEPTR fl_set_object_posthandler( FL_OBJECT    * ob,
(* error 
                                                  FL_HANDLEPTR   post );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_CALLBACKPTR fl_set_object_callback( FL_OBJECT      * obj,
(* error 
                                                 FL_CALLBACKPTR   callback,
(* error 
                                                 long             argument );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
      fl_set_object_align = fl_set_object_lalign;      
      fl_set_call_back = fl_set_object_callback;      
(* error 
FL_EXPORT void fl_redraw_object( FL_OBJECT * obj );
in declaration at line 1389 *)
(* error 
FL_EXPORT void fl_show_object( FL_OBJECT * ob );
in declaration at line 1391 *)
(* error 
FL_EXPORT void fl_hide_object( FL_OBJECT * ob );
in declaration at line 1393 *)
(* error 
FL_EXPORT int fl_object_is_visible( FL_OBJECT * obj );
in declaration at line 1395 *)
(* error 
FL_EXPORT void fl_free_object( FL_OBJECT * obj );
in declaration at line 1397 *)
(* error 
FL_EXPORT void fl_delete_object( FL_OBJECT * obj );
in declaration at line 1399 *)
(* error 
FL_EXPORT int fl_get_object_return_state( FL_OBJECT *obj );
in declaration at line 1401 *)
(* error 
FL_EXPORT void fl_trigger_object( FL_OBJECT * obj );
in declaration at line 1403 *)
(* error 
FL_EXPORT void fl_activate_object( FL_OBJECT * ob );
in declaration at line 1405 *)
(* error 
FL_EXPORT void fl_deactivate_object( FL_OBJECT * ob );
in declaration at line 1407 *)
(* error 
FL_EXPORT int fl_object_is_active( FL_OBJECT * obj );
in declaration at line 1409 *)
(* error 
FL_EXPORT int fl_enumerate_fonts( void ( * output )( const char * s ),
in declaration at line 1412 *)
(* error 
FL_EXPORT int fl_set_font_name( int          n,
in declaration at line 1415 *)
(* error 
FL_EXPORT int fl_set_font_name_f( int          n,
in declaration at line 1419 *)
(* error 
FL_EXPORT const char * fl_get_font_name( int n );
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_font( int numb,
in declaration at line 1424 *)
    { Routines that facilitate free object  }
(* error 
FL_EXPORT int fl_get_char_height( int   style,
in declaration at line 1431 *)
(* error 
FL_EXPORT int fl_get_char_width( int style,
in declaration at line 1434 *)
(* error 
FL_EXPORT int fl_get_string_height( int          style,
in declaration at line 1441 *)
(* error 
FL_EXPORT int fl_get_string_width( int          style,
in declaration at line 1446 *)
(* error 
FL_EXPORT int fl_get_string_widthTAB( int          style,
in declaration at line 1451 *)
(* error 
FL_EXPORT void fl_get_string_dimension( int          fntstyle,
in declaration at line 1458 *)
      fl_get_string_size = fl_get_string_dimension;      
(* error 
FL_EXPORT void fl_get_align_xy( int   align,
in declaration at line 1472 *)
(* error 
FL_EXPORT int fl_get_label_char_at_mouse( FL_OBJECT * obj );
in declaration at line 1474 *)
      fl_drw_text = fl_draw_text;      
(* error 
FL_EXPORT void fl_draw_text( int          align,
in declaration at line 1485 *)
      fl_drw_text_beside = fl_draw_text_beside;      
(* error 
FL_EXPORT void fl_draw_text_beside( int          align,
in declaration at line 1496 *)
      fl_drw_text_cursor = fl_draw_text_cursor;      
(* error 
FL_EXPORT void fl_draw_text_cursor( int          align,
in declaration at line 1509 *)
      fl_drw_box = fl_draw_box;      
(* error 
FL_EXPORT void fl_draw_box( int      style,
in declaration at line 1518 *)
    type

      TFL_DRAWPTR = procedure (para1:TFL_Coord; para2:TFL_Coord; para3:TFL_Coord; para4:TFL_Coord; para5:longint; 
                    para6:TFL_COLOR);cdecl;
(* error 
FL_EXPORT int fl_add_symbol( const char * name,
in declaration at line 1529 *)
(* error 
FL_EXPORT int fl_delete_symbol( const char * name );
in declaration at line 1531 *)
(* error 
FL_EXPORT int fl_draw_symbol( const char * label,
in declaration at line 1538 *)
(* error 
FL_EXPORT unsigned long fl_mapcolor( FL_COLOR col,
in declaration at line 1543 *)
(* error 
FL_EXPORT long fl_mapcolorname( FL_COLOR     col,
in declaration at line 1546 *)

    const
      fl_mapcolor_name = fl_mapcolorname;      
(* error 
FL_EXPORT void fl_free_colors( FL_COLOR * c,
in declaration at line 1551 *)
(* error 
FL_EXPORT void fl_free_pixels( unsigned long * pix,
in declaration at line 1554 *)
(* error 
FL_EXPORT void fl_set_color_leak( int y );
in declaration at line 1556 *)
(* error 
FL_EXPORT unsigned long fl_getmcolor( FL_COLOR   i,
in declaration at line 1561 *)
(* error 
FL_EXPORT unsigned long fl_get_pixel( FL_COLOR col );
in declaration at line 1563 *)
      fl_get_flcolor = fl_get_pixel;      
(* error 
FL_EXPORT void fl_get_icm_color( FL_COLOR   col,
in declaration at line 1570 *)
(* error 
FL_EXPORT void fl_set_icm_color( FL_COLOR col,
in declaration at line 1575 *)
(* error 
FL_EXPORT void fl_color( FL_COLOR col );
in declaration at line 1577 *)
(* error 
FL_EXPORT void fl_bk_color( FL_COLOR col );
in declaration at line 1579 *)
(* error 
FL_EXPORT void fl_set_gamma( double r,
in declaration at line 1583 *)
(* error 
FL_EXPORT void fl_show_errors( int y );
in declaration at line 1585 *)
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
(* error 
FL_EXPORT FL_FORM *fl_current_form;
 in declarator_list *)
(* error 
FL_EXPORT void fl_add_object( FL_FORM   * form,
in declaration at line 1613 *)
(* error 
FL_EXPORT FL_FORM *fl_addto_form( FL_FORM * form );
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_make_object( int            objclass,
(* error 
                                      int            type,
(* error 
                                      FL_Coord       x,
(* error 
                                      FL_Coord       y,
(* error 
                                      FL_Coord       w,
(* error 
                                      FL_Coord       h,
(* error 
                                      const char   * label,
(* error 
                                      FL_HANDLEPTR   handle );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_add_child( FL_OBJECT *,
in declaration at line 1627 *)
(* error 
FL_EXPORT void fl_set_coordunit( int u );
in declaration at line 1629 *)
(* error 
FL_EXPORT void fl_set_border_width( int bw );
in declaration at line 1631 *)
(* error 
FL_EXPORT void fl_set_scrollbar_type( int t );
in declaration at line 1633 *)
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   

    function fl_set_thinscrollbar(t : longint) : longint;    

(* error 
FL_EXPORT void fl_flip_yorigin( void );
in declaration at line 1638 *)
(* error 
FL_EXPORT int fl_get_coordunit( void );
in declaration at line 1640 *)
(* error 
FL_EXPORT int fl_get_border_width( void );
in declaration at line 1642 *)
    { Misc. routines  }
(* error 
FL_EXPORT void fl_ringbell( int percent );
in declaration at line 1646 *)
(* error 
FL_EXPORT void fl_gettime( long * sec,
in declaration at line 1649 *)
(* error 
FL_EXPORT const char * fl_now( void );
 in declarator_list *)
(* error 
FL_EXPORT const char * fl_whoami( void );
 in declarator_list *)
(* error 
FL_EXPORT long fl_mouse_button( void );
in declaration at line 1655 *)
(* error 
FL_EXPORT int fl_current_event( void );
in declaration at line 1657 *)
(* error 
FL_EXPORT char * fl_strdup( const char * s );
in declaration at line 1659 *)
(* error 
FL_EXPORT void fl_set_err_logfp( FILE * fp );
in declaration at line 1661 *)
(* error 
FL_EXPORT void fl_set_error_handler( FL_ERROR_FUNC user_func );
in declaration at line 1663 *)
(* error 
FL_EXPORT char ** fl_get_cmdline_args( int * );
in declaration at line 1665 *)
    { This function was called 'fl_set_error_logfp/' in XForms 0.89.  }
    const
      fl_set_error_logfp = fl_set_err_logfp;      
      fl_mousebutton = fl_mouse_button;      
    { These give more flexibility for future changes. Also application
     * can re-assign these pointers to whatever function it wants, e.g.,
     * to a shared memory pool allocator.  }
(* error 
FL_EXPORT void ( * fl_free )( void * );
in declaration at line 1677 *)
(* error 
FL_EXPORT void * ( * fl_malloc )( size_t );
in declaration at line 1679 *)
(* error 
FL_EXPORT void * ( * fl_calloc )( size_t,
in declaration at line 1682 *)
(* error 
FL_EXPORT void * ( * fl_realloc )( void *,
in declaration at line 1685 *)
(* error 
FL_EXPORT int fl_msleep( unsigned long msec );
in declaration at line 1687 *)
      FL_MAX_MENU_CHOICE_ITEMS = 128;      
(* Const before type ignored *)
    type
      PFL_VAL_FILTER = ^TFL_VAL_FILTER;
      TFL_VAL_FILTER = function (para1:PFL_OBJECT; para2:Tdouble; para3:longint):Pchar;cdecl;
(* error 
FL_EXPORT int fl_is_same_object( FL_OBJECT * obj1,
in declaration at line 1696 *)
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
(* error 
enum {
in declaration at line 1717 *)

    const
      FL_MINDEPTH = 1;      
    { FL_xxx does not do anything anymore, but kept for compatibility  }
(* error 
enum {
    { special request  }
in declaration at line 1733 *)
(* error 
enum {
in declaration at line 1747 *)
{$ifndef GreyScale}

    const
      GreyScale = GrayScale;      
      StaticGrey = StaticGray;      
{$endif}
(* error 
#define FL_is_gray( v )  ( ( v ) == GrayScale || ( v ) == StaticGray )
in define line 1754 *)
(* error 
#define FL_is_rgb( v )   ( ( v ) == TrueColor || ( v ) == DirectColor )
in define line 1755 *)
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
(* error 
FL_EXPORT Display *fl_display;
 in declarator_list *)
(* error 
FL_EXPORT int fl_screen;
in declaration at line 1801 *)
(* error 
FL_EXPORT Window fl_root;   /* root window */
 in declarator_list *)
    { root window  }
(* error 
FL_EXPORT Window fl_vroot;  /* virtual root window */
 in declarator_list *)
    { virtual root window  }
(* error 
FL_EXPORT int fl_scrh,      /* screen dimension in pixels */
    { screen dimension in pixels  }
in declaration at line 1806 *)
(* error 
FL_EXPORT int fl_vmode;
in declaration at line 1807 *)

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

(* error 
FL_EXPORT FL_State fl_state[ ];
 in declarator_list *)
(* error 
FL_EXPORT char *fl_ul_magic_char;
in declaration at line 1824 *)
(* error 
FL_EXPORT double fl_dpi;
 in declarator_list *)
    { was #define dname(params) para_def_expr }
    { return type might be wrong }   
    function fl_get_dpi : longint;    

(* error 
FL_EXPORT int fl_mode_capable( int mode,
in declaration at line 1830 *)
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
(* error 
FL_EXPORT void fl_rectangle( int      fill,
in declaration at line 1879 *)
(* error 
FL_EXPORT void fl_rectbound( FL_Coord x,
in declaration at line 1885 *)
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   

    function fl_rectf(x,y,w,h,c : longint) : longint;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function fl_rect(x,y,w,h,c : longint) : longint;    

    { Rectangle with rounded-corners  }
(* error 
FL_EXPORT void fl_roundrectangle( int      fill,
in declaration at line 1897 *)
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function fl_roundrectf(x,y,w,h,c : longint) : longint;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function fl_roundrect(x,y,w,h,c : longint) : longint;    

    { General polygon and polylines  }
(* error 
FL_EXPORT void fl_polygon( int        fill,
in declaration at line 1907 *)
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
in declaration at line 1913 *)
(* error 
    do { fl_polygon( 1, p, n, c );            \
(* error 
         fl_polygon( 0, p, n, FL_BLACK );     \
in declaration at line 1914 *)
(* error 
         fl_polygon( 0, p, n, FL_BLACK );     \
(* error 
       } while( 0 )
in declaration at line 1919 *)
(* error 
FL_EXPORT void fl_line( FL_Coord xi,
in declaration at line 1925 *)
(* error 
FL_EXPORT void fl_point( FL_Coord x,
in declaration at line 1929 *)
(* error 
FL_EXPORT void fl_points( FL_POINT * p,
in declaration at line 1933 *)
    const
      fl_simple_line = fl_line;      
(* error 
FL_EXPORT void fl_dashedlinestyle( const char * dash,
in declaration at line 1938 *)
(* error 
FL_EXPORT void fl_update_display( int block );
in declaration at line 1940 *)
(* error 
    {                                                                         \
in declaration at line 1946 *)
(* error 
        FL_COORD fli_x = ( x ), fli_y = ( y );                                \
(* error 
        fl_line( fli_x, fli_y, fli_x + ( w ) - 1, fli_y + ( h ) - 1, ( c ) ); \
in declaration at line 1947 *)
(* error 
        fl_line( fli_x, fli_y, fli_x + ( w ) - 1, fli_y + ( h ) - 1, ( c ) ); \
(* error 
    } while ( 0 )
    { Line attributes  }
in declaration at line 1960 *)
(* error 
FL_EXPORT void fl_linewidth( int n );
in declaration at line 1962 *)
(* error 
FL_EXPORT void fl_linestyle( int n );
in declaration at line 1964 *)
(* error 
FL_EXPORT void fl_drawmode( int request );
in declaration at line 1966 *)
(* error 
FL_EXPORT int fl_get_linewidth( void );
in declaration at line 1968 *)
(* error 
FL_EXPORT int fl_get_linestyle( void );
in declaration at line 1970 *)
(* error 
FL_EXPORT int fl_get_drawmode( void );
in declaration at line 1972 *)
      fl_set_linewidth = fl_linewidth;      
      fl_set_linestyle = fl_linestyle;      
      fl_set_drawmode = fl_drawmode;      
    {* Ellipses * }
(* error 
FL_EXPORT void fl_circ( FL_COORD x,
in declaration at line 1983 *)
(* error 
FL_EXPORT void fl_circf( FL_COORD x,
in declaration at line 1988 *)
(* error 
FL_EXPORT void fl_circbound( FL_COORD x,
in declaration at line 1993 *)
(* error 
FL_EXPORT void fl_oval( int      fill,
in declaration at line 2000 *)
(* error 
FL_EXPORT void fl_ovalbound( FL_Coord x,
in declaration at line 2006 *)
(* error 
FL_EXPORT void fl_ovalarc( int      fill,
in declaration at line 2015 *)
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
(* error 
FL_EXPORT void fl_arcf( FL_COORD x,
in declaration at line 2028 *)
(* error 
FL_EXPORT void fl_arc( FL_COORD x,
in declaration at line 2035 *)
(* error 
FL_EXPORT void fl_pieslice( int      fill,
in declaration at line 2044 *)
    { High level drawing routines  }
      fl_drw_frame = fl_draw_frame;      
(* error 
FL_EXPORT void fl_draw_frame( int      style,
in declaration at line 2055 *)
    {
     * Interfaces
      }
(* error 
FL_EXPORT XFontStruct *fl_get_fontstruct( int style,
(* error 
                                          int size );
 in declarator_list *)
 in declarator_list *)
      fl_get_font_struct = fl_get_fontstruct;      
      fl_get_fntstruct = fl_get_font_struct;      
(* error 
FL_EXPORT Window fl_get_mouse( FL_Coord  * x,
(* error 
                               FL_Coord  * y,
(* error 
                               unsigned int * keymask );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_mouse( FL_Coord mx,
in declaration at line 2072 *)
(* error 
FL_EXPORT Window fl_get_win_mouse( Window         win,
(* error 
                                   FL_Coord     * x,
(* error 
                                   FL_Coord     * y,
(* error 
                                   unsigned int * keymask );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT Window fl_get_form_mouse( FL_FORM      * fm,
(* error 
                                    FL_Coord     * x,
(* error 
                                    FL_Coord     * y,
(* error 
                                    unsigned int * keymask );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_FORM * fl_win_to_form( Window win );
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_form_icon( FL_FORM * form,
in declaration at line 2088 *)
(* error 
FL_EXPORT int fl_get_decoration_sizes( FL_FORM * form,
in declaration at line 2094 *)
(* error 
FL_EXPORT void fl_raise_form( FL_FORM * form );
in declaration at line 2096 *)
(* error 
FL_EXPORT void fl_lower_form( FL_FORM * form );
in declaration at line 2098 *)
(* error 
FL_EXPORT void fl_set_foreground( GC       gc,
in declaration at line 2101 *)
(* error 
FL_EXPORT void fl_set_background( GC       gc,
in declaration at line 2103 *)
    { General windowing support  }
(* error 
FL_EXPORT Window fl_wincreate( const char * label );
 in declarator_list *)
(* error 
FL_EXPORT Window fl_winshow( Window win );
 in declarator_list *)
(* error 
FL_EXPORT Window fl_winopen( const char * label );
 in declarator_list *)
(* error 
FL_EXPORT void fl_winhide( Window win );
in declaration at line 2113 *)
(* error 
FL_EXPORT void fl_winclose( Window win );
in declaration at line 2115 *)
(* error 
FL_EXPORT void fl_winset( Window win );
in declaration at line 2117 *)
(* error 
FL_EXPORT int fl_winreparent( Window win,
in declaration at line 2120 *)
(* error 
FL_EXPORT void fl_winfocus( Window win );
in declaration at line 2122 *)
(* error 
FL_EXPORT Window fl_winget( void );
 in declarator_list *)
(* error 
FL_EXPORT int fl_iconify( Window win );
in declaration at line 2126 *)
(* error 
FL_EXPORT void fl_winresize( Window   win,
in declaration at line 2130 *)
(* error 
FL_EXPORT void fl_winmove( Window   win,
in declaration at line 2134 *)
(* error 
FL_EXPORT void fl_winreshape( Window   win,
in declaration at line 2140 *)
(* error 
FL_EXPORT void fl_winicon( Window win,
in declaration at line 2144 *)
(* error 
FL_EXPORT void fl_winbackground( Window        win,
in declaration at line 2147 *)
(* error 
FL_EXPORT void fl_winstepsize( Window   win,
in declaration at line 2151 *)
(* error 
FL_EXPORT int fl_winisvalid( Window win );
in declaration at line 2153 *)
(* error 
FL_EXPORT void fl_wintitle( Window       win,
in declaration at line 2156 *)
(* error 
FL_EXPORT void fl_wintitle_f( Window       win,
in declaration at line 2160 *)
(* error 
FL_EXPORT void fl_winicontitle( Window       win,
in declaration at line 2163 *)
(* error 
FL_EXPORT void fl_winicontitle_f( Window       win,
in declaration at line 2167 *)
(* error 
FL_EXPORT void fl_winposition( FL_Coord x,
in declaration at line 2170 *)
      fl_pref_winposition = fl_winposition;      
      fl_win_background = fl_winbackground;      
      fl_winstepunit = fl_winstepsize;      
      fl_set_winstepunit = fl_winstepsize;      
(* error 
FL_EXPORT void fl_winminsize( Window   win,
in declaration at line 2179 *)
(* error 
FL_EXPORT void fl_winmaxsize( Window   win,
in declaration at line 2183 *)
(* error 
FL_EXPORT void fl_winaspect( Window   win,
in declaration at line 2187 *)
(* error 
FL_EXPORT void fl_reset_winconstraints( Window win );
in declaration at line 2189 *)
(* error 
FL_EXPORT void fl_winsize( FL_Coord w,
in declaration at line 2193 *)
(* error 
FL_EXPORT void fl_initial_winsize( FL_Coord w,
in declaration at line 2196 *)
      fl_pref_winsize = fl_winsize;      
(* error 
FL_EXPORT void fl_initial_winstate( int state );
in declaration at line 2200 *)
(* error 
FL_EXPORT Colormap fl_create_colormap( XVisualInfo * xv,
(* error 
                                       int           nfill );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_wingeometry( FL_Coord x,
in declaration at line 2210 *)
      fl_pref_wingeometry = fl_wingeometry;      
(* error 
FL_EXPORT void fl_initial_wingeometry( FL_Coord x,
in declaration at line 2217 *)
(* error 
FL_EXPORT void fl_noborder( void );
in declaration at line 2219 *)
(* error 
FL_EXPORT void fl_transient( void );
in declaration at line 2221 *)
(* error 
FL_EXPORT void fl_get_winsize( Window     win,
in declaration at line 2225 *)
(* error 
FL_EXPORT void fl_get_winorigin( Window     win,
in declaration at line 2229 *)
(* error 
FL_EXPORT void fl_get_wingeometry( Window     win,
in declaration at line 2235 *)
    { For compatibility  }
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

(* error 
    ( ( o )->objclass == FL_CANVAS || ( o )->objclass == FL_GLCANVAS )
in define line 2248 *)
    { The window an object belongs to - for drawing  }
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FL_ObjWin(o : longint) : longint;    

(* error 
FL_EXPORT Window fl_get_real_object_window( FL_OBJECT * ob );
 in declarator_list *)
    const
      FL_OBJECT_WID = FL_ObjWin;      
    {  All registerable events, including Client Message  }
      FL_ALL_EVENT = ((((((KeyPressMask or KeyReleaseMask) or ButtonPressMask) or ButtonReleaseMask) or EnterWindowMask) or LeaveWindowMask) or ButtonMotionMask) or PointerMotionMask;      
    { Replacements for X functions that access the event queue  }
(* error 
FL_EXPORT int fl_XNextEvent( XEvent * xev );
in declaration at line 2274 *)
(* error 
FL_EXPORT int fl_XPeekEvent( XEvent * xev );
in declaration at line 2276 *)
(* error 
FL_EXPORT int fl_XEventsQueued( int mode );
in declaration at line 2278 *)
(* error 
FL_EXPORT void fl_XPutBackEvent( XEvent * xev );
in declaration at line 2280 *)
(* error 
FL_EXPORT const XEvent *fl_last_event( void );
 in declarator_list *)
    type

      TFL_APPEVENT_CB = function (para1:PXEvent; para2:pointer):longint;cdecl;
(* error 
FL_EXPORT FL_APPEVENT_CB fl_set_event_callback( FL_APPEVENT_CB   callback,
(* error 
                                                void           * user_data );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_APPEVENT_CB fl_set_idle_callback( FL_APPEVENT_CB   callback,
(* error 
                                               void           * user_data );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT long fl_addto_selected_xevent( Window win,
in declaration at line 2293 *)
(* error 
FL_EXPORT long fl_remove_selected_xevent( Window win,
in declaration at line 2296 *)

    const
      fl_add_selected_xevent = fl_addto_selected_xevent;      
(* error 
FL_EXPORT void fl_set_idle_delta( long delta );
in declaration at line 2300 *)
(* error 
FL_EXPORT FL_APPEVENT_CB fl_add_event_callback( Window           win,
(* error 
                                                int              ev,
(* error 
                                                FL_APPEVENT_CB   wincb,
(* error 
                                                void           * user_data );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_remove_event_callback( Window win,
in declaration at line 2308 *)
(* error 
FL_EXPORT void fl_activate_event_callbacks( Window win );
in declaration at line 2310 *)
(* error 
FL_EXPORT XEvent *fl_print_xevent_name( const char   * where,
(* error 
                                        const XEvent * xev );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_XFlush( void );
in declaration at line 2315 *)
    { was #define dname(params) para_def_expr }
    { argument types are unknown }

    function metakey_down(mask : longint) : Tmask;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    function shiftkey_down(mask : longint) : Tmask;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    function controlkey_down(mask : longint) : Tmask;    

(* error 
                                   || ( ( mask ) & Button2Mask )  \
in define line 2324 *)
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
(* error 
FL_EXPORT Display * fl_initialize( int        * na,
(* error 
                                   char       * arg[ ],
(* error 
                                   const char * appclass,
(* error 
                                   FL_CMD_OPT * appopt,
(* error 
                                   int          nappopt );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_finish( void );
in declaration at line 2359 *)
(* error 
FL_EXPORT const char * fl_get_resource( const char * rname,
(* error 
                                        const char * cname,
(* error 
                                        FL_RTYPE     dtype,
(* error 
                                        const char * defval,
(* error 
                                        void       * val,
(* error 
                                        int          size );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_resource( const char * str,
in declaration at line 2369 *)
(* error 
FL_EXPORT void fl_get_app_resources( FL_RESOURCE * appresource,
in declaration at line 2372 *)
(* error 
FL_EXPORT void fl_set_visualID( long id );
in declaration at line 2374 *)
(* error 
FL_EXPORT int fl_keysym_pressed( KeySym k );
in declaration at line 2376 *)
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
(* error 
enum {
in declaration at line 2447 *)
      FL_PDButtonLabel = FL_PDButtonLabelSize;      
(* error 
FL_EXPORT void fl_set_defaults( unsigned   long mask,
in declaration at line 2452 *)
(* error 
FL_EXPORT void fl_set_tabstop( const char * s );
in declaration at line 2454 *)
(* error 
FL_EXPORT int fl_get_visual_depth( void );
in declaration at line 2456 *)
(* error 
FL_EXPORT int fl_is_global_clipped( void );
in declaration at line 2458 *)
(* error 
FL_EXPORT int fl_is_clipped( int include_global );
in declaration at line 2460 *)
(* error 
FL_EXPORT int fl_is_text_clipped( int include_global );
in declaration at line 2462 *)
(* error 
FL_EXPORT void fl_set_clipping( FL_Coord x,
in declaration at line 2467 *)
(* error 
FL_EXPORT void fl_unset_clipping( void );
in declaration at line 2469 *)
(* error 
FL_EXPORT void fl_set_text_clipping( FL_Coord x,
in declaration at line 2474 *)
(* error 
FL_EXPORT void fl_unset_text_clipping( void );
in declaration at line 2476 *)
(* error 
FL_EXPORT int fl_get_global_clipping( FL_COORD * x,
in declaration at line 2481 *)
(* error 
FL_EXPORT int fl_get_clipping( int        include_global,
in declaration at line 2487 *)
(* error 
FL_EXPORT int fl_get_text_clipping( int        include_global,
in declaration at line 2493 *)
(* error 
FL_EXPORT void fl_set_gc_clipping( GC       gc,
in declaration at line 2499 *)
(* error 
FL_EXPORT void fl_unset_gc_clipping( GC gc );
in declaration at line 2501 *)
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

(* error 
    do { r = FL_GETR( p );        \
in declaration at line 2539 *)
(* error 
    do { r = FL_GETR( p );        \
(* error 
         g = FL_GETG( p );        \
in declaration at line 2540 *)
(* error 
         g = FL_GETG( p );        \
(* error 
         b = FL_GETB( p );        \
in declaration at line 2541 *)
(* error 
         b = FL_GETB( p );        \
(* error 
    } while( 0 )
in define line 2544 *)
(* error 
    do { FL_UNPACK3( p, r, g, b );    \
in declaration at line 2547 *)
(* error 
    do { FL_UNPACK3( p, r, g, b );    \
(* error 
         a = FL_GETA( p );            \
in declaration at line 2548 *)
(* error 
         a = FL_GETA( p );            \
(* error 
    } while( 0 )
{$endif}
in declaration at line 2556 *)
      var
        gshift : dword;cvar;public;
        bshift : dword;cvar;public;
        bits_per_rgb : longint;cvar;public;
        colormap_size : longint;cvar;public;
(* error 
} FL_RGB2PIXEL_;
in declaration at line 2565 *)

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
(* error 
enum {
in declaration at line 2691 *)
    { Popup states  }
(* error 
enum {
    { entry is disabled  }
    { entry is temporarily hidden  }
    { tooogle/radio item is in on state  }
in declaration at line 2700 *)
    { Popup entry types  }
(* error 
enum {
    { normal popup entry  }
    { toggle ("binary") popup entry  }
    { radio popup entry  }
    { sub-popup popup entry  }
    { line popup entry  }
in declaration at line 2710 *)
    { Popup color types  }
(* error 
enum {
in declaration at line 2722 *)
(* error 
FL_EXPORT FL_POPUP *fl_popup_add( Window,
(* error 
                                  const char * );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP_ENTRY *fl_popup_add_entries( FL_POPUP *,
(* error 
                                                const char *,
(* error 
                                                ... );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP_ENTRY *fl_popup_insert_entries( FL_POPUP *,
(* error 
                                                   FL_POPUP_ENTRY *,
(* error 
                                                   const char *,
(* error 
                                                   ... );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP *fl_popup_create( Window,
(* error 
                                     const char *,
(* error 
                                     FL_POPUP_ITEM * );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP_ENTRY *fl_popup_add_items( FL_POPUP      *,
(* error 
											  FL_POPUP_ITEM * );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP_ENTRY *fl_popup_insert_items( FL_POPUP       *,
(* error 
												 FL_POPUP_ENTRY *,
(* error 
												 FL_POPUP_ITEM  * );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT int fl_popup_delete( FL_POPUP * );
in declaration at line 2747 *)
(* error 
FL_EXPORT int fl_popup_entry_delete( FL_POPUP_ENTRY * );
in declaration at line 2749 *)
(* error 
FL_EXPORT FL_POPUP_RETURN *fl_popup_do( FL_POPUP * );
 in declarator_list *)
(* error 
FL_EXPORT void fl_popup_set_position( FL_POPUP *,
in declaration at line 2755 *)
(* error 
FL_EXPORT int fl_popup_get_policy( FL_POPUP * );
in declaration at line 2757 *)
(* error 
FL_EXPORT int fl_popup_set_policy( FL_POPUP *,
in declaration at line 2760 *)
(* error 
FL_EXPORT FL_POPUP_CB fl_popup_set_callback( FL_POPUP *,
(* error 
                                             FL_POPUP_CB );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_popup_get_title_font( FL_POPUP *,
in declaration at line 2767 *)
(* error 
FL_EXPORT void fl_popup_set_title_font( FL_POPUP *,
in declaration at line 2771 *)
(* error 
FL_EXPORT void fl_popup_entry_get_font( FL_POPUP *,
in declaration at line 2775 *)
(* error 
FL_EXPORT void fl_popup_entry_set_font( FL_POPUP *,
in declaration at line 2779 *)
(* error 
FL_EXPORT int fl_popup_get_bw( FL_POPUP * );
in declaration at line 2781 *)
(* error 
FL_EXPORT int fl_popup_set_bw( FL_POPUP *,
in declaration at line 2784 *)
(* error 
FL_EXPORT FL_COLOR fl_popup_get_color( FL_POPUP *,
(* error 
                                       int );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_COLOR fl_popup_set_color( FL_POPUP *,
(* error 
                                       int,
(* error 
                                       FL_COLOR );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_popup_set_cursor( FL_POPUP *,
in declaration at line 2794 *)
(* error 
FL_EXPORT const char *fl_popup_get_title( FL_POPUP   * );
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP *fl_popup_set_title( FL_POPUP *,
(* error 
                                        const char * );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP * fl_popup_set_title_f( FL_POPUP   * popup,
(* error 
										   const char * fmt,
(* error 
										   ... );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP_CB fl_popup_entry_set_callback( FL_POPUP_ENTRY *,
(* error 
                                                   FL_POPUP_CB );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP_CB fl_popup_entry_set_enter_callback( FL_POPUP_ENTRY *,
(* error 
                                                         FL_POPUP_CB );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP_CB fl_popup_entry_set_leave_callback( FL_POPUP_ENTRY *,
(* error 
                                                         FL_POPUP_CB );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT unsigned int fl_popup_entry_get_state( FL_POPUP_ENTRY * );
in declaration at line 2814 *)
(* error 
FL_EXPORT unsigned int fl_popup_entry_set_state( FL_POPUP_ENTRY *,
in declaration at line 2817 *)
(* error 
FL_EXPORT unsigned int fl_popup_entry_clear_state( FL_POPUP_ENTRY *,
in declaration at line 2820 *)
(* error 
FL_EXPORT unsigned int fl_popup_entry_raise_state( FL_POPUP_ENTRY *,
in declaration at line 2823 *)
(* error 
FL_EXPORT unsigned int fl_popup_entry_toggle_state( FL_POPUP_ENTRY *,
in declaration at line 2826 *)
(* error 
FL_EXPORT int fl_popup_entry_set_text( FL_POPUP_ENTRY *,
in declaration at line 2829 *)
(* error 
FL_EXPORT void fl_popup_entry_set_shortcut( FL_POPUP_ENTRY *,
in declaration at line 2832 *)
(* error 
FL_EXPORT long int fl_popup_entry_set_value( FL_POPUP_ENTRY *,
in declaration at line 2835 *)
(* error 
FL_EXPORT void *fl_popup_entry_set_user_data( FL_POPUP_ENTRY *,
in declaration at line 2838 *)
(* error 
FL_EXPORT FL_POPUP_ENTRY *fl_popup_entry_get_by_position( FL_POPUP *,
(* error 
                                                          int );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP_ENTRY *fl_popup_entry_get_by_value( FL_POPUP *,
(* error 
                                                       long );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP_ENTRY *fl_popup_entry_get_by_user_data( FL_POPUP *,
(* error 
                                                           void * );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP_ENTRY *fl_popup_entry_get_by_text( FL_POPUP *,
(* error 
                                                      const char * );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP_ENTRY * fl_popup_entry_get_by_text_f( FL_POPUP *,
(* error 
														 const char *,
(* error 
														 ... );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP_ENTRY *fl_popup_entry_get_by_label( FL_POPUP *,
(* error 
                                                       const char * );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP_ENTRY * fl_popup_entry_get_by_label_f( FL_POPUP *,
(* error 
														  const char *,
(* error 
														  ... );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT int fl_popup_entry_get_group( FL_POPUP_ENTRY * );
in declaration at line 2863 *)
(* error 
FL_EXPORT int fl_popup_entry_set_group( FL_POPUP_ENTRY *,
in declaration at line 2866 *)
(* error 
FL_EXPORT FL_POPUP *fl_popup_entry_get_subpopup( FL_POPUP_ENTRY * );
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP *fl_popup_entry_set_subpopup( FL_POPUP_ENTRY *,
(* error 
                                                 FL_POPUP * );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT int fl_popup_get_size( FL_POPUP *,
in declaration at line 2875 *)
(* error 
FL_EXPORT int fl_popup_get_min_width( FL_POPUP * );
in declaration at line 2877 *)
(* error 
FL_EXPORT int fl_popup_set_min_width( FL_POPUP *,
in declaration at line 2880 *)
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
(* error 
FL_EXPORT FL_OBJECT * fl_create_bitmap( int          type,
(* error 
                                        FL_Coord     x,
(* error 
                                        FL_Coord     y,
(* error 
                                        FL_Coord     w,
(* error 
                                        FL_Coord     h,
(* error 
                                        const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_bitmap( int          type,
(* error 
                                     FL_Coord     x,
(* error 
                                     FL_Coord     y,
(* error 
                                     FL_Coord     w,
(* error 
                                     FL_Coord     h,
(* error 
                                     const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_bitmap_data( FL_OBJECT     * ob,
in declaration at line 2922 *)
(* error 
FL_EXPORT void fl_set_bitmap_file( FL_OBJECT  * ob,
in declaration at line 2925 *)
(* error 
FL_EXPORT Pixmap fl_read_bitmapfile( Window         win,
(* error 
                                     const char   * file,
(* error 
                                     unsigned int * w,
(* error 
                                     unsigned int * h,
(* error 
                                     int          * hotx,
(* error 
                                     int          * hoty );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT Pixmap fl_create_from_bitmapdata( Window       win,
(* error 
											const char * data,
(* error 
											int          width,
(* error 
											int          height );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
    { for compatibility  }
      fl_set_bitmap_datafile = fl_set_bitmap_file;      
    { PIXMAP stuff  }
      FL_NORMAL_PIXMAP = 0;      
(* error 
FL_EXPORT FL_OBJECT * fl_create_pixmap( int          type,
(* error 
                                        FL_Coord     x,
(* error 
                                        FL_Coord     y,
(* error 
                                        FL_Coord     w,
(* error 
                                        FL_Coord     h,
(* error 
                                        const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_pixmap( int          type,
(* error 
                                     FL_Coord     x,
(* error 
                                     FL_Coord     y,
(* error 
                                     FL_Coord     w,
(* error 
                                     FL_Coord     h,
(* error 
                                     const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_pixmap_data( FL_OBJECT   * ob,
in declaration at line 2962 *)
(* error 
FL_EXPORT void fl_set_pixmap_file( FL_OBJECT  * ob,
in declaration at line 2965 *)
(* error 
FL_EXPORT void fl_set_pixmap_align( FL_OBJECT * ob,
in declaration at line 2970 *)
(* error 
FL_EXPORT void fl_set_pixmap_pixmap( FL_OBJECT * ob,
in declaration at line 2974 *)
(* error 
FL_EXPORT void fl_set_pixmap_colorcloseness( int red,
in declaration at line 2978 *)
(* error 
FL_EXPORT void fl_free_pixmap_pixmap( FL_OBJECT * ob );
in declaration at line 2980 *)
(* error 
FL_EXPORT void fl_free_pixmap_focus_pixmap( FL_OBJECT * obj );
in declaration at line 2982 *)
(* error 
FL_EXPORT Pixmap fl_get_pixmap_pixmap( FL_OBJECT * ob,
(* error 
                                       Pixmap    * p,
(* error 
                                       Pixmap    * m );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT Pixmap fl_read_pixmapfile( Window         win,
(* error 
                                     const char   * file,
(* error 
                                     unsigned int * w,
(* error 
                                     unsigned int * h,
(* error 
                                     Pixmap       * shape_mask,
(* error 
                                     int          * hotx,
(* error 
                                     int          * hoty,
(* error 
                                     FL_COLOR       tran );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT Pixmap fl_create_from_pixmapdata( Window          win,
(* error 
                                            char         ** data,
(* error 
                                            unsigned int  * w,
(* error 
                                            unsigned int  * h,
(* error 
                                            Pixmap        * sm,
(* error 
                                            int           * hotx,
(* error 
                                            int           * hoty,
(* error 
                                            FL_COLOR        tran );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_free_pixmap( Pixmap id );
in declaration at line 3006 *)
{$endif}
    { ! defined FL_BITMAP_H  }
    {*
     * \file box.h
     *
      }
{$ifndef FL_BOX_H}
{$define FL_BOX_H}    
    { Type is already defined in Basic.h  }
(* error 
FL_EXPORT FL_OBJECT * fl_create_box( int          type,
(* error 
                                     FL_Coord     x,
(* error 
                                     FL_Coord     y,
(* error 
                                     FL_Coord     w,
(* error 
                                     FL_Coord     h,
(* error 
                                     const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_box( int          type,
(* error 
                                  FL_Coord     x,
(* error 
                                  FL_Coord     y,
(* error 
                                  FL_Coord     w,
(* error 
                                  FL_Coord     h,
(* error 
                                  const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
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
(* error 
FL_EXPORT FL_OBJECT * fl_create_browser( int          type,
(* error 
                                         FL_Coord     x,
(* error 
                                         FL_Coord     y,
(* error 
                                         FL_Coord     w,
(* error 
                                         FL_Coord     h,
(* error 
                                         const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_browser( int          type,
(* error 
                                      FL_Coord     x,
(* error 
                                      FL_Coord     y,
(* error 
                                      FL_Coord     w,
(* error 
                                      FL_Coord     h,
(* error 
                                      const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_clear_browser( FL_OBJECT * ob );
in declaration at line 3093 *)
(* error 
FL_EXPORT void fl_add_browser_line( FL_OBJECT  * ob,
in declaration at line 3096 *)
(* error 
FL_EXPORT void fl_add_browser_line_f( FL_OBJECT  * ob,
in declaration at line 3100 *)
(* error 
FL_EXPORT void fl_addto_browser( FL_OBJECT  * obj,
in declaration at line 3104 *)
(* error 
FL_EXPORT void fl_addto_browser_f( FL_OBJECT  * obj,
in declaration at line 3108 *)
      fl_append_browser = fl_addto_browser_chars;      
(* error 
FL_EXPORT void fl_addto_browser_chars( FL_OBJECT  * ob,
in declaration at line 3112 *)
(* error 
FL_EXPORT void fl_addto_browser_chars_f( FL_OBJECT  * ob,
in declaration at line 3116 *)
      fl_append_browser_f = fl_addto_browser_chars_f;      
(* error 
FL_EXPORT void fl_insert_browser_line( FL_OBJECT  * ob,
in declaration at line 3121 *)
(* error 
FL_EXPORT void fl_insert_browser_line_f( FL_OBJECT  * ob,
in declaration at line 3126 *)
(* error 
FL_EXPORT void fl_delete_browser_line( FL_OBJECT * ob,
in declaration at line 3129 *)
(* error 
FL_EXPORT void fl_replace_browser_line( FL_OBJECT  * ob,
in declaration at line 3133 *)
(* error 
FL_EXPORT void fl_replace_browser_line_f( FL_OBJECT  * ob,
in declaration at line 3138 *)
(* error 
FL_EXPORT const char *fl_get_browser_line( FL_OBJECT * ob,
(* error 
                                           int         linenumb );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT int fl_load_browser( FL_OBJECT  * ob,
in declaration at line 3144 *)
(* error 
FL_EXPORT void fl_select_browser_line( FL_OBJECT * ob, 
in declaration at line 3147 *)
(* error 
FL_EXPORT void fl_deselect_browser_line( FL_OBJECT * ob,
in declaration at line 3150 *)
(* error 
FL_EXPORT void fl_deselect_browser( FL_OBJECT * ob );
in declaration at line 3152 *)
(* error 
FL_EXPORT int fl_isselected_browser_line( FL_OBJECT * ob,
in declaration at line 3155 *)
(* error 
FL_EXPORT int fl_get_browser_topline( FL_OBJECT * ob );
in declaration at line 3157 *)
(* error 
FL_EXPORT int fl_get_browser( FL_OBJECT * ob );
in declaration at line 3159 *)
(* error 
FL_EXPORT int fl_get_browser_maxline( FL_OBJECT * ob );
in declaration at line 3161 *)
(* error 
FL_EXPORT int fl_get_browser_screenlines( FL_OBJECT * ob );
in declaration at line 3163 *)
(* error 
FL_EXPORT void fl_set_browser_topline( FL_OBJECT * ob,
in declaration at line 3166 *)
(* error 
FL_EXPORT void fl_set_browser_bottomline( FL_OBJECT * ob,
in declaration at line 3169 *)
(* error 
FL_EXPORT void fl_set_browser_fontsize( FL_OBJECT * ob,
in declaration at line 3172 *)
(* error 
FL_EXPORT void fl_set_browser_fontstyle( FL_OBJECT * ob,
in declaration at line 3175 *)
(* error 
FL_EXPORT void fl_set_browser_specialkey( FL_OBJECT * ob,
in declaration at line 3178 *)
(* error 
FL_EXPORT void fl_set_browser_vscrollbar( FL_OBJECT * ob,
in declaration at line 3181 *)
(* error 
FL_EXPORT void fl_set_browser_hscrollbar( FL_OBJECT * ob,
in declaration at line 3184 *)
(* error 
FL_EXPORT void fl_set_browser_line_selectable( FL_OBJECT * ob,
in declaration at line 3188 *)
(* error 
FL_EXPORT void fl_get_browser_dimension( FL_OBJECT * ob,
in declaration at line 3194 *)
(* error 
FL_EXPORT void fl_set_browser_dblclick_callback( FL_OBJECT      * ob,
in declaration at line 3198 *)
(* error 
FL_EXPORT FL_Coord fl_get_browser_xoffset( FL_OBJECT * ob );
 in declarator_list *)
(* error 
FL_EXPORT double fl_get_browser_rel_xoffset( FL_OBJECT * ob );
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_browser_xoffset( FL_OBJECT * ob,
in declaration at line 3205 *)
(* error 
FL_EXPORT void fl_set_browser_rel_xoffset( FL_OBJECT * ob,
in declaration at line 3208 *)
(* error 
FL_EXPORT FL_Coord fl_get_browser_yoffset( FL_OBJECT * ob );
 in declarator_list *)
(* error 
FL_EXPORT double fl_get_browser_rel_yoffset( FL_OBJECT * ob );
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_browser_yoffset( FL_OBJECT * ob,
in declaration at line 3215 *)
(* error 
FL_EXPORT void fl_set_browser_rel_yoffset( FL_OBJECT * ob,
in declaration at line 3218 *)
(* error 
FL_EXPORT void fl_set_browser_scrollbarsize( FL_OBJECT * ob,
in declaration at line 3222 *)
(* error 
FL_EXPORT void fl_show_browser_line( FL_OBJECT * ob,
in declaration at line 3225 *)
(* error 
FL_EXPORT int fl_set_default_browser_maxlinelength( int n );
in declaration at line 3227 *)
{$ifndef FL_BROWSER_SCROLL_CALLBACKt}
{$define FL_BROWSER_SCROLL_CALLBACKt}    
    type

      TFL_BROWSER_SCROLL_CALLBACK = procedure (para1:PFL_OBJECT; para2:longint; para3:pointer);cdecl;
{$endif}
(* error 
FL_EXPORT void
in declaration at line 3239 *)
(* error 
FL_EXPORT void
in declaration at line 3244 *)
(* error 
FL_EXPORT int fl_get_browser_line_yoffset( FL_OBJECT *,
in declaration at line 3247 *)
(* error 
    fl_get_browser_hscroll_callback( FL_OBJECT * );
 in declarator_list *)
(* error 
    fl_get_browser_vscroll_callback( FL_OBJECT * );
 in declarator_list *)
(* error 
FL_EXPORT int fl_get_browser_scrollbar_repeat( FL_OBJECT * );
in declaration at line 3255 *)
(* error 
FL_EXPORT void fl_set_browser_scrollbar_repeat( FL_OBJECT *,
in declaration at line 3258 *)
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
(* error 
FL_EXPORT FL_OBJECT * fl_create_button( int          type,
(* error 
                                        FL_Coord     x,
(* error 
                                        FL_Coord     y,
(* error 
                                        FL_Coord     w,
(* error 
                                        FL_Coord     h,
(* error 
                                        const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_create_roundbutton( int          type,
(* error 
                                             FL_Coord     x,
(* error 
                                             FL_Coord     y,
(* error 
                                             FL_Coord     w,
(* error 
                                             FL_Coord     h,
(* error 
                                             const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_create_round3dbutton( int        type,
(* error 
                                               FL_Coord   x,
(* error 
                                               FL_Coord   y,
(* error 
                                               FL_Coord   w,
(* error 
                                               FL_Coord   h,
(* error 
                                               const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_create_lightbutton( int          type,
(* error 
                                             FL_Coord     x,
(* error 
                                             FL_Coord     y,
(* error 
                                             FL_Coord     w,
(* error 
                                             FL_Coord     h,
(* error 
                                             const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_create_checkbutton( int          type,
(* error 
                                             FL_Coord     x,
(* error 
                                             FL_Coord     y,
(* error 
                                             FL_Coord     w,
(* error 
                                             FL_Coord     h,
(* error 
                                             const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_create_bitmapbutton( int          type,
(* error 
                                              FL_Coord     x,
(* error 
                                              FL_Coord     y,
(* error 
                                              FL_Coord     w,
(* error 
                                              FL_Coord     h,
(* error 
                                              const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_create_pixmapbutton( int          type,
(* error 
                                              FL_Coord     x,
(* error 
                                              FL_Coord     y,
(* error 
                                              FL_Coord     w,
(* error 
                                              FL_Coord     h,
(* error 
                                              const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_create_scrollbutton( int          type,
(* error 
                                              FL_Coord     x,
(* error 
                                              FL_Coord     y,
(* error 
                                              FL_Coord     w,
(* error 
                                              FL_Coord     h,
(* error 
                                              const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_create_labelbutton( int           type,
(* error 
                                             FL_Coord      x,
(* error 
                                             FL_Coord      y,
(* error 
                                             FL_Coord      w,
(* error 
                                             FL_Coord      h,
(* error 
                                             const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT *fl_add_roundbutton( int          type,
(* error 
                                         FL_Coord     x,
(* error 
                                         FL_Coord     y,
(* error 
                                         FL_Coord     w,
(* error 
                                         FL_Coord     h,
(* error 
                                         const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_round3dbutton( int          type,
(* error 
                                            FL_Coord     x,
(* error 
                                            FL_Coord     y,
(* error 
                                            FL_Coord     w,
(* error 
                                            FL_Coord     h,
(* error 
                                            const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_lightbutton( int         type,
(* error 
                                          FL_Coord    x,
(* error 
                                          FL_Coord    y,
(* error 
                                          FL_Coord    w,
(* error 
                                          FL_Coord    h,
(* error 
                                          const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_checkbutton( int          type,
(* error 
                                          FL_Coord     x,
(* error 
                                          FL_Coord     y,
(* error 
                                          FL_Coord     w,
(* error 
                                          FL_Coord     h,
(* error 
                                          const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_button( int          type,
(* error 
                                     FL_Coord     x,
(* error 
                                     FL_Coord     y,
(* error 
                                     FL_Coord     w,
(* error 
                                     FL_Coord     h,
(* error 
                                     const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_bitmapbutton( int          type,
(* error 
                                           FL_Coord     x,
(* error 
                                           FL_Coord     y,
(* error 
                                           FL_Coord     w,
(* error 
                                           FL_Coord     h,
(* error 
                                           const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_scrollbutton( int          type,
(* error 
                                           FL_Coord     x,
(* error 
                                           FL_Coord     y,
(* error 
                                           FL_Coord     w,
(* error 
                                           FL_Coord     h,
(* error 
                                           const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_labelbutton( int          type,
(* error 
                                          FL_Coord     x,
(* error 
                                          FL_Coord     y,
(* error 
                                          FL_Coord     w,
(* error 
                                          FL_Coord     h,
(* error 
                                          const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
      fl_set_bitmapbutton_file = fl_set_bitmap_file;      
(* error 
FL_EXPORT void fl_set_bitmapbutton_data( FL_OBJECT     * ob,
in declaration at line 3511 *)
      fl_set_bitmapbutton_datafile = fl_set_bitmapbutton_file;      
(* error 
FL_EXPORT FL_OBJECT * fl_add_pixmapbutton( int          type,
(* error 
                                           FL_Coord     x,
(* error 
                                           FL_Coord     y,
(* error 
                                           FL_Coord     w,
(* error 
                                           FL_Coord     h,
(* error 
                                           const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
      fl_set_pixmapbutton_data = fl_set_pixmap_data;      
      fl_set_pixmapbutton_file = fl_set_pixmap_file;      
      fl_set_pixmapbutton_pixmap = fl_set_pixmap_pixmap;      
      fl_get_pixmapbutton_pixmap = fl_get_pixmap_pixmap;      
      fl_set_pixmapbutton_align = fl_set_pixmap_align;      
      fl_free_pixmapbutton_pixmap = fl_free_pixmap_pixmap;      
      fl_set_pixmapbutton_datafile = fl_set_pixmapbutton_file;      
      fl_set_pixmapbutton_show_focus = fl_set_pixmapbutton_focus_outline;      
(* error 
FL_EXPORT void fl_set_pixmapbutton_focus_outline( FL_OBJECT * ob,
in declaration at line 3533 *)
(* error 
FL_EXPORT void fl_set_pixmapbutton_focus_data( FL_OBJECT  * ob,
in declaration at line 3536 *)
(* error 
FL_EXPORT void fl_set_pixmapbutton_focus_file( FL_OBJECT  * ob,
in declaration at line 3539 *)
(* error 
FL_EXPORT void fl_set_pixmapbutton_focus_pixmap( FL_OBJECT * ob,
in declaration at line 3543 *)
(* error 
FL_EXPORT int fl_get_button( FL_OBJECT * ob );
in declaration at line 3545 *)
(* error 
FL_EXPORT void fl_set_button( FL_OBJECT * ob,
in declaration at line 3548 *)
(* error 
FL_EXPORT int fl_get_button_numb( FL_OBJECT * ob );
in declaration at line 3550 *)
      fl_set_button_shortcut = fl_set_object_shortcut;      
(* error 
FL_EXPORT FL_OBJECT * fl_create_generic_button( int          objclass,
(* error 
                                                int          type,
(* error 
                                                FL_Coord     x,
(* error 
                                                FL_Coord     y,
(* error 
                                                FL_Coord     w,
(* error 
                                                FL_Coord     h,
(* error 
                                                const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_add_button_class( int              bclass,
in declaration at line 3564 *)
(* error 
FL_EXPORT void fl_set_button_mouse_buttons( FL_OBJECT    * ob,
in declaration at line 3567 *)
(* error 
FL_EXPORT void fl_get_button_mouse_buttons( FL_OBJECT    * ob,
in declaration at line 3570 *)
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
(* error 
FL_EXPORT FL_OBJECT * fl_create_generic_canvas( int          canvas_class,
(* error 
                                                int          type,
(* error 
                                                FL_Coord     x,
(* error 
                                                FL_Coord     y,
(* error 
                                                FL_Coord     w,
(* error 
                                                FL_Coord     h,
(* error 
                                                const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_canvas( int          type,
(* error 
                                     FL_Coord     x,
(* error 
                                     FL_Coord     y,
(* error 
                                     FL_Coord     w,
(* error 
                                     FL_Coord     h,
(* error 
                                     const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_create_canvas( int          type,
(* error 
                                        FL_Coord     x,
(* error 
                                        FL_Coord     y,
(* error 
                                        FL_Coord     w,
(* error 
                                        FL_Coord     h,
(* error 
                                        const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
    { backward compatibility  }
      fl_set_canvas_decoration = fl_set_object_boxtype;      
(* error 
FL_EXPORT void fl_set_canvas_colormap( FL_OBJECT * ob,
in declaration at line 3632 *)
(* error 
FL_EXPORT void fl_set_canvas_visual( FL_OBJECT * obj,
in declaration at line 3635 *)
(* error 
FL_EXPORT void fl_set_canvas_depth( FL_OBJECT * obj,
in declaration at line 3638 *)
(* error 
FL_EXPORT void fl_set_canvas_attributes( FL_OBJECT            * ob,
in declaration at line 3642 *)
(* error 
FL_EXPORT FL_HANDLE_CANVAS fl_add_canvas_handler( FL_OBJECT        * ob,
(* error 
                                                  int                ev,
(* error 
                                                  FL_HANDLE_CANVAS   h,
(* error 
                                                  void             * udata );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT Window fl_get_canvas_id( FL_OBJECT * ob );
 in declarator_list *)
(* error 
FL_EXPORT Colormap fl_get_canvas_colormap( FL_OBJECT * ob );
 in declarator_list *)
(* error 
FL_EXPORT int fl_get_canvas_depth( FL_OBJECT * obj );
in declaration at line 3653 *)
(* error 
FL_EXPORT void fl_remove_canvas_handler( FL_OBJECT        * ob,
in declaration at line 3657 *)
(* error 
FL_EXPORT void fl_share_canvas_colormap( FL_OBJECT * ob,
in declaration at line 3660 *)
(* error 
FL_EXPORT void fl_clear_canvas( FL_OBJECT * ob );
in declaration at line 3662 *)
(* error 
FL_EXPORT void fl_modify_canvas_prop( FL_OBJECT             * obj,
in declaration at line 3667 *)
(* error 
FL_EXPORT void fl_canvas_yield_to_shortcut( FL_OBJECT * ob,
in declaration at line 3670 *)
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
(* error 
FL_EXPORT FL_OBJECT * fl_create_chart( int          type,
(* error 
                                       FL_Coord     x,
(* error 
                                       FL_Coord     y,
(* error 
                                       FL_Coord     w,
(* error 
                                       FL_Coord     h,
(* error 
                                       const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_chart( int          type,
(* error 
                                    FL_Coord     x,
(* error 
                                    FL_Coord     y,
(* error 
                                    FL_Coord     w,
(* error 
                                    FL_Coord     h,
(* error 
                                    const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_clear_chart( FL_OBJECT * ob );
in declaration at line 3731 *)
(* error 
FL_EXPORT void fl_add_chart_value( FL_OBJECT  * ob,
in declaration at line 3736 *)
(* error 
FL_EXPORT void fl_insert_chart_value( FL_OBJECT  * ob,
in declaration at line 3742 *)
(* error 
FL_EXPORT void fl_replace_chart_value( FL_OBJECT  * ob,
in declaration at line 3748 *)
(* error 
FL_EXPORT void fl_set_chart_bounds( FL_OBJECT * ob,
in declaration at line 3752 *)
(* error 
FL_EXPORT void fl_get_chart_bounds( FL_OBJECT * ob,
in declaration at line 3756 *)
(* error 
FL_EXPORT void fl_set_chart_maxnumb( FL_OBJECT * ob,
in declaration at line 3759 *)
(* error 
FL_EXPORT void fl_set_chart_autosize( FL_OBJECT * ob,
in declaration at line 3762 *)
(* error 
FL_EXPORT void fl_set_chart_lstyle( FL_OBJECT * ob,
in declaration at line 3765 *)
(* error 
FL_EXPORT void fl_set_chart_lsize( FL_OBJECT * ob,
in declaration at line 3768 *)
(* error 
FL_EXPORT void fl_set_chart_lcolor( FL_OBJECT * ob,
in declaration at line 3771 *)
(* error 
FL_EXPORT void fl_set_chart_baseline( FL_OBJECT * ob,
in declaration at line 3774 *)
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
(* error 
FL_EXPORT FL_OBJECT * fl_create_choice( int          type,
(* error 
                                        FL_Coord     x,
(* error 
                                        FL_Coord     y,
(* error 
                                        FL_Coord     w,
(* error 
                                        FL_Coord     h,
(* error 
                                        const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_choice( int          type,
(* error 
                                     FL_Coord     x,
(* error 
                                     FL_Coord     y,
(* error 
                                     FL_Coord     w,
(* error 
                                     FL_Coord     h,
(* error 
                                     const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_clear_choice( FL_OBJECT * ob );
in declaration at line 3827 *)
(* error 
FL_EXPORT int fl_addto_choice( FL_OBJECT  * ob,
in declaration at line 3830 *)
(* error 
FL_EXPORT int fl_addto_choice_f( FL_OBJECT *  ob,
in declaration at line 3834 *)
(* error 
FL_EXPORT void fl_replace_choice( FL_OBJECT  * ob,
in declaration at line 3838 *)
(* error 
FL_EXPORT void fl_replace_choice_f( FL_OBJECT *  ob,
in declaration at line 3843 *)
(* error 
FL_EXPORT void fl_delete_choice( FL_OBJECT * ob,
in declaration at line 3846 *)
(* error 
FL_EXPORT void fl_set_choice( FL_OBJECT * ob,
in declaration at line 3849 *)
(* error 
FL_EXPORT void fl_set_choice_text( FL_OBJECT  * ob,
in declaration at line 3852 *)
(* error 
FL_EXPORT void fl_set_choice_text_f( FL_OBJECT *  ob,
in declaration at line 3856 *)
(* error 
FL_EXPORT int fl_get_choice( FL_OBJECT * ob );
in declaration at line 3858 *)
(* error 
FL_EXPORT const char * fl_get_choice_item_text( FL_OBJECT * ob,
(* error 
                                                int         n );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT int fl_get_choice_maxitems( FL_OBJECT * ob );
in declaration at line 3863 *)
(* error 
FL_EXPORT const char * fl_get_choice_text( FL_OBJECT * ob );
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_choice_fontsize( FL_OBJECT * ob,
in declaration at line 3868 *)
(* error 
FL_EXPORT void fl_set_choice_fontstyle( FL_OBJECT * ob,
in declaration at line 3871 *)
(* error 
FL_EXPORT void fl_set_choice_align( FL_OBJECT * ob,
in declaration at line 3874 *)
(* error 
FL_EXPORT int fl_get_choice_item_mode( FL_OBJECT *  ob,
in declaration at line 3877 *)
(* error 
FL_EXPORT void fl_set_choice_item_mode( FL_OBJECT    * ob,
in declaration at line 3881 *)
(* error 
FL_EXPORT void fl_set_choice_item_shortcut( FL_OBJECT  * ob,
in declaration at line 3885 *)
(* error 
FL_EXPORT int fl_set_choice_entries( FL_OBJECT    * ob,
in declaration at line 3888 *)
(* error 
FL_EXPORT int fl_set_choice_notitle( FL_OBJECT * ob,
in declaration at line 3891 *)
(* error 
FL_EXPORT int fl_set_choice_align_bottom( FL_OBJECT * ob,
in declaration at line 3894 *)
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
(* error 
FL_EXPORT int fl_stuff_clipboard( FL_OBJECT            * ob,
in declaration at line 3919 *)
(* error 
FL_EXPORT int fl_request_clipboard( FL_OBJECT       * ob,
in declaration at line 3923 *)
{$endif}
    { ! defined FL_CLIPBD_H  }
    {*
     * \file clock.h
      }
{$ifndef FL_CLOCK_H}
{$define FL_CLOCK_H}    
(* error 
enum {
in declaration at line 3937 *)

    const
      FL_CLOCK_BOXTYPE = FL_UP_BOX;      
      FL_CLOCK_COL1 = FL_INACTIVE_COL;      
      FL_CLOCK_COL2 = FL_BOTTOM_BCOL;      
      FL_CLOCK_LCOL = FL_BLACK;      
      FL_CLOCK_ALIGN = FL_ALIGN_BOTTOM;      
      FL_CLOCK_TOPCOL = FL_COL1;      
(* error 
FL_EXPORT FL_OBJECT * fl_create_clock( int          type,
(* error 
                                       FL_Coord     x,
(* error 
                                       FL_Coord     y,
(* error 
                                       FL_Coord     w,
(* error 
                                       FL_Coord     h,
(* error 
                                       const char * s );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_clock( int          type,
(* error 
                                    FL_Coord     x,
(* error 
                                    FL_Coord     y,
(* error 
                                    FL_Coord     w,
(* error 
                                    FL_Coord     h,
(* error 
                                    const char * s );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_get_clock( FL_OBJECT * ob,
in declaration at line 3964 *)
(* error 
FL_EXPORT long fl_set_clock_adjustment( FL_OBJECT * ob,
in declaration at line 3967 *)
(* error 
FL_EXPORT void fl_set_clock_ampm( FL_OBJECT * ob,
in declaration at line 3970 *)
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
(* error 
FL_EXPORT FL_OBJECT * fl_create_counter( int          type,
(* error 
                                         FL_Coord     x,
(* error 
                                         FL_Coord     y,
(* error 
                                         FL_Coord     w,
(* error 
                                         FL_Coord     h,
(* error 
                                         const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_counter( int          type,
(* error 
                                      FL_Coord     x,
(* error 
                                      FL_Coord     y,
(* error 
                                      FL_Coord     w,
(* error 
                                      FL_Coord     h,
(* error 
                                      const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_counter_value( FL_OBJECT * ob,
in declaration at line 4015 *)
(* error 
FL_EXPORT void fl_set_counter_bounds( FL_OBJECT * ob,
in declaration at line 4019 *)
(* error 
FL_EXPORT void fl_set_counter_step( FL_OBJECT * ob,
in declaration at line 4023 *)
(* error 
FL_EXPORT void fl_set_counter_precision( FL_OBJECT * ob,
in declaration at line 4026 *)
(* error 
FL_EXPORT int fl_get_counter_precision( FL_OBJECT * ob );
in declaration at line 4028 *)
(* error 
FL_EXPORT void fl_set_counter_return( FL_OBJECT    * ob,
in declaration at line 4031 *)
(* error 
FL_EXPORT double fl_get_counter_value( FL_OBJECT * ob );
 in declarator_list *)
(* error 
FL_EXPORT void fl_get_counter_bounds( FL_OBJECT * ob,
in declaration at line 4037 *)
(* error 
FL_EXPORT void fl_get_counter_step( FL_OBJECT * ob,
in declaration at line 4041 *)
(* error 
FL_EXPORT void fl_set_counter_filter( FL_OBJECT     * ob,
in declaration at line 4044 *)
    { Functions to set and get the timeout value used by the
     * counter code to control modification of the counter value.  }
(* error 
FL_EXPORT int fl_get_counter_repeat( FL_OBJECT * ob );
in declaration at line 4049 *)
(* error 
FL_EXPORT void fl_set_counter_repeat( FL_OBJECT * ob,
in declaration at line 4052 *)
(* error 
FL_EXPORT int fl_get_counter_min_repeat( FL_OBJECT * ob );
in declaration at line 4054 *)
(* error 
FL_EXPORT void fl_set_counter_min_repeat( FL_OBJECT * ob,
in declaration at line 4057 *)
(* error 
FL_EXPORT int fl_get_counter_speedjump( FL_OBJECT * ob );
in declaration at line 4059 *)
(* error 
FL_EXPORT void fl_set_counter_speedjump( FL_OBJECT * ob,
in declaration at line 4062 *)
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
(* error 
enum {
in declaration at line 4085 *)
{$ifndef XC_invisible}

    const
      XC_invisible = FL_INVISIBLE_CURSOR;      
{$endif}
(* error 
FL_EXPORT void fl_set_cursor( Window win,
in declaration at line 4092 *)
(* error 
FL_EXPORT void fl_set_cursor_color( int      name,
in declaration at line 4096 *)
(* error 
FL_EXPORT int fl_create_bitmap_cursor( const char * source,
in declaration at line 4103 *)
(* error 
FL_EXPORT int fl_create_animated_cursor( int * cur_names,
in declaration at line 4106 *)
(* error 
#define fl_reset_cursor( win )   fl_set_cursor( win, FL_DEFAULT_CURSOR );
in declaration at line 4108 *)
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
(* error 
enum {
in declaration at line 4128 *)
    {**** Defaults **** }
      FL_DIAL_BOXTYPE = FL_FLAT_BOX;      
      FL_DIAL_COL1 = FL_COL1;      
      FL_DIAL_COL2 = FL_RIGHT_BCOL;      
      FL_DIAL_LCOL = FL_LCOL;      
      FL_DIAL_ALIGN = FL_ALIGN_BOTTOM;      
    {**** Others   **** }
      FL_DIAL_TOPCOL = FL_COL1;      
    {**** Routines **** }
(* error 
FL_EXPORT FL_OBJECT * fl_create_dial( int          type,
(* error 
                                      FL_Coord     x,
(* error 
                                      FL_Coord     y,
(* error 
                                      FL_Coord     w,
(* error 
                                      FL_Coord     h,
(* error 
                                      const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_dial( int          type,
(* error 
                                   FL_Coord     x,
(* error 
                                   FL_Coord     y,
(* error 
                                   FL_Coord     w,
(* error 
                                   FL_Coord     h,
(* error 
                                   const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_dial_value( FL_OBJECT * obj,
in declaration at line 4159 *)
(* error 
FL_EXPORT double fl_get_dial_value( FL_OBJECT * obj );
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_dial_bounds( FL_OBJECT * obj,
in declaration at line 4165 *)
(* error 
FL_EXPORT void fl_get_dial_bounds( FL_OBJECT * obj,
in declaration at line 4169 *)
(* error 
FL_EXPORT void fl_set_dial_step( FL_OBJECT * obj,
in declaration at line 4172 *)
(* error 
FL_EXPORT double fl_get_dial_step( FL_OBJECT * obj );
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_dial_return( FL_OBJECT    * obj,
in declaration at line 4177 *)
(* error 
FL_EXPORT void fl_set_dial_angles( FL_OBJECT * obj,
in declaration at line 4181 *)
(* error 
FL_EXPORT void fl_get_dial_angles( FL_OBJECT * obj,
in declaration at line 4185 *)
(* error 
FL_EXPORT void fl_set_dial_cross( FL_OBJECT * obj,
in declaration at line 4188 *)
      fl_set_dial_crossover = fl_set_dial_cross;      
(* error 
FL_EXPORT void fl_set_dial_direction( FL_OBJECT * obj,
in declaration at line 4193 *)
(* error 
FL_EXPORT int fl_get_dial_direction( FL_OBJECT * obj );
in declaration at line 4195 *)
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
(* error 
enum {
in declaration at line 4220 *)
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
(* error 
enum {
    { sort in alphabetic order            }
    { sort in reverse alphabetic order    }
    { sort according to modifcation time  }
    { sort in reverse modificaiton time   }
    { sort in increasing size order       }
    { sort in decreasing size order       }
    { sort case insensitive               }
    { sort case insensitive               }
in declaration at line 4238 *)
(* Const before type ignored *)

      TFL_DIRLIST_FILTER = function (para1:Pchar; para2:longint):longint;cdecl;
    { read dir with pattern filtering. All dirs read might be cached.
     * Must not change dirlist in anyway.  }
(* error 
FL_EXPORT const FL_Dirlist * fl_get_dirlist( const char * dir,
(* error 
                                             const char * pattern,
(* error 
                                             int        * n,
(* error 
                                             int          rescan );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_DIRLIST_FILTER fl_set_dirlist_filter( FL_DIRLIST_FILTER filter );
 in declarator_list *)
(* error 
FL_EXPORT int fl_set_dirlist_sort( int method );
in declaration at line 4252 *)
(* error 
FL_EXPORT int fl_set_dirlist_filterdir( int yes );
in declaration at line 4254 *)
(* error 
FL_EXPORT void fl_free_dirlist( const FL_Dirlist * dl );
in declaration at line 4256 *)
{$endif}
    { ! defined FL_FILESYS_H  }
    {*
     * \file flps.h
      }
{$ifndef FLPS_H}
{$define FLPS_H}    
    { postscript stuff  }
(* error 
enum {
    { switch to landscale if does not fit  }
    { landscape always                     }
    { portrait always                      }
    { even margins/best fit                }
in declaration at line 4274 *)
(* error 
enum {
in declaration at line 4280 *)
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
(* error 
FL_EXPORT FLPS_CONTROL * flps_init( void );
 in declarator_list *)
(* error 
FL_EXPORT int fl_object_ps_dump( FL_OBJECT  * ob,
in declaration at line 4307 *)
{$endif}
    { ! defined FLPS_H  }
    {*
     * \file formbrowser.h
     *
      }
{$ifndef FL_FORMBROWSER_H}
{$define FL_FORMBROWSER_H}    
(* error 
enum {
in declaration at line 4321 *)
(* error 
enum {
in declaration at line 4326 *)

    const
      FL_FORMBROWSER_BOXTYPE = FL_DOWN_BOX;      
      FL_FORMBROWSER_COL1 = FL_COL1;      
      FL_FORMBROWSER_ALIGN = FL_ALIGN_TOP;      
(* error 
FL_EXPORT int fl_addto_formbrowser( FL_OBJECT * ob,
in declaration at line 4333 *)
(* error 
FL_EXPORT FL_FORM * fl_delete_formbrowser_bynumber( FL_OBJECT * ob,
(* error 
                                                    int         num );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT int fl_delete_formbrowser( FL_OBJECT * ob,
in declaration at line 4339 *)
(* error 
FL_EXPORT FL_FORM * fl_replace_formbrowser( FL_OBJECT * ob,
(* error 
                                            int         num,
(* error 
                                            FL_FORM   * form );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT int fl_insert_formbrowser( FL_OBJECT * ob,
in declaration at line 4347 *)
(* error 
FL_EXPORT int fl_get_formbrowser_area( FL_OBJECT * ob,
in declaration at line 4353 *)
(* error 
FL_EXPORT void fl_set_formbrowser_scroll( FL_OBJECT * ob,
in declaration at line 4356 *)
(* error 
FL_EXPORT void fl_set_formbrowser_hscrollbar( FL_OBJECT * ob,
in declaration at line 4359 *)
(* error 
FL_EXPORT void fl_set_formbrowser_vscrollbar( FL_OBJECT * ob,
in declaration at line 4362 *)
(* error 
FL_EXPORT FL_FORM *fl_get_formbrowser_topform( FL_OBJECT * ob );
 in declarator_list *)
(* error 
FL_EXPORT int fl_set_formbrowser_topform( FL_OBJECT * ob,
in declaration at line 4367 *)
(* error 
FL_EXPORT FL_FORM * fl_set_formbrowser_topform_bynumber( FL_OBJECT * ob,
(* error 
                                                         int         n );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT int fl_set_formbrowser_xoffset( FL_OBJECT * ob,
in declaration at line 4373 *)
(* error 
FL_EXPORT int fl_set_formbrowser_yoffset( FL_OBJECT * ob,
in declaration at line 4376 *)
(* error 
FL_EXPORT int fl_get_formbrowser_xoffset( FL_OBJECT * ob );
in declaration at line 4378 *)
(* error 
FL_EXPORT int fl_get_formbrowser_yoffset( FL_OBJECT * ob );
in declaration at line 4380 *)
(* error 
FL_EXPORT int fl_find_formbrowser_form_number( FL_OBJECT * ob,
in declaration at line 4383 *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_formbrowser( int          type,
(* error 
                                          FL_Coord     x,
(* error 
                                          FL_Coord     y,
(* error 
                                          FL_Coord     w,
(* error 
                                          FL_Coord     h,
(* error 
                                          const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_create_formbrowser( int          type,
(* error 
                                             FL_Coord     x,
(* error 
                                             FL_Coord     y,
(* error 
                                             FL_Coord     w,
(* error 
                                             FL_Coord     h,
(* error 
                                             const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT int fl_get_formbrowser_numforms( FL_OBJECT * ob );
in declaration at line 4399 *)
      fl_get_formbrowser_forms = fl_get_formbrowser_numforms;      
(* error 
FL_EXPORT FL_FORM * fl_get_formbrowser_form( FL_OBJECT * ob,
(* error 
                                             int         n );
 in declarator_list *)
 in declarator_list *)
{$endif}
    { ! defined FL_FORMBROWSER_H  }
    {*
     * \file frame.h
      }
{$ifndef FL_FRAME_H}
{$define FL_FRAME_H}    
    { types of frames  }
(* error 
enum {
in declaration at line 4427 *)
    { border color      }

    const
      FL_FRAME_COL1 = FL_BLACK;      
    { label background  }
      FL_FRAME_COL2 = FL_COL1;      
    { label color       }
      FL_FRAME_LCOL = FL_BLACK;      
(* error 
FL_EXPORT FL_OBJECT * fl_create_frame( int          type,
(* error 
                                       FL_Coord     x,
(* error 
                                       FL_Coord     y,
(* error 
                                       FL_Coord     w,
(* error 
                                       FL_Coord     h,
(* error 
                                       const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_frame( int          type,
(* error 
                                    FL_Coord     x,
(* error 
                                    FL_Coord     y,
(* error 
                                    FL_Coord     w,
(* error 
                                    FL_Coord     h,
(* error 
                                    const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
    { labeld frame  }
(* error 
FL_EXPORT FL_OBJECT * fl_create_labelframe( int          type,
(* error 
                                            FL_Coord     x,
(* error 
                                            FL_Coord     y,
(* error 
                                            FL_Coord     w,
(* error 
                                            FL_Coord     h,
(* error 
                                            const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_labelframe( int          type,
(* error 
                                         FL_Coord     x,
(* error 
                                         FL_Coord     y,
(* error 
                                         FL_Coord     w,
(* error 
                                         FL_Coord     h,
(* error 
                                         const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
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
(* error 
FL_EXPORT FL_OBJECT * fl_create_free( int            type,
(* error 
                                      FL_Coord       x,
(* error 
                                      FL_Coord       y,
(* error 
                                      FL_Coord       w,
(* error 
                                      FL_Coord       h,
(* error 
                                      const char   * label,
(* error 
                                      FL_HANDLEPTR   handle );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_free( int            type,
(* error 
                                   FL_Coord       x,
(* error 
                                   FL_Coord       y,
(* error 
                                   FL_Coord       w,
(* error 
                                   FL_Coord       h,
(* error 
                                   const char   * label,
(* error 
                                   FL_HANDLEPTR   handle );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
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
(* error 
FL_EXPORT void fl_set_goodies_font(
in declaration at line 4529 *)
    {********** messages and questions ************* }
(* error 
FL_EXPORT void fl_show_message( const char *,
in declaration at line 4535 *)
(* error 
FL_EXPORT void fl_show_messages( const char * );
in declaration at line 4537 *)
      fl_show_msg = fl_show_messages_f;      
(* error 
FL_EXPORT void fl_show_messages_f( const char *,
in declaration at line 4541 *)
(* error 
FL_EXPORT void fl_hide_message( void );
in declaration at line 4543 *)
      fl_hide_msg = fl_hide_message;      
      fl_hide_messages = fl_hide_message;      
(* error 
FL_EXPORT int fl_show_question( const char *,
in declaration at line 4549 *)
(* error 
FL_EXPORT void fl_hide_question( void );
in declaration at line 4551 *)
(* error 
FL_EXPORT void fl_show_alert( const char *,
in declaration at line 4556 *)
      fl_show_alert2 = fl_show_alert_f;      
(* error 
FL_EXPORT void fl_show_alert_f( int          c,
in declaration at line 4562 *)
(* error 
FL_EXPORT void fl_hide_alert( void );
in declaration at line 4564 *)
(* error 
FL_EXPORT const char * fl_show_input( const char *,
(* error 
                                      const char * );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_hide_input( void );
in declaration at line 4569 *)
(* error 
FL_EXPORT const char * fl_show_simple_input( const char *,
(* error 
                                             const char * );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT int fl_show_colormap( int );
in declaration at line 4574 *)
    {******** choices **************** }
(* error 
FL_EXPORT int fl_show_choices( const char *,
in declaration at line 4583 *)
(* error 
FL_EXPORT int fl_show_choice( const char *,
in declaration at line 4592 *)
(* error 
FL_EXPORT void fl_hide_choice( void );
in declaration at line 4594 *)
(* error 
FL_EXPORT void fl_set_choices_shortcut( const char *,
in declaration at line 4598 *)
      fl_set_choice_shortcut = fl_set_choices_shortcut;      
    {*********** one liner ************** }
(* error 
FL_EXPORT void fl_show_oneliner( const char *,
in declaration at line 4606 *)
(* error 
FL_EXPORT void fl_hide_oneliner( void );
in declaration at line 4608 *)
(* error 
FL_EXPORT void fl_set_oneliner_font( int,
in declaration at line 4611 *)
(* error 
FL_EXPORT void fl_set_oneliner_color( FL_COLOR,
in declaration at line 4614 *)
(* error 
FL_EXPORT void fl_set_tooltip_font( int,
in declaration at line 4617 *)
(* error 
FL_EXPORT void fl_set_tooltip_color( FL_COLOR,
in declaration at line 4620 *)
(* error 
FL_EXPORT void fl_set_tooltip_boxtype( int );
in declaration at line 4622 *)
(* error 
FL_EXPORT void fl_set_tooltip_lalign( int );
in declaration at line 4624 *)
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
(* error 
FL_EXPORT FL_PID_T fl_exe_command( const char *,
(* error 
                                   int );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT int fl_end_command( FL_PID_T );
in declaration at line 4647 *)
(* error 
FL_EXPORT int fl_check_command( FL_PID_T );
in declaration at line 4649 *)
(* error 
FL_EXPORT FILE * fl_popen( const char *,
(* error 
                           const char * );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT int fl_pclose( FILE * );
in declaration at line 4654 *)
(* error 
FL_EXPORT int fl_end_all_command( void );
in declaration at line 4656 *)
(* error 
FL_EXPORT void fl_show_command_log( int );
in declaration at line 4658 *)
(* error 
FL_EXPORT void fl_hide_command_log( void );
in declaration at line 4660 *)
(* error 
FL_EXPORT void fl_clear_command_log( void );
in declaration at line 4662 *)
(* error 
FL_EXPORT void fl_addto_command_log( const char * );
in declaration at line 4664 *)
(* error 
FL_EXPORT void fl_addto_command_log_f( const char *,
in declaration at line 4667 *)
(* error 
FL_EXPORT void fl_set_command_log_position( int,
in declaration at line 4670 *)
(* error 
FL_EXPORT FD_CMDLOG * fl_get_command_log_fdstruct( void );
 in declarator_list *)
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
(* error 
FL_EXPORT int fl_use_fselector( int );
in declaration at line 4701 *)
(* error 
FL_EXPORT const char * fl_show_fselector( const char *,
(* error 
                                          const char *,
(* error 
                                          const char *,
(* error 
                                          const char * );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_hide_fselector( void );
in declaration at line 4708 *)
(* error 
FL_EXPORT void fl_set_fselector_fontsize( int );
in declaration at line 4710 *)
(* error 
FL_EXPORT void fl_set_fselector_fontstyle( int );
in declaration at line 4712 *)
(* error 
FL_EXPORT void fl_set_fselector_placement( int );
in declaration at line 4714 *)
(* error 
FL_EXPORT void fl_set_fselector_border( int );
in declaration at line 4716 *)
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   

    function fl_set_fselector_transient(b : longint) : longint;    

(* error 
FL_EXPORT void fl_set_fselector_callback( FL_FSCB,
in declaration at line 4722 *)
(* error 
FL_EXPORT const char * fl_get_filename( void );
 in declarator_list *)
(* error 
FL_EXPORT const char * fl_get_directory( void );
 in declarator_list *)
(* error 
FL_EXPORT const char * fl_get_pattern( void );
 in declarator_list *)
(* error 
FL_EXPORT int fl_set_directory( const char * );
in declaration at line 4730 *)
(* error 
FL_EXPORT void fl_set_pattern( const char * );
in declaration at line 4732 *)
(* error 
FL_EXPORT void fl_refresh_fselector( void );
in declaration at line 4734 *)
(* error 
FL_EXPORT void fl_add_fselector_appbutton( const char *,
in declaration at line 4738 *)
(* error 
FL_EXPORT void fl_remove_fselector_appbutton( const char * );
in declaration at line 4740 *)
(* error 
FL_EXPORT void fl_disable_fselector_cache( int );
in declaration at line 4742 *)
(* error 
FL_EXPORT void fl_invalidate_fselector_cache( void );
in declaration at line 4744 *)
(* error 
FL_EXPORT FL_FORM * fl_get_fselector_form( void );
 in declarator_list *)
(* error 
FL_EXPORT FD_FSELECTOR * fl_get_fselector_fdstruct( void );
 in declarator_list *)
(* error 
FL_EXPORT void fl_hide_fselector( void );
in declaration at line 4750 *)
(* error 
FL_EXPORT void fl_set_fselector_filetype_marker( int,
in declaration at line 4756 *)
    const
      fl_show_file_selector = fl_show_fselector;      
      fl_set_fselector_cb = fl_set_fselector_callback;      
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   

    function fl_set_fselector_title(s : longint) : longint;    

(* error 
FL_EXPORT int fl_goodies_atclose( FL_FORM *,
in declaration at line 4765 *)
(* error 
FL_EXPORT int fl_show_color_chooser( const int * rgb_in,
in declaration at line 4768 *)
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
(* error 
enum {
in declaration at line 4797 *)
(* error 
enum {
in declaration at line 4802 *)
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
(* error 
FL_EXPORT FL_OBJECT * fl_create_input( int          type,
(* error 
                                       FL_Coord     x,
(* error 
                                       FL_Coord     y,
(* error 
                                       FL_Coord     w,
(* error 
                                       FL_Coord     h,
(* error 
                                       const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_input( int          type,
(* error 
                                    FL_Coord     x,
(* error 
                                    FL_Coord     y,
(* error 
                                    FL_Coord     w,
(* error 
                                    FL_Coord     h,
(* error 
                                    const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_input( FL_OBJECT  * ob,
in declaration at line 4836 *)
(* error 
FL_EXPORT void fl_set_input_f( FL_OBJECT  * obj,
in declaration at line 4840 *)
(* error 
FL_EXPORT void fl_set_input_return( FL_OBJECT    * ob,
in declaration at line 4843 *)
(* error 
FL_EXPORT void fl_set_input_color( FL_OBJECT * ob,
in declaration at line 4847 *)
(* error 
FL_EXPORT void fl_get_input_color( FL_OBJECT * ob,
in declaration at line 4851 *)
(* error 
FL_EXPORT void fl_set_input_scroll( FL_OBJECT * ob,
in declaration at line 4854 *)
(* error 
FL_EXPORT void fl_set_input_cursorpos( FL_OBJECT * ob,
in declaration at line 4858 *)
(* error 
FL_EXPORT void fl_set_input_selected( FL_OBJECT * ob,
in declaration at line 4861 *)
(* error 
FL_EXPORT void fl_set_input_selected_range( FL_OBJECT * ob,
in declaration at line 4865 *)
(* error 
FL_EXPORT const char *fl_get_input_selected_range( FL_OBJECT * ob,
(* error 
                                                   int       * begin,
(* error 
                                                   int       * end );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_input_maxchars( FL_OBJECT * ob,
in declaration at line 4872 *)
(* error 
FL_EXPORT void fl_set_input_format( FL_OBJECT * ob,
in declaration at line 4876 *)
(* error 
FL_EXPORT void fl_set_input_hscrollbar( FL_OBJECT * ob,
in declaration at line 4879 *)
(* error 
FL_EXPORT void fl_set_input_vscrollbar( FL_OBJECT * ob,
in declaration at line 4882 *)
(* error 
FL_EXPORT void fl_set_input_topline( FL_OBJECT * ob,
in declaration at line 4885 *)
(* error 
FL_EXPORT void fl_set_input_scrollbarsize( FL_OBJECT * ob,
in declaration at line 4889 *)
(* error 
FL_EXPORT void fl_get_input_scrollbarsize( FL_OBJECT * ob,
in declaration at line 4893 *)
(* error 
FL_EXPORT void fl_set_input_xoffset( FL_OBJECT * ob,
in declaration at line 4896 *)
(* error 
FL_EXPORT int fl_get_input_xoffset( FL_OBJECT * ob );
in declaration at line 4898 *)
(* error 
FL_EXPORT int fl_set_input_fieldchar( FL_OBJECT * ob,
in declaration at line 4901 *)
(* error 
FL_EXPORT int fl_get_input_topline( FL_OBJECT * ob );
in declaration at line 4903 *)
(* error 
FL_EXPORT int fl_get_input_screenlines( FL_OBJECT * ob );
in declaration at line 4905 *)
(* error 
FL_EXPORT int fl_get_input_cursorpos( FL_OBJECT * ob,
in declaration at line 4909 *)
(* error 
FL_EXPORT void fl_set_input_cursor_visible( FL_OBJECT * ob,
in declaration at line 4912 *)
(* error 
FL_EXPORT int fl_get_input_numberoflines( FL_OBJECT * ob );
in declaration at line 4914 *)
(* error 
FL_EXPORT void fl_get_input_format( FL_OBJECT * ob,
in declaration at line 4918 *)
(* error 
FL_EXPORT const char * fl_get_input( FL_OBJECT * ob );
 in declarator_list *)
(* Const before type ignored *)
(* Const before type ignored *)
    type

      TFL_INPUT_VALIDATOR = function (para1:PFL_OBJECT; para2:Pchar; para3:Pchar; para4:longint):longint;cdecl;

    const
      FL_INPUTVALIDATOR = FL_INPUT_VALIDATOR;      
(* error 
fl_set_input_filter( FL_OBJECT          * ob,
(* error 
					 FL_INPUT_VALIDATOR   validate );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT int fl_validate_input( FL_OBJECT *obj );
in declaration at line 4933 *)
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
(* error 
FL_EXPORT void fl_set_input_editkeymap( const FL_EditKeymap * keymap );
in declaration at line 4973 *)
(* error 
FL_EXPORT void fl_get_input_editkeymap( FL_EditKeymap * keymap );
in declaration at line 4975 *)
(* error 
FL_EXPORT void fl_set_default_editkeymap( void );
in declaration at line 4977 *)
(* error 
FL_EXPORT int fl_set_input_mode( int mode );
in declaration at line 4979 *)
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
(* error 
FL_EXPORT FL_OBJECT * fl_create_menu( int          type,
(* error 
                                      FL_Coord     x,
(* error 
                                      FL_Coord     y,
(* error 
                                      FL_Coord     w,
(* error 
                                      FL_Coord     h,
(* error 
                                      const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_menu( int          type,
(* error 
                                   FL_Coord     x,
(* error 
                                   FL_Coord     y,
(* error 
                                   FL_Coord     w,
(* error 
                                   FL_Coord     h,
(* error 
                                   const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_clear_menu( FL_OBJECT * ob );
in declaration at line 5028 *)
(* error 
FL_EXPORT void fl_set_menu( FL_OBJECT  * ob,
in declaration at line 5032 *)
(* error 
FL_EXPORT int fl_addto_menu( FL_OBJECT  * ob,
in declaration at line 5036 *)
(* error 
FL_EXPORT void fl_replace_menu_item( FL_OBJECT  * ob,
in declaration at line 5041 *)
(* error 
FL_EXPORT void fl_delete_menu_item( FL_OBJECT * ob,
in declaration at line 5044 *)
(* error 
FL_EXPORT FL_PUP_CB fl_set_menu_item_callback( FL_OBJECT *  ob,
(* error 
                                               int          numb,
(* error 
                                               FL_PUP_CB    cb );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_menu_item_shortcut( FL_OBJECT  * ob,
in declaration at line 5052 *)
(* error 
FL_EXPORT void fl_set_menu_item_mode( FL_OBJECT    * ob,
in declaration at line 5056 *)
(* error 
FL_EXPORT void fl_show_menu_symbol( FL_OBJECT * ob,
in declaration at line 5059 *)
(* error 
FL_EXPORT void fl_set_menu_popup( FL_OBJECT * ob,
in declaration at line 5062 *)
(* error 
FL_EXPORT int fl_get_menu_popup( FL_OBJECT * ob );
in declaration at line 5064 *)
(* error 
FL_EXPORT int fl_get_menu( FL_OBJECT * ob );
in declaration at line 5066 *)
(* error 
FL_EXPORT const char * fl_get_menu_item_text( FL_OBJECT * ob,
(* error 
                                              int         numb );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT int fl_get_menu_maxitems( FL_OBJECT * ob );
in declaration at line 5071 *)
(* error 
FL_EXPORT unsigned int fl_get_menu_item_mode( FL_OBJECT * ob,
in declaration at line 5074 *)
(* error 
FL_EXPORT const char *fl_get_menu_text( FL_OBJECT * ob );
 in declarator_list *)
(* error 
FL_EXPORT int fl_set_menu_entries( FL_OBJECT    * ob,
in declaration at line 5079 *)
(* error 
FL_EXPORT int fl_set_menu_notitle( FL_OBJECT * ob,
in declaration at line 5082 *)
(* error 
FL_EXPORT int fl_set_menu_item_id( FL_OBJECT * ob,
in declaration at line 5086 *)
{$endif}
    { ! defined FL_MENU_H  }
{$ifndef FL_NMENU_H}
{$define FL_NMENU_H}    
    { Nmenu object types  }
(* error 
enum {
in declaration at line 5102 *)
(* error 
FL_EXPORT FL_OBJECT *fl_create_nmenu(
 in declarator_list *)
(* error 
        const char *
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT *fl_add_nmenu(
 in declarator_list *)
(* error 
        const char *
 in declarator_list *)
(* error 
FL_EXPORT int fl_clear_nmenu(
in declaration at line 5124 *)
(* error 
FL_EXPORT FL_POPUP_ENTRY *fl_add_nmenu_items(
(* error 
        const char *,
(* error 
        ...
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP_ENTRY *fl_insert_nmenu_items(
(* error 
        FL_POPUP_ENTRY *,
(* error 
        const char     *,
(* error 
        ...
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP_ENTRY *fl_replace_nmenu_item(
(* error 
        FL_POPUP_ENTRY *,
(* error 
        const char *,
(* error 
        ...
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT int fl_delete_nmenu_item(
in declaration at line 5149 *)
(* error 
FL_EXPORT FL_POPUP_ENTRY *fl_set_nmenu_items(
(* error 
        FL_POPUP_ITEM *
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP_ENTRY *fl_add_nmenu_items2(
(* error 
		FL_POPUP_ITEM * );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP_ENTRY *fl_insert_nmenu_items2(
(* error 
		FL_POPUP_ENTRY *,
(* error 
		FL_POPUP_ITEM  * );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP_ENTRY *fl_replace_nmenu_items2(
(* error 
		FL_POPUP_ENTRY *,
(* error 
		FL_POPUP_ITEM * );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP *fl_get_nmenu_popup(
 in declarator_list *)
(* error 
FL_EXPORT int fl_set_nmenu_popup(
in declaration at line 5177 *)
(* error 
FL_EXPORT FL_POPUP_RETURN *fl_get_nmenu_item(
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP_ENTRY *fl_get_nmenu_item_by_value(
(* error 
        long int
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP_ENTRY *fl_get_nmenu_item_by_label(
(* error 
        const char *
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP_ENTRY *fl_get_nmenu_item_by_text(
(* error 
        const char *
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT int fl_set_nmenu_policy(
in declaration at line 5201 *)
(* error 
FL_EXPORT FL_COLOR fl_set_nmenu_hl_text_color(
(* error 
        );
 in declarator_list *)
 in declarator_list *)
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
(* error 
FL_EXPORT FL_OBJECT * fl_create_positioner( int          type,
(* error 
                                            FL_Coord     x,
(* error 
                                            FL_Coord     y,
(* error 
                                            FL_Coord     w,
(* error 
                                            FL_Coord     h,
(* error 
                                            const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_positioner( int          type,
(* error 
                                         FL_Coord     x,
(* error 
                                         FL_Coord     y,
(* error 
                                         FL_Coord     w,
(* error 
                                         FL_Coord     h,
(* error 
                                         const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT int fl_set_positioner_values( FL_OBJECT * obj,
in declaration at line 5258 *)
(* error 
FL_EXPORT int fl_set_positioner_xvalue( FL_OBJECT * ob,
in declaration at line 5261 *)
(* error 
FL_EXPORT double fl_get_positioner_xvalue( FL_OBJECT * ob );
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_positioner_xbounds( FL_OBJECT * ob,
in declaration at line 5267 *)
(* error 
FL_EXPORT void fl_get_positioner_xbounds( FL_OBJECT * ob,
in declaration at line 5271 *)
(* error 
FL_EXPORT int fl_set_positioner_yvalue( FL_OBJECT * ob,
in declaration at line 5274 *)
(* error 
FL_EXPORT double fl_get_positioner_yvalue( FL_OBJECT * ob );
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_positioner_ybounds( FL_OBJECT * ob,
in declaration at line 5280 *)
(* error 
FL_EXPORT void fl_get_positioner_ybounds( FL_OBJECT * ob,
in declaration at line 5284 *)
(* error 
FL_EXPORT void fl_set_positioner_xstep( FL_OBJECT * ob,
in declaration at line 5287 *)
(* error 
FL_EXPORT double fl_get_positioner_xstep( FL_OBJECT * ob );
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_positioner_ystep( FL_OBJECT * ob,
in declaration at line 5292 *)
(* error 
FL_EXPORT double fl_get_positioner_ystep( FL_OBJECT * ob );
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_positioner_return( FL_OBJECT    * ob,
in declaration at line 5297 *)
(* error 
FL_EXPORT void fl_set_positioner_mouse_buttons( FL_OBJECT    * obj,
in declaration at line 5300 *)
(* error 
FL_EXPORT void fl_get_positioner_mouse_buttons( FL_OBJECT    * obj,
in declaration at line 5303 *)
(* error 
FL_EXPORT int fl_get_positioner_numb( FL_OBJECT * obj );
in declaration at line 5305 *)
(* error 
fl_set_positioner_validator( FL_OBJECT               * obj,
(* error 
							 FL_POSITIONER_VALIDATOR   validator );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_reset_positioner( FL_OBJECT * obj );
in declaration at line 5311 *)
{$endif}
    { ! defined FL_POSITIONER_H  }
{$ifndef FL_SCROLLBAR_H}
{$define FL_SCROLLBAR_H}    
(* error 
enum {
in declaration at line 5335 *)
(* error 
enum {
in declaration at line 5342 *)

    const
      FL_SCROLLBAR_ALIGN = FL_ALIGN_BOTTOM;      
(* error 
FL_EXPORT FL_OBJECT * fl_create_scrollbar( int          type,
(* error 
                                           FL_Coord     x,
(* error 
                                           FL_Coord     y,
(* error 
                                           FL_Coord     w,
(* error 
                                           FL_Coord     h,
(* error 
                                           const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_scrollbar( int          type,
(* error 
                                        FL_Coord     x,
(* error 
                                        FL_Coord     y,
(* error 
                                        FL_Coord     w,
(* error 
                                        FL_Coord     h,
(* error 
                                        const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT double fl_get_scrollbar_value( FL_OBJECT * ob );
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_scrollbar_value( FL_OBJECT * ob,
in declaration at line 5364 *)
(* error 
FL_EXPORT void fl_set_scrollbar_size( FL_OBJECT * ob,
in declaration at line 5367 *)
(* error 
FL_EXPORT double fl_get_scrollbar_size( FL_OBJECT * obj );
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_scrollbar_increment( FL_OBJECT * ob,
in declaration at line 5373 *)
(* error 
FL_EXPORT void fl_get_scrollbar_increment( FL_OBJECT * ob,
in declaration at line 5377 *)
(* error 
FL_EXPORT void fl_set_scrollbar_bounds( FL_OBJECT * ob,
in declaration at line 5381 *)
(* error 
FL_EXPORT void fl_get_scrollbar_bounds( FL_OBJECT * ob,
in declaration at line 5385 *)
(* error 
FL_EXPORT void fl_set_scrollbar_return( FL_OBJECT    * ob,
in declaration at line 5388 *)
(* error 
FL_EXPORT void fl_set_scrollbar_step( FL_OBJECT * ob,
in declaration at line 5391 *)
(* error 
FL_EXPORT int fl_get_scrollbar_repeat( FL_OBJECT * obj );
in declaration at line 5393 *)
(* error 
FL_EXPORT void fl_set_scrollbar_repeat( FL_OBJECT * obj,
in declaration at line 5396 *)
{$endif}
    { ! defined FL_SCROLLBAR_H  }
    {*
     * \file select.h
      }
{$ifndef FL_SELECT_H}
{$define FL_SELECT_H}    
    { Select object types  }
(* error 
enum {
in declaration at line 5414 *)
    { Defaults  }

    const
      FL_SELECT_COL1 = FL_COL1;      
      FL_SELECT_COL2 = FL_MCOL;      
      FL_SELECT_LCOL = FL_LCOL;      
      FL_SELECT_ALIGN = FL_ALIGN_LEFT;      
(* error 
FL_EXPORT FL_OBJECT *fl_create_select( int,
 in declarator_list *)
(* error 
                                       const char * );
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT *fl_add_select( int,
 in declarator_list *)
(* error 
                                    const char * );
 in declarator_list *)
(* error 
FL_EXPORT int fl_clear_select( FL_OBJECT * );
in declaration at line 5437 *)
(* error 
FL_EXPORT FL_POPUP_ENTRY *fl_add_select_items( FL_OBJECT  *,
(* error 
                                               const char *,
(* error 
                                               ... );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP_ENTRY *fl_insert_select_items( FL_OBJECT *,
(* error 
                                                  FL_POPUP_ENTRY *,
(* error 
                                                  const char     *,
(* error 
                                                  ... );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP_ENTRY *fl_replace_select_item( FL_OBJECT *,
(* error 
                                                  FL_POPUP_ENTRY *,
(* error 
                                                  const char *,
(* error 
                                                  ... );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT int fl_delete_select_item( FL_OBJECT *,
in declaration at line 5454 *)
(* error 
FL_EXPORT long fl_set_select_items( FL_OBJECT *,
in declaration at line 5457 *)
(* error 
FL_EXPORT FL_POPUP *fl_get_select_popup( FL_OBJECT * );
 in declarator_list *)
(* error 
FL_EXPORT int fl_set_select_popup( FL_OBJECT *,
in declaration at line 5462 *)
(* error 
FL_EXPORT FL_POPUP_RETURN *fl_get_select_item( FL_OBJECT * );
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP_RETURN *fl_set_select_item( FL_OBJECT *,
(* error 
                                               FL_POPUP_ENTRY * );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP_ENTRY *fl_get_select_item_by_value( FL_OBJECT *,
(* error 
                                                       long );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP_ENTRY *fl_get_select_item_by_label( FL_OBJECT *,
(* error 
                                                       const char * );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP_ENTRY * fl_get_select_item_by_label_f( FL_OBJECT  *,
(* error 
														  const char *,
(* error 
														  ... );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP_ENTRY * fl_get_select_item_by_text_f( FL_OBJECT  * obj,
(* error 
														 const char * fmt,
(* error 
														 ... );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_POPUP_ENTRY *fl_get_select_item_by_text( FL_OBJECT *,
(* error 
                                                      const char * );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_COLOR fl_get_select_text_color( FL_OBJECT * );
 in declarator_list *)
(* error 
FL_EXPORT FL_COLOR fl_set_select_text_color( FL_OBJECT *,
(* error 
                                             FL_COLOR );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT int fl_get_select_text_font( FL_OBJECT *,
in declaration at line 5493 *)
(* error 
FL_EXPORT int fl_set_select_text_font( FL_OBJECT *,
in declaration at line 5497 *)
(* error 
FL_EXPORT int fl_get_select_text_align( FL_OBJECT * );
in declaration at line 5499 *)
(* error 
FL_EXPORT int fl_set_select_text_align( FL_OBJECT *,
in declaration at line 5502 *)
(* error 
FL_EXPORT int fl_set_select_policy( FL_OBJECT *,
in declaration at line 5505 *)
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
(* error 
FL_EXPORT FL_OBJECT * fl_create_slider( int          type,
(* error 
                                        FL_Coord     x,
(* error 
                                        FL_Coord     y,
(* error 
                                        FL_Coord     w,
(* error 
                                        FL_Coord     h,
(* error 
                                        const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_slider( int          type,
(* error 
                                     FL_Coord     x,
(* error 
                                     FL_Coord     y,
(* error 
                                     FL_Coord     w,
(* error 
                                     FL_Coord     h,
(* error 
                                     const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_create_valslider( int          type,
(* error 
                                           FL_Coord     x,
(* error 
                                           FL_Coord     y,
(* error 
                                           FL_Coord     w,
(* error 
                                           FL_Coord     h,
(* error 
                                           const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_valslider( int          type,
(* error 
                                        FL_Coord     x,
(* error 
                                        FL_Coord     y,
(* error 
                                        FL_Coord     w,
(* error 
                                        FL_Coord     h,
(* error 
                                        const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_slider_value( FL_OBJECT * ob,
in declaration at line 5609 *)
(* error 
FL_EXPORT double fl_get_slider_value( FL_OBJECT * ob );
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_slider_bounds( FL_OBJECT * ob,
in declaration at line 5615 *)
(* error 
FL_EXPORT void fl_get_slider_bounds( FL_OBJECT * ob,
in declaration at line 5619 *)
(* error 
FL_EXPORT void fl_set_slider_return( FL_OBJECT    * ob,
in declaration at line 5622 *)
(* error 
FL_EXPORT void fl_set_slider_step( FL_OBJECT * ob,
in declaration at line 5625 *)
(* error 
FL_EXPORT void fl_set_slider_increment( FL_OBJECT * ob,
in declaration at line 5629 *)
(* error 
FL_EXPORT void fl_get_slider_increment( FL_OBJECT * ob,
in declaration at line 5633 *)
(* error 
FL_EXPORT void fl_set_slider_size( FL_OBJECT * ob,
in declaration at line 5636 *)
(* error 
FL_EXPORT double fl_get_slider_size( FL_OBJECT * obj );
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_slider_precision( FL_OBJECT * ob,
in declaration at line 5641 *)
(* error 
FL_EXPORT void fl_set_slider_filter( FL_OBJECT     * ob,
in declaration at line 5644 *)
(* error 
FL_EXPORT int fl_get_slider_repeat( FL_OBJECT * obj );
in declaration at line 5646 *)
(* error 
FL_EXPORT void fl_set_slider_repeat( FL_OBJECT * obj,
in declaration at line 5649 *)
(* error 
FL_EXPORT void fl_set_slider_mouse_buttons( FL_OBJECT    * obj,
in declaration at line 5652 *)
(* error 
FL_EXPORT void fl_get_slider_mouse_buttons( FL_OBJECT    * obj,
in declaration at line 5654 *)
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
(* error 
FL_EXPORT FL_OBJECT * fl_create_spinner( int            type,
(* error 
                                         FL_Coord       x,
(* error 
                                         FL_Coord       y,
(* error 
                                         FL_Coord       w,
(* error 
                                         FL_Coord       h,
(* error 
                                         const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_spinner( int            type,
(* error 
                                      FL_Coord   x,
(* error 
                                      FL_Coord   y,
(* error 
                                      FL_Coord   w,
(* error 
                                      FL_Coord   h,
(* error 
                                      const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT double fl_get_spinner_value( FL_OBJECT * obj );
 in declarator_list *)
(* error 
FL_EXPORT double fl_set_spinner_value( FL_OBJECT * obj,
(* error 
                                       double      val );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_spinner_bounds( FL_OBJECT * obj,
in declaration at line 5688 *)
(* error 
FL_EXPORT void fl_get_spinner_bounds( FL_OBJECT * obj,
in declaration at line 5692 *)
(* error 
FL_EXPORT void fl_set_spinner_step( FL_OBJECT * obj,
in declaration at line 5695 *)
(* error 
FL_EXPORT double fl_get_spinner_step( FL_OBJECT * obj );
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_spinner_precision( FL_OBJECT * obj,
in declaration at line 5700 *)
(* error 
FL_EXPORT int fl_get_spinner_precision( FL_OBJECT * obj );
in declaration at line 5702 *)
(* error 
FL_EXPORT FL_OBJECT * fl_get_spinner_input( FL_OBJECT * obj );
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_get_spinner_up_button( FL_OBJECT * obj );
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_get_spinner_down_button( FL_OBJECT * obj );
 in declarator_list *)
{$endif}
    { ! defined FL_SPINNER_H  }
    {*
     * \file tabfolder.h
      }
{$ifndef FL_FOLDER_H}
{$define FL_FOLDER_H}    
(* error 
enum {
    { tab on top  }
in declaration at line 5726 *)
(* error 
enum {
in declaration at line 5732 *)
(* error 
FL_EXPORT FL_OBJECT * fl_create_tabfolder( int          type,
(* error 
                                           FL_Coord     x,
(* error 
                                           FL_Coord     y,
(* error 
                                           FL_Coord     w,
(* error 
                                           FL_Coord     h,
(* error 
                                           const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_tabfolder( int          type,
(* error 
                                        FL_Coord     x,
(* error 
                                        FL_Coord     y,
(* error 
                                        FL_Coord     w,
(* error 
                                        FL_Coord     h,
(* error 
                                        const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_addto_tabfolder( FL_OBJECT  * ob,
(* error 
                                          const char * title,
(* error 
                                          FL_FORM    * form );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_FORM * fl_get_tabfolder_folder_bynumber( FL_OBJECT * ob,
(* error 
                                                      int         num );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_FORM * fl_get_tabfolder_folder_byname( FL_OBJECT  * ob,
(* error 
                                                    const char * name );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_FORM * fl_get_tabfolder_folder_byname_f( FL_OBJECT  * ob,
(* error 
													  const char * fmt,
(* error 
													  ...);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_delete_folder( FL_OBJECT * ob,
in declaration at line 5763 *)
(* error 
FL_EXPORT void fl_delete_folder_bynumber( FL_OBJECT * ob,
in declaration at line 5766 *)
(* error 
FL_EXPORT void fl_delete_folder_byname( FL_OBJECT  * ob,
in declaration at line 5769 *)
(* error 
FL_EXPORT void fl_delete_folder_byname_f( FL_OBJECT  * ob,
in declaration at line 5773 *)
(* error 
FL_EXPORT void fl_set_folder( FL_OBJECT * ob,
in declaration at line 5776 *)
(* error 
FL_EXPORT void fl_set_folder_byname( FL_OBJECT  * ob,
in declaration at line 5779 *)
(* error 
FL_EXPORT void fl_set_folder_byname_f( FL_OBJECT  * ob,
in declaration at line 5783 *)
(* error 
FL_EXPORT void fl_set_folder_bynumber( FL_OBJECT * ob,
in declaration at line 5786 *)
(* error 
FL_EXPORT FL_FORM * fl_get_folder( FL_OBJECT * ob );
 in declarator_list *)
(* error 
FL_EXPORT int fl_get_folder_number( FL_OBJECT * ob );
in declaration at line 5790 *)
(* error 
FL_EXPORT const char * fl_get_folder_name( FL_OBJECT * ob );
 in declarator_list *)
(* error 
FL_EXPORT int fl_get_tabfolder_numfolders( FL_OBJECT * ob );
in declaration at line 5794 *)
(* error 
FL_EXPORT FL_FORM * fl_get_active_folder( FL_OBJECT * ob );
 in declarator_list *)
(* error 
FL_EXPORT int fl_get_active_folder_number( FL_OBJECT * ob );
in declaration at line 5798 *)
(* error 
FL_EXPORT const char * fl_get_active_folder_name( FL_OBJECT * ob );
 in declarator_list *)
(* error 
FL_EXPORT void fl_get_folder_area( FL_OBJECT * ob,
in declaration at line 5807 *)
(* error 
FL_EXPORT void fl_replace_folder_bynumber( FL_OBJECT * ob,
in declaration at line 5811 *)
(* error 
FL_EXPORT int fl_set_tabfolder_autofit( FL_OBJECT * ob,
in declaration at line 5814 *)
(* error 
FL_EXPORT int fl_set_default_tabfolder_corner( int n );
in declaration at line 5816 *)
(* error 
FL_EXPORT int fl_set_tabfolder_offset( FL_OBJECT * obj,
in declaration at line 5819 *)
(* error 
FL_EXPORT int fl_get_tabfolder_offset( FL_OBJECT * obj );
in declaration at line 5821 *)
{$endif}
    { ! defined FL_FOLDER_H  }
    {*
     * \file text.h
      }
{$ifndef FL_TEXT_H}
{$define FL_TEXT_H}    
(* error 
enum {
in declaration at line 5834 *)

    const
      FL_TEXT_BOXTYPE = FL_FLAT_BOX;      
      FL_TEXT_COL1 = FL_COL1;      
      FL_TEXT_COL2 = FL_MCOL;      
      FL_TEXT_LCOL = FL_LCOL;      
      FL_TEXT_ALIGN = FL_ALIGN_LEFT or FL_ALIGN_INSIDE;      
(* error 
FL_EXPORT FL_OBJECT * fl_create_text( int          type,
(* error 
                                      FL_Coord     x,
(* error 
                                      FL_Coord     y,
(* error 
                                      FL_Coord     w,
(* error 
                                      FL_Coord     h,
(* error 
                                      const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_text( int          type,
(* error 
                                   FL_Coord     x,
(* error 
                                   FL_Coord     y,
(* error 
                                   FL_Coord     w,
(* error 
                                   FL_Coord     h,
(* error 
                                   const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
{$endif}
    { ! defined FL_TEXT_H  }
    {*
     * \file thumbwheel.h
      }
{$ifndef FL_THUMBWHEEL_H}
{$define FL_THUMBWHEEL_H}    
(* error 
enum {
in declaration at line 5869 *)
    { defaults  }

    const
      FL_THUMBWHEEL_COL1 = FL_COL1;      
      FL_THUMBWHEEL_COL2 = FL_COL1;      
      FL_THUMBWHEEL_LCOL = FL_BLACK;      
      FL_THUMBWHEEL_BOXTYPE = FL_BORDER_BOX;      
      FL_THUMBWHEEL_ALIGN = FL_ALIGN_BOTTOM;      
(* error 
FL_EXPORT double fl_get_thumbwheel_value( FL_OBJECT * ob );
 in declarator_list *)
(* error 
FL_EXPORT double fl_set_thumbwheel_value( FL_OBJECT * ob,
(* error 
                                          double      value );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT double fl_get_thumbwheel_step( FL_OBJECT * ob );
 in declarator_list *)
(* error 
FL_EXPORT double fl_set_thumbwheel_step( FL_OBJECT * ob,
(* error 
                                         double      step );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT int fl_set_thumbwheel_return( FL_OBJECT    * ob,
in declaration at line 5890 *)
(* error 
FL_EXPORT int fl_set_thumbwheel_crossover( FL_OBJECT * ob,
in declaration at line 5893 *)
(* error 
FL_EXPORT void fl_set_thumbwheel_bounds( FL_OBJECT * ob,
in declaration at line 5897 *)
(* error 
FL_EXPORT void fl_get_thumbwheel_bounds( FL_OBJECT * ob,
in declaration at line 5901 *)
(* error 
FL_EXPORT FL_OBJECT * fl_create_thumbwheel( int          type,
(* error 
                                            FL_Coord     x,
(* error 
                                            FL_Coord     y,
(* error 
                                            FL_Coord     w,
(* error 
                                            FL_Coord     h,
(* error 
                                            const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_thumbwheel( int          type,
(* error 
                                         FL_Coord     x,
(* error 
                                         FL_Coord     y,
(* error 
                                         FL_Coord     w,
(* error 
                                         FL_Coord     h,
(* error 
                                         const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
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
(* error 
FL_EXPORT FL_OBJECT * fl_create_timer( int          type,
(* error 
                                       FL_Coord     x,
(* error 
                                       FL_Coord     y,
(* error 
                                       FL_Coord     w,
(* error 
                                       FL_Coord     h,
(* error 
                                       const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_timer( int          type,
(* error 
                                    FL_Coord     x,
(* error 
                                    FL_Coord     y,
(* error 
                                    FL_Coord     w,
(* error 
                                    FL_Coord     h,
(* error 
                                    const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_timer( FL_OBJECT * ob,
in declaration at line 5966 *)
(* error 
FL_EXPORT double fl_get_timer( FL_OBJECT * ob );
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_timer_countup( FL_OBJECT * ob,
in declaration at line 5971 *)
(* error 
FL_EXPORT FL_TIMER_FILTER fl_set_timer_filter( FL_OBJECT       * ob,
(* error 
                                               FL_TIMER_FILTER   filter );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_suspend_timer( FL_OBJECT * ob );
in declaration at line 5976 *)
(* error 
FL_EXPORT void fl_resume_timer( FL_OBJECT * ob );
in declaration at line 5978 *)
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
(* error 
FL_EXPORT int fl_setpup_entries( int            nm,
in declaration at line 5999 *)
(* error 
FL_EXPORT int fl_newpup( Window win );
in declaration at line 6001 *)
(* error 
FL_EXPORT int fl_defpup( Window       win,
in declaration at line 6005 *)
(* error 
FL_EXPORT int fl_addtopup( int          n,
in declaration at line 6009 *)
(* error 
FL_EXPORT int fl_setpup_mode( int          nm,
in declaration at line 6013 *)
(* error 
FL_EXPORT void fl_freepup( int n );
in declaration at line 6015 *)
(* error 
FL_EXPORT int fl_dopup( int n );
in declaration at line 6017 *)
(* error 
FL_EXPORT Cursor fl_setpup_default_cursor( int cursor );
 in declarator_list *)
(* error 
FL_EXPORT void fl_setpup_default_color( FL_COLOR fg,
in declaration at line 6023 *)
(* error 
FL_EXPORT void fl_setpup_default_pup_checked_color( FL_COLOR col );
in declaration at line 6025 *)
(* error 
FL_EXPORT int fl_setpup_default_fontsize( int size );
in declaration at line 6027 *)
(* error 
FL_EXPORT int fl_setpup_default_fontstyle( int style );
in declaration at line 6029 *)

    const
      fl_setpup_fontsize = fl_setpup_default_fontsize;      
      fl_setpup_fontstyle = fl_setpup_default_fontstyle;      
      fl_setpup_color = fl_setpup_default_color;      
      fl_setpup_default_checkcolor = fl_setpup_default_pup_checked_color;      
      fl_setpup_checkcolor = fl_setpup_default_pup_checked_color;      
(* error 
FL_EXPORT int fl_setpup_default_bw( int bw );
in declaration at line 6037 *)
(* error 
FL_EXPORT void fl_setpup_shortcut( int          nm,
in declaration at line 6041 *)
(* error 
FL_EXPORT void fl_setpup_position( int x,
in declaration at line 6044 *)
(* error 
FL_EXPORT void fl_setpup_align_bottom( void );
in declaration at line 6046 *)
(* error 
FL_EXPORT void fl_setpup_selection( int nm,
in declaration at line 6049 *)
(* error 
FL_EXPORT void fl_setpup_shadow( int n,
in declaration at line 6052 *)
(* error 
FL_EXPORT void fl_setpup_softedge( int n,
in declaration at line 6055 *)
(* error 
FL_EXPORT void fl_setpup_bw( int n,
in declaration at line 6058 *)
(* error 
FL_EXPORT void fl_setpup_title( int          nm,
in declaration at line 6061 *)
(* error 
FL_EXPORT void fl_setpup_title_f( int          nm,
in declaration at line 6065 *)
(* error 
FL_EXPORT FL_PUP_ENTERCB fl_setpup_entercb( int              nm,
(* error 
                                            FL_PUP_ENTERCB   cb,
(* error 
                                            void           * data );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_PUP_LEAVECB fl_setpup_leavecb( int              nm,
(* error 
                                            FL_PUP_LEAVECB   cb,
(* error 
                                            void           * data );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_setpup_pad( int n,
in declaration at line 6077 *)
(* error 
FL_EXPORT Cursor fl_setpup_cursor( int nm,
(* error 
                                   int cursor );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT int fl_setpup_maxpup( int n );
in declaration at line 6082 *)
(* error 
FL_EXPORT unsigned int fl_getpup_mode( int nm,
in declaration at line 6085 *)
(* error 
FL_EXPORT const char * fl_getpup_text( int nm,
(* error 
                                       int ni );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_showpup( int n );
in declaration at line 6090 *)
(* error 
FL_EXPORT void fl_hidepup( int n );
in declaration at line 6092 *)
(* error 
FL_EXPORT int fl_getpup_items( int n );
in declaration at line 6094 *)
(* error 
FL_EXPORT int fl_current_pup( void );
in declaration at line 6096 *)
      fl_setpup_hotkey = fl_setpup_shortcut;      
(* error 
FL_EXPORT FL_PUP_CB fl_setpup_itemcb( int        nm,
(* error 
                                      int       ni,
(* error 
                                      FL_PUP_CB cb );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_PUP_CB fl_setpup_menucb( int       nm,
(* error 
                                      FL_PUP_CB cb );
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_setpup_submenu( int m,
in declaration at line 6109 *)
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
(* error 
enum {
in declaration at line 6143 *)
(* error 
enum {
in declaration at line 6149 *)
    {**** Defaults **** }
      FL_XYPLOT_BOXTYPE = FL_FLAT_BOX;      
      FL_XYPLOT_COL1 = FL_COL1;      
      FL_XYPLOT_LCOL = FL_LCOL;      
      FL_XYPLOT_ALIGN = FL_ALIGN_BOTTOM;      
      FL_MAX_XYPLOTOVERLAY = 32;      
    {**** Others   **** }
(* error 
FL_EXPORT FL_OBJECT * fl_create_xyplot( int          t,
(* error 
                                        FL_Coord     x,
(* error 
                                        FL_Coord     y,
(* error 
                                        FL_Coord     w,
(* error 
                                        FL_Coord     h,
(* error 
                                        const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT FL_OBJECT * fl_add_xyplot( int          t,
(* error 
                                     FL_Coord     x,
(* error 
                                     FL_Coord     y,
(* error 
                                     FL_Coord     w,
(* error 
                                     FL_Coord     h,
(* error 
                                     const char * label );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT void fl_set_xyplot_data( FL_OBJECT  * ob,
in declaration at line 6181 *)
(* error 
FL_EXPORT void fl_set_xyplot_data_double( FL_OBJECT  * ob,
in declaration at line 6189 *)
(* error 
FL_EXPORT int fl_set_xyplot_file( FL_OBJECT  * ob,
in declaration at line 6195 *)
(* error 
FL_EXPORT void fl_insert_xyplot_data( FL_OBJECT * ob,
in declaration at line 6201 *)
      fl_set_xyplot_datafile = fl_set_xyplot_file;      
(* error 
FL_EXPORT void fl_add_xyplot_text( FL_OBJECT  * ob,
in declaration at line 6210 *)
(* error 
FL_EXPORT void fl_delete_xyplot_text( FL_OBJECT  * ob,
in declaration at line 6213 *)
(* error 
FL_EXPORT int fl_set_xyplot_maxoverlays( FL_OBJECT * ob,
in declaration at line 6216 *)
(* error 
FL_EXPORT void fl_add_xyplot_overlay( FL_OBJECT * ob,
in declaration at line 6223 *)
(* error 
FL_EXPORT int fl_add_xyplot_overlay_file( FL_OBJECT  * ob,
in declaration at line 6228 *)
(* error 
FL_EXPORT void fl_set_xyplot_return( FL_OBJECT    * ob,
in declaration at line 6231 *)
(* error 
FL_EXPORT void fl_set_xyplot_xtics( FL_OBJECT * ob,
in declaration at line 6235 *)
(* error 
FL_EXPORT void fl_set_xyplot_ytics( FL_OBJECT * ob,
in declaration at line 6239 *)
(* error 
FL_EXPORT void fl_set_xyplot_xbounds( FL_OBJECT * ob,
in declaration at line 6243 *)
(* error 
FL_EXPORT void fl_set_xyplot_ybounds( FL_OBJECT * ob,
in declaration at line 6247 *)
(* error 
FL_EXPORT void fl_get_xyplot_xbounds( FL_OBJECT * ob,
in declaration at line 6251 *)
(* error 
FL_EXPORT void fl_get_xyplot_ybounds( FL_OBJECT * ob,
in declaration at line 6255 *)
(* error 
FL_EXPORT void fl_get_xyplot( FL_OBJECT * ob,
in declaration at line 6260 *)
(* error 
FL_EXPORT int fl_get_xyplot_data_size( FL_OBJECT * obj );
in declaration at line 6262 *)
(* error 
FL_EXPORT void fl_get_xyplot_data( FL_OBJECT * ob,
in declaration at line 6267 *)
(* error 
FL_EXPORT void fl_get_xyplot_data_pointer( FL_OBJECT  * ob,
in declaration at line 6273 *)
(* error 
FL_EXPORT void fl_get_xyplot_overlay_data( FL_OBJECT * ob,
in declaration at line 6279 *)
(* error 
FL_EXPORT void fl_set_xyplot_overlay_type( FL_OBJECT * ob,
in declaration at line 6283 *)
(* error 
FL_EXPORT void fl_delete_xyplot_overlay( FL_OBJECT * ob,
in declaration at line 6286 *)
(* error 
FL_EXPORT void fl_set_xyplot_interpolate( FL_OBJECT * ob,
in declaration at line 6291 *)
(* error 
FL_EXPORT void fl_set_xyplot_inspect( FL_OBJECT * ob,
in declaration at line 6294 *)
(* error 
FL_EXPORT void fl_set_xyplot_symbolsize( FL_OBJECT * ob,
in declaration at line 6297 *)
(* error 
FL_EXPORT void fl_replace_xyplot_point( FL_OBJECT * ob,
in declaration at line 6302 *)
    { Replace the value of a particular point in dataset setID,
     * where setID=0 is the first data set.
     * This routine is an extension of fl_replace_xyplot_point
     * which acts on the first dataset only.  }
(* error 
FL_EXPORT void fl_replace_xyplot_point_in_overlay( FL_OBJECT * ob,
in declaration at line 6313 *)
(* error 
FL_EXPORT void fl_get_xyplot_xmapping( FL_OBJECT * ob,
in declaration at line 6317 *)
(* error 
FL_EXPORT void fl_get_xyplot_ymapping( FL_OBJECT * ob,
in declaration at line 6321 *)
(* error 
FL_EXPORT void fl_set_xyplot_keys( FL_OBJECT  * ob,
in declaration at line 6327 *)
(* error 
FL_EXPORT void fl_set_xyplot_key( FL_OBJECT  * ob,
in declaration at line 6331 *)
(* error 
FL_EXPORT void fl_set_xyplot_key_position( FL_OBJECT * ob,
in declaration at line 6336 *)
(* error 
FL_EXPORT void fl_set_xyplot_key_font( FL_OBJECT * ob,
in declaration at line 6340 *)
(* error 
FL_EXPORT int fl_get_xyplot_numdata( FL_OBJECT * ob,
in declaration at line 6343 *)
    { The following two functions will be removed.
     * Use fl_set_object_l[size|style] for the functionalities  }
(* error 
FL_EXPORT void fl_set_xyplot_fontsize( FL_OBJECT * ob,
in declaration at line 6349 *)
(* error 
FL_EXPORT void fl_set_xyplot_fontstyle( FL_OBJECT * ob,
in declaration at line 6352 *)
(* error 
FL_EXPORT void fl_xyplot_s2w( FL_OBJECT * ob,
in declaration at line 6358 *)
(* error 
FL_EXPORT void fl_xyplot_w2s( FL_OBJECT * ob,
in declaration at line 6364 *)
(* error 
FL_EXPORT void fl_set_xyplot_xscale( FL_OBJECT * ob,
in declaration at line 6368 *)
(* error 
FL_EXPORT void fl_set_xyplot_yscale( FL_OBJECT * ob,
in declaration at line 6372 *)
(* error 
FL_EXPORT void fl_clear_xyplot( FL_OBJECT * ob );
in declaration at line 6374 *)
(* error 
FL_EXPORT void fl_set_xyplot_linewidth( FL_OBJECT * ob,
in declaration at line 6378 *)
(* error 
FL_EXPORT void fl_set_xyplot_xgrid( FL_OBJECT * ob,
in declaration at line 6381 *)
(* error 
FL_EXPORT void fl_set_xyplot_ygrid( FL_OBJECT * ob,
in declaration at line 6384 *)
(* error 
FL_EXPORT int fl_set_xyplot_grid_linestyle( FL_OBJECT * ob,
in declaration at line 6387 *)
(* error 
FL_EXPORT void fl_set_xyplot_alphaxtics( FL_OBJECT  * ob,
in declaration at line 6391 *)
(* error 
FL_EXPORT void fl_set_xyplot_alphaytics( FL_OBJECT  * ob,
in declaration at line 6395 *)
(* error 
FL_EXPORT void fl_set_xyplot_fixed_xaxis( FL_OBJECT  * ob,
in declaration at line 6399 *)
(* error 
FL_EXPORT void fl_set_xyplot_fixed_yaxis( FL_OBJECT  * ob,
in declaration at line 6403 *)
(* error 
FL_EXPORT int fl_interpolate( const float * wx,
in declaration at line 6411 *)
    type

      TFL_XYPLOT_SYMBOL = procedure (para1:PFL_OBJECT; para2:longint; para3:PFL_POINT; para4:longint; para5:longint; 
                    para6:longint);cdecl;
(* error 
FL_EXPORT FL_XYPLOT_SYMBOL fl_set_xyplot_symbol( FL_OBJECT        * ob,
(* error 
                                                 int                id,
(* error 
                                                 FL_XYPLOT_SYMBOL   symbol );
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
FL_EXPORT int fl_set_xyplot_mark_active( FL_OBJECT * ob,
in declaration at line 6425 *)
(* error 
FL_EXPORT void fl_get_xyplot_screen_area( FL_OBJECT * obj,
in declaration at line 6431 *)
(* error 
FL_EXPORT void fl_get_xyplot_world_area( FL_OBJECT * obj,
in declaration at line 6437 *)
(* error 
FL_EXPORT int fl_set_xyplot_log_minor_xtics( FL_OBJECT * obj,
in declaration at line 6440 *)
(* error 
FL_EXPORT int fl_set_xyplot_log_minor_ytics( FL_OBJECT * obj,
in declaration at line 6443 *)
(* error 
FL_EXPORT void fl_set_xyplot_mouse_buttons( FL_OBJECT    * obj,
in declaration at line 6446 *)
(* error 
FL_EXPORT void fl_get_xyplot_mouse_buttons( FL_OBJECT    * obj,
in declaration at line 6449 *)
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

(* error 
FL_EXPORT GC fl_gc_( void );
 in declarator_list *)
(* error 
FL_EXPORT GC fl_textgc_( void );
 in declarator_list *)
(* error 
FL_EXPORT int fl_fheight_( void );
in declaration at line 6466 *)
(* error 
FL_EXPORT int fl_fdesc_( void );
in declaration at line 6467 *)
(* error 
FL_EXPORT Window fl_cur_win_( void );
 in declarator_list *)
(* error 
FL_EXPORT XFontStruct * fl_cur_fs_( void );
 in declarator_list *)
(* error 
FL_EXPORT Display * fl_display_( void );
 in declarator_list *)
{$if ! defined FL_TRUE && ! defined FL_FALSE}

    const
      FL_FALSE = 0;      
      FL_TRUE =  not (FL_FALSE);      
{$endif}
{$if defined __cplusplus}
(* error 
}
{$endif}
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
