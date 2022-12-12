
unit Xthreads;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xthreads.h
  The following command line parameters were used:
    /usr/include/X11/Xthreads.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xthreads.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XTHREADS_H_}
{$define _XTHREADS_H_}  

{$ifndef xmalloc}

  const
    xmalloc = malloc;    
{$endif}
{$ifndef xfree}

  const
    xfree = free;    
{$endif}
{$ifdef CTHREADS}
{$include <cthreads.h>}

  type
    xthread_t = cthread_t;
    condition = xcondition_rec;
    mutex = xmutex_rec;

  function xthread_init : longint;  

  const
    xthread_self = cthread_self;    

  function xthread_fork(func,closure : longint) : longint;  

  function xthread_yield : longint;  

  function xthread_exit(v : longint) : longint;  

  function xthread_set_name(t,str : longint) : longint;  

  function xmutex_init(m : longint) : longint;  

  function xmutex_clear(m : longint) : longint;  

  function xmutex_lock(m : longint) : longint;  

  function xmutex_unlock(m : longint) : longint;  

  function xmutex_set_name(m,str : longint) : longint;  

  function xcondition_init(cv : longint) : longint;  

  function xcondition_clear(cv : longint) : longint;  

  function xcondition_wait(cv,m : longint) : longint;  

  function xcondition_signal(cv : longint) : longint;  

  function xcondition_broadcast(cv : longint) : longint;  

  function xcondition_set_name(cv,str : longint) : longint;  

{$else}

{$if defined(SVR4)}
{$include <thread.h>}
{$include <synch.h>}

  type
    xthread_t = thread_t;

    xthread_key_t = thread_key_t;

    xcondition_rec = cond_t;

    xmutex_rec = mutex_t;
{$if defined(__UNIXWARE__)}

    var
      _x11_thr_self : function :xthread_t;cvar;external;

  const
    xthread_self = _x11_thr_self;    
{$else}

  const
    xthread_self = thr_self;    
{$endif}

  function xthread_fork(func,closure : longint) : longint;  

  function xthread_yield : longint;  

  function xthread_exit(v : longint) : longint;  

  function xthread_key_create(kp,d : longint) : longint;  

{$ifdef __sun}

  function xthread_key_delete(k : longint) : longint;  

{$else}

  function xthread_key_delete(k : longint) : longint;  

{$endif}

  function xthread_set_specific(k,v : longint) : longint;  

  function xthread_get_specific(k,vp : longint) : longint;  

  function xmutex_init(m : longint) : longint;  

  function xmutex_clear(m : longint) : longint;  

  function xmutex_lock(m : longint) : longint;  

  function xmutex_unlock(m : longint) : longint;  

  function xcondition_init(cv : longint) : longint;  

  function xcondition_clear(cv : longint) : longint;  

  function xcondition_wait(cv,m : longint) : longint;  

  function xcondition_signal(cv : longint) : longint;  

  function xcondition_broadcast(cv : longint) : longint;  

{$else}

{$ifdef WIN32}
{$include <X11/Xwindows.h>}

  type
    xthread_t = DWORD;

    xthread_key_t = DWORD;
    _xthread_waiter = record
        sem : HANDLE;
        next : ^_xthread_waiter;
      end;


    xcondition_rec = record
        cs : CRITICAL_SECTION;
        waiters : ^_xthread_waiter;
      end;

    xmutex_rec = CRITICAL_SECTION;

  procedure _Xthread_init;cdecl;

  function xthread_init : longint;  

  const
    xthread_self = GetCurrentThreadId;    
