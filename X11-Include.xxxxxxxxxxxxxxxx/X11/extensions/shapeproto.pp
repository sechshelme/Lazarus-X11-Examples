
unit shapeproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/shapeproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/shapeproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/shapeproto.pp
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
PShapeCombine  = ^ShapeCombine;
PShapeGetRectangles  = ^ShapeGetRectangles;
PShapeInputSelected  = ^ShapeInputSelected;
PShapeMask  = ^ShapeMask;
PShapeNotify  = ^ShapeNotify;
PShapeOffset  = ^ShapeOffset;
PShapeQueryExtents  = ^ShapeQueryExtents;
PShapeQueryVersion  = ^ShapeQueryVersion;
PShapeRectangles  = ^ShapeRectangles;
PShapeSelectInput  = ^ShapeSelectInput;
PxShapeCombineReq  = ^xShapeCombineReq;
PxShapeGetRectanglesReply  = ^xShapeGetRectanglesReply;
PxShapeGetRectanglesReq  = ^xShapeGetRectanglesReq;
PxShapeInputSelectedReply  = ^xShapeInputSelectedReply;
PxShapeInputSelectedReq  = ^xShapeInputSelectedReq;
PxShapeMaskReq  = ^xShapeMaskReq;
PxShapeNotifyEvent  = ^xShapeNotifyEvent;
PxShapeOffsetReq  = ^xShapeOffsetReq;
PxShapeQueryExtentsReply  = ^xShapeQueryExtentsReply;
PxShapeQueryExtentsReq  = ^xShapeQueryExtentsReq;
PxShapeQueryVersionReply  = ^xShapeQueryVersionReply;
PxShapeQueryVersionReq  = ^xShapeQueryVersionReq;
PxShapeRectanglesReq  = ^xShapeRectanglesReq;
PxShapeSelectInputReq  = ^xShapeSelectInputReq;
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
  PShapeQueryVersion = ^TShapeQueryVersion;
  TShapeQueryVersion = record
      reqType : TCARD8;
      shapeReqType : TCARD8;
      length : TCARD16;
    end;
  TxShapeQueryVersionReq = TShapeQueryVersion;
  PxShapeQueryVersionReq = ^TxShapeQueryVersionReq;

const
  sz_xShapeQueryVersionReq = 4;  




type
  PxShapeQueryVersionReply = ^TxShapeQueryVersionReply;
  TxShapeQueryVersionReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      majorVersion : TCARD16;
      minorVersion : TCARD16;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xShapeQueryVersionReply = 32;  






type
  PShapeRectangles = ^TShapeRectangles;
  TShapeRectangles = record
      reqType : TCARD8;
      shapeReqType : TCARD8;
      length : TCARD16;
      op : TCARD8;
      destKind : TCARD8;
      ordering : TCARD8;
      pad0 : TCARD8;
      dest : TWindow;
      xOff : TINT16;
      yOff : TINT16;
    end;
  TxShapeRectanglesReq = TShapeRectangles;
  PxShapeRectanglesReq = ^TxShapeRectanglesReq;


const
  sz_xShapeRectanglesReq = 16;  






type
  PShapeMask = ^TShapeMask;
  TShapeMask = record
      reqType : TCARD8;
      shapeReqType : TCARD8;
      length : TCARD16;
      op : TCARD8;
      destKind : TCARD8;
      junk : TCARD16;
      dest : TWindow;
      xOff : TINT16;
      yOff : TINT16;
      src : TCARD32;
    end;
  TxShapeMaskReq = TShapeMask;
  PxShapeMaskReq = ^TxShapeMaskReq;

const
  sz_xShapeMaskReq = 20;  






type
  PShapeCombine = ^TShapeCombine;
  TShapeCombine = record
      reqType : TCARD8;
      shapeReqType : TCARD8;
      length : TCARD16;
      op : TCARD8;
      destKind : TCARD8;
      srcKind : TCARD8;
      junk : TCARD8;
      dest : TWindow;
      xOff : TINT16;
      yOff : TINT16;
      src : TWindow;
    end;
  TxShapeCombineReq = TShapeCombine;
  PxShapeCombineReq = ^TxShapeCombineReq;

