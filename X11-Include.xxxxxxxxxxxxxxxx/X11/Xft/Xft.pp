
unit Xft;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xft/Xft.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xft/Xft.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xft/Xft.pp
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
    PDisplay  = ^Display;
    PFcCharSet  = ^FcCharSet;
    PFcPattern  = ^FcPattern;
    PFT_UInt  = ^FT_UInt;
    Plongint  = ^longint;
    PVisual  = ^Visual;
    PXftCharFontSpec  = ^XftCharFontSpec;
    PXftCharSpec  = ^XftCharSpec;
    PXftColor  = ^XftColor;
    PXftDraw  = ^XftDraw;
    PXftFont  = ^XftFont;
    PXftFontInfo  = ^XftFontInfo;
    PXftGlyphFontSpec  = ^XftGlyphFontSpec;
    PXftGlyphSpec  = ^XftGlyphSpec;
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
        _XftFTlibrary : TFT_Library;cvar;external;
    type

      PXftFont = ^TXftFont;
      TXftFont = record
          ascent : longint;
          descent : longint;
          height : longint;
          max_advance_width : longint;
          charset : PFcCharSet;
          pattern : PFcPattern;
        end;

      PXftColor = ^TXftColor;
      TXftColor = record
          pixel : dword;
          color : TXRenderColor;
        end;

      PXftCharSpec = ^TXftCharSpec;
      TXftCharSpec = record
          ucs4 : TFcChar32;
          x : smallint;
          y : smallint;
        end;

      PXftCharFontSpec = ^TXftCharFontSpec;
      TXftCharFontSpec = record
          font : PXftFont;
          ucs4 : TFcChar32;
          x : smallint;
          y : smallint;
        end;

      PXftGlyphSpec = ^TXftGlyphSpec;
      TXftGlyphSpec = record
          glyph : TFT_UInt;
          x : smallint;
          y : smallint;
        end;

      PXftGlyphFontSpec = ^TXftGlyphFontSpec;
      TXftGlyphFontSpec = record
          font : PXftFont;
          glyph : TFT_UInt;
          x : smallint;
          y : smallint;
        end;

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

procedure XftColorFree(dpy:PDisplay; visual:PVisual; cmap:TColormap; color:PXftColor);cdecl;external;

function XftDefaultHasRender(dpy:PDisplay):TBool;cdecl;external;
function XftDefaultSet(dpy:PDisplay; defaults:PFcPattern):TBool;cdecl;external;
procedure XftDefaultSubstitute(dpy:PDisplay; screen:longint; pattern:PFcPattern);cdecl;external;

function XftDrawCreate(dpy:PDisplay; drawable:TDrawable; visual:PVisual; colormap:TColormap):PXftDraw;cdecl;external;
function XftDrawCreateBitmap(dpy:PDisplay; bitmap:TPixmap):PXftDraw;cdecl;external;
function XftDrawCreateAlpha(dpy:PDisplay; pixmap:TPixmap; depth:longint):PXftDraw;cdecl;external;
procedure XftDrawChange(draw:PXftDraw; drawable:TDrawable);cdecl;external;
function XftDrawDisplay(draw:PXftDraw):PDisplay;cdecl;external;
function XftDrawDrawable(draw:PXftDraw):TDrawable;cdecl;external;
function XftDrawColormap(draw:PXftDraw):TColormap;cdecl;external;
function XftDrawVisual(draw:PXftDraw):PVisual;cdecl;external;
procedure XftDrawDestroy(draw:PXftDraw);cdecl;external;
function XftDrawPicture(draw:PXftDraw):TPicture;cdecl;external;
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
function XftDrawSetClip(draw:PXftDraw; r:TRegion):TBool;cdecl;external;
(* error 
			  _Xconst XRectangle	*rects,
(* error 
			  int			n);
 in declarator_list *)
 in declarator_list *)
procedure XftDrawSetSubwindowMode(draw:PXftDraw; mode:longint);cdecl;external;

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
 : TXftFont;
(* error 
XftFontOpenName (Display *dpy, int screen, _Xconst char *name);
 in declarator_list *)
(* error 
XftFontOpenXlfd (Display *dpy, int screen, _Xconst char *xlfd);
 in declarator_list *)


function XftLockFace(pub:PXftFont):TFT_Face;cdecl;external;
procedure XftUnlockFace(pub:PXftFont);cdecl;external;
(* error 
XftFontInfoCreate (Display *dpy, _Xconst FcPattern *pattern);
 in declarator_list *)
procedure XftFontInfoDestroy(dpy:PDisplay; fi:PXftFontInfo);cdecl;external;
(* error 
XftFontInfoHash (_Xconst XftFontInfo *fi);
 in declarator_list *)
(* error 
XftFontInfoEqual (_Xconst XftFontInfo *a, _Xconst XftFontInfo *b);
(* error 
XftFontInfoEqual (_Xconst XftFontInfo *a, _Xconst XftFontInfo *b);
 in declarator_list *)
 in declarator_list *)
function XftFontOpenInfo(dpy:PDisplay; pattern:PFcPattern; fi:PXftFontInfo):PXftFont;cdecl;external;
function XftFontOpenPattern(dpy:PDisplay; pattern:PFcPattern):PXftFont;cdecl;external;
function XftFontCopy(dpy:PDisplay; pub:PXftFont):PXftFont;cdecl;external;
procedure XftFontClose(dpy:PDisplay; pub:PXftFont);cdecl;external;
function XftInitFtLibrary:TFcBool;cdecl;external;

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

function XftFontCheckGlyph(dpy:PDisplay; pub:PXftFont; need_bitmaps:TFcBool; glyph:TFT_UInt; missing:PFT_UInt; 
               nmissing:Plongint):TFcBool;cdecl;external;
function XftCharExists(dpy:PDisplay; pub:PXftFont; ucs4:TFcChar32):TFcBool;cdecl;external;
function XftCharIndex(dpy:PDisplay; pub:PXftFont; ucs4:TFcChar32):TFT_UInt;cdecl;external;

(* error 
XftInit (_Xconst char *config);
 in declarator_list *)
function XftGetVersion:longint;cdecl;external;

(* error 
	      ...) _X_SENTINEL(0);
 in declarator_list *)
      var
 : TFcFontSet;

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


end.
