
unit XResproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XResproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XResproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XResproto.pp
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
PXResClientIdSpec  = ^XResClientIdSpec;
PXResClientIdValue  = ^XResClientIdValue;
PXResQueryClientIds  = ^XResQueryClientIds;
PXResQueryClientPixmapBytes  = ^XResQueryClientPixmapBytes;
PXResQueryClientResources  = ^XResQueryClientResources;
PXResQueryClients  = ^XResQueryClients;
PXResQueryResourceBytes  = ^XResQueryResourceBytes;
PXResQueryVersion  = ^XResQueryVersion;
PXResResourceIdSpec  = ^XResResourceIdSpec;
PXResResourceSizeSpec  = ^XResResourceSizeSpec;
PXResResourceSizeValue  = ^XResResourceSizeValue;
PxXResClient  = ^xXResClient;
PxXResClientIdSpec  = ^xXResClientIdSpec;
PxXResClientIdValue  = ^xXResClientIdValue;
PxXResQueryClientIdsReply  = ^xXResQueryClientIdsReply;
PxXResQueryClientIdsReq  = ^xXResQueryClientIdsReq;
PxXResQueryClientPixmapBytesReply  = ^xXResQueryClientPixmapBytesReply;
PxXResQueryClientPixmapBytesReq  = ^xXResQueryClientPixmapBytesReq;
PxXResQueryClientResourcesReply  = ^xXResQueryClientResourcesReply;
PxXResQueryClientResourcesReq  = ^xXResQueryClientResourcesReq;
PxXResQueryClientsReply  = ^xXResQueryClientsReply;
PxXResQueryClientsReq  = ^xXResQueryClientsReq;
PxXResQueryResourceBytesReply  = ^xXResQueryResourceBytesReply;
PxXResQueryResourceBytesReq  = ^xXResQueryResourceBytesReq;
PxXResQueryVersionReply  = ^xXResQueryVersionReply;
PxXResQueryVersionReq  = ^xXResQueryVersionReq;
PxXResResourceIdSpec  = ^xXResResourceIdSpec;
PxXResResourceSizeSpec  = ^xXResResourceSizeSpec;
PxXResResourceSizeValue  = ^xXResResourceSizeValue;
PxXResType  = ^xXResType;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XRESPROTO_H}
{$define _XRESPROTO_H}

const
  XRES_MAJOR_VERSION = 1;  
  XRES_MINOR_VERSION = 2;  
  XRES_NAME = 'X-Resource';  

  X_XResQueryVersion = 0;  
  X_XResQueryClients = 1;  
  X_XResQueryClientResources = 2;  
  X_XResQueryClientPixmapBytes = 3;  




  X_XResQueryClientIds = 4;  
  X_XResQueryResourceBytes = 5;  
type
  PxXResClient = ^TxXResClient;
  TxXResClient = record
      resource_base : TCARD32;
      resource_mask : TCARD32;
    end;

const
  sz_xXResClient = 8;  
type
  PxXResType = ^TxXResType;
  TxXResType = record
      resource_type : TCARD32;
      count : TCARD32;
    end;

const
  sz_xXResType = 8;  

type
  PXResQueryVersion = ^TXResQueryVersion;
  TXResQueryVersion = record
      reqType : TCARD8;
      XResReqType : TCARD8;
      length : TCARD16;
      client_major : TCARD8;
      client_minor : TCARD8;
      unused : TCARD16;
    end;
  TxXResQueryVersionReq = TXResQueryVersion;
  PxXResQueryVersionReq = ^TxXResQueryVersionReq;

const
  sz_xXResQueryVersionReq = 8;  
type
  PxXResQueryVersionReply = ^TxXResQueryVersionReply;
  TxXResQueryVersionReply = record
      _type : TCARD8;
      pad1 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      server_major : TCARD16;
      server_minor : TCARD16;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xXResQueryVersionReply = 32;  

type
  PXResQueryClients = ^TXResQueryClients;
  TXResQueryClients = record
      reqType : TCARD8;
      XResReqType : TCARD8;
      length : TCARD16;
    end;
  TxXResQueryClientsReq = TXResQueryClients;
  PxXResQueryClientsReq = ^TxXResQueryClientsReq;

const
  sz_xXResQueryClientsReq = 4;  
type
  PxXResQueryClientsReply = ^TxXResQueryClientsReply;
  TxXResQueryClientsReply = record
      _type : TCARD8;
      pad1 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      num_clients : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xXResQueryClientsReply = 32;  

type
  PXResQueryClientResources = ^TXResQueryClientResources;
  TXResQueryClientResources = record
      reqType : TCARD8;
      XResReqType : TCARD8;
      length : TCARD16;
      xid : TCARD32;
    end;
  TxXResQueryClientResourcesReq = TXResQueryClientResources;
  PxXResQueryClientResourcesReq = ^TxXResQueryClientResourcesReq;

