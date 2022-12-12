
unit InitialI;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/InitialI.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/InitialI.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/InitialI.pp
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
    PActionHookRec  = ^ActionHookRec;
    PActionListRec  = ^ActionListRec;
    PBlockHookRec  = ^BlockHookRec;
    PCaseConverterPtr  = ^CaseConverterPtr;
    PCaseConverterRec  = ^CaseConverterRec;
    Pchar  = ^char;
    PDestroyRec  = ^DestroyRec;
    PDisplay  = ^Display;
    PDrawable  = ^Drawable;
    Pdword  = ^dword;
    PExtensionSelectorRec  = ^ExtensionSelectorRec;
    PExtSelectRec  = ^ExtSelectRec;
    PFdStruct  = ^FdStruct;
    PGCrec  = ^GCrec;
    PHeap  = ^Heap;
    PInputEvent  = ^InputEvent;
    PKeySym  = ^KeySym;
    PLangProcRec  = ^LangProcRec;
    Plongint  = ^longint;
    PModToKeysymTable  = ^ModToKeysymTable;
    PPerDisplayTable  = ^PerDisplayTable;
    PPerDisplayTablePtr  = ^PerDisplayTablePtr;
    PProcessContext  = ^ProcessContext;
    PProcessContextRec  = ^ProcessContextRec;
    PSignalEventRec  = ^SignalEventRec;
    PString  = ^String;
    PTimerEventRec  = ^TimerEventRec;
    PTMBindCacheRec  = ^TMBindCacheRec;
    PTMKeyContextRec  = ^TMKeyContextRec;
    PWorkProcRec  = ^WorkProcRec;
    PWWTable  = ^WWTable;
    PXrmDatabase  = ^XrmDatabase;
    PXrmOptionDescRec  = ^XrmOptionDescRec;
    PXtAppContext  = ^XtAppContext;
    PXtAppStruct  = ^XtAppStruct;
    PXtErrorHandler  = ^XtErrorHandler;
    PXtErrorMsgHandler  = ^XtErrorMsgHandler;
    PXtEventDispatchProc  = ^XtEventDispatchProc;
    PXtPerDisplay  = ^XtPerDisplay;
    PXtPerDisplayInputRec  = ^XtPerDisplayInputRec;
    PXtPerDisplayStruct  = ^XtPerDisplayStruct;
    PXtString  = ^XtString;
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
        te_proc : TXtTimerCallbackProc;cvar;public;
        app : TXtAppContext;cvar;public;
        te_closure : TXtPointer;cvar;public;
(* error 
} TimerEventRec;
in declaration at line 92 *)
    type
      PInputEvent = ^TInputEvent;
      TInputEvent = record
          ie_proc : TXtInputCallbackProc;
          ie_closure : TXtPointer;
          ie_next : PInputEvent;
          ie_oq : PInputEvent;
          app : TXtAppContext;
          ie_source : longint;
          ie_condition : TXtInputMask;
        end;

      PSignalEventRec = ^TSignalEventRec;
      TSignalEventRec = record
          se_proc : TXtSignalCallbackProc;
          se_closure : TXtPointer;
          se_next : PSignalEventRec;
          app : TXtAppContext;
          se_notice : TBoolean;
        end;

      PWorkProcRec = ^TWorkProcRec;
      TWorkProcRec = record
          proc : TXtWorkProc;
          closure : TXtPointer;
          next : PWorkProcRec;
          app : TXtAppContext;
        end;
{$ifndef USE_POLL}
{$endif}
    type
      PFdStruct = ^TFdStruct;
      TFdStruct = record
          rmask : Tfd_set;
          wmask : Tfd_set;
          emask : Tfd_set;
          nfds : longint;
        end;

      PLangProcRec = ^TLangProcRec;
      TLangProcRec = record
          proc : TXtLanguageProc;
          closure : TXtPointer;
        end;

      PProcessContextRec = ^TProcessContextRec;
      TProcessContextRec = record
          defaultAppContext : TXtAppContext;
          appContextList : TXtAppContext;
          globalConverterTable : TConverterTable;
          globalLangProcRec : TLangProcRec;
        end;
      TProcessContext = PProcessContextRec;
      PProcessContext = ^TProcessContext;

      PHeap = ^THeap;
      THeap = record
          start : Pchar;
          current : Pchar;
          bytes_remaining : longint;
        end;





