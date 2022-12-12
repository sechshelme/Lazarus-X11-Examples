
unit ICElib;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/ICE/ICElib.h
  The following command line parameters were used:
    /usr/include/X11/ICE/ICElib.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/ICE/ICElib.pp
}

    Type
    PBool  = ^Bool;
    Pchar  = ^char;
    PIceAcceptStatus  = ^IceAcceptStatus;
    PIceListenObj  = ^IceListenObj;
    PIcePaAuthProc  = ^IcePaAuthProc;
    PIcePaVersionRec  = ^IcePaVersionRec;
    PIcePointer  = ^IcePointer;
    PIceReplyWaitInfo  = ^IceReplyWaitInfo;
    Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _ICELIB_H_}
{$define _ICELIB_H_}  
{$include <X11/ICE/ICE.h>}
{$include <X11/Xfuncproto.h>}

  const
    Bool = longint;    
    Status = longint;    
    True = 1;    
    False = 0;    

  type
    IcePointer = pointer;

    IcePoAuthStatus = (IcePoAuthHaveReply,IcePoAuthRejected,
      IcePoAuthFailed,IcePoAuthDoneCleanup
      );

    IcePaAuthStatus = (IcePaAuthContinue,IcePaAuthAccepted,IcePaAuthRejected,
      IcePaAuthFailed);

    IceConnectStatus = (IceConnectPending,IceConnectAccepted,
      IceConnectRejected,IceConnectIOError
      );

    IceProtocolSetupStatus = (IceProtocolSetupSuccess,IceProtocolSetupFailure,
      IceProtocolSetupIOError,IceProtocolAlreadyActive
      );

    IceAcceptStatus = (IceAcceptSuccess,IceAcceptFailure,IceAcceptBadMalloc
      );

    IceCloseStatus = (IceClosedNow,IceClosedASAP,IceConnectionInUse,
      IceStartedShutdownNegotiation);

    IceProcessMessagesStatus = (IceProcessMessagesSuccess,IceProcessMessagesIOError,
      IceProcessMessagesConnectionClosed);

    IceReplyWaitInfo = record
        sequence_of_request : dword;
        major_opcode_of_request : longint;
        minor_opcode_of_request : longint;
        reply : IcePointer;
      end;

    IceConn = ^_IceConn;

    IceListenObj = ^_IceListenObj;


    IceWatchProc = procedure (_para1:IceConn; _para2:IcePointer; _para3:Bool; _para4:PIcePointer);cdecl;


    IcePoProcessMsgProc = procedure (_para1:IceConn; _para2:IcePointer; _para3:longint; _para4:dword; _para5:Bool; 
                  _para6:PIceReplyWaitInfo; _para7:PBool);cdecl;


    IcePaProcessMsgProc = procedure (_para1:IceConn; _para2:IcePointer; _para3:longint; _para4:dword; _para5:Bool);cdecl;

    IcePoVersionRec = record
        major_version : longint;
        minor_version : longint;
        process_msg_proc : IcePoProcessMsgProc;
      end;

    IcePaVersionRec = record
        major_version : longint;
        minor_version : longint;
        process_msg_proc : IcePaProcessMsgProc;
      end;


    IcePoAuthProc = function (_para1:IceConn; _para2:PIcePointer; _para3:Bool; _para4:Bool; _para5:longint; 
                 _para6:IcePointer; _para7:Plongint; _para8:PIcePointer; _para9:PPchar):IcePoAuthStatus;cdecl;


    IcePaAuthProc = function (_para1:IceConn; _para2:PIcePointer; _para3:Bool; _para4:longint; _para5:IcePointer; 
                 _para6:Plongint; _para7:PIcePointer; _para8:PPchar):IcePaAuthStatus;cdecl;


    IceHostBasedAuthProc = function (_para1:Pchar):Bool;cdecl;


    IceProtocolSetupProc = function (_para1:IceConn; _para2:longint; _para3:longint; _para4:Pchar; _para5:Pchar; 
                 _para6:PIcePointer; _para7:PPchar):Status;cdecl;


    IceProtocolActivateProc = procedure (_para1:IceConn; _para2:IcePointer);cdecl;


    IceIOErrorProc = procedure (_para1:IceConn);cdecl;


    IcePingReplyProc = procedure (_para1:IceConn; _para2:IcePointer);cdecl;


    IceErrorHandler = procedure (_para1:IceConn; _para2:Bool; _para3:longint; _para4:dword; _para5:longint; 
                  _para6:longint; _para7:IcePointer);cdecl;


    IceIOErrorHandler = procedure (_para1:IceConn);cdecl;

