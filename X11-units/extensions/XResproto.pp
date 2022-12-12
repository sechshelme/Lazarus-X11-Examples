
unit XResproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/XResproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/XResproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/XResproto.pp
}

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
    xXResClient = record
        resource_base : CARD32;
        resource_mask : CARD32;
      end;

  const
    sz_xXResClient = 8;    

  type
    xXResType = record
        resource_type : CARD32;
        count : CARD32;
      end;

  const
    sz_xXResType = 8;    


  type
    _XResQueryVersion = record
        reqType : CARD8;
        XResReqType : CARD8;
        length : CARD16;
        client_major : CARD8;
        client_minor : CARD8;
        unused : CARD16;
      end;
    xXResQueryVersionReq = _XResQueryVersion;

  const
    sz_xXResQueryVersionReq = 8;    

  type
    xXResQueryVersionReply = record
        _type : CARD8;
        pad1 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        server_major : CARD16;
        server_minor : CARD16;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xXResQueryVersionReply = 32;    


  type
    _XResQueryClients = record
        reqType : CARD8;
        XResReqType : CARD8;
        length : CARD16;
      end;
    xXResQueryClientsReq = _XResQueryClients;

  const
    sz_xXResQueryClientsReq = 4;    

  type
    xXResQueryClientsReply = record
        _type : CARD8;
        pad1 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        num_clients : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xXResQueryClientsReply = 32;    


  type
    _XResQueryClientResources = record
        reqType : CARD8;
        XResReqType : CARD8;
        length : CARD16;
        xid : CARD32;
      end;
    xXResQueryClientResourcesReq = _XResQueryClientResources;

  const
    sz_xXResQueryClientResourcesReq = 8;    

  type
    xXResQueryClientResourcesReply = record
        _type : CARD8;
        pad1 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        num_types : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xXResQueryClientResourcesReply = 32;    


  type
    _XResQueryClientPixmapBytes = record
        reqType : CARD8;
        XResReqType : CARD8;
        length : CARD16;
        xid : CARD32;
      end;
    xXResQueryClientPixmapBytesReq = _XResQueryClientPixmapBytes;

  const
    sz_xXResQueryClientPixmapBytesReq = 8;    

  type
    xXResQueryClientPixmapBytesReply = record
        _type : CARD8;
        pad1 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        bytes : CARD32;
        bytes_overflow : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xXResQueryClientPixmapBytesReply = 32;    

    X_XResClientXIDMask = $01;    
    X_XResLocalClientPIDMask = $02;    

  type
    _XResClientIdSpec = record
        client : CARD32;
        mask : CARD32;
      end;
    xXResClientIdSpec = _XResClientIdSpec;

  const
    sz_xXResClientIdSpec = 8;    

  type
    _XResClientIdValue = record
        spec : xXResClientIdSpec;
        length : CARD32;
      end;
    xXResClientIdValue = _XResClientIdValue;

  const
    sz_xResClientIdValue = sz_xXResClientIdSpec+4;    

  type
    _XResQueryClientIds = record
        reqType : CARD8;
        XResReqType : CARD8;
        length : CARD16;
        numSpecs : CARD32;
      end;
    xXResQueryClientIdsReq = _XResQueryClientIds;

  const
    sz_xXResQueryClientIdsReq = 8;    

  type
    xXResQueryClientIdsReply = record
        _type : CARD8;
        pad1 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        numIds : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xXResQueryClientIdsReply = 32;    


  type
    _XResResourceIdSpec = record
        resource : CARD32;
        _type : CARD32;
      end;
    xXResResourceIdSpec = _XResResourceIdSpec;

  const
    sz_xXResResourceIdSpec = 8;    

  type
    _XResQueryResourceBytes = record
        reqType : CARD8;
        XResReqType : CARD8;
        length : CARD16;
        client : CARD32;
        numSpecs : CARD32;
      end;
    xXResQueryResourceBytesReq = _XResQueryResourceBytes;

  const
    sz_xXResQueryResourceBytesReq = 12;    

  type
    _XResResourceSizeSpec = record
        spec : xXResResourceIdSpec;
        bytes : CARD32;
        refCount : CARD32;
        useCount : CARD32;
      end;
    xXResResourceSizeSpec = _XResResourceSizeSpec;

  const
    sz_xXResResourceSizeSpec = sz_xXResResourceIdSpec+12;    

  type
    _XResResourceSizeValue = record
        size : xXResResourceSizeSpec;
        numCrossReferences : CARD32;
      end;
    xXResResourceSizeValue = _XResResourceSizeValue;

  const
    sz_xXResResourceSizeValue = sz_xXResResourceSizeSpec+4;    

  type
    xXResQueryResourceBytesReply = record
        _type : CARD8;
        pad1 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        numSizes : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xXResQueryResourceBytesReply = 32;    
{$endif}


implementation


end.
