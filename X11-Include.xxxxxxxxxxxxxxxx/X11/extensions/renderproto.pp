
unit renderproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/renderproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/renderproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/renderproto.pp
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
PxAnimCursorElt  = ^xAnimCursorElt;
PxDirectFormat  = ^xDirectFormat;
PxGlyphElt  = ^xGlyphElt;
PxGlyphInfo  = ^xGlyphInfo;
PxIndexValue  = ^xIndexValue;
PxLineFixed  = ^xLineFixed;
PxPictDepth  = ^xPictDepth;
PxPictFormInfo  = ^xPictFormInfo;
PxPictScreen  = ^xPictScreen;
PxPictVisual  = ^xPictVisual;
PxPointFixed  = ^xPointFixed;
PxRenderAddGlyphsReq  = ^xRenderAddGlyphsReq;
PxRenderAddTrapsReq  = ^xRenderAddTrapsReq;
PxRenderChangePictureReq  = ^xRenderChangePictureReq;
PxRenderColor  = ^xRenderColor;
PxRenderCompositeGlyphs16Req  = ^xRenderCompositeGlyphs16Req;
PxRenderCompositeGlyphs32Req  = ^xRenderCompositeGlyphs32Req;
PxRenderCompositeGlyphs8Req  = ^xRenderCompositeGlyphs8Req;
PxRenderCompositeGlyphsReq  = ^xRenderCompositeGlyphsReq;
PxRenderCompositeReq  = ^xRenderCompositeReq;
PxRenderCreateAnimCursorReq  = ^xRenderCreateAnimCursorReq;
PxRenderCreateConicalGradientReq  = ^xRenderCreateConicalGradientReq;
PxRenderCreateCursorReq  = ^xRenderCreateCursorReq;
PxRenderCreateGlyphSetReq  = ^xRenderCreateGlyphSetReq;
PxRenderCreateLinearGradientReq  = ^xRenderCreateLinearGradientReq;
PxRenderCreatePictureReq  = ^xRenderCreatePictureReq;
PxRenderCreateRadialGradientReq  = ^xRenderCreateRadialGradientReq;
PxRenderCreateSolidFillReq  = ^xRenderCreateSolidFillReq;
PxRenderFillRectanglesReq  = ^xRenderFillRectanglesReq;
PxRenderFreeGlyphSetReq  = ^xRenderFreeGlyphSetReq;
PxRenderFreeGlyphsReq  = ^xRenderFreeGlyphsReq;
PxRenderFreePictureReq  = ^xRenderFreePictureReq;
PxRenderQueryFiltersReply  = ^xRenderQueryFiltersReply;
PxRenderQueryFiltersReq  = ^xRenderQueryFiltersReq;
PxRenderQueryPictFormatsReply  = ^xRenderQueryPictFormatsReply;
PxRenderQueryPictFormatsReq  = ^xRenderQueryPictFormatsReq;
PxRenderQueryPictIndexValuesReply  = ^xRenderQueryPictIndexValuesReply;
PxRenderQueryPictIndexValuesReq  = ^xRenderQueryPictIndexValuesReq;
PxRenderQueryVersionReply  = ^xRenderQueryVersionReply;
PxRenderQueryVersionReq  = ^xRenderQueryVersionReq;
PxRenderReferenceGlyphSetReq  = ^xRenderReferenceGlyphSetReq;
PxRenderScaleReq  = ^xRenderScaleReq;
PxRenderSetPictureClipRectanglesReq  = ^xRenderSetPictureClipRectanglesReq;
PxRenderSetPictureFilterReq  = ^xRenderSetPictureFilterReq;
PxRenderSetPictureTransformReq  = ^xRenderSetPictureTransformReq;
PxRenderTransform  = ^xRenderTransform;
PxRenderTrapezoidsReq  = ^xRenderTrapezoidsReq;
PxRenderTrianglesReq  = ^xRenderTrianglesReq;
PxRenderTriFanReq  = ^xRenderTriFanReq;
PxRenderTriStripReq  = ^xRenderTriStripReq;
PxSpanFix  = ^xSpanFix;
PxTrap  = ^xTrap;
PxTrapezoid  = ^xTrapezoid;
PxTriangle  = ^xTriangle;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XRENDERP_H_}
{$define _XRENDERP_H_}
{$include <X11/Xmd.h>}
{$include <X11/extensions/render.h>}

