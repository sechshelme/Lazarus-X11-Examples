
unit SelectionI;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/SelectionI.h
  The following command line parameters were used:
    /usr/include/X11/SelectionI.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/SelectionI.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XtselectionI_h}
{$define _XtselectionI_h}  
{$include "Intrinsic.h"}

  type
    Request = ^_RequestRec;

    Select = ^_SelectRec;




    _RequestRec = record
        ctx : Select;
        widget : Widget;
        requestor : Window;
        _property : Atom;
        target : Atom;
        _type : Atom;
        format : longint;
        value : XtPointer;
        bytelength : dword;
        offset : dword;
        timeout : XtIntervalId;
        event : XSelectionRequestEvent;
        allSent : Boolean;
      end;
    RequestRec = _RequestRec;

    SelectionPropRec = record
        prop : Atom;
        avail : Boolean;
      end;
    SelectionProp = ^SelectionPropRec;

    PropListRec = record
        dpy : ^Display;
        incr_atom : Atom;
        indirect_atom : Atom;
        timestamp_atom : Atom;
        propCount : longint;
        list : SelectionProp;
      end;
    PropList = ^PropListRec;





    _SelectRec = record
        selection : Atom;
        dpy : ^Display;
        widget : Widget;
        time : Time;
        serial : dword;
        convert : XtConvertSelectionProc;
        loses : XtLoseSelectionProc;
        notify : XtSelectionDoneProc;
        owner_cancel : XtCancelConvertSelectionProc;
        owner_closure : XtPointer;
        prop_list : PropList;
        req : Request;
        ref_count : longint;
        flag0 : word;
      end;
    SelectRec = _SelectRec;

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
    _ParamRec = record
        selection : Atom;
        param : Atom;
      end;
    ParamRec = _ParamRec;
    Param = ^_ParamRec;

    _ParamInfoRec = record
        count : dword;
        paramlist : Param;
      end;
    ParamInfoRec = _ParamInfoRec;
    ParamInfo = ^_ParamInfoRec;

    _QueuedRequestRec = record
        selection : Atom;
        target : Atom;
        param : Atom;
        callback : XtSelectionCallbackProc;
        closure : XtPointer;
        time : Time;
        incremental : Boolean;
      end;
    QueuedRequestRec = _QueuedRequestRec;
    QueuedRequest = ^_QueuedRequestRec;

    _QueuedRequestInfoRec = record
        count : longint;
        selections : ^Atom;
        requests : ^QueuedRequest;
      end;
    QueuedRequestInfoRec = _QueuedRequestInfoRec;
    QueuedRequestInfo = ^_QueuedRequestInfoRec;

    CallBackInfoRec = record
        callbacks : ^XtSelectionCallbackProc;
        req_closure : ^XtPointer;
        _property : Atom;
        target : ^Atom;
        _type : Atom;
        format : longint;
        value : ^char;
        bytelength : longint;
        offset : longint;
        timeout : XtIntervalId;
        proc : XtEventHandler;
        widget : Widget;
        time : Time;
        ctx : Select;
        incremental : ^Boolean;
        current : longint;
      end;
    CallBackInfo = ^CallBackInfoRec;

    IndirectPair = record
        target : Atom;
        _property : Atom;
      end;

  const
    IndirectPairWordSize = 2;    

  type
    RequestWindowRec = record
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
