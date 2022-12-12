
unit ICEconn;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ICE/ICEconn.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ICE/ICEconn.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ICE/ICEconn.pp
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
PIceConn  = ^IceConn;
PIceConnectToMeInfo  = ^IceConnectToMeInfo;
PIceConnectToYouInfo  = ^IceConnectToYouInfo;
PIcePaAuthProc  = ^IcePaAuthProc;
PIcePaProtocol  = ^IcePaProtocol;
PIcePaVersionRec  = ^IcePaVersionRec;
PIcePingWait  = ^IcePingWait;
PIcePoAuthProc  = ^IcePoAuthProc;
PIcePoProtocol  = ^IcePoProtocol;
PIcePoVersionRec  = ^IcePoVersionRec;
PIceProcessMsgInfo  = ^IceProcessMsgInfo;
PIceProtocol  = ^IceProtocol;
PIceProtoSetupToMeInfo  = ^IceProtoSetupToMeInfo;
PIceProtoSetupToYouInfo  = ^IceProtoSetupToYouInfo;
PIceReplyWaitInfo  = ^IceReplyWaitInfo;
PIceSavedReplyWait  = ^IceSavedReplyWait;
Plongint  = ^longint;
PXtransConnInfo  = ^XtransConnInfo;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _ICECONN_H_}
{$define _ICECONN_H_}
{$include <X11/ICE/ICElib.h>}

type
  PIceSavedReplyWait = ^TIceSavedReplyWait;
  TIceSavedReplyWait = record
      reply_wait : PIceReplyWaitInfo;
      reply_ready : TBool;
      next : PIceSavedReplyWait;
    end;

  PIcePingWait = ^TIcePingWait;
  TIcePingWait = record
      ping_reply_proc : TIcePingReplyProc;
      client_data : TIcePointer;
      next : PIcePingWait;
    end;

  PIcePoProtocol = ^TIcePoProtocol;
  TIcePoProtocol = record
      vendor : Pchar;
      release : Pchar;
      version_count : longint;
      version_recs : PIcePoVersionRec;
      auth_count : longint;
      auth_names : ^Pchar;
      auth_procs : PIcePoAuthProc;
      io_error_proc : TIceIOErrorProc;
    end;

  PIcePaProtocol = ^TIcePaProtocol;
  TIcePaProtocol = record
      vendor : Pchar;
      release : Pchar;
      version_count : longint;
      version_recs : PIcePaVersionRec;
      protocol_setup_proc : TIceProtocolSetupProc;
      protocol_activate_proc : TIceProtocolActivateProc;
      auth_count : longint;
      auth_names : ^Pchar;
      auth_procs : PIcePaAuthProc;
      host_based_auth_proc : TIceHostBasedAuthProc;
      io_error_proc : TIceIOErrorProc;
    end;

  PIceProtocol = ^TIceProtocol;
  TIceProtocol = record
      protocol_name : Pchar;
      orig_client : PIcePoProtocol;
      accept_client : PIcePaProtocol;
    end;

  PIceProcessMsgInfo = ^TIceProcessMsgInfo;
  TIceProcessMsgInfo = record
      in_use : TBool;
      my_opcode : longint;
      protocol : PIceProtocol;
      client_data : TIcePointer;
      accept_flag : TBool;
      process_msg_proc : record
          case longint of
            0 : ( accept_client : TIcePaProcessMsgProc );
            1 : ( orig_client : TIcePoProcessMsgProc );
          end;
    end;

  PIceConnectToMeInfo = ^TIceConnectToMeInfo;
  TIceConnectToMeInfo = record
      his_version_index : longint;
      my_version_index : longint;
      his_vendor : Pchar;
      his_release : Pchar;
      my_auth_index : char;
      my_auth_state : TIcePointer;
      must_authenticate : TBool;
    end;

  PIceProtoSetupToMeInfo = ^TIceProtoSetupToMeInfo;
  TIceProtoSetupToMeInfo = record
      his_opcode : longint;
      my_opcode : longint;
      his_version_index : longint;
      my_version_index : longint;
      his_vendor : Pchar;
      his_release : Pchar;
      my_auth_index : char;
      my_auth_state : TIcePointer;
      must_authenticate : TBool;
    end;

  PIceConnectToYouInfo = ^TIceConnectToYouInfo;
  TIceConnectToYouInfo = record
      auth_active : TBool;
      my_auth_index : char;
      my_auth_state : TIcePointer;
    end;

  PIceProtoSetupToYouInfo = ^TIceProtoSetupToYouInfo;
  TIceProtoSetupToYouInfo = record
      my_opcode : longint;
      my_auth_count : longint;
      my_auth_indices : Plongint;
      auth_active : TBool;
      my_auth_index : char;
      my_auth_state : TIcePointer;
    end;




































  PIceConn = ^TIceConn;
  TIceConn = record
      flag0 : word;
      connection_status : TIceConnectStatus;
      my_ice_version_index : byte;
      trans_conn : PXtransConnInfo;
      send_sequence : dword;
      receive_sequence : dword;
      connection_string : Pchar;
      vendor : Pchar;
      release : Pchar;
      inbuf : Pchar;
      inbufptr : Pchar;
      inbufmax : Pchar;
      outbuf : Pchar;
      outbufptr : Pchar;
      outbufmax : Pchar;
      scratch : Pchar;
      scratch_size : dword;
      dispatch_level : longint;
      context : TIcePointer;
      process_msg_info : PIceProcessMsgInfo;
      his_min_opcode : char;
      his_max_opcode : char;
      open_ref_count : byte;
      proto_ref_count : byte;
      listen_obj : TIceListenObj;
      saved_reply_waits : PIceSavedReplyWait;
      ping_waits : PIcePingWait;
      connect_to_you : PIceConnectToYouInfo;
      protosetup_to_you : PIceProtoSetupToYouInfo;
      connect_to_me : PIceConnectToMeInfo;
      protosetup_to_me : PIceProtoSetupToMeInfo;
    end;


