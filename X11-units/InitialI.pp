
unit InitialI;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/InitialI.h
  The following command line parameters were used:
    /usr/include/X11/InitialI.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/InitialI.pp
}

  Type
  P_ActionListRec  = ^_ActionListRec;
  P_XtString  = ^_XtString;
  Pchar  = ^char;
  PDisplay  = ^Display;
  Pdword  = ^dword;
  PHeap  = ^Heap;
  Plongint  = ^longint;
  PString  = ^String;
  PXrmOptionDescRec  = ^XrmOptionDescRec;
  PXtAppContext  = ^XtAppContext;
  PXtErrorHandler  = ^XtErrorHandler;
  PXtErrorMsgHandler  = ^XtErrorMsgHandler;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XtinitialI_h}
{$define _XtinitialI_h}  

{$ifndef X_NOT_POSIX}
{$ifdef _POSIX_SOURCE}
{$include <limits.h>}
{$else}
{$define _POSIX_SOURCE}  
{$include <limits.h>}
{$undef _POSIX_SOURCE}
{$endif}
{$endif}
{$ifndef PATH_MAX}
{$ifdef WIN32}

  const
    PATH_MAX = 512;    
{$else}
{$include <sys/param.h>}
{$endif}
{$ifndef PATH_MAX}
{$ifdef MAXPATHLEN}

  const
    PATH_MAX = MAXPATHLEN;    
{$else}

  const
    PATH_MAX = 1024;    
{$endif}
{$endif}
{$endif}
{$include <X11/Xos.h>}
{$include <X11/Xpoll.h>}
(* error 
typedef struct _TimerEventRec {
in declaration at line 87 *)
(* error 
	struct _TimerEventRec *te_next;
in declaration at line 88 *)

      var
        te_proc : XtTimerCallbackProc;cvar;public;
        app : XtAppContext;cvar;public;
        te_closure : XtPointer;cvar;public;
(* error 
} TimerEventRec;
in declaration at line 92 *)

    type
      _InputEvent = record
          ie_proc : XtInputCallbackProc;
          ie_closure : XtPointer;
          ie_next : ^_InputEvent;
          ie_oq : ^_InputEvent;
          app : XtAppContext;
          ie_source : longint;
          ie_condition : XtInputMask;
        end;
      InputEvent = _InputEvent;

      _SignalEventRec = record
          se_proc : XtSignalCallbackProc;
          se_closure : XtPointer;
          se_next : ^_SignalEventRec;
          app : XtAppContext;
          se_notice : Boolean;
        end;
      SignalEventRec = _SignalEventRec;

      _WorkProcRec = record
          proc : XtWorkProc;
          closure : XtPointer;
          next : ^_WorkProcRec;
          app : XtAppContext;
        end;
      WorkProcRec = _WorkProcRec;
{$ifndef USE_POLL}
{$endif}

    type
      FdStruct = record
          rmask : fd_set;
          wmask : fd_set;
          emask : fd_set;
          nfds : longint;
        end;

      _LangProcRec = record
          proc : XtLanguageProc;
          closure : XtPointer;
        end;
      LangProcRec = _LangProcRec;

      _ProcessContextRec = record
          defaultAppContext : XtAppContext;
          appContextList : XtAppContext;
          globalConverterTable : ConverterTable;
          globalLangProcRec : LangProcRec;
        end;
      ProcessContextRec = _ProcessContextRec;
      ProcessContext = ^_ProcessContextRec;

      Heap = record
          start : ^char;
          current : ^char;
          bytes_remaining : longint;
        end;
      _DestroyRec = DestroyRec;





{$ifndef NO_IDENTIFY_WINDOWS}

{$endif}


{$ifdef XTHREADS}
{$endif}

    type
      _XtAppStruct = record
          next : XtAppContext;
          process : ProcessContext;
          destroy_callbacks : InternalCallbackList;
          list : ^^Display;
          timerQueue : ^TimerEventRec;
          workQueue : ^WorkProcRec;
          input_list : ^^InputEvent;
          outstandingQueue : ^InputEvent;
          signalQueue : ^SignalEventRec;
          errorDB : XrmDatabase;
          errorMsgHandler : XtErrorMsgHandler;
          warningMsgHandler : XtErrorMsgHandler;
          errorHandler : XtErrorHandler;
          warningHandler : XtErrorHandler;
          action_table : ^_ActionListRec;
          converterTable : ConverterTable;
          selectionTimeout : dword;
          fds : FdStruct;
          count : smallint;
          max : smallint;
          last : smallint;
          input_count : smallint;
          input_max : smallint;
          sync : Boolean;
          being_destroyed : Boolean;
          error_inited : Boolean;
          identify_windows : Boolean;
          heap : Heap;
          fallback_resources : ^String;
          action_hook_list : ^_ActionHookRec;
          block_hook_list : ^_BlockHookRec;
          destroy_list_size : longint;
          destroy_count : longint;
          dispatch_level : longint;
          destroy_list : ^DestroyRec;
          in_phase2_destroy : Widget;
          langProcRec : LangProcRec;
          free_bindings : ^_TMBindCacheRec;
          display_name_tried : _XtString;
          dpy_destroy_list : ^^Display;
          dpy_destroy_count : longint;
          exit_flag : Boolean;
          rebuild_fdlist : Boolean;
          lock_info : LockPtr;
          lock : ThreadAppProc;
          unlock : ThreadAppProc;
          yield_lock : ThreadAppYieldLockProc;
          restore_lock : ThreadAppRestoreLockProc;
          free_lock : ThreadAppProc;
        end;
      XtAppStruct = _XtAppStruct;

    procedure _XtHeapInit(heap:PHeap);cdecl;

    procedure _XtHeapFree(heap:PHeap);cdecl;

