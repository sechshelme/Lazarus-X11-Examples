
unit renderproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/renderproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/renderproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/renderproto.pp
}

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
    xDirectFormat = record
        red : CARD16;
        redMask : CARD16;
        green : CARD16;
        greenMask : CARD16;
        blue : CARD16;
        blueMask : CARD16;
        alpha : CARD16;
        alphaMask : CARD16;
      end;

  const
    sz_xDirectFormat = 16;    

  type
    xPictFormInfo = record
        id : PictFormat;
        _type : CARD8;
        depth : CARD8;
        pad1 : CARD16;
        direct : xDirectFormat;
        colormap : Colormap;
      end;

  const
    sz_xPictFormInfo = 28;    

  type
    xPictVisual = record
        visual : VisualID;
        format : PictFormat;
      end;

  const
    sz_xPictVisual = 8;    

  type
    xPictDepth = record
        depth : CARD8;
        pad1 : CARD8;
        nPictVisuals : CARD16;
        pad2 : CARD32;
      end;

  const
    sz_xPictDepth = 8;    

  type
    xPictScreen = record
        nDepth : CARD32;
        fallback : PictFormat;
      end;

  const
    sz_xPictScreen = 8;    

  type
    xIndexValue = record
        pixel : CARD32;
        red : CARD16;
        green : CARD16;
        blue : CARD16;
        alpha : CARD16;
      end;

  const
    sz_xIndexValue = 12;    

  type
    xRenderColor = record
        red : CARD16;
        green : CARD16;
        blue : CARD16;
        alpha : CARD16;
      end;

  const
    sz_xRenderColor = 8;    

  type
    xPointFixed = record
        x : Fixed;
        y : Fixed;
      end;

  const
    sz_xPointFixed = 8;    

  type
    xLineFixed = record
        p1 : xPointFixed;
        p2 : xPointFixed;
      end;

  const
    sz_xLineFixed = 16;    

  type
    xTriangle = record
        p1 : xPointFixed;
        p2 : xPointFixed;
        p3 : xPointFixed;
      end;

  const
    sz_xTriangle = 24;    

  type
    xTrapezoid = record
        top : Fixed;
        bottom : Fixed;
        left : xLineFixed;
        right : xLineFixed;
      end;

  const
    sz_xTrapezoid = 40;    

  type
    xGlyphInfo = record
        width : CARD16;
        height : CARD16;
        x : INT16;
        y : INT16;
        xOff : INT16;
        yOff : INT16;
      end;

  const
    sz_xGlyphInfo = 12;    

  type
    xGlyphElt = record
        len : CARD8;
        pad1 : CARD8;
        pad2 : CARD16;
        deltax : INT16;
        deltay : INT16;
      end;

  const
    sz_xGlyphElt = 8;    

  type
    xSpanFix = record
        l : Fixed;
        r : Fixed;
        y : Fixed;
      end;

  const
    sz_xSpanFix = 12;    

  type
    xTrap = record
        top : xSpanFix;
        bot : xSpanFix;
      end;

  const
    sz_xTrap = 24;    


  type
    xRenderQueryVersionReq = record
        reqType : CARD8;
        renderReqType : CARD8;
        length : CARD16;
        majorVersion : CARD32;
        minorVersion : CARD32;
      end;

  const
    sz_xRenderQueryVersionReq = 12;    


  type
    xRenderQueryVersionReply = record
        _type : BYTE;
        pad1 : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        majorVersion : CARD32;
        minorVersion : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xRenderQueryVersionReply = 32;    

  type
    xRenderQueryPictFormatsReq = record
        reqType : CARD8;
        renderReqType : CARD8;
        length : CARD16;
      end;

  const
    sz_xRenderQueryPictFormatsReq = 4;    



  type
    xRenderQueryPictFormatsReply = record
        _type : BYTE;
        pad1 : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        numFormats : CARD32;
        numScreens : CARD32;
        numDepths : CARD32;
        numVisuals : CARD32;
        numSubpixel : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xRenderQueryPictFormatsReply = 32;    

  type
    xRenderQueryPictIndexValuesReq = record
        reqType : CARD8;
        renderReqType : CARD8;
        length : CARD16;
        format : PictFormat;
      end;

  const
    sz_xRenderQueryPictIndexValuesReq = 8;    


  type
    xRenderQueryPictIndexValuesReply = record
        _type : BYTE;
        pad1 : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        numIndexValues : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xRenderQueryPictIndexValuesReply = 32;    

  type
    xRenderCreatePictureReq = record
        reqType : CARD8;
        renderReqType : CARD8;
        length : CARD16;
        pid : Picture;
        drawable : Drawable;
        format : PictFormat;
        mask : CARD32;
      end;

  const
    sz_xRenderCreatePictureReq = 20;    

  type
    xRenderChangePictureReq = record
        reqType : CARD8;
        renderReqType : CARD8;
        length : CARD16;
        picture : Picture;
        mask : CARD32;
      end;

  const
    sz_xRenderChangePictureReq = 12;    

  type
    xRenderSetPictureClipRectanglesReq = record
        reqType : CARD8;
        renderReqType : CARD8;
        length : CARD16;
        picture : Picture;
        xOrigin : INT16;
        yOrigin : INT16;
      end;

  const
    sz_xRenderSetPictureClipRectanglesReq = 12;    

  type
    xRenderFreePictureReq = record
        reqType : CARD8;
        renderReqType : CARD8;
        length : CARD16;
        picture : Picture;
      end;

  const
    sz_xRenderFreePictureReq = 8;    

  type
    xRenderCompositeReq = record
        reqType : CARD8;
        renderReqType : CARD8;
        length : CARD16;
        op : CARD8;
        pad1 : CARD8;
        pad2 : CARD16;
        src : Picture;
        mask : Picture;
        dst : Picture;
        xSrc : INT16;
        ySrc : INT16;
        xMask : INT16;
        yMask : INT16;
        xDst : INT16;
        yDst : INT16;
        width : CARD16;
        height : CARD16;
      end;

  const
    sz_xRenderCompositeReq = 36;    

  type
    xRenderScaleReq = record
        reqType : CARD8;
        renderReqType : CARD8;
        length : CARD16;
        src : Picture;
        dst : Picture;
        colorScale : CARD32;
        alphaScale : CARD32;
        xSrc : INT16;
        ySrc : INT16;
        xDst : INT16;
        yDst : INT16;
        width : CARD16;
        height : CARD16;
      end;

  const
    sz_xRenderScaleReq = 32;    

  type
    xRenderTrapezoidsReq = record
        reqType : CARD8;
        renderReqType : CARD8;
        length : CARD16;
        op : CARD8;
        pad1 : CARD8;
        pad2 : CARD16;
        src : Picture;
        dst : Picture;
        maskFormat : PictFormat;
        xSrc : INT16;
        ySrc : INT16;
      end;

  const
    sz_xRenderTrapezoidsReq = 24;    

  type
    xRenderTrianglesReq = record
        reqType : CARD8;
        renderReqType : CARD8;
        length : CARD16;
        op : CARD8;
        pad1 : CARD8;
        pad2 : CARD16;
        src : Picture;
        dst : Picture;
        maskFormat : PictFormat;
        xSrc : INT16;
        ySrc : INT16;
      end;

  const
    sz_xRenderTrianglesReq = 24;    

  type
    xRenderTriStripReq = record
        reqType : CARD8;
        renderReqType : CARD8;
        length : CARD16;
        op : CARD8;
        pad1 : CARD8;
        pad2 : CARD16;
        src : Picture;
        dst : Picture;
        maskFormat : PictFormat;
        xSrc : INT16;
        ySrc : INT16;
      end;

  const
    sz_xRenderTriStripReq = 24;    

  type
    xRenderTriFanReq = record
        reqType : CARD8;
        renderReqType : CARD8;
        length : CARD16;
        op : CARD8;
        pad1 : CARD8;
        pad2 : CARD16;
        src : Picture;
        dst : Picture;
        maskFormat : PictFormat;
        xSrc : INT16;
        ySrc : INT16;
      end;

  const
    sz_xRenderTriFanReq = 24;    

  type
    xRenderCreateGlyphSetReq = record
        reqType : CARD8;
        renderReqType : CARD8;
        length : CARD16;
        gsid : Glyphset;
        format : PictFormat;
      end;

  const
    sz_xRenderCreateGlyphSetReq = 12;    

  type
    xRenderReferenceGlyphSetReq = record
        reqType : CARD8;
        renderReqType : CARD8;
        length : CARD16;
        gsid : Glyphset;
        existing : Glyphset;
      end;

  const
    sz_xRenderReferenceGlyphSetReq = 24;    

  type
    xRenderFreeGlyphSetReq = record
        reqType : CARD8;
        renderReqType : CARD8;
        length : CARD16;
        glyphset : Glyphset;
      end;

  const
    sz_xRenderFreeGlyphSetReq = 8;    

  type
    xRenderAddGlyphsReq = record
        reqType : CARD8;
        renderReqType : CARD8;
        length : CARD16;
        glyphset : Glyphset;
        nglyphs : CARD32;
      end;

  const
    sz_xRenderAddGlyphsReq = 12;    

  type
    xRenderFreeGlyphsReq = record
        reqType : CARD8;
        renderReqType : CARD8;
        length : CARD16;
        glyphset : Glyphset;
      end;

  const
    sz_xRenderFreeGlyphsReq = 8;    

  type
    xRenderCompositeGlyphsReq = record
        reqType : CARD8;
        renderReqType : CARD8;
        length : CARD16;
        op : CARD8;
        pad1 : CARD8;
        pad2 : CARD16;
        src : Picture;
        dst : Picture;
        maskFormat : PictFormat;
        glyphset : Glyphset;
        xSrc : INT16;
        ySrc : INT16;
      end;
    xRenderCompositeGlyphs8Req = xRenderCompositeGlyphsReq;
    xRenderCompositeGlyphs16Req = xRenderCompositeGlyphsReq;
    xRenderCompositeGlyphs32Req = xRenderCompositeGlyphsReq;

  const
    sz_xRenderCompositeGlyphs8Req = 28;    
    sz_xRenderCompositeGlyphs16Req = 28;    
    sz_xRenderCompositeGlyphs32Req = 28;    


  type
    xRenderFillRectanglesReq = record
        reqType : CARD8;
        renderReqType : CARD8;
        length : CARD16;
        op : CARD8;
        pad1 : CARD8;
        pad2 : CARD16;
        dst : Picture;
        color : xRenderColor;
      end;

  const
    sz_xRenderFillRectanglesReq = 20;    


  type
    xRenderCreateCursorReq = record
        reqType : CARD8;
        renderReqType : CARD8;
        length : CARD16;
        cid : Cursor;
        src : Picture;
        x : CARD16;
        y : CARD16;
      end;

  const
    sz_xRenderCreateCursorReq = 16;    



  type
    xRenderTransform = record
        matrix11 : Fixed;
        matrix12 : Fixed;
        matrix13 : Fixed;
        matrix21 : Fixed;
        matrix22 : Fixed;
        matrix23 : Fixed;
        matrix31 : Fixed;
        matrix32 : Fixed;
        matrix33 : Fixed;
      end;

  const
    sz_xRenderTransform = 36;    

  type
    xRenderSetPictureTransformReq = record
        reqType : CARD8;
        renderReqType : CARD8;
        length : CARD16;
        picture : Picture;
        transform : xRenderTransform;
      end;

  const
    sz_xRenderSetPictureTransformReq = 44;    

  type
    xRenderQueryFiltersReq = record
        reqType : CARD8;
        renderReqType : CARD8;
        length : CARD16;
        drawable : Drawable;
      end;

  const
    sz_xRenderQueryFiltersReq = 8;    




  type
    xRenderQueryFiltersReply = record
        _type : BYTE;
        pad1 : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        numAliases : CARD32;
        numFilters : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xRenderQueryFiltersReply = 32;    


  type
    xRenderSetPictureFilterReq = record
        reqType : CARD8;
        renderReqType : CARD8;
        length : CARD16;
        picture : Picture;
        nbytes : CARD16;
        pad : CARD16;
      end;

  const
    sz_xRenderSetPictureFilterReq = 12;    


  type
    xAnimCursorElt = record
        cursor : Cursor;
        delay : CARD32;
      end;

  const
    sz_xAnimCursorElt = 8;    

  type
    xRenderCreateAnimCursorReq = record
        reqType : CARD8;
        renderReqType : CARD8;
        length : CARD16;
        cid : Cursor;
      end;

  const
    sz_xRenderCreateAnimCursorReq = 8;    


  type
    xRenderAddTrapsReq = record
        reqType : CARD8;
        renderReqType : CARD8;
        length : CARD16;
        picture : Picture;
        xOff : INT16;
        yOff : INT16;
      end;

  const
    sz_xRenderAddTrapsReq = 12;    


  type
    xRenderCreateSolidFillReq = record
        reqType : CARD8;
        renderReqType : CARD8;
        length : CARD16;
        pid : Picture;
        color : xRenderColor;
      end;

  const
    sz_xRenderCreateSolidFillReq = 16;    

  type
    xRenderCreateLinearGradientReq = record
        reqType : CARD8;
        renderReqType : CARD8;
        length : CARD16;
        pid : Picture;
        p1 : xPointFixed;
        p2 : xPointFixed;
        nStops : CARD32;
      end;

  const
    sz_xRenderCreateLinearGradientReq = 28;    

  type
    xRenderCreateRadialGradientReq = record
        reqType : CARD8;
        renderReqType : CARD8;
        length : CARD16;
        pid : Picture;
        inner : xPointFixed;
        outer : xPointFixed;
        inner_radius : Fixed;
        outer_radius : Fixed;
        nStops : CARD32;
      end;

  const
    sz_xRenderCreateRadialGradientReq = 36;    


  type
    xRenderCreateConicalGradientReq = record
        reqType : CARD8;
        renderReqType : CARD8;
        length : CARD16;
        pid : Picture;
        center : xPointFixed;
        angle : Fixed;
        nStops : CARD32;
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
