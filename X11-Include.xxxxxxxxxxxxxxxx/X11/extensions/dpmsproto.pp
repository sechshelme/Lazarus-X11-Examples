
unit dpmsproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/dpmsproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/dpmsproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/dpmsproto.pp
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
PxDPMSCapableReply  = ^xDPMSCapableReply;
PxDPMSCapableReq  = ^xDPMSCapableReq;
PxDPMSDisableReq  = ^xDPMSDisableReq;
PxDPMSEnableReq  = ^xDPMSEnableReq;
PxDPMSForceLevelReq  = ^xDPMSForceLevelReq;
PxDPMSGetTimeoutsReply  = ^xDPMSGetTimeoutsReply;
PxDPMSGetTimeoutsReq  = ^xDPMSGetTimeoutsReq;
PxDPMSGetVersionReply  = ^xDPMSGetVersionReply;
PxDPMSGetVersionReq  = ^xDPMSGetVersionReq;
PxDPMSInfoNotifyEvent  = ^xDPMSInfoNotifyEvent;
PxDPMSInfoReply  = ^xDPMSInfoReply;
PxDPMSInfoReq  = ^xDPMSInfoReq;
PxDPMSSelectInputReq  = ^xDPMSSelectInputReq;
PxDPMSSetTimeoutsReq  = ^xDPMSSetTimeoutsReq;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _DPMSPROTO_H_}
{$define _DPMSPROTO_H_}
{$include <X11/extensions/dpmsconst.h>}

const
  X_DPMSGetVersion = 0;  
  X_DPMSCapable = 1;  
  X_DPMSGetTimeouts = 2;  
  X_DPMSSetTimeouts = 3;  
  X_DPMSEnable = 4;  
  X_DPMSDisable = 5;  
  X_DPMSForceLevel = 6;  
  X_DPMSInfo = 7;  
  X_DPMSSelectInput = 8;  
  DPMSNumberEvents = 0;  
  DPMSNumberErrors = 0;  


type
  PxDPMSGetVersionReq = ^TxDPMSGetVersionReq;
  TxDPMSGetVersionReq = record
      reqType : TCARD8;
      dpmsReqType : TCARD8;
      length : TCARD16;
      majorVersion : TCARD16;
      minorVersion : TCARD16;
    end;

const
  sz_xDPMSGetVersionReq = 8;  

type
  PxDPMSGetVersionReply = ^TxDPMSGetVersionReply;
  TxDPMSGetVersionReply = record
      _type : TBYTE;
      pad0 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      majorVersion : TCARD16;
      minorVersion : TCARD16;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xDPMSGetVersionReply = 32;  


type
  PxDPMSCapableReq = ^TxDPMSCapableReq;
  TxDPMSCapableReq = record
      reqType : TCARD8;
      dpmsReqType : TCARD8;
      length : TCARD16;
    end;

const
  sz_xDPMSCapableReq = 4;  

type
  PxDPMSCapableReply = ^TxDPMSCapableReply;
  TxDPMSCapableReply = record
      _type : TBYTE;
      pad0 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      capable : TBOOL;
      pad1 : TCARD8;
      pad2 : TCARD16;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
      pad7 : TCARD32;
    end;

const
  sz_xDPMSCapableReply = 32;  


type
  PxDPMSGetTimeoutsReq = ^TxDPMSGetTimeoutsReq;
  TxDPMSGetTimeoutsReq = record
      reqType : TCARD8;
      dpmsReqType : TCARD8;
      length : TCARD16;
    end;

const
  sz_xDPMSGetTimeoutsReq = 4;  

type
  PxDPMSGetTimeoutsReply = ^TxDPMSGetTimeoutsReply;
  TxDPMSGetTimeoutsReply = record
      _type : TBYTE;
      pad0 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      standby : TCARD16;
      suspend : TCARD16;
      off : TCARD16;
      pad1 : TCARD16;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xDPMSGetTimeoutsReply = 32;  


type
  PxDPMSSetTimeoutsReq = ^TxDPMSSetTimeoutsReq;
  TxDPMSSetTimeoutsReq = record
      reqType : TCARD8;
      dpmsReqType : TCARD8;
      length : TCARD16;
      standby : TCARD16;
      suspend : TCARD16;
      off : TCARD16;
      pad0 : TCARD16;
    end;

const
  sz_xDPMSSetTimeoutsReq = 12;  


type
  PxDPMSEnableReq = ^TxDPMSEnableReq;
  TxDPMSEnableReq = record
      reqType : TCARD8;
      dpmsReqType : TCARD8;
      length : TCARD16;
    end;

const
  sz_xDPMSEnableReq = 4;  


type
  PxDPMSDisableReq = ^TxDPMSDisableReq;
  TxDPMSDisableReq = record
      reqType : TCARD8;
      dpmsReqType : TCARD8;
      length : TCARD16;
    end;

const
  sz_xDPMSDisableReq = 4;  



type
  PxDPMSForceLevelReq = ^TxDPMSForceLevelReq;
  TxDPMSForceLevelReq = record
      reqType : TCARD8;
      dpmsReqType : TCARD8;
      length : TCARD16;
      level : TCARD16;
      pad0 : TCARD16;
    end;

const
  sz_xDPMSForceLevelReq = 8;  


type
  PxDPMSInfoReq = ^TxDPMSInfoReq;
  TxDPMSInfoReq = record
      reqType : TCARD8;
      dpmsReqType : TCARD8;
      length : TCARD16;
    end;

const
  sz_xDPMSInfoReq = 4;  

type
  PxDPMSInfoReply = ^TxDPMSInfoReply;
  TxDPMSInfoReply = record
      _type : TBYTE;
      pad0 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      power_level : TCARD16;
      state : TBOOL;
      pad1 : TCARD8;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xDPMSInfoReply = 32;  


(* error 
    CARD16	length B16;
 in declarator_list *)
(* error 
    CARD32	eventMask B32;
 in declarator_list *)
type
  PxDPMSSelectInputReq = ^TxDPMSSelectInputReq;
  TxDPMSSelectInputReq = record
      reqType : TCARD8;
      dpmsReqType : TCARD8;
;
;
    end;

const
  sz_xDPMSSelectInputReq = 8;  
(* error 
    CARD16	sequenceNumber B16;
 in declarator_list *)
(* error 
    CARD16	evtype B16;
 in declarator_list *)
(* error 
    CARD16	pad0 B16;
 in declarator_list *)
(* error 
    Time	timestamp B32;
 in declarator_list *)
(* error 
    CARD16	power_level B16;
 in declarator_list *)
(* error 
    CARD32	pad2 B32;
 in declarator_list *)
(* error 
    CARD32	pad3 B32;
 in declarator_list *)
(* error 
    CARD32	pad4 B32;
 in declarator_list *)
type
  PxDPMSInfoNotifyEvent = ^TxDPMSInfoNotifyEvent;
  TxDPMSInfoNotifyEvent = record
      _type : TCARD8;
      extension : TCARD8;
;
      length : TCARD32;
;
;
;
;
      state : TBOOL;
      pad1 : TCARD8;
;
;
;
    end;

const
  sz_xDPMSInfoNotifyEvent = 32;  
{$endif}


implementation


end.