const
  sz_xXResQueryClientResourcesReq = 8;  
type
  PxXResQueryClientResourcesReply = ^TxXResQueryClientResourcesReply;
  TxXResQueryClientResourcesReply = record
      _type : TCARD8;
      pad1 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      num_types : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xXResQueryClientResourcesReply = 32;  

type
  PXResQueryClientPixmapBytes = ^TXResQueryClientPixmapBytes;
  TXResQueryClientPixmapBytes = record
      reqType : TCARD8;
      XResReqType : TCARD8;
      length : TCARD16;
      xid : TCARD32;
    end;
  TxXResQueryClientPixmapBytesReq = TXResQueryClientPixmapBytes;
  PxXResQueryClientPixmapBytesReq = ^TxXResQueryClientPixmapBytesReq;

const
  sz_xXResQueryClientPixmapBytesReq = 8;  
type
  PxXResQueryClientPixmapBytesReply = ^TxXResQueryClientPixmapBytesReply;
  TxXResQueryClientPixmapBytesReply = record
      _type : TCARD8;
      pad1 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      bytes : TCARD32;
      bytes_overflow : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xXResQueryClientPixmapBytesReply = 32;  

  X_XResClientXIDMask = $01;  
  X_XResLocalClientPIDMask = $02;  
type
  PXResClientIdSpec = ^TXResClientIdSpec;
  TXResClientIdSpec = record
      client : TCARD32;
      mask : TCARD32;
    end;
  TxXResClientIdSpec = TXResClientIdSpec;
  PxXResClientIdSpec = ^TxXResClientIdSpec;

const
  sz_xXResClientIdSpec = 8;  
type
  PXResClientIdValue = ^TXResClientIdValue;
  TXResClientIdValue = record
      spec : TxXResClientIdSpec;
      length : TCARD32;
    end;
  TxXResClientIdValue = TXResClientIdValue;
  PxXResClientIdValue = ^TxXResClientIdValue;

const
  sz_xResClientIdValue = sz_xXResClientIdSpec+4;  
type
  PXResQueryClientIds = ^TXResQueryClientIds;
  TXResQueryClientIds = record
      reqType : TCARD8;
      XResReqType : TCARD8;
      length : TCARD16;
      numSpecs : TCARD32;
    end;
  TxXResQueryClientIdsReq = TXResQueryClientIds;
  PxXResQueryClientIdsReq = ^TxXResQueryClientIdsReq;

const
  sz_xXResQueryClientIdsReq = 8;  
type
  PxXResQueryClientIdsReply = ^TxXResQueryClientIdsReply;
  TxXResQueryClientIdsReply = record
      _type : TCARD8;
      pad1 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      numIds : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xXResQueryClientIdsReply = 32;  

type
  PXResResourceIdSpec = ^TXResResourceIdSpec;
  TXResResourceIdSpec = record
      resource : TCARD32;
      _type : TCARD32;
    end;
  TxXResResourceIdSpec = TXResResourceIdSpec;
  PxXResResourceIdSpec = ^TxXResResourceIdSpec;

const
  sz_xXResResourceIdSpec = 8;  
type
  PXResQueryResourceBytes = ^TXResQueryResourceBytes;
  TXResQueryResourceBytes = record
      reqType : TCARD8;
      XResReqType : TCARD8;
      length : TCARD16;
      client : TCARD32;
      numSpecs : TCARD32;
    end;
  TxXResQueryResourceBytesReq = TXResQueryResourceBytes;
  PxXResQueryResourceBytesReq = ^TxXResQueryResourceBytesReq;

const
  sz_xXResQueryResourceBytesReq = 12;  
type
  PXResResourceSizeSpec = ^TXResResourceSizeSpec;
  TXResResourceSizeSpec = record
      spec : TxXResResourceIdSpec;
      bytes : TCARD32;
      refCount : TCARD32;
      useCount : TCARD32;
    end;
  TxXResResourceSizeSpec = TXResResourceSizeSpec;
  PxXResResourceSizeSpec = ^TxXResResourceSizeSpec;

const
  sz_xXResResourceSizeSpec = sz_xXResResourceIdSpec+12;  
type
  PXResResourceSizeValue = ^TXResResourceSizeValue;
  TXResResourceSizeValue = record
      size : TxXResResourceSizeSpec;
      numCrossReferences : TCARD32;
    end;
  TxXResResourceSizeValue = TXResResourceSizeValue;
  PxXResResourceSizeValue = ^TxXResResourceSizeValue;

const
  sz_xXResResourceSizeValue = sz_xXResResourceSizeSpec+4;  
type
  PxXResQueryResourceBytesReply = ^TxXResQueryResourceBytesReply;
  TxXResQueryResourceBytesReply = record
      _type : TCARD8;
      pad1 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      numSizes : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xXResQueryResourceBytesReply = 32;  
{$endif}


implementation


end.
