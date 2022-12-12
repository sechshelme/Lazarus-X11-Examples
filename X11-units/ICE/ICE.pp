
unit ICE;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/ICE/ICE.h
  The following command line parameters were used:
    /usr/include/X11/ICE/ICE.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/ICE/ICE.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _ICE_H_}
{$define _ICE_H_}  


  const
    IceProtoMajor = 1;    
    IceProtoMinor = 0;    

    IceLSBfirst = 0;    
    IceMSBfirst = 1;    

    ICE_Error = 0;    
    ICE_ByteOrder = 1;    
    ICE_ConnectionSetup = 2;    
    ICE_AuthRequired = 3;    
    ICE_AuthReply = 4;    
    ICE_AuthNextPhase = 5;    
    ICE_ConnectionReply = 6;    
    ICE_ProtocolSetup = 7;    
    ICE_ProtocolReply = 8;    
    ICE_Ping = 9;    
    ICE_PingReply = 10;    
    ICE_WantToClose = 11;    
    ICE_NoClose = 12;    

    IceCanContinue = 0;    
    IceFatalToProtocol = 1;    
    IceFatalToConnection = 2;    

    IceBadMinor = $8000;    
    IceBadState = $8001;    
    IceBadLength = $8002;    
    IceBadValue = $8003;    

    IceBadMajor = 0;    
    IceNoAuth = 1;    
    IceNoVersion = 2;    
    IceSetupFailed = 3;    
    IceAuthRejected = 4;    
    IceAuthFailed = 5;    
    IceProtocolDuplicate = 6;    
    IceMajorOpcodeDuplicate = 7;    
    IceUnknownProtocol = 8;    
{$endif}


implementation


end.
