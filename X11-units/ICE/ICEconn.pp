
unit ICEconn;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/ICE/ICEconn.h
  The following command line parameters were used:
    /usr/include/X11/ICE/ICEconn.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/ICE/ICEconn.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _ICECONN_H_}
{$define _ICECONN_H_}  
{$include <X11/ICE/ICElib.h>}


  type
    _IceSavedReplyWait = record
        reply_wait : ^IceReplyWaitInfo;
        reply_ready : Bool;
        next : ^_IceSavedReplyWait;
      end;

    _IcePingWait = record
        ping_reply_proc : IcePingReplyProc;
        client_data : IcePointer;
        next : ^_IcePingWait;
      end;

    _IcePoProtocol = record
        vendor : ^char;
        release : ^char;
        version_count : longint;
        version_recs : ^IcePoVersionRec;
        auth_count : longint;
        auth_names : ^^char;
        auth_procs : ^IcePoAuthProc;
        io_error_proc : IceIOErrorProc;
      end;

    _IcePaProtocol = record
        vendor : ^char;
        release : ^char;
        version_count : longint;
        version_recs : ^IcePaVersionRec;
        protocol_setup_proc : IceProtocolSetupProc;
        protocol_activate_proc : IceProtocolActivateProc;
        auth_count : longint;
        auth_names : ^^char;
        auth_procs : ^IcePaAuthProc;
        host_based_auth_proc : IceHostBasedAuthProc;
        io_error_proc : IceIOErrorProc;
      end;

    _IceProtocol = record
        protocol_name : ^char;
        orig_client : ^_IcePoProtocol;
        accept_client : ^_IcePaProtocol;
      end;

    _IceProcessMsgInfo = record
        in_use : Bool;
        my_opcode : longint;
        protocol : ^_IceProtocol;
        client_data : IcePointer;
        accept_flag : Bool;
        process_msg_proc : record
            case longint of
              0 : ( accept_client : IcePaProcessMsgProc );
              1 : ( orig_client : IcePoProcessMsgProc );
            end;
      end;

    _IceConnectToMeInfo = record
        his_version_index : longint;
        my_version_index : longint;
        his_vendor : ^char;
        his_release : ^char;
        my_auth_index : char;
        my_auth_state : IcePointer;
        must_authenticate : Bool;
      end;

    _IceProtoSetupToMeInfo = record
        his_opcode : longint;
        my_opcode : longint;
        his_version_index : longint;
        my_version_index : longint;
        his_vendor : ^char;
        his_release : ^char;
        my_auth_index : char;
        my_auth_state : IcePointer;
        must_authenticate : Bool;
      end;

    _IceConnectToYouInfo = record
        auth_active : Bool;
        my_auth_index : char;
        my_auth_state : IcePointer;
      end;

    _IceProtoSetupToYouInfo = record
        my_opcode : longint;
        my_auth_count : longint;
        my_auth_indices : ^longint;
        auth_active : Bool;
        my_auth_index : char;
        my_auth_state : IcePointer;
      end;




































    _IceConn = record
        flag0 : word;
        connection_status : IceConnectStatus;
        my_ice_version_index : byte;
        trans_conn : ^_XtransConnInfo;
        send_sequence : dword;
        receive_sequence : dword;
        connection_string : ^char;
        vendor : ^char;
        release : ^char;
        inbuf : ^char;
        inbufptr : ^char;
        inbufmax : ^char;
        outbuf : ^char;
        outbufptr : ^char;
        outbufmax : ^char;
        scratch : ^char;
        scratch_size : dword;
        dispatch_level : longint;
        context : IcePointer;
        process_msg_info : ^_IceProcessMsgInfo;
        his_min_opcode : char;
        his_max_opcode : char;
        open_ref_count : byte;
        proto_ref_count : byte;
        listen_obj : IceListenObj;
        saved_reply_waits : ^_IceSavedReplyWait;
        ping_waits : ^_IcePingWait;
        connect_to_you : ^_IceConnectToYouInfo;
        protosetup_to_you : ^_IceProtoSetupToYouInfo;
        connect_to_me : ^_IceConnectToMeInfo;
        protosetup_to_me : ^_IceProtoSetupToMeInfo;
      end;


  const
    bm__IceConn_io_ok = $1;
    bp__IceConn_io_ok = 0;
    bm__IceConn_swap = $2;
    bp__IceConn_swap = 1;
    bm__IceConn_waiting_for_byteorder = $4;
    bp__IceConn_waiting_for_byteorder = 2;
    bm__IceConn_skip_want_to_close = $8;
    bp__IceConn_skip_want_to_close = 3;
    bm__IceConn_want_to_close = $10;
    bp__IceConn_want_to_close = 4;
    bm__IceConn_free_asap = $20;
    bp__IceConn_free_asap = 5;
    bm__IceConn_unused1 = $C0;
    bp__IceConn_unused1 = 6;
    bm__IceConn_unused2 = $FF00;
    bp__IceConn_unused2 = 8;

  function io_ok(var a : _IceConn) : dword;
  procedure set_io_ok(var a : _IceConn; __io_ok : dword);
  function swap(var a : _IceConn) : dword;
  procedure set_swap(var a : _IceConn; __swap : dword);
  function waiting_for_byteorder(var a : _IceConn) : dword;
  procedure set_waiting_for_byteorder(var a : _IceConn; __waiting_for_byteorder : dword);
  function skip_want_to_close(var a : _IceConn) : dword;
  procedure set_skip_want_to_close(var a : _IceConn; __skip_want_to_close : dword);
  function want_to_close(var a : _IceConn) : dword;
  procedure set_want_to_close(var a : _IceConn; __want_to_close : dword);
  function free_asap(var a : _IceConn) : dword;
  procedure set_free_asap(var a : _IceConn; __free_asap : dword);
  function unused1(var a : _IceConn) : dword;
  procedure set_unused1(var a : _IceConn; __unused1 : dword);
  function unused2(var a : _IceConn) : dword;
  procedure set_unused2(var a : _IceConn; __unused2 : dword);
{$endif}