const
  Window = CARD32;  
  Drawable = CARD32;  
  Font = CARD32;  
  Pixmap = CARD32;  
  Cursor = CARD32;  
  Colormap = CARD32;  
  GContext = CARD32;  
  Atom = CARD32;  
  VisualID = CARD32;  
  Time = CARD32;  
  KeyCode = CARD8;  
  KeySym = CARD32;  
  Picture = CARD32;  
  PictFormat = CARD32;  
  Fixed = INT32;  
  Glyphset = CARD32;  

type
  PxDirectFormat = ^TxDirectFormat;
  TxDirectFormat = record
      red : TCARD16;
      redMask : TCARD16;
      green : TCARD16;
      greenMask : TCARD16;
      blue : TCARD16;
      blueMask : TCARD16;
      alpha : TCARD16;
      alphaMask : TCARD16;
    end;

const
  sz_xDirectFormat = 16;  
type
  PxPictFormInfo = ^TxPictFormInfo;
  TxPictFormInfo = record
      id : TPictFormat;
      _type : TCARD8;
      depth : TCARD8;
      pad1 : TCARD16;
      direct : TxDirectFormat;
      colormap : TColormap;
    end;

const
  sz_xPictFormInfo = 28;  
type
  PxPictVisual = ^TxPictVisual;
  TxPictVisual = record
      visual : TVisualID;
      format : TPictFormat;
    end;

const
  sz_xPictVisual = 8;  
type
  PxPictDepth = ^TxPictDepth;
  TxPictDepth = record
      depth : TCARD8;
      pad1 : TCARD8;
      nPictVisuals : TCARD16;
      pad2 : TCARD32;
    end;

const
  sz_xPictDepth = 8;  
type
  PxPictScreen = ^TxPictScreen;
  TxPictScreen = record
      nDepth : TCARD32;
      fallback : TPictFormat;
    end;

const
  sz_xPictScreen = 8;  
type
  PxIndexValue = ^TxIndexValue;
  TxIndexValue = record
      pixel : TCARD32;
      red : TCARD16;
      green : TCARD16;
      blue : TCARD16;
      alpha : TCARD16;
    end;

const
  sz_xIndexValue = 12;  
type
  PxRenderColor = ^TxRenderColor;
  TxRenderColor = record
      red : TCARD16;
      green : TCARD16;
      blue : TCARD16;
      alpha : TCARD16;
    end;

const
  sz_xRenderColor = 8;  
type
  PxPointFixed = ^TxPointFixed;
  TxPointFixed = record
      x : TFixed;
      y : TFixed;
    end;

const
  sz_xPointFixed = 8;  
type
  PxLineFixed = ^TxLineFixed;
  TxLineFixed = record
      p1 : TxPointFixed;
      p2 : TxPointFixed;
    end;

const
  sz_xLineFixed = 16;  
type
  PxTriangle = ^TxTriangle;
  TxTriangle = record
      p1 : TxPointFixed;
      p2 : TxPointFixed;
      p3 : TxPointFixed;
    end;

const
  sz_xTriangle = 24;  
type
  PxTrapezoid = ^TxTrapezoid;
  TxTrapezoid = record
      top : TFixed;
      bottom : TFixed;
      left : TxLineFixed;
      right : TxLineFixed;
    end;

const
  sz_xTrapezoid = 40;  
type
  PxGlyphInfo = ^TxGlyphInfo;
  TxGlyphInfo = record
      width : TCARD16;
      height : TCARD16;
      x : TINT16;
      y : TINT16;
      xOff : TINT16;
      yOff : TINT16;
    end;

