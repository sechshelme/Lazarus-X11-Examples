
unit recordproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/recordproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/recordproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/recordproto.pp
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
    PRECORD_CLIENT_INFO  = ^RECORD_CLIENT_INFO;
    PRECORD_EXTRANGE  = ^RECORD_EXTRANGE;
    PRECORD_RANGE16  = ^RECORD_RANGE16;
    PRECORD_RANGE8  = ^RECORD_RANGE8;
    PRecordClientSpec  = ^RecordClientSpec;
    PRecordClientSpecPtr  = ^RecordClientSpecPtr;
    PRECORDRANGE  = ^RECORDRANGE;
    PxRecordClientInfo  = ^xRecordClientInfo;
    PxRecordCreateContextReq  = ^xRecordCreateContextReq;
    PxRecordDisableContextReq  = ^xRecordDisableContextReq;
    PxRecordEnableContextReply  = ^xRecordEnableContextReply;
    PxRecordEnableContextReq  = ^xRecordEnableContextReq;
    PxRecordFreeContextReq  = ^xRecordFreeContextReq;
    PxRecordGetContextReply  = ^xRecordGetContextReply;
    PxRecordGetContextReq  = ^xRecordGetContextReq;
    PxRecordQueryVersionReply  = ^xRecordQueryVersionReply;
    PxRecordQueryVersionReq  = ^xRecordQueryVersionReq;
    PxRecordRange  = ^xRecordRange;
    PxRecordRegisterClientsReq  = ^xRecordRegisterClientsReq;
    PxRecordUnregisterClientsReq  = ^xRecordUnregisterClientsReq;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _RECORDPROTO_H_}
{$define _RECORDPROTO_H_}
{$include <X11/extensions/recordconst.h>}




