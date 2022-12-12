
unit syncproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/syncproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/syncproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/syncproto.pp
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
PxSyncAlarmNotifyEvent  = ^xSyncAlarmNotifyEvent;
PxSyncAwaitFenceReq  = ^xSyncAwaitFenceReq;
PxSyncAwaitReq  = ^xSyncAwaitReq;
PxSyncChangeAlarmReq  = ^xSyncChangeAlarmReq;
PxSyncChangeCounterReq  = ^xSyncChangeCounterReq;
PxSyncCounterNotifyEvent  = ^xSyncCounterNotifyEvent;
PxSyncCreateAlarmReq  = ^xSyncCreateAlarmReq;
PxSyncCreateCounterReq  = ^xSyncCreateCounterReq;
PxSyncCreateFenceReq  = ^xSyncCreateFenceReq;
PxSyncDestroyAlarmReq  = ^xSyncDestroyAlarmReq;
PxSyncDestroyCounterReq  = ^xSyncDestroyCounterReq;
PxSyncDestroyFenceReq  = ^xSyncDestroyFenceReq;
PxSyncGetPriority  = ^xSyncGetPriority;
PxSyncGetPriorityReply  = ^xSyncGetPriorityReply;
PxSyncGetPriorityReq  = ^xSyncGetPriorityReq;
PxSyncInitialize  = ^xSyncInitialize;
PxSyncInitializeReply  = ^xSyncInitializeReply;
PxSyncInitializeReq  = ^xSyncInitializeReq;
PxSyncListSystemCounters  = ^xSyncListSystemCounters;
PxSyncListSystemCountersReply  = ^xSyncListSystemCountersReply;
PxSyncListSystemCountersReq  = ^xSyncListSystemCountersReq;
PxSyncQueryAlarmReply  = ^xSyncQueryAlarmReply;
PxSyncQueryAlarmReq  = ^xSyncQueryAlarmReq;
PxSyncQueryCounterReply  = ^xSyncQueryCounterReply;
PxSyncQueryCounterReq  = ^xSyncQueryCounterReq;
PxSyncQueryFenceReply  = ^xSyncQueryFenceReply;
PxSyncQueryFenceReq  = ^xSyncQueryFenceReq;
PxSyncResetFenceReq  = ^xSyncResetFenceReq;
PxSyncSetCounterReq  = ^xSyncSetCounterReq;
PxSyncSetPriority  = ^xSyncSetPriority;
PxSyncSetPriorityReq  = ^xSyncSetPriorityReq;
PxSyncSystemCounter  = ^xSyncSystemCounter;
PxSyncTriggerFenceReq  = ^xSyncTriggerFenceReq;
PxSyncWaitCondition  = ^xSyncWaitCondition;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _SYNCPROTO_H_}
{$define _SYNCPROTO_H_}
{$include <X11/extensions/syncconst.h>}

const
  X_SyncInitialize = 0;  
  X_SyncListSystemCounters = 1;  
  X_SyncCreateCounter = 2;  
  X_SyncSetCounter = 3;  
  X_SyncChangeCounter = 4;  
  X_SyncQueryCounter = 5;  
  X_SyncDestroyCounter = 6;  
  X_SyncAwait = 7;  
  X_SyncCreateAlarm = 8;  
  X_SyncChangeAlarm = 9;  
  X_SyncQueryAlarm = 10;  
  X_SyncDestroyAlarm = 11;  
  X_SyncSetPriority = 12;  
  X_SyncGetPriority = 13;  
  X_SyncCreateFence = 14;  
  X_SyncTriggerFence = 15;  
  X_SyncResetFence = 16;  
  X_SyncDestroyFence = 17;  
  X_SyncQueryFence = 18;  
  X_SyncAwaitFence = 19;  

  XSyncCounter = CARD32;  
  XSyncAlarm = CARD32;  
  XSyncFence = CARD32;  
  Drawable = CARD32;  

type
  PxSyncInitialize = ^TxSyncInitialize;
  TxSyncInitialize = record
      reqType : TCARD8;
      syncReqType : TCARD8;
      length : TCARD16;
      majorVersion : TCARD8;
      minorVersion : TCARD8;
      pad : TCARD16;
    end;
  TxSyncInitializeReq = TxSyncInitialize;
  PxSyncInitializeReq = ^TxSyncInitializeReq;

const
  sz_xSyncInitializeReq = 8;  
type
  PxSyncInitializeReply = ^TxSyncInitializeReply;
  TxSyncInitializeReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      majorVersion : TCARD8;
      minorVersion : TCARD8;
      pad : TCARD16;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xSyncInitializeReply = 32;  

type
  PxSyncListSystemCounters = ^TxSyncListSystemCounters;
  TxSyncListSystemCounters = record
      reqType : TCARD8;
      syncReqType : TCARD8;
      length : TCARD16;
    end;
  TxSyncListSystemCountersReq = TxSyncListSystemCounters;
  PxSyncListSystemCountersReq = ^TxSyncListSystemCountersReq;