const
  sz_xGlyphInfo = 12;  
type
  PxGlyphElt = ^TxGlyphElt;
  TxGlyphElt = record
      len : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD16;
      deltax : TINT16;
      deltay : TINT16;
    end;

const
  sz_xGlyphElt = 8;  
type
  PxSpanFix = ^TxSpanFix;
  TxSpanFix = record
      l : TFixed;
      r : TFixed;
      y : TFixed;
    end;

const
  sz_xSpanFix = 12;  
type
  PxTrap = ^TxTrap;
  TxTrap = record
      top : TxSpanFix;
      bot : TxSpanFix;
    end;

const
  sz_xTrap = 24;  

type
  PxRenderQueryVersionReq = ^TxRenderQueryVersionReq;
  TxRenderQueryVersionReq = record
      reqType : TCARD8;
      renderReqType : TCARD8;
      length : TCARD16;
      majorVersion : TCARD32;
      minorVersion : TCARD32;
    end;

const
  sz_xRenderQueryVersionReq = 12;  

type
  PxRenderQueryVersionReply = ^TxRenderQueryVersionReply;
  TxRenderQueryVersionReply = record
      _type : TBYTE;
      pad1 : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      majorVersion : TCARD32;
      minorVersion : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xRenderQueryVersionReply = 32;  
type
  PxRenderQueryPictFormatsReq = ^TxRenderQueryPictFormatsReq;
  TxRenderQueryPictFormatsReq = record
      reqType : TCARD8;
      renderReqType : TCARD8;
      length : TCARD16;
    end;

const
  sz_xRenderQueryPictFormatsReq = 4;  


type
  PxRenderQueryPictFormatsReply = ^TxRenderQueryPictFormatsReply;
  TxRenderQueryPictFormatsReply = record
      _type : TBYTE;
      pad1 : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      numFormats : TCARD32;
      numScreens : TCARD32;
      numDepths : TCARD32;
      numVisuals : TCARD32;
      numSubpixel : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xRenderQueryPictFormatsReply = 32;  
type
  PxRenderQueryPictIndexValuesReq = ^TxRenderQueryPictIndexValuesReq;
  TxRenderQueryPictIndexValuesReq = record
      reqType : TCARD8;
      renderReqType : TCARD8;
      length : TCARD16;
      format : TPictFormat;
    end;

const
  sz_xRenderQueryPictIndexValuesReq = 8;  

type
  PxRenderQueryPictIndexValuesReply = ^TxRenderQueryPictIndexValuesReply;
  TxRenderQueryPictIndexValuesReply = record
      _type : TBYTE;
      pad1 : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      numIndexValues : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xRenderQueryPictIndexValuesReply = 32;  
type
  PxRenderCreatePictureReq = ^TxRenderCreatePictureReq;
  TxRenderCreatePictureReq = record
      reqType : TCARD8;
      renderReqType : TCARD8;
      length : TCARD16;
      pid : TPicture;
      drawable : TDrawable;
      format : TPictFormat;
      mask : TCARD32;
    end;

const
  sz_xRenderCreatePictureReq = 20;  
type
  PxRenderChangePictureReq = ^TxRenderChangePictureReq;
  TxRenderChangePictureReq = record
      reqType : TCARD8;
      renderReqType : TCARD8;
      length : TCARD16;
      picture : TPicture;
      mask : TCARD32;
    end;

const
  sz_xRenderChangePictureReq = 12;  
type
  PxRenderSetPictureClipRectanglesReq = ^TxRenderSetPictureClipRectanglesReq;
  TxRenderSetPictureClipRectanglesReq = record
      reqType : TCARD8;
      renderReqType : TCARD8;
      length : TCARD16;
      picture : TPicture;
      xOrigin : TINT16;
      yOrigin : TINT16;
    end;

const
  sz_xRenderSetPictureClipRectanglesReq = 12;  
