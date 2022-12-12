
unit Xft;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xft/Xft.h
  The following command line parameters were used:
    /usr/include/X11/Xft/Xft.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xft/Xft.pp
}

    Type
    PDisplay  = ^Display;
    PFcPattern  = ^FcPattern;
    PFT_UInt  = ^FT_UInt;
    Plongint  = ^longint;
    PVisual  = ^Visual;
    PXftColor  = ^XftColor;
    PXftDraw  = ^XftDraw;
    PXftFont  = ^XftFont;
    PXftFontInfo  = ^XftFontInfo;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XFT_H_}
{$define _XFT_H_}  



  const
    XFT_MAJOR = 2;    
    XFT_MINOR = 3;    
    XFT_REVISION = 4;    
(* error 
#define XFT_VERSION	((XFT_MAJOR * 10000) + (XFT_MINOR * 100) + (XFT_REVISION))
in define line 35 *)
      XftVersion = XFT_VERSION;      
{$include <stdarg.h>}
{$include <ft2build.h>}
{$include FT_FREETYPE_H}
{$include <fontconfig/fontconfig.h>}
{$include <X11/extensions/Xrender.h>}
{$include <X11/Xfuncproto.h>}

{$ifndef _X_SENTINEL}
(* error 
# define _X_SENTINEL(x)
in define line 47 *)
{$endif}
{$ifndef _XFT_NO_COMPAT_}
{$include <X11/Xft/XftCompat.h>}
{$endif}

    const
      XFT_CORE = 'core';      
      XFT_RENDER = 'render';      
      XFT_XLFD = 'xlfd';      
      XFT_MAX_GLYPH_MEMORY = 'maxglyphmemory';      
      XFT_MAX_UNREF_FONTS = 'maxunreffonts';      

      var
        _XftFTlibrary : FT_Library;cvar;external;

    type
      _XftFontInfo = XftFontInfo;

      _XftFont = record
          ascent : longint;
          descent : longint;
          height : longint;
          max_advance_width : longint;
          charset : ^FcCharSet;
          pattern : ^FcPattern;
        end;
      XftFont = _XftFont;
      _XftDraw = XftDraw;

      _XftColor = record
          pixel : dword;
          color : XRenderColor;
        end;
      XftColor = _XftColor;

      _XftCharSpec = record
          ucs4 : FcChar32;
          x : smallint;
          y : smallint;
        end;
      XftCharSpec = _XftCharSpec;

      _XftCharFontSpec = record
          font : ^XftFont;
          ucs4 : FcChar32;
          x : smallint;
          y : smallint;
        end;
      XftCharFontSpec = _XftCharFontSpec;

      _XftGlyphSpec = record
          glyph : FT_UInt;
          x : smallint;
          y : smallint;
        end;
      XftGlyphSpec = _XftGlyphSpec;

      _XftGlyphFontSpec = record
          font : ^XftFont;
          glyph : FT_UInt;
          x : smallint;
          y : smallint;
        end;
      XftGlyphFontSpec = _XftGlyphFontSpec;