const
  sz_xSyncListSystemCountersReq = 4;  
type
  PxSyncListSystemCountersReply = ^TxSyncListSystemCountersReply;
  TxSyncListSystemCountersReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      nCounters : TINT32;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xSyncListSystemCountersReply = 32;  
type
  PxSyncSystemCounter = ^TxSyncSystemCounter;
  TxSyncSystemCounter = record
      counter : TXSyncCounter;
      resolution_hi : TINT32;
      resolution_lo : TCARD32;
      name_length : TCARD16;
    end;

const
  sz_xSyncSystemCounter = 14;  

type
  PxSyncCreateCounterReq = ^TxSyncCreateCounterReq;
  TxSyncCreateCounterReq = record
      reqType : TCARD8;
      syncReqType : TCARD8;
      length : TCARD16;
      cid : TXSyncCounter;
      initial_value_hi : TINT32;
      initial_value_lo : TCARD32;
    end;

const
  sz_xSyncCreateCounterReq = 16;  

type
  PxSyncChangeCounterReq = ^TxSyncChangeCounterReq;
  TxSyncChangeCounterReq = record
      reqType : TCARD8;
      syncReqType : TCARD8;
      length : TCARD16;
      cid : TXSyncCounter;
      value_hi : TINT32;
      value_lo : TCARD32;
    end;

const
  sz_xSyncChangeCounterReq = 16;  

type
  PxSyncSetCounterReq = ^TxSyncSetCounterReq;
  TxSyncSetCounterReq = record
      reqType : TCARD8;
      syncReqType : TCARD8;
      length : TCARD16;
      cid : TXSyncCounter;
      value_hi : TINT32;
      value_lo : TCARD32;
    end;

const
  sz_xSyncSetCounterReq = 16;  

type
  PxSyncDestroyCounterReq = ^TxSyncDestroyCounterReq;
  TxSyncDestroyCounterReq = record
      reqType : TCARD8;
      syncReqType : TCARD8;
      length : TCARD16;
      counter : TXSyncCounter;
    end;

const
  sz_xSyncDestroyCounterReq = 8;  

type
  PxSyncQueryCounterReq = ^TxSyncQueryCounterReq;
  TxSyncQueryCounterReq = record
      reqType : TCARD8;
      syncReqType : TCARD8;
      length : TCARD16;
      counter : TXSyncCounter;
    end;

const
  sz_xSyncQueryCounterReq = 8;  
type
  PxSyncQueryCounterReply = ^TxSyncQueryCounterReply;
  TxSyncQueryCounterReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      value_hi : TINT32;
      value_lo : TCARD32;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
    end;

const
  sz_xSyncQueryCounterReply = 32;  

type
  PxSyncAwaitReq = ^TxSyncAwaitReq;
  TxSyncAwaitReq = record
      reqType : TCARD8;
      syncReqType : TCARD8;
      length : TCARD16;
    end;

const
  sz_xSyncAwaitReq = 4;  
type
  PxSyncWaitCondition = ^TxSyncWaitCondition;
  TxSyncWaitCondition = record
      counter : TXSyncCounter;
      value_type : TCARD32;
      wait_value_hi : TINT32;
      wait_value_lo : TCARD32;
      test_type : TCARD32;
      event_threshold_hi : TINT32;
      event_threshold_lo : TCARD32;
    end;

const
  sz_xSyncWaitCondition = 28;  

type
  PxSyncCreateAlarmReq = ^TxSyncCreateAlarmReq;
  TxSyncCreateAlarmReq = record
      reqType : TCARD8;
      syncReqType : TCARD8;
      length : TCARD16;
      id : TXSyncAlarm;
      valueMask : TCARD32;
    end;

const
  sz_xSyncCreateAlarmReq = 12;  

type
  PxSyncDestroyAlarmReq = ^TxSyncDestroyAlarmReq;
  TxSyncDestroyAlarmReq = record
      reqType : TCARD8;
      syncReqType : TCARD8;
      length : TCARD16;
      alarm : TXSyncAlarm;
    end;

const
  sz_xSyncDestroyAlarmReq = 8;  

type
  PxSyncQueryAlarmReq = ^TxSyncQueryAlarmReq;
  TxSyncQueryAlarmReq = record
      reqType : TCARD8;
      syncReqType : TCARD8;
      length : TCARD16;
      alarm : TXSyncAlarm;
    end;

const
  sz_xSyncQueryAlarmReq = 8;  
type
  PxSyncQueryAlarmReply = ^TxSyncQueryAlarmReply;
  TxSyncQueryAlarmReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      counter : TXSyncCounter;
      value_type : TCARD32;
      wait_value_hi : TINT32;
      wait_value_lo : TCARD32;
      test_type : TCARD32;
      delta_hi : TINT32;
      delta_lo : TCARD32;
      events : TBOOL;
      state : TBYTE;
      pad0 : TBYTE;
      pad1 : TBYTE;
    end;

const
  sz_xSyncQueryAlarmReply = 40;  

