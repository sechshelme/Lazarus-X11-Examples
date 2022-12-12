
unit xf86dga1proto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xf86dga1proto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xf86dga1proto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xf86dga1proto.pp
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
PXF86DGADirectVideo  = ^XF86DGADirectVideo;
PXF86DGAGetVideoLL  = ^XF86DGAGetVideoLL;
PXF86DGAGetVidPage  = ^XF86DGAGetVidPage;
PXF86DGAGetViewPortSize  = ^XF86DGAGetViewPortSize;
PXF86DGAInstallColormap  = ^XF86DGAInstallColormap;
PXF86DGAQueryDirectVideo  = ^XF86DGAQueryDirectVideo;
PXF86DGAQueryVersion  = ^XF86DGAQueryVersion;
PXF86DGASetVidPage  = ^XF86DGASetVidPage;
PXF86DGASetViewPort  = ^XF86DGASetViewPort;
PXF86DGAViewPortChanged  = ^XF86DGAViewPortChanged;
PxXF86DGADirectVideoReq  = ^xXF86DGADirectVideoReq;
PxXF86DGAGetVideoLLReply  = ^xXF86DGAGetVideoLLReply;
PxXF86DGAGetVideoLLReq  = ^xXF86DGAGetVideoLLReq;
PxXF86DGAGetVidPageReply  = ^xXF86DGAGetVidPageReply;
PxXF86DGAGetVidPageReq  = ^xXF86DGAGetVidPageReq;
PxXF86DGAGetViewPortSizeReply  = ^xXF86DGAGetViewPortSizeReply;
PxXF86DGAGetViewPortSizeReq  = ^xXF86DGAGetViewPortSizeReq;
PxXF86DGAInstallColormapReq  = ^xXF86DGAInstallColormapReq;
PxXF86DGAQueryDirectVideoReply  = ^xXF86DGAQueryDirectVideoReply;
PxXF86DGAQueryDirectVideoReq  = ^xXF86DGAQueryDirectVideoReq;
PxXF86DGAQueryVersionReply  = ^xXF86DGAQueryVersionReply;
PxXF86DGAQueryVersionReq  = ^xXF86DGAQueryVersionReq;
PxXF86DGASetVidPageReq  = ^xXF86DGASetVidPageReq;
PxXF86DGASetViewPortReq  = ^xXF86DGASetViewPortReq;
PxXF86DGAViewPortChangedReply  = ^xXF86DGAViewPortChangedReply;
PxXF86DGAViewPortChangedReq  = ^xXF86DGAViewPortChangedReq;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XF86DGAPROTO1_H_}
{$define _XF86DGAPROTO1_H_}
{$include <X11/extensions/xf86dga1const.h>}


type
  PXF86DGAQueryVersion = ^TXF86DGAQueryVersion;
  TXF86DGAQueryVersion = record
      reqType : TCARD8;
      dgaReqType : TCARD8;
      length : TCARD16;
    end;
  TxXF86DGAQueryVersionReq = TXF86DGAQueryVersion;
  PxXF86DGAQueryVersionReq = ^TxXF86DGAQueryVersionReq;

const
  sz_xXF86DGAQueryVersionReq = 4;  



type
  PxXF86DGAQueryVersionReply = ^TxXF86DGAQueryVersionReply;
  TxXF86DGAQueryVersionReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      majorVersion : TCARD16;
      minorVersion : TCARD16;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xXF86DGAQueryVersionReply = 32;  


type
  PXF86DGAGetVideoLL = ^TXF86DGAGetVideoLL;
  TXF86DGAGetVideoLL = record
      reqType : TCARD8;
      dgaReqType : TCARD8;
      length : TCARD16;
      screen : TCARD16;
      pad : TCARD16;
    end;
  TxXF86DGAGetVideoLLReq = TXF86DGAGetVideoLL;
  PxXF86DGAGetVideoLLReq = ^TxXF86DGAGetVideoLLReq;

const
  sz_xXF86DGAGetVideoLLReq = 8;  

type
  PXF86DGAInstallColormap = ^TXF86DGAInstallColormap;
  TXF86DGAInstallColormap = record
      reqType : TCARD8;
      dgaReqType : TCARD8;
      length : TCARD16;
      screen : TCARD16;
      pad2 : TCARD16;
      id : TCARD32;
    end;
  TxXF86DGAInstallColormapReq = TXF86DGAInstallColormap;
  PxXF86DGAInstallColormapReq = ^TxXF86DGAInstallColormapReq;

const
  sz_xXF86DGAInstallColormapReq = 12;  
type
  PxXF86DGAGetVideoLLReply = ^TxXF86DGAGetVideoLLReply;
  TxXF86DGAGetVideoLLReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      offset : TCARD32;
      width : TCARD32;
      bank_size : TCARD32;
      ram_size : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xXF86DGAGetVideoLLReply = 32;  