{$ifndef NO_IDENTIFY_WINDOWS}

{$endif}


{$ifdef XTHREADS}
{$endif}
    type
      PXtAppStruct = ^TXtAppStruct;
      TXtAppStruct = record
          next : TXtAppContext;
          process : TProcessContext;
          destroy_callbacks : TInternalCallbackList;
          list : ^PDisplay;
          timerQueue : PTimerEventRec;
          workQueue : PWorkProcRec;
          input_list : ^PInputEvent;
          outstandingQueue : PInputEvent;
          signalQueue : PSignalEventRec;
          errorDB : TXrmDatabase;
          errorMsgHandler : TXtErrorMsgHandler;
          warningMsgHandler : TXtErrorMsgHandler;
          errorHandler : TXtErrorHandler;
          warningHandler : TXtErrorHandler;
          action_table : PActionListRec;
          converterTable : TConverterTable;
          selectionTimeout : dword;
          fds : TFdStruct;
          count : smallint;
          max : smallint;
          last : smallint;
          input_count : smallint;
          input_max : smallint;
          sync : TBoolean;
          being_destroyed : TBoolean;
          error_inited : TBoolean;
          identify_windows : TBoolean;
          heap : THeap;
          fallback_resources : PString;
          action_hook_list : PActionHookRec;
          block_hook_list : PBlockHookRec;
          destroy_list_size : longint;
          destroy_count : longint;
          dispatch_level : longint;
          destroy_list : PDestroyRec;
          in_phase2_destroy : TWidget;
          langProcRec : TLangProcRec;
          free_bindings : PTMBindCacheRec;
          display_name_tried : TXtString;
          dpy_destroy_list : ^PDisplay;
          dpy_destroy_count : longint;
          exit_flag : TBoolean;
          rebuild_fdlist : TBoolean;
          lock_info : TLockPtr;
          lock : TThreadAppProc;
          unlock : TThreadAppProc;
          yield_lock : TThreadAppYieldLockProc;
          restore_lock : TThreadAppRestoreLockProc;
          free_lock : TThreadAppProc;
        end;

procedure _XtHeapInit(heap:PHeap);cdecl;external;
procedure _XtHeapFree(heap:PHeap);cdecl;external;
{$ifdef XTTRACEMEMORY}

function _XtHeapMalloc(para1:PHeap; para2:TCardinal; para3:Pchar; para4:longint):Pchar;cdecl;external;
    function _XtHeapAlloc(heap,bytes : longint) : longint;    

{$else}



function _XtHeapAlloc(para1:PHeap; para2:TCardinal):Pchar;cdecl;external;
{$endif}



procedure _XtSetDefaultErrorHandlers(para1:PXtErrorMsgHandler; para2:PXtErrorMsgHandler; para3:PXtErrorHandler; para4:PXtErrorHandler);cdecl;external;

procedure _XtSetDefaultSelectionTimeout(para1:Pdword);cdecl;external;
function _XtDefaultAppContext:TXtAppContext;cdecl;external;
function _XtGetProcessContext:TProcessContext;cdecl;external;

function _XtAppInit(para1:PXtAppContext; para2:TString; para3:PXrmOptionDescRec; para4:TCardinal; para5:Plongint; 
               para6:PPXtString; para7:PString):PDisplay;cdecl;external;
procedure _XtDestroyAppContexts;cdecl;external;

procedure _XtCloseDisplays(para1:TXtAppContext);cdecl;external;
      var
        _XtAppDestroyCount : longint;cvar;external;
{$ifdef XTHREADS}
{$endif}


function _XtWaitForSomething(para1:TXtAppContext; para2:TXtBoolean; para3:TXtBoolean; para4:TXtBoolean; para5:TXtBoolean; 
               para6:TXtBoolean; para7:TXtBoolean; para8:Pdword):longint;cdecl;external;
    type
      PCaseConverterPtr = ^TCaseConverterPtr;
      TCaseConverterPtr = PCaseConverterRec;





      PCaseConverterRec = ^TCaseConverterRec;
      TCaseConverterRec = record
          start : TKeySym;
          stop : TKeySym;
          proc : TXtCaseProc;
          next : TCaseConverterPtr;
        end;

      PExtensionSelectorRec = ^TExtensionSelectorRec;
      TExtensionSelectorRec = record
          proc : TXtExtensionSelectProc;
          min : longint;
          max : longint;
          client_data : TXtPointer;
        end;
      TExtSelectRec = TExtensionSelectorRec;
      PExtSelectRec = ^TExtSelectRec;



























