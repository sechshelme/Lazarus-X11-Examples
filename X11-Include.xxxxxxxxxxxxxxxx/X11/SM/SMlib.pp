
unit SMlib;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/SM/SMlib.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/SM/SMlib.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/SM/SMlib.pp
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
    Pchar  = ^char;
    Pdword  = ^dword;
    PSmcCallbacks  = ^SmcCallbacks;
    PSmcCloseStatus  = ^SmcCloseStatus;
    PSmcConn  = ^SmcConn;
    PSmPointer  = ^SmPointer;
    PSmProp  = ^SmProp;
    PSmPropValue  = ^SmPropValue;
    PSmsCallbacks  = ^SmsCallbacks;
    PSmsConn  = ^SmsConn;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _SMLIB_H_}
{$define _SMLIB_H_}
{$include <X11/SM/SM.h>}
{$include <X11/ICE/ICElib.h>}

type
  PSmPointer = ^TSmPointer;
  TSmPointer = TIcePointer;


  PSmcConn = ^TSmcConn;
  TSmcConn = PSmcConn;

  PSmsConn = ^TSmsConn;
  TSmsConn = PSmsConn;




  PSmPropValue = ^TSmPropValue;
  TSmPropValue = record
      length : longint;
      value : TSmPointer;
    end;





  PSmProp = ^TSmProp;
  TSmProp = record
      name : Pchar;
      _type : Pchar;
      num_vals : longint;
      vals : PSmPropValue;
    end;


  PSmcCloseStatus = ^TSmcCloseStatus;
  TSmcCloseStatus = (SmcClosedNow,SmcClosedASAP,SmcConnectionInUse
    );



  TSmcSaveYourselfProc = procedure (para1:TSmcConn; para2:TSmPointer; para3:longint; para4:TBool; para5:longint; 
                para6:TBool);cdecl;


  TSmcSaveYourselfPhase2Proc = procedure (para1:TSmcConn; para2:TSmPointer);cdecl;


  TSmcInteractProc = procedure (para1:TSmcConn; para2:TSmPointer);cdecl;


  TSmcDieProc = procedure (para1:TSmcConn; para2:TSmPointer);cdecl;


  TSmcShutdownCancelledProc = procedure (para1:TSmcConn; para2:TSmPointer);cdecl;


  TSmcSaveCompleteProc = procedure (para1:TSmcConn; para2:TSmPointer);cdecl;


  TSmcPropReplyProc = procedure (para1:TSmcConn; para2:TSmPointer; para3:longint; para4:PPSmProp);cdecl;


  PSmcCallbacks = ^TSmcCallbacks;
  TSmcCallbacks = record
      save_yourself : record
          callback : TSmcSaveYourselfProc;
          client_data : TSmPointer;
        end;
      die : record
          callback : TSmcDieProc;
          client_data : TSmPointer;
        end;
      save_complete : record
          callback : TSmcSaveCompleteProc;
          client_data : TSmPointer;
        end;
      shutdown_cancelled : record
          callback : TSmcShutdownCancelledProc;
          client_data : TSmPointer;
        end;
    end;

const
  SmcSaveYourselfProcMask = 1 shl 0;  
  SmcDieProcMask = 1 shl 1;  
  SmcSaveCompleteProcMask = 1 shl 2;  
  SmcShutdownCancelledProcMask = 1 shl 3;  


type

  TSmsRegisterClientProc = function (para1:TSmsConn; para2:TSmPointer; para3:Pchar):TStatus;cdecl;


  TSmsInteractRequestProc = procedure (para1:TSmsConn; para2:TSmPointer; para3:longint);cdecl;


  TSmsInteractDoneProc = procedure (para1:TSmsConn; para2:TSmPointer; para3:TBool);cdecl;


  TSmsSaveYourselfRequestProc = procedure (para1:TSmsConn; para2:TSmPointer; para3:longint; para4:TBool; para5:longint; 
                para6:TBool; para7:TBool);cdecl;


  TSmsSaveYourselfPhase2RequestProc = procedure (para1:TSmsConn; para2:TSmPointer);cdecl;


  TSmsSaveYourselfDoneProc = procedure (para1:TSmsConn; para2:TSmPointer; para3:TBool);cdecl;


  TSmsCloseConnectionProc = procedure (para1:TSmsConn; para2:TSmPointer; para3:longint; para4:PPchar);cdecl;


  TSmsSetPropertiesProc = procedure (para1:TSmsConn; para2:TSmPointer; para3:longint; para4:PPSmProp);cdecl;


  TSmsDeletePropertiesProc = procedure (para1:TSmsConn; para2:TSmPointer; para3:longint; para4:PPchar);cdecl;


  TSmsGetPropertiesProc = procedure (para1:TSmsConn; para2:TSmPointer);cdecl;


  PSmsCallbacks = ^TSmsCallbacks;
  TSmsCallbacks = record
      register_client : record
          callback : TSmsRegisterClientProc;
          manager_data : TSmPointer;
        end;
      interact_request : record
          callback : TSmsInteractRequestProc;
          manager_data : TSmPointer;
        end;
      interact_done : record
          callback : TSmsInteractDoneProc;
          manager_data : TSmPointer;
        end;
      save_yourself_request : record
          callback : TSmsSaveYourselfRequestProc;
          manager_data : TSmPointer;
        end;
      save_yourself_phase2_request : record
          callback : TSmsSaveYourselfPhase2RequestProc;
          manager_data : TSmPointer;
        end;
      save_yourself_done : record
          callback : TSmsSaveYourselfDoneProc;
          manager_data : TSmPointer;
        end;
      close_connection : record
          callback : TSmsCloseConnectionProc;
          manager_data : TSmPointer;
        end;
      set_properties : record
          callback : TSmsSetPropertiesProc;
          manager_data : TSmPointer;
        end;
      delete_properties : record
          callback : TSmsDeletePropertiesProc;
          manager_data : TSmPointer;
        end;
      get_properties : record
          callback : TSmsGetPropertiesProc;
          manager_data : TSmPointer;
        end;
    end;

