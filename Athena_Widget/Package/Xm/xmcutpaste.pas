unit xmCutPaste;

interface

uses
  x, xlib,
  XTIntrinsic,
  XmXm;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <Xm/Xm.h>}

type
  PXmClipboardStatus = ^TXmClipboardStatus;
  TXmClipboardStatus = longint;

const
  XmClipboardFail = 0;
  XmClipboardSuccess = 1;
  XmClipboardTruncate = 2;
  XmClipboardLocked = 4;
  XmClipboardBadFormat = 5;
  XmClipboardNoData = 6;

  { XmClipboard pre-1.2 definitions  }
  ClipboardFail = 0;
  ClipboardSuccess = 1;
  ClipboardTruncate = 2;
  ClipboardLocked = 4;
  ClipboardBadFormat = 5;
  ClipboardNoData = 6;

type
  PXmClipboardPendingRec = ^TXmClipboardPendingRec;

  TXmClipboardPendingRec = record
    DataId: longint;
    PrivateId: longint;
  end;

  TXmClipboardPendingList = PXmClipboardPendingRec;
  PXmClipboardPendingList = ^TXmClipboardPendingList;

  TXmCutPasteProc = procedure(w: TWidget; data_id: Plongint; private_id: Plongint; reason: Plongint); cdecl;

  TVoidProc = procedure(w: TWidget; data_id: Plongint; private_id: Plongint; reason: Plongint); cdecl;

{*******    Public Function Declarations    ******* }

function XmClipboardBeginCopy(display: PDisplay; window: TWindow; _label: TXmString; widget: TWidget; callback: TVoidProc; itemid: Plongint): longint; cdecl; external libXm;
function XmClipboardStartCopy(display: PDisplay; window: TWindow; _label: TXmString; timestamp: TTime; widget: TWidget; callback: TXmCutPasteProc; itemid: Plongint): longint; cdecl; external libXm;
function XmClipboardCopy(display: PDisplay; window: TWindow; itemid: longint; format: PChar; buffer: TXtPointer; length: dword; private_id: longint; dataid: Plongint): longint; cdecl; external libXm;
function XmClipboardEndCopy(display: PDisplay; window: TWindow; itemid: longint): longint; cdecl; external libXm;
function XmClipboardCancelCopy(display: PDisplay; window: TWindow; itemid: longint): longint; cdecl; external libXm;
function XmClipboardWithdrawFormat(display: PDisplay; window: TWindow; Data: longint): longint; cdecl; external libXm;
function XmClipboardCopyByName(display: PDisplay; window: TWindow; Data: longint; buffer: TXtPointer; length: dword; private_id: longint): longint; cdecl; external libXm;
function XmClipboardUndoCopy(display: PDisplay; window: TWindow): longint; cdecl; external libXm;
function XmClipboardLock(display: PDisplay; window: TWindow): longint; cdecl; external libXm;
{#if NeedWidePrototypes }
{                        int all_levels) ; }
{#else }
function XmClipboardUnlock(display: PDisplay; window: TWindow; all_levels: TBoolean): longint; cdecl; external libXm;
{#endif /* NeedWidePrototypes */ }
function XmClipboardStartRetrieve(display: PDisplay; window: TWindow; timestamp: TTime): longint; cdecl; external libXm;
function XmClipboardEndRetrieve(display: PDisplay; window: TWindow): longint; cdecl; external libXm;
function XmClipboardRetrieve(display: PDisplay; window: TWindow; format: PChar; buffer: TXtPointer; length: dword; outlength: Pdword; private_id: Plongint): longint; cdecl; external libXm;
function XmClipboardInquireCount(display: PDisplay; window: TWindow; Count: Plongint; maxlength: Pdword): longint; cdecl; external libXm;
function XmClipboardInquireFormat(display: PDisplay; window: TWindow; n: longint; buffer: TXtPointer; bufferlength: dword; outlength: Pdword): longint; cdecl; external libXm;
function XmClipboardInquireLength(display: PDisplay; window: TWindow; format: PChar; length: Pdword): longint; cdecl; external libXm;
function XmClipboardInquirePendingItems(display: PDisplay; window: TWindow; format: PChar; list: PXmClipboardPendingList; Count: Pdword): longint; cdecl; external libXm;
function XmClipboardRegisterFormat(display: PDisplay; format_name: PChar; format_length: longint): longint; cdecl; external libXm;
{*******    End Public Function Declarations    ******* }

implementation

end.
