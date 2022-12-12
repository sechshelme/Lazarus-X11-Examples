
unit syncstr;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/syncstr.h
  The following command line parameters were used:
    /usr/include/X11/extensions/syncstr.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/syncstr.pp
}

  Type
  P_SyncTrigger  = ^_SyncTrigger;
  PCARD64  = ^CARD64;
  Pchar  = ^char;
  PSyncCounter  = ^SyncCounter;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _SYNCSTR_H_}
{$define _SYNCSTR_H_}  
{$include <X11/extensions/syncproto.h>}
{$ifdef _SYNC_SERVER}


  const
    CARD64 = XSyncValue;    







  type
    _SyncCounter = record
        client : ClientPtr;
        id : XSyncCounter;
        value : CARD64;
        pTriglist : ^_SyncTriggerList;
        beingDestroyed : Bool;
        pSysCounterInfo : ^_SysCounterInfo;
      end;
    SyncCounter = _SyncCounter;


    SyncCounterType = (XSyncCounterNeverChanges,XSyncCounterNeverIncreases,
      XSyncCounterNeverDecreases,XSyncCounterUnrestricted
      );




    _SysCounterInfo = record
        name : ^char;
        resolution : CARD64;
        bracket_greater : CARD64;
        bracket_less : CARD64;
        counterType : SyncCounterType;
        QueryValue : procedure (_para1:pointer; _para2:PCARD64);cdecl;
        BracketValues : procedure (_para1:pointer; _para2:PCARD64; _para3:PCARD64);cdecl;
      end;
    SysCounterInfo = _SysCounterInfo;








    _SyncTrigger = record
        pCounter : ^SyncCounter;
        wait_value : CARD64;
        value_type : dword;
        test_type : dword;
        test_value : CARD64;
        CheckTrigger : function (_para1:P_SyncTrigger; _para2:CARD64):Bool;cdecl;
        TriggerFired : procedure (_para1:P_SyncTrigger);cdecl;
        CounterDestroyed : procedure (_para1:P_SyncTrigger);cdecl;
      end;
    SyncTrigger = _SyncTrigger;

    _SyncTriggerList = record
        pTrigger : ^SyncTrigger;
        next : ^_SyncTriggerList;
      end;
    SyncTriggerList = _SyncTriggerList;

    _SyncAlarmClientList = record
        client : ClientPtr;
        delete_id : XID;
        next : ^_SyncAlarmClientList;
      end;
    SyncAlarmClientList = _SyncAlarmClientList;

    _SyncAlarm = record
        trigger : SyncTrigger;
        client : ClientPtr;
        alarm_id : XSyncAlarm;
        delta : CARD64;
        events : longint;
        state : longint;
        pEventClients : ^SyncAlarmClientList;
      end;
    SyncAlarm = _SyncAlarm;

    SyncAwaitHeader = record
        client : ClientPtr;
        delete_id : CARD32;
        num_waitconditions : longint;
      end;

    SyncAwait = record
        trigger : SyncTrigger;
        event_threshold : CARD64;
        pHeader : ^SyncAwaitHeader;
      end;

    SyncAwaitUnion = record
        case longint of
          0 : ( header : SyncAwaitHeader );
          1 : ( await : SyncAwait );
        end;


  function SyncCreateSystemCounter(_para1:Pchar; _para2:CARD64; _para3:CARD64; _para4:SyncCounterType; _para5:procedure (_para1:pointer; _para2:PCARD64); 
             _para6:procedure (_para1:pointer; _para2:PCARD64; _para3:PCARD64)):pointer;cdecl;


  procedure SyncChangeCounter(_para1:PSyncCounter; _para2:CARD64);cdecl;

  procedure SyncDestroySystemCounter(pCounter:pointer);cdecl;

  procedure InitServertime;cdecl;

{$endif}

{$endif}


implementation


end.