{$ifdef XTTRACEMEMORY}

    function _XtHeapMalloc(_para1:PHeap; _para2:Cardinal; _para3:Pchar; _para4:longint):^char;cdecl;

    function _XtHeapAlloc(heap,bytes : longint) : longint;    

{$else}



  function _XtHeapAlloc(_para1:PHeap; _para2:Cardinal):^char;cdecl;

{$endif}



  procedure _XtSetDefaultErrorHandlers(_para1:PXtErrorMsgHandler; _para2:PXtErrorMsgHandler; _para3:PXtErrorHandler; _para4:PXtErrorHandler);cdecl;


  procedure _XtSetDefaultSelectionTimeout(_para1:Pdword);cdecl;

  function _XtDefaultAppContext:XtAppContext;cdecl;

  function _XtGetProcessContext:ProcessContext;cdecl;


  function _XtAppInit(_para1:PXtAppContext; _para2:String; _para3:PXrmOptionDescRec; _para4:Cardinal; _para5:Plongint; 
             _para6:PP_XtString; _para7:PString):^Display;

  procedure _XtDestroyAppContexts;cdecl;


  procedure _XtCloseDisplays(_para1:XtAppContext);cdecl;


    var
      _XtAppDestroyCount : longint;cvar;external;
{$ifdef XTHREADS}
{$endif}


  function _XtWaitForSomething(_para1:XtAppContext; _para2:_XtBoolean; _para3:_XtBoolean; _para4:_XtBoolean; _para5:_XtBoolean; 
             _para6:_XtBoolean; _para7:_XtBoolean; _para8:Pdword):longint;cdecl;


  type
    CaseConverterPtr = ^_CaseConverterRec;





    _CaseConverterRec = record
        start : KeySym;
        stop : KeySym;
        proc : XtCaseProc;
        next : CaseConverterPtr;
      end;
    CaseConverterRec = _CaseConverterRec;

    _ExtensionSelectorRec = record
        proc : XtExtensionSelectProc;
        min : longint;
        max : longint;
        client_data : XtPointer;
      end;
    ExtSelectRec = _ExtensionSelectorRec;



























{$ifndef X_NO_RESOURCE_CONFIGURATION_MANAGEMENT}


{$endif}

  type
    _XtPerDisplayStruct = record
        destroy_callbacks : InternalCallbackList;
        region : Region;
        case_cvt : CaseConverterPtr;
        defaultKeycodeTranslator : XtKeyProc;
        appContext : XtAppContext;
        keysyms_serial : dword;
        keysyms : ^KeySym;
        keysyms_per_keycode : longint;
        min_keycode : longint;
        max_keycode : longint;
        modKeysyms : ^KeySym;
        modsToKeysyms : ^ModToKeysymTable;
        isModifier : array[0..31] of byte;
        lock_meaning : KeySym;
        mode_switch : Modifiers;
        num_lock : Modifiers;
        being_destroyed : Boolean;
        rv : Boolean;
        name : XrmName;
        _class : XrmClass;
        heap : Heap;
        GClist : ^_GCrec;
        pixmap_tab : ^^Drawable;
        language : String;
        last_event : XEvent;
        last_timestamp : Time;
        multi_click_time : longint;
        tm_context : ^_TMKeyContextRec;
        mapping_callbacks : InternalCallbackList;
        pdi : XtPerDisplayInputRec;
        WWtable : ^_WWTable;
        per_screen_db : ^XrmDatabase;
        cmd_db : XrmDatabase;
        server_db : XrmDatabase;
        dispatcher_list : ^XtEventDispatchProc;
        ext_select_list : ^ExtSelectRec;
        ext_select_count : longint;
        hook_object : Widget;
        rcm_init : Atom;
        rcm_data : Atom;
      end;
    XtPerDisplayStruct = _XtPerDisplayStruct;
    XtPerDisplay = ^_XtPerDisplayStruct;

    _PerDisplayTable = record
        dpy : ^Display;
        perDpy : XtPerDisplayStruct;
        next : ^_PerDisplayTable;
      end;
    PerDisplayTable = _PerDisplayTable;
    PerDisplayTablePtr = ^_PerDisplayTable;

    var
      _XtperDisplayList : PerDisplayTablePtr;cvar;external;


  function _XtSortPerDisplayList(_para1:PDisplay):XtPerDisplay;cdecl;


  function _XtGetPerDisplay(_para1:PDisplay):XtPerDisplay;cdecl;


  function _XtGetPerDisplayInput(_para1:PDisplay):^XtPerDisplayInputRec;cdecl;

