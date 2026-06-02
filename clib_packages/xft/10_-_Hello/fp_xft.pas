unit fp_xft;

interface

uses
  x, xlib, xrender, xutil, fp_fontconfig;

const
  {$IFDEF Linux}
  libxft = 'Xft';
  {$ENDIF}

  {$IFDEF Windows}
  // no supported
  {$ENDIF}

  // /usr/include/X11/extensions/Xrender.h
type
  TXRenderColor = record
    red: uint16;
    green: uint16;
    blue: uint16;
    alpha: uint16;
  end;
  PXRenderColor = ^TXRenderColor;

  // /usr/include/freetype2/freetype/fttypes.h
type
  PFT_Int = ^TFT_Int;
  TFT_Int = int32;

  PFT_UInt = ^TFT_UInt;
  TFT_UInt = uint32;


  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


const
  XFT_MAJOR = 2;
  XFT_MINOR = 3;
  XFT_REVISION = 6;

const
  XFT_CORE = 'core';
  XFT_RENDER = 'render';
  XFT_XLFD = 'xlfd';
  XFT_MAX_GLYPH_MEMORY = 'maxglyphmemory';
  XFT_MAX_UNREF_FONTS = 'maxunreffonts';
  XFT_TRACK_MEM_USAGE = 'trackmemusage';

type
  PXftFontInfo = type Pointer;

  TXftFont = record
    ascent: longint;
    descent: longint;
    height: longint;
    max_advance_width: longint;
    charset: PFcCharSet;
    pattern: PFcPattern;
  end;
  PXftFont = ^TXftFont;

  PXftDraw = type Pointer;

  TXftColor = record
    pixel: int64;
    color: TXRenderColor;
  end;
  PXftColor = ^TXftColor;

  TXftCharSpec = record
    ucs4: TFcChar32;
    x: smallint;
    y: smallint;
  end;
  PXftCharSpec = ^TXftCharSpec;

  TXftCharFontSpec = record
    font: PXftFont;
    ucs4: TFcChar32;
    x: smallint;
    y: smallint;
  end;
  PXftCharFontSpec = ^TXftCharFontSpec;

  TXftGlyphSpec = record
    glyph: TFT_UInt;
    x: smallint;
    y: smallint;
  end;
  PXftGlyphSpec = ^TXftGlyphSpec;

  TXftGlyphFontSpec = record
    font: PXftFont;
    glyph: TFT_UInt;
    x: smallint;
    y: smallint;
  end;
  PXftGlyphFontSpec = ^TXftGlyphFontSpec;

function XftColorAllocName(dpy: PDisplay; visual: PVisual; cmap: TColormap; name: pchar; result: PXftColor): TBool; cdecl; external libxft;
function XftColorAllocValue(dpy: PDisplay; visual: PVisual; cmap: TColormap; color: PXRenderColor; result: PXftColor): TBool; cdecl; external libxft;
procedure XftColorFree(dpy: PDisplay; visual: PVisual; cmap: TColormap; color: PXftColor); cdecl; external libxft;

function XftDefaultHasRender(dpy: PDisplay): TBool; cdecl; external libxft;
function XftDefaultSet(dpy: PDisplay; defaults: PFcPattern): TBool; cdecl; external libxft;
procedure XftDefaultSubstitute(dpy: PDisplay; screen: longint; pattern: PFcPattern); cdecl; external libxft;

function XftDrawCreate(dpy: PDisplay; drawable: TDrawable; visual: PVisual; colormap: TColormap): PXftDraw; cdecl; external libxft;
function XftDrawCreateBitmap(dpy: PDisplay; bitmap: TPixmap): PXftDraw; cdecl; external libxft;
function XftDrawCreateAlpha(dpy: PDisplay; pixmap: TPixmap; depth: longint): PXftDraw; cdecl; external libxft;
procedure XftDrawChange(draw: PXftDraw; drawable: TDrawable); cdecl; external libxft;
function XftDrawDisplay(draw: PXftDraw): PDisplay; cdecl; external libxft;
function XftDrawDrawable(draw: PXftDraw): TDrawable; cdecl; external libxft;
function XftDrawColormap(draw: PXftDraw): TColormap; cdecl; external libxft;
function XftDrawVisual(draw: PXftDraw): PVisual; cdecl; external libxft;
procedure XftDrawDestroy(draw: PXftDraw); cdecl; external libxft;
function XftDrawPicture(draw: PXftDraw): TPicture; cdecl; external libxft;
function XftDrawSrcPicture(draw: PXftDraw; color: PXftColor): TPicture; cdecl; external libxft;
procedure XftDrawGlyphs(draw: PXftDraw; color: PXftColor; pub: PXftFont; x: longint; y: longint;
  glyphs: PFT_UInt; nglyphs: longint); cdecl; external libxft;
procedure XftDrawString8(draw: PXftDraw; color: PXftColor; pub: PXftFont; x: longint; y: longint;
  _string: PFcChar8; len: longint); cdecl; external libxft;
procedure XftDrawString16(draw: PXftDraw; color: PXftColor; pub: PXftFont; x: longint; y: longint;
  _string: PFcChar16; len: longint); cdecl; external libxft;