type
  PxRenderFreePictureReq = ^TxRenderFreePictureReq;
  TxRenderFreePictureReq = record
      reqType : TCARD8;
      renderReqType : TCARD8;
      length : TCARD16;
      picture : TPicture;
    end;

const
  sz_xRenderFreePictureReq = 8;  
type
  PxRenderCompositeReq = ^TxRenderCompositeReq;
  TxRenderCompositeReq = record
      reqType : TCARD8;
      renderReqType : TCARD8;
      length : TCARD16;
      op : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD16;
      src : TPicture;
      mask : TPicture;
      dst : TPicture;
      xSrc : TINT16;
      ySrc : TINT16;
      xMask : TINT16;
      yMask : TINT16;
      xDst : TINT16;
      yDst : TINT16;
      width : TCARD16;
      height : TCARD16;
    end;

const
  sz_xRenderCompositeReq = 36;  
type
  PxRenderScaleReq = ^TxRenderScaleReq;
  TxRenderScaleReq = record
      reqType : TCARD8;
      renderReqType : TCARD8;
      length : TCARD16;
      src : TPicture;
      dst : TPicture;
      colorScale : TCARD32;
      alphaScale : TCARD32;
      xSrc : TINT16;
      ySrc : TINT16;
      xDst : TINT16;
      yDst : TINT16;
      width : TCARD16;
      height : TCARD16;
    end;

const
  sz_xRenderScaleReq = 32;  
type
  PxRenderTrapezoidsReq = ^TxRenderTrapezoidsReq;
  TxRenderTrapezoidsReq = record
      reqType : TCARD8;
      renderReqType : TCARD8;
      length : TCARD16;
      op : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD16;
      src : TPicture;
      dst : TPicture;
      maskFormat : TPictFormat;
      xSrc : TINT16;
      ySrc : TINT16;
    end;

const
  sz_xRenderTrapezoidsReq = 24;  
type
  PxRenderTrianglesReq = ^TxRenderTrianglesReq;
  TxRenderTrianglesReq = record
      reqType : TCARD8;
      renderReqType : TCARD8;
      length : TCARD16;
      op : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD16;
      src : TPicture;
      dst : TPicture;
      maskFormat : TPictFormat;
      xSrc : TINT16;
      ySrc : TINT16;
    end;

const
  sz_xRenderTrianglesReq = 24;  
type
  PxRenderTriStripReq = ^TxRenderTriStripReq;
  TxRenderTriStripReq = record
      reqType : TCARD8;
      renderReqType : TCARD8;
      length : TCARD16;
      op : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD16;
      src : TPicture;
      dst : TPicture;
      maskFormat : TPictFormat;
      xSrc : TINT16;
      ySrc : TINT16;
    end;

const
  sz_xRenderTriStripReq = 24;  
type
  PxRenderTriFanReq = ^TxRenderTriFanReq;
  TxRenderTriFanReq = record
      reqType : TCARD8;
      renderReqType : TCARD8;
      length : TCARD16;
      op : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD16;
      src : TPicture;
      dst : TPicture;
      maskFormat : TPictFormat;
      xSrc : TINT16;
      ySrc : TINT16;
    end;

const
  sz_xRenderTriFanReq = 24;  
type
  PxRenderCreateGlyphSetReq = ^TxRenderCreateGlyphSetReq;
  TxRenderCreateGlyphSetReq = record
      reqType : TCARD8;
      renderReqType : TCARD8;
      length : TCARD16;
      gsid : TGlyphset;
      format : TPictFormat;
    end;

const
  sz_xRenderCreateGlyphSetReq = 12;  
type
  PxRenderReferenceGlyphSetReq = ^TxRenderReferenceGlyphSetReq;
  TxRenderReferenceGlyphSetReq = record
      reqType : TCARD8;
      renderReqType : TCARD8;
      length : TCARD16;
      gsid : TGlyphset;
      existing : TGlyphset;
    end;

const
  sz_xRenderReferenceGlyphSetReq = 24;  
