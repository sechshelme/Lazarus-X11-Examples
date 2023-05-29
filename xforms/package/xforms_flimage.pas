unit xforms_flimage;

interface

//{$linklib forms}
//{$linklib c}
//{$linklib m}

uses
  ctypes,
  x,xlib,
  xforms_forms;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

{
 *  This file is part of the XForms library package.
 *
 *  XForms is free software; you can redistribute it and/or modify it
 *  under the terms of the GNU Lesser General Public License as
 *  published by the Free Software Foundation; either version 2.1, or
 *  (at your option) any later version.
 *
 *  XForms is distributed in the hope that it will be useful, but
 *  WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 *  Lesser General Public License for more details.
 *
 *  You should have received a copy of the GNU Lesser General Public License
 *  along with XForms.  If not, see <http://www.gnu.org/licenses/>.
  }
{********************* crop here for forms.h ********************* }
{ Image related routines  }
{#endif }
{#ifndef extern }
{#define extern extern }
{#endif }
{ was #define dname(params) para_def_expr }
{ argument types are unknown }

function FL_RGB2GRAY(r,g,b : cint) : dword;

  Const
    FL_IMAGE_NONE = 0;
    FL_IMAGE_MONO = 1;
    FL_IMAGE_GRAY = 2;
    FL_IMAGE_CI = 4;
    FL_IMAGE_RGB = 8;
    FL_IMAGE_PACKED = 16;
    FL_IMAGE_GRAY16 = 32;
    FL_IMAGE_RGB16 = 64;
    FL_IMAGE_FLEX = 1023;
    FLIMAGE_NONE = FL_IMAGE_NONE;
    FLIMAGE_MONO = FL_IMAGE_MONO;
    FLIMAGE_GRAY = FL_IMAGE_GRAY;
    FLIMAGE_CI = FL_IMAGE_CI;
    FLIMAGE_RGB = FL_IMAGE_RGB;
    FLIMAGE_PACKED = FL_IMAGE_PACKED;
    FLIMAGE_GRAY16 = FL_IMAGE_GRAY16;
    FLIMAGE_RGB16 = FL_IMAGE_RGB16;
    FLIMAGE_FLEX = FL_IMAGE_FLEX;

type
  PFL_PCTYPE = ^TFL_PCTYPE;
  TFL_PCTYPE = byte;

const
  FL_PCBITS = 8;  
  FL_PCMAX = (1 shl FL_PCBITS)-1;  
{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   

function FL_PCCLAMP(a : cint) : cint;

type
  PFL_PACKED4 = ^TFL_PACKED4;
  TFL_PACKED4 = cuint;
  FL_PACKED = TFL_PACKED4;

const
  FL_RMASK = $000000ff;
  FL_RSHIFT = 0;  
  FL_GMASK = $0000ff00;  
  FL_GSHIFT = 8;  
  FL_BMASK = $00ff0000;  
  FL_BSHIFT = 16;  
  FL_AMASK = $ff000000;  
  FL_ASHIFT = 24;  

function FL_GETR(packed_ : cint) : cint;
function FL_GETG(packed_ : cint) : cint;
function FL_GETB(packed_ : cint) : cint;
function FL_GETA(packed_ : cint) : cint;

function FL_PACK3(r,g,b : cint) : cint;
function FL_PACK(r,g,b : cint) : cint;

function FL_PACK4(r,g,b,a : cint) : cint;

function FL_UNPACK(p,r,g,b : cint) : cint;
function FL_UNPACK3(p,r,g,b : cint) : cint;

{#define FL_UNPACK( p, r, g, b )  \ }
{    do  r = FL_GETR( p );       \ }
{         g = FL_GETG( p );       \ }
{         b = FL_GETB( p );       \ }
{     while ( 0 ) }
{#define FL_UNPACK4( p, r, g, b, a )  \ }
{    do  FL_UNPACK3( p, r, g, b );   \ }
{         a = FL_GETA( p );           \ }
{     while ( 0 ) }
//{$endif}
{ max colormap bits. 4096 entries  }

const
  FL_LUTBITS = 12;  
{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   

function FL_IsRGB(im : cint) : cint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function FL_IsPacked(im : cint) : cint;

  Const
    FLIMAGE_AUTOCOLOR = $7fffffff;
    FLIMAGE_BADCOLOR = FLIMAGE_AUTOCOLOR;

type
  PFL_WINDOW = ^TFL_WINDOW;
  TFL_WINDOW = TWindow;

  Pflimage_text_ = ^Tflimage_text_;
  Tflimage_text_ = record
      str : Pchar;
      len : cint;
      x : cint;
      y : cint;
      color : cuint;
      bcolor : cuint;
      nobk : cint;
      size : cint;
      style : cint;
      angle : cint;
      align : cint;
    end;

  TFLIMAGE_TEXT = Tflimage_text_;
  PFLIMAGE_TEXT = ^TFLIMAGE_TEXT;

  Pflimage_marker_ = ^Tflimage_marker_;
  Tflimage_marker_ = record
      name : Pchar;
      w : cint;
      h : cint;
      x : cint;
      y : cint;
      color : cuint;
      bcolor : cuint;
      angle : cint;
      fill : cint;
      thickness : cint;
      style : cint;
      display : pointer;
      gc : pointer;
      win : TFL_WINDOW;
      psdraw : Pchar;
    end;
  TFLIMAGE_MARKER = Tflimage_marker_;
  PFLIMAGE_MARKER = ^TFLIMAGE_MARKER;

const
  FLIMAGE_REPFREQ = $1f;  
//{$ifndef FL_RGB2PIXEL}
type
  PFL_RGB2PIXEL_ = ^TFL_RGB2PIXEL_;
  TFL_RGB2PIXEL_ = record
      rshift : cuint;
      rmask : cuint;
      rbits : cuint;
      gshift : cuint;
      gmask : cuint;
      gbits : cuint;
      bshift : cuint;
      bmask : cuint;
      bbits : cuint;
      bits_per_rgb : cint;
      colormap_size : cint;
    end;

  TFL_RGB2PIXEL = TFL_RGB2PIXEL_;
//{$endif}
type

  Pflimage_ = ^Tflimage_;
  Tflimage_ = record
      _type : cint;
      w : cint;
      h : cint;
      app_data : pointer;
      u_vdata : pointer;
      u_ldata : clong;
      red : ^Pbyte;
      green : ^Pbyte;
      blue : ^Pbyte;
      alpha : ^Pbyte;
      rgba : array[0..3] of ^Pbyte;
      ci : ^Pword;
      gray : ^Pword;
      packed_ : ^PFL_PACKED4;
      red16 : ^Pword;
      green16 : ^Pword;
      blue16 : ^Pword;
      alpha16 : ^Pword;
      ci8 : ^Pbyte;
      red_lut : Pcint;
      green_lut : Pcint;
      blue_lut : Pcint;
      alpha_lut : Pcint;
      lut : array[0..3] of Pcint;
      map_len : cint;
      colors : cint;
      gray_maxval : cint;
      ci_maxval : cint;
      rgb_maxval : cint;
      level : cint;
      wwidth : cint;
      wlut : Pword;
      wlut_len : cint;
      app_background : cint;
      comments : Pchar;
      comments_len : cint;
      available_type : cint;
      next : Pflimage_;
      sx : cint;
      sy : cint;
      sw : cint;
      sh : cint;
      wx : cint;
      wy : cint;
      modified : cint;
      display : function (para1:Pflimage_; para2:TFL_WINDOW):cint;cdecl;
      double_buffer : cint;
      sxd : cint;
      syd : cint;
      swd : cint;
      shd : cint;
      wxd : cint;
      wyd : cint;
      fmt_name : Pchar;
      text : PFLIMAGE_TEXT;
      ntext : cint;
      max_text : cint;
      dont_display_text : cint;
      display_text : procedure (para1:Pflimage_);cdecl;
      free_text : procedure (para1:Pflimage_);cdecl;
      marker : PFLIMAGE_MARKER;
      nmarkers : cint;
      max_markers : cint;
      dont_display_marker : cint;
      display_markers : procedure (para1:Pflimage_);cdecl;
      free_markers : procedure (para1:Pflimage_);cdecl;
      pmin : cdouble;
      pmax : cdouble;
      poffset : cdouble;
      pscale : cdouble;
      xdist_offset : cdouble;
      xdist_scale : cdouble;
      ydist_offset : cdouble;
      ydist_scale : cdouble;
      infile : Pchar;
      outfile : Pchar;
      foffset : clong;
      original_type : cint;
      pre_write : function (para1:Pflimage_):cint;cdecl;
      post_write : function (para1:Pflimage_):cint;cdecl;
      subx : cint;
      suby : cint;
      subw : cint;
      subh : cint;
      sub_shape : cint;
      fill_color : cuint;
      force_convert : cint;
      llut : array[0..2] of Pcint;
      llut_len : cint;
      hist : array[0..3] of Pcuint;
      total : cint;
      completed : cint;
      visual_cue : function (para1:Pflimage_; para2:Pchar):cint;cdecl;
      error_message : procedure (para1:Pflimage_; para2:Pchar);cdecl;
      error_code : cint;
      display_type : cint;
      pixels : ^Pword;
      image_spec : pointer;
      xdisplay : pointer;
      tran_rgb : cint;
      tran_index : cint;
      matr : cint;
      matc : cint;
      more : cint;
      current_frame : cint;
      total_frames : cint;
      next_frame : function (para1:Pflimage_):cint;cdecl;
      prev_frame : function (para1:Pflimage_):cint;cdecl;
      random_frame : function (para1:Pflimage_; para2:cint):cint;cdecl;
      rewind_frame : function (para1:Pflimage_):cint;cdecl;
      cleanup : procedure (para1:Pflimage_);cdecl;
      stop_looping : cint;
      fpin : PFILE;
      fpout : PFILE;
      image_io : pointer;
      io_spec : pointer;
      spec_size : cint;
      depth : cint;
      vclass : cint;
      visual : pointer;
      xcolormap : culong;
      rgb2p : TFL_RGB2PIXEL;
      ximage : pointer;
      win : TFL_WINDOW;
      gc : pointer;
      sdepth : cint;
      textgc : pointer;
      markergc : pointer;
      extra_io_info : pointer;
      pixmap : culong;
      pixmap_w : cint;
      pixmap_h : cint;
      pixmap_depth : cint;
      isPixmap : cint;
      setup : TFLIMAGESETUP;
      info : Pchar;
    end;
  TFL_IMAGE = Tflimage_;
  PFL_IMAGE = ^TFL_IMAGE;
{ some configuration stuff  }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
{ internal use  }

  Pflimage_setup_ = ^Tflimage_setup_;
  Tflimage_setup_ = record
      app_data : pointer;
      visual_cue : function (para1:PFL_IMAGE; para2:Pchar):cint;cdecl;
      error_message : procedure (para1:PFL_IMAGE; para2:Pchar);cdecl;
      display : function (para1:PFL_IMAGE; para2:cuint):cint;cdecl;
      rgbfile : Pchar;
      do_not_clear : cint;
      xdisplay : pointer;
      max_frames : cint;
      delay : cint;
      no_auto_extension : cint;
      report_frequency : cint;
      double_buffer : cint;
      trailblazer : cuint;
      header_info : cint;
    end;
  PFLIMAGESETUP = ^TFLIMAGESETUP;
  TFLIMAGESETUP = Pflimage_setup_;

  TFLIMAGE_SETUP = Tflimage_setup_;
  PFLIMAGE_SETUP = ^TFLIMAGE_SETUP;

procedure flimage_setup(para1:PFLIMAGE_SETUP);cdecl;external;

type
  Pblablabla = ^Tblablabla;
  Tblablabla =  cint;
  Const
    FLIMAGE_ERR_NONE = 0;
    FLIMAGE_ERR_ALLOC = -(50);
    FLIMAGE_ERR_INVALID = (-(50))+1;
    FLIMAGE_ERR_ARGUMENT = (-(50))+2;
    FLIMAGE_ERR_FILE = (-(50))+3;
    FLIMAGE_ERR_INTERNAL = (-(50))+4;
    FLIMAGE_ERR_UNKNOWN = (-(50))+5;
;
type

  TFLIMAGE_Identify = function (para1:PFILE):cint;cdecl;

  TFLIMAGE_Description = function (para1:PFL_IMAGE):cint;cdecl;

  TFLIMAGE_Read_Pixels = function (para1:PFL_IMAGE):cint;cdecl;

  TFLIMAGE_Write_Image = function (para1:PFL_IMAGE):cint;cdecl;
{ Basic IO routines  }
(* Const before type ignored *)

function flimage_load(file:Pchar):PFL_IMAGE;cdecl;external;
function flimage_read(im:PFL_IMAGE):PFL_IMAGE;cdecl;external;
(* Const before type ignored *)
(* Const before type ignored *)
function flimage_dump(para1:PFL_IMAGE; para2:Pchar; para3:Pchar):cint;cdecl;external;
function flimage_close(para1:PFL_IMAGE):cint;cdecl;external;
function flimage_alloc:PFL_IMAGE;cdecl;external;
function flimage_getmem(para1:PFL_IMAGE):cint;cdecl;external;
(* Const before type ignored *)
function flimage_is_supported(para1:Pchar):cint;cdecl;external;
(* Const before abstract_declarator ignored *)
(* Const before type ignored *)
function flimage_description_via_filter(para1:PFL_IMAGE; para2:PPchar; para3:Pchar; para4:cint):cint;cdecl;external;
(* Const before abstract_declarator ignored *)
(* Const before abstract_declarator ignored *)
function flimage_write_via_filter(para1:PFL_IMAGE; para2:PPchar; para3:PPchar; para4:cint):cint;cdecl;external;
function flimage_alloc:PFL_IMAGE;cdecl;external;
procedure flimage_free(para1:PFL_IMAGE);cdecl;external;
function flimage_display(para1:PFL_IMAGE; para2:TWindow):cint;cdecl;external;
function flimage_sdisplay(para1:PFL_IMAGE; para2:TWindow):cint;cdecl;external;
function flimage_convert(para1:PFL_IMAGE; para2:cint; para3:cint):cint;cdecl;external;
(* Const before type ignored *)
function flimage_type_name(_type:cint):Pchar;cdecl;external;
(* Const before type ignored *)
function flimage_add_text(para1:PFL_IMAGE; para2:Pchar; para3:cint; para4:cint; para5:cint; 
           para6:cuint; para7:cuint; para8:cint; para9:cdouble; para10:cdouble; 
           para11:cint):cint;cdecl;external;
(* Const before type ignored *)
function flimage_add_text_struct(para1:PFL_IMAGE; para2:PFLIMAGE_TEXT):cint;cdecl;external;
procedure flimage_delete_all_text(para1:PFL_IMAGE);cdecl;external;
(* Const before type ignored *)
function flimage_add_marker(para1:PFL_IMAGE; para2:Pchar; para3:cdouble; para4:cdouble; para5:cdouble; 
           para6:cdouble; para7:cint; para8:cint; para9:cint; para10:cuint; 
           para11:cuint):cint;cdecl;external;
(* Const before type ignored *)
function flimage_add_marker_struct(para1:PFL_IMAGE; para2:PFLIMAGE_MARKER):cint;cdecl;external;
(* Const before type ignored *)
(* Const before type ignored *)
function flimage_define_marker(para1:Pchar; para2:procedure (para1:PFLIMAGE_MARKER); para3:Pchar):cint;cdecl;external;
procedure flimage_delete_all_markers(para1:PFL_IMAGE);cdecl;external;
function flimage_render_annotation(para1:PFL_IMAGE; para2:TFL_WINDOW):cint;cdecl;external;
(* Const before type ignored *)
procedure flimage_error(para1:PFL_IMAGE; para2:Pchar; args:array of const);cdecl;external;
procedure flimage_error(para1:PFL_IMAGE; para2:Pchar);cdecl;external;
{ Built-in format supports  }
procedure flimage_enable_pnm;cdecl;external;
function flimage_set_fits_bits(para1:cint):cint;cdecl;external;
{ Output options  }
type
  PFLIMAGE_JPEG_OPTION = ^TFLIMAGE_JPEG_OPTION;
  TFLIMAGE_JPEG_OPTION = record
      quality : cint;
      smoothing : cint;
    end;

procedure flimage_jpeg_output_options(para1:PFLIMAGE_JPEG_OPTION);cdecl;external;
procedure flimage_pnm_output_options(para1:cint);cdecl;external;
procedure flimage_gif_output_options(para1:cint);cdecl;external;
function flimage_ps_options:PFLPS_CONTROL;cdecl;external;
const
  flimage_jpeg_options = flimage_jpeg_output_options;  
  flimage_pnm_options = flimage_pnm_output_options;  
  flimage_gif_options = flimage_gif_output_options;  
type
  Pblablabla = ^Tblablabla;
  Tblablabla =  cint;
  Const
    FLIMAGE_WRITABLE = FL_WRITE;
    FLIMAGE_READABLE = FL_READ;
;
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
type
  PFLIMAGE_FORMAT_INFO = ^TFLIMAGE_FORMAT_INFO;
  TFLIMAGE_FORMAT_INFO = record
      formal_name : Pchar;
      short_name : Pchar;
      extension : Pchar;
      _type : cint;
      read_write : cint;
      annotation : cint;
    end;

function flimage_get_number_of_formats:cint;cdecl;external;
(* Const before type ignored *)
function flimage_get_format_info(para1:cint):PFLIMAGE_FORMAT_INFO;cdecl;external;
function fl_get_matrix(para1:cint; para2:cint; para3:cuint):pointer;cdecl;external;
function fl_make_matrix(para1:cint; para2:cint; para3:cuint; para4:pointer):pointer;cdecl;external;
procedure fl_free_matrix(para1:pointer);cdecl;external;
{ This function is retained for compatibility reasons only.
   It returns 1 always.  }
(* Const before type ignored *)
function fl_init_RGBdatabase(para1:Pchar):cint;cdecl;external;
(* Const before type ignored *)
function fl_lookup_RGBcolor(para1:Pchar; para2:Pcint; para3:Pcint; para4:Pcint):cint;cdecl;external;
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
function flimage_add_format(para1:Pchar; para2:Pchar; para3:Pchar; para4:cint; para5:TFLIMAGE_Identify; 
           para6:TFLIMAGE_Description; para7:TFLIMAGE_Read_Pixels; para8:TFLIMAGE_Write_Image):cint;cdecl;external;
procedure flimage_set_annotation_support(para1:cint; para2:cint);cdecl;external;
function flimage_getcolormap(para1:PFL_IMAGE):cint;cdecl;external;
procedure fl_select_mediancut_quantizer;cdecl;external;
{ Simple image processing routines  }
{#define FLIMAGE_SHARPEN        ( ( int** )( -1 ) ) }
{#define FLIMAGE_SMOOTH         ( ( int** )( -2 ) ) }
const
  FL_SMOOTH = FLIMAGE_SMOOTH;  
  FL_SHARPEN = FLIMAGE_SHARPEN;  
{ scale with no subpixel sampling  }
{ scale with  subpixel sampling  }
{ center warped image. default   }
{ flush right the warped image   }
{ fit the size  }
type
  Pblablabla = ^Tblablabla;
  Tblablabla =  cint;
  Const
    FLIMAGE_NOSUBPIXEL = 0;
    FLIMAGE_SUBPIXEL = 1;
    FLIMAGE_CENTER = 2;
    FLIMAGE_RIGHT = 8;
    FLIMAGE_ASPECT = 32;
    FLIMAGE_NOCENTER = FL_ALIGN_LEFT_TOP;
;

function flimage_convolve(para1:PFL_IMAGE; para2:PPcint; para3:cint; para4:cint):cint;cdecl;external;
function flimage_convolvea(para1:PFL_IMAGE; para2:Pcint; para3:cint; para4:cint):cint;cdecl;external;
function flimage_tint(para1:PFL_IMAGE; para2:cuint; para3:cdouble):cint;cdecl;external;
function flimage_rotate(para1:PFL_IMAGE; para2:cint; para3:cint):cint;cdecl;external;
function flimage_flip(para1:PFL_IMAGE; para2:cint):cint;cdecl;external;
function flimage_scale(para1:PFL_IMAGE; para2:cint; para3:cint; para4:cint):cint;cdecl;external;
function flimage_warp(para1:PFL_IMAGE; para2:array[0..1] of Psingle; para3:cint; para4:cint; para5:cint):cint;cdecl;external;
function flimage_autocrop(para1:PFL_IMAGE; para2:cuint):cint;cdecl;external;
function flimage_get_autocrop(para1:PFL_IMAGE; para2:cuint; para3:Pcint; para4:Pcint; para5:Pcint; 
           para6:Pcint):cint;cdecl;external;
function flimage_crop(para1:PFL_IMAGE; para2:cint; para3:cint; para4:cint; para5:cint):cint;cdecl;external;
function flimage_replace_pixel(para1:PFL_IMAGE; para2:cuint; para3:cuint):cint;cdecl;external;
function flimage_transform_pixels(para1:PFL_IMAGE; para2:Pcint; para3:Pcint; para4:Pcint):cint;cdecl;external;
function flimage_windowlevel(para1:PFL_IMAGE; para2:cint; para3:cint):cint;cdecl;external;
function flimage_enhance(para1:PFL_IMAGE; para2:cint):cint;cdecl;external;
function flimage_from_pixmap(para1:PFL_IMAGE; para2:TPixmap):cint;cdecl;external;
function flimage_to_pixmap(para1:PFL_IMAGE; para2:TFL_WINDOW):TPixmap;cdecl;external;
function flimage_dup(para1:PFL_IMAGE):PFL_IMAGE;cdecl;external;
{ Miscellaneous prototypes  }
(* Const before type ignored *)
function fl_object_ps_dump(para1:PFL_OBJECT; para2:Pchar):cint;cdecl;external;
(* Const before type ignored *)
procedure flimage_add_comments(para1:PFL_IMAGE; para2:Pchar; para3:cint);cdecl;external;
function flimage_color_to_pixel(para1:PFL_IMAGE; para2:cint; para3:cint; para4:cint; para5:Pcint):cuint;cdecl;external;
function flimage_combine(para1:PFL_IMAGE; para2:PFL_IMAGE; para3:cdouble):PFL_IMAGE;cdecl;external;
(* Const before type ignored *)
(* Const before type ignored *)
function flimage_define_marker(para1:Pchar; para2:procedure (para1:PFLIMAGE_MARKER); para3:Pchar):cint;cdecl;external;
procedure flimage_display_markers(para1:PFL_IMAGE);cdecl;external;
function flimage_dup_(para1:PFL_IMAGE; para2:cint):PFL_IMAGE;cdecl;external;
procedure flimage_enable_bmp;cdecl;external;
procedure flimage_enable_fits;cdecl;external;
procedure flimage_enable_genesis;cdecl;external;
procedure flimage_enable_gif;cdecl;external;
procedure flimage_enable_gzip;cdecl;external;
procedure flimage_enable_jpeg;cdecl;external;
procedure flimage_enable_png;cdecl;external;
procedure flimage_enable_ps;cdecl;external;
procedure flimage_enable_sgi;cdecl;external;
procedure flimage_enable_tiff;cdecl;external;
procedure flimage_enable_xbm;cdecl;external;
procedure flimage_enable_xpm;cdecl;external;
procedure flimage_enable_xwd;cdecl;external;
procedure flimage_free_ci(para1:PFL_IMAGE);cdecl;external;
procedure flimage_free_gray(para1:PFL_IMAGE);cdecl;external;
procedure flimage_free_linearlut(para1:PFL_IMAGE);cdecl;external;
procedure flimage_free_rgb(para1:PFL_IMAGE);cdecl;external;
procedure flimage_freemem(para1:PFL_IMAGE);cdecl;external;
function flimage_get_closest_color_from_map(para1:PFL_IMAGE; para2:cuint):cint;cdecl;external;
function flimage_get_linearlut(para1:PFL_IMAGE):cint;cdecl;external;
procedure flimage_invalidate_pixels(para1:PFL_IMAGE);cdecl;external;
(* Const before type ignored *)
function flimage_open(para1:Pchar):PFL_IMAGE;cdecl;external;
function flimage_read_annotation(para1:PFL_IMAGE):cint;cdecl;external;
procedure flimage_replace_image(para1:PFL_IMAGE; para2:cint; para3:cint; para4:pointer; para5:pointer; 
            para6:pointer);cdecl;external;
function flimage_swapbuffer(para1:PFL_IMAGE):cint;cdecl;external;
function flimage_to_ximage(para1:PFL_IMAGE; para2:TFL_WINDOW; para3:PXWindowAttributes):cint;cdecl;external;
function flimage_write_annotation(para1:PFL_IMAGE):cint;cdecl;external;
procedure flps_apply_gamma(para1:single);cdecl;external;
procedure flps_arc(para1:cint; para2:cint; para3:cint; para4:cint; para5:cint; 
            para6:cint; para7:TFL_COLOR);cdecl;external;
procedure flps_circ(para1:cint; para2:cint; para3:cint; para4:cint; para5:TFL_COLOR);cdecl;external;
procedure flps_color(col:TFL_COLOR);cdecl;external;
procedure flps_draw_box(para1:cint; para2:cint; para3:cint; para4:cint; para5:cint; 
            para6:TFL_COLOR; para7:cint);cdecl;external;
procedure flps_draw_checkbox(para1:cint; para2:cint; para3:cint; para4:cint; para5:cint; 
            para6:TFL_COLOR; para7:cint);cdecl;external;
procedure flps_draw_frame(para1:cint; para2:cint; para3:cint; para4:cint; para5:cint; 
            para6:TFL_COLOR; para7:cint);cdecl;external;
(* Const before type ignored *)
function flps_draw_symbol(para1:Pchar; para2:cint; para3:cint; para4:cint; para5:cint; 
           para6:TFL_COLOR):cint;cdecl;external;
procedure flps_draw_tbox(para1:cint; para2:cint; para3:cint; para4:cint; para5:cint; 
            para6:TFL_COLOR; para7:cint);cdecl;external;
(* Const before type ignored *)
procedure flps_draw_text(para1:cint; para2:cint; para3:cint; para4:cint; para5:cint; 
            para6:TFL_COLOR; para7:cint; para8:cint; para9:Pchar);cdecl;external;
(* Const before type ignored *)
procedure flps_draw_text_beside(para1:cint; para2:cint; para3:cint; para4:cint; para5:cint; 
            para6:TFL_COLOR; para7:cint; para8:cint; para9:Pchar);cdecl;external;
(* Const before type ignored *)
procedure flps_emit_header(para1:Pchar; para2:cint; para3:cint; para4:cint; para5:cint; 
            para6:cint);cdecl;external;
procedure flps_emit_prolog;cdecl;external;
function flps_get_gray255(para1:TFL_COLOR):cint;cdecl;external;
function flps_get_linestyle:cint;cdecl;external;
function flps_get_linewidth:cint;cdecl;external;
(* Const before type ignored *)
function flps_get_namedcolor(para1:Pchar):TFL_COLOR;cdecl;external;
function flps_init:PFLPS_CONTROL;cdecl;external;
procedure flps_invalidate_color_cache;cdecl;external;
procedure flps_invalidate_font_cache;cdecl;external;
procedure flps_invalidate_linewidth_cache;cdecl;external;
procedure flps_invalidate_symbol_cache;cdecl;external;
procedure flps_line(para1:cint; para2:cint; para3:cint; para4:cint; para5:TFL_COLOR);cdecl;external;
procedure flps_lines(para1:PFL_POINT; para2:cint; para3:TFL_COLOR);cdecl;external;
procedure flps_linestyle(para1:cint);cdecl;external;
procedure flps_linewidth(para1:cint);cdecl;external;
(* Const before type ignored *)
procedure flps_log(para1:Pchar);cdecl;external;
(* Const before type ignored *)
procedure flps_output(para1:Pchar; args:array of const);cdecl;external;
procedure flps_output(para1:Pchar);cdecl;external;
procedure flps_oval(para1:cint; para2:cint; para3:cint; para4:cint; para5:cint; 
            para6:TFL_COLOR);cdecl;external;
procedure flps_pieslice(para1:cint; para2:cint; para3:cint; para4:cint; para5:cint; 
            para6:cint; para7:cint; para8:TFL_COLOR);cdecl;external;
procedure flps_poly(para1:cint; para2:PFL_POINT; para3:cint; para4:TFL_COLOR);cdecl;external;
procedure flps_rectangle(para1:cint; para2:cint; para3:cint; para4:cint; para5:cint; 
            para6:TFL_COLOR);cdecl;external;
procedure flps_reset_cache;cdecl;external;
procedure flps_reset_linewidth;cdecl;external;
procedure flps_restore_flps;cdecl;external;
procedure flps_rgbcolor(para1:cint; para2:cint; para3:cint);cdecl;external;
procedure flps_roundrectangle(para1:cint; para2:cint; para3:cint; para4:cint; para5:cint; 
            para6:TFL_COLOR);cdecl;external;
procedure flps_set_clipping(para1:cint; para2:cint; para3:cint; para4:cint);cdecl;external;
procedure flps_set_font(para1:cint; para2:cint);cdecl;external;
procedure flps_unset_clipping;cdecl;external;

implementation

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
function FL_RGB2GRAY(r,g,b : cint) : cuint;
begin
  FL_RGB2GRAY:=cuint((((78*(Tr(+(150))))*(Tg(+(28))))*b) shr 8);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function FL_PCCLAMP(a : cint) : cint;
var
   if_local1, if_local2 : cint;
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
function FL_GETR(packed : cint) : Tpacked;
begin
  FL_GETR:=Tpacked(@(FL_RMASK));
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function FL_GETG(packed : cint) : cint;
begin
  FL_GETG:=(packed shr FL_GSHIFT) and FL_PCMAX;
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function FL_GETB(packed : cint) : cint;
begin
  FL_GETB:=(packed shr FL_BSHIFT) and FL_PCMAX;
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function FL_GETA(packed : cint) : cint;
begin
  FL_GETA:=(packed shr FL_ASHIFT) and FL_PCMAX;
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function FL_PACK3(r,g,b : cint) : cint;
begin
  FL_PACK3:=((r shl FL_RSHIFT) or (g shl FL_GSHIFT)) or (b shl FL_BSHIFT);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function FL_PACK4(r,g,b,a : cint) : cint;
begin
  FL_PACK4:=(FL_PACK3(r,g,b)) or (a shl FL_ASHIFT);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function FL_IsRGB(im : cint) : cint;
begin
  FL_IsRGB:=(im^._type)=FL_IMAGE_RGB;
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function FL_IsPacked(im : cint) : cint;
begin
  FL_IsPacked:=(im^._type)=FL_IMAGE_PACKED;
end;


end.
