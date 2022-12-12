
unit syncstr;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/syncstr.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/syncstr.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/syncstr.pp
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
PCARD64  = ^CARD64;
Pchar  = ^char;
PSyncAlarm  = ^SyncAlarm;
PSyncAlarmClientList  = ^SyncAlarmClientList;
PSyncAwait  = ^SyncAwait;
PSyncAwaitHeader  = ^SyncAwaitHeader;
PSyncAwaitUnion  = ^SyncAwaitUnion;
PSyncCounter  = ^SyncCounter;
PSyncCounterType  = ^SyncCounterType;
PSyncTrigger  = ^SyncTrigger;
PSyncTriggerList  = ^SyncTriggerList;
PSysCounterInfo  = ^SysCounterInfo;
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
  PSyncCounter = ^TSyncCounter;
  TSyncCounter = record
      client : TClientPtr;
      id : TXSyncCounter;
      value : TCARD64;
      pTriglist : PSyncTriggerList;
      beingDestroyed : TBool;
      pSysCounterInfo : PSysCounterInfo;
    end;


  PSyncCounterType = ^TSyncCounterType;
  TSyncCounterType = (XSyncCounterNeverChanges,XSyncCounterNeverIncreases,
    XSyncCounterNeverDecreases,XSyncCounterUnrestricted
    );




  PSysCounterInfo = ^TSysCounterInfo;
  TSysCounterInfo = record
      name : Pchar;
      resolution : TCARD64;
      bracket_greater : TCARD64;
      bracket_less : TCARD64;
      counterType : TSyncCounterType;
      QueryValue : procedure (para1:Tpointer; para2:PCARD64);cdecl;
      BracketValues : procedure (para1:Tpointer; para2:PCARD64; para3:PCARD64);cdecl;
    end;








  PSyncTrigger = ^TSyncTrigger;
  TSyncTrigger = record
      pCounter : PSyncCounter;
      wait_value : TCARD64;
      value_type : dword;
      test_type : dword;
      test_value : TCARD64;
      CheckTrigger : function (para1:PSyncTrigger; para2:TCARD64):TBool;cdecl;
      TriggerFired : procedure (para1:PSyncTrigger);cdecl;
      CounterDestroyed : procedure (para1:PSyncTrigger);cdecl;
    end;

  PSyncTriggerList = ^TSyncTriggerList;
  TSyncTriggerList = record
      pTrigger : PSyncTrigger;
      next : PSyncTriggerList;
    end;

  PSyncAlarmClientList = ^TSyncAlarmClientList;
  TSyncAlarmClientList = record
      client : TClientPtr;
      delete_id : TXID;
      next : PSyncAlarmClientList;
    end;

  PSyncAlarm = ^TSyncAlarm;
  TSyncAlarm = record
      trigger : TSyncTrigger;
      client : TClientPtr;
      alarm_id : TXSyncAlarm;
      delta : TCARD64;
      events : longint;
      state : longint;
      pEventClients : PSyncAlarmClientList;
    end;

  PSyncAwaitHeader = ^TSyncAwaitHeader;
  TSyncAwaitHeader = record
      client : TClientPtr;
      delete_id : TCARD32;
      num_waitconditions : longint;
    end;

  PSyncAwait = ^TSyncAwait;
  TSyncAwait = record
      trigger : TSyncTrigger;
      event_threshold : TCARD64;
      pHeader : PSyncAwaitHeader;
    end;

  PSyncAwaitUnion = ^TSyncAwaitUnion;
  TSyncAwaitUnion = record
      case longint of
        0 : ( header : TSyncAwaitHeader );
        1 : ( await : TSyncAwait );
      end;


function SyncCreateSystemCounter(para1:Pchar; para2:TCARD64; para3:TCARD64; para4:TSyncCounterType; para5:procedure (para1:Tpointer; para2:PCARD64); 
           para6:procedure (para1:Tpointer; para2:PCARD64; para3:PCARD64)):Tpointer;cdecl;external;

procedure SyncChangeCounter(para1:PSyncCounter; para2:TCARD64);cdecl;external;
procedure SyncDestroySystemCounter(pCounter:Tpointer);cdecl;external;
procedure InitServertime;cdecl;external;
{$endif}

{$endif}


implementation


end.
