
unit DisplayQue;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xmu/DisplayQue.h
  The following command line parameters were used:
    /usr/include/X11/Xmu/DisplayQue.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xmu/DisplayQue.pp
}

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
    _XmuDisplayQueue = XmuDisplayQueue;
    _XmuDisplayQueueEntry = XmuDisplayQueueEntry;

    XmuCloseDisplayQueueProc = function (queue:PXmuDisplayQueue; entry:PXmuDisplayQueueEntry):longint;cdecl;

    XmuFreeDisplayQueueProc = function (queue:PXmuDisplayQueue):longint;cdecl;
    _XmuDisplayQueueEntry = record
        prev : ^_XmuDisplayQueueEntry;cdecl;
        next : ^_XmuDisplayQueueEntry;
        display : ^Display;
        closehook : CloseHook;
        data : XPointer;
      end;

    _XmuDisplayQueue = record
        nentries : longint;
        head : ^XmuDisplayQueueEntry;
        tail : ^XmuDisplayQueueEntry;
        closefunc : XmuCloseDisplayQueueProc;
        freefunc : XmuFreeDisplayQueueProc;
        data : XPointer;
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

  function XmuDQDestroy(q:PXmuDisplayQueue; docallbacks:Bool):Bool;

  function XmuDQLookupDisplay(q:PXmuDisplayQueue; dpy:PDisplay):^XmuDisplayQueueEntry;

  function XmuDQAddDisplay(q:PXmuDisplayQueue; dpy:PDisplay; data:XPointer):^XmuDisplayQueueEntry;

  function XmuDQRemoveDisplay(q:PXmuDisplayQueue; dpy:PDisplay):Bool;

(* error 
#define XmuDQNDisplays(q) ((q)->nentries)
in define line 150 *)
{$endif}


implementation

  function XmuDQDestroy(q:PXmuDisplayQueue; docallbacks:Bool):Bool;
  begin
    { You must implement this function }
  end;
  function XmuDQLookupDisplay(q:PXmuDisplayQueue; dpy:PDisplay):PXmuDisplayQueueEntry;
  begin
    { You must implement this function }
  end;
  function XmuDQAddDisplay(q:PXmuDisplayQueue; dpy:PDisplay; data:XPointer):PXmuDisplayQueueEntry;
  begin
    { You must implement this function }
  end;
  function XmuDQRemoveDisplay(q:PXmuDisplayQueue; dpy:PDisplay):Bool;
  begin
    { You must implement this function }
  end;

end.
