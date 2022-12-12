
unit DisplayQue;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/DisplayQue.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/DisplayQue.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/DisplayQue.pp
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
    PDisplay  = ^Display;
    PXmuDisplayQueue  = ^XmuDisplayQueue;
    PXmuDisplayQueueEntry  = ^XmuDisplayQueueEntry;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XMU_DISPLAYQUE_H_}
{$define _XMU_DISPLAYQUE_H_}
{$include <X11/Xmu/CloseHook.h>}
{$include <X11/Xfuncproto.h>}

type

  TXmuCloseDisplayQueueProc = function (queue:PXmuDisplayQueue; entry:PXmuDisplayQueueEntry):longint;cdecl;

  TXmuFreeDisplayQueueProc = function (queue:PXmuDisplayQueue):longint;cdecl;
  PXmuDisplayQueueEntry = ^TXmuDisplayQueueEntry;
  TXmuDisplayQueueEntry = record
      prev : PXmuDisplayQueueEntry;cdecl;
      next : PXmuDisplayQueueEntry;
      display : PDisplay;
      closehook : TCloseHook;
      data : TXPointer;
    end;

  PXmuDisplayQueue = ^TXmuDisplayQueue;
  TXmuDisplayQueue = record
      nentries : longint;
      head : PXmuDisplayQueueEntry;
      tail : PXmuDisplayQueueEntry;
      closefunc : TXmuCloseDisplayQueueProc;
      freefunc : TXmuFreeDisplayQueueProc;
      data : TXPointer;
    end;

(* error 
XmuDisplayQueue *XmuDQCreate
(* error 
 XmuFreeDisplayQueueProc	freefunc,
(* error 
 XPointer			data
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

function XmuDQDestroy(q:PXmuDisplayQueue; docallbacks:TBool):TBool;cdecl;external;
function XmuDQLookupDisplay(q:PXmuDisplayQueue; dpy:PDisplay):PXmuDisplayQueueEntry;cdecl;external;
function XmuDQAddDisplay(q:PXmuDisplayQueue; dpy:PDisplay; data:TXPointer):PXmuDisplayQueueEntry;cdecl;external;
function XmuDQRemoveDisplay(q:PXmuDisplayQueue; dpy:PDisplay):TBool;cdecl;external;
(* error 
#define XmuDQNDisplays(q) ((q)->nentries)
in define line 150 *)
{$endif}


implementation


end.
