
unit Xrender;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xrender.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xrender.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xrender.pp
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
PDisplay  = ^Display;
Plongint  = ^longint;
Psmallint  = ^smallint;
PXAnimCursor  = ^XAnimCursor;
PXCircle  = ^XCircle;
PXConicalGradient  = ^XConicalGradient;
PXDouble  = ^XDouble;
PXFilters  = ^XFilters;
PXFixed  = ^XFixed;
PXGlyphElt16  = ^XGlyphElt16;
PXGlyphElt32  = ^XGlyphElt32;
PXGlyphElt8  = ^XGlyphElt8;
PXGlyphInfo  = ^XGlyphInfo;
PXIndexValue  = ^XIndexValue;
PXLinearGradient  = ^XLinearGradient;
PXLineFixed  = ^XLineFixed;
PXPointDouble  = ^XPointDouble;
PXPointFixed  = ^XPointFixed;
PXRadialGradient  = ^XRadialGradient;
PXRenderColor  = ^XRenderColor;
PXRenderDirectFormat  = ^XRenderDirectFormat;
PXRenderPictFormat  = ^XRenderPictFormat;
PXRenderPictureAttributes  = ^XRenderPictureAttributes;
PXSpanFix  = ^XSpanFix;
PXTransform  = ^XTransform;
PXTrap  = ^XTrap;
PXTrapezoid  = ^XTrapezoid;
PXTriangle  = ^XTriangle;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XRENDER_H_}
{$define _XRENDER_H_}
{$include <X11/Xlib.h>}
{$include <X11/Xfuncproto.h>}
{$include <X11/Xosdefs.h>}
{$include <X11/Xutil.h>}
{$include <X11/extensions/render.h>}
type
  PXRenderDirectFormat = ^TXRenderDirectFormat;
  TXRenderDirectFormat = record
      red : smallint;
      redMask : smallint;
      green : smallint;
      greenMask : smallint;
      blue : smallint;
      blueMask : smallint;
      alpha : smallint;
      alphaMask : smallint;
    end;

  PXRenderPictFormat = ^TXRenderPictFormat;
  TXRenderPictFormat = record
      id : TPictFormat;
      _type : longint;
      depth : longint;
      direct : TXRenderDirectFormat;
      colormap : TColormap;
    end;

const
  PictFormatID = 1 shl 0;  
  PictFormatType = 1 shl 1;  
  PictFormatDepth = 1 shl 2;  
  PictFormatRed = 1 shl 3;  
  PictFormatRedMask = 1 shl 4;  
  PictFormatGreen = 1 shl 5;  
  PictFormatGreenMask = 1 shl 6;  
  PictFormatBlue = 1 shl 7;  
  PictFormatBlueMask = 1 shl 8;  
  PictFormatAlpha = 1 shl 9;  
  PictFormatAlphaMask = 1 shl 10;  
  PictFormatColormap = 1 shl 11;  
type
  PXRenderPictureAttributes = ^TXRenderPictureAttributes;
  TXRenderPictureAttributes = record
      _repeat : longint;
      alpha_map : TPicture;
      alpha_x_origin : longint;
      alpha_y_origin : longint;
      clip_x_origin : longint;
      clip_y_origin : longint;
      clip_mask : TPixmap;
      graphics_exposures : TBool;
      subwindow_mode : longint;
      poly_edge : longint;
      poly_mode : longint;
      dither : TAtom;
      component_alpha : TBool;
    end;

  PXRenderColor = ^TXRenderColor;
  TXRenderColor = record
      red : word;
      green : word;
      blue : word;
      alpha : word;
    end;

  PXGlyphInfo = ^TXGlyphInfo;
  TXGlyphInfo = record
      width : word;
      height : word;
      x : smallint;
      y : smallint;
      xOff : smallint;
      yOff : smallint;
    end;
(* error 
    _Xconst char	    *chars;
 in declarator_list *)

  PXGlyphElt8 = ^TXGlyphElt8;
  TXGlyphElt8 = record
      glyphset : TGlyphSet;
;
      nchars : longint;
      xOff : longint;
      yOff : longint;
    end;
