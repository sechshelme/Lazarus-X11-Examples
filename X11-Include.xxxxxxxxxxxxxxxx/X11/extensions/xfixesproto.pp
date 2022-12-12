
unit xfixesproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xfixesproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xfixesproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xfixesproto.pp
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
PxXFixesChangeCursorByNameReq  = ^xXFixesChangeCursorByNameReq;
PxXFixesChangeCursorReq  = ^xXFixesChangeCursorReq;
PxXFixesChangeSaveSetReq  = ^xXFixesChangeSaveSetReq;
PxXFixesCombineRegionReq  = ^xXFixesCombineRegionReq;
PxXFixesCopyRegionReq  = ^xXFixesCopyRegionReq;
PxXFixesCreatePointerBarrierReq  = ^xXFixesCreatePointerBarrierReq;
PxXFixesCreateRegionFromBitmapReq  = ^xXFixesCreateRegionFromBitmapReq;
PxXFixesCreateRegionFromGCReq  = ^xXFixesCreateRegionFromGCReq;
PxXFixesCreateRegionFromPictureReq  = ^xXFixesCreateRegionFromPictureReq;
PxXFixesCreateRegionFromWindowReq  = ^xXFixesCreateRegionFromWindowReq;
PxXFixesCreateRegionReq  = ^xXFixesCreateRegionReq;
PxXFixesCursorNotifyEvent  = ^xXFixesCursorNotifyEvent;
PxXFixesDestroyPointerBarrierReq  = ^xXFixesDestroyPointerBarrierReq;
PxXFixesDestroyRegionReq  = ^xXFixesDestroyRegionReq;
PxXFixesExpandRegionReq  = ^xXFixesExpandRegionReq;
PxXFixesFetchRegionReply  = ^xXFixesFetchRegionReply;
PxXFixesFetchRegionReq  = ^xXFixesFetchRegionReq;
PxXFixesGetClientDisconnectModeReply  = ^xXFixesGetClientDisconnectModeReply;
PxXFixesGetClientDisconnectModeReq  = ^xXFixesGetClientDisconnectModeReq;
PxXFixesGetCursorImageAndNameReply  = ^xXFixesGetCursorImageAndNameReply;
PxXFixesGetCursorImageAndNameReq  = ^xXFixesGetCursorImageAndNameReq;
PxXFixesGetCursorImageReply  = ^xXFixesGetCursorImageReply;
PxXFixesGetCursorImageReq  = ^xXFixesGetCursorImageReq;
PxXFixesGetCursorNameReply  = ^xXFixesGetCursorNameReply;
PxXFixesGetCursorNameReq  = ^xXFixesGetCursorNameReq;
PxXFixesHideCursorReq  = ^xXFixesHideCursorReq;
PxXFixesIntersectRegionReq  = ^xXFixesIntersectRegionReq;
PxXFixesInvertRegionReq  = ^xXFixesInvertRegionReq;
PxXFixesQueryVersionReply  = ^xXFixesQueryVersionReply;
PxXFixesQueryVersionReq  = ^xXFixesQueryVersionReq;
PxXFixesRegionExtentsReq  = ^xXFixesRegionExtentsReq;
PxXFixesReq  = ^xXFixesReq;
PxXFixesSelectCursorInputReq  = ^xXFixesSelectCursorInputReq;
PxXFixesSelectionNotifyEvent  = ^xXFixesSelectionNotifyEvent;
PxXFixesSelectSelectionInputReq  = ^xXFixesSelectSelectionInputReq;
PxXFixesSetClientDisconnectModeReq  = ^xXFixesSetClientDisconnectModeReq;
PxXFixesSetCursorNameReq  = ^xXFixesSetCursorNameReq;
PxXFixesSetGCClipRegionReq  = ^xXFixesSetGCClipRegionReq;
PxXFixesSetPictureClipRegionReq  = ^xXFixesSetPictureClipRegionReq;
PxXFixesSetRegionReq  = ^xXFixesSetRegionReq;
PxXFixesSetWindowShapeRegionReq  = ^xXFixesSetWindowShapeRegionReq;
PxXFixesShowCursorReq  = ^xXFixesShowCursorReq;
PxXFixesSubtractRegionReq  = ^xXFixesSubtractRegionReq;
PxXFixesTranslateRegionReq  = ^xXFixesTranslateRegionReq;
PxXFixesUnionRegionReq  = ^xXFixesUnionRegionReq;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XFIXESPROTO_H_}
{$define _XFIXESPROTO_H_}
{$include <X11/Xmd.h>}
{$include <X11/extensions/xfixeswire.h>}
{$include <X11/extensions/shapeconst.h>}

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

