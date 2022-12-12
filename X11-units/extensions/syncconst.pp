
unit syncconst;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/syncconst.h
  The following command line parameters were used:
    /usr/include/X11/extensions/syncconst.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/syncconst.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _SYNCCONST_H_}
{$define _SYNCCONST_H_}  

  const
    SYNC_NAME = 'SYNC';    
    SYNC_MAJOR_VERSION = 3;    
    SYNC_MINOR_VERSION = 1;    
    XSyncCounterNotify = 0;    
    XSyncAlarmNotify = 1;    
    XSyncAlarmNotifyMask = 1 shl XSyncAlarmNotify;    
    XSyncNumberEvents = 2;    
    XSyncBadCounter = 0;    
    XSyncBadAlarm = 1;    
    XSyncBadFence = 2;    
    XSyncNumberErrors = XSyncBadFence+1;    

    XSyncCACounter = 1 shl 0;    
    XSyncCAValueType = 1 shl 1;    
    XSyncCAValue = 1 shl 2;    
    XSyncCATestType = 1 shl 3;    
    XSyncCADelta = 1 shl 4;    
    XSyncCAEvents = 1 shl 5;    

(* error 
#define _XSyncIntToValue(pv, i)     ((pv)->hi=((i<0)?~0:0),(pv)->lo=(i))
in define line 86 *)
(* error 
#define _XSyncIntsToValue(pv, l, h) ((pv)->lo = (l), (pv)->hi = (h))
in define line 87 *)
(* error 
    ((a).hi>(b).hi || ((a).hi==(b).hi && (a).lo>(b).lo))
in define line 89 *)
(* error 
    ((a).hi<(b).hi || ((a).hi==(b).hi && (a).lo<(b).lo))
in define line 91 *)
(* error 
    ((a).hi>(b).hi || ((a).hi==(b).hi && (a).lo>=(b).lo))
in define line 93 *)
(* error 
    ((a).hi<(b).hi || ((a).hi==(b).hi && (a).lo<=(b).lo))
in define line 95 *)

    function _XSyncValueEqual(a,b : longint) : longint;    

  function _XSyncValueIsNegative(v : longint) : longint;  

  function _XSyncValueIsZero(a : longint) : longint;  

  function _XSyncValueIsPositive(v : longint) : longint;  

  function _XSyncValueLow32(v : longint) : longint;  

  function _XSyncValueHigh32(v : longint) : longint;  