(* error 
    _Xconst unsigned short  *chars;
 in declarator_list *)

  PXGlyphElt16 = ^TXGlyphElt16;
  TXGlyphElt16 = record
      glyphset : TGlyphSet;
;
      nchars : longint;
      xOff : longint;
      yOff : longint;
    end;
(* error 
    _Xconst unsigned int    *chars;
 in declarator_list *)

  PXGlyphElt32 = ^TXGlyphElt32;
  TXGlyphElt32 = record
      glyphset : TGlyphSet;
;
      nchars : longint;
      xOff : longint;
      yOff : longint;
    end;

  PXDouble = ^TXDouble;
  TXDouble = Tdouble;

  PXPointDouble = ^TXPointDouble;
  TXPointDouble = record
      x : TXDouble;
      y : TXDouble;
    end;

function XDoubleToFixed(f : longint) : TXFixed;

function XFixedToDouble(f : longint) : longint;

type
  PXFixed = ^TXFixed;
  TXFixed = longint;

  PXPointFixed = ^TXPointFixed;
  TXPointFixed = record
      x : TXFixed;
      y : TXFixed;
    end;

  PXLineFixed = ^TXLineFixed;
  TXLineFixed = record
      p1 : TXPointFixed;
      p2 : TXPointFixed;
    end;

  PXTriangle = ^TXTriangle;
  TXTriangle = record
      p1 : TXPointFixed;
      p2 : TXPointFixed;
      p3 : TXPointFixed;
    end;

  PXCircle = ^TXCircle;
  TXCircle = record
      x : TXFixed;
      y : TXFixed;
      radius : TXFixed;
    end;

  PXTrapezoid = ^TXTrapezoid;
  TXTrapezoid = record
      top : TXFixed;
      bottom : TXFixed;
      left : TXLineFixed;
      right : TXLineFixed;
    end;

  PXTransform = ^TXTransform;
  TXTransform = record
      matrix : array[0..2] of array[0..2] of TXFixed;
    end;

  PXFilters = ^TXFilters;
  TXFilters = record
      nfilter : longint;
      filter : ^Pchar;
      nalias : longint;
      alias : Psmallint;
    end;

  PXIndexValue = ^TXIndexValue;
  TXIndexValue = record
      pixel : dword;
      red : word;
      green : word;
      blue : word;
      alpha : word;
    end;

  PXAnimCursor = ^TXAnimCursor;
  TXAnimCursor = record
      cursor : TCursor;
      delay : dword;
    end;

  PXSpanFix = ^TXSpanFix;
  TXSpanFix = record
      left : TXFixed;
      right : TXFixed;
      y : TXFixed;
    end;

  PXTrap = ^TXTrap;
  TXTrap = record
      top : TXSpanFix;
      bottom : TXSpanFix;
    end;

  PXLinearGradient = ^TXLinearGradient;
  TXLinearGradient = record
      p1 : TXPointFixed;
      p2 : TXPointFixed;
    end;

  PXRadialGradient = ^TXRadialGradient;
  TXRadialGradient = record
      inner : TXCircle;
      outer : TXCircle;
    end;


  PXConicalGradient = ^TXConicalGradient;
  TXConicalGradient = record
      center : TXPointFixed;
      angle : TXFixed;
    end;
