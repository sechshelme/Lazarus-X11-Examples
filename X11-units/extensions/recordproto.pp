
unit recordproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/recordproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/recordproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/recordproto.pp
}

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
      RecordClientSpec = RECORD_CLIENTSPEC;
      RecordClientSpecPtr = ^RecordClientSpec;

      RECORD_RANGE8 = record
          first : CARD8;
          last : CARD8;
        end;

      RECORD_RANGE16 = record
          first : CARD16;
          last : CARD16;
        end;

      RECORD_EXTRANGE = record
          majorCode : RECORD_RANGE8;
          minorCode : RECORD_RANGE16;
        end;

      RECORDRANGE = record
          coreRequests : RECORD_RANGE8;
          coreReplies : RECORD_RANGE8;
          extRequests : RECORD_EXTRANGE;
          extReplies : RECORD_EXTRANGE;
          deliveredEvents : RECORD_RANGE8;
          deviceEvents : RECORD_RANGE8;
          errors : RECORD_RANGE8;
          clientStarted : BOOL;
          clientDied : BOOL;
        end;

    const
      sz_RECORDRANGE = 24;      



    type
      xRecordRange = record
          coreRequestsFirst : CARD8;
          coreRequestsLast : CARD8;
          coreRepliesFirst : CARD8;
          coreRepliesLast : CARD8;
          extRequestsMajorFirst : CARD8;
          extRequestsMajorLast : CARD8;
          extRequestsMinorFirst : CARD16;
          extRequestsMinorLast : CARD16;
          extRepliesMajorFirst : CARD8;
          extRepliesMajorLast : CARD8;
          extRepliesMinorFirst : CARD16;
          extRepliesMinorLast : CARD16;
          deliveredEventsFirst : CARD8;
          deliveredEventsLast : CARD8;
          deviceEventsFirst : CARD8;
          deviceEventsLast : CARD8;
          errorsFirst : CARD8;
          errorsLast : CARD8;
          clientStarted : BOOL;
          clientDied : BOOL;
        end;

    const
      sz_xRecordRange = 24;      


    type
      RECORD_CLIENT_INFO = record
          clientResource : RECORD_CLIENTSPEC;
          nRanges : CARD32;
        end;

      xRecordClientInfo = RECORD_CLIENT_INFO;


      xRecordQueryVersionReq = record
          reqType : CARD8;
          recordReqType : CARD8;
          length : CARD16;
          majorVersion : CARD16;
          minorVersion : CARD16;
        end;

    const
      sz_xRecordQueryVersionReq = 8;      

    type
      xRecordQueryVersionReply = record
          _type : CARD8;
          pad0 : CARD8;
          sequenceNumber : CARD16;
          length : CARD32;
          majorVersion : CARD16;
          minorVersion : CARD16;
          pad1 : CARD32;
          pad2 : CARD32;
          pad3 : CARD32;
          pad4 : CARD32;
          pad5 : CARD32;
        end;

    const
      sz_xRecordQueryVersionReply = 32;      




    type
      xRecordCreateContextReq = record
          reqType : CARD8;
          recordReqType : CARD8;
          length : CARD16;
          context : RECORD_RC;
          elementHeader : RECORD_ELEMENT_HEADER;
          pad : CARD8;
          pad0 : CARD16;
          nClients : CARD32;
          nRanges : CARD32;
        end;

    const
      sz_xRecordCreateContextReq = 20;      




    type
      xRecordRegisterClientsReq = record
          reqType : CARD8;
          recordReqType : CARD8;
          length : CARD16;
          context : RECORD_RC;
          elementHeader : RECORD_ELEMENT_HEADER;
          pad : CARD8;
          pad0 : CARD16;
          nClients : CARD32;
          nRanges : CARD32;
        end;

    const
      sz_xRecordRegisterClientsReq = 20;      



    type
      xRecordUnregisterClientsReq = record
          reqType : CARD8;
          recordReqType : CARD8;
          length : CARD16;
          context : RECORD_RC;
          nClients : CARD32;
        end;

    const
      sz_xRecordUnregisterClientsReq = 12;      


    type
      xRecordGetContextReq = record
          reqType : CARD8;
          recordReqType : CARD8;
          length : CARD16;
          context : RECORD_RC;
        end;

    const
      sz_xRecordGetContextReq = 8;      


    type
      xRecordGetContextReply = record
          _type : CARD8;
          enabled : BOOL;
          sequenceNumber : CARD16;
          length : CARD32;
          elementHeader : RECORD_ELEMENT_HEADER;
          pad : CARD8;
          pad0 : CARD16;
          nClients : CARD32;
          pad1 : CARD32;
          pad2 : CARD32;
          pad3 : CARD32;
          pad4 : CARD32;
        end;

    const
      sz_xRecordGetContextReply = 32;      


    type
      xRecordEnableContextReq = record
          reqType : CARD8;
          recordReqType : CARD8;
          length : CARD16;
          context : RECORD_RC;
        end;

    const
      sz_xRecordEnableContextReq = 8;      


    type
      xRecordEnableContextReply = record
          _type : CARD8;
          category : CARD8;
          sequenceNumber : CARD16;
          length : CARD32;
          elementHeader : RECORD_ELEMENT_HEADER;
          clientSwapped : BOOL;
          pad1 : CARD16;
          idBase : RECORD_XIDBASE;
          serverTime : CARD32;
          recordedSequenceNumber : CARD32;
          pad3 : CARD32;
          pad4 : CARD32;
        end;

    const
      sz_xRecordEnableContextReply = 32;      


    type
      xRecordDisableContextReq = record
          reqType : CARD8;
          recordReqType : CARD8;
          length : CARD16;
          context : RECORD_RC;
        end;

    const
      sz_xRecordDisableContextReq = 8;      


    type
      xRecordFreeContextReq = record
          reqType : CARD8;
          recordReqType : CARD8;
          length : CARD16;
          context : RECORD_RC;
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