type
  PxXFixesReq = ^TxXFixesReq;
  TxXFixesReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
    end;


  PxXFixesQueryVersionReq = ^TxXFixesQueryVersionReq;
  TxXFixesQueryVersionReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
      majorVersion : TCARD32;
      minorVersion : TCARD32;
    end;

const
  sz_xXFixesQueryVersionReq = 12;  

type
  PxXFixesQueryVersionReply = ^TxXFixesQueryVersionReply;
  TxXFixesQueryVersionReply = record
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
  sz_xXFixesQueryVersionReply = 32;  



type
  PxXFixesChangeSaveSetReq = ^TxXFixesChangeSaveSetReq;
  TxXFixesChangeSaveSetReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
      mode : TBYTE;
      target : TBYTE;
      map : TBYTE;
      pad1 : TBYTE;
      window : TWindow;
    end;

const
  sz_xXFixesChangeSaveSetReq = 12;  
type
  PxXFixesSelectSelectionInputReq = ^TxXFixesSelectSelectionInputReq;
  TxXFixesSelectSelectionInputReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
      selection : TAtom;
      eventMask : TCARD32;
    end;

const
  sz_xXFixesSelectSelectionInputReq = 16;  
type
  PxXFixesSelectionNotifyEvent = ^TxXFixesSelectionNotifyEvent;
  TxXFixesSelectionNotifyEvent = record
      _type : TCARD8;
      subtype : TCARD8;
      sequenceNumber : TCARD16;
      window : TWindow;
      owner : TWindow;
      selection : TAtom;
      timestamp : TTime;
      selectionTimestamp : TTime;
      pad2 : TCARD32;
      pad3 : TCARD32;
    end;

  PxXFixesSelectCursorInputReq = ^TxXFixesSelectCursorInputReq;
  TxXFixesSelectCursorInputReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
      eventMask : TCARD32;
    end;

const
  sz_xXFixesSelectCursorInputReq = 12;  

type
  PxXFixesCursorNotifyEvent = ^TxXFixesCursorNotifyEvent;
  TxXFixesCursorNotifyEvent = record
      _type : TCARD8;
      subtype : TCARD8;
      sequenceNumber : TCARD16;
      window : TWindow;
      cursorSerial : TCARD32;
      timestamp : TTime;
      name : TAtom;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
    end;

  PxXFixesGetCursorImageReq = ^TxXFixesGetCursorImageReq;
  TxXFixesGetCursorImageReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
    end;

const
  sz_xXFixesGetCursorImageReq = 4;  

type
  PxXFixesGetCursorImageReply = ^TxXFixesGetCursorImageReply;
  TxXFixesGetCursorImageReply = record
      _type : TBYTE;
      pad1 : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      x : TINT16;
      y : TINT16;
      width : TCARD16;
      height : TCARD16;
      xhot : TCARD16;
      yhot : TCARD16;
      cursorSerial : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
    end;

const
  sz_xXFixesGetCursorImageReply = 32;  

  Region = CARD32;  

type
  PxXFixesCreateRegionReq = ^TxXFixesCreateRegionReq;
  TxXFixesCreateRegionReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
      region : TRegion;
    end;

const
  sz_xXFixesCreateRegionReq = 8;  
type
  PxXFixesCreateRegionFromBitmapReq = ^TxXFixesCreateRegionFromBitmapReq;
  TxXFixesCreateRegionFromBitmapReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
      region : TRegion;
      bitmap : TPixmap;
    end;

const
  sz_xXFixesCreateRegionFromBitmapReq = 12;  
type
  PxXFixesCreateRegionFromWindowReq = ^TxXFixesCreateRegionFromWindowReq;
  TxXFixesCreateRegionFromWindowReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
      region : TRegion;
      window : TWindow;
      kind : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD16;
    end;

const
  sz_xXFixesCreateRegionFromWindowReq = 16;  
type
  PxXFixesCreateRegionFromGCReq = ^TxXFixesCreateRegionFromGCReq;
  TxXFixesCreateRegionFromGCReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
      region : TRegion;
      gc : TGContext;
    end;

const
  sz_xXFixesCreateRegionFromGCReq = 12;  
type
  PxXFixesCreateRegionFromPictureReq = ^TxXFixesCreateRegionFromPictureReq;
  TxXFixesCreateRegionFromPictureReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
      region : TRegion;
      picture : TPicture;
    end;

const
  sz_xXFixesCreateRegionFromPictureReq = 12;  
type
  PxXFixesDestroyRegionReq = ^TxXFixesDestroyRegionReq;
  TxXFixesDestroyRegionReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
      region : TRegion;
    end;

const
  sz_xXFixesDestroyRegionReq = 8;  

