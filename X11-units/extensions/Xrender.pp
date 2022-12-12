
unit Xrender;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/Xrender.h
  The following command line parameters were used:
    /usr/include/X11/extensions/Xrender.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/Xrender.pp
}

  Type
  Pchar  = ^char;
  PDisplay  = ^Display;
  Plongint  = ^longint;
  PXAnimCursor  = ^XAnimCursor;
  PXConicalGradient  = ^XConicalGradient;
  PXFilters  = ^XFilters;
  PXFixed  = ^XFixed;
  PXLinearGradient  = ^XLinearGradient;
  PXRadialGradient  = ^XRadialGradient;
  PXRenderColor  = ^XRenderColor;
  PXRenderPictFormat  = ^XRenderPictFormat;
  PXTransform  = ^XTransform;
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
    XRenderDirectFormat = record
        red : smallint;
        redMask : smallint;
        green : smallint;
        greenMask : smallint;
        blue : smallint;
        blueMask : smallint;
        alpha : smallint;
        alphaMask : smallint;
      end;

    XRenderPictFormat = record
        id : PictFormat;
        _type : longint;
        depth : longint;
        direct : XRenderDirectFormat;
        colormap : Colormap;
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
    _XRenderPictureAttributes = record
        _repeat : longint;
        alpha_map : Picture;
        alpha_x_origin : longint;
        alpha_y_origin : longint;
        clip_x_origin : longint;
        clip_y_origin : longint;
        clip_mask : Pixmap;
        graphics_exposures : Bool;
        subwindow_mode : longint;
        poly_edge : longint;
        poly_mode : longint;
        dither : Atom;
        component_alpha : Bool;
      end;
    XRenderPictureAttributes = _XRenderPictureAttributes;

    XRenderColor = record
        red : word;
        green : word;
        blue : word;
        alpha : word;
      end;

    _XGlyphInfo = record
        width : word;
        height : word;
        x : smallint;
        y : smallint;
        xOff : smallint;
        yOff : smallint;
      end;
    XGlyphInfo = _XGlyphInfo;
(* error 
    _Xconst char	    *chars;
 in declarator_list *)

    _XGlyphElt8 = record
        glyphset : GlyphSet;
;
        nchars : longint;
        xOff : longint;
        yOff : longint;
      end;
    XGlyphElt8 = _XGlyphElt8;
(* error 
    _Xconst unsigned short  *chars;
 in declarator_list *)

    _XGlyphElt16 = record
        glyphset : GlyphSet;
;
        nchars : longint;
        xOff : longint;
        yOff : longint;
      end;
    XGlyphElt16 = _XGlyphElt16;
(* error 
    _Xconst unsigned int    *chars;
 in declarator_list *)

    _XGlyphElt32 = record
        glyphset : GlyphSet;
;
        nchars : longint;
        xOff : longint;
        yOff : longint;
      end;
    XGlyphElt32 = _XGlyphElt32;

    XDouble = double;

    _XPointDouble = record
        x : XDouble;
        y : XDouble;
      end;
    XPointDouble = _XPointDouble;

  function XDoubleToFixed(f : longint) : XFixed;  

  function XFixedToDouble(f : longint) : longint;  


  type
    XFixed = longint;

    _XPointFixed = record
        x : XFixed;
        y : XFixed;
      end;
    XPointFixed = _XPointFixed;

    _XLineFixed = record
        p1 : XPointFixed;
        p2 : XPointFixed;
      end;
    XLineFixed = _XLineFixed;

    _XTriangle = record
        p1 : XPointFixed;
        p2 : XPointFixed;
        p3 : XPointFixed;
      end;
    XTriangle = _XTriangle;

    _XCircle = record
        x : XFixed;
        y : XFixed;
        radius : XFixed;
      end;
    XCircle = _XCircle;

    _XTrapezoid = record
        top : XFixed;
        bottom : XFixed;
        left : XLineFixed;
        right : XLineFixed;
      end;
    XTrapezoid = _XTrapezoid;

    _XTransform = record
        matrix : array[0..2] of array[0..2] of XFixed;
      end;
    XTransform = _XTransform;

    _XFilters = record
        nfilter : longint;
        filter : ^^char;
        nalias : longint;
        alias : ^smallint;
      end;
    XFilters = _XFilters;

    _XIndexValue = record
        pixel : dword;
        red : word;
        green : word;
        blue : word;
        alpha : word;
      end;
    XIndexValue = _XIndexValue;

    _XAnimCursor = record
        cursor : Cursor;
        delay : dword;
      end;
    XAnimCursor = _XAnimCursor;

    _XSpanFix = record
        left : XFixed;
        right : XFixed;
        y : XFixed;
      end;
    XSpanFix = _XSpanFix;

    _XTrap = record
        top : XSpanFix;
        bottom : XSpanFix;
      end;
    XTrap = _XTrap;

    _XLinearGradient = record
        p1 : XPointFixed;
        p2 : XPointFixed;
      end;
    XLinearGradient = _XLinearGradient;

    _XRadialGradient = record
        inner : XCircle;
        outer : XCircle;
      end;
    XRadialGradient = _XRadialGradient;


    _XConicalGradient = record
        center : XPointFixed;
        angle : XFixed;
      end;
    XConicalGradient = _XConicalGradient;
