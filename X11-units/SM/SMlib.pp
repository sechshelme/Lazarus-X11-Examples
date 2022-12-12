
unit SMlib;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/SM/SMlib.h
  The following command line parameters were used:
    /usr/include/X11/SM/SMlib.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/SM/SMlib.pp
}

    Type
    Pchar  = ^char;
    Pdword  = ^dword;
    PSmcCallbacks  = ^SmcCallbacks;
    PSmProp  = ^SmProp;
    PSmsCallbacks  = ^SmsCallbacks;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _SMLIB_H_}
{$define _SMLIB_H_}  
{$include <X11/SM/SM.h>}
{$include <X11/ICE/ICElib.h>}


  type
    SmPointer = IcePointer;


    SmcConn = ^_SmcConn;

    SmsConn = ^_SmsConn;




    SmPropValue = record
        length : longint;
        value : SmPointer;
      end;





    SmProp = record
        name : ^char;
        _type : ^char;
        num_vals : longint;
        vals : ^SmPropValue;
      end;


    SmcCloseStatus = (SmcClosedNow,SmcClosedASAP,SmcConnectionInUse
      );



    SmcSaveYourselfProc = procedure (_para1:SmcConn; _para2:SmPointer; _para3:longint; _para4:Bool; _para5:longint; 
                  _para6:Bool);cdecl;


    SmcSaveYourselfPhase2Proc = procedure (_para1:SmcConn; _para2:SmPointer);cdecl;


    SmcInteractProc = procedure (_para1:SmcConn; _para2:SmPointer);cdecl;


    SmcDieProc = procedure (_para1:SmcConn; _para2:SmPointer);cdecl;


    SmcShutdownCancelledProc = procedure (_para1:SmcConn; _para2:SmPointer);cdecl;


    SmcSaveCompleteProc = procedure (_para1:SmcConn; _para2:SmPointer);cdecl;


    SmcPropReplyProc = procedure (_para1:SmcConn; _para2:SmPointer; _para3:longint; _para4:PPSmProp);cdecl;


    SmcCallbacks = record
        save_yourself : record
            callback : SmcSaveYourselfProc;
            client_data : SmPointer;
          end;
        die : record
            callback : SmcDieProc;
            client_data : SmPointer;
          end;
        save_complete : record
            callback : SmcSaveCompleteProc;
            client_data : SmPointer;
          end;
        shutdown_cancelled : record
            callback : SmcShutdownCancelledProc;
            client_data : SmPointer;
          end;
      end;

  const
    SmcSaveYourselfProcMask = 1 shl 0;    
    SmcDieProcMask = 1 shl 1;    
    SmcSaveCompleteProcMask = 1 shl 2;    
    SmcShutdownCancelledProcMask = 1 shl 3;    



  type

    SmsRegisterClientProc = function (_para1:SmsConn; _para2:SmPointer; _para3:Pchar):Status;cdecl;


    SmsInteractRequestProc = procedure (_para1:SmsConn; _para2:SmPointer; _para3:longint);cdecl;


    SmsInteractDoneProc = procedure (_para1:SmsConn; _para2:SmPointer; _para3:Bool);cdecl;


    SmsSaveYourselfRequestProc = procedure (_para1:SmsConn; _para2:SmPointer; _para3:longint; _para4:Bool; _para5:longint; 
                  _para6:Bool; _para7:Bool);cdecl;


    SmsSaveYourselfPhase2RequestProc = procedure (_para1:SmsConn; _para2:SmPointer);cdecl;


    SmsSaveYourselfDoneProc = procedure (_para1:SmsConn; _para2:SmPointer; _para3:Bool);cdecl;


    SmsCloseConnectionProc = procedure (_para1:SmsConn; _para2:SmPointer; _para3:longint; _para4:PPchar);cdecl;


    SmsSetPropertiesProc = procedure (_para1:SmsConn; _para2:SmPointer; _para3:longint; _para4:PPSmProp);cdecl;


    SmsDeletePropertiesProc = procedure (_para1:SmsConn; _para2:SmPointer; _para3:longint; _para4:PPchar);cdecl;


    SmsGetPropertiesProc = procedure (_para1:SmsConn; _para2:SmPointer);cdecl;


    SmsCallbacks = record
        register_client : record
            callback : SmsRegisterClientProc;
            manager_data : SmPointer;
          end;
        interact_request : record
            callback : SmsInteractRequestProc;
            manager_data : SmPointer;
          end;
        interact_done : record
            callback : SmsInteractDoneProc;
            manager_data : SmPointer;
          end;
        save_yourself_request : record
            callback : SmsSaveYourselfRequestProc;
            manager_data : SmPointer;
          end;
        save_yourself_phase2_request : record
            callback : SmsSaveYourselfPhase2RequestProc;
            manager_data : SmPointer;
          end;
        save_yourself_done : record
            callback : SmsSaveYourselfDoneProc;
            manager_data : SmPointer;
          end;
        close_connection : record
            callback : SmsCloseConnectionProc;
            manager_data : SmPointer;
          end;
        set_properties : record
            callback : SmsSetPropertiesProc;
            manager_data : SmPointer;
          end;
        delete_properties : record
            callback : SmsDeletePropertiesProc;
            manager_data : SmPointer;
          end;
        get_properties : record
            callback : SmsGetPropertiesProc;
            manager_data : SmPointer;
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

    SmsNewClientProc = function (_para1:SmsConn; _para2:SmPointer; _para3:Pdword; _para4:PSmsCallbacks; _para5:PPchar):Status;cdecl;



    SmcErrorHandler = procedure (_para1:SmcConn; _para2:Bool; _para3:longint; _para4:dword; _para5:longint; 
                  _para6:longint; _para7:SmPointer);cdecl;


    SmsErrorHandler = procedure (_para1:SmsConn; _para2:Bool; _para3:longint; _para4:dword; _para5:longint; 
                  _para6:longint; _para7:SmPointer);cdecl;

