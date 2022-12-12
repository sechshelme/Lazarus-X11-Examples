
unit SelectionI;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/SelectionI.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/SelectionI.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/SelectionI.pp
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
    PAtom  = ^Atom;
    PBoolean  = ^Boolean;
    PCallBackInfo  = ^CallBackInfo;
    PCallBackInfoRec  = ^CallBackInfoRec;
    Pchar  = ^char;
    PDisplay  = ^Display;
    PIndirectPair  = ^IndirectPair;
    PParam  = ^Param;
    PParamInfo  = ^ParamInfo;
    PParamInfoRec  = ^ParamInfoRec;
    PParamRec  = ^ParamRec;
    PPropList  = ^PropList;
    PPropListRec  = ^PropListRec;
    PQueuedRequest  = ^QueuedRequest;
    PQueuedRequestInfo  = ^QueuedRequestInfo;
    PQueuedRequestInfoRec  = ^QueuedRequestInfoRec;
    PQueuedRequestRec  = ^QueuedRequestRec;
    PRequest  = ^Request;
    PRequestRec  = ^RequestRec;
    PRequestWindowRec  = ^RequestWindowRec;
    PSelect  = ^Select;
    PSelectionProp  = ^SelectionProp;
    PSelectionPropRec  = ^SelectionPropRec;
    PSelectRec  = ^SelectRec;
    PXtPointer  = ^XtPointer;
    PXtSelectionCallbackProc  = ^XtSelectionCallbackProc;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XtselectionI_h}
{$define _XtselectionI_h}
{$include "Intrinsic.h"}
type
  PRequest = ^TRequest;
  TRequest = PRequestRec;

  PSelect = ^TSelect;
  TSelect = PSelectRec;




  PRequestRec = ^TRequestRec;
  TRequestRec = record
      ctx : TSelect;
      widget : TWidget;
      requestor : TWindow;
      _property : TAtom;
      target : TAtom;
      _type : TAtom;
      format : longint;
      value : TXtPointer;
      bytelength : dword;
      offset : dword;
      timeout : TXtIntervalId;
      event : TXSelectionRequestEvent;
      allSent : TBoolean;
    end;

  PSelectionPropRec = ^TSelectionPropRec;
  TSelectionPropRec = record
      prop : TAtom;
      avail : TBoolean;
    end;
  TSelectionProp = PSelectionPropRec;
  PSelectionProp = ^TSelectionProp;

  PPropListRec = ^TPropListRec;
  TPropListRec = record
      dpy : PDisplay;
      incr_atom : TAtom;
      indirect_atom : TAtom;
      timestamp_atom : TAtom;
      propCount : longint;
      list : TSelectionProp;
    end;
  TPropList = PPropListRec;
  PPropList = ^TPropList;





  PSelectRec = ^TSelectRec;
  TSelectRec = record
      selection : TAtom;
      dpy : PDisplay;
      widget : TWidget;
      time : TTime;
      serial : dword;
      convert : TXtConvertSelectionProc;
      loses : TXtLoseSelectionProc;
      notify : TXtSelectionDoneProc;
      owner_cancel : TXtCancelConvertSelectionProc;
      owner_closure : TXtPointer;
      prop_list : TPropList;
      req : TRequest;
      ref_count : longint;
      flag0 : word;
    end;

const
  bm__SelectRec_incremental = $1;
  bp__SelectRec_incremental = 0;
  bm__SelectRec_free_when_done = $2;
  bp__SelectRec_free_when_done = 1;
  bm__SelectRec_was_disowned = $4;
  bp__SelectRec_was_disowned = 2;

