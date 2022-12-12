
unit syncproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/syncproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/syncproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/syncproto.pp
}

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
    _xSyncInitialize = record
        reqType : CARD8;
        syncReqType : CARD8;
        length : CARD16;
        majorVersion : CARD8;
        minorVersion : CARD8;
        pad : CARD16;
      end;
    xSyncInitializeReq = _xSyncInitialize;

  const
    sz_xSyncInitializeReq = 8;    

  type
    xSyncInitializeReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        majorVersion : CARD8;
        minorVersion : CARD8;
        pad : CARD16;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;

  const
    sz_xSyncInitializeReply = 32;    


  type
    _xSyncListSystemCounters = record
        reqType : CARD8;
        syncReqType : CARD8;
        length : CARD16;
      end;
    xSyncListSystemCountersReq = _xSyncListSystemCounters;

  const
    sz_xSyncListSystemCountersReq = 4;    

  type
    xSyncListSystemCountersReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        nCounters : INT32;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;

  const
    sz_xSyncListSystemCountersReply = 32;    

  type
    xSyncSystemCounter = record
        counter : XSyncCounter;
        resolution_hi : INT32;
        resolution_lo : CARD32;
        name_length : CARD16;
      end;

  const
    sz_xSyncSystemCounter = 14;    


  type
    _xSyncCreateCounterReq = record
        reqType : CARD8;
        syncReqType : CARD8;
        length : CARD16;
        cid : XSyncCounter;
        initial_value_hi : INT32;
        initial_value_lo : CARD32;
      end;
    xSyncCreateCounterReq = _xSyncCreateCounterReq;

  const
    sz_xSyncCreateCounterReq = 16;    


  type
    _xSyncChangeCounterReq = record
        reqType : CARD8;
        syncReqType : CARD8;
        length : CARD16;
        cid : XSyncCounter;
        value_hi : INT32;
        value_lo : CARD32;
      end;
    xSyncChangeCounterReq = _xSyncChangeCounterReq;

  const
    sz_xSyncChangeCounterReq = 16;    


  type
    _xSyncSetCounterReq = record
        reqType : CARD8;
        syncReqType : CARD8;
        length : CARD16;
        cid : XSyncCounter;
        value_hi : INT32;
        value_lo : CARD32;
      end;
    xSyncSetCounterReq = _xSyncSetCounterReq;

  const
    sz_xSyncSetCounterReq = 16;    


  type
    _xSyncDestroyCounterReq = record
        reqType : CARD8;
        syncReqType : CARD8;
        length : CARD16;
        counter : XSyncCounter;
      end;
    xSyncDestroyCounterReq = _xSyncDestroyCounterReq;

  const
    sz_xSyncDestroyCounterReq = 8;    


  type
    _xSyncQueryCounterReq = record
        reqType : CARD8;
        syncReqType : CARD8;
        length : CARD16;
        counter : XSyncCounter;
      end;
    xSyncQueryCounterReq = _xSyncQueryCounterReq;

  const
    sz_xSyncQueryCounterReq = 8;    

  type
    xSyncQueryCounterReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        value_hi : INT32;
        value_lo : CARD32;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
      end;

  const
    sz_xSyncQueryCounterReply = 32;    


  type
    _xSyncAwaitReq = record
        reqType : CARD8;
        syncReqType : CARD8;
        length : CARD16;
      end;
    xSyncAwaitReq = _xSyncAwaitReq;

  const
    sz_xSyncAwaitReq = 4;    

  type
    _xSyncWaitCondition = record
        counter : XSyncCounter;
        value_type : CARD32;
        wait_value_hi : INT32;
        wait_value_lo : CARD32;
        test_type : CARD32;
        event_threshold_hi : INT32;
        event_threshold_lo : CARD32;
      end;
    xSyncWaitCondition = _xSyncWaitCondition;

  const
    sz_xSyncWaitCondition = 28;    


  type
    _xSyncCreateAlarmReq = record
        reqType : CARD8;
        syncReqType : CARD8;
        length : CARD16;
        id : XSyncAlarm;
        valueMask : CARD32;
      end;
    xSyncCreateAlarmReq = _xSyncCreateAlarmReq;

  const
    sz_xSyncCreateAlarmReq = 12;    


  type
    _xSyncDestroyAlarmReq = record
        reqType : CARD8;
        syncReqType : CARD8;
        length : CARD16;
        alarm : XSyncAlarm;
      end;
    xSyncDestroyAlarmReq = _xSyncDestroyAlarmReq;

  const
    sz_xSyncDestroyAlarmReq = 8;    


  type
    _xSyncQueryAlarmReq = record
        reqType : CARD8;
        syncReqType : CARD8;
        length : CARD16;
        alarm : XSyncAlarm;
      end;
    xSyncQueryAlarmReq = _xSyncQueryAlarmReq;

  const
    sz_xSyncQueryAlarmReq = 8;    

  type
    xSyncQueryAlarmReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        counter : XSyncCounter;
        value_type : CARD32;
        wait_value_hi : INT32;
        wait_value_lo : CARD32;
        test_type : CARD32;
        delta_hi : INT32;
        delta_lo : CARD32;
        events : BOOL;
        state : BYTE;
        pad0 : BYTE;
        pad1 : BYTE;
      end;

  const
    sz_xSyncQueryAlarmReply = 40;    


  type
    _xSyncChangeAlarmReq = record
        reqType : CARD8;
        syncReqType : CARD8;
        length : CARD16;
        alarm : XSyncAlarm;
        valueMask : CARD32;
      end;
    xSyncChangeAlarmReq = _xSyncChangeAlarmReq;

  const
    sz_xSyncChangeAlarmReq = 12;    


  type
    _xSyncSetPriority = record
        reqType : CARD8;
        syncReqType : CARD8;
        length : CARD16;
        id : CARD32;
        priority : INT32;
      end;
    xSyncSetPriorityReq = _xSyncSetPriority;

  const
    sz_xSyncSetPriorityReq = 12;    



  type
    _xSyncGetPriority = record
        reqType : CARD8;
        syncReqType : CARD8;
        length : CARD16;
        id : CARD32;
      end;
    xSyncGetPriorityReq = _xSyncGetPriority;

  const
    sz_xSyncGetPriorityReq = 8;    

  type
    xSyncGetPriorityReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        priority : INT32;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;

  const
    sz_xSyncGetPriorityReply = 32;    


  type
    _xSyncCreateFenceReq = record
        reqType : CARD8;
        syncReqType : CARD8;
        length : CARD16;
        d : Drawable;
        fid : XSyncFence;
        initially_triggered : BOOL;
        pad0 : CARD8;
        pad1 : CARD16;
      end;
    xSyncCreateFenceReq = _xSyncCreateFenceReq;

  const
    sz_xSyncCreateFenceReq = 16;    


  type
    _xSyncTriggerFenceReq = record
        reqType : CARD8;
        syncReqType : CARD8;
        length : CARD16;
        fid : XSyncFence;
      end;
    xSyncTriggerFenceReq = _xSyncTriggerFenceReq;

  const
    sz_xSyncTriggerFenceReq = 8;    


  type
    _xSyncResetFenceReq = record
        reqType : CARD8;
        syncReqType : CARD8;
        length : CARD16;
        fid : XSyncFence;
      end;
    xSyncResetFenceReq = _xSyncResetFenceReq;

  const
    sz_xSyncResetFenceReq = 8;    


  type
    _xSyncDestroyFenceReq = record
        reqType : CARD8;
        syncReqType : CARD8;
        length : CARD16;
        fid : XSyncFence;
      end;
    xSyncDestroyFenceReq = _xSyncDestroyFenceReq;

  const
    sz_xSyncDestroyFenceReq = 8;    


  type
    _xSyncQueryFenceReq = record
        reqType : CARD8;
        syncReqType : CARD8;
        length : CARD16;
        fid : XSyncFence;
      end;
    xSyncQueryFenceReq = _xSyncQueryFenceReq;

  const
    sz_xSyncQueryFenceReq = 8;    


  type
    _xSyncAwaitFenceReq = record
        reqType : CARD8;
        syncReqType : CARD8;
        length : CARD16;
      end;
    xSyncAwaitFenceReq = _xSyncAwaitFenceReq;

  const
    sz_xSyncAwaitFenceReq = 4;    

  type
    xSyncQueryFenceReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        triggered : BOOL;
        pad0 : BYTE;
        pad1 : CARD16;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xSyncQueryFenceReply = 32;    


  type
    _xSyncCounterNotifyEvent = record
        _type : BYTE;
        kind : BYTE;
        sequenceNumber : CARD16;
        counter : XSyncCounter;
        wait_value_hi : INT32;
        wait_value_lo : CARD32;
        counter_value_hi : INT32;
        counter_value_lo : CARD32;
        time : CARD32;
        count : CARD16;
        destroyed : BOOL;
        pad0 : BYTE;
      end;
    xSyncCounterNotifyEvent = _xSyncCounterNotifyEvent;

    _xSyncAlarmNotifyEvent = record
        _type : BYTE;
        kind : BYTE;
        sequenceNumber : CARD16;
        alarm : XSyncAlarm;
        counter_value_hi : INT32;
        counter_value_lo : CARD32;
        alarm_value_hi : INT32;
        alarm_value_lo : CARD32;
        time : CARD32;
        state : CARD8;
        pad0 : BYTE;
        pad1 : BYTE;
        pad2 : BYTE;
      end;
    xSyncAlarmNotifyEvent = _xSyncAlarmNotifyEvent;
{$undef XSyncCounter}
{$undef XSyncAlarm}
{$undef XSyncFence}
{$undef Drawable}
{$endif}


implementation


end.