const
  SmsRegisterClientProcMask = 1 shl 0;  
  SmsInteractRequestProcMask = 1 shl 1;  
  SmsInteractDoneProcMask = 1 shl 2;  
  SmsSaveYourselfRequestProcMask = 1 shl 3;  
  SmsSaveYourselfP2RequestProcMask = 1 shl 4;  
  SmsSaveYourselfDoneProcMask = 1 shl 5;  
  SmsCloseConnectionProcMask = 1 shl 6;  
  SmsSetPropertiesProcMask = 1 shl 7;  
  SmsDeletePropertiesProcMask = 1 shl 8;  
  SmsGetPropertiesProcMask = 1 shl 9;  

type

  TSmsNewClientProc = function (para1:TSmsConn; para2:TSmPointer; para3:Pdword; para4:PSmsCallbacks; para5:PPchar):TStatus;cdecl;



  TSmcErrorHandler = procedure (para1:TSmcConn; para2:TBool; para3:longint; para4:dword; para5:longint; 
                para6:longint; para7:TSmPointer);cdecl;


  TSmsErrorHandler = procedure (para1:TSmsConn; para2:TBool; para3:longint; para4:dword; para5:longint; 
                para6:longint; para7:TSmPointer);cdecl;

(* error 
extern SmcConn SmcOpenConnection (

in declaration at line 359 *)


function SmcCloseConnection(para1:TSmcConn; para2:longint; para3:PPchar):TSmcCloseStatus;cdecl;external;

procedure SmcModifyCallbacks(para1:TSmcConn; para2:dword; para3:PSmcCallbacks);cdecl;external;

procedure SmcSetProperties(para1:TSmcConn; para2:longint; para3:PPSmProp);cdecl;external;

procedure SmcDeleteProperties(para1:TSmcConn; para2:longint; para3:PPchar);cdecl;external;

function SmcGetProperties(para1:TSmcConn; para2:TSmcPropReplyProc; para3:TSmPointer):TStatus;cdecl;external;

function SmcInteractRequest(para1:TSmcConn; para2:longint; para3:TSmcInteractProc; para4:TSmPointer):TStatus;cdecl;external;

procedure SmcInteractDone(para1:TSmcConn; para2:TBool);cdecl;external;

procedure SmcRequestSaveYourself(para1:TSmcConn; para2:longint; para3:TBool; para4:longint; para5:TBool; 
                para6:TBool);cdecl;external;

function SmcRequestSaveYourselfPhase2(para1:TSmcConn; para2:TSmcSaveYourselfPhase2Proc; para3:TSmPointer):TStatus;cdecl;external;

procedure SmcSaveYourselfDone(para1:TSmcConn; para2:TBool);cdecl;external;

function SmcProtocolVersion(para1:TSmcConn):longint;cdecl;external;

function SmcProtocolRevision(para1:TSmcConn):longint;cdecl;external;

function SmcVendor(para1:TSmcConn):Pchar;cdecl;external;

function SmcRelease(para1:TSmcConn):Pchar;cdecl;external;

function SmcClientID(para1:TSmcConn):Pchar;cdecl;external;

function SmcGetIceConnection(para1:TSmcConn):TIceConn;cdecl;external;

function SmsInitialize(para1:Pchar; para2:Pchar; para3:TSmsNewClientProc; para4:TSmPointer; para5:TIceHostBasedAuthProc; 
               para6:longint; para7:Pchar):TStatus;cdecl;external;

function SmsClientHostName(para1:TSmsConn):Pchar;cdecl;external;

function SmsGenerateClientID(para1:TSmsConn):Pchar;cdecl;external;

function SmsRegisterClientReply(para1:TSmsConn; para2:Pchar):TStatus;cdecl;external;

procedure SmsSaveYourself(para1:TSmsConn; para2:longint; para3:TBool; para4:longint; para5:TBool);cdecl;external;

procedure SmsSaveYourselfPhase2(para1:TSmsConn);cdecl;external;

procedure SmsInteract(para1:TSmsConn);cdecl;external;

procedure SmsDie(para1:TSmsConn);cdecl;external;

procedure SmsSaveComplete(para1:TSmsConn);cdecl;external;

procedure SmsShutdownCancelled(para1:TSmsConn);cdecl;external;

procedure SmsReturnProperties(para1:TSmsConn; para2:longint; para3:PPSmProp);cdecl;external;

procedure SmsCleanUp(para1:TSmsConn);cdecl;external;

function SmsProtocolVersion(para1:TSmsConn):longint;cdecl;external;

function SmsProtocolRevision(para1:TSmsConn):longint;cdecl;external;

function SmsClientID(para1:TSmsConn):Pchar;cdecl;external;

function SmsGetIceConnection(para1:TSmsConn):TIceConn;cdecl;external;

function SmcSetErrorHandler(para1:TSmcErrorHandler):TSmcErrorHandler;cdecl;external;

function SmsSetErrorHandler(para1:TSmsErrorHandler):TSmsErrorHandler;cdecl;external;

procedure SmFreeProperty(para1:PSmProp);cdecl;external;

procedure SmFreeReasons(para1:longint; para2:PPchar);cdecl;external;
{$endif}

(* error 
#endif /* _SMLIB_H_ */

implementation


end.
