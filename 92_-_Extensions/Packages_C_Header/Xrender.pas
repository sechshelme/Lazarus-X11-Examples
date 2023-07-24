unit Xrender;

interface

uses
  ctypes, x, xlib, xutil, render;

  {$LinkLib Xrender}

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

{
 *
 * Copyright © 2000 SuSE, Inc.
 *
 * Permission to use, copy, modify, distribute, and sell this software and its
 * documentation for any purpose is hereby granted without fee, provided that
 * the above copyright notice appear in all copies and that both that
 * copyright notice and this permission notice appear in supporting
 * documentation, and that the name of SuSE not be used in advertising or
 * publicity pertaining to distribution of the software without specific,
 * written prior permission.  SuSE makes no representations about the
 * suitability of this software for any purpose.  It is provided "as is"
 * without express or implied warranty.
 *
 * SuSE DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING ALL
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT SHALL SuSE
 * BE LIABLE FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
 * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
 * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 * Author:  Keith Packard, SuSE, Inc.
  }

type
  PXRenderDirectFormat = ^TXRenderDirectFormat;

  TXRenderDirectFormat = record
    red: smallint;
    redMask: smallint;
    green: smallint;
    greenMask: smallint;
    blue: smallint;
    blueMask: smallint;
    alpha: smallint;
    alphaMask: smallint;
  end;

  PXRenderPictFormat = ^TXRenderPictFormat;

  TXRenderPictFormat = record
    id: TPictFormat;
    _type: longint;
    depth: longint;
    direct: TXRenderDirectFormat;
    colormap: TColormap;
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
    _repeat: longint;
    alpha_map: TPicture;
    alpha_x_origin: longint;
    alpha_y_origin: longint;
    clip_x_origin: longint;
    clip_y_origin: longint;
    clip_mask: TPixmap;
    graphics_exposures: TBool;
    subwindow_mode: longint;
    poly_edge: longint;
    poly_mode: longint;
    dither: TAtom;
    component_alpha: TBool;
  end;

  PXRenderColor = ^TXRenderColor;

  TXRenderColor = record
    red: word;
    green: word;
    blue: word;
    alpha: word;
  end;

  PXGlyphInfo = ^TXGlyphInfo;

  TXGlyphInfo = record
    Width: word;
    Height: word;
    x: smallint;
    y: smallint;
    xOff: smallint;
    yOff: smallint;
  end;

  PXGlyphElt8 = ^TXGlyphElt8;

  TXGlyphElt8 = record
    glyphset: TGlyphSet;
    chars: PChar;
    nchars: longint;
    xOff: longint;
    yOff: longint;
  end;

  PXGlyphElt16 = ^TXGlyphElt16;

  TXGlyphElt16 = record
    glyphset: TGlyphSet;
    chars: Pword;
    nchars: longint;
    xOff: longint;
    yOff: longint;
  end;

  PXGlyphElt32 = ^TXGlyphElt32;

  TXGlyphElt32 = record
    glyphset: TGlyphSet;
    chars: Pdword;
    nchars: longint;
    xOff: longint;
    yOff: longint;
  end;

  PXDouble = ^TXDouble;
  TXDouble = cdouble;

  PXPointDouble = ^TXPointDouble;

  TXPointDouble = record
    x: TXDouble;
    y: TXDouble;
  end;

type
  PXFixed = ^TXFixed;
  TXFixed = longint;

function XDoubleToFixed(f: TXDouble): TXFixed;
function XFixedToDouble(f: TXFixed): TXDouble;

type
  PXPointFixed = ^TXPointFixed;

  TXPointFixed = record
    x: TXFixed;
    y: TXFixed;
  end;

  PXLineFixed = ^TXLineFixed;

  TXLineFixed = record
    p1: TXPointFixed;
    p2: TXPointFixed;
  end;

  PXTriangle = ^TXTriangle;

  TXTriangle = record
    p1: TXPointFixed;
    p2: TXPointFixed;
    p3: TXPointFixed;
  end;

  PXCircle = ^TXCircle;

  TXCircle = record
    x: TXFixed;
    y: TXFixed;
    radius: TXFixed;
  end;

  PXTrapezoid = ^TXTrapezoid;

  TXTrapezoid = record
    top: TXFixed;
    bottom: TXFixed;
    left: TXLineFixed;
    right: TXLineFixed;
  end;

  PXTransform = ^TXTransform;

  TXTransform = record
    matrix: array[0..2] of array[0..2] of TXFixed;
  end;

  PXFilters = ^TXFilters;

  TXFilters = record
    nfilter: longint;
    filter: ^PChar;
    nalias: longint;
    alias: Psmallint;
  end;

  PXIndexValue = ^TXIndexValue;

  TXIndexValue = record
    pixel: culong;
    red: cshort;
    green: cshort;
    blue: cshort;
    alpha: cshort;
  end;

  PXAnimCursor = ^TXAnimCursor;

  TXAnimCursor = record
    cursor: TCursor;
    delay: culong;
  end;

  PXSpanFix = ^TXSpanFix;

  TXSpanFix = record
    left: TXFixed;
    right: TXFixed;
    y: TXFixed;
  end;

  PXTrap = ^TXTrap;

  TXTrap = record
    top: TXSpanFix;
    bottom: TXSpanFix;
  end;

  PXLinearGradient = ^TXLinearGradient;

  TXLinearGradient = record
    p1: TXPointFixed;
    p2: TXPointFixed;
  end;

  PXRadialGradient = ^TXRadialGradient;

  TXRadialGradient = record
    inner: TXCircle;
    outer: TXCircle;
  end;
  { in degrees  }

  PXConicalGradient = ^TXConicalGradient;

  TXConicalGradient = record
    center: TXPointFixed;
    angle: TXFixed;
  end;