(* error 
Bool XRenderQueryExtension (Display *dpy, int *event_basep, int *error_basep);
(* error 
Bool XRenderQueryExtension (Display *dpy, int *event_basep, int *error_basep);
(* error 
Bool XRenderQueryExtension (Display *dpy, int *event_basep, int *error_basep);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

function XRenderQueryVersion(dpy:PDisplay; major_versionp:Plongint; minor_versionp:Plongint):TStatus;cdecl;external;
function XRenderQueryFormats(dpy:PDisplay):TStatus;cdecl;external;
function XRenderQuerySubpixelOrder(dpy:PDisplay; screen:longint):longint;cdecl;external;
function XRenderSetSubpixelOrder(dpy:PDisplay; screen:longint; subpixel:longint):TBool;cdecl;external;
(* error 
XRenderFindVisualFormat (Display *dpy, _Xconst Visual *visual);
 in declarator_list *)
(* error 
		   _Xconst XRenderPictFormat	*templ,
(* error 
		   int				count);
 in declarator_list *)
 in declarator_list *)
const
  PictStandardARGB32 = 0;  
  PictStandardRGB24 = 1;  
  PictStandardA8 = 2;  
  PictStandardA4 = 3;  
  PictStandardA1 = 4;  
  PictStandardNUM = 5;  

function XRenderFindStandardFormat(dpy:PDisplay; format:longint):PXRenderPictFormat;cdecl;external;
(* error 
			    _Xconst XRenderPictFormat	*format,
(* error 
			    int				*num);
 in declarator_list *)
 in declarator_list *)
(* error 
		      _Xconst XRenderPictFormat		*format,
(* error 
		      unsigned long			valuemask,
(* error 
		      _Xconst XRenderPictureAttributes	*attributes);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
		      _Xconst XRenderPictureAttributes  *attributes);
 in declarator_list *)
(* error 
				 _Xconst XRectangle *rects,
(* error 
				 int		    n);
 in declarator_list *)
 in declarator_list *)
procedure XRenderSetPictureClipRegion(dpy:PDisplay; picture:TPicture; r:TRegion);cdecl;external;
procedure XRenderSetPictureTransform(dpy:PDisplay; picture:TPicture; transform:PXTransform);cdecl;external;
procedure XRenderFreePicture(dpy:PDisplay; picture:TPicture);cdecl;external;
procedure XRenderComposite(dpy:PDisplay; op:longint; src:TPicture; mask:TPicture; dst:TPicture; 
            src_x:longint; src_y:longint; mask_x:longint; mask_y:longint; dst_x:longint; 
            dst_y:longint; width:dword; height:dword);cdecl;external;
(* error 
XRenderCreateGlyphSet (Display *dpy, _Xconst XRenderPictFormat *format);
 in declarator_list *)
