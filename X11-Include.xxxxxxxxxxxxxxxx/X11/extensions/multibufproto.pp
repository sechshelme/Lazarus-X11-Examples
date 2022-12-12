
unit multibufproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/multibufproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/multibufproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/multibufproto.pp
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
PxMbufBufferInfo  = ^xMbufBufferInfo;
PxMbufClearImageBufferAreaReq  = ^xMbufClearImageBufferAreaReq;
PxMbufClobberNotifyEvent  = ^xMbufClobberNotifyEvent;
PxMbufCreateImageBuffersReply  = ^xMbufCreateImageBuffersReply;
PxMbufCreateImageBuffersReq  = ^xMbufCreateImageBuffersReq;
PxMbufCreateStereoWindowReq  = ^xMbufCreateStereoWindowReq;
PxMbufDestroyImageBuffersReq  = ^xMbufDestroyImageBuffersReq;
PxMbufDisplayImageBuffersReq  = ^xMbufDisplayImageBuffersReq;
PxMbufGetBufferAttributesReply  = ^xMbufGetBufferAttributesReply;
PxMbufGetBufferAttributesReq  = ^xMbufGetBufferAttributesReq;
PxMbufGetBufferInfoReply  = ^xMbufGetBufferInfoReply;
PxMbufGetBufferInfoReq  = ^xMbufGetBufferInfoReq;
PxMbufGetBufferVersionReply  = ^xMbufGetBufferVersionReply;
PxMbufGetBufferVersionReq  = ^xMbufGetBufferVersionReq;
PxMbufGetMBufferAttributesReply  = ^xMbufGetMBufferAttributesReply;
PxMbufGetMBufferAttributesReq  = ^xMbufGetMBufferAttributesReq;
PxMbufSetBufferAttributesReq  = ^xMbufSetBufferAttributesReq;
PxMbufSetMBufferAttributesReq  = ^xMbufSetMBufferAttributesReq;
PxMbufUpdateNotifyEvent  = ^xMbufUpdateNotifyEvent;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _MULTIBUFPROTO_H_}
{$define _MULTIBUFPROTO_H_}
{$include <X11/extensions/multibufconst.h>}


const
  Window = CARD32;  
  Drawable = CARD32;  
  VisualID = CARD32;  
  Multibuffer = CARD32;  
  X_MbufGetBufferVersion = 0;  
  X_MbufCreateImageBuffers = 1;  
  X_MbufDestroyImageBuffers = 2;  
  X_MbufDisplayImageBuffers = 3;  
  X_MbufSetMBufferAttributes = 4;  
  X_MbufGetMBufferAttributes = 5;  
  X_MbufSetBufferAttributes = 6;  
  X_MbufGetBufferAttributes = 7;  
  X_MbufGetBufferInfo = 8;  
  X_MbufCreateStereoWindow = 9;  
  X_MbufClearImageBufferArea = 10;  



type
  PxMbufBufferInfo = ^TxMbufBufferInfo;
  TxMbufBufferInfo = record
      visualID : TCARD32;
      maxBuffers : TCARD16;
      depth : TCARD8;
      unused : TCARD8;
    end;

const
  sz_xMbufBufferInfo = 8;  


type
  PxMbufClobberNotifyEvent = ^TxMbufClobberNotifyEvent;
  TxMbufClobberNotifyEvent = record
      _type : TBYTE;
      unused : TBYTE;
      sequenceNumber : TCARD16;
      buffer : TCARD32;
      state : TBYTE;
      unused1 : TCARD8;
      unused2 : TCARD16;
      unused3 : TCARD32;
      unused4 : TCARD32;
      unused5 : TCARD32;
      unused6 : TCARD32;
      unused7 : TCARD32;
    end;



  PxMbufUpdateNotifyEvent = ^TxMbufUpdateNotifyEvent;
  TxMbufUpdateNotifyEvent = record
      _type : TBYTE;
      unused : TBYTE;
      sequenceNumber : TCARD16;
      buffer : TCARD32;
      timeStamp : TCARD32;
      unused1 : TCARD32;
      unused2 : TCARD32;
      unused3 : TCARD32;
      unused4 : TCARD32;
      unused5 : TCARD32;
      unused6 : TCARD32;
    end;



  PxMbufGetBufferVersionReq = ^TxMbufGetBufferVersionReq;
  TxMbufGetBufferVersionReq = record
      reqType : TCARD8;
      mbufReqType : TCARD8;
      length : TCARD16;
    end;

const
  sz_xMbufGetBufferVersionReq = 4;  




type
  PxMbufGetBufferVersionReply = ^TxMbufGetBufferVersionReply;
  TxMbufGetBufferVersionReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      majorVersion : TCARD8;
      minorVersion : TCARD8;
      pad1 : TCARD16;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xMbufGetBufferVersionReply = 32;  





type
  PxMbufCreateImageBuffersReq = ^TxMbufCreateImageBuffersReq;
  TxMbufCreateImageBuffersReq = record
      reqType : TCARD8;
      mbufReqType : TCARD8;
      length : TCARD16;
      window : TCARD32;
      updateAction : TCARD8;
      updateHint : TCARD8;
      unused : TCARD16;
    end;


const
  sz_xMbufCreateImageBuffersReq = 12;  



type
  PxMbufCreateImageBuffersReply = ^TxMbufCreateImageBuffersReply;
  TxMbufCreateImageBuffersReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      numberBuffer : TCARD16;
      unused1 : TCARD16;
      unused2 : TCARD32;
      unused3 : TCARD32;
      unused4 : TCARD32;
      unused5 : TCARD32;
      unused6 : TCARD32;
    end;

