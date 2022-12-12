
unit ThreadsI;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/ThreadsI.h
  The following command line parameters were used:
    /usr/include/X11/ThreadsI.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/ThreadsI.pp
}

    Type
    PBoolean  = ^Boolean;
    Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _XtThreadsI_h}
{$define _XtThreadsI_h}  
{$include <X11/XlibConf.h>}
{$ifdef XTHREADS}

  type
    LockPtr = ^_LockRec;


    ThreadAppProc = procedure (_para1:XtAppContext);cdecl;





    ThreadAppYieldLockProc = procedure (_para1:XtAppContext; _para2:PBoolean; _para3:PBoolean; _para4:Plongint);cdecl;



    ThreadAppRestoreLockProc = procedure (_para1:XtAppContext; _para2:longint; _para3:PBoolean);cdecl;
(* error 
extern void (*_XtProcessLock)(
in declaration at line 83 *)

      var
        _XtProcessUnlock : procedure ;cvar;external;

        _XtInitAppLock : procedure (_para1:XtAppContext);cvar;external;
(* error 
#define INIT_APP_LOCK(app) if(_XtInitAppLock) (*_XtInitAppLock)(app)
in define line 95 *)
(* error 
#define FREE_APP_LOCK(app) if(app && app->free_lock)(*app->free_lock)(app)
in define line 96 *)
(* error 
#define LOCK_PROCESS if(_XtProcessLock)(*_XtProcessLock)()
in define line 98 *)
(* error 
#define UNLOCK_PROCESS if(_XtProcessUnlock)(*_XtProcessUnlock)()
in define line 99 *)
(* error 
#define LOCK_APP(app) if(app && app->lock)(*app->lock)(app)
in define line 100 *)
(* error 
#define UNLOCK_APP(app) if(app && app->unlock)(*app->unlock)(app)
in define line 101 *)
(* error 
	 if(app && app->yield_lock) (*app->yield_lock)(app,push,pushed,level)
in define line 104 *)
(* error 
	 if(app && app->restore_lock) (*app->restore_lock)(app,level,pushed)
in define line 106 *)
(* error 
    XtAppContext app = (w && _XtProcessLock ? \
in define line 110 *)
(* error 
    XtAppContext app = (_XtProcessLock ? XtDisplayToApplicationContext(d): NULL)
in define line 113 *)
{$else}

{$define LOCK_PROCESS}    
{$define UNLOCK_PROCESS}    
(* error 
#define LOCK_APP(app)
in define line 119 *)
(* error 
#define UNLOCK_APP(app)
in define line 120 *)
(* error 
#define INIT_APP_LOCK(app)
in define line 122 *)
(* error 
#define FREE_APP_LOCK(app)
in define line 123 *)
(* error 
#define WIDGET_TO_APPCON(w)
in define line 125 *)
(* error 
#define DPY_TO_APPCON(d)
in define line 126 *)
{$endif}

{$endif}


implementation


end.