type
  PxRenderFreeGlyphSetReq = ^TxRenderFreeGlyphSetReq;
  TxRenderFreeGlyphSetReq = record
      reqType : TCARD8;
      renderReqType : TCARD8;
      length : TCARD16;
      glyphset : TGlyphset;
    end;

const
  sz_xRenderFreeGlyphSetReq = 8;  
type
  PxRenderAddGlyphsReq = ^TxRenderAddGlyphsReq;
  TxRenderAddGlyphsReq = record
      reqType : TCARD8;
      renderReqType : TCARD8;
      length : TCARD16;
      glyphset : TGlyphset;
      nglyphs : TCARD32;
    end;

const
  sz_xRenderAddGlyphsReq = 12;  
type
  PxRenderFreeGlyphsReq = ^TxRenderFreeGlyphsReq;
  TxRenderFreeGlyphsReq = record
      reqType : TCARD8;
      renderReqType : TCARD8;
      length : TCARD16;
      glyphset : TGlyphset;
    end;

const
  sz_xRenderFreeGlyphsReq = 8;  
type
  PxRenderCompositeGlyphsReq = ^TxRenderCompositeGlyphsReq;
  TxRenderCompositeGlyphsReq = record
      reqType : TCARD8;
      renderReqType : TCARD8;
      length : TCARD16;
      op : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD16;
      src : TPicture;
      dst : TPicture;
      maskFormat : TPictFormat;
      glyphset : TGlyphset;
      xSrc : TINT16;
      ySrc : TINT16;
    end;
  TxRenderCompositeGlyphs8Req = TxRenderCompositeGlyphsReq;
  PxRenderCompositeGlyphs8Req = ^TxRenderCompositeGlyphs8Req;
  TxRenderCompositeGlyphs16Req = TxRenderCompositeGlyphsReq;
  PxRenderCompositeGlyphs16Req = ^TxRenderCompositeGlyphs16Req;
  TxRenderCompositeGlyphs32Req = TxRenderCompositeGlyphsReq;
  PxRenderCompositeGlyphs32Req = ^TxRenderCompositeGlyphs32Req;

const
  sz_xRenderCompositeGlyphs8Req = 28;  
  sz_xRenderCompositeGlyphs16Req = 28;  
  sz_xRenderCompositeGlyphs32Req = 28;  

type
  PxRenderFillRectanglesReq = ^TxRenderFillRectanglesReq;
  TxRenderFillRectanglesReq = record
      reqType : TCARD8;
      renderReqType : TCARD8;
      length : TCARD16;
      op : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD16;
      dst : TPicture;
      color : TxRenderColor;
    end;

const
  sz_xRenderFillRectanglesReq = 20;  

type
  PxRenderCreateCursorReq = ^TxRenderCreateCursorReq;
  TxRenderCreateCursorReq = record
      reqType : TCARD8;
      renderReqType : TCARD8;
      length : TCARD16;
      cid : TCursor;
      src : TPicture;
      x : TCARD16;
      y : TCARD16;
    end;

const
  sz_xRenderCreateCursorReq = 16;  


type
  PxRenderTransform = ^TxRenderTransform;
  TxRenderTransform = record
      matrix11 : TFixed;
      matrix12 : TFixed;
      matrix13 : TFixed;
      matrix21 : TFixed;
      matrix22 : TFixed;
      matrix23 : TFixed;
      matrix31 : TFixed;
      matrix32 : TFixed;
      matrix33 : TFixed;
    end;

const
  sz_xRenderTransform = 36;  
type
  PxRenderSetPictureTransformReq = ^TxRenderSetPictureTransformReq;
  TxRenderSetPictureTransformReq = record
      reqType : TCARD8;
      renderReqType : TCARD8;
      length : TCARD16;
      picture : TPicture;
      transform : TxRenderTransform;
    end;

const
  sz_xRenderSetPictureTransformReq = 44;  
type
  PxRenderQueryFiltersReq = ^TxRenderQueryFiltersReq;
  TxRenderQueryFiltersReq = record
      reqType : TCARD8;
      renderReqType : TCARD8;
      length : TCARD16;
      drawable : TDrawable;
    end;