const
  sz_xMbufCreateImageBuffersReply = 32;  



type
  PxMbufDestroyImageBuffersReq = ^TxMbufDestroyImageBuffersReq;
  TxMbufDestroyImageBuffersReq = record
      reqType : TCARD8;
      mbufReqType : TCARD8;
      length : TCARD16;
      window : TCARD32;
    end;

const
  sz_xMbufDestroyImageBuffersReq = 8;  




type
  PxMbufDisplayImageBuffersReq = ^TxMbufDisplayImageBuffersReq;
  TxMbufDisplayImageBuffersReq = record
      reqType : TCARD8;
      mbufReqType : TCARD8;
      length : TCARD16;
      minDelay : TCARD16;
      maxDelay : TCARD16;
    end;


const
  sz_xMbufDisplayImageBuffersReq = 8;  




type
  PxMbufSetMBufferAttributesReq = ^TxMbufSetMBufferAttributesReq;
  TxMbufSetMBufferAttributesReq = record
      reqType : TCARD8;
      mbufReqType : TCARD8;
      length : TCARD16;
      window : TCARD32;
      valueMask : TCARD32;
    end;


const
  sz_xMbufSetMBufferAttributesReq = 12;  



type
  PxMbufGetMBufferAttributesReq = ^TxMbufGetMBufferAttributesReq;
  TxMbufGetMBufferAttributesReq = record
      reqType : TCARD8;
      mbufReqType : TCARD8;
      length : TCARD16;
      window : TCARD32;
    end;

const
  sz_xMbufGetMBufferAttributesReq = 8;  



type
  PxMbufGetMBufferAttributesReply = ^TxMbufGetMBufferAttributesReply;
  TxMbufGetMBufferAttributesReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      displayedBuffer : TCARD16;
      updateAction : TCARD8;
      updateHint : TCARD8;
      windowMode : TCARD8;
      unused0 : TCARD8;
      unused1 : TCARD16;
      unused2 : TCARD32;
      unused3 : TCARD32;
      unused4 : TCARD32;
      unused5 : TCARD32;
    end;

const
  sz_xMbufGetMBufferAttributesReply = 32;  


type
  PxMbufSetBufferAttributesReq = ^TxMbufSetBufferAttributesReq;
  TxMbufSetBufferAttributesReq = record
      reqType : TCARD8;
      mbufReqType : TCARD8;
      length : TCARD16;
      buffer : TCARD32;
      valueMask : TCARD32;
    end;


const
  sz_xMbufSetBufferAttributesReq = 12;  


type
  PxMbufGetBufferAttributesReq = ^TxMbufGetBufferAttributesReq;
  TxMbufGetBufferAttributesReq = record
      reqType : TCARD8;
      mbufReqType : TCARD8;
      length : TCARD16;
      buffer : TCARD32;
    end;

const
  sz_xMbufGetBufferAttributesReq = 8;  


type
  PxMbufGetBufferAttributesReply = ^TxMbufGetBufferAttributesReply;
  TxMbufGetBufferAttributesReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      window : TCARD32;
      eventMask : TCARD32;
      bufferIndex : TCARD16;
      side : TCARD8;
      unused0 : TCARD8;
      unused1 : TCARD32;
      unused2 : TCARD32;
      unused3 : TCARD32;
    end;

const
  sz_xMbufGetBufferAttributesReply = 32;  


type
  PxMbufGetBufferInfoReq = ^TxMbufGetBufferInfoReq;
  TxMbufGetBufferInfoReq = record
      reqType : TCARD8;
      mbufReqType : TCARD8;
      length : TCARD16;
      drawable : TDrawable;
    end;

const
  sz_xMbufGetBufferInfoReq = 8;  


type
  PxMbufGetBufferInfoReply = ^TxMbufGetBufferInfoReply;
  TxMbufGetBufferInfoReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      normalInfo : TCARD16;
      stereoInfo : TCARD16;
      unused1 : TCARD32;
      unused2 : TCARD32;
      unused3 : TCARD32;
      unused4 : TCARD32;
      unused5 : TCARD32;
    end;


const
  sz_xMbufGetBufferInfoReply = 32;  



{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
type
  PxMbufCreateStereoWindowReq = ^TxMbufCreateStereoWindowReq;
  TxMbufCreateStereoWindowReq = record
      reqType : TCARD8;
      mbufReqType : TCARD8;
      length : TCARD16;
      unused0 : TCARD8;
      unused1 : TCARD8;
      unused2 : TCARD8;
      depth : TCARD8;
      wid : TWindow;
      parent : TWindow;
      left : TMultibuffer;
      right : TMultibuffer;
      x : TINT16;
      y : TINT16;
      width : TCARD16;
      height : TCARD16;
      borderWidth : TCARD16;
      c_class : TCARD16;
      _class : TCARD16;
      visual : TVisualID;
      mask : TCARD32;
    end;


const
  sz_xMbufCreateStereoWindowReq = 44;  


type
  PxMbufClearImageBufferAreaReq = ^TxMbufClearImageBufferAreaReq;
  TxMbufClearImageBufferAreaReq = record
      reqType : TCARD8;
      mbufReqType : TCARD8;
      length : TCARD16;
      buffer : TMultibuffer;
      x : TINT16;
      y : TINT16;
      width : TCARD16;
      height : TCARD16;
      unused0 : TCARD8;
      unused1 : TCARD8;
      unused2 : TCARD8;
      exposures : TBOOL;
    end;

const
  sz_xMbufClearImageBufferAreaReq = 20;  
{$undef Window}
{$undef Drawable}
{$undef VisualID}
{$undef Multibuffer}
{$endif}


implementation


end.
