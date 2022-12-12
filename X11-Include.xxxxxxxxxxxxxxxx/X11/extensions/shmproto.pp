
unit shmproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/shmproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/shmproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/shmproto.pp
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
PShmAttach  = ^ShmAttach;
PShmAttachFd  = ^ShmAttachFd;
PShmCompletion  = ^ShmCompletion;
PShmCreatePixmap  = ^ShmCreatePixmap;
PShmCreateSegment  = ^ShmCreateSegment;
PShmDetach  = ^ShmDetach;
PShmGetImage  = ^ShmGetImage;
PShmGetImageReply  = ^ShmGetImageReply;
PShmPutImage  = ^ShmPutImage;
PShmQueryVersion  = ^ShmQueryVersion;
PxShmAttachFdReq  = ^xShmAttachFdReq;
PxShmAttachReq  = ^xShmAttachReq;
PxShmCompletionEvent  = ^xShmCompletionEvent;
PxShmCreatePixmapReq  = ^xShmCreatePixmapReq;
PxShmCreateSegmentReply  = ^xShmCreateSegmentReply;
PxShmCreateSegmentReq  = ^xShmCreateSegmentReq;
PxShmDetachReq  = ^xShmDetachReq;
PxShmGetImageReply  = ^xShmGetImageReply;
PxShmGetImageReq  = ^xShmGetImageReq;
PxShmPutImageReq  = ^xShmPutImageReq;
PxShmQueryVersionReply  = ^xShmQueryVersionReply;
PxShmQueryVersionReq  = ^xShmQueryVersionReq;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _SHMPROTO_H_}
{$define _SHMPROTO_H_}
{$include <X11/extensions/shm.h>}

const
  ShmSeg = CARD32;  
  Drawable = CARD32;  
  VisualID = CARD32;  
  GContext = CARD32;  
  Pixmap = CARD32;  
  X_ShmQueryVersion = 0;  
  X_ShmAttach = 1;  
  X_ShmDetach = 2;  
  X_ShmPutImage = 3;  
  X_ShmGetImage = 4;  
  X_ShmCreatePixmap = 5;  
  X_ShmAttachFd = 6;  
  X_ShmCreateSegment = 7;  


type
  PShmQueryVersion = ^TShmQueryVersion;
  TShmQueryVersion = record
      reqType : TCARD8;
      shmReqType : TCARD8;
      length : TCARD16;
    end;
  TxShmQueryVersionReq = TShmQueryVersion;
  PxShmQueryVersionReq = ^TxShmQueryVersionReq;

const
  sz_xShmQueryVersionReq = 4;  



type
  PxShmQueryVersionReply = ^TxShmQueryVersionReply;
  TxShmQueryVersionReply = record
      _type : TBYTE;
      sharedPixmaps : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      majorVersion : TCARD16;
      minorVersion : TCARD16;
      uid : TCARD16;
      gid : TCARD16;
      pixmapFormat : TCARD8;
      pad0 : TCARD8;
      pad1 : TCARD16;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xShmQueryVersionReply = 32;  


type
  PShmAttach = ^TShmAttach;
  TShmAttach = record
      reqType : TCARD8;
      shmReqType : TCARD8;
      length : TCARD16;
      shmseg : TShmSeg;
      shmid : TCARD32;
      readOnly : TBOOL;
      pad0 : TBYTE;
      pad1 : TCARD16;
    end;
  TxShmAttachReq = TShmAttach;
  PxShmAttachReq = ^TxShmAttachReq;

const
  sz_xShmAttachReq = 16;  


type
  PShmDetach = ^TShmDetach;
  TShmDetach = record
      reqType : TCARD8;
      shmReqType : TCARD8;
      length : TCARD16;
      shmseg : TShmSeg;
    end;
  TxShmDetachReq = TShmDetach;
  PxShmDetachReq = ^TxShmDetachReq;

const
  sz_xShmDetachReq = 8;  