function XRenderReferenceGlyphSet(dpy:PDisplay; existing:TGlyphSet):TGlyphSet;cdecl;external;
procedure XRenderFreeGlyphSet(dpy:PDisplay; glyphset:TGlyphSet);cdecl;external;
(* error 
		  _Xconst Glyph		*gids,
(* error 
		  _Xconst XGlyphInfo	*glyphs,
(* error 
		  int			nglyphs,
(* error 
		  _Xconst char		*images,
(* error 
		  int			nbyte_images);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
		   _Xconst Glyph    *gids,
(* error 
		   int		    nglyphs);
 in declarator_list *)
 in declarator_list *)
(* error 
			 _Xconst XRenderPictFormat  *maskFormat,
(* error 
			 GlyphSet		    glyphset,
(* error 
			 int			    xSrc,
(* error 
			 int			    ySrc,
(* error 
			 int			    xDst,
(* error 
			 int			    yDst,
(* error 
			 _Xconst char		    *string,
(* error 
			 int			    nchar);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
			  _Xconst XRenderPictFormat *maskFormat,
(* error 
			  GlyphSet		    glyphset,
(* error 
			  int			    xSrc,
(* error 
			  int			    ySrc,
(* error 
			  int			    xDst,
(* error 
			  int			    yDst,
(* error 
			  _Xconst unsigned short    *string,
(* error 
			  int			    nchar);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
			  _Xconst XRenderPictFormat *maskFormat,
(* error 
			  GlyphSet		    glyphset,
(* error 
			  int			    xSrc,
(* error 
			  int			    ySrc,
(* error 
			  int			    xDst,
(* error 
			  int			    yDst,
(* error 
			  _Xconst unsigned int	    *string,
(* error 
			  int			    nchar);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
		       _Xconst XRenderPictFormat    *maskFormat,
(* error 
		       int			    xSrc,
(* error 
		       int			    ySrc,
(* error 
		       int			    xDst,
(* error 
		       int			    yDst,
(* error 
		       _Xconst XGlyphElt8	    *elts,
(* error 
		       int			    nelt);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
			_Xconst XRenderPictFormat   *maskFormat,
(* error 
			int			    xSrc,
(* error 
			int			    ySrc,
(* error 
			int			    xDst,
(* error 
			int			    yDst,
(* error 
			_Xconst XGlyphElt16	    *elts,
(* error 
			int			    nelt);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
			_Xconst XRenderPictFormat   *maskFormat,
(* error 
			int			    xSrc,
(* error 
			int			    ySrc,
(* error 
			int			    xDst,
(* error 
			int			    yDst,
(* error 
			_Xconst XGlyphElt32	    *elts,
(* error 
			int			    nelt);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
		      _Xconst XRenderColor  *color,
(* error 
		      int		    x,
(* error 
		      int		    y,
(* error 
		      unsigned int	    width,
(* error 
		      unsigned int	    height);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
		       _Xconst XRenderColor *color,
(* error 
		       _Xconst XRectangle   *rectangles,
(* error 
		       int		    n_rects);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
			    _Xconst XRenderPictFormat	*maskFormat,
(* error 
			    int			xSrc,
(* error 
			    int			ySrc,
(* error 
			    _Xconst XTrapezoid	*traps,
(* error 
			    int			ntrap);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
			    _Xconst XRenderPictFormat	*maskFormat,
(* error 
			   int			xSrc,
(* error 
			   int			ySrc,
(* error 
			   _Xconst XTriangle	*triangles,
(* error 
			   int			ntriangle);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
			    _Xconst XRenderPictFormat	*maskFormat,
(* error 
			  int			xSrc,
(* error 
			  int			ySrc,
(* error 
			  _Xconst XPointFixed	*points,
(* error 
			  int			npoint);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
			_Xconst XRenderPictFormat	*maskFormat,
(* error 
			int			xSrc,
(* error 
			int			ySrc,
(* error 
			_Xconst XPointFixed	*points,
(* error 
			int			npoint);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
			    _Xconst XRenderPictFormat	*maskFormat,
(* error 
			    int			    xSrc,
(* error 
			    int			    ySrc,
(* error 
			    int			    xDst,
(* error 
			    int			    yDst,
(* error 
			    _Xconst XPointDouble    *fpoints,
(* error 
			    int			    npoints,
(* error 
			    int			    winding);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
function XRenderParseColor(dpy:PDisplay; spec:Pchar; def:PXRenderColor):TStatus;cdecl;external;
function XRenderCreateCursor(dpy:PDisplay; source:TPicture; x:dword; y:dword):TCursor;cdecl;external;
function XRenderQueryFilters(dpy:PDisplay; drawable:TDrawable):PXFilters;cdecl;external;
procedure XRenderSetPictureFilter(dpy:PDisplay; picture:TPicture; filter:Pchar; params:PXFixed; nparams:longint);cdecl;external;
function XRenderCreateAnimCursor(dpy:PDisplay; ncursor:longint; cursors:PXAnimCursor):TCursor;cdecl;external;
(* error 
		 _Xconst XTrap	    *traps,
(* error 
		 int		    ntrap);
 in declarator_list *)
 in declarator_list *)
function XRenderCreateSolidFill(dpy:PDisplay; color:PXRenderColor):TPicture;cdecl;external;
function XRenderCreateLinearGradient(dpy:PDisplay; gradient:PXLinearGradient; stops:PXFixed; colors:PXRenderColor; nstops:longint):TPicture;cdecl;external;
function XRenderCreateRadialGradient(dpy:PDisplay; gradient:PXRadialGradient; stops:PXFixed; colors:PXRenderColor; nstops:longint):TPicture;cdecl;external;
function XRenderCreateConicalGradient(dpy:PDisplay; gradient:PXConicalGradient; stops:PXFixed; colors:PXRenderColor; nstops:longint):TPicture;cdecl;external;
{$endif}

(* error 
#endif /* _XRENDER_H_ */

implementation

function XDoubleToFixed(f : longint) : TXFixed;
begin
  XDoubleToFixed:=TXFixed(f*65536);
end;

function XFixedToDouble(f : longint) : longint;
begin
  XFixedToDouble:=(TXDouble(f))/65536;
end;


end.
