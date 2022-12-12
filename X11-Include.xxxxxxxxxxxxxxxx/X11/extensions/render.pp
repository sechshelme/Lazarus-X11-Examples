
unit render;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/render.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/render.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/render.pp
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
PGlyph  = ^Glyph;
PGlyphSet  = ^GlyphSet;
PPictFormat  = ^PictFormat;
PPicture  = ^Picture;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _RENDER_H_}
{$define _RENDER_H_}
{$include <X11/Xdefs.h>}
type
  PGlyph = ^TGlyph;
  TGlyph = TXID;

  PGlyphSet = ^TGlyphSet;
  TGlyphSet = TXID;

  PPicture = ^TPicture;
  TPicture = TXID;

  PPictFormat = ^TPictFormat;
  TPictFormat = TXID;

const
  RENDER_NAME = 'RENDER';  
  RENDER_MAJOR = 0;  
  RENDER_MINOR = 11;  
  X_RenderQueryVersion = 0;  
  X_RenderQueryPictFormats = 1;  

  X_RenderQueryPictIndexValues = 2;  
  X_RenderQueryDithers = 3;  
  X_RenderCreatePicture = 4;  
  X_RenderChangePicture = 5;  
  X_RenderSetPictureClipRectangles = 6;  
  X_RenderFreePicture = 7;  
  X_RenderComposite = 8;  
  X_RenderScale = 9;  
  X_RenderTrapezoids = 10;  
  X_RenderTriangles = 11;  
  X_RenderTriStrip = 12;  
  X_RenderTriFan = 13;  
  X_RenderColorTrapezoids = 14;  
  X_RenderColorTriangles = 15;  

  X_RenderCreateGlyphSet = 17;  
  X_RenderReferenceGlyphSet = 18;  
  X_RenderFreeGlyphSet = 19;  
  X_RenderAddGlyphs = 20;  
  X_RenderAddGlyphsFromPicture = 21;  
  X_RenderFreeGlyphs = 22;  
  X_RenderCompositeGlyphs8 = 23;  
  X_RenderCompositeGlyphs16 = 24;  
  X_RenderCompositeGlyphs32 = 25;  
  X_RenderFillRectangles = 26;  

  X_RenderCreateCursor = 27;  

  X_RenderSetPictureTransform = 28;  
  X_RenderQueryFilters = 29;  
  X_RenderSetPictureFilter = 30;  

  X_RenderCreateAnimCursor = 31;  

  X_RenderAddTraps = 32;  

  X_RenderCreateSolidFill = 33;  
  X_RenderCreateLinearGradient = 34;  
  X_RenderCreateRadialGradient = 35;  
  X_RenderCreateConicalGradient = 36;  
  RenderNumberRequests = X_RenderCreateConicalGradient+1;  
  BadPictFormat = 0;  
  BadPicture = 1;  
  BadPictOp = 2;  
  BadGlyphSet = 3;  
  BadGlyph = 4;  
  RenderNumberErrors = BadGlyph+1;  
  PictTypeIndexed = 0;  
  PictTypeDirect = 1;  
  PictOpMinimum = 0;  
  PictOpClear = 0;  
  PictOpSrc = 1;  
  PictOpDst = 2;  
  PictOpOver = 3;  
  PictOpOverReverse = 4;  
  PictOpIn = 5;  
  PictOpInReverse = 6;  
  PictOpOut = 7;  
  PictOpOutReverse = 8;  
  PictOpAtop = 9;  
  PictOpAtopReverse = 10;  
  PictOpXor = 11;  
  PictOpAdd = 12;  
  PictOpSaturate = 13;  
  PictOpMaximum = 13;  

  PictOpDisjointMinimum = $10;  
  PictOpDisjointClear = $10;  
  PictOpDisjointSrc = $11;  
  PictOpDisjointDst = $12;  
  PictOpDisjointOver = $13;  
  PictOpDisjointOverReverse = $14;  
  PictOpDisjointIn = $15;  
  PictOpDisjointInReverse = $16;  
  PictOpDisjointOut = $17;  
  PictOpDisjointOutReverse = $18;  
  PictOpDisjointAtop = $19;  
  PictOpDisjointAtopReverse = $1a;  
  PictOpDisjointXor = $1b;  
  PictOpDisjointMaximum = $1b;  
  PictOpConjointMinimum = $20;  
  PictOpConjointClear = $20;  
  PictOpConjointSrc = $21;  
  PictOpConjointDst = $22;  
  PictOpConjointOver = $23;  
  PictOpConjointOverReverse = $24;  
  PictOpConjointIn = $25;  
  PictOpConjointInReverse = $26;  
  PictOpConjointOut = $27;  
  PictOpConjointOutReverse = $28;  
  PictOpConjointAtop = $29;  
  PictOpConjointAtopReverse = $2a;  
  PictOpConjointXor = $2b;  
  PictOpConjointMaximum = $2b;  

  PictOpBlendMinimum = $30;  
  PictOpMultiply = $30;  
  PictOpScreen = $31;  
  PictOpOverlay = $32;  
  PictOpDarken = $33;  
  PictOpLighten = $34;  
  PictOpColorDodge = $35;  
  PictOpColorBurn = $36;  
  PictOpHardLight = $37;  
  PictOpSoftLight = $38;  
  PictOpDifference = $39;  
  PictOpExclusion = $3a;  
  PictOpHSLHue = $3b;  
  PictOpHSLSaturation = $3c;  
  PictOpHSLColor = $3d;  
  PictOpHSLLuminosity = $3e;  
  PictOpBlendMaximum = $3e;  
  PolyEdgeSharp = 0;  
  PolyEdgeSmooth = 1;  
  PolyModePrecise = 0;  
  PolyModeImprecise = 1;  
  CPRepeat = 1 shl 0;  
  CPAlphaMap = 1 shl 1;  
  CPAlphaXOrigin = 1 shl 2;  
  CPAlphaYOrigin = 1 shl 3;  
  CPClipXOrigin = 1 shl 4;  
  CPClipYOrigin = 1 shl 5;  
  CPClipMask = 1 shl 6;  
  CPGraphicsExposure = 1 shl 7;  
  CPSubwindowMode = 1 shl 8;  
  CPPolyEdge = 1 shl 9;  
  CPPolyMode = 1 shl 10;  
  CPDither = 1 shl 11;  
  CPComponentAlpha = 1 shl 12;  
  CPLastBit = 12;  

  FilterNearest = 'nearest';  
  FilterBilinear = 'bilinear';  

  FilterConvolution = 'convolution';  
  FilterFast = 'fast';  
  FilterGood = 'good';  
  FilterBest = 'best';  
  FilterAliasNone = -(1);  

  SubPixelUnknown = 0;  
  SubPixelHorizontalRGB = 1;  
  SubPixelHorizontalBGR = 2;  
  SubPixelVerticalRGB = 3;  
  SubPixelVerticalBGR = 4;  
  SubPixelNone = 5;  

  RepeatNone = 0;  
  RepeatNormal = 1;  
  RepeatPad = 2;  
  RepeatReflect = 3;  
{$endif}


implementation


end.
