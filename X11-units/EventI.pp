
unit EventI;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/EventI.h
  The following command line parameters were used:
    /usr/include/X11/EventI.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/EventI.pp
}

    Type
    Plongint  = ^longint;
    PWidget  = ^Widget;
    PXEvent  = ^XEvent;
    PXtEventTable  = ^XtEventTable;
    PXtGrabRec  = ^XtGrabRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _Event_h_}
{$define _Event_h_}  

  type
    XtGrabList = ^_XtGrabRec;
{$include "PassivGraI.h"}
(* error 
extern void _XtEventInitialize(
in declaration at line 68 *)



    type
      _XtEventRec = record
          next : XtEventTable;
          mask : EventMask;
          proc : XtEventHandler;
          closure : XtPointer;
          flag0 : word;
        end;
      XtEventRec = _XtEventRec;

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
      _XtGrabRec = record
          next : XtGrabList;
          widget : Widget;
          flag0 : word;
        end;
      XtGrabRec = _XtGrabRec;

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
      _BlockHookRec = record
          next : ^_BlockHookRec;
          app : XtAppContext;
          proc : XtBlockHookProc;
          closure : XtPointer;
        end;
      BlockHookRec = _BlockHookRec;
      BlockHook = ^_BlockHookRec;


    procedure _XtFreeEventTable(_para1:PXtEventTable);cdecl;


    function _XtOnGrabList(_para1:Widget; _para2:PXtGrabRec):Boolean;cdecl;


    procedure _XtRemoveAllInputs(_para1:XtAppContext);cdecl;


    procedure _XtRefreshMapping(_para1:PXEvent; _para2:_XtBoolean);cdecl;

    procedure _XtSendFocusEvent(_para1:Widget; _para2:longint);cdecl;


    function _XtConvertTypeToMask(_para1:longint):EventMask;cdecl;


    function _XtFindRemapWidget(event:PXEvent; widget:Widget; mask:EventMask; pdi:XtPerDisplayInput):Widget;cdecl;

    procedure _XtUngrabBadGrabs(event:PXEvent; widget:Widget; mask:EventMask; pdi:XtPerDisplayInput);cdecl;

    procedure _XtFillAncestorList(listPtr:PPWidget; maxElemsPtr:Plongint; numElemsPtr:Plongint; start:Widget; breakWidget:Widget);cdecl;



      var
        XtAppPeekEvent_SkipTimer : Boolean;cvar;external;
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
