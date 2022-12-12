
unit sync;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/sync.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/sync.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/sync.pp
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
    PDisplay  = ^Display;
    Plongint  = ^longint;
    PXSyncAlarmAttributes  = ^XSyncAlarmAttributes;
    PXSyncAlarmError  = ^XSyncAlarmError;
    PXSyncAlarmNotifyEvent  = ^XSyncAlarmNotifyEvent;
    PXSyncCounterError  = ^XSyncCounterError;
    PXSyncCounterNotifyEvent  = ^XSyncCounterNotifyEvent;
    PXSyncFence  = ^XSyncFence;
    PXSyncSystemCounter  = ^XSyncSystemCounter;
    PXSyncTrigger  = ^XSyncTrigger;
    PXSyncValue  = ^XSyncValue;
    PXSyncWaitCondition  = ^XSyncWaitCondition;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _SYNC_H_}
{$define _SYNC_H_}
{$include <X11/Xfuncproto.h>}
{$include <X11/extensions/syncconst.h>}
{$ifdef _SYNC_SERVER}
{$include <X11/extensions/syncproto.h>}
{$else}

{$undef XSyncIntToValue}
{$undef XSyncIntsToValue}
{$undef XSyncValueGreaterThan}
{$undef XSyncValueLessThan}
{$undef XSyncValueGreaterOrEqual}
{$undef XSyncValueLessOrEqual}
{$undef XSyncValueEqual}
{$undef XSyncValueIsNegative}
{$undef XSyncValueIsZero}
{$undef XSyncValueIsPositive}
{$undef XSyncValueLow32}
{$undef XSyncValueHigh32}
{$undef XSyncValueAdd}
{$undef XSyncValueSubtract}
{$undef XSyncMaxValue}
{$undef XSyncMinValue}
(* error 
extern void XSyncIntToValue(

in declaration at line 83 *)


procedure XSyncIntsToValue(para1:PXSyncValue; para2:dword; para3:longint);cdecl;external;

function XSyncValueGreaterThan(para1:TXSyncValue; para2:TXSyncValue):TBool;cdecl;external;

function XSyncValueLessThan(para1:TXSyncValue; para2:TXSyncValue):TBool;cdecl;external;

function XSyncValueGreaterOrEqual(para1:TXSyncValue; para2:TXSyncValue):TBool;cdecl;external;

function XSyncValueLessOrEqual(para1:TXSyncValue; para2:TXSyncValue):TBool;cdecl;external;

function XSyncValueEqual(para1:TXSyncValue; para2:TXSyncValue):TBool;cdecl;external;

function XSyncValueIsNegative(para1:TXSyncValue):TBool;cdecl;external;

function XSyncValueIsZero(para1:TXSyncValue):TBool;cdecl;external;

function XSyncValueIsPositive(para1:TXSyncValue):TBool;cdecl;external;

function XSyncValueLow32(para1:TXSyncValue):dword;cdecl;external;

function XSyncValueHigh32(para1:TXSyncValue):longint;cdecl;external;

procedure XSyncValueAdd(para1:PXSyncValue; para2:TXSyncValue; para3:TXSyncValue; para4:Plongint);cdecl;external;

procedure XSyncValueSubtract(para1:PXSyncValue; para2:TXSyncValue; para3:TXSyncValue; para4:Plongint);cdecl;external;

procedure XSyncMaxValue(para1:PXSyncValue);cdecl;external;

procedure XSyncMinValue(para1:PXSyncValue);cdecl;external;
(* error 
typedef struct _XSyncSystemCounter {
in declaration at line 162 *)

      var
        counter : TXSyncCounter;cvar;public;

        resolution : TXSyncValue;cvar;public;

(* error 
} XSyncSystemCounter;
in declaration at line 165 *)




    type
      PXSyncTrigger = ^TXSyncTrigger;
      TXSyncTrigger = record
          counter : TXSyncCounter;
          value_type : TXSyncValueType;
          wait_value : TXSyncValue;
          test_type : TXSyncTestType;
        end;



      PXSyncWaitCondition = ^TXSyncWaitCondition;
      TXSyncWaitCondition = record
          trigger : TXSyncTrigger;
          event_threshold : TXSyncValue;
        end;

      PXSyncAlarmAttributes = ^TXSyncAlarmAttributes;
      TXSyncAlarmAttributes = record
          trigger : TXSyncTrigger;
          delta : TXSyncValue;
          events : TBool;
          state : TXSyncAlarmState;
        end;












      PXSyncCounterNotifyEvent = ^TXSyncCounterNotifyEvent;
      TXSyncCounterNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : TBool;
          display : PDisplay;
          counter : TXSyncCounter;
          wait_value : TXSyncValue;
          counter_value : TXSyncValue;
          time : TTime;
          count : longint;
          destroyed : TBool;
        end;










      PXSyncAlarmNotifyEvent = ^TXSyncAlarmNotifyEvent;
      TXSyncAlarmNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : TBool;
          display : PDisplay;
          alarm : TXSyncAlarm;
          counter_value : TXSyncValue;
          alarm_value : TXSyncValue;
          time : TTime;
          state : TXSyncAlarmState;
        end;








      PXSyncAlarmError = ^TXSyncAlarmError;
      TXSyncAlarmError = record
          _type : longint;
          display : PDisplay;
          alarm : TXSyncAlarm;
          serial : dword;
          error_code : byte;
          request_code : byte;
          minor_code : byte;
        end;







      PXSyncCounterError = ^TXSyncCounterError;
      TXSyncCounterError = record
          _type : longint;
          display : PDisplay;
          counter : TXSyncCounter;
          serial : dword;
          error_code : byte;
          request_code : byte;
          minor_code : byte;
        end;

(* error 
extern Status XSyncQueryExtension(

in declaration at line 251 *)


function XSyncInitialize(para1:PDisplay; para2:Plongint; para3:Plongint):TStatus;cdecl;external;

function XSyncListSystemCounters(para1:PDisplay; para2:Plongint):PXSyncSystemCounter;cdecl;external;

procedure XSyncFreeSystemCounterList(para1:PXSyncSystemCounter);cdecl;external;

function XSyncCreateCounter(para1:PDisplay; para2:TXSyncValue):TXSyncCounter;cdecl;external;

function XSyncSetCounter(para1:PDisplay; para2:TXSyncCounter; para3:TXSyncValue):TStatus;cdecl;external;

function XSyncChangeCounter(para1:PDisplay; para2:TXSyncCounter; para3:TXSyncValue):TStatus;cdecl;external;

function XSyncDestroyCounter(para1:PDisplay; para2:TXSyncCounter):TStatus;cdecl;external;

function XSyncQueryCounter(para1:PDisplay; para2:TXSyncCounter; para3:PXSyncValue):TStatus;cdecl;external;

function XSyncAwait(para1:PDisplay; para2:PXSyncWaitCondition; para3:longint):TStatus;cdecl;external;

function XSyncCreateAlarm(para1:PDisplay; para2:dword; para3:PXSyncAlarmAttributes):TXSyncAlarm;cdecl;external;

function XSyncDestroyAlarm(para1:PDisplay; para2:TXSyncAlarm):TStatus;cdecl;external;

function XSyncQueryAlarm(para1:PDisplay; para2:TXSyncAlarm; para3:PXSyncAlarmAttributes):TStatus;cdecl;external;

function XSyncChangeAlarm(para1:PDisplay; para2:TXSyncAlarm; para3:dword; para4:PXSyncAlarmAttributes):TStatus;cdecl;external;

function XSyncSetPriority(para1:PDisplay; para2:TXID; para3:longint):TStatus;cdecl;external;

function XSyncGetPriority(para1:PDisplay; para2:TXID; para3:Plongint):TStatus;cdecl;external;

function XSyncCreateFence(para1:PDisplay; para2:TDrawable; para3:TBool):TXSyncFence;cdecl;external;

function XSyncTriggerFence(para1:PDisplay; para2:TXSyncFence):TBool;cdecl;external;

function XSyncResetFence(para1:PDisplay; para2:TXSyncFence):TBool;cdecl;external;

function XSyncDestroyFence(para1:PDisplay; para2:TXSyncFence):TBool;cdecl;external;

function XSyncQueryFence(para1:PDisplay; para2:TXSyncFence; para3:PBool):TBool;cdecl;external;

function XSyncAwaitFence(para1:PDisplay; para2:PXSyncFence; para3:longint):TBool;cdecl;external;
{$endif}

{$endif}

(* error 
#endif /* _SYNC_H_ */

implementation


end.
