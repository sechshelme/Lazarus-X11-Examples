unit XmDragC;

interface

uses
  xlib, x,
  XTIntrinsic,
  XmXm,
  XmText;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

//{$include <Xm/Xm.h>}
//{$include <Xm/Display.h>}

const
  XmHELP = 2;  
{
 * Some global stuff that will go into Xm.h
  }
type
  PXmID = ^TXmID;
  TXmID = dword;
{**********************************************************************
 *
 * DragContext
 *
 ********************************************************************** }

function XmIsDragContext(w : TWidget) : TBoolean;

const
  _XA_MOTIF_DROP = '_MOTIF_DROP';
  _XA_DRAG_FAILURE = '_MOTIF_DRAG_FAILURE';
  _XA_DRAG_SUCCESS = '_MOTIF_DRAG_SUCCESS';

{ enums used for the message_type in client messages  }

const
  XmTOP_LEVEL_ENTER = 0;
  XmTOP_LEVEL_LEAVE = 1;
  XmDRAG_MOTION = 2;
  XmDROP_SITE_ENTER = 3;
  XmDROP_SITE_LEAVE = 4;
  XmDROP_START = 5;
  XmDROP_FINISH = 6;
  XmDRAG_DROP_FINISH = 7;
  XmOPERATION_CHANGED = 8;
{ enums for completionStatus  }
const
  XmDROP = 0;
  XmDROP_HELP = 1;
  XmDROP_CANCEL = 2;
  XmDROP_INTERRUPT = 3;

  { values for operation  }
  XmDROP_NOOP = 0;
  XmDROP_MOVE = 1 shl 0;
  XmDROP_COPY = 1 shl 1;
  XmDROP_LINK = 1 shl 2;

const
  XmMOVE = XmDROP_MOVE;
  XmCOPY = XmDROP_COPY;
  XmLINK = XmDROP_LINK;
  XmOTHER = (XmDROP_LINK) + 1;

const
  XmBLEND_ALL = 0;
  XmBLEND_STATE_SOURCE = 1;
  XmBLEND_JUST_SOURCE = 2;
  XmBLEND_NONE = 3;

const
  XmDROP_FAILURE = 0;
  XmDROP_SUCCESS = 1;

{ enums used for the public callback reason  }
const
  XmCR_TOP_LEVEL_ENTER = 0;
  XmCR_TOP_LEVEL_LEAVE = 1;
  XmCR_DRAG_MOTION = 2;
  XmCR_DROP_SITE_ENTER = 3;
  XmCR_DROP_SITE_LEAVE = 4;
  XmCR_DROP_START = 5;
  XmCR_DROP_FINISH = 6;
  XmCR_DRAG_DROP_FINISH = 7;
  XmCR_OPERATION_CHANGED = 8;
  _XmNUMBER_DND_CB_REASONS = 9;

{ Class record constants  }
//type
//  PXmDragContextClass = ^TXmDragContextClass;
//  TXmDragContextClass = PXmDragContextClassRec;
//
//  PXmDragContext = ^TXmDragContext;
//  TXmDragContext = PXmDragContextRec;
  var
    xmDragContextClass : TWidgetClass;cvar;external libXm;
