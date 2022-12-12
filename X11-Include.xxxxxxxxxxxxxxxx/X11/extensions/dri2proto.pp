
unit dri2proto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/dri2proto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/dri2proto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/dri2proto.pp
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
PxDRI2AuthenticateReply  = ^xDRI2AuthenticateReply;
PxDRI2AuthenticateReq  = ^xDRI2AuthenticateReq;
PxDRI2Buffer  = ^xDRI2Buffer;
PxDRI2BufferSwapComplete  = ^xDRI2BufferSwapComplete;
PxDRI2BufferSwapComplete2  = ^xDRI2BufferSwapComplete2;
PxDRI2ConnectReply  = ^xDRI2ConnectReply;
PxDRI2ConnectReq  = ^xDRI2ConnectReq;
PxDRI2CopyRegionReply  = ^xDRI2CopyRegionReply;
PxDRI2CopyRegionReq  = ^xDRI2CopyRegionReq;
PxDRI2CreateDrawableReq  = ^xDRI2CreateDrawableReq;
PxDRI2DestroyDrawableReq  = ^xDRI2DestroyDrawableReq;
PxDRI2GetBuffersReply  = ^xDRI2GetBuffersReply;
PxDRI2GetBuffersReq  = ^xDRI2GetBuffersReq;
PxDRI2GetMSCReq  = ^xDRI2GetMSCReq;
PxDRI2GetParamReply  = ^xDRI2GetParamReply;
PxDRI2GetParamReq  = ^xDRI2GetParamReq;
PxDRI2InvalidateBuffers  = ^xDRI2InvalidateBuffers;
PxDRI2MSCReply  = ^xDRI2MSCReply;
PxDRI2QueryVersionReply  = ^xDRI2QueryVersionReply;
PxDRI2QueryVersionReq  = ^xDRI2QueryVersionReq;
PxDRI2SwapBuffersReply  = ^xDRI2SwapBuffersReply;
PxDRI2SwapBuffersReq  = ^xDRI2SwapBuffersReq;
PxDRI2SwapIntervalReq  = ^xDRI2SwapIntervalReq;
PxDRI2WaitMSCReq  = ^xDRI2WaitMSCReq;
PxDRI2WaitSBCReq  = ^xDRI2WaitSBCReq;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _DRI2_PROTO_H_}
{$define _DRI2_PROTO_H_}

const
  DRI2_NAME = 'DRI2';  
  DRI2_MAJOR = 1;  
  DRI2_MINOR = 4;  
  DRI2NumberErrors = 0;  
  DRI2NumberEvents = 2;  
  DRI2NumberRequests = 14;  
  X_DRI2QueryVersion = 0;  
  X_DRI2Connect = 1;  
  X_DRI2Authenticate = 2;  
  X_DRI2CreateDrawable = 3;  
  X_DRI2DestroyDrawable = 4;  
  X_DRI2GetBuffers = 5;  
  X_DRI2CopyRegion = 6;  
  X_DRI2GetBuffersWithFormat = 7;  
  X_DRI2SwapBuffers = 8;  
  X_DRI2GetMSC = 9;  
  X_DRI2WaitMSC = 10;  
  X_DRI2WaitSBC = 11;  
  X_DRI2SwapInterval = 12;  
  X_DRI2GetParam = 13;  

  DRI2_BufferSwapComplete = 0;  
  DRI2_InvalidateBuffers = 1;  
type
  PxDRI2Buffer = ^TxDRI2Buffer;
  TxDRI2Buffer = record
      attachment : TCARD32;
      name : TCARD32;
      pitch : TCARD32;
      cpp : TCARD32;
      flags : TCARD32;
    end;

  PxDRI2QueryVersionReq = ^TxDRI2QueryVersionReq;
  TxDRI2QueryVersionReq = record
      reqType : TCARD8;
      dri2ReqType : TCARD8;
      length : TCARD16;
      majorVersion : TCARD32;
      minorVersion : TCARD32;
    end;

const
  sz_xDRI2QueryVersionReq = 12;  

type
  PxDRI2QueryVersionReply = ^TxDRI2QueryVersionReply;
  TxDRI2QueryVersionReply = record
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
  sz_xDRI2QueryVersionReply = 32;  
