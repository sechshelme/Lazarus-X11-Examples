
unit ICElib;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ICE/ICElib.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ICE/ICElib.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ICE/ICElib.pp
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
    PBool  = ^Bool;
    Pchar  = ^char;
    PIceAcceptStatus  = ^IceAcceptStatus;
    PIceCloseStatus  = ^IceCloseStatus;
    PIceConn  = ^IceConn;
    PIceConnectStatus  = ^IceConnectStatus;
    PIceListenObj  = ^IceListenObj;
    PIcePaAuthProc  = ^IcePaAuthProc;
    PIcePaAuthStatus  = ^IcePaAuthStatus;
    PIcePaVersionRec  = ^IcePaVersionRec;
    PIcePoAuthStatus  = ^IcePoAuthStatus;
    PIcePointer  = ^IcePointer;
    PIcePoVersionRec  = ^IcePoVersionRec;
    PIceProcessMessagesStatus  = ^IceProcessMessagesStatus;
    PIceProtocolSetupStatus  = ^IceProtocolSetupStatus;
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
  PIcePointer = ^TIcePointer;
  TIcePointer = pointer;

  PIcePoAuthStatus = ^TIcePoAuthStatus;
  TIcePoAuthStatus = (IcePoAuthHaveReply,IcePoAuthRejected,IcePoAuthFailed,
    IcePoAuthDoneCleanup);

  PIcePaAuthStatus = ^TIcePaAuthStatus;
  TIcePaAuthStatus = (IcePaAuthContinue,IcePaAuthAccepted,IcePaAuthRejected,
    IcePaAuthFailed);

  PIceConnectStatus = ^TIceConnectStatus;
  TIceConnectStatus = (IceConnectPending,IceConnectAccepted,IceConnectRejected,
    IceConnectIOError);

  PIceProtocolSetupStatus = ^TIceProtocolSetupStatus;
  TIceProtocolSetupStatus = (IceProtocolSetupSuccess,IceProtocolSetupFailure,
    IceProtocolSetupIOError,IceProtocolAlreadyActive
    );

  PIceAcceptStatus = ^TIceAcceptStatus;
  TIceAcceptStatus = (IceAcceptSuccess,IceAcceptFailure,IceAcceptBadMalloc
    );

  PIceCloseStatus = ^TIceCloseStatus;
  TIceCloseStatus = (IceClosedNow,IceClosedASAP,IceConnectionInUse,
    IceStartedShutdownNegotiation);

  PIceProcessMessagesStatus = ^TIceProcessMessagesStatus;
  TIceProcessMessagesStatus = (IceProcessMessagesSuccess,IceProcessMessagesIOError,
    IceProcessMessagesConnectionClosed);

  PIceReplyWaitInfo = ^TIceReplyWaitInfo;
  TIceReplyWaitInfo = record
      sequence_of_request : dword;
      major_opcode_of_request : longint;
      minor_opcode_of_request : longint;
      reply : TIcePointer;
    end;

  PIceConn = ^TIceConn;
  TIceConn = PIceConn;

  PIceListenObj = ^TIceListenObj;
  TIceListenObj = PIceListenObj;


  TIceWatchProc = procedure (para1:TIceConn; para2:TIcePointer; para3:TBool; para4:PIcePointer);cdecl;


  TIcePoProcessMsgProc = procedure (para1:TIceConn; para2:TIcePointer; para3:longint; para4:dword; para5:TBool; 
                para6:PIceReplyWaitInfo; para7:PBool);cdecl;


  TIcePaProcessMsgProc = procedure (para1:TIceConn; para2:TIcePointer; para3:longint; para4:dword; para5:TBool);cdecl;

  PIcePoVersionRec = ^TIcePoVersionRec;
  TIcePoVersionRec = record
      major_version : longint;
      minor_version : longint;
      process_msg_proc : TIcePoProcessMsgProc;
    end;

  PIcePaVersionRec = ^TIcePaVersionRec;
  TIcePaVersionRec = record
      major_version : longint;
      minor_version : longint;
      process_msg_proc : TIcePaProcessMsgProc;
    end;


  TIcePoAuthProc = function (para1:TIceConn; para2:PIcePointer; para3:TBool; para4:TBool; para5:longint; 
               para6:TIcePointer; para7:Plongint; para8:PIcePointer; para9:PPchar):TIcePoAuthStatus;cdecl;


  TIcePaAuthProc = function (para1:TIceConn; para2:PIcePointer; para3:TBool; para4:longint; para5:TIcePointer; 
               para6:Plongint; para7:PIcePointer; para8:PPchar):TIcePaAuthStatus;cdecl;


  TIceHostBasedAuthProc = function (para1:Pchar):TBool;cdecl;


  TIceProtocolSetupProc = function (para1:TIceConn; para2:longint; para3:longint; para4:Pchar; para5:Pchar; 
               para6:PIcePointer; para7:PPchar):TStatus;cdecl;


  TIceProtocolActivateProc = procedure (para1:TIceConn; para2:TIcePointer);cdecl;


  TIceIOErrorProc = procedure (para1:TIceConn);cdecl;


  TIcePingReplyProc = procedure (para1:TIceConn; para2:TIcePointer);cdecl;


  TIceErrorHandler = procedure (para1:TIceConn; para2:TBool; para3:longint; para4:dword; para5:longint; 
                para6:longint; para7:TIcePointer);cdecl;


  TIceIOErrorHandler = procedure (para1:TIceConn);cdecl;

