
unit xcmiscproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/xcmiscproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/xcmiscproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/xcmiscproto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XCMISCPROTO_H_}
{$define _XCMISCPROTO_H_}  

  const
    X_XCMiscGetVersion = 0;    
    X_XCMiscGetXIDRange = 1;    
    X_XCMiscGetXIDList = 2;    
    XCMiscNumberEvents = 0;    
    XCMiscNumberErrors = 0;    
    XCMiscMajorVersion = 1;    
    XCMiscMinorVersion = 1;    
    XCMiscExtensionName = 'XC-MISC';    



  type
    xXCMiscGetVersionReq = record
        reqType : CARD8;
        miscReqType : CARD8;
        length : CARD16;
        majorVersion : CARD16;
        minorVersion : CARD16;
      end;

  const
    sz_xXCMiscGetVersionReq = 8;    


  type
    xXCMiscGetVersionReply = record
        _type : BYTE;
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
    sz_xXCMiscGetVersionReply = 32;    



  type
    xXCMiscGetXIDRangeReq = record
        reqType : CARD8;
        miscReqType : CARD8;
        length : CARD16;
      end;

  const
    sz_xXCMiscGetXIDRangeReq = 4;    


  type
    xXCMiscGetXIDRangeReply = record
        _type : BYTE;
        pad0 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        start_id : CARD32;
        count : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;

  const
    sz_xXCMiscGetXIDRangeReply = 32;    




  type
    xXCMiscGetXIDListReq = record
        reqType : CARD8;
        miscReqType : CARD8;
        length : CARD16;
        count : CARD32;
      end;

  const
    sz_xXCMiscGetXIDListReq = 8;    



  type
    xXCMiscGetXIDListReply = record
        _type : BYTE;
        pad0 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        count : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xXCMiscGetXIDListReply = 32;    
{$endif}


implementation


end.