type
  PxDRI2ConnectReq = ^TxDRI2ConnectReq;
  TxDRI2ConnectReq = record
      reqType : TCARD8;
      dri2ReqType : TCARD8;
      length : TCARD16;
      window : TCARD32;
      driverType : TCARD32;
    end;

const
  sz_xDRI2ConnectReq = 12;  

type
  PxDRI2ConnectReply = ^TxDRI2ConnectReply;
  TxDRI2ConnectReply = record
      _type : TBYTE;
      pad1 : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      driverNameLength : TCARD32;
      deviceNameLength : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xDRI2ConnectReply = 32;  
type
  PxDRI2AuthenticateReq = ^TxDRI2AuthenticateReq;
  TxDRI2AuthenticateReq = record
      reqType : TCARD8;
      dri2ReqType : TCARD8;
      length : TCARD16;
      window : TCARD32;
      magic : TCARD32;
    end;

const
  sz_xDRI2AuthenticateReq = 12;  

type
  PxDRI2AuthenticateReply = ^TxDRI2AuthenticateReply;
  TxDRI2AuthenticateReply = record
      _type : TBYTE;
      pad1 : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      authenticated : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xDRI2AuthenticateReply = 32;  
type
  PxDRI2CreateDrawableReq = ^TxDRI2CreateDrawableReq;
  TxDRI2CreateDrawableReq = record
      reqType : TCARD8;
      dri2ReqType : TCARD8;
      length : TCARD16;
      drawable : TCARD32;
    end;

const
  sz_xDRI2CreateDrawableReq = 8;  
type
  PxDRI2DestroyDrawableReq = ^TxDRI2DestroyDrawableReq;
  TxDRI2DestroyDrawableReq = record
      reqType : TCARD8;
      dri2ReqType : TCARD8;
      length : TCARD16;
      drawable : TCARD32;
    end;

const
  sz_xDRI2DestroyDrawableReq = 8;  
type
  PxDRI2GetBuffersReq = ^TxDRI2GetBuffersReq;
  TxDRI2GetBuffersReq = record
      reqType : TCARD8;
      dri2ReqType : TCARD8;
      length : TCARD16;
      drawable : TCARD32;
      count : TCARD32;
    end;

const
  sz_xDRI2GetBuffersReq = 12;  

type
  PxDRI2GetBuffersReply = ^TxDRI2GetBuffersReply;
  TxDRI2GetBuffersReply = record
      _type : TBYTE;
      pad1 : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      width : TCARD32;
      height : TCARD32;
      count : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xDRI2GetBuffersReply = 32;  
type
  PxDRI2CopyRegionReq = ^TxDRI2CopyRegionReq;
  TxDRI2CopyRegionReq = record
      reqType : TCARD8;
      dri2ReqType : TCARD8;
      length : TCARD16;
      drawable : TCARD32;
      region : TCARD32;
      dest : TCARD32;
      src : TCARD32;
    end;

const
  sz_xDRI2CopyRegionReq = 20;  

type
  PxDRI2CopyRegionReply = ^TxDRI2CopyRegionReply;
  TxDRI2CopyRegionReply = record
      _type : TBYTE;
      pad1 : TBYTE;
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
  sz_xDRI2CopyRegionReply = 32;  
type
  PxDRI2SwapBuffersReq = ^TxDRI2SwapBuffersReq;
  TxDRI2SwapBuffersReq = record
      reqType : TCARD8;
      dri2ReqType : TCARD8;
      length : TCARD16;
      drawable : TCARD32;
      target_msc_hi : TCARD32;
      target_msc_lo : TCARD32;
      divisor_hi : TCARD32;
      divisor_lo : TCARD32;
      remainder_hi : TCARD32;
      remainder_lo : TCARD32;
    end;

const
  sz_xDRI2SwapBuffersReq = 32;  

type
  PxDRI2SwapBuffersReply = ^TxDRI2SwapBuffersReply;
  TxDRI2SwapBuffersReply = record
      _type : TBYTE;
      pad1 : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      swap_hi : TCARD32;
      swap_lo : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xDRI2SwapBuffersReply = 32;  