procedure XftDrawString32(draw: PXftDraw; color: PXftColor; pub: PXftFont; x: longint; y: longint;
  _string: PFcChar32; len: longint); cdecl; external libxft;
procedure XftDrawStringUtf8(draw: PXftDraw; color: PXftColor; pub: PXftFont; x: longint; y: longint;
  _string: PFcChar8; len: longint); cdecl; external libxft;
procedure XftDrawStringUtf16(draw: PXftDraw; color: PXftColor; pub: PXftFont; x: longint; y: longint;
  _string: PFcChar8; endian: TFcEndian; len: longint); cdecl; external libxft;
procedure XftDrawCharSpec(draw: PXftDraw; color: PXftColor; pub: PXftFont; chars: PXftCharSpec; len: longint); cdecl; external libxft;
procedure XftDrawCharFontSpec(draw: PXftDraw; color: PXftColor; chars: PXftCharFontSpec; len: longint); cdecl; external libxft;
procedure XftDrawGlyphSpec(draw: PXftDraw; color: PXftColor; pub: PXftFont; glyphs: PXftGlyphSpec; len: longint); cdecl; external libxft;
procedure XftDrawGlyphFontSpec(draw: PXftDraw; color: PXftColor; glyphs: PXftGlyphFontSpec; len: longint); cdecl; external libxft;
procedure XftDrawRect(draw: PXftDraw; color: PXftColor; x: longint; y: longint; width: dword;
  height: dword); cdecl; external libxft;
function XftDrawSetClip(draw: PXftDraw; r: TRegion): TBool; cdecl; external libxft;
function XftDrawSetClipRectangles(draw: PXftDraw; xOrigin: longint; yOrigin: longint; rects: PXRectangle; n: longint): TBool; cdecl; external libxft;
procedure XftDrawSetSubwindowMode(draw: PXftDraw; mode: longint); cdecl; external libxft;

procedure XftGlyphExtents(dpy: PDisplay; pub: PXftFont; glyphs: PFT_UInt; nglyphs: longint; extents: PXGlyphInfo); cdecl; external libxft;
procedure XftTextExtents8(dpy: PDisplay; pub: PXftFont; _string: PFcChar8; len: longint; extents: PXGlyphInfo); cdecl; external libxft;
procedure XftTextExtents16(dpy: PDisplay; pub: PXftFont; _string: PFcChar16; len: longint; extents: PXGlyphInfo); cdecl; external libxft;
procedure XftTextExtents32(dpy: PDisplay; pub: PXftFont; _string: PFcChar32; len: longint; extents: PXGlyphInfo); cdecl; external libxft;
procedure XftTextExtentsUtf8(dpy: PDisplay; pub: PXftFont; _string: PFcChar8; len: longint; extents: PXGlyphInfo); cdecl; external libxft;
procedure XftTextExtentsUtf16(dpy: PDisplay; pub: PXftFont; _string: PFcChar8; endian: TFcEndian; len: longint;
  extents: PXGlyphInfo); cdecl; external libxft;

function XftFontMatch(dpy: PDisplay; screen: longint; pattern: PFcPattern; result: PFcResult): PFcPattern; cdecl; external libxft;
function XftFontOpen(dpy: PDisplay; screen: longint): PXftFont; cdecl; varargs; external libxft;
function XftFontOpenName(dpy: PDisplay; screen: longint; name: pchar): PXftFont; cdecl; external libxft;
function XftFontOpenXlfd(dpy: PDisplay; screen: longint; xlfd: pchar): PXftFont; cdecl; external libxft;

function XftLockFace(pub: PXftFont): TFT_Face; cdecl; external libxft;
procedure XftUnlockFace(pub: PXftFont); cdecl; external libxft;
function XftFontInfoCreate(dpy: PDisplay; pattern: PFcPattern): PXftFontInfo; cdecl; external libxft;
procedure XftFontInfoDestroy(dpy: PDisplay; fi: PXftFontInfo); cdecl; external libxft;
function XftFontInfoHash(fi: PXftFontInfo): TFcChar32; cdecl; external libxft;
function XftFontInfoEqual(a: PXftFontInfo; b: PXftFontInfo): TFcBool; cdecl; external libxft;
function XftFontOpenInfo(dpy: PDisplay; pattern: PFcPattern; fi: PXftFontInfo): PXftFont; cdecl; external libxft;
function XftFontOpenPattern(dpy: PDisplay; pattern: PFcPattern): PXftFont; cdecl; external libxft;
function XftFontCopy(dpy: PDisplay; pub: PXftFont): PXftFont; cdecl; external libxft;
procedure XftFontClose(dpy: PDisplay; pub: PXftFont); cdecl; external libxft;
function XftInitFtLibrary: TFcBool; cdecl; external libxft;

procedure XftFontLoadGlyphs(dpy: PDisplay; pub: PXftFont; need_bitmaps: TFcBool; glyphs: PFT_UInt; nglyph: longint); cdecl; external libxft;
procedure XftFontUnloadGlyphs(dpy: PDisplay; pub: PXftFont; glyphs: PFT_UInt; nglyph: longint); cdecl; external libxft;