const
  sz_xShapeCombineReq = 20;  





type
  PShapeOffset = ^TShapeOffset;
  TShapeOffset = record
      reqType : TCARD8;
      shapeReqType : TCARD8;
      length : TCARD16;
      destKind : TCARD8;
      junk1 : TCARD8;
      junk2 : TCARD16;
      dest : TWindow;
      xOff : TINT16;
      yOff : TINT16;
    end;
  TxShapeOffsetReq = TShapeOffset;
  PxShapeOffsetReq = ^TxShapeOffsetReq;

const
  sz_xShapeOffsetReq = 16;  


type
  PShapeQueryExtents = ^TShapeQueryExtents;
  TShapeQueryExtents = record
      reqType : TCARD8;
      shapeReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
    end;
  TxShapeQueryExtentsReq = TShapeQueryExtents;
  PxShapeQueryExtentsReq = ^TxShapeQueryExtentsReq;

const
  sz_xShapeQueryExtentsReq = 8;  







type
  PxShapeQueryExtentsReply = ^TxShapeQueryExtentsReply;
  TxShapeQueryExtentsReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      boundingShaped : TCARD8;
      clipShaped : TCARD8;
      unused1 : TCARD16;
      xBoundingShape : TINT16;
      yBoundingShape : TINT16;
      widthBoundingShape : TCARD16;
      heightBoundingShape : TCARD16;
      xClipShape : TINT16;
      yClipShape : TINT16;
      widthClipShape : TCARD16;
      heightClipShape : TCARD16;
      pad1 : TCARD32;
    end;

const
  sz_xShapeQueryExtentsReply = 32;  



type
  PShapeSelectInput = ^TShapeSelectInput;
  TShapeSelectInput = record
      reqType : TCARD8;
      shapeReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
      enable : TBYTE;
      pad1 : TBYTE;
      pad2 : TCARD16;
    end;
  TxShapeSelectInputReq = TShapeSelectInput;
  PxShapeSelectInputReq = ^TxShapeSelectInputReq;

const
  sz_xShapeSelectInputReq = 12;  





type
  PShapeNotify = ^TShapeNotify;
  TShapeNotify = record
      _type : TBYTE;
      kind : TBYTE;
      sequenceNumber : TCARD16;
      window : TWindow;
      x : TINT16;
      y : TINT16;
      width : TCARD16;
      height : TCARD16;
      time : TTime;
      shaped : TBYTE;
      pad0 : TBYTE;
      pad1 : TCARD16;
      pad2 : TCARD32;
      pad3 : TCARD32;
    end;
  TxShapeNotifyEvent = TShapeNotify;
  PxShapeNotifyEvent = ^TxShapeNotifyEvent;

const
  sz_xShapeNotifyEvent = 32;  


type
  PShapeInputSelected = ^TShapeInputSelected;
  TShapeInputSelected = record
      reqType : TCARD8;
      shapeReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
    end;
  TxShapeInputSelectedReq = TShapeInputSelected;
  PxShapeInputSelectedReq = ^TxShapeInputSelectedReq;

const
  sz_xShapeInputSelectedReq = 8;  




type
  PxShapeInputSelectedReply = ^TxShapeInputSelectedReply;
  TxShapeInputSelectedReply = record
      _type : TBYTE;
      enabled : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xShapeInputSelectedReply = 32;  



type
  PShapeGetRectangles = ^TShapeGetRectangles;
  TShapeGetRectangles = record
      reqType : TCARD8;
      shapeReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
      kind : TCARD8;
      junk1 : TCARD8;
      junk2 : TCARD16;
    end;
  TxShapeGetRectanglesReq = TShapeGetRectangles;
  PxShapeGetRectanglesReq = ^TxShapeGetRectanglesReq;

const
  sz_xShapeGetRectanglesReq = 12;  




type
  PxShapeGetRectanglesReply = ^TxShapeGetRectanglesReply;
  TxShapeGetRectanglesReply = record
      _type : TBYTE;
      ordering : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      nrects : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;


const
  sz_xShapeGetRectanglesReply = 32;  
{$undef Window}
{$undef Time}
{$endif}


implementation


end.
