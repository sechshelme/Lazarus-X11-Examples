unit XmTransfer;

interface

uses
  unixtype,
  x, xlib,
  XTIntrinsic;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <Xm/DragC.h>}

type
  TXmConvertCallbackProc = TXtCallbackProc;
  TXmSelectionDoneProc = TXtSelectionDoneProc;
  TXmCancelSelectionProc = TXtCancelConvertSelectionProc;
  TXmDestinationCallbackProc = TXtCallbackProc;
  TXmSelectionCallbackProc = TXtSelectionCallbackProc;

{ Flags  }
type
  PXmTransferStatus = ^TXmTransferStatus;
  TXmTransferStatus =  Longint;
  Const
    XmTRANSFER_DONE_SUCCEED = 0;
    XmTRANSFER_DONE_FAIL = 1;
    XmTRANSFER_DONE_CONTINUE = 2;
    XmTRANSFER_DONE_DEFAULT = 3;

  Const
    XmSELECTION_DEFAULT = 0;
    XmSELECTION_INCREMENTAL = 1;
    XmSELECTION_PERSIST = 2;
    XmSELECTION_SNAPSHOT = 3;
    XmSELECTION_TRANSACT = 4;

  Const
    XmCONVERTING_NONE = 0;
    XmCONVERTING_SAME = 1;
    XmCONVERTING_TRANSACT = 2;
    XmCONVERTING_PARTIAL = 4;

  Const
    XmCONVERT_DEFAULT = 0;
    XmCONVERT_MORE = 1;
    XmCONVERT_MERGE = 2;
    XmCONVERT_REFUSE = 3;
    XmCONVERT_DONE = 4;

{ Callback structures  }
type
  PXmConvertCallbackStruct = ^TXmConvertCallbackStruct;
  TXmConvertCallbackStruct = record
      reason : longint;
      event : PXEvent;
      selection : TAtom;
      target : TAtom;
      source_data : TXtPointer;
      location_data : TXtPointer;
      flags : longint;
      parm : TXtPointer;
      parm_format : longint;
      parm_length : culong;
      parm_type : TAtom;
      status : longint;
      value : TXtPointer;
      _type : TAtom;
      format : longint;
      length : culong;
    end;

  PXmDestinationCallbackStruct = ^TXmDestinationCallbackStruct;
  TXmDestinationCallbackStruct = record
      reason : longint;
      event : PXEvent;
      selection : TAtom;
      operation : TXtEnum;
      flags : longint;
      transfer_id : TXtPointer;
      destination_data : TXtPointer;
      location_data : TXtPointer;
      time : TTime;
    end;

  PXmSelectionCallbackStruct = ^TXmSelectionCallbackStruct;
  TXmSelectionCallbackStruct = record
      reason : longint;
      event : PXEvent;
      selection : TAtom;
      target : TAtom;
      _type : TAtom;
      transfer_id : TXtPointer;
      flags : longint;
      remaining : longint;
      value : TXtPointer;
      length : culong;
      format : longint;
    end;

  PXmTransferDoneCallbackStruct = ^TXmTransferDoneCallbackStruct;
  TXmTransferDoneCallbackStruct = record
      reason : longint;
      event : PXEvent;
      selection : TAtom;
      transfer_id : TXtPointer;
      status : TXmTransferStatus;
      client_data : TXtPointer;
    end;

  TXmSelectionFinishedProc = procedure (para1:TWidget; para2:TXtEnum; para3:PXmTransferDoneCallbackStruct);cdecl;

procedure XmTransferDone(para1:TXtPointer; para2:TXmTransferStatus);cdecl;external libXm;
procedure XmTransferValue(para1:TXtPointer; para2:TAtom; para3:TXtCallbackProc; para4:TXtPointer; para5:TTime);cdecl;external libXm;
procedure XmTransferSetParameters(para1:TXtPointer; para2:TXtPointer; para3:longint; para4:dword; para5:TAtom);cdecl;external libXm;
procedure XmTransferStartRequest(para1:TXtPointer);cdecl;external libXm;
procedure XmTransferSendRequest(para1:TXtPointer; para2:TTime);cdecl;external libXm;

implementation

end.