type
  PxXFixesSetRegionReq = ^TxXFixesSetRegionReq;
  TxXFixesSetRegionReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
      region : TRegion;
    end;

const
  sz_xXFixesSetRegionReq = 8;  
type
  PxXFixesCopyRegionReq = ^TxXFixesCopyRegionReq;
  TxXFixesCopyRegionReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
      source : TRegion;
      destination : TRegion;
    end;

const
  sz_xXFixesCopyRegionReq = 12;  
type
  PxXFixesCombineRegionReq = ^TxXFixesCombineRegionReq;
  TxXFixesCombineRegionReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
      source1 : TRegion;
      source2 : TRegion;
      destination : TRegion;
    end;
  TxXFixesUnionRegionReq = TxXFixesCombineRegionReq;
  PxXFixesUnionRegionReq = ^TxXFixesUnionRegionReq;
  TxXFixesIntersectRegionReq = TxXFixesCombineRegionReq;
  PxXFixesIntersectRegionReq = ^TxXFixesIntersectRegionReq;
  TxXFixesSubtractRegionReq = TxXFixesCombineRegionReq;
  PxXFixesSubtractRegionReq = ^TxXFixesSubtractRegionReq;

const
  sz_xXFixesCombineRegionReq = 16;  
  sz_xXFixesUnionRegionReq = sz_xXFixesCombineRegionReq;  
  sz_xXFixesIntersectRegionReq = sz_xXFixesCombineRegionReq;  
  sz_xXFixesSubtractRegionReq = sz_xXFixesCombineRegionReq;  
type
  PxXFixesInvertRegionReq = ^TxXFixesInvertRegionReq;
  TxXFixesInvertRegionReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
      source : TRegion;
      x : TINT16;
      y : TINT16;
      width : TCARD16;
      height : TCARD16;
      destination : TRegion;
    end;

const
  sz_xXFixesInvertRegionReq = 20;  
type
  PxXFixesTranslateRegionReq = ^TxXFixesTranslateRegionReq;
  TxXFixesTranslateRegionReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
      region : TRegion;
      dx : TINT16;
      dy : TINT16;
    end;

const
  sz_xXFixesTranslateRegionReq = 12;  
type
  PxXFixesRegionExtentsReq = ^TxXFixesRegionExtentsReq;
  TxXFixesRegionExtentsReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
      source : TRegion;
      destination : TRegion;
    end;

const
  sz_xXFixesRegionExtentsReq = 12;  
type
  PxXFixesFetchRegionReq = ^TxXFixesFetchRegionReq;
  TxXFixesFetchRegionReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
      region : TRegion;
    end;

const
  sz_xXFixesFetchRegionReq = 8;  

type
  PxXFixesFetchRegionReply = ^TxXFixesFetchRegionReply;
  TxXFixesFetchRegionReply = record
      _type : TBYTE;
      pad1 : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      x : TINT16;
      y : TINT16;
      width : TCARD16;
      height : TCARD16;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xXFixesFetchRegionReply = 32;  
type
  PxXFixesSetGCClipRegionReq = ^TxXFixesSetGCClipRegionReq;
  TxXFixesSetGCClipRegionReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
      gc : TGContext;
      region : TRegion;
      xOrigin : TINT16;
      yOrigin : TINT16;
    end;

const
  sz_xXFixesSetGCClipRegionReq = 16;  
type
  PxXFixesSetWindowShapeRegionReq = ^TxXFixesSetWindowShapeRegionReq;
  TxXFixesSetWindowShapeRegionReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
      dest : TWindow;
      destKind : TBYTE;
      pad1 : TCARD8;
      pad2 : TCARD16;
      xOff : TINT16;
      yOff : TINT16;
      region : TRegion;
    end;

const
  sz_xXFixesSetWindowShapeRegionReq = 20;  
type
  PxXFixesSetPictureClipRegionReq = ^TxXFixesSetPictureClipRegionReq;
  TxXFixesSetPictureClipRegionReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
      picture : TPicture;
      region : TRegion;
      xOrigin : TINT16;
      yOrigin : TINT16;
    end;

const
  sz_xXFixesSetPictureClipRegionReq = 16;  
type
  PxXFixesSetCursorNameReq = ^TxXFixesSetCursorNameReq;
  TxXFixesSetCursorNameReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
      cursor : TCursor;
      nbytes : TCARD16;
      pad : TCARD16;
    end;

const
  sz_xXFixesSetCursorNameReq = 12;  
type
  PxXFixesGetCursorNameReq = ^TxXFixesGetCursorNameReq;
  TxXFixesGetCursorNameReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
      cursor : TCursor;
    end;

const
  sz_xXFixesGetCursorNameReq = 8;  

