
unit securproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/securproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/securproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/securproto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _SECURPROTO_H}
{$define _SECURPROTO_H}  
{$include <X11/extensions/secur.h>}

  const
    X_SecurityQueryVersion = 0;    
    X_SecurityGenerateAuthorization = 1;    
    X_SecurityRevokeAuthorization = 2;    

  type
    xSecurityQueryVersionReq = record
        reqType : CARD8;
        securityReqType : CARD8;
        length : CARD16;
        majorVersion : CARD16;
        minorVersion : CARD16;
      end;

  const
    sz_xSecurityQueryVersionReq = 8;    

  type
    xSecurityQueryVersionReply = record
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
    sz_xSecurityQueryVersionReply = 32;    




  type
    xSecurityGenerateAuthorizationReq = record
        reqType : CARD8;
        securityReqType : CARD8;
        length : CARD16;
        nbytesAuthProto : CARD16;
        nbytesAuthData : CARD16;
        valueMask : CARD32;
      end;

  const
    sz_xSecurityGenerateAuthorizationReq = 12;    

  type
    xSecurityGenerateAuthorizationReply = record
        _type : CARD8;
        pad0 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        authId : CARD32;
        dataLength : CARD16;
        pad1 : CARD16;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xSecurityGenerateAuthorizationReply = 32;    

  type
    xSecurityRevokeAuthorizationReq = record
        reqType : CARD8;
        securityReqType : CARD8;
        length : CARD16;
        authId : CARD32;
      end;

  const
    sz_xSecurityRevokeAuthorizationReq = 8;    

  type
    _xSecurityAuthorizationRevokedEvent = record
        _type : BYTE;
        detail : BYTE;
        sequenceNumber : CARD16;
        authId : CARD32;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;
    xSecurityAuthorizationRevokedEvent = _xSecurityAuthorizationRevokedEvent;

  const
    sz_xSecurityAuthorizationRevokedEvent = 32;    
{$endif}


implementation


end.