implementation

  function io_ok(var a : _IceConn) : dword;
    begin
      io_ok:=(a.flag0 and bm__IceConn_io_ok) shr bp__IceConn_io_ok;
    end;

  procedure set_io_ok(var a : _IceConn; __io_ok : dword);
    begin
      a.flag0:=a.flag0 or ((__io_ok shl bp__IceConn_io_ok) and bm__IceConn_io_ok);
    end;

  function swap(var a : _IceConn) : dword;
    begin
      swap:=(a.flag0 and bm__IceConn_swap) shr bp__IceConn_swap;
    end;

  procedure set_swap(var a : _IceConn; __swap : dword);
    begin
      a.flag0:=a.flag0 or ((__swap shl bp__IceConn_swap) and bm__IceConn_swap);
    end;

  function waiting_for_byteorder(var a : _IceConn) : dword;
    begin
      waiting_for_byteorder:=(a.flag0 and bm__IceConn_waiting_for_byteorder) shr bp__IceConn_waiting_for_byteorder;
    end;

  procedure set_waiting_for_byteorder(var a : _IceConn; __waiting_for_byteorder : dword);
    begin
      a.flag0:=a.flag0 or ((__waiting_for_byteorder shl bp__IceConn_waiting_for_byteorder) and bm__IceConn_waiting_for_byteorder);
    end;

  function skip_want_to_close(var a : _IceConn) : dword;
    begin
      skip_want_to_close:=(a.flag0 and bm__IceConn_skip_want_to_close) shr bp__IceConn_skip_want_to_close;
    end;

  procedure set_skip_want_to_close(var a : _IceConn; __skip_want_to_close : dword);
    begin
      a.flag0:=a.flag0 or ((__skip_want_to_close shl bp__IceConn_skip_want_to_close) and bm__IceConn_skip_want_to_close);
    end;

  function want_to_close(var a : _IceConn) : dword;
    begin
      want_to_close:=(a.flag0 and bm__IceConn_want_to_close) shr bp__IceConn_want_to_close;
    end;

  procedure set_want_to_close(var a : _IceConn; __want_to_close : dword);
    begin
      a.flag0:=a.flag0 or ((__want_to_close shl bp__IceConn_want_to_close) and bm__IceConn_want_to_close);
    end;

  function free_asap(var a : _IceConn) : dword;
    begin
      free_asap:=(a.flag0 and bm__IceConn_free_asap) shr bp__IceConn_free_asap;
    end;

  procedure set_free_asap(var a : _IceConn; __free_asap : dword);
    begin
      a.flag0:=a.flag0 or ((__free_asap shl bp__IceConn_free_asap) and bm__IceConn_free_asap);
    end;

  function unused1(var a : _IceConn) : dword;
    begin
      unused1:=(a.flag0 and bm__IceConn_unused1) shr bp__IceConn_unused1;
    end;

  procedure set_unused1(var a : _IceConn; __unused1 : dword);
    begin
      a.flag0:=a.flag0 or ((__unused1 shl bp__IceConn_unused1) and bm__IceConn_unused1);
    end;

  function unused2(var a : _IceConn) : dword;
    begin
      unused2:=(a.flag0 and bm__IceConn_unused2) shr bp__IceConn_unused2;
    end;

  procedure set_unused2(var a : _IceConn; __unused2 : dword);
    begin
      a.flag0:=a.flag0 or ((__unused2 shl bp__IceConn_unused2) and bm__IceConn_unused2);
    end;


end.