const
  XFT_NMISSING = 256;

function XftFontCheckGlyph(dpy: PDisplay; pub: PXftFont; need_bitmaps: TFcBool; glyph: TFT_UInt; missing: PFT_UInt;
  nmissing: Plongint): TFcBool; cdecl; external libxft;
function XftCharExists(dpy: PDisplay; pub: PXftFont; ucs4: TFcChar32): TFcBool; cdecl; external libxft;
function XftCharIndex(dpy: PDisplay; pub: PXftFont; ucs4: TFcChar32): TFT_UInt; cdecl; external libxft;

function XftInit(config: pchar): TFcBool; cdecl; external libxft;
function XftGetVersion: longint; cdecl; external libxft;

function XftListFonts(dpy: PDisplay; screen: longint; args: array of const): PFcFontSet; cdecl; external libxft;
function XftListFonts(dpy: PDisplay; screen: longint): PFcFontSet; cdecl; external libxft;

function XftNameParse(name: pchar): PFcPattern; cdecl; external libxft;
function XftNameUnparse(pat: PFcPattern; dest: pchar; len: longint): TFcBool; cdecl; external libxft;

procedure XftGlyphRender(dpy: PDisplay; op: longint; src: TPicture; pub: PXftFont; dst: TPicture;
  srcx: longint; srcy: longint; x: longint; y: longint; glyphs: PFT_UInt;
  nglyphs: longint); cdecl; external libxft;
procedure XftGlyphSpecRender(dpy: PDisplay; op: longint; src: TPicture; pub: PXftFont; dst: TPicture;
  srcx: longint; srcy: longint; glyphs: PXftGlyphSpec; nglyphs: longint); cdecl; external libxft;
procedure XftCharSpecRender(dpy: PDisplay; op: longint; src: TPicture; pub: PXftFont; dst: TPicture;
  srcx: longint; srcy: longint; chars: PXftCharSpec; len: longint); cdecl; external libxft;
procedure XftGlyphFontSpecRender(dpy: PDisplay; op: longint; src: TPicture; dst: TPicture; srcx: longint;
  srcy: longint; glyphs: PXftGlyphFontSpec; nglyphs: longint); cdecl; external libxft;
procedure XftCharFontSpecRender(dpy: PDisplay; op: longint; src: TPicture; dst: TPicture; srcx: longint;
  srcy: longint; chars: PXftCharFontSpec; len: longint); cdecl; external libxft;
procedure XftTextRender8(dpy: PDisplay; op: longint; src: TPicture; pub: PXftFont; dst: TPicture;
  srcx: longint; srcy: longint; x: longint; y: longint; _string: PFcChar8;
  len: longint); cdecl; external libxft;
procedure XftTextRender16(dpy: PDisplay; op: longint; src: TPicture; pub: PXftFont; dst: TPicture;
  srcx: longint; srcy: longint; x: longint; y: longint; _string: PFcChar16;
  len: longint); cdecl; external libxft;
procedure XftTextRender16BE(dpy: PDisplay; op: longint; src: TPicture; pub: PXftFont; dst: TPicture;
  srcx: longint; srcy: longint; x: longint; y: longint; _string: PFcChar8;
  len: longint); cdecl; external libxft;
procedure XftTextRender16LE(dpy: PDisplay; op: longint; src: TPicture; pub: PXftFont; dst: TPicture;
  srcx: longint; srcy: longint; x: longint; y: longint; _string: PFcChar8;
  len: longint); cdecl; external libxft;
procedure XftTextRender32(dpy: PDisplay; op: longint; src: TPicture; pub: PXftFont; dst: TPicture;
  srcx: longint; srcy: longint; x: longint; y: longint; _string: PFcChar32;
  len: longint); cdecl; external libxft;
procedure XftTextRender32BE(dpy: PDisplay; op: longint; src: TPicture; pub: PXftFont; dst: TPicture;
  srcx: longint; srcy: longint; x: longint; y: longint; _string: PFcChar8;
  len: longint); cdecl; external libxft;
procedure XftTextRender32LE(dpy: PDisplay; op: longint; src: TPicture; pub: PXftFont; dst: TPicture;
  srcx: longint; srcy: longint; x: longint; y: longint; _string: PFcChar8;
  len: longint); cdecl; external libxft;
procedure XftTextRenderUtf8(dpy: PDisplay; op: longint; src: TPicture; pub: PXftFont; dst: TPicture;
  srcx: longint; srcy: longint; x: longint; y: longint; _string: PFcChar8;
  len: longint); cdecl; external libxft;
procedure XftTextRenderUtf16(dpy: PDisplay; op: longint; src: TPicture; pub: PXftFont; dst: TPicture;
  srcx: longint; srcy: longint; x: longint; y: longint; _string: PFcChar8;
  endian: TFcEndian; len: longint); cdecl; external libxft;
function XftXlfdParse(xlfd_orig: pchar; ignore_scalable: TBool; complete: TBool): PFcPattern; cdecl; external libxft;

// === Konventiert am: 7-12-25 13:31:35 ===


implementation



end.