(* error 
extern int IceRegisterForProtocolSetup (

in declaration at line 218 *)


function IceRegisterForProtocolReply(para1:Pchar; para2:Pchar; para3:Pchar; para4:longint; para5:PIcePaVersionRec; 
               para6:longint; para7:PPchar; para8:PIcePaAuthProc; para9:TIceHostBasedAuthProc; para10:TIceProtocolSetupProc; 
               para11:TIceProtocolActivateProc; para12:TIceIOErrorProc):longint;cdecl;external;

function IceOpenConnection(para1:Pchar; para2:TIcePointer; para3:TBool; para4:longint; para5:longint; 
               para6:Pchar):TIceConn;cdecl;external;

function IceGetConnectionContext(para1:TIceConn):TIcePointer;cdecl;external;

function IceListenForConnections(para1:Plongint; para2:PPIceListenObj; para3:longint; para4:Pchar):TStatus;cdecl;external;

function IceListenForWellKnownConnections(para1:Pchar; para2:Plongint; para3:PPIceListenObj; para4:longint; para5:Pchar):TStatus;cdecl;external;

function IceGetListenConnectionNumber(para1:TIceListenObj):longint;cdecl;external;

function IceGetListenConnectionString(para1:TIceListenObj):Pchar;cdecl;external;

function IceComposeNetworkIdList(para1:longint; para2:PIceListenObj):Pchar;cdecl;external;

procedure IceFreeListenObjs(para1:longint; para2:PIceListenObj);cdecl;external;

procedure IceSetHostBasedAuthProc(para1:TIceListenObj; para2:TIceHostBasedAuthProc);cdecl;external;

function IceAcceptConnection(para1:TIceListenObj; para2:PIceAcceptStatus):TIceConn;cdecl;external;

procedure IceSetShutdownNegotiation(para1:TIceConn; para2:TBool);cdecl;external;

function IceCheckShutdownNegotiation(para1:TIceConn):TBool;cdecl;external;

function IceCloseConnection(para1:TIceConn):TIceCloseStatus;cdecl;external;

function IceAddConnectionWatch(para1:TIceWatchProc; para2:TIcePointer):TStatus;cdecl;external;

procedure IceRemoveConnectionWatch(para1:TIceWatchProc; para2:TIcePointer);cdecl;external;

function IceProtocolSetup(para1:TIceConn; para2:longint; para3:TIcePointer; para4:TBool; para5:Plongint; 
               para6:Plongint; para7:PPchar; para8:PPchar; para9:longint; para10:Pchar):TIceProtocolSetupStatus;cdecl;external;

function IceProtocolShutdown(para1:TIceConn; para2:longint):TStatus;cdecl;external;

function IceProcessMessages(para1:TIceConn; para2:PIceReplyWaitInfo; para3:PBool):TIceProcessMessagesStatus;cdecl;external;

function IcePing(para1:TIceConn; para2:TIcePingReplyProc; para3:TIcePointer):TStatus;cdecl;external;

function IceAllocScratch(para1:TIceConn; para2:dword):Pchar;cdecl;external;

function IceFlush(para1:TIceConn):longint;cdecl;external;

function IceGetOutBufSize(para1:TIceConn):longint;cdecl;external;

function IceGetInBufSize(para1:TIceConn):longint;cdecl;external;

function IceConnectionStatus(para1:TIceConn):TIceConnectStatus;cdecl;external;

function IceVendor(para1:TIceConn):Pchar;cdecl;external;

function IceRelease(para1:TIceConn):Pchar;cdecl;external;

function IceProtocolVersion(para1:TIceConn):longint;cdecl;external;

function IceProtocolRevision(para1:TIceConn):longint;cdecl;external;

function IceConnectionNumber(para1:TIceConn):longint;cdecl;external;

function IceConnectionString(para1:TIceConn):Pchar;cdecl;external;

function IceLastSentSequenceNumber(para1:TIceConn):dword;cdecl;external;

function IceLastReceivedSequenceNumber(para1:TIceConn):dword;cdecl;external;

function IceSwapping(para1:TIceConn):TBool;cdecl;external;

function IceSetErrorHandler(para1:TIceErrorHandler):TIceErrorHandler;cdecl;external;

function IceSetIOErrorHandler(para1:TIceIOErrorHandler):TIceIOErrorHandler;cdecl;external;

function IceGetPeerName(para1:TIceConn):Pchar;cdecl;external;

function IceInitThreads:TStatus;cdecl;external;

procedure IceAppLockConn(para1:TIceConn);cdecl;external;

procedure IceAppUnlockConn(para1:TIceConn);cdecl;external;
{$endif}

(* error 
#endif /* _ICELIB_H_ */

implementation


end.
