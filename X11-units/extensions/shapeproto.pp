
unit shapeproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/shapeproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/shapeproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/shapeproto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _SHAPEPROTO_H_}
{$define _SHAPEPROTO_H_}  
{$include <X11/extensions/shapeconst.h>}


  const
    Window = CARD32;    
    Time = CARD32;    
    X_ShapeQueryVersion = 0;    
    X_ShapeRectangles = 1;    
    X_ShapeMask = 2;    
    X_ShapeCombine = 3;    
    X_ShapeOffset = 4;    
    X_ShapeQueryExtents = 5;    
    X_ShapeSelectInput = 6;    
    X_ShapeInputSelected = 7;    
    X_ShapeGetRectangles = 8;    



  type
    _ShapeQueryVersion = record
        reqType : CARD8;
        shapeReqType : CARD8;
        length : CARD16;
      end;
    xShapeQueryVersionReq = _ShapeQueryVersion;

  const
    sz_xShapeQueryVersionReq = 4;    





  type
    xShapeQueryVersionReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        majorVersion : CARD16;
        minorVersion : CARD16;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;

  const
    sz_xShapeQueryVersionReply = 32;    







  type
    _ShapeRectangles = record
        reqType : CARD8;
        shapeReqType : CARD8;
        length : CARD16;
        op : CARD8;
        destKind : CARD8;
        ordering : CARD8;
        pad0 : CARD8;
        dest : Window;
        xOff : INT16;
        yOff : INT16;
      end;
    xShapeRectanglesReq = _ShapeRectangles;


  const
    sz_xShapeRectanglesReq = 16;    







  type
    _ShapeMask = record
        reqType : CARD8;
        shapeReqType : CARD8;
        length : CARD16;
        op : CARD8;
        destKind : CARD8;
        junk : CARD16;
        dest : Window;
        xOff : INT16;
        yOff : INT16;
        src : CARD32;
      end;
    xShapeMaskReq = _ShapeMask;

  const
    sz_xShapeMaskReq = 20;    







  type
    _ShapeCombine = record
        reqType : CARD8;
        shapeReqType : CARD8;
        length : CARD16;
        op : CARD8;
        destKind : CARD8;
        srcKind : CARD8;
        junk : CARD8;
        dest : Window;
        xOff : INT16;
        yOff : INT16;
        src : Window;
      end;
    xShapeCombineReq = _ShapeCombine;

  const
    sz_xShapeCombineReq = 20;    






  type
    _ShapeOffset = record
        reqType : CARD8;
        shapeReqType : CARD8;
        length : CARD16;
        destKind : CARD8;
        junk1 : CARD8;
        junk2 : CARD16;
        dest : Window;
        xOff : INT16;
        yOff : INT16;
      end;
    xShapeOffsetReq = _ShapeOffset;

  const
    sz_xShapeOffsetReq = 16;    



  type
    _ShapeQueryExtents = record
        reqType : CARD8;
        shapeReqType : CARD8;
        length : CARD16;
        window : Window;
      end;
    xShapeQueryExtentsReq = _ShapeQueryExtents;

  const
    sz_xShapeQueryExtentsReq = 8;    








  type
    xShapeQueryExtentsReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        boundingShaped : CARD8;
        clipShaped : CARD8;
        unused1 : CARD16;
        xBoundingShape : INT16;
        yBoundingShape : INT16;
        widthBoundingShape : CARD16;
        heightBoundingShape : CARD16;
        xClipShape : INT16;
        yClipShape : INT16;
        widthClipShape : CARD16;
        heightClipShape : CARD16;
        pad1 : CARD32;
      end;

  const
    sz_xShapeQueryExtentsReply = 32;    




  type
    _ShapeSelectInput = record
        reqType : CARD8;
        shapeReqType : CARD8;
        length : CARD16;
        window : Window;
        enable : BYTE;
        pad1 : BYTE;
        pad2 : CARD16;
      end;
    xShapeSelectInputReq = _ShapeSelectInput;

  const
    sz_xShapeSelectInputReq = 12;    






  type
    _ShapeNotify = record
        _type : BYTE;
        kind : BYTE;
        sequenceNumber : CARD16;
        window : Window;
        x : INT16;
        y : INT16;
        width : CARD16;
        height : CARD16;
        time : Time;
        shaped : BYTE;
        pad0 : BYTE;
        pad1 : CARD16;
        pad2 : CARD32;
        pad3 : CARD32;
      end;
    xShapeNotifyEvent = _ShapeNotify;

  const
    sz_xShapeNotifyEvent = 32;    



  type
    _ShapeInputSelected = record
        reqType : CARD8;
        shapeReqType : CARD8;
        length : CARD16;
        window : Window;
      end;
    xShapeInputSelectedReq = _ShapeInputSelected;

  const
    sz_xShapeInputSelectedReq = 8;    





  type
    xShapeInputSelectedReply = record
        _type : BYTE;
        enabled : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xShapeInputSelectedReply = 32;    




  type
    _ShapeGetRectangles = record
        reqType : CARD8;
        shapeReqType : CARD8;
        length : CARD16;
        window : Window;
        kind : CARD8;
        junk1 : CARD8;
        junk2 : CARD16;
      end;
    xShapeGetRectanglesReq = _ShapeGetRectangles;

  const
    sz_xShapeGetRectanglesReq = 12;    





  type
    xShapeGetRectanglesReply = record
        _type : BYTE;
        ordering : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        nrects : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;


  const
    sz_xShapeGetRectanglesReply = 32;    
{$undef Window}
{$undef Time}
{$endif}


implementation


end.