function incremental(var a : _SelectRec) : dword;
procedure set_incremental(var a : _SelectRec; __incremental : dword);
function free_when_done(var a : _SelectRec) : dword;
procedure set_free_when_done(var a : _SelectRec; __free_when_done : dword);
function was_disowned(var a : _SelectRec) : dword;
procedure set_was_disowned(var a : _SelectRec; __was_disowned : dword);
type
  PParamRec = ^TParamRec;
  TParamRec = record
      selection : TAtom;
      param : TAtom;
    end;
  TParam = PParamRec;
  PParam = ^TParam;

  PParamInfoRec = ^TParamInfoRec;
  TParamInfoRec = record
      count : dword;
      paramlist : TParam;
    end;
  TParamInfo = PParamInfoRec;
  PParamInfo = ^TParamInfo;

  PQueuedRequestRec = ^TQueuedRequestRec;
  TQueuedRequestRec = record
      selection : TAtom;
      target : TAtom;
      param : TAtom;
      callback : TXtSelectionCallbackProc;
      closure : TXtPointer;
      time : TTime;
      incremental : TBoolean;
    end;
  TQueuedRequest = PQueuedRequestRec;
  PQueuedRequest = ^TQueuedRequest;

  PQueuedRequestInfoRec = ^TQueuedRequestInfoRec;
  TQueuedRequestInfoRec = record
      count : longint;
      selections : PAtom;
      requests : PQueuedRequest;
    end;
  TQueuedRequestInfo = PQueuedRequestInfoRec;
  PQueuedRequestInfo = ^TQueuedRequestInfo;

  PCallBackInfoRec = ^TCallBackInfoRec;
  TCallBackInfoRec = record
      callbacks : PXtSelectionCallbackProc;
      req_closure : PXtPointer;
      _property : TAtom;
      target : PAtom;
      _type : TAtom;
      format : longint;
      value : Pchar;
      bytelength : longint;
      offset : longint;
      timeout : TXtIntervalId;
      proc : TXtEventHandler;
      widget : TWidget;
      time : TTime;
      ctx : TSelect;
      incremental : PBoolean;
      current : longint;
    end;
  TCallBackInfo = PCallBackInfoRec;
  PCallBackInfo = ^TCallBackInfo;

  PIndirectPair = ^TIndirectPair;
  TIndirectPair = record
      target : TAtom;
      _property : TAtom;
    end;

const
  IndirectPairWordSize = 2;  
type
  PRequestWindowRec = ^TRequestWindowRec;
  TRequestWindowRec = record
      active_transfer_count : longint;
    end;

function MAX_SELECTION_INCR(dpy : longint) : longint;

(* error 
	    (event->target == *info->target))
in define line 165 *)
{$endif}



implementation

function incremental(var a : _SelectRec) : dword;
begin
  incremental:=(a.flag0 and bm__SelectRec_incremental) shr bp__SelectRec_incremental;
end;

procedure set_incremental(var a : _SelectRec; __incremental : dword);
begin
  a.flag0:=a.flag0 or ((__incremental shl bp__SelectRec_incremental) and bm__SelectRec_incremental);
end;

function free_when_done(var a : _SelectRec) : dword;
begin
  free_when_done:=(a.flag0 and bm__SelectRec_free_when_done) shr bp__SelectRec_free_when_done;
end;

procedure set_free_when_done(var a : _SelectRec; __free_when_done : dword);
begin
  a.flag0:=a.flag0 or ((__free_when_done shl bp__SelectRec_free_when_done) and bm__SelectRec_free_when_done);
end;

function was_disowned(var a : _SelectRec) : dword;
begin
  was_disowned:=(a.flag0 and bm__SelectRec_was_disowned) shr bp__SelectRec_was_disowned;
end;

procedure set_was_disowned(var a : _SelectRec; __was_disowned : dword);
begin
  a.flag0:=a.flag0 or ((__was_disowned shl bp__SelectRec_was_disowned) and bm__SelectRec_was_disowned);
end;

function MAX_SELECTION_INCR(dpy : longint) : longint;
var
   if_local1 : longint;
(* result types are not known *)
begin
  if 65536<(XMaxRequestSize(dpy)) then
    if_local1:=65536 shl 2
  else
    if_local1:=(XMaxRequestSize(dpy)) shl 2;
  MAX_SELECTION_INCR:=(if_local1)-100;
end;


end.