type
  PxDRI2GetMSCReq = ^TxDRI2GetMSCReq;
  TxDRI2GetMSCReq = record
      reqType : TCARD8;
      dri2ReqType : TCARD8;
      length : TCARD16;
      drawable : TCARD32;
    end;

const
  sz_xDRI2GetMSCReq = 8;  
type
  PxDRI2WaitMSCReq = ^TxDRI2WaitMSCReq;
  TxDRI2WaitMSCReq = record
      reqType : TCARD8;
      dri2ReqType : TCARD8;
      length : TCARD16;
      drawable : TCARD32;
      target_msc_hi : TCARD32;
      target_msc_lo : TCARD32;
      divisor_hi : TCARD32;
      divisor_lo : TCARD32;
      remainder_hi : TCARD32;
      remainder_lo : TCARD32;
    end;

const
  sz_xDRI2WaitMSCReq = 32;  
type
  PxDRI2WaitSBCReq = ^TxDRI2WaitSBCReq;
  TxDRI2WaitSBCReq = record
      reqType : TCARD8;
      dri2ReqType : TCARD8;
      length : TCARD16;
      drawable : TCARD32;
      target_sbc_hi : TCARD32;
      target_sbc_lo : TCARD32;
    end;

const
  sz_xDRI2WaitSBCReq = 16;  
type
  PxDRI2MSCReply = ^TxDRI2MSCReply;
  TxDRI2MSCReply = record
      _type : TCARD8;
      pad1 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      ust_hi : TCARD32;
      ust_lo : TCARD32;
      msc_hi : TCARD32;
      msc_lo : TCARD32;
      sbc_hi : TCARD32;
      sbc_lo : TCARD32;
    end;

const
  sz_xDRI2MSCReply = 32;  
type
  PxDRI2SwapIntervalReq = ^TxDRI2SwapIntervalReq;
  TxDRI2SwapIntervalReq = record
      reqType : TCARD8;
      dri2ReqType : TCARD8;
      length : TCARD16;
      drawable : TCARD32;
      interval : TCARD32;
    end;

const
  sz_xDRI2SwapIntervalReq = 12;  
type
  PxDRI2BufferSwapComplete = ^TxDRI2BufferSwapComplete;
  TxDRI2BufferSwapComplete = record
      _type : TCARD8;
      pad : TCARD8;
      sequenceNumber : TCARD16;
      event_type : TCARD16;
      pad2 : TCARD16;
      drawable : TCARD32;
      ust_hi : TCARD32;
      ust_lo : TCARD32;
      msc_hi : TCARD32;
      msc_lo : TCARD32;
      sbc_hi : TCARD32;
      sbc_lo : TCARD32;
    end;

const
  sz_xDRI2BufferSwapComplete = 32;  
type
  PxDRI2BufferSwapComplete2 = ^TxDRI2BufferSwapComplete2;
  TxDRI2BufferSwapComplete2 = record
      _type : TCARD8;
      pad : TCARD8;
      sequenceNumber : TCARD16;
      event_type : TCARD16;
      pad2 : TCARD16;
      drawable : TCARD32;
      ust_hi : TCARD32;
      ust_lo : TCARD32;
      msc_hi : TCARD32;
      msc_lo : TCARD32;
      sbc : TCARD32;
    end;

const
  sz_xDRI2BufferSwapComplete2 = 32;  
type
  PxDRI2InvalidateBuffers = ^TxDRI2InvalidateBuffers;
  TxDRI2InvalidateBuffers = record
      _type : TCARD8;
      pad : TCARD8;
      sequenceNumber : TCARD16;
      drawable : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xDRI2InvalidateBuffers = 32;  
type
  PxDRI2GetParamReq = ^TxDRI2GetParamReq;
  TxDRI2GetParamReq = record
      reqType : TCARD8;
      dri2ReqType : TCARD8;
      length : TCARD16;
      drawable : TCARD32;
      param : TCARD32;
    end;

const
  sz_xDRI2GetParamReq = 12;  

type
  PxDRI2GetParamReply = ^TxDRI2GetParamReply;
  TxDRI2GetParamReply = record
      _type : TBYTE;
      is_param_recognized : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      value_hi : TCARD32;
      value_lo : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xDRI2GetParamReply = 32;  
{$endif}

implementation


end.
