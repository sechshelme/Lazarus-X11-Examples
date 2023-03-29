unit Xmxmlist;

interface

uses
  XTIntrinsic;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

//{$include <Xm/Xm.h>}
//{$include <Xm/Ext.h>}

{***********************************************************
 *
 * Stack Data structure.  
 *
 *********************************************************** }

type
  PXmStackRec = ^TXmStackRec;
  TXmStackRec = record
      top : longint;
      alloc : longint;
      elems : PXtPointer;
    end;
  TXmStack = PXmStackRec;
  PXmStack = ^TXmStack;
{***********************************************************
 *
 *  Global function defs.
 *
 *********************************************************** }

function _XmStackInit:TXmStack;cdecl;external libXm;
procedure _XmStackFree(para1:TXmStack);cdecl;external libXm;
function _XmStackPop(para1:TXmStack):TXtPointer;cdecl;external libXm;
{***********************************************************
 *
 * Queue Data structure.  
 *
 *********************************************************** }

 type
  P_XmQElem = ^T_XmQElem;
  T_XmQElem = record
      next : P_XmQElem;
      prev : P_XmQElem;
      data : TXtPointer;
      alloced : TBoolean;
    end;

  TXmQElem = T_XmQElem;
  PXmQElem = ^TXmQElem;
  PPXmQElem = ^PXmQElem;

  PXmQueueRec = ^TXmQueueRec;
  TXmQueueRec = record
      first : PXmQElem;
      last : PXmQElem;
      free_elems : PXmQElem;
    end;

  TXmQueue = PXmQueueRec;
  PXmQueue = ^TXmQueue;
{***********************************************************
 *
 *  Global function defs.
 *
 *********************************************************** }

function _XmQueueInit:TXmQueue;cdecl;external libXm;
procedure _XmQueueFree(para1:TXmQueue);cdecl;external libXm;
function _XmQueuePop(para1:TXmQueue):TXtPointer;cdecl;external libXm;
function _XmQueueCount(para1:TXmQueue):longint;cdecl;external libXm;
{ 
 * Internal functions used only by other parts of the utils library.
  }
procedure _Xm_AddQueue(para1:TXmQueue; para2:PXmQElem; para3:PXmQElem);cdecl;external libXm;
function _Xm_RemQueue(para1:PPXmQElem):PXmQElem;cdecl;external libXm;
function _Xm_GetNewElement(para1:TXmQueue):PXmQElem;cdecl;external libXm;
{***********************************************************
 *
 * New types.
 *
 *********************************************************** }
type
  PXmListElem = ^TXmListElem;
  TXmListElem = TXmQElem;

  PXmList = ^TXmList;
  TXmList = PXmQueueRec;

  TXmListFunc = function (para1:PXmListElem; para2:TXtPointer):TBoolean;cdecl;
{***********************************************************
 *
 * Macros.
 *
 *********************************************************** }

function XmListElemNext(elem : PXmQElem) : PXmQElem;
function XmListElemPrev(elem : PXmQElem) : PXmQElem;
function XmListElemData(elem : PXmQElem) : PXmQElem;
function XmListFirst(list : PXmQueueRec) : PXmQElem;
function XmListLast(list : PXmQueueRec) : PXmQElem;

{***********************************************************
 *
 *  Global function defs.
 *
 *********************************************************** }
procedure _XmListFree(para1:TXmList);cdecl;external libXm;
function _XmListAddAfter(para1:TXmList; para2:PXmListElem; para3:TXtPointer):PXmListElem;cdecl;external libXm;
function _XmListAddBefore(para1:TXmList; para2:PXmListElem; para3:TXtPointer):PXmListElem;cdecl;external libXm;
function _XmListInit:TXmList;cdecl;external libXm;
function _XmListCount(para1:TXmList):longint;cdecl;external libXm;
function _XmListExec(para1:TXmList; para2:PXmListElem; para3:PXmListElem; para4:TXmListFunc; para5:TXtPointer):PXmListElem;cdecl;external libXm;

implementation

function XmListElemNext(elem: PXmQElem): PXmQElem;
begin
  XmListElemNext:=elem^.next;
end;

function XmListElemPrev(elem: PXmQElem): PXmQElem;
begin
  XmListElemPrev:=elem^.prev;
end;

function XmListElemData(elem: PXmQElem): PXmQElem;
begin
  XmListElemData:=elem^.data;
end;

function XmListFirst(list: PXmQueueRec): PXmQElem;
begin
  XmListFirst:=list^.first;
end;

function XmListLast(list: PXmQueueRec): PXmQElem;
begin
  XmListLast:=list^.last;
end;


end.
