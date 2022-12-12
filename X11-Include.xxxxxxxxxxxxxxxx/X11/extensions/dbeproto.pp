
unit dbeproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/dbeproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/dbeproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/dbeproto.pp
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
PxDbeAllocateBackBufferNameReq  = ^xDbeAllocateBackBufferNameReq;
PxDbeBackBuffer  = ^xDbeBackBuffer;
PxDbeBeginIdiomReq  = ^xDbeBeginIdiomReq;
PxDbeBufferAttributes  = ^xDbeBufferAttributes;
PxDbeDeallocateBackBufferNameReq  = ^xDbeDeallocateBackBufferNameReq;
PxDbeEndIdiomReq  = ^xDbeEndIdiomReq;
PxDbeGetBackBufferAttributesReply  = ^xDbeGetBackBufferAttributesReply;
PxDbeGetBackBufferAttributesReq  = ^xDbeGetBackBufferAttributesReq;
PxDbeGetVersionReply  = ^xDbeGetVersionReply;
PxDbeGetVersionReq  = ^xDbeGetVersionReq;
PxDbeGetVisualInfoReply  = ^xDbeGetVisualInfoReply;
PxDbeGetVisualInfoReq  = ^xDbeGetVisualInfoReq;
PxDbeScreenVisInfo  = ^xDbeScreenVisInfo;
PxDbeSwapAction  = ^xDbeSwapAction;
PxDbeSwapBuffersReq  = ^xDbeSwapBuffersReq;
PxDbeSwapInfo  = ^xDbeSwapInfo;
PxDbeVisInfo  = ^xDbeVisInfo;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef DBE_PROTO_H}
{$define DBE_PROTO_H}
{$include <X11/extensions/dbe.h>}


const
  X_DbeGetVersion = 0;  
  X_DbeAllocateBackBufferName = 1;  
  X_DbeDeallocateBackBufferName = 2;  
  X_DbeSwapBuffers = 3;  
  X_DbeBeginIdiom = 4;  
  X_DbeEndIdiom = 5;  
  X_DbeGetVisualInfo = 6;  
  X_DbeGetBackBufferAttributes = 7;  
type
  PxDbeSwapAction = ^TxDbeSwapAction;
  TxDbeSwapAction = TCARD8;

  PxDbeBackBuffer = ^TxDbeBackBuffer;
  TxDbeBackBuffer = TCARD32;






  PxDbeSwapInfo = ^TxDbeSwapInfo;
  TxDbeSwapInfo = record
      window : TCARD32;
      swapAction : TxDbeSwapAction;
      pad1 : TCARD8;
      pad2 : TCARD16;
    end;




  PxDbeVisInfo = ^TxDbeVisInfo;
  TxDbeVisInfo = record
      visualID : TCARD32;
      depth : TCARD8;
      perfLevel : TCARD8;
      pad1 : TCARD16;
    end;

const
  sz_xDbeVisInfo = 8;  

type
  PxDbeScreenVisInfo = ^TxDbeScreenVisInfo;
  TxDbeScreenVisInfo = record
      n : TCARD32;
    end;



  PxDbeBufferAttributes = ^TxDbeBufferAttributes;
  TxDbeBufferAttributes = record
      window : TCARD32;
    end;








  PxDbeGetVersionReq = ^TxDbeGetVersionReq;
  TxDbeGetVersionReq = record
      reqType : TCARD8;
      dbeReqType : TCARD8;
      length : TCARD16;
      majorVersion : TCARD8;
      minorVersion : TCARD8;
      unused : TCARD16;
    end;

const
  sz_xDbeGetVersionReq = 8;  







type
  PxDbeGetVersionReply = ^TxDbeGetVersionReply;
  TxDbeGetVersionReply = record
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
  sz_xDbeGetVersionReply = 32;  







type
  PxDbeAllocateBackBufferNameReq = ^TxDbeAllocateBackBufferNameReq;
  TxDbeAllocateBackBufferNameReq = record
      reqType : TCARD8;
      dbeReqType : TCARD8;
      length : TCARD16;
      window : TCARD32;
      buffer : TxDbeBackBuffer;
      swapAction : TxDbeSwapAction;
      pad1 : TCARD8;
      pad2 : TCARD16;
    end;

const
  sz_xDbeAllocateBackBufferNameReq = 16;  




type
  PxDbeDeallocateBackBufferNameReq = ^TxDbeDeallocateBackBufferNameReq;
  TxDbeDeallocateBackBufferNameReq = record
      reqType : TCARD8;
      dbeReqType : TCARD8;
      length : TCARD16;
      buffer : TxDbeBackBuffer;
    end;

const
  sz_xDbeDeallocateBackBufferNameReq = 8;  




type
  PxDbeSwapBuffersReq = ^TxDbeSwapBuffersReq;
  TxDbeSwapBuffersReq = record
      reqType : TCARD8;
      dbeReqType : TCARD8;
      length : TCARD16;
      n : TCARD32;
    end;


const
  sz_xDbeSwapBuffersReq = 8;  



type
  PxDbeBeginIdiomReq = ^TxDbeBeginIdiomReq;
  TxDbeBeginIdiomReq = record
      reqType : TCARD8;
      dbeReqType : TCARD8;
      length : TCARD16;
    end;

const
  sz_xDbeBeginIdiomReq = 4;  



type
  PxDbeEndIdiomReq = ^TxDbeEndIdiomReq;
  TxDbeEndIdiomReq = record
      reqType : TCARD8;
      dbeReqType : TCARD8;
      length : TCARD16;
    end;

const
  sz_xDbeEndIdiomReq = 4;  




type
  PxDbeGetVisualInfoReq = ^TxDbeGetVisualInfoReq;
  TxDbeGetVisualInfoReq = record
      reqType : TCARD8;
      dbeReqType : TCARD8;
      length : TCARD16;
      n : TCARD32;
    end;


const
  sz_xDbeGetVisualInfoReq = 8;  






type
  PxDbeGetVisualInfoReply = ^TxDbeGetVisualInfoReply;
  TxDbeGetVisualInfoReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      m : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;


const
  sz_xDbeGetVisualInfoReply = 32;  




type
  PxDbeGetBackBufferAttributesReq = ^TxDbeGetBackBufferAttributesReq;
  TxDbeGetBackBufferAttributesReq = record
      reqType : TCARD8;
      dbeReqType : TCARD8;
      length : TCARD16;
      buffer : TxDbeBackBuffer;
    end;

const
  sz_xDbeGetBackBufferAttributesReq = 8;  






type
  PxDbeGetBackBufferAttributesReply = ^TxDbeGetBackBufferAttributesReply;
  TxDbeGetBackBufferAttributesReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      attributes : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xDbeGetBackBufferAttributesReply = 32;  
{$endif}


implementation


end.