const
  X_RecordQueryVersion = 0;  

  X_RecordCreateContext = 1;  

  X_RecordRegisterClients = 2;  

  X_RecordUnregisterClients = 3;  

  X_RecordGetContext = 4;  

  X_RecordEnableContext = 5;  

  X_RecordDisableContext = 6;  

  X_RecordFreeContext = 7;  
  sz_XRecordRange = 32;  
  sz_XRecordClientInfo = 12;  
  sz_XRecordState = 16;  
  sz_XRecordDatum = 32;  
{$define XRecordGlobaldef}
(* error 
#define XRecordGlobalref extern
in define line 50 *)
      RecordMaxEvent = 128-1;      
      RecordMinDeviceEvent = 2;      
      RecordMaxDeviceEvent = 6;      
      RecordMaxError = 256-1;      
      RecordMaxCoreRequest = 128-1;      
      RecordMaxExtRequest = 256-1;      
      RecordMinExtRequest = 129-1;      
      RECORD_RC = CARD32;      
      RECORD_XIDBASE = CARD32;      
      RECORD_CLIENTSPEC = CARD32;      
      RECORD_ELEMENT_HEADER = CARD8;      
    type
      PRecordClientSpec = ^TRecordClientSpec;
      TRecordClientSpec = TRECORD_CLIENTSPEC;
      TRecordClientSpecPtr = PRecordClientSpec;
      PRecordClientSpecPtr = ^TRecordClientSpecPtr;

      PRECORD_RANGE8 = ^TRECORD_RANGE8;
      TRECORD_RANGE8 = record
          first : TCARD8;
          last : TCARD8;
        end;

      PRECORD_RANGE16 = ^TRECORD_RANGE16;
      TRECORD_RANGE16 = record
          first : TCARD16;
          last : TCARD16;
        end;

      PRECORD_EXTRANGE = ^TRECORD_EXTRANGE;
      TRECORD_EXTRANGE = record
          majorCode : TRECORD_RANGE8;
          minorCode : TRECORD_RANGE16;
        end;

      PRECORDRANGE = ^TRECORDRANGE;
      TRECORDRANGE = record
          coreRequests : TRECORD_RANGE8;
          coreReplies : TRECORD_RANGE8;
          extRequests : TRECORD_EXTRANGE;
          extReplies : TRECORD_EXTRANGE;
          deliveredEvents : TRECORD_RANGE8;
          deviceEvents : TRECORD_RANGE8;
          errors : TRECORD_RANGE8;
          clientStarted : TBOOL;
          clientDied : TBOOL;
        end;

    const
      sz_RECORDRANGE = 24;      


    type
      PxRecordRange = ^TxRecordRange;
      TxRecordRange = record
          coreRequestsFirst : TCARD8;
          coreRequestsLast : TCARD8;
          coreRepliesFirst : TCARD8;
          coreRepliesLast : TCARD8;
          extRequestsMajorFirst : TCARD8;
          extRequestsMajorLast : TCARD8;
          extRequestsMinorFirst : TCARD16;
          extRequestsMinorLast : TCARD16;
          extRepliesMajorFirst : TCARD8;
          extRepliesMajorLast : TCARD8;
          extRepliesMinorFirst : TCARD16;
          extRepliesMinorLast : TCARD16;
          deliveredEventsFirst : TCARD8;
          deliveredEventsLast : TCARD8;
          deviceEventsFirst : TCARD8;
          deviceEventsLast : TCARD8;
          errorsFirst : TCARD8;
          errorsLast : TCARD8;
          clientStarted : TBOOL;
          clientDied : TBOOL;
        end;

    const
      sz_xRecordRange = 24;      

    type
      PRECORD_CLIENT_INFO = ^TRECORD_CLIENT_INFO;
      TRECORD_CLIENT_INFO = record
          clientResource : TRECORD_CLIENTSPEC;
          nRanges : TCARD32;
        end;

      PxRecordClientInfo = ^TxRecordClientInfo;
      TxRecordClientInfo = TRECORD_CLIENT_INFO;


      PxRecordQueryVersionReq = ^TxRecordQueryVersionReq;
      TxRecordQueryVersionReq = record
          reqType : TCARD8;
          recordReqType : TCARD8;
          length : TCARD16;
          majorVersion : TCARD16;
          minorVersion : TCARD16;
        end;

    const
      sz_xRecordQueryVersionReq = 8;      
    type
      PxRecordQueryVersionReply = ^TxRecordQueryVersionReply;
      TxRecordQueryVersionReply = record
          _type : TCARD8;
          pad0 : TCARD8;
          sequenceNumber : TCARD16;
          length : TCARD32;
          majorVersion : TCARD16;
          minorVersion : TCARD16;
          pad1 : TCARD32;
          pad2 : TCARD32;
          pad3 : TCARD32;
          pad4 : TCARD32;
          pad5 : TCARD32;
        end;

    const
      sz_xRecordQueryVersionReply = 32;      



    type
      PxRecordCreateContextReq = ^TxRecordCreateContextReq;
      TxRecordCreateContextReq = record
          reqType : TCARD8;
          recordReqType : TCARD8;
          length : TCARD16;
          context : TRECORD_RC;
          elementHeader : TRECORD_ELEMENT_HEADER;
          pad : TCARD8;
          pad0 : TCARD16;
          nClients : TCARD32;
          nRanges : TCARD32;
        end;

    const
      sz_xRecordCreateContextReq = 20;      



    type
      PxRecordRegisterClientsReq = ^TxRecordRegisterClientsReq;
      TxRecordRegisterClientsReq = record
          reqType : TCARD8;
          recordReqType : TCARD8;
          length : TCARD16;
          context : TRECORD_RC;
          elementHeader : TRECORD_ELEMENT_HEADER;
          pad : TCARD8;
          pad0 : TCARD16;
          nClients : TCARD32;
          nRanges : TCARD32;
        end;

    const
      sz_xRecordRegisterClientsReq = 20;      


    type
      PxRecordUnregisterClientsReq = ^TxRecordUnregisterClientsReq;
      TxRecordUnregisterClientsReq = record
          reqType : TCARD8;
          recordReqType : TCARD8;
          length : TCARD16;
          context : TRECORD_RC;
          nClients : TCARD32;
        end;

    const
      sz_xRecordUnregisterClientsReq = 12;      

    type
      PxRecordGetContextReq = ^TxRecordGetContextReq;
      TxRecordGetContextReq = record
          reqType : TCARD8;
          recordReqType : TCARD8;
          length : TCARD16;
          context : TRECORD_RC;
        end;

    const
      sz_xRecordGetContextReq = 8;      

    type
      PxRecordGetContextReply = ^TxRecordGetContextReply;
      TxRecordGetContextReply = record
          _type : TCARD8;
          enabled : TBOOL;
          sequenceNumber : TCARD16;
          length : TCARD32;
          elementHeader : TRECORD_ELEMENT_HEADER;
          pad : TCARD8;
          pad0 : TCARD16;
          nClients : TCARD32;
          pad1 : TCARD32;
          pad2 : TCARD32;
          pad3 : TCARD32;
          pad4 : TCARD32;
        end;

    const
      sz_xRecordGetContextReply = 32;      

    type
      PxRecordEnableContextReq = ^TxRecordEnableContextReq;
      TxRecordEnableContextReq = record
          reqType : TCARD8;
          recordReqType : TCARD8;
          length : TCARD16;
          context : TRECORD_RC;
        end;

    const
      sz_xRecordEnableContextReq = 8;      

    type
      PxRecordEnableContextReply = ^TxRecordEnableContextReply;
      TxRecordEnableContextReply = record
          _type : TCARD8;
          category : TCARD8;
          sequenceNumber : TCARD16;
          length : TCARD32;
          elementHeader : TRECORD_ELEMENT_HEADER;
          clientSwapped : TBOOL;
          pad1 : TCARD16;
          idBase : TRECORD_XIDBASE;
          serverTime : TCARD32;
          recordedSequenceNumber : TCARD32;
          pad3 : TCARD32;
          pad4 : TCARD32;
        end;

    const
      sz_xRecordEnableContextReply = 32;      

    type
      PxRecordDisableContextReq = ^TxRecordDisableContextReq;
      TxRecordDisableContextReq = record
          reqType : TCARD8;
          recordReqType : TCARD8;
          length : TCARD16;
          context : TRECORD_RC;
        end;

    const
      sz_xRecordDisableContextReq = 8;      

    type
      PxRecordFreeContextReq = ^TxRecordFreeContextReq;
      TxRecordFreeContextReq = record
          reqType : TCARD8;
          recordReqType : TCARD8;
          length : TCARD16;
          context : TRECORD_RC;
        end;

    const
      sz_xRecordFreeContextReq = 8;      
{$undef RECORD_RC}
{$undef RECORD_XIDBASE}
{$undef RECORD_ELEMENT_HEADER}
{$undef RECORD_CLIENTSPEC}
{$endif}

implementation


end.