(* error 
#    define xthread_fork(func,closure) { \
in declaration at line 114 *)
(* error 
    DWORD _tmptid; \
(* error 
    CreateThread(NULL, 0, (LPTHREAD_START_ROUTINE)func, (LPVOID)closure, 0, \
in declaration at line 116 *)
(* error 
		 &_tmptid); \
(* error 
}
in define line 118 *)

    function xthread_exit(v : longint) : longint;    

(* error 
#    define xthread_key_create(kp,d) *(kp) = TlsAlloc()
in define line 120 *)
    function xthread_key_delete(k : longint) : longint;    

  function xthread_set_specific(k,v : longint) : longint;  

function xthread_get_specific(k,vp : longint) : longint;

function xmutex_init(m : longint) : longint;

function xmutex_clear(m : longint) : longint;

{$define _XMUTEX_NESTS}
function xmutex_lock(m : longint) : longint;

function xmutex_unlock(m : longint) : longint;

(* error 
#    define xcondition_init(cv) { \
in declaration at line 130 *)
(* error 
    InitializeCriticalSection(&(cv)->cs); \
(* error 
    (cv)->waiters = NULL; \
in declaration at line 131 *)
(* error 
    (cv)->waiters = NULL; \
(* error 
}
in define line 133 *)
    function _Xthread_waiter:^_xthread_waiter;cdecl;

(* error 
#    define xcondition_wait(cv,m) { \
in declaration at line 136 *)
(* error 
    struct _xthread_waiter *_tmpthr = _Xthread_waiter(); \
(* error 
    EnterCriticalSection(&(cv)->cs); \
in declaration at line 137 *)
(* error 
    EnterCriticalSection(&(cv)->cs); \
(* error 
    _tmpthr->next = (cv)->waiters; \
in declaration at line 138 *)
(* error 
    _tmpthr->next = (cv)->waiters; \
(* error 
    (cv)->waiters = _tmpthr; \
in declaration at line 139 *)
(* error 
    (cv)->waiters = _tmpthr; \
(* error 
    LeaveCriticalSection(&(cv)->cs); \
in declaration at line 140 *)
(* error 
    LeaveCriticalSection(&(cv)->cs); \
(* error 
    LeaveCriticalSection(m); \
in declaration at line 141 *)
(* error 
    LeaveCriticalSection(m); \
(* error 
    WaitForSingleObject(_tmpthr->sem, INFINITE); \
in declaration at line 142 *)
(* error 
    WaitForSingleObject(_tmpthr->sem, INFINITE); \
(* error 
    EnterCriticalSection(m); \
in declaration at line 143 *)
(* error 
    EnterCriticalSection(m); \
(* error 
}
in declaration at line 146 *)
(* error 
    EnterCriticalSection(&(cv)->cs); \
(* error 
    if ((cv)->waiters) { \
in declaration at line 148 *)
(* error 
        ReleaseSemaphore((cv)->waiters->sem, 1, NULL); \
(* error 
	(cv)->waiters = (cv)->waiters->next; \
in declaration at line 149 *)
(* error 
	(cv)->waiters = (cv)->waiters->next; \
(* error 
    } \
in declaration at line 151 *)
(* error 
    LeaveCriticalSection(&(cv)->cs); \
(* error 
}
in declaration at line 154 *)
(* error 
    struct _xthread_waiter *_tmpthr; \
(* error 
    EnterCriticalSection(&(cv)->cs); \
in declaration at line 155 *)
(* error 
    EnterCriticalSection(&(cv)->cs); \
(* error 
    for (_tmpthr = (cv)->waiters; _tmpthr; _tmpthr = _tmpthr->next) \
in declaration at line 156 *)
(* error 
    for (_tmpthr = (cv)->waiters; _tmpthr; _tmpthr = _tmpthr->next) \
in declaration at line 156 *)
(* error 
    for (_tmpthr = (cv)->waiters; _tmpthr; _tmpthr = _tmpthr->next) \
in declaration at line 157 *)
(* error 
	ReleaseSemaphore(_tmpthr->sem, 1, NULL); \
(* error 
    (cv)->waiters = NULL; \
in declaration at line 158 *)
(* error 
    (cv)->waiters = NULL; \
(* error 
    LeaveCriticalSection(&(cv)->cs); \
in declaration at line 159 *)
(* error 
    LeaveCriticalSection(&(cv)->cs); \
(* error 
}
{$else}

{$ifdef USE_TIS_SUPPORT}

{$include <tis.h>}
in declaration at line 168 *)

    type
      xthread_key_t = pthread_key_t;

      xcondition_rec = pthread_cond_t;

      xmutex_rec = pthread_mutex_t;

    const
      xthread_self = tis_self;      
(* error 
#     define xthread_fork(func,closure) { pthread_t _tmpxthr; \
in declaration at line 173 *)
(* error 
#     define xthread_fork(func,closure) { pthread_t _tmpxthr; \
(* error 
        pthread_create(&_tmpxthr,NULL,func,closure); }
in declaration at line 174 *)
(* error 
        pthread_create(&_tmpxthr,NULL,func,closure); }
in define line 175 *)

    function xthread_exit(v : longint) : longint;    

  function xthread_key_create(kp,d : longint) : longint;  

function xthread_key_delete(k : longint) : longint;

function xthread_set_specific(k,v : longint) : longint;

(* error 
#     define xthread_get_specific(k,vp) *(vp) = tis_getspecific(k)
in define line 180 *)
    const
      XMUTEX_INITIALIZER = PTHREAD_MUTEX_INITIALIZER;      

    function xmutex_init(m : longint) : longint;    

  function xmutex_clear(m : longint) : longint;  

function xmutex_lock(m : longint) : longint;

function xmutex_unlock(m : longint) : longint;

function xcondition_init(c : longint) : longint;

function xcondition_clear(c : longint) : longint;

function xcondition_wait(c,m : longint) : longint;

function xcondition_signal(c : longint) : longint;

function xcondition_broadcast(c : longint) : longint;

{$else}
{$ifdef USE_NBSD_THREADLIB}

{$include <threadlib.h>}

type
  xthread_t = thr_t;

  xthread_key_t = thread_key_t;

  xcondition_rec = cond_t;

  xmutex_rec = mutex_t;

const
  xthread_self = thr_self;  
(* error 
#      define xthread_fork(func,closure) { thr_t _tmpxthr; \
in declaration at line 203 *)
(* error 
#      define xthread_fork(func,closure) { thr_t _tmpxthr; \
(* error 
	/* XXX Create it detached?  --thorpej */ \
in declaration at line 205 *)
(* error 
	thr_create(&_tmpxthr,NULL,func,closure); }
in define line 206 *)

    function xthread_exit(v : longint) : longint;    

  function xthread_key_create(kp,d : longint) : longint;  

function xthread_key_delete(k : longint) : longint;

function xthread_set_specific(k,v : longint) : longint;

(* error 
#      define xthread_get_specific(k,vp) *(vp) = thr_getspecific(k)
in define line 211 *)
    const
      XMUTEX_INITIALIZER = MUTEX_INITIALIZER;      

    function xmutex_init(m : longint) : longint;    

  function xmutex_clear(m : longint) : longint;  

function xmutex_lock(m : longint) : longint;

function xmutex_unlock(m : longint) : longint;

function xcondition_init(c : longint) : longint;

function xcondition_clear(c : longint) : longint;

function xcondition_wait(c,m : longint) : longint;

function xcondition_signal(c : longint) : longint;

function xcondition_broadcast(c : longint) : longint;

{$else}
{$include <pthread.h>}

type
  xthread_t = pthread_t;

  xthread_key_t = pthread_key_t;

  xcondition_rec = pthread_cond_t;

  xmutex_rec = pthread_mutex_t;

const
  xthread_self = pthread_self;  

function xthread_yield : longint;

function xthread_exit(v : longint) : longint;

function xthread_set_specific(k,v : longint) : longint;

function xmutex_clear(m : longint) : longint;

function xmutex_lock(m : longint) : longint;

function xmutex_unlock(m : longint) : longint;

{$ifndef XPRE_STANDARD_API}

function xthread_key_create(kp,d : longint) : longint;

function xthread_key_delete(k : longint) : longint;

(* error 
#       define xthread_get_specific(k,vp) *(vp) = pthread_getspecific(k)
in define line 238 *)
(* error 
#       define xthread_fork(func,closure) { pthread_t _tmpxthr; \
in declaration at line 239 *)
(* error 
#       define xthread_fork(func,closure) { pthread_t _tmpxthr; \
(* error 
	pthread_create(&_tmpxthr,NULL,func,closure); }
in declaration at line 240 *)
(* error 
	pthread_create(&_tmpxthr,NULL,func,closure); }
in define line 241 *)
    function xmutex_init(m : longint) : longint;    

  function xcondition_init(c : longint) : longint;  

{$else}


function xthread_key_create(kp,d : longint) : longint;

function xthread_key_delete(k : longint) : longint;

function xthread_get_specific(k,vp : longint) : longint;

(* error 
#       define xthread_fork(func,closure) { pthread_t _tmpxthr; \
in declaration at line 248 *)
(* error 
#       define xthread_fork(func,closure) { pthread_t _tmpxthr; \
(* error 
	pthread_create(&_tmpxthr,pthread_attr_default,func,closure); }
in declaration at line 249 *)
(* error 
	pthread_create(&_tmpxthr,pthread_attr_default,func,closure); }
in define line 250 *)
    function xcondition_init(c : longint) : longint;    

{$endif}


  function xcondition_clear(c : longint) : longint;  

function xcondition_wait(c,m : longint) : longint;

function xcondition_signal(c : longint) : longint;

function xcondition_broadcast(c : longint) : longint;

{$if defined(_DECTHREADS_)}
(* error 
static xthread_t _X_no_thread_id;
 in declarator_list *)

function xthread_have_id(id : longint) : longint;

(* error 
#       define xthread_clear_id(id) id = _X_no_thread_id
in define line 260 *)
    function xthread_equal(id1,id2 : longint) : longint;    

{$endif}

{$if defined(__linux__)}

  function xthread_have_id(id : longint) : longint;  

(* error 
#       define xthread_clear_id(id) id = 0
in define line 265 *)
    function xthread_equal(id1,id2 : longint) : longint;    

{$endif}

{$if defined(_CMA_VENDOR_) && defined(_CMA__IBM) && (_CMA_VENDOR_ == _CMA__IBM)}
{$ifdef DEBUG		/* too much of a hack to enable normally */}

(* error 
#        define xmutex_set_name(m,str) ((char**)(m)->field1)[5] = (str)
in define line 271 *)
(* error 
#        define xcondition_set_name(cv,str) ((char**)(cv)->field1)[5] = (str)
in define line 272 *)
{$endif}

{$endif}

{$endif}

{$endif}

{$endif}

{$endif}

{$endif}


    type
      xcondition_t = ^xcondition_rec;

      xmutex_t = ^xmutex_rec;
{$ifndef xcondition_malloc}

    function xcondition_malloc : xcondition_t;    

{$endif}
{$ifndef xcondition_free}

  function xcondition_free(c : longint) : longint;  

{$endif}
{$ifndef xmutex_malloc}

function xmutex_malloc : xmutex_t;

{$endif}
{$ifndef xmutex_free}

function xmutex_free(m : longint) : longint;

{$endif}
{$ifndef xthread_have_id}

function xthread_have_id(id : longint) : longint;

{$endif}
{$ifndef xthread_clear_id}
(* error 
#  define xthread_clear_id(id) id = 0
in define line 298 *)
{$endif}
{$ifndef xthread_equal}

    function xthread_equal(id1,id2 : longint) : longint;    

{$endif}

{$ifndef xthread_set_name}
(* error 
#  define xthread_set_name(t,str)
in define line 305 *)
{$endif}
{$ifndef xmutex_set_name}
(* error 
#  define xmutex_set_name(m,str)
in define line 308 *)
{$endif}
{$ifndef xcondition_set_name}
(* error 
#  define xcondition_set_name(cv,str)
in define line 311 *)
{$endif}
{$endif}


implementation

  function xthread_init : longint;
  begin
    xthread_init:=cthread_init;
  end;

  function xthread_fork(func,closure : longint) : longint;
  begin
    xthread_fork:=cthread_fork(func,closure);
  end;

  function xthread_yield : longint;
  begin
    xthread_yield:=cthread_yield;
  end;

  function xthread_exit(v : longint) : longint;
  begin
    xthread_exit:=cthread_exit(v);
  end;

  function xthread_set_name(t,str : longint) : longint;
  begin
    xthread_set_name:=cthread_set_name(t,str);
  end;

  function xmutex_init(m : longint) : longint;
  begin
    xmutex_init:=mutex_init(m);
  end;

  function xmutex_clear(m : longint) : longint;
  begin
    xmutex_clear:=mutex_clear(m);
  end;

  function xmutex_lock(m : longint) : longint;
  begin
    xmutex_lock:=mutex_lock(m);
  end;

  function xmutex_unlock(m : longint) : longint;
  begin
    xmutex_unlock:=mutex_unlock(m);
  end;

  function xmutex_set_name(m,str : longint) : longint;
  begin
    xmutex_set_name:=mutex_set_name(m,str);
  end;

  function xcondition_init(cv : longint) : longint;
  begin
    xcondition_init:=condition_init(cv);
  end;

  function xcondition_clear(cv : longint) : longint;
  begin
    xcondition_clear:=condition_clear(cv);
  end;

  function xcondition_wait(cv,m : longint) : longint;
  begin
    xcondition_wait:=condition_wait(cv,m);
  end;

  function xcondition_signal(cv : longint) : longint;
  begin
    xcondition_signal:=condition_signal(cv);
  end;

  function xcondition_broadcast(cv : longint) : longint;
  begin
    xcondition_broadcast:=condition_broadcast(cv);
  end;

  function xcondition_set_name(cv,str : longint) : longint;
  begin
    xcondition_set_name:=condition_set_name(cv,str);
  end;

  function xthread_fork(func,closure : longint) : longint;
  begin
    xthread_fork:=thr_create(NULL,0,func,closure,THR_NEW_LWP or THR_DETACHED,NULL);
  end;

  function xthread_yield : longint;
  begin
    xthread_yield:=thr_yield;
  end;

  function xthread_exit(v : longint) : longint;
  begin
    xthread_exit:=thr_exit(v);
  end;

  function xthread_key_create(kp,d : longint) : longint;
  begin
    xthread_key_create:=thr_keycreate(kp,d);
  end;

  function xthread_key_delete(k : longint) : longint;
  begin
    xthread_key_delete:=0;
  end;

  function xthread_key_delete(k : longint) : longint;
  begin
    xthread_key_delete:=thr_keydelete(k);
  end;

  function xthread_set_specific(k,v : longint) : longint;
  begin
    xthread_set_specific:=thr_setspecific(k,v);
  end;

  function xthread_get_specific(k,vp : longint) : longint;
  begin
    xthread_get_specific:=thr_getspecific(k,vp);
  end;

  function xmutex_init(m : longint) : longint;
  begin
    xmutex_init:=mutex_init(m,USYNC_THREAD,0);
  end;

  function xmutex_clear(m : longint) : longint;
  begin
    xmutex_clear:=mutex_destroy(m);
  end;

  function xmutex_lock(m : longint) : longint;
  begin
    xmutex_lock:=mutex_lock(m);
  end;

  function xmutex_unlock(m : longint) : longint;
  begin
    xmutex_unlock:=mutex_unlock(m);
  end;

  function xcondition_init(cv : longint) : longint;
  begin
    xcondition_init:=cond_init(cv,USYNC_THREAD,0);
  end;

  function xcondition_clear(cv : longint) : longint;
  begin
    xcondition_clear:=cond_destroy(cv);
  end;

  function xcondition_wait(cv,m : longint) : longint;
  begin
    xcondition_wait:=cond_wait(cv,m);
  end;

  function xcondition_signal(cv : longint) : longint;
  begin
    xcondition_signal:=cond_signal(cv);
  end;

  function xcondition_broadcast(cv : longint) : longint;
  begin
    xcondition_broadcast:=cond_broadcast(cv);
  end;

  function xthread_init : longint;
  begin
    xthread_init:=_Xthread_init;
  end;

    function xthread_exit(v : longint) : longint;
    begin
      xthread_exit:=ExitThread(DWORD(v));
    end;

    function xthread_key_delete(k : longint) : longint;
    begin
      xthread_key_delete:=TlsFree(k);
    end;

  function xthread_set_specific(k,v : longint) : longint;
  begin
    xthread_set_specific:=TlsSetValue(k,v);
  end;

function xthread_get_specific(k,vp : longint) : longint;
begin
  xthread_get_specific:=TlsGetValue(k);
end;

function xmutex_init(m : longint) : longint;
begin
  xmutex_init:=InitializeCriticalSection(m);
end;

function xmutex_clear(m : longint) : longint;
begin
  xmutex_clear:=DeleteCriticalSection(m);
end;

function xmutex_lock(m : longint) : longint;
begin
  xmutex_lock:=EnterCriticalSection(m);
end;

function xmutex_unlock(m : longint) : longint;
begin
  xmutex_unlock:=LeaveCriticalSection(m);
end;

    function xthread_exit(v : longint) : longint;
    begin
      xthread_exit:=pthread_exit(v);
    end;

  function xthread_key_create(kp,d : longint) : longint;
  begin
    xthread_key_create:=tis_key_create(kp,d);
  end;

function xthread_key_delete(k : longint) : longint;
begin
  xthread_key_delete:=tis_key_delete(k);
end;

function xthread_set_specific(k,v : longint) : longint;
begin
  xthread_set_specific:=tis_setspecific(k,v);
end;

    function xmutex_init(m : longint) : longint;
    begin
      xmutex_init:=tis_mutex_init(m);
    end;

  function xmutex_clear(m : longint) : longint;
  begin
    xmutex_clear:=tis_mutex_destroy(m);
  end;

function xmutex_lock(m : longint) : longint;
begin
  xmutex_lock:=tis_mutex_lock(m);
end;

function xmutex_unlock(m : longint) : longint;
begin
  xmutex_unlock:=tis_mutex_unlock(m);
end;

function xcondition_init(c : longint) : longint;
begin
  xcondition_init:=tis_cond_init(c);
end;

function xcondition_clear(c : longint) : longint;
begin
  xcondition_clear:=tis_cond_destroy(c);
end;

function xcondition_wait(c,m : longint) : longint;
begin
  xcondition_wait:=tis_cond_wait(c,m);
end;

function xcondition_signal(c : longint) : longint;
begin
  xcondition_signal:=tis_cond_signal(c);
end;

function xcondition_broadcast(c : longint) : longint;
begin
  xcondition_broadcast:=tis_cond_broadcast(c);
end;

    function xthread_exit(v : longint) : longint;
    begin
      xthread_exit:=thr_exit(v);
    end;

  function xthread_key_create(kp,d : longint) : longint;
  begin
    xthread_key_create:=thr_keycreate(kp,d);
  end;

function xthread_key_delete(k : longint) : longint;
begin
  xthread_key_delete:=thr_keydelete(k);
end;

function xthread_set_specific(k,v : longint) : longint;
begin
  xthread_set_specific:=thr_setspecific(k,v);
end;

    function xmutex_init(m : longint) : longint;
    begin
      xmutex_init:=mutex_init(m,0);
    end;

  function xmutex_clear(m : longint) : longint;
  begin
    xmutex_clear:=mutex_destroy(m);
  end;

function xmutex_lock(m : longint) : longint;
begin
  xmutex_lock:=mutex_lock(m);
end;

function xmutex_unlock(m : longint) : longint;
begin
  xmutex_unlock:=mutex_unlock(m);
end;

function xcondition_init(c : longint) : longint;
begin
  xcondition_init:=cond_init(c,0,0);
end;

function xcondition_clear(c : longint) : longint;
begin
  xcondition_clear:=cond_destroy(c);
end;

function xcondition_wait(c,m : longint) : longint;
begin
  xcondition_wait:=cond_wait(c,m);
end;

function xcondition_signal(c : longint) : longint;
begin
  xcondition_signal:=cond_signal(c);
end;

function xcondition_broadcast(c : longint) : longint;
begin
  xcondition_broadcast:=cond_broadcast(c);
end;

function xthread_yield : longint;
begin
  xthread_yield:=pthread_yield;
end;

function xthread_exit(v : longint) : longint;
begin
  xthread_exit:=pthread_exit(v);
end;

function xthread_set_specific(k,v : longint) : longint;
begin
  xthread_set_specific:=pthread_setspecific(k,v);
end;

function xmutex_clear(m : longint) : longint;
begin
  xmutex_clear:=pthread_mutex_destroy(m);
end;

function xmutex_lock(m : longint) : longint;
begin
  xmutex_lock:=pthread_mutex_lock(m);
end;

function xmutex_unlock(m : longint) : longint;
begin
  xmutex_unlock:=pthread_mutex_unlock(m);
end;

function xthread_key_create(kp,d : longint) : longint;
begin
  xthread_key_create:=pthread_key_create(kp,d);
end;

function xthread_key_delete(k : longint) : longint;
begin
  xthread_key_delete:=pthread_key_delete(k);
end;

    function xmutex_init(m : longint) : longint;
    begin
      xmutex_init:=pthread_mutex_init(m,NULL);
    end;

  function xcondition_init(c : longint) : longint;
  begin
    xcondition_init:=pthread_cond_init(c,NULL);
  end;

function xthread_key_create(kp,d : longint) : longint;
begin
  xthread_key_create:=pthread_keycreate(kp,d);
end;

function xthread_key_delete(k : longint) : longint;
begin
  xthread_key_delete:=0;
end;

function xthread_get_specific(k,vp : longint) : longint;
begin
  xthread_get_specific:=pthread_getspecific(k,vp);
end;

    function xcondition_init(c : longint) : longint;
    begin
      xcondition_init:=pthread_cond_init(c,pthread_condattr_default);
    end;

  function xcondition_clear(c : longint) : longint;
  begin
    xcondition_clear:=pthread_cond_destroy(c);
  end;

function xcondition_wait(c,m : longint) : longint;
begin
  xcondition_wait:=pthread_cond_wait(c,m);
end;

function xcondition_signal(c : longint) : longint;
begin
  xcondition_signal:=pthread_cond_signal(c);
end;

function xcondition_broadcast(c : longint) : longint;
begin
  xcondition_broadcast:=pthread_cond_broadcast(c);
end;

function xthread_have_id(id : longint) : longint;
begin
  xthread_have_id:= not (pthread_equal(id,_X_no_thread_id));
end;

    function xthread_equal(id1,id2 : longint) : longint;
    begin
      xthread_equal:=pthread_equal(id1,id2);
    end;

  function xthread_have_id(id : longint) : longint;
  begin
    xthread_have_id:= not (pthread_equal(id,0));
  end;

    function xthread_equal(id1,id2 : longint) : longint;
    begin
      xthread_equal:=pthread_equal(id1,id2);
    end;

    function xcondition_malloc : xcondition_t;
    begin
      xcondition_malloc:=xcondition_t(xmalloc(sizeof(xcondition_rec)));
    end;

  function xcondition_free(c : longint) : longint;
  begin
    xcondition_free:=xfree(pchar(c));
  end;

function xmutex_malloc : xmutex_t;
begin
  xmutex_malloc:=xmutex_t(xmalloc(sizeof(xmutex_rec)));
end;

function xmutex_free(m : longint) : longint;
begin
  xmutex_free:=xfree(pchar(m));
end;

function xthread_have_id(id : longint) : longint;
begin
  xthread_have_id:=id;
end;

    function xthread_equal(id1,id2 : longint) : longint;
    begin
      xthread_equal:=id1=id2;
    end;


end.