function XRenderQueryExtension(dpy: PDisplay; event_basep: Plongint; error_basep: Plongint): TBool; cdecl; external;
function XRenderQueryVersion(dpy: PDisplay; major_versionp: Plongint; minor_versionp: Plongint): TStatus; cdecl; external;
function XRenderQueryFormats(dpy: PDisplay): TStatus; cdecl; external;
function XRenderQuerySubpixelOrder(dpy: PDisplay; screen: longint): longint; cdecl; external;
function XRenderSetSubpixelOrder(dpy: PDisplay; screen: longint; subpixel: longint): TBool; cdecl; external;
function XRenderFindVisualFormat(dpy: PDisplay; visual: PVisual): PXRenderPictFormat; cdecl; external;
function XRenderFindFormat(dpy: PDisplay; mask: culong; templ: PXRenderPictFormat; Count: longint): PXRenderPictFormat; cdecl; external;

const
  PictStandardARGB32 = 0;
  PictStandardRGB24 = 1;
  PictStandardA8 = 2;
  PictStandardA4 = 3;
  PictStandardA1 = 4;
  PictStandardNUM = 5;

function XRenderFindStandardFormat(dpy: PDisplay; format: longint): PXRenderPictFormat; cdecl; external;
function XRenderQueryPictIndexValues(dpy: PDisplay; format: PXRenderPictFormat; num: Plongint): PXIndexValue; cdecl; external;
function XRenderCreatePicture(dpy: PDisplay; drawable: TDrawable; format: PXRenderPictFormat; valuemask: culong; attributes: PXRenderPictureAttributes): TPicture; cdecl; external;
procedure XRenderChangePicture(dpy: PDisplay; picture: TPicture; valuemask: culong; attributes: PXRenderPictureAttributes); cdecl; external;
procedure XRenderSetPictureClipRectangles(dpy: PDisplay; picture: TPicture; xOrigin: longint; yOrigin: longint; rects: PXRectangle;
  n: longint); cdecl; external;
procedure XRenderSetPictureClipRegion(dpy: PDisplay; picture: TPicture; r: TRegion); cdecl; external;
procedure XRenderSetPictureTransform(dpy: PDisplay; picture: TPicture; transform: PXTransform); cdecl; external;
procedure XRenderFreePicture(dpy: PDisplay; picture: TPicture); cdecl; external;
procedure XRenderComposite(dpy: PDisplay; op: longint; src: TPicture; mask: TPicture; dst: TPicture;
  src_x: longint; src_y: longint; mask_x: longint; mask_y: longint; dst_x: longint;
  dst_y: longint; Width: dword; Height: dword); cdecl; external;
function XRenderCreateGlyphSet(dpy: PDisplay; format: PXRenderPictFormat): TGlyphSet; cdecl; external;
function XRenderReferenceGlyphSet(dpy: PDisplay; existing: TGlyphSet): TGlyphSet; cdecl; external;
procedure XRenderFreeGlyphSet(dpy: PDisplay; glyphset: TGlyphSet); cdecl; external;
procedure XRenderAddGlyphs(dpy: PDisplay; glyphset: TGlyphSet; gids: PGlyph; glyphs: PXGlyphInfo; nglyphs: longint;
  images: PChar; nbyte_images: longint); cdecl; external;
procedure XRenderFreeGlyphs(dpy: PDisplay; glyphset: TGlyphSet; gids: PGlyph; nglyphs: longint); cdecl; external;
procedure XRenderCompositeString8(dpy: PDisplay; op: longint; src: TPicture; dst: TPicture; maskFormat: PXRenderPictFormat;
  glyphset: TGlyphSet; xSrc: longint; ySrc: longint; xDst: longint; yDst: longint;
  _string: PChar; nchar: longint); cdecl; external;
procedure XRenderCompositeString16(dpy: PDisplay; op: longint; src: TPicture; dst: TPicture; maskFormat: PXRenderPictFormat;
  glyphset: TGlyphSet; xSrc: longint; ySrc: longint; xDst: longint; yDst: longint;
  _string: Pword; nchar: longint); cdecl; external;
