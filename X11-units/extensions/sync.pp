
unit sync;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/sync.h
  The following command line parameters were used:
    /usr/include/X11/extensions/sync.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/sync.pp
}

    Type
    PBool  = ^Bool;
    PDisplay  = ^Display;
    Plongint  = ^longint;
    PXSyncAlarmAttributes  = ^XSyncAlarmAttributes;
    PXSyncFence  = ^XSyncFence;
    PXSyncSystemCounter  = ^XSyncSystemCounter;
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


    procedure XSyncIntsToValue(_para1:PXSyncValue; _para2:dword; _para3:longint);cdecl;


    function XSyncValueGreaterThan(_para1:XSyncValue; _para2:XSyncValue):Bool;cdecl;


    function XSyncValueLessThan(_para1:XSyncValue; _para2:XSyncValue):Bool;cdecl;


    function XSyncValueGreaterOrEqual(_para1:XSyncValue; _para2:XSyncValue):Bool;cdecl;


    function XSyncValueLessOrEqual(_para1:XSyncValue; _para2:XSyncValue):Bool;cdecl;


    function XSyncValueEqual(_para1:XSyncValue; _para2:XSyncValue):Bool;cdecl;


    function XSyncValueIsNegative(_para1:XSyncValue):Bool;cdecl;


    function XSyncValueIsZero(_para1:XSyncValue):Bool;cdecl;


    function XSyncValueIsPositive(_para1:XSyncValue):Bool;cdecl;


    function XSyncValueLow32(_para1:XSyncValue):dword;cdecl;


    function XSyncValueHigh32(_para1:XSyncValue):longint;cdecl;


    procedure XSyncValueAdd(_para1:PXSyncValue; _para2:XSyncValue; _para3:XSyncValue; _para4:Plongint);cdecl;


    procedure XSyncValueSubtract(_para1:PXSyncValue; _para2:XSyncValue; _para3:XSyncValue; _para4:Plongint);cdecl;


    procedure XSyncMaxValue(_para1:PXSyncValue);cdecl;


    procedure XSyncMinValue(_para1:PXSyncValue);cdecl;

(* error 
typedef struct _XSyncSystemCounter {
in declaration at line 162 *)


      var
        counter : XSyncCounter;cvar;public;

        resolution : XSyncValue;cvar;public;

(* error 
} XSyncSystemCounter;
in declaration at line 165 *)





    type
      XSyncTrigger = record
          counter : XSyncCounter;
          value_type : XSyncValueType;
          wait_value : XSyncValue;
          test_type : XSyncTestType;
        end;



      XSyncWaitCondition = record
          trigger : XSyncTrigger;
          event_threshold : XSyncValue;
        end;

      XSyncAlarmAttributes = record
          trigger : XSyncTrigger;
          delta : XSyncValue;
          events : Bool;
          state : XSyncAlarmState;
        end;












      XSyncCounterNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : Bool;
          display : ^Display;
          counter : XSyncCounter;
          wait_value : XSyncValue;
          counter_value : XSyncValue;
          time : Time;
          count : longint;
          destroyed : Bool;
        end;










      XSyncAlarmNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : Bool;
          display : ^Display;
          alarm : XSyncAlarm;
          counter_value : XSyncValue;
          alarm_value : XSyncValue;
          time : Time;
          state : XSyncAlarmState;
        end;








      XSyncAlarmError = record
          _type : longint;
          display : ^Display;
          alarm : XSyncAlarm;
          serial : dword;
          error_code : byte;
          request_code : byte;
          minor_code : byte;
        end;







      XSyncCounterError = record
          _type : longint;
          display : ^Display;
          counter : XSyncCounter;
          serial : dword;
          error_code : byte;
          request_code : byte;
          minor_code : byte;
        end;

(* error 
extern Status XSyncQueryExtension(

in declaration at line 251 *)


    function XSyncInitialize(_para1:PDisplay; _para2:Plongint; _para3:Plongint):Status;cdecl;


    function XSyncListSystemCounters(_para1:PDisplay; _para2:Plongint):^XSyncSystemCounter;cdecl;


    procedure XSyncFreeSystemCounterList(_para1:PXSyncSystemCounter);cdecl;


    function XSyncCreateCounter(_para1:PDisplay; _para2:XSyncValue):XSyncCounter;cdecl;


    function XSyncSetCounter(_para1:PDisplay; _para2:XSyncCounter; _para3:XSyncValue):Status;cdecl;


    function XSyncChangeCounter(_para1:PDisplay; _para2:XSyncCounter; _para3:XSyncValue):Status;cdecl;


    function XSyncDestroyCounter(_para1:PDisplay; _para2:XSyncCounter):Status;cdecl;


    function XSyncQueryCounter(_para1:PDisplay; _para2:XSyncCounter; _para3:PXSyncValue):Status;cdecl;


    function XSyncAwait(_para1:PDisplay; _para2:PXSyncWaitCondition; _para3:longint):Status;cdecl;


    function XSyncCreateAlarm(_para1:PDisplay; _para2:dword; _para3:PXSyncAlarmAttributes):XSyncAlarm;cdecl;


    function XSyncDestroyAlarm(_para1:PDisplay; _para2:XSyncAlarm):Status;cdecl;


    function XSyncQueryAlarm(_para1:PDisplay; _para2:XSyncAlarm; _para3:PXSyncAlarmAttributes):Status;cdecl;


    function XSyncChangeAlarm(_para1:PDisplay; _para2:XSyncAlarm; _para3:dword; _para4:PXSyncAlarmAttributes):Status;cdecl;


    function XSyncSetPriority(_para1:PDisplay; _para2:XID; _para3:longint):Status;cdecl;


    function XSyncGetPriority(_para1:PDisplay; _para2:XID; _para3:Plongint):Status;cdecl;


    function XSyncCreateFence(_para1:PDisplay; _para2:Drawable; _para3:Bool):XSyncFence;cdecl;


    function XSyncTriggerFence(_para1:PDisplay; _para2:XSyncFence):Bool;cdecl;


    function XSyncResetFence(_para1:PDisplay; _para2:XSyncFence):Bool;cdecl;


    function XSyncDestroyFence(_para1:PDisplay; _para2:XSyncFence):Bool;cdecl;


    function XSyncQueryFence(_para1:PDisplay; _para2:XSyncFence; _para3:PBool):Bool;cdecl;


    function XSyncAwaitFence(_para1:PDisplay; _para2:PXSyncFence; _para3:longint):Bool;cdecl;

{$endif}

{$endif}

(* error 
#endif /* _SYNC_H_ */

implementation


end.
