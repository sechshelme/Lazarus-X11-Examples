
unit dri3proto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/dri3proto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/dri3proto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/dri3proto.pp
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
PxDRI3BufferFromPixmapReply  = ^xDRI3BufferFromPixmapReply;
PxDRI3BufferFromPixmapReq  = ^xDRI3BufferFromPixmapReq;
PxDRI3BuffersFromPixmapReply  = ^xDRI3BuffersFromPixmapReply;
PxDRI3BuffersFromPixmapReq  = ^xDRI3BuffersFromPixmapReq;
PxDRI3FDFromFenceReply  = ^xDRI3FDFromFenceReply;
PxDRI3FDFromFenceReq  = ^xDRI3FDFromFenceReq;
PxDRI3FenceFromFDReq  = ^xDRI3FenceFromFDReq;
PxDRI3GetSupportedModifiersReply  = ^xDRI3GetSupportedModifiersReply;
PxDRI3GetSupportedModifiersReq  = ^xDRI3GetSupportedModifiersReq;
PxDRI3OpenReply  = ^xDRI3OpenReply;
PxDRI3OpenReq  = ^xDRI3OpenReq;
PxDRI3PixmapFromBufferReq  = ^xDRI3PixmapFromBufferReq;
PxDRI3PixmapFromBuffersReq  = ^xDRI3PixmapFromBuffersReq;
PxDRI3QueryVersionReply  = ^xDRI3QueryVersionReply;
PxDRI3QueryVersionReq  = ^xDRI3QueryVersionReq;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _DRI3_PROTO_H_}
{$define _DRI3_PROTO_H_}

const
  DRI3_NAME = 'DRI3';  
  DRI3_MAJOR = 1;  
  DRI3_MINOR = 2;  
  DRI3NumberErrors = 0;  
  DRI3NumberEvents = 0;  
  X_DRI3QueryVersion = 0;  
  X_DRI3Open = 1;  
  X_DRI3PixmapFromBuffer = 2;  
  X_DRI3BufferFromPixmap = 3;  
  X_DRI3FenceFromFD = 4;  
  X_DRI3FDFromFence = 5;  

  xDRI3GetSupportedModifiers = 6;  
  xDRI3PixmapFromBuffers = 7;  
  xDRI3BuffersFromPixmap = 8;  
  DRI3NumberRequests = 9;  
type
  PxDRI3QueryVersionReq = ^TxDRI3QueryVersionReq;
  TxDRI3QueryVersionReq = record
      reqType : TCARD8;
      dri3ReqType : TCARD8;
      length : TCARD16;
      majorVersion : TCARD32;
      minorVersion : TCARD32;
    end;

const
  sz_xDRI3QueryVersionReq = 12;  

type
  PxDRI3QueryVersionReply = ^TxDRI3QueryVersionReply;
  TxDRI3QueryVersionReply = record
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
  sz_xDRI3QueryVersionReply = 32;  
type
  PxDRI3OpenReq = ^TxDRI3OpenReq;
  TxDRI3OpenReq = record
      reqType : TCARD8;
      dri3ReqType : TCARD8;
      length : TCARD16;
      drawable : TCARD32;
      provider : TCARD32;
    end;

const
  sz_xDRI3OpenReq = 12;  

type
  PxDRI3OpenReply = ^TxDRI3OpenReply;
  TxDRI3OpenReply = record
      _type : TBYTE;
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
  sz_xDRI3OpenReply = 32;  
type
  PxDRI3PixmapFromBufferReq = ^TxDRI3PixmapFromBufferReq;
  TxDRI3PixmapFromBufferReq = record
      reqType : TCARD8;
      dri3ReqType : TCARD8;
      length : TCARD16;
      pixmap : TCARD32;
      drawable : TCARD32;
      size : TCARD32;
      width : TCARD16;
      height : TCARD16;
      stride : TCARD16;
      depth : TCARD8;
      bpp : TCARD8;
    end;

const
  sz_xDRI3PixmapFromBufferReq = 24;  
type
  PxDRI3BufferFromPixmapReq = ^TxDRI3BufferFromPixmapReq;
  TxDRI3BufferFromPixmapReq = record
      reqType : TCARD8;
      dri3ReqType : TCARD8;
      length : TCARD16;
      pixmap : TCARD32;
    end;

const
  sz_xDRI3BufferFromPixmapReq = 8;  