procedure XRenderCompositeString32(dpy: PDisplay; op: longint; src: TPicture; dst: TPicture; maskFormat: PXRenderPictFormat;
  glyphset: TGlyphSet; xSrc: longint; ySrc: longint; xDst: longint; yDst: longint;
  _string: Pdword; nchar: longint); cdecl; external;
procedure XRenderCompositeText8(dpy: PDisplay; op: longint; src: TPicture; dst: TPicture; maskFormat: PXRenderPictFormat;
  xSrc: longint; ySrc: longint; xDst: longint; yDst: longint; elts: PXGlyphElt8;
  nelt: longint); cdecl; external;
procedure XRenderCompositeText16(dpy: PDisplay; op: longint; src: TPicture; dst: TPicture; maskFormat: PXRenderPictFormat;
  xSrc: longint; ySrc: longint; xDst: longint; yDst: longint; elts: PXGlyphElt16;
  nelt: longint); cdecl; external;
procedure XRenderCompositeText32(dpy: PDisplay; op: longint; src: TPicture; dst: TPicture; maskFormat: PXRenderPictFormat;
  xSrc: longint; ySrc: longint; xDst: longint; yDst: longint; elts: PXGlyphElt32;
  nelt: longint); cdecl; external;
procedure XRenderFillRectangle(dpy: PDisplay; op: longint; dst: TPicture; color: PXRenderColor; x: longint;
  y: longint; Width: dword; Height: dword); cdecl; external;
procedure XRenderFillRectangles(dpy: PDisplay; op: longint; dst: TPicture; color: PXRenderColor; rectangles: PXRectangle;
  n_rects: longint); cdecl; external;
procedure XRenderCompositeTrapezoids(dpy: PDisplay; op: longint; src: TPicture; dst: TPicture; maskFormat: PXRenderPictFormat;
  xSrc: longint; ySrc: longint; traps: PXTrapezoid; ntrap: longint); cdecl; external;
procedure XRenderCompositeTriangles(dpy: PDisplay; op: longint; src: TPicture; dst: TPicture; maskFormat: PXRenderPictFormat;
  xSrc: longint; ySrc: longint; triangles: PXTriangle; ntriangle: longint); cdecl; external;
procedure XRenderCompositeTriStrip(dpy: PDisplay; op: longint; src: TPicture; dst: TPicture; maskFormat: PXRenderPictFormat;
  xSrc: longint; ySrc: longint; points: PXPointFixed; npoint: longint); cdecl; external;
procedure XRenderCompositeTriFan(dpy: PDisplay; op: longint; src: TPicture; dst: TPicture; maskFormat: PXRenderPictFormat;
  xSrc: longint; ySrc: longint; points: PXPointFixed; npoint: longint); cdecl; external;
procedure XRenderCompositeDoublePoly(dpy: PDisplay; op: longint; src: TPicture; dst: TPicture; maskFormat: PXRenderPictFormat;
  xSrc: longint; ySrc: longint; xDst: longint; yDst: longint; fpoints: PXPointDouble;
  npoints: longint; winding: longint); cdecl; external;
function XRenderParseColor(dpy: PDisplay; spec: PChar; def: PXRenderColor): TStatus; cdecl; external;
function XRenderCreateCursor(dpy: PDisplay; Source: TPicture; x: dword; y: dword): TCursor; cdecl; external;
function XRenderQueryFilters(dpy: PDisplay; drawable: TDrawable): PXFilters; cdecl; external;
procedure XRenderSetPictureFilter(dpy: PDisplay; picture: TPicture; filter: PChar; params: PXFixed; nparams: longint); cdecl; external;
function XRenderCreateAnimCursor(dpy: PDisplay; ncursor: longint; cursors: PXAnimCursor): TCursor; cdecl; external;
procedure XRenderAddTraps(dpy: PDisplay; picture: TPicture; xOff: longint; yOff: longint; traps: PXTrap;
  ntrap: longint); cdecl; external;
function XRenderCreateSolidFill(dpy: PDisplay; color: PXRenderColor): TPicture; cdecl; external;
function XRenderCreateLinearGradient(dpy: PDisplay; gradient: PXLinearGradient; stops: PXFixed; colors: PXRenderColor; nstops: longint): TPicture; cdecl; external;
function XRenderCreateRadialGradient(dpy: PDisplay; gradient: PXRadialGradient; stops: PXFixed; colors: PXRenderColor; nstops: longint): TPicture; cdecl; external;
function XRenderCreateConicalGradient(dpy: PDisplay; gradient: PXConicalGradient; stops: PXFixed; colors: PXRenderColor; nstops: longint): TPicture; cdecl; external;

implementation

function XDoubleToFixed(f: TXDouble): TXFixed;
begin
  //  XDoubleToFixed:=TXFixed(f*65536);
  XDoubleToFixed := Round(f * 65536);
end;

function XFixedToDouble(f: TXFixed): TXDouble;
begin
  XFixedToDouble := (TXDouble(f)) / 65536;
end;


end.
