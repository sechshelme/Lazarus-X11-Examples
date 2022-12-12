
unit bigreqsproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/bigreqsproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/bigreqsproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/bigreqsproto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _BIGREQSPROTO_H_}
{$define _BIGREQSPROTO_H_}  

  const
    X_BigReqEnable = 0;    
    XBigReqNumberEvents = 0;    
    XBigReqNumberErrors = 0;    
    XBigReqExtensionName = 'BIG-REQUESTS';    



  type
    xBigReqEnableReq = record
        reqType : CARD8;
        brReqType : CARD8;
        length : CARD16;
      end;

  const
    sz_xBigReqEnableReq = 4;    


  type
    xBigReqEnableReply = record
        _type : BYTE;
        pad0 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        max_request_size : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xBigReqEnableReply = 32;    

  type
    xBigReq = record
        reqType : CARD8;
        data : CARD8;
        zero : CARD16;
        length : CARD32;
      end;
{$endif}


implementation


end.