(* error 
extern SmcConn SmcOpenConnection (

in declaration at line 359 *)


    function SmcCloseConnection(_para1:SmcConn; _para2:longint; _para3:PPchar):SmcCloseStatus;cdecl;


    procedure SmcModifyCallbacks(_para1:SmcConn; _para2:dword; _para3:PSmcCallbacks);cdecl;


    procedure SmcSetProperties(_para1:SmcConn; _para2:longint; _para3:PPSmProp);cdecl;


    procedure SmcDeleteProperties(_para1:SmcConn; _para2:longint; _para3:PPchar);cdecl;


    function SmcGetProperties(_para1:SmcConn; _para2:SmcPropReplyProc; _para3:SmPointer):Status;cdecl;


    function SmcInteractRequest(_para1:SmcConn; _para2:longint; _para3:SmcInteractProc; _para4:SmPointer):Status;cdecl;


    procedure SmcInteractDone(_para1:SmcConn; _para2:Bool);cdecl;


    procedure SmcRequestSaveYourself(_para1:SmcConn; _para2:longint; _para3:Bool; _para4:longint; _para5:Bool; 
                _para6:Bool);cdecl;


    function SmcRequestSaveYourselfPhase2(_para1:SmcConn; _para2:SmcSaveYourselfPhase2Proc; _para3:SmPointer):Status;cdecl;


    procedure SmcSaveYourselfDone(_para1:SmcConn; _para2:Bool);cdecl;


    function SmcProtocolVersion(_para1:SmcConn):longint;cdecl;


    function SmcProtocolRevision(_para1:SmcConn):longint;cdecl;


    function SmcVendor(_para1:SmcConn):^char;cdecl;


    function SmcRelease(_para1:SmcConn):^char;cdecl;


    function SmcClientID(_para1:SmcConn):^char;cdecl;


    function SmcGetIceConnection(_para1:SmcConn):IceConn;cdecl;


    function SmsInitialize(_para1:Pchar; _para2:Pchar; _para3:SmsNewClientProc; _para4:SmPointer; _para5:IceHostBasedAuthProc; 
               _para6:longint; _para7:Pchar):Status;cdecl;


    function SmsClientHostName(_para1:SmsConn):^char;cdecl;


    function SmsGenerateClientID(_para1:SmsConn):^char;cdecl;


    function SmsRegisterClientReply(_para1:SmsConn; _para2:Pchar):Status;cdecl;


    procedure SmsSaveYourself(_para1:SmsConn; _para2:longint; _para3:Bool; _para4:longint; _para5:Bool);cdecl;


    procedure SmsSaveYourselfPhase2(_para1:SmsConn);cdecl;


    procedure SmsInteract(_para1:SmsConn);cdecl;


    procedure SmsDie(_para1:SmsConn);cdecl;


    procedure SmsSaveComplete(_para1:SmsConn);cdecl;


    procedure SmsShutdownCancelled(_para1:SmsConn);cdecl;


    procedure SmsReturnProperties(_para1:SmsConn; _para2:longint; _para3:PPSmProp);cdecl;


    procedure SmsCleanUp(_para1:SmsConn);cdecl;


    function SmsProtocolVersion(_para1:SmsConn):longint;cdecl;


    function SmsProtocolRevision(_para1:SmsConn):longint;cdecl;


    function SmsClientID(_para1:SmsConn):^char;cdecl;


    function SmsGetIceConnection(_para1:SmsConn):IceConn;cdecl;


    function SmcSetErrorHandler(_para1:SmcErrorHandler):SmcErrorHandler;cdecl;


    function SmsSetErrorHandler(_para1:SmsErrorHandler):SmsErrorHandler;cdecl;


    procedure SmFreeProperty(_para1:PSmProp);cdecl;


    procedure SmFreeReasons(_para1:longint; _para2:PPchar);cdecl;

{$endif}

(* error 
#endif /* _SMLIB_H_ */

implementation


end.