{$if 0}
{$ifdef DEBUG}

  function _XtGetPerDisplay(display : longint) : longint;  

  function _XtGetPerDisplayInput(display : longint) : longint;  

{$else}

  function _XtGetPerDisplay(display : longint) : longint;  

  function _XtGetPerDisplayInput(display : longint) : longint;  

{$endif}

{$endif}
(* error 
    _Xconst char*	/* name */,
(* error 
    XrmOptionDescRec*	/* urlist */,
 in declarator_list *)
 in declarator_list *)
(* error 
    int*		/* argc */,
(* error 
    _XtString* 		/* argv */

 in declarator_list *)
 in declarator_list *)


  procedure _XtCacheFlushTag(_para1:XtAppContext; _para2:XtPointer);cdecl;


  procedure _XtFreeActions(_para1:P_ActionListRec);cdecl;


  procedure _XtDoPhase2Destroy(_para1:XtAppContext; _para2:longint);cdecl;


  procedure _XtDoFreeBindings(_para1:XtAppContext);cdecl;


  procedure _XtExtensionSelect(_para1:Widget);cdecl;

  function _XtSafeToDestroy(app : longint) : longint;  

  procedure _XtAllocWWTable(pd:XtPerDisplay);cdecl;

  procedure _XtFreeWWTable(pd:XtPerDisplay);cdecl;

  function _XtGetUserName(dest:_XtString; len:longint):String;cdecl;

  function _XtPreparseCommandLine(urlist:PXrmOptionDescRec; num_urs:Cardinal; argc:longint; argv:P_XtString; applName:PString; 
             displayName:PString; language:PString):XrmDatabase;cdecl;

{$endif}

(* error 
#endif /* _XtinitialI_h */

implementation

    function _XtHeapAlloc(heap,bytes : longint) : longint;
    begin
      _XtHeapAlloc:=_XtHeapMalloc(heap,bytes,__FILE__,__LINE__);
    end;

  function _XtAppInit(_para1:PXtAppContext; _para2:String; _para3:PXrmOptionDescRec; _para4:Cardinal; _para5:Plongint; 
             _para6:PP_XtString; _para7:PString):PDisplay;
  begin
    { You must implement this function }
  end;
  function _XtGetPerDisplay(display : longint) : longint;
  var
     if_local1 : longint;
  (* result types are not known *)
  begin
    if _XtperDisplayList<>(NULL and (@((_XtperDisplayList^.dpy)=display))) then
      if_local1:=@(_XtperDisplayList^.perDpy)
    else
      if_local1:=_XtSortPerDisplayList(display);
    _XtGetPerDisplay:=if_local1;
  end;

  function _XtGetPerDisplayInput(display : longint) : longint;
  var
     if_local1 : longint;
  (* result types are not known *)
  begin
    if _XtperDisplayList<>(NULL and (@((_XtperDisplayList^.dpy)=display))) then
      if_local1:=@(_XtperDisplayList^.(perDpy.pdi))
    else
      if_local1:=@((_XtSortPerDisplayList(display))^.pdi);
    _XtGetPerDisplayInput:=if_local1;
  end;

  function _XtGetPerDisplay(display : longint) : longint;
  var
     if_local1 : longint;
  (* result types are not known *)
  begin
    if (_XtperDisplayList^.dpy)=display then
      if_local1:=@(_XtperDisplayList^.perDpy)
    else
      if_local1:=_XtSortPerDisplayList(display);
    _XtGetPerDisplay:=if_local1;
  end;

  function _XtGetPerDisplayInput(display : longint) : longint;
  var
     if_local1 : longint;
  (* result types are not known *)
  begin
    if (_XtperDisplayList^.dpy)=display then
      if_local1:=@(_XtperDisplayList^.(perDpy.pdi))
    else
      if_local1:=@((_XtSortPerDisplayList(display))^.pdi);
    _XtGetPerDisplayInput:=if_local1;
  end;

  function _XtSafeToDestroy(app : longint) : longint;
  begin
    _XtSafeToDestroy:=(app^.dispatch_level)=0;
  end;


end.