type
  PxSyncChangeAlarmReq = ^TxSyncChangeAlarmReq;
  TxSyncChangeAlarmReq = record
      reqType : TCARD8;
      syncReqType : TCARD8;
      length : TCARD16;
      alarm : TXSyncAlarm;
      valueMask : TCARD32;
    end;

const
  sz_xSyncChangeAlarmReq = 12;  

type
  PxSyncSetPriority = ^TxSyncSetPriority;
  TxSyncSetPriority = record
      reqType : TCARD8;
      syncReqType : TCARD8;
      length : TCARD16;
      id : TCARD32;
      priority : TINT32;
    end;
  TxSyncSetPriorityReq = TxSyncSetPriority;
  PxSyncSetPriorityReq = ^TxSyncSetPriorityReq;

const
  sz_xSyncSetPriorityReq = 12;  


type
  PxSyncGetPriority = ^TxSyncGetPriority;
  TxSyncGetPriority = record
      reqType : TCARD8;
      syncReqType : TCARD8;
      length : TCARD16;
      id : TCARD32;
    end;
  TxSyncGetPriorityReq = TxSyncGetPriority;
  PxSyncGetPriorityReq = ^TxSyncGetPriorityReq;

const
  sz_xSyncGetPriorityReq = 8;  
type
  PxSyncGetPriorityReply = ^TxSyncGetPriorityReply;
  TxSyncGetPriorityReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      priority : TINT32;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xSyncGetPriorityReply = 32;  

type
  PxSyncCreateFenceReq = ^TxSyncCreateFenceReq;
  TxSyncCreateFenceReq = record
      reqType : TCARD8;
      syncReqType : TCARD8;
      length : TCARD16;
      d : TDrawable;
      fid : TXSyncFence;
      initially_triggered : TBOOL;
      pad0 : TCARD8;
      pad1 : TCARD16;
    end;

const
  sz_xSyncCreateFenceReq = 16;  

type
  PxSyncTriggerFenceReq = ^TxSyncTriggerFenceReq;
  TxSyncTriggerFenceReq = record
      reqType : TCARD8;
      syncReqType : TCARD8;
      length : TCARD16;
      fid : TXSyncFence;
    end;

const
  sz_xSyncTriggerFenceReq = 8;  

type
  PxSyncResetFenceReq = ^TxSyncResetFenceReq;
  TxSyncResetFenceReq = record
      reqType : TCARD8;
      syncReqType : TCARD8;
      length : TCARD16;
      fid : TXSyncFence;
    end;

const
  sz_xSyncResetFenceReq = 8;  

type
  PxSyncDestroyFenceReq = ^TxSyncDestroyFenceReq;
  TxSyncDestroyFenceReq = record
      reqType : TCARD8;
      syncReqType : TCARD8;
      length : TCARD16;
      fid : TXSyncFence;
    end;

const
  sz_xSyncDestroyFenceReq = 8;  

type
  PxSyncQueryFenceReq = ^TxSyncQueryFenceReq;
  TxSyncQueryFenceReq = record
      reqType : TCARD8;
      syncReqType : TCARD8;
      length : TCARD16;
      fid : TXSyncFence;
    end;

const
  sz_xSyncQueryFenceReq = 8;  

type
  PxSyncAwaitFenceReq = ^TxSyncAwaitFenceReq;
  TxSyncAwaitFenceReq = record
      reqType : TCARD8;
      syncReqType : TCARD8;
      length : TCARD16;
    end;

const
  sz_xSyncAwaitFenceReq = 4;  
type
  PxSyncQueryFenceReply = ^TxSyncQueryFenceReply;
  TxSyncQueryFenceReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      triggered : TBOOL;
      pad0 : TBYTE;
      pad1 : TCARD16;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xSyncQueryFenceReply = 32;  

type
  PxSyncCounterNotifyEvent = ^TxSyncCounterNotifyEvent;
  TxSyncCounterNotifyEvent = record
      _type : TBYTE;
      kind : TBYTE;
      sequenceNumber : TCARD16;
      counter : TXSyncCounter;
      wait_value_hi : TINT32;
      wait_value_lo : TCARD32;
      counter_value_hi : TINT32;
      counter_value_lo : TCARD32;
      time : TCARD32;
      count : TCARD16;
      destroyed : TBOOL;
      pad0 : TBYTE;
    end;

  PxSyncAlarmNotifyEvent = ^TxSyncAlarmNotifyEvent;
  TxSyncAlarmNotifyEvent = record
      _type : TBYTE;
      kind : TBYTE;
      sequenceNumber : TCARD16;
      alarm : TXSyncAlarm;
      counter_value_hi : TINT32;
      counter_value_lo : TCARD32;
      alarm_value_hi : TINT32;
      alarm_value_lo : TCARD32;
      time : TCARD32;
      state : TCARD8;
      pad0 : TBYTE;
      pad1 : TBYTE;
      pad2 : TBYTE;
    end;
{$undef XSyncCounter}
{$undef XSyncAlarm}
{$undef XSyncFence}
{$undef Drawable}
{$endif}


implementation


end.