const
  bm_TIceConn_io_ok = $1;
  bp_TIceConn_io_ok = 0;
  bm_TIceConn_swap = $2;
  bp_TIceConn_swap = 1;
  bm_TIceConn_waiting_for_byteorder = $4;
  bp_TIceConn_waiting_for_byteorder = 2;
  bm_TIceConn_skip_want_to_close = $8;
  bp_TIceConn_skip_want_to_close = 3;
  bm_TIceConn_want_to_close = $10;
  bp_TIceConn_want_to_close = 4;
  bm_TIceConn_free_asap = $20;
  bp_TIceConn_free_asap = 5;
  bm_TIceConn_unused1 = $C0;
  bp_TIceConn_unused1 = 6;
  bm_TIceConn_unused2 = $FF00;
  bp_TIceConn_unused2 = 8;

function io_ok(var a : TIceConn) : dword;
procedure set_io_ok(var a : TIceConn; __io_ok : dword);
function swap(var a : TIceConn) : dword;
procedure set_swap(var a : TIceConn; __swap : dword);
function waiting_for_byteorder(var a : TIceConn) : dword;
procedure set_waiting_for_byteorder(var a : TIceConn; __waiting_for_byteorder : dword);
function skip_want_to_close(var a : TIceConn) : dword;
procedure set_skip_want_to_close(var a : TIceConn; __skip_want_to_close : dword);
function want_to_close(var a : TIceConn) : dword;
procedure set_want_to_close(var a : TIceConn; __want_to_close : dword);
function free_asap(var a : TIceConn) : dword;
procedure set_free_asap(var a : TIceConn; __free_asap : dword);
function unused1(var a : TIceConn) : dword;
procedure set_unused1(var a : TIceConn; __unused1 : dword);
function unused2(var a : TIceConn) : dword;
procedure set_unused2(var a : TIceConn; __unused2 : dword);
{$endif}


implementation

function io_ok(var a : TIceConn) : dword;
begin
  io_ok:=(a.flag0 and bm_TIceConn_io_ok) shr bp_TIceConn_io_ok;
end;

procedure set_io_ok(var a : TIceConn; __io_ok : dword);
begin
  a.flag0:=a.flag0 or ((__io_ok shl bp_TIceConn_io_ok) and bm_TIceConn_io_ok);
end;

function swap(var a : TIceConn) : dword;
begin
  swap:=(a.flag0 and bm_TIceConn_swap) shr bp_TIceConn_swap;
end;

procedure set_swap(var a : TIceConn; __swap : dword);
begin
  a.flag0:=a.flag0 or ((__swap shl bp_TIceConn_swap) and bm_TIceConn_swap);
end;

function waiting_for_byteorder(var a : TIceConn) : dword;
begin
  waiting_for_byteorder:=(a.flag0 and bm_TIceConn_waiting_for_byteorder) shr bp_TIceConn_waiting_for_byteorder;
end;

procedure set_waiting_for_byteorder(var a : TIceConn; __waiting_for_byteorder : dword);
begin
  a.flag0:=a.flag0 or ((__waiting_for_byteorder shl bp_TIceConn_waiting_for_byteorder) and bm_TIceConn_waiting_for_byteorder);
end;

function skip_want_to_close(var a : TIceConn) : dword;
begin
  skip_want_to_close:=(a.flag0 and bm_TIceConn_skip_want_to_close) shr bp_TIceConn_skip_want_to_close;
end;

procedure set_skip_want_to_close(var a : TIceConn; __skip_want_to_close : dword);
begin
  a.flag0:=a.flag0 or ((__skip_want_to_close shl bp_TIceConn_skip_want_to_close) and bm_TIceConn_skip_want_to_close);
end;

function want_to_close(var a : TIceConn) : dword;
begin
  want_to_close:=(a.flag0 and bm_TIceConn_want_to_close) shr bp_TIceConn_want_to_close;
end;

procedure set_want_to_close(var a : TIceConn; __want_to_close : dword);
begin
  a.flag0:=a.flag0 or ((__want_to_close shl bp_TIceConn_want_to_close) and bm_TIceConn_want_to_close);
end;

function free_asap(var a : TIceConn) : dword;
begin
  free_asap:=(a.flag0 and bm_TIceConn_free_asap) shr bp_TIceConn_free_asap;
end;

procedure set_free_asap(var a : TIceConn; __free_asap : dword);
begin
  a.flag0:=a.flag0 or ((__free_asap shl bp_TIceConn_free_asap) and bm_TIceConn_free_asap);
end;

function unused1(var a : TIceConn) : dword;
begin
  unused1:=(a.flag0 and bm_TIceConn_unused1) shr bp_TIceConn_unused1;
end;

procedure set_unused1(var a : TIceConn; __unused1 : dword);
begin
  a.flag0:=a.flag0 or ((__unused1 shl bp_TIceConn_unused1) and bm_TIceConn_unused1);
end;

function unused2(var a : TIceConn) : dword;
begin
  unused2:=(a.flag0 and bm_TIceConn_unused2) shr bp_TIceConn_unused2;
end;

procedure set_unused2(var a : TIceConn; __unused2 : dword);
begin
  a.flag0:=a.flag0 or ((__unused2 shl bp_TIceConn_unused2) and bm_TIceConn_unused2);
end;


end.