type
  PxXFixesGetCursorNameReply = ^TxXFixesGetCursorNameReply;
  TxXFixesGetCursorNameReply = record
      _type : TBYTE;
      pad1 : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      atom : TAtom;
      nbytes : TCARD16;
      pad2 : TCARD16;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xXFixesGetCursorNameReply = 32;  
type
  PxXFixesGetCursorImageAndNameReq = ^TxXFixesGetCursorImageAndNameReq;
  TxXFixesGetCursorImageAndNameReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
    end;

const
  sz_xXFixesGetCursorImageAndNameReq = 4;  

type
  PxXFixesGetCursorImageAndNameReply = ^TxXFixesGetCursorImageAndNameReply;
  TxXFixesGetCursorImageAndNameReply = record
      _type : TBYTE;
      pad1 : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      x : TINT16;
      y : TINT16;
      width : TCARD16;
      height : TCARD16;
      xhot : TCARD16;
      yhot : TCARD16;
      cursorSerial : TCARD32;
      cursorName : TAtom;
      nbytes : TCARD16;
      pad : TCARD16;
    end;

const
  sz_xXFixesGetCursorImageAndNameReply = 32;  
type
  PxXFixesChangeCursorReq = ^TxXFixesChangeCursorReq;
  TxXFixesChangeCursorReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
      source : TCursor;
      destination : TCursor;
    end;

const
  sz_xXFixesChangeCursorReq = 12;  
type
  PxXFixesChangeCursorByNameReq = ^TxXFixesChangeCursorByNameReq;
  TxXFixesChangeCursorByNameReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
      source : TCursor;
      nbytes : TCARD16;
      pad : TCARD16;
    end;

const
  sz_xXFixesChangeCursorByNameReq = 12;  

type
  PxXFixesExpandRegionReq = ^TxXFixesExpandRegionReq;
  TxXFixesExpandRegionReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
      source : TRegion;
      destination : TRegion;
      left : TCARD16;
      right : TCARD16;
      top : TCARD16;
      bottom : TCARD16;
    end;

const
  sz_xXFixesExpandRegionReq = 20;  

type
  PxXFixesHideCursorReq = ^TxXFixesHideCursorReq;
  TxXFixesHideCursorReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
    end;

function sz_xXFixesHideCursorReq : longint; { return type might be wrong }

type
  PxXFixesShowCursorReq = ^TxXFixesShowCursorReq;
  TxXFixesShowCursorReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
    end;

function sz_xXFixesShowCursorReq : longint; { return type might be wrong }


const
  Barrier = CARD32;  

type
  PxXFixesCreatePointerBarrierReq = ^TxXFixesCreatePointerBarrierReq;
  TxXFixesCreatePointerBarrierReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
      barrier : TBarrier;
      window : TWindow;
      x1 : TINT16;
      y1 : TINT16;
      x2 : TINT16;
      y2 : TINT16;
      directions : TCARD32;
      pad : TCARD16;
      num_devices : TCARD16;
    end;

const
  sz_xXFixesCreatePointerBarrierReq = 28;  
type
  PxXFixesDestroyPointerBarrierReq = ^TxXFixesDestroyPointerBarrierReq;
  TxXFixesDestroyPointerBarrierReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
      barrier : TBarrier;
    end;

const
  sz_xXFixesDestroyPointerBarrierReq = 8;  

type
  PxXFixesSetClientDisconnectModeReq = ^TxXFixesSetClientDisconnectModeReq;
  TxXFixesSetClientDisconnectModeReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
      disconnect_mode : TCARD32;
    end;

const
  sz_xXFixesSetClientDisconnectModeReq = 8;  
type
  PxXFixesGetClientDisconnectModeReq = ^TxXFixesGetClientDisconnectModeReq;
  TxXFixesGetClientDisconnectModeReq = record
      reqType : TCARD8;
      xfixesReqType : TCARD8;
      length : TCARD16;
    end;

const
  sz_xXFixesGetClientDisconnectModeReq = 4;  

type
  PxXFixesGetClientDisconnectModeReply = ^TxXFixesGetClientDisconnectModeReply;
  TxXFixesGetClientDisconnectModeReply = record
      _type : TBYTE;
      pad0 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      disconnect_mode : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xXFixesGetClientDisconnectModeReply = 32;  
{$undef Barrier}
{$undef Region}
{$undef Picture}
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
{$endif}


implementation

function sz_xXFixesHideCursorReq : longint; { return type might be wrong }
  begin
    sz_xXFixesHideCursorReq:=sizeof(xXFixesHideCursorReq);
  end;

function sz_xXFixesShowCursorReq : longint; { return type might be wrong }
  begin
    sz_xXFixesShowCursorReq:=sizeof(xXFixesShowCursorReq);
  end;


end.