type
  PXF86DGADirectVideo = ^TXF86DGADirectVideo;
  TXF86DGADirectVideo = record
      reqType : TCARD8;
      dgaReqType : TCARD8;
      length : TCARD16;
      screen : TCARD16;
      enable : TCARD16;
    end;
  TxXF86DGADirectVideoReq = TXF86DGADirectVideo;
  PxXF86DGADirectVideoReq = ^TxXF86DGADirectVideoReq;

const
  sz_xXF86DGADirectVideoReq = 8;  


type
  PXF86DGAGetViewPortSize = ^TXF86DGAGetViewPortSize;
  TXF86DGAGetViewPortSize = record
      reqType : TCARD8;
      dgaReqType : TCARD8;
      length : TCARD16;
      screen : TCARD16;
      pad : TCARD16;
    end;
  TxXF86DGAGetViewPortSizeReq = TXF86DGAGetViewPortSize;
  PxXF86DGAGetViewPortSizeReq = ^TxXF86DGAGetViewPortSizeReq;

const
  sz_xXF86DGAGetViewPortSizeReq = 8;  
type
  PxXF86DGAGetViewPortSizeReply = ^TxXF86DGAGetViewPortSizeReply;
  TxXF86DGAGetViewPortSizeReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      width : TCARD32;
      height : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xXF86DGAGetViewPortSizeReply = 32;  


type
  PXF86DGASetViewPort = ^TXF86DGASetViewPort;
  TXF86DGASetViewPort = record
      reqType : TCARD8;
      dgaReqType : TCARD8;
      length : TCARD16;
      screen : TCARD16;
      pad : TCARD16;
      x : TCARD32;
      y : TCARD32;
    end;
  TxXF86DGASetViewPortReq = TXF86DGASetViewPort;
  PxXF86DGASetViewPortReq = ^TxXF86DGASetViewPortReq;

const
  sz_xXF86DGASetViewPortReq = 16;  


type
  PXF86DGAGetVidPage = ^TXF86DGAGetVidPage;
  TXF86DGAGetVidPage = record
      reqType : TCARD8;
      dgaReqType : TCARD8;
      length : TCARD16;
      screen : TCARD16;
      pad : TCARD16;
    end;
  TxXF86DGAGetVidPageReq = TXF86DGAGetVidPage;
  PxXF86DGAGetVidPageReq = ^TxXF86DGAGetVidPageReq;

const
  sz_xXF86DGAGetVidPageReq = 8;  
type
  PxXF86DGAGetVidPageReply = ^TxXF86DGAGetVidPageReply;
  TxXF86DGAGetVidPageReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      vpage : TCARD32;
      pad : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xXF86DGAGetVidPageReply = 32;  


type
  PXF86DGASetVidPage = ^TXF86DGASetVidPage;
  TXF86DGASetVidPage = record
      reqType : TCARD8;
      dgaReqType : TCARD8;
      length : TCARD16;
      screen : TCARD16;
      vpage : TCARD16;
    end;
  TxXF86DGASetVidPageReq = TXF86DGASetVidPage;
  PxXF86DGASetVidPageReq = ^TxXF86DGASetVidPageReq;

const
  sz_xXF86DGASetVidPageReq = 8;  


type
  PXF86DGAQueryDirectVideo = ^TXF86DGAQueryDirectVideo;
  TXF86DGAQueryDirectVideo = record
      reqType : TCARD8;
      dgaReqType : TCARD8;
      length : TCARD16;
      screen : TCARD16;
      pad : TCARD16;
    end;
  TxXF86DGAQueryDirectVideoReq = TXF86DGAQueryDirectVideo;
  PxXF86DGAQueryDirectVideoReq = ^TxXF86DGAQueryDirectVideoReq;

const
  sz_xXF86DGAQueryDirectVideoReq = 8;  
type
  PxXF86DGAQueryDirectVideoReply = ^TxXF86DGAQueryDirectVideoReply;
  TxXF86DGAQueryDirectVideoReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      flags : TCARD32;
      pad : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xXF86DGAQueryDirectVideoReply = 32;  


type
  PXF86DGAViewPortChanged = ^TXF86DGAViewPortChanged;
  TXF86DGAViewPortChanged = record
      reqType : TCARD8;
      dgaReqType : TCARD8;
      length : TCARD16;
      screen : TCARD16;
      n : TCARD16;
    end;
  TxXF86DGAViewPortChangedReq = TXF86DGAViewPortChanged;
  PxXF86DGAViewPortChangedReq = ^TxXF86DGAViewPortChangedReq;

const
  sz_xXF86DGAViewPortChangedReq = 8;  
type
  PxXF86DGAViewPortChangedReply = ^TxXF86DGAViewPortChangedReply;
  TxXF86DGAViewPortChangedReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      result : TCARD32;
      pad : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xXF86DGAViewPortChangedReply = 32;  
{$endif}


implementation


end.