type
  PXmAnyICCCallbackStruct = ^TXmAnyICCCallbackStruct;
  TXmAnyICCCallbackStruct = record
      reason : longint;
      event : PXEvent;
      timeStamp : TTime;
    end;
  TXmAnyICCCallback = PXmAnyICCCallbackStruct;
  PXmAnyICCCallback = ^TXmAnyICCCallback;

  PXmTopLevelEnterCallbackStruct = ^TXmTopLevelEnterCallbackStruct;
  TXmTopLevelEnterCallbackStruct = record
      reason : longint;
      event : PXEvent;
      timeStamp : TTime;
      screen : PScreen;
      window : TWindow;
      x : TPosition;
      y : TPosition;
      dragProtocolStyle : byte;
      iccHandle : TAtom;
    end;
  TXmTopLevelEnterCallback = PXmTopLevelEnterCallbackStruct;
  PXmTopLevelEnterCallback = ^TXmTopLevelEnterCallback;

  PXmTopLevelLeaveCallbackStruct = ^TXmTopLevelLeaveCallbackStruct;
  TXmTopLevelLeaveCallbackStruct = record
      reason : longint;
      event : PXEvent;
      timeStamp : TTime;
      screen : PScreen;
      window : TWindow;
    end;
  TXmTopLevelLeaveCallback = PXmTopLevelLeaveCallbackStruct;
  PXmTopLevelLeaveCallback = ^TXmTopLevelLeaveCallback;
{ 
 * this message is sent from the receiver to the initiator to
 * indicate that the motion message with the associated timestamp has
 * caused a drop-site to be entered
  }

  PXmDropSiteEnterCallbackStruct = ^TXmDropSiteEnterCallbackStruct;
  TXmDropSiteEnterCallbackStruct = record
      reason : longint;
      event : PXEvent;
      timeStamp : TTime;
      operation : byte;
      operations : byte;
      dropSiteStatus : byte;
      x : TPosition;
      y : TPosition;
    end;
  TXmDropSiteEnterCallback = PXmDropSiteEnterCallbackStruct;
  PXmDropSiteEnterCallback = ^TXmDropSiteEnterCallback;
{ 
 * this message is sent from the receiver to the initiator to
 * indicate that the motion message with the associated timestamp has
 * caused a drop-site to be left
  }

  PXmDropSiteLeaveCallbackStruct = ^TXmDropSiteLeaveCallbackStruct;
  TXmDropSiteLeaveCallbackStruct = record
      reason : longint;
      event : PXEvent;
      timeStamp : TTime;
    end;
  TXmDropSiteLeaveCallback = PXmDropSiteLeaveCallbackStruct;
  PXmDropSiteLeaveCallback = ^TXmDropSiteLeaveCallback;

  PXmDragMotionCallbackStruct = ^TXmDragMotionCallbackStruct;
  TXmDragMotionCallbackStruct = record
      reason : longint;
      event : PXEvent;
      timeStamp : TTime;
      operation : byte;
      operations : byte;
      dropSiteStatus : byte;
      x : TPosition;
      y : TPosition;
    end;
  TXmDragMotionCallback = PXmDragMotionCallbackStruct;
  PXmDragMotionCallback = ^TXmDragMotionCallback;

  PXmOperationChangedCallbackStruct = ^TXmOperationChangedCallbackStruct;
  TXmOperationChangedCallbackStruct = record
      reason : longint;
      event : PXEvent;
      timeStamp : TTime;
      operation : byte;
      operations : byte;
      dropSiteStatus : byte;
    end;
  TXmOperationChangedCallback = PXmOperationChangedCallbackStruct;
  PXmOperationChangedCallback = ^TXmOperationChangedCallback;

  PXmDropStartCallbackStruct = ^TXmDropStartCallbackStruct;
  TXmDropStartCallbackStruct = record
      reason : longint;
      event : PXEvent;
      timeStamp : TTime;
      operation : byte;
      operations : byte;
      dropSiteStatus : byte;
      dropAction : byte;
      x : TPosition;
      y : TPosition;
      window : TWindow;
      iccHandle : TAtom;
    end;
  TXmDropStartCallback = PXmDropStartCallbackStruct;
  PXmDropStartCallback = ^TXmDropStartCallback;

  PXmDropFinishCallbackStruct = ^TXmDropFinishCallbackStruct;
  TXmDropFinishCallbackStruct = record
      reason : longint;
      event : PXEvent;
      timeStamp : TTime;
      operation : byte;
      operations : byte;
      dropSiteStatus : byte;
      dropAction : byte;
      completionStatus : byte;
    end;
  TXmDropFinishCallback = PXmDropFinishCallbackStruct;
  PXmDropFinishCallback = ^TXmDropFinishCallback;

  PXmDragDropFinishCallbackStruct = ^TXmDragDropFinishCallbackStruct;
  TXmDragDropFinishCallbackStruct = record
      reason : longint;
      event : PXEvent;
      timeStamp : TTime;
    end;

  TXmDragDropFinishCallback = PXmDragDropFinishCallbackStruct;
  PXmDragDropFinishCallback = ^TXmDragDropFinishCallback;
{*******    Public Function Declarations    ******* }

function XmDragStart(w:TWidget; event:PXEvent; args:TArgList; numArgs:TCardinal):TWidget;cdecl;external libXm;
procedure XmDragCancel(dragContext:TWidget);cdecl;external libXm;
function XmTargetsAreCompatible(dpy:PDisplay; exportTargets:PAtom; numExportTargets:TCardinal; importTargets:PAtom; numImportTargets:TCardinal):TBoolean;cdecl;external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsDragContext(w: TWidget): TBoolean;
begin
  XmIsDragContext:=XtIsSubclass(w,xmDragContextClass);
end;

end.