(* error 
XftColorAllocName (Display  *dpy,
(* error 
		   _Xconst Visual   *visual,
(* error 
		   Colormap cmap,
(* error 
		   _Xconst char	    *name,
(* error 
		   XftColor *result);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
		    _Xconst XRenderColor    *color,
(* error 
		    XftColor	    *result);
 in declarator_list *)
 in declarator_list *)

    procedure XftColorFree(dpy:PDisplay; visual:PVisual; cmap:Colormap; color:PXftColor);


    function XftDefaultHasRender(dpy:PDisplay):Bool;

    function XftDefaultSet(dpy:PDisplay; defaults:PFcPattern):Bool;

    procedure XftDefaultSubstitute(dpy:PDisplay; screen:longint; pattern:PFcPattern);


    function XftDrawCreate(dpy:PDisplay; drawable:Drawable; visual:PVisual; colormap:Colormap):^XftDraw;

    function XftDrawCreateBitmap(dpy:PDisplay; bitmap:Pixmap):^XftDraw;

    function XftDrawCreateAlpha(dpy:PDisplay; pixmap:Pixmap; depth:longint):^XftDraw;

    procedure XftDrawChange(draw:PXftDraw; drawable:Drawable);

    function XftDrawDisplay(draw:PXftDraw):^Display;

    function XftDrawDrawable(draw:PXftDraw):Drawable;

    function XftDrawColormap(draw:PXftDraw):Colormap;

    function XftDrawVisual(draw:PXftDraw):^Visual;

    procedure XftDrawDestroy(draw:PXftDraw);

    function XftDrawPicture(draw:PXftDraw):Picture;

(* error 
XftDrawSrcPicture (XftDraw *draw, _Xconst XftColor *color);
 in declarator_list *)
(* error 
	       _Xconst XftColor	*color,
(* error 
	       XftFont		*pub,
(* error 
	       int		x,
(* error 
	       int		y,
(* error 
	       _Xconst FT_UInt	*glyphs,
(* error 
	       int		nglyphs);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
		_Xconst XftColor    *color,
(* error 
		XftFont		    *pub,
(* error 
		int		    x,
(* error 
		int		    y,
(* error 
		_Xconst FcChar8	    *string,
(* error 
		int		    len);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
		 _Xconst XftColor   *color,
(* error 
		 XftFont	    *pub,
(* error 
		 int		    x,
(* error 
		 int		    y,
(* error 
		 _Xconst FcChar16   *string,
(* error 
		 int		    len);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
		 _Xconst XftColor   *color,
(* error 
		 XftFont	    *pub,
(* error 
		 int		    x,
(* error 
		 int		    y,
(* error 
		 _Xconst FcChar32   *string,
(* error 
		 int		    len);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
		   _Xconst XftColor *color,
(* error 
		   XftFont	    *pub,
(* error 
		   int		    x,
(* error 
		   int		    y,
(* error 
		   _Xconst FcChar8  *string,
(* error 
		   int		    len);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
		    _Xconst XftColor	*color,
(* error 
		    XftFont		*pub,
(* error 
		    int			x,
(* error 
		    int			y,
(* error 
		    _Xconst FcChar8	*string,
(* error 
		    FcEndian		endian,
(* error 
		    int			len);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
		 _Xconst XftColor	*color,
(* error 
		 XftFont		*pub,
(* error 
		 _Xconst XftCharSpec	*chars,
(* error 
		 int			len);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
		     _Xconst XftColor		*color,
(* error 
		     _Xconst XftCharFontSpec	*chars,
(* error 
		     int			len);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
		  _Xconst XftColor	*color,
(* error 
		  XftFont		*pub,
(* error 
		  _Xconst XftGlyphSpec	*glyphs,
(* error 
		  int			len);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
		      _Xconst XftColor		*color,
(* error 
		      _Xconst XftGlyphFontSpec	*glyphs,
(* error 
		      int			len);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
	     _Xconst XftColor	*color,
(* error 
	     int		x,
(* error 
	     int		y,
(* error 
	     unsigned int	width,
(* error 
	     unsigned int	height);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
    function XftDrawSetClip(draw:PXftDraw; r:Region):Bool;

(* error 
			  _Xconst XRectangle	*rects,
(* error 
			  int			n);
 in declarator_list *)
 in declarator_list *)
    procedure XftDrawSetSubwindowMode(draw:PXftDraw; mode:longint);


(* error 
		 _Xconst FT_UInt    *glyphs,
(* error 
		 int		    nglyphs,
(* error 
		 XGlyphInfo	    *extents);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
		 _Xconst FcChar8    *string,
(* error 
		 int		    len,
(* error 
		 XGlyphInfo	    *extents);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
		  _Xconst FcChar16  *string,
(* error 
		  int		    len,
(* error 
		  XGlyphInfo	    *extents);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
		  _Xconst FcChar32  *string,
(* error 
		  int		    len,
(* error 
		  XGlyphInfo	    *extents);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
		    _Xconst FcChar8 *string,
(* error 
		    int		    len,
(* error 
		    XGlyphInfo	    *extents);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
		     _Xconst FcChar8	*string,
(* error 
		     FcEndian		endian,
(* error 
		     int		len,
(* error 
		     XGlyphInfo		*extents);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

(* error 
	      _Xconst FcPattern *pattern,
(* error 
	      FcResult		*result);
 in declarator_list *)
 in declarator_list *)
(* error 
XftFontOpen (Display *dpy, int screen, ...) _X_SENTINEL(0);
 in declarator_list *)

      var
 : XftFont;
(* error 
XftFontOpenName (Display *dpy, int screen, _Xconst char *name);
 in declarator_list *)
(* error 
XftFontOpenXlfd (Display *dpy, int screen, _Xconst char *xlfd);
 in declarator_list *)


    function XftLockFace(pub:PXftFont):FT_Face;

    procedure XftUnlockFace(pub:PXftFont);

(* error 
XftFontInfoCreate (Display *dpy, _Xconst FcPattern *pattern);
 in declarator_list *)
    procedure XftFontInfoDestroy(dpy:PDisplay; fi:PXftFontInfo);

(* error 
XftFontInfoHash (_Xconst XftFontInfo *fi);
 in declarator_list *)
(* error 
XftFontInfoEqual (_Xconst XftFontInfo *a, _Xconst XftFontInfo *b);
(* error 
XftFontInfoEqual (_Xconst XftFontInfo *a, _Xconst XftFontInfo *b);
 in declarator_list *)
 in declarator_list *)
    function XftFontOpenInfo(dpy:PDisplay; pattern:PFcPattern; fi:PXftFontInfo):^XftFont;

    function XftFontOpenPattern(dpy:PDisplay; pattern:PFcPattern):^XftFont;

    function XftFontCopy(dpy:PDisplay; pub:PXftFont):^XftFont;

    procedure XftFontClose(dpy:PDisplay; pub:PXftFont);

    function XftInitFtLibrary:FcBool;


(* error 
		   _Xconst FT_UInt  *glyphs,
(* error 
		   int		    nglyph);
 in declarator_list *)
 in declarator_list *)
(* error 
		     _Xconst FT_UInt	*glyphs,
(* error 
		     int		nglyph);
 in declarator_list *)
 in declarator_list *)
    const
      XFT_NMISSING = 256;      

    function XftFontCheckGlyph(dpy:PDisplay; pub:PXftFont; need_bitmaps:FcBool; glyph:FT_UInt; missing:PFT_UInt; 
               nmissing:Plongint):FcBool;

    function XftCharExists(dpy:PDisplay; pub:PXftFont; ucs4:FcChar32):FcBool;

    function XftCharIndex(dpy:PDisplay; pub:PXftFont; ucs4:FcChar32):FT_UInt;


(* error 
XftInit (_Xconst char *config);
 in declarator_list *)
    function XftGetVersion:longint;


(* error 
	      ...) _X_SENTINEL(0);
 in declarator_list *)

      var
 : FcFontSet;

(* error 
*XftNameParse (_Xconst char *name);
 in declarator_list *)

(* error 
		_Xconst FT_UInt	*glyphs,
(* error 
		int		nglyphs);
 in declarator_list *)
 in declarator_list *)
(* error 
		    _Xconst XftGlyphSpec    *glyphs,
(* error 
		    int			    nglyphs);
 in declarator_list *)
 in declarator_list *)
(* error 
		   _Xconst XftCharSpec	*chars,
(* error 
		   int			len);
 in declarator_list *)
 in declarator_list *)
(* error 
			_Xconst XftGlyphFontSpec    *glyphs,
(* error 
			int			    nglyphs);
 in declarator_list *)
 in declarator_list *)
(* error 
		       _Xconst XftCharFontSpec	*chars,
(* error 
		       int			len);
 in declarator_list *)
 in declarator_list *)
(* error 
		_Xconst FcChar8	*string,
(* error 
		int		len);
 in declarator_list *)
 in declarator_list *)
(* error 
		 _Xconst FcChar16   *string,
(* error 
		 int		    len);
 in declarator_list *)
 in declarator_list *)
(* error 
		   _Xconst FcChar8  *string,
(* error 
		   int		    len);
 in declarator_list *)
 in declarator_list *)
(* error 
		   _Xconst FcChar8  *string,
(* error 
		   int		    len);
 in declarator_list *)
 in declarator_list *)
(* error 
		 _Xconst FcChar32   *string,
(* error 
		 int		    len);
 in declarator_list *)
 in declarator_list *)
(* error 
		   _Xconst FcChar8  *string,
(* error 
		   int		    len);
 in declarator_list *)
 in declarator_list *)
(* error 
		   _Xconst FcChar8  *string,
(* error 
		   int		    len);
 in declarator_list *)
 in declarator_list *)
(* error 
		   _Xconst FcChar8  *string,
(* error 
		   int		    len);
 in declarator_list *)
 in declarator_list *)
(* error 
		    _Xconst FcChar8 *string,
(* error 
		    FcEndian	    endian,
(* error 
		    int		    len);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

(* error 
XftXlfdParse (_Xconst char *xlfd_orig, Bool ignore_scalable, Bool complete);
(* error 
XftXlfdParse (_Xconst char *xlfd_orig, Bool ignore_scalable, Bool complete);
(* error 
XftXlfdParse (_Xconst char *xlfd_orig, Bool ignore_scalable, Bool complete);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
{$endif}

(* error 
#endif /* _XFT_H_ */

implementation

    procedure XftColorFree(dpy:PDisplay; visual:PVisual; cmap:Colormap; color:PXftColor);
    begin
      { You must implement this function }
    end;
    function XftDefaultHasRender(dpy:PDisplay):Bool;
    begin
      { You must implement this function }
    end;
    function XftDefaultSet(dpy:PDisplay; defaults:PFcPattern):Bool;
    begin
      { You must implement this function }
    end;
    procedure XftDefaultSubstitute(dpy:PDisplay; screen:longint; pattern:PFcPattern);
    begin
      { You must implement this function }
    end;
    function XftDrawCreate(dpy:PDisplay; drawable:Drawable; visual:PVisual; colormap:Colormap):PXftDraw;
    begin
      { You must implement this function }
    end;
    function XftDrawCreateBitmap(dpy:PDisplay; bitmap:Pixmap):PXftDraw;
    begin
      { You must implement this function }
    end;
    function XftDrawCreateAlpha(dpy:PDisplay; pixmap:Pixmap; depth:longint):PXftDraw;
    begin
      { You must implement this function }
    end;
    procedure XftDrawChange(draw:PXftDraw; drawable:Drawable);
    begin
      { You must implement this function }
    end;
    function XftDrawDisplay(draw:PXftDraw):PDisplay;
    begin
      { You must implement this function }
    end;
    function XftDrawDrawable(draw:PXftDraw):Drawable;
    begin
      { You must implement this function }
    end;
    function XftDrawColormap(draw:PXftDraw):Colormap;
    begin
      { You must implement this function }
    end;
    function XftDrawVisual(draw:PXftDraw):PVisual;
    begin
      { You must implement this function }
    end;
    procedure XftDrawDestroy(draw:PXftDraw);
    begin
      { You must implement this function }
    end;
    function XftDrawPicture(draw:PXftDraw):Picture;
    begin
      { You must implement this function }
    end;
    function XftDrawSetClip(draw:PXftDraw; r:Region):Bool;
    begin
      { You must implement this function }
    end;
    procedure XftDrawSetSubwindowMode(draw:PXftDraw; mode:longint);
    begin
      { You must implement this function }
    end;
    function XftLockFace(pub:PXftFont):FT_Face;
    begin
      { You must implement this function }
    end;
    procedure XftUnlockFace(pub:PXftFont);
    begin
      { You must implement this function }
    end;
    procedure XftFontInfoDestroy(dpy:PDisplay; fi:PXftFontInfo);
    begin
      { You must implement this function }
    end;
    function XftFontOpenInfo(dpy:PDisplay; pattern:PFcPattern; fi:PXftFontInfo):PXftFont;
    begin
      { You must implement this function }
    end;
    function XftFontOpenPattern(dpy:PDisplay; pattern:PFcPattern):PXftFont;
    begin
      { You must implement this function }
    end;
    function XftFontCopy(dpy:PDisplay; pub:PXftFont):PXftFont;
    begin
      { You must implement this function }
    end;
    procedure XftFontClose(dpy:PDisplay; pub:PXftFont);
    begin
      { You must implement this function }
    end;
    function XftInitFtLibrary:FcBool;
    begin
      { You must implement this function }
    end;
    function XftFontCheckGlyph(dpy:PDisplay; pub:PXftFont; need_bitmaps:FcBool; glyph:FT_UInt; missing:PFT_UInt; 
               nmissing:Plongint):FcBool;
    begin
      { You must implement this function }
    end;
    function XftCharExists(dpy:PDisplay; pub:PXftFont; ucs4:FcChar32):FcBool;
    begin
      { You must implement this function }
    end;
    function XftCharIndex(dpy:PDisplay; pub:PXftFont; ucs4:FcChar32):FT_UInt;
    begin
      { You must implement this function }
    end;
    function XftGetVersion:longint;
    begin
      { You must implement this function }
    end;

end.