(* error 
Bool XRenderQueryExtension (Display *dpy, int *event_basep, int *error_basep);
(* error 
Bool XRenderQueryExtension (Display *dpy, int *event_basep, int *error_basep);
(* error 
Bool XRenderQueryExtension (Display *dpy, int *event_basep, int *error_basep);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

  function XRenderQueryVersion(dpy:PDisplay; major_versionp:Plongint; minor_versionp:Plongint):Status;

  function XRenderQueryFormats(dpy:PDisplay):Status;

  function XRenderQuerySubpixelOrder(dpy:PDisplay; screen:longint):longint;

  function XRenderSetSubpixelOrder(dpy:PDisplay; screen:longint; subpixel:longint):Bool;

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

  function XRenderFindStandardFormat(dpy:PDisplay; format:longint):^XRenderPictFormat;

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
  procedure XRenderSetPictureClipRegion(dpy:PDisplay; picture:Picture; r:Region);

  procedure XRenderSetPictureTransform(dpy:PDisplay; picture:Picture; transform:PXTransform);

  procedure XRenderFreePicture(dpy:PDisplay; picture:Picture);

  procedure XRenderComposite(dpy:PDisplay; op:longint; src:Picture; mask:Picture; dst:Picture; 
              src_x:longint; src_y:longint; mask_x:longint; mask_y:longint; dst_x:longint; 
              dst_y:longint; width:dword; height:dword);

(* error 
XRenderCreateGlyphSet (Display *dpy, _Xconst XRenderPictFormat *format);
 in declarator_list *)
  function XRenderReferenceGlyphSet(dpy:PDisplay; existing:GlyphSet):GlyphSet;

  procedure XRenderFreeGlyphSet(dpy:PDisplay; glyphset:GlyphSet);

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
  function XRenderParseColor(dpy:PDisplay; spec:Pchar; def:PXRenderColor):Status;

  function XRenderCreateCursor(dpy:PDisplay; source:Picture; x:dword; y:dword):Cursor;

  function XRenderQueryFilters(dpy:PDisplay; drawable:Drawable):^XFilters;

  procedure XRenderSetPictureFilter(dpy:PDisplay; picture:Picture; filter:Pchar; params:PXFixed; nparams:longint);

  function XRenderCreateAnimCursor(dpy:PDisplay; ncursor:longint; cursors:PXAnimCursor):Cursor;

(* error 
		 _Xconst XTrap	    *traps,
(* error 
		 int		    ntrap);
 in declarator_list *)
 in declarator_list *)
  function XRenderCreateSolidFill(dpy:PDisplay; color:PXRenderColor):Picture;

  function XRenderCreateLinearGradient(dpy:PDisplay; gradient:PXLinearGradient; stops:PXFixed; colors:PXRenderColor; nstops:longint):Picture;

  function XRenderCreateRadialGradient(dpy:PDisplay; gradient:PXRadialGradient; stops:PXFixed; colors:PXRenderColor; nstops:longint):Picture;

  function XRenderCreateConicalGradient(dpy:PDisplay; gradient:PXConicalGradient; stops:PXFixed; colors:PXRenderColor; nstops:longint):Picture;

{$endif}

(* error 
#endif /* _XRENDER_H_ */

implementation

  function XDoubleToFixed(f : longint) : XFixed;
  begin
    XDoubleToFixed:=XFixed(f*65536);
  end;

  function XFixedToDouble(f : longint) : longint;
  begin
    XFixedToDouble:=(XDouble(f))/65536;
  end;

  function XRenderQueryVersion(dpy:PDisplay; major_versionp:Plongint; minor_versionp:Plongint):Status;
  begin
    { You must implement this function }
  end;
  function XRenderQueryFormats(dpy:PDisplay):Status;
  begin
    { You must implement this function }
  end;
  function XRenderQuerySubpixelOrder(dpy:PDisplay; screen:longint):longint;
  begin
    { You must implement this function }
  end;
  function XRenderSetSubpixelOrder(dpy:PDisplay; screen:longint; subpixel:longint):Bool;
  begin
    { You must implement this function }
  end;
  function XRenderFindStandardFormat(dpy:PDisplay; format:longint):PXRenderPictFormat;
  begin
    { You must implement this function }
  end;
  procedure XRenderSetPictureClipRegion(dpy:PDisplay; picture:Picture; r:Region);
  begin
    { You must implement this function }
  end;
  procedure XRenderSetPictureTransform(dpy:PDisplay; picture:Picture; transform:PXTransform);
  begin
    { You must implement this function }
  end;
  procedure XRenderFreePicture(dpy:PDisplay; picture:Picture);
  begin
    { You must implement this function }
  end;
  procedure XRenderComposite(dpy:PDisplay; op:longint; src:Picture; mask:Picture; dst:Picture; 
              src_x:longint; src_y:longint; mask_x:longint; mask_y:longint; dst_x:longint; 
              dst_y:longint; width:dword; height:dword);
  begin
    { You must implement this function }
  end;
  function XRenderReferenceGlyphSet(dpy:PDisplay; existing:GlyphSet):GlyphSet;
  begin
    { You must implement this function }
  end;
  procedure XRenderFreeGlyphSet(dpy:PDisplay; glyphset:GlyphSet);
  begin
    { You must implement this function }
  end;
  function XRenderParseColor(dpy:PDisplay; spec:Pchar; def:PXRenderColor):Status;
  begin
    { You must implement this function }
  end;
  function XRenderCreateCursor(dpy:PDisplay; source:Picture; x:dword; y:dword):Cursor;
  begin
    { You must implement this function }
  end;
  function XRenderQueryFilters(dpy:PDisplay; drawable:Drawable):PXFilters;
  begin
    { You must implement this function }
  end;
  procedure XRenderSetPictureFilter(dpy:PDisplay; picture:Picture; filter:Pchar; params:PXFixed; nparams:longint);
  begin
    { You must implement this function }
  end;
  function XRenderCreateAnimCursor(dpy:PDisplay; ncursor:longint; cursors:PXAnimCursor):Cursor;
  begin
    { You must implement this function }
  end;
  function XRenderCreateSolidFill(dpy:PDisplay; color:PXRenderColor):Picture;
  begin
    { You must implement this function }
  end;
  function XRenderCreateLinearGradient(dpy:PDisplay; gradient:PXLinearGradient; stops:PXFixed; colors:PXRenderColor; nstops:longint):Picture;
  begin
    { You must implement this function }
  end;
  function XRenderCreateRadialGradient(dpy:PDisplay; gradient:PXRadialGradient; stops:PXFixed; colors:PXRenderColor; nstops:longint):Picture;
  begin
    { You must implement this function }
  end;
  function XRenderCreateConicalGradient(dpy:PDisplay; gradient:PXConicalGradient; stops:PXFixed; colors:PXRenderColor; nstops:longint):Picture;
  begin
    { You must implement this function }
  end;

end.