(* error 
#define _XSyncValueAdd(presult,a,b,poverflow) {\
in declaration at line 103 *)
(* error 
	int t = (a).lo;\
(* error 
	Bool signa = XSyncValueIsNegative(a);\
in declaration at line 104 *)
(* error 
	Bool signa = XSyncValueIsNegative(a);\
(* error 
	Bool signb = XSyncValueIsNegative(b);\
in declaration at line 105 *)
(* error 
	Bool signb = XSyncValueIsNegative(b);\
(* error 
	((presult)->lo = (a).lo + (b).lo);\
in declaration at line 106 *)
(* error 
	((presult)->lo = (a).lo + (b).lo);\
(* error 
	((presult)->hi = (a).hi + (b).hi);\
in declaration at line 107 *)
(* error 
	((presult)->hi = (a).hi + (b).hi);\
(* error 
	if (t>(presult)->lo) (presult)->hi++;\
in declaration at line 108 *)
(* error 
	if (t>(presult)->lo) (presult)->hi++;\
(* error 
	*poverflow = ((signa == signb) && !(signa == XSyncValueIsNegative(*presult)));\
in declaration at line 109 *)
(* error 
	*poverflow = ((signa == signb) && !(signa == XSyncValueIsNegative(*presult)));\
(* error 
     }
in declaration at line 112 *)
(* error 
	int t = (a).lo;\
(* error 
	Bool signa = XSyncValueIsNegative(a);\
in declaration at line 113 *)
(* error 
	Bool signa = XSyncValueIsNegative(a);\
(* error 
	Bool signb = XSyncValueIsNegative(b);\
in declaration at line 114 *)
(* error 
	Bool signb = XSyncValueIsNegative(b);\
(* error 
	((presult)->lo = (a).lo - (b).lo);\
in declaration at line 115 *)
(* error 
	((presult)->lo = (a).lo - (b).lo);\
(* error 
	((presult)->hi = (a).hi - (b).hi);\
in declaration at line 116 *)
(* error 
	((presult)->hi = (a).hi - (b).hi);\
(* error 
	if (t<(presult)->lo) (presult)->hi--;\
in declaration at line 117 *)
(* error 
	if (t<(presult)->lo) (presult)->hi--;\
(* error 
	*poverflow = ((signa == signb) && !(signa == XSyncValueIsNegative(*presult)));\
in declaration at line 118 *)
(* error 
	*poverflow = ((signa == signb) && !(signa == XSyncValueIsNegative(*presult)));\
(* error 
     }
in define line 120 *)
(* error 
#define _XSyncMinValue(pv) ((pv)->hi = 0x80000000, (pv)->lo = 0)
in define line 121 *)

    function XSyncIntToValue(pv,i : longint) : longint;    

  function XSyncIntsToValue(pv,l,h : longint) : longint;  

function XSyncValueGreaterThan(a,b : longint) : longint;

function XSyncValueLessThan(a,b : longint) : longint;

function XSyncValueGreaterOrEqual(a,b : longint) : longint;

function XSyncValueLessOrEqual(a,b : longint) : longint;

function XSyncValueEqual(a,b : longint) : longint;

function XSyncValueIsNegative(v : longint) : longint;

function XSyncValueIsZero(a : longint) : longint;

function XSyncValueIsPositive(v : longint) : longint;

function XSyncValueLow32(v : longint) : longint;

function XSyncValueHigh32(v : longint) : longint;

function XSyncValueAdd(presult,a,b,poverflow : longint) : longint;

function XSyncValueSubtract(presult,a,b,poverflow : longint) : longint;

function XSyncMaxValue(pv : longint) : longint;

function XSyncMinValue(pv : longint) : longint;



type
  XSyncValueType = (XSyncAbsolute,XSyncRelative);


  XSyncTestType = (XSyncPositiveTransition,XSyncNegativeTransition,
    XSyncPositiveComparison,XSyncNegativeComparison
    );


  XSyncAlarmState = (XSyncAlarmActive,XSyncAlarmInactive,XSyncAlarmDestroyed
    );

  XSyncCounter = XID;

  XSyncAlarm = XID;

  XSyncFence = XID;

  _XSyncValue = record
      hi : longint;
      lo : dword;
    end;
  XSyncValue = _XSyncValue;
{$endif}


implementation

    function _XSyncValueEqual(a,b : longint) : longint;
    begin
      _XSyncValueEqual:=((a.lo)=((b.lo) and (@(a.hi))))=(b.hi);
    end;

  function _XSyncValueIsNegative(v : longint) : longint;
  var
     if_local1 : longint;
  (* result types are not known *)
  begin
    if (v.hi) and $80000000 then
      if_local1:=1
    else
      if_local1:=0;
    _XSyncValueIsNegative:=if_local1;
  end;

  function _XSyncValueIsZero(a : longint) : longint;
  begin
    _XSyncValueIsZero:=((a.lo)=(0 and (@(a.hi))))=0;
  end;

  function _XSyncValueIsPositive(v : longint) : longint;
  var
     if_local1 : longint;
  (* result types are not known *)
  begin
    if (v.hi) and $80000000 then
      if_local1:=0
    else
      if_local1:=1;
    _XSyncValueIsPositive:=if_local1;
  end;

  function _XSyncValueLow32(v : longint) : longint;
  begin
    _XSyncValueLow32:=v.lo;
  end;

  function _XSyncValueHigh32(v : longint) : longint;
  begin
    _XSyncValueHigh32:=v.hi;
  end;

    function XSyncIntToValue(pv,i : longint) : longint;
    begin
      XSyncIntToValue:=_XSyncIntToValue(pv,i);
    end;

  function XSyncIntsToValue(pv,l,h : longint) : longint;
  begin
    XSyncIntsToValue:=_XSyncIntsToValue(pv,l,h);
  end;

function XSyncValueGreaterThan(a,b : longint) : longint;
begin
  XSyncValueGreaterThan:=_XSyncValueGreaterThan(a,b);
end;

function XSyncValueLessThan(a,b : longint) : longint;
begin
  XSyncValueLessThan:=_XSyncValueLessThan(a,b);
end;

function XSyncValueGreaterOrEqual(a,b : longint) : longint;
begin
  XSyncValueGreaterOrEqual:=_XSyncValueGreaterOrEqual(a,b);
end;

function XSyncValueLessOrEqual(a,b : longint) : longint;
begin
  XSyncValueLessOrEqual:=_XSyncValueLessOrEqual(a,b);
end;

function XSyncValueEqual(a,b : longint) : longint;
begin
  XSyncValueEqual:=_XSyncValueEqual(a,b);
end;

function XSyncValueIsNegative(v : longint) : longint;
begin
  XSyncValueIsNegative:=_XSyncValueIsNegative(v);
end;

function XSyncValueIsZero(a : longint) : longint;
begin
  XSyncValueIsZero:=_XSyncValueIsZero(a);
end;

function XSyncValueIsPositive(v : longint) : longint;
begin
  XSyncValueIsPositive:=_XSyncValueIsPositive(v);
end;

function XSyncValueLow32(v : longint) : longint;
begin
  XSyncValueLow32:=_XSyncValueLow32(v);
end;

function XSyncValueHigh32(v : longint) : longint;
begin
  XSyncValueHigh32:=_XSyncValueHigh32(v);
end;

function XSyncValueAdd(presult,a,b,poverflow : longint) : longint;
begin
  XSyncValueAdd:=_XSyncValueAdd(presult,a,b,poverflow);
end;

function XSyncValueSubtract(presult,a,b,poverflow : longint) : longint;
begin
  XSyncValueSubtract:=_XSyncValueSubtract(presult,a,b,poverflow);
end;

function XSyncMaxValue(pv : longint) : longint;
begin
  XSyncMaxValue:=_XSyncMaxValue(pv);
end;

function XSyncMinValue(pv : longint) : longint;
begin
  XSyncMinValue:=_XSyncMinValue(pv);
end;


end.