(* error 
extern int IceRegisterForProtocolSetup (

in declaration at line 218 *)


    function IceRegisterForProtocolReply(_para1:Pchar; _para2:Pchar; _para3:Pchar; _para4:longint; _para5:PIcePaVersionRec; 
               _para6:longint; _para7:PPchar; _para8:PIcePaAuthProc; _para9:IceHostBasedAuthProc; _para10:IceProtocolSetupProc; 
               _para11:IceProtocolActivateProc; _para12:IceIOErrorProc):longint;cdecl;


    function IceOpenConnection(_para1:Pchar; _para2:IcePointer; _para3:Bool; _para4:longint; _para5:longint; 
               _para6:Pchar):IceConn;cdecl;


    function IceGetConnectionContext(_para1:IceConn):IcePointer;cdecl;


    function IceListenForConnections(_para1:Plongint; _para2:PPIceListenObj; _para3:longint; _para4:Pchar):Status;cdecl;


    function IceListenForWellKnownConnections(_para1:Pchar; _para2:Plongint; _para3:PPIceListenObj; _para4:longint; _para5:Pchar):Status;cdecl;


    function IceGetListenConnectionNumber(_para1:IceListenObj):longint;cdecl;


    function IceGetListenConnectionString(_para1:IceListenObj):^char;cdecl;


    function IceComposeNetworkIdList(_para1:longint; _para2:PIceListenObj):^char;cdecl;


    procedure IceFreeListenObjs(_para1:longint; _para2:PIceListenObj);cdecl;


    procedure IceSetHostBasedAuthProc(_para1:IceListenObj; _para2:IceHostBasedAuthProc);cdecl;


    function IceAcceptConnection(_para1:IceListenObj; _para2:PIceAcceptStatus):IceConn;cdecl;


    procedure IceSetShutdownNegotiation(_para1:IceConn; _para2:Bool);cdecl;


    function IceCheckShutdownNegotiation(_para1:IceConn):Bool;cdecl;


    function IceCloseConnection(_para1:IceConn):IceCloseStatus;cdecl;


    function IceAddConnectionWatch(_para1:IceWatchProc; _para2:IcePointer):Status;cdecl;


    procedure IceRemoveConnectionWatch(_para1:IceWatchProc; _para2:IcePointer);cdecl;


    function IceProtocolSetup(_para1:IceConn; _para2:longint; _para3:IcePointer; _para4:Bool; _para5:Plongint; 
               _para6:Plongint; _para7:PPchar; _para8:PPchar; _para9:longint; _para10:Pchar):IceProtocolSetupStatus;cdecl;


    function IceProtocolShutdown(_para1:IceConn; _para2:longint):Status;cdecl;


    function IceProcessMessages(_para1:IceConn; _para2:PIceReplyWaitInfo; _para3:PBool):IceProcessMessagesStatus;cdecl;


    function IcePing(_para1:IceConn; _para2:IcePingReplyProc; _para3:IcePointer):Status;cdecl;


    function IceAllocScratch(_para1:IceConn; _para2:dword):^char;cdecl;


    function IceFlush(_para1:IceConn):longint;cdecl;


    function IceGetOutBufSize(_para1:IceConn):longint;cdecl;


    function IceGetInBufSize(_para1:IceConn):longint;cdecl;


    function IceConnectionStatus(_para1:IceConn):IceConnectStatus;cdecl;


    function IceVendor(_para1:IceConn):^char;cdecl;


    function IceRelease(_para1:IceConn):^char;cdecl;


    function IceProtocolVersion(_para1:IceConn):longint;cdecl;


    function IceProtocolRevision(_para1:IceConn):longint;cdecl;


    function IceConnectionNumber(_para1:IceConn):longint;cdecl;


    function IceConnectionString(_para1:IceConn):^char;cdecl;


    function IceLastSentSequenceNumber(_para1:IceConn):dword;cdecl;


    function IceLastReceivedSequenceNumber(_para1:IceConn):dword;cdecl;


    function IceSwapping(_para1:IceConn):Bool;cdecl;


    function IceSetErrorHandler(_para1:IceErrorHandler):IceErrorHandler;cdecl;


    function IceSetIOErrorHandler(_para1:IceIOErrorHandler):IceIOErrorHandler;cdecl;


    function IceGetPeerName(_para1:IceConn):^char;cdecl;


    function IceInitThreads:Status;cdecl;


    procedure IceAppLockConn(_para1:IceConn);cdecl;


    procedure IceAppUnlockConn(_para1:IceConn);cdecl;

{$endif}

(* error 
#endif /* _ICELIB_H_ */

implementation


end.
