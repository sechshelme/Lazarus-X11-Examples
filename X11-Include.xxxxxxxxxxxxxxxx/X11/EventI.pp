
unit EventI;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/EventI.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/EventI.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/EventI.pp
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
    PBlockHook  = ^BlockHook;
    PBlockHookRec  = ^BlockHookRec;
    Plongint  = ^longint;
    PWidget  = ^Widget;
    PXEvent  = ^XEvent;
    PXtEventRec  = ^XtEventRec;
    PXtEventTable  = ^XtEventTable;
    PXtGrabList  = ^XtGrabList;
    PXtGrabRec  = ^XtGrabRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _Event_h_}
{$define _Event_h_}
type
  PXtGrabList = ^TXtGrabList;
  TXtGrabList = PXtGrabRec;
{$include "PassivGraI.h"}
(* error 
extern void _XtEventInitialize(
in declaration at line 68 *)


    type
      PXtEventRec = ^TXtEventRec;
      TXtEventRec = record
          next : TXtEventTable;
          mask : TEventMask;
          proc : TXtEventHandler;
          closure : TXtPointer;
          flag0 : word;
        end;

    const
      bm__XtEventRec_select = $1;
      bp__XtEventRec_select = 0;
      bm__XtEventRec_has_type_specifier = $2;
      bp__XtEventRec_has_type_specifier = 1;
      bm__XtEventRec_async = $4;
      bp__XtEventRec_async = 2;

    function select(var a : _XtEventRec) : dword;
    procedure set_select(var a : _XtEventRec; __select : dword);
    function has_type_specifier(var a : _XtEventRec) : dword;
    procedure set_has_type_specifier(var a : _XtEventRec; __has_type_specifier : dword);
    function async(var a : _XtEventRec) : dword;
    procedure set_async(var a : _XtEventRec; __async : dword);
    type
      PXtGrabRec = ^TXtGrabRec;
      TXtGrabRec = record
          next : TXtGrabList;
          widget : TWidget;
          flag0 : word;
        end;

    const
      bm__XtGrabRec_exclusive = $1;
      bp__XtGrabRec_exclusive = 0;
      bm__XtGrabRec_spring_loaded = $2;
      bp__XtGrabRec_spring_loaded = 1;

    function exclusive(var a : _XtGrabRec) : dword;
    procedure set_exclusive(var a : _XtGrabRec; __exclusive : dword);
    function spring_loaded(var a : _XtGrabRec) : dword;
    procedure set_spring_loaded(var a : _XtGrabRec; __spring_loaded : dword);
    type
      PBlockHookRec = ^TBlockHookRec;
      TBlockHookRec = record
          next : PBlockHookRec;
          app : TXtAppContext;
          proc : TXtBlockHookProc;
          closure : TXtPointer;
        end;
      TBlockHook = PBlockHookRec;
      PBlockHook = ^TBlockHook;


procedure _XtFreeEventTable(para1:PXtEventTable);cdecl;external;

function _XtOnGrabList(para1:TWidget; para2:PXtGrabRec):TBoolean;cdecl;external;

procedure _XtRemoveAllInputs(para1:TXtAppContext);cdecl;external;

procedure _XtRefreshMapping(para1:PXEvent; para2:TXtBoolean);cdecl;external;
procedure _XtSendFocusEvent(para1:TWidget; para2:longint);cdecl;external;

function _XtConvertTypeToMask(para1:longint):TEventMask;cdecl;external;

function _XtFindRemapWidget(event:PXEvent; widget:TWidget; mask:TEventMask; pdi:TXtPerDisplayInput):TWidget;cdecl;external;
procedure _XtUngrabBadGrabs(event:PXEvent; widget:TWidget; mask:TEventMask; pdi:TXtPerDisplayInput);cdecl;external;
procedure _XtFillAncestorList(listPtr:PPWidget; maxElemsPtr:Plongint; numElemsPtr:Plongint; start:TWidget; breakWidget:TWidget);cdecl;external;

      var
        XtAppPeekEvent_SkipTimer : TBoolean;cvar;external;
{$endif}

(* error 
#endif /* _Event_h_ */

implementation

    function select(var a : _XtEventRec) : dword;
    begin
      select:=(a.flag0 and bm__XtEventRec_select) shr bp__XtEventRec_select;
    end;

    procedure set_select(var a : _XtEventRec; __select : dword);
    begin
      a.flag0:=a.flag0 or ((__select shl bp__XtEventRec_select) and bm__XtEventRec_select);
    end;

    function has_type_specifier(var a : _XtEventRec) : dword;
    begin
      has_type_specifier:=(a.flag0 and bm__XtEventRec_has_type_specifier) shr bp__XtEventRec_has_type_specifier;
    end;

    procedure set_has_type_specifier(var a : _XtEventRec; __has_type_specifier : dword);
    begin
      a.flag0:=a.flag0 or ((__has_type_specifier shl bp__XtEventRec_has_type_specifier) and bm__XtEventRec_has_type_specifier);
    end;

    function async(var a : _XtEventRec) : dword;
    begin
      async:=(a.flag0 and bm__XtEventRec_async) shr bp__XtEventRec_async;
    end;

    procedure set_async(var a : _XtEventRec; __async : dword);
    begin
      a.flag0:=a.flag0 or ((__async shl bp__XtEventRec_async) and bm__XtEventRec_async);
    end;

    function exclusive(var a : _XtGrabRec) : dword;
    begin
      exclusive:=(a.flag0 and bm__XtGrabRec_exclusive) shr bp__XtGrabRec_exclusive;
    end;

    procedure set_exclusive(var a : _XtGrabRec; __exclusive : dword);
    begin
      a.flag0:=a.flag0 or ((__exclusive shl bp__XtGrabRec_exclusive) and bm__XtGrabRec_exclusive);
    end;

    function spring_loaded(var a : _XtGrabRec) : dword;
    begin
      spring_loaded:=(a.flag0 and bm__XtGrabRec_spring_loaded) shr bp__XtGrabRec_spring_loaded;
    end;

    procedure set_spring_loaded(var a : _XtGrabRec; __spring_loaded : dword);
    begin
      a.flag0:=a.flag0 or ((__spring_loaded shl bp__XtGrabRec_spring_loaded) and bm__XtGrabRec_spring_loaded);
    end;


end.