type
  PShmPutImage = ^TShmPutImage;
  TShmPutImage = record
      reqType : TCARD8;
      shmReqType : TCARD8;
      length : TCARD16;
      drawable : TDrawable;
      gc : TGContext;
      totalWidth : TCARD16;
      totalHeight : TCARD16;
      srcX : TCARD16;
      srcY : TCARD16;
      srcWidth : TCARD16;
      srcHeight : TCARD16;
      dstX : TINT16;
      dstY : TINT16;
      depth : TCARD8;
      format : TCARD8;
      sendEvent : TCARD8;
      bpad : TCARD8;
      shmseg : TShmSeg;
      offset : TCARD32;
    end;
  TxShmPutImageReq = TShmPutImage;
  PxShmPutImageReq = ^TxShmPutImageReq;

const
  sz_xShmPutImageReq = 40;  


type
  PShmGetImage = ^TShmGetImage;
  TShmGetImage = record
      reqType : TCARD8;
      shmReqType : TCARD8;
      length : TCARD16;
      drawable : TDrawable;
      x : TINT16;
      y : TINT16;
      width : TCARD16;
      height : TCARD16;
      planeMask : TCARD32;
      format : TCARD8;
      pad0 : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD8;
      shmseg : TShmSeg;
      offset : TCARD32;
    end;
  TxShmGetImageReq = TShmGetImage;
  PxShmGetImageReq = ^TxShmGetImageReq;

const
  sz_xShmGetImageReq = 32;  

type
  PShmGetImageReply = ^TShmGetImageReply;
  TShmGetImageReply = record
      _type : TBYTE;
      depth : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      visual : TVisualID;
      size : TCARD32;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
    end;
  TxShmGetImageReply = TShmGetImageReply;
  PxShmGetImageReply = ^TxShmGetImageReply;

const
  sz_xShmGetImageReply = 32;  


type
  PShmCreatePixmap = ^TShmCreatePixmap;
  TShmCreatePixmap = record
      reqType : TCARD8;
      shmReqType : TCARD8;
      length : TCARD16;
      pid : TPixmap;
      drawable : TDrawable;
      width : TCARD16;
      height : TCARD16;
      depth : TCARD8;
      pad0 : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD8;
      shmseg : TShmSeg;
      offset : TCARD32;
    end;
  TxShmCreatePixmapReq = TShmCreatePixmap;
  PxShmCreatePixmapReq = ^TxShmCreatePixmapReq;

const
  sz_xShmCreatePixmapReq = 28;  

type
  PShmCompletion = ^TShmCompletion;
  TShmCompletion = record
      _type : TBYTE;
      bpad0 : TBYTE;
      sequenceNumber : TCARD16;
      drawable : TDrawable;
      minorEvent : TCARD16;
      majorEvent : TBYTE;
      bpad1 : TBYTE;
      shmseg : TShmSeg;
      offset : TCARD32;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
    end;
  TxShmCompletionEvent = TShmCompletion;
  PxShmCompletionEvent = ^TxShmCompletionEvent;

const
  sz_xShmCompletionEvent = 32;  



type
  PShmAttachFd = ^TShmAttachFd;
  TShmAttachFd = record
      reqType : TCARD8;
      shmReqType : TCARD8;
      length : TCARD16;
      shmseg : TShmSeg;
      readOnly : TBOOL;
      pad0 : TBYTE;
      pad1 : TCARD16;
    end;
  TxShmAttachFdReq = TShmAttachFd;
  PxShmAttachFdReq = ^TxShmAttachFdReq;


const
  sz_xShmAttachFdReq = 12;  


type
  PShmCreateSegment = ^TShmCreateSegment;
  TShmCreateSegment = record
      reqType : TCARD8;
      shmReqType : TCARD8;
      length : TCARD16;
      shmseg : TShmSeg;
      size : TCARD32;
      readOnly : TBOOL;
      pad0 : TBYTE;
      pad1 : TCARD16;
    end;
  TxShmCreateSegmentReq = TShmCreateSegment;
  PxShmCreateSegmentReq = ^TxShmCreateSegmentReq;

const
  sz_xShmCreateSegmentReq = 16;  










type
  PxShmCreateSegmentReply = ^TxShmCreateSegmentReply;
  TxShmCreateSegmentReply = record
      _type : TCARD8;
      nfd : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
      pad7 : TCARD32;
    end;


const
  sz_xShmCreateSegmentReply = 32;  
{$undef ShmSeg}
{$undef Drawable}
{$undef VisualID}
{$undef GContext}
{$undef Pixmap}
{$endif}


implementation


end.