const
  sz_xRenderQueryFiltersReq = 8;  



type
  PxRenderQueryFiltersReply = ^TxRenderQueryFiltersReply;
  TxRenderQueryFiltersReply = record
      _type : TBYTE;
      pad1 : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      numAliases : TCARD32;
      numFilters : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xRenderQueryFiltersReply = 32;  

type
  PxRenderSetPictureFilterReq = ^TxRenderSetPictureFilterReq;
  TxRenderSetPictureFilterReq = record
      reqType : TCARD8;
      renderReqType : TCARD8;
      length : TCARD16;
      picture : TPicture;
      nbytes : TCARD16;
      pad : TCARD16;
    end;

const
  sz_xRenderSetPictureFilterReq = 12;  

type
  PxAnimCursorElt = ^TxAnimCursorElt;
  TxAnimCursorElt = record
      cursor : TCursor;
      delay : TCARD32;
    end;

const
  sz_xAnimCursorElt = 8;  
type
  PxRenderCreateAnimCursorReq = ^TxRenderCreateAnimCursorReq;
  TxRenderCreateAnimCursorReq = record
      reqType : TCARD8;
      renderReqType : TCARD8;
      length : TCARD16;
      cid : TCursor;
    end;

const
  sz_xRenderCreateAnimCursorReq = 8;  

type
  PxRenderAddTrapsReq = ^TxRenderAddTrapsReq;
  TxRenderAddTrapsReq = record
      reqType : TCARD8;
      renderReqType : TCARD8;
      length : TCARD16;
      picture : TPicture;
      xOff : TINT16;
      yOff : TINT16;
    end;

const
  sz_xRenderAddTrapsReq = 12;  

type
  PxRenderCreateSolidFillReq = ^TxRenderCreateSolidFillReq;
  TxRenderCreateSolidFillReq = record
      reqType : TCARD8;
      renderReqType : TCARD8;
      length : TCARD16;
      pid : TPicture;
      color : TxRenderColor;
    end;

const
  sz_xRenderCreateSolidFillReq = 16;  
type
  PxRenderCreateLinearGradientReq = ^TxRenderCreateLinearGradientReq;
  TxRenderCreateLinearGradientReq = record
      reqType : TCARD8;
      renderReqType : TCARD8;
      length : TCARD16;
      pid : TPicture;
      p1 : TxPointFixed;
      p2 : TxPointFixed;
      nStops : TCARD32;
    end;

const
  sz_xRenderCreateLinearGradientReq = 28;  
type
  PxRenderCreateRadialGradientReq = ^TxRenderCreateRadialGradientReq;
  TxRenderCreateRadialGradientReq = record
      reqType : TCARD8;
      renderReqType : TCARD8;
      length : TCARD16;
      pid : TPicture;
      inner : TxPointFixed;
      outer : TxPointFixed;
      inner_radius : TFixed;
      outer_radius : TFixed;
      nStops : TCARD32;
    end;

const
  sz_xRenderCreateRadialGradientReq = 36;  

type
  PxRenderCreateConicalGradientReq = ^TxRenderCreateConicalGradientReq;
  TxRenderCreateConicalGradientReq = record
      reqType : TCARD8;
      renderReqType : TCARD8;
      length : TCARD16;
      pid : TPicture;
      center : TxPointFixed;
      angle : TFixed;
      nStops : TCARD32;
    end;

const
  sz_xRenderCreateConicalGradientReq = 24;  
{$undef Window}
{$undef Drawable}
{$undef Font}
{$undef Pixmap}
{$undef Cursor}
{$undef Colormap}
{$undef GContext}
{$undef Atom}
{$undef VisualID}
{$undef Time}
{$undef KeyCode}
{$undef KeySym}
{$undef Picture}
{$undef PictFormat}
{$undef Fixed}
{$undef Glyphset}
{$endif}


implementation


end.