{$ifndef X_NO_RESOURCE_CONFIGURATION_MANAGEMENT}


{$endif}
    type
      PXtPerDisplayStruct = ^TXtPerDisplayStruct;
      TXtPerDisplayStruct = record
          destroy_callbacks : TInternalCallbackList;
          region : TRegion;
          case_cvt : TCaseConverterPtr;
          defaultKeycodeTranslator : TXtKeyProc;
          appContext : TXtAppContext;
          keysyms_serial : dword;
          keysyms : PKeySym;
          keysyms_per_keycode : longint;
          min_keycode : longint;
          max_keycode : longint;
          modKeysyms : PKeySym;
          modsToKeysyms : PModToKeysymTable;
          isModifier : array[0..31] of byte;
          lock_meaning : TKeySym;
          mode_switch : TModifiers;
          num_lock : TModifiers;
          being_destroyed : TBoolean;
          rv : TBoolean;
          name : TXrmName;
          _class : TXrmClass;
          heap : THeap;
          GClist : PGCrec;
          pixmap_tab : ^PDrawable;
          language : TString;
          last_event : TXEvent;
          last_timestamp : TTime;
          multi_click_time : longint;
          tm_context : PTMKeyContextRec;
          mapping_callbacks : TInternalCallbackList;
          pdi : TXtPerDisplayInputRec;
          WWtable : PWWTable;
          per_screen_db : PXrmDatabase;
          cmd_db : TXrmDatabase;
          server_db : TXrmDatabase;
          dispatcher_list : PXtEventDispatchProc;
          ext_select_list : PExtSelectRec;
          ext_select_count : longint;
          hook_object : TWidget;
          rcm_init : TAtom;
          rcm_data : TAtom;
        end;
      TXtPerDisplay = PXtPerDisplayStruct;
      PXtPerDisplay = ^TXtPerDisplay;

      PPerDisplayTable = ^TPerDisplayTable;
      TPerDisplayTable = record
          dpy : PDisplay;
          perDpy : TXtPerDisplayStruct;
          next : PPerDisplayTable;
        end;
      TPerDisplayTablePtr = PPerDisplayTable;
      PPerDisplayTablePtr = ^TPerDisplayTablePtr;
      var
        _XtperDisplayList : TPerDisplayTablePtr;cvar;external;


function _XtSortPerDisplayList(para1:PDisplay):TXtPerDisplay;cdecl;external;

function _XtGetPerDisplay(para1:PDisplay):TXtPerDisplay;cdecl;external;

function _XtGetPerDisplayInput(para1:PDisplay):PXtPerDisplayInputRec;cdecl;external;
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


procedure _XtCacheFlushTag(para1:TXtAppContext; para2:TXtPointer);cdecl;external;

procedure _XtFreeActions(para1:PActionListRec);cdecl;external;

procedure _XtDoPhase2Destroy(para1:TXtAppContext; para2:longint);cdecl;external;

procedure _XtDoFreeBindings(para1:TXtAppContext);cdecl;external;

procedure _XtExtensionSelect(para1:TWidget);cdecl;external;
    function _XtSafeToDestroy(app : longint) : longint;    

procedure _XtAllocWWTable(pd:TXtPerDisplay);cdecl;external;
procedure _XtFreeWWTable(pd:TXtPerDisplay);cdecl;external;
function _XtGetUserName(dest:TXtString; len:longint):TString;cdecl;external;
function _XtPreparseCommandLine(urlist:PXrmOptionDescRec; num_urs:TCardinal; argc:longint; argv:PXtString; applName:PString; 
               displayName:PString; language:PString):TXrmDatabase;cdecl;external;
{$endif}

(* error 
#endif /* _XtinitialI_h */

implementation

    function _XtHeapAlloc(heap,bytes : longint) : longint;
    begin
      _XtHeapAlloc:=_XtHeapMalloc(heap,bytes,__FILE__,__LINE__);
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