type
  PxDRI3BufferFromPixmapReply = ^TxDRI3BufferFromPixmapReply;
  TxDRI3BufferFromPixmapReply = record
      _type : TBYTE;
      nfd : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      size : TCARD32;
      width : TCARD16;
      height : TCARD16;
      stride : TCARD16;
      depth : TCARD8;
      bpp : TCARD8;
      pad20 : TCARD32;
      pad24 : TCARD32;
      pad28 : TCARD32;
    end;

const
  sz_xDRI3BufferFromPixmapReply = 32;  
type
  PxDRI3FenceFromFDReq = ^TxDRI3FenceFromFDReq;
  TxDRI3FenceFromFDReq = record
      reqType : TCARD8;
      dri3ReqType : TCARD8;
      length : TCARD16;
      drawable : TCARD32;
      fence : TCARD32;
      initially_triggered : TBOOL;
      pad13 : TCARD8;
      pad14 : TCARD16;
    end;

const
  sz_xDRI3FenceFromFDReq = 16;  
type
  PxDRI3FDFromFenceReq = ^TxDRI3FDFromFenceReq;
  TxDRI3FDFromFenceReq = record
      reqType : TCARD8;
      dri3ReqType : TCARD8;
      length : TCARD16;
      drawable : TCARD32;
      fence : TCARD32;
    end;

const
  sz_xDRI3FDFromFenceReq = 12;  


type
  PxDRI3FDFromFenceReply = ^TxDRI3FDFromFenceReply;
  TxDRI3FDFromFenceReply = record
      _type : TBYTE;
      nfd : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      pad08 : TCARD32;
      pad12 : TCARD32;
      pad16 : TCARD32;
      pad20 : TCARD32;
      pad24 : TCARD32;
      pad28 : TCARD32;
    end;

const
  sz_xDRI3FDFromFenceReply = 32;  

type
  PxDRI3GetSupportedModifiersReq = ^TxDRI3GetSupportedModifiersReq;
  TxDRI3GetSupportedModifiersReq = record
      reqType : TCARD8;
      dri3ReqType : TCARD8;
      length : TCARD16;
      window : TCARD32;
      depth : TCARD8;
      bpp : TCARD8;
      pad10 : TCARD16;
    end;

const
  sz_xDRI3GetSupportedModifiersReq = 12;  

type
  PxDRI3GetSupportedModifiersReply = ^TxDRI3GetSupportedModifiersReply;
  TxDRI3GetSupportedModifiersReply = record
      _type : TBYTE;
      pad1 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      numWindowModifiers : TCARD32;
      numScreenModifiers : TCARD32;
      pad16 : TCARD32;
      pad20 : TCARD32;
      pad24 : TCARD32;
      pad28 : TCARD32;
    end;

const
  sz_xDRI3GetSupportedModifiersReply = 32;  

type
  PxDRI3PixmapFromBuffersReq = ^TxDRI3PixmapFromBuffersReq;
  TxDRI3PixmapFromBuffersReq = record
      reqType : TCARD8;
      dri3ReqType : TCARD8;
      length : TCARD16;
      pixmap : TCARD32;
      window : TCARD32;
      num_buffers : TCARD8;
      pad13 : TCARD8;
      pad14 : TCARD16;
      width : TCARD16;
      height : TCARD16;
      stride0 : TCARD32;
      offset0 : TCARD32;
      stride1 : TCARD32;
      offset1 : TCARD32;
      stride2 : TCARD32;
      offset2 : TCARD32;
      stride3 : TCARD32;
      offset3 : TCARD32;
      depth : TCARD8;
      bpp : TCARD8;
      pad54 : TCARD16;
      modifier : TCARD64;
    end;

const
  sz_xDRI3PixmapFromBuffersReq = 64;  
type
  PxDRI3BuffersFromPixmapReq = ^TxDRI3BuffersFromPixmapReq;
  TxDRI3BuffersFromPixmapReq = record
      reqType : TCARD8;
      dri3ReqType : TCARD8;
      length : TCARD16;
      pixmap : TCARD32;
    end;

const
  sz_xDRI3BuffersFromPixmapReq = 8;  


type
  PxDRI3BuffersFromPixmapReply = ^TxDRI3BuffersFromPixmapReply;
  TxDRI3BuffersFromPixmapReply = record
      _type : TBYTE;
      nfd : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      width : TCARD16;
      height : TCARD16;
      pad12 : TCARD32;
      modifier : TCARD64;
      depth : TCARD8;
      bpp : TCARD8;
      pad26 : TCARD16;
      pad28 : TCARD32;
    end;

const
  sz_xDRI3BuffersFromPixmapReply = 32;  
{$endif}

implementation


end.
