
unit Xos_r;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xos_r.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xos_r.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xos_r.pp
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
    Pchar  = ^char;
    Pdirent  = ^dirent;
    Pgroup  = ^group;
    Phostent  = ^hostent;
    PLockInfoPtr  = ^LockInfoPtr;
    PLockInfoRec  = ^LockInfoRec;
    Ppasswd  = ^passwd;
    Pservent  = ^servent;
    Ptm  = ^tm;
    PXatimeparams  = ^Xatimeparams;
    PXctimeparams  = ^Xctimeparams;
    PXgetgrparams  = ^Xgetgrparams;
    PXgethostbynameparams  = ^Xgethostbynameparams;
    PXgetloginparams  = ^Xgetloginparams;
    PXgetpwparams  = ^Xgetpwparams;
    PXgetpwret  = ^Xgetpwret;
    PXgetservbynameparams  = ^Xgetservbynameparams;
    PXgtimeparams  = ^Xgtimeparams;
    PXltimeparams  = ^Xltimeparams;
    PXreaddirparams  = ^Xreaddirparams;
    PXstrtokparams  = ^Xstrtokparams;
    PXttynameparams  = ^Xttynameparams;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}






{$ifndef _XOS_R_H_}
{$define _XOS_R_H_}
{$include <X11/Xos.h>}
{$include <X11/Xfuncs.h>}
{$ifndef X_NOT_POSIX}
{$ifdef _POSIX_SOURCE}
{$include <limits.h>}
{$else}
{$define _POSIX_SOURCE}
{$include <limits.h>}
{$undef _POSIX_SOURCE}
{$endif}
{$ifndef LINE_MAX}

const
  X_LINE_MAX = 2048;  
{$else}

const
  X_LINE_MAX = LINE_MAX;  
{$endif}
{$endif}
{$endif}

{$ifndef WIN32}
{$if defined(XOS_USE_XLIB_LOCKING)}
{$ifndef XAllocIDs /* Xlibint.h does not have multiple include protection */}
type
  PLockInfoPtr = ^TLockInfoPtr;
  TLockInfoPtr = PLockInfoRec;
  var
    _Xglobal_lock : TLockInfoPtr;cvar;external;
{$endif}
{$ifndef _Xos_isThreadInitialized}

const
  _Xos_isThreadInitialized = _Xglobal_lock;  
{$endif}
{$if defined(XTHREADS_WARN) || defined(XTHREADS_FILE_LINE)}
{$ifndef XAllocIDs /* Xlibint.h does not have multiple include protection */}
{$include <X11/Xfuncproto.h>	/* for NeedFunctionPrototypes */}
{$if NeedFunctionPrototypes}

{$endif}
  var
    _XLockMutex_fn : procedure (para1:TLockInfoPtr; para2:Pchar; para3:longint);cvar;external;
{$if NeedFunctionPrototypes}

{$endif}
  var
    _XUnlockMutex_fn : procedure (para1:TLockInfoPtr; para2:Pchar; para3:longint);cvar;external;
{$endif}
{$ifndef _Xos_processLock}

function _Xos_processLock : longint; { return type might be wrong }

{$endif}
{$ifndef _Xos_processUnlock}

function _Xos_processUnlock : longint; { return type might be wrong }

{$endif}
{$else}
{$ifndef XAllocIDs /* Xlibint.h does not have multiple include protection */}
{$include <X11/Xfuncproto.h>	/* for NeedFunctionPrototypes */}
{$if NeedFunctionPrototypes}

{$endif}
  var
    _XLockMutex_fn : procedure (para1:TLockInfoPtr);cvar;external;
{$if NeedFunctionPrototypes}

{$endif}
  var
    _XUnlockMutex_fn : procedure (para1:TLockInfoPtr);cvar;external;
{$endif}
{$ifndef _Xos_processLock}
(* error 
  (_XLockMutex_fn ? ((*_XLockMutex_fn)(_Xglobal_lock), 0) : 0)
in define line 143 *)
{$endif}
{$ifndef _Xos_processUnlock}
(* error 
  (_XUnlockMutex_fn ? ((*_XUnlockMutex_fn)(_Xglobal_lock), 0) : 0)
in define line 147 *)
{$endif}
{$endif}
{$else defined(XOS_USE_XT_LOCKING)}
{$ifndef _XtThreadsI_h}
      var
        _XtProcessLock : procedure ;cvar;external;
{$endif}
{$ifndef _XtintrinsicP_h}
{$include <X11/Xfuncproto.h>	/* for NeedFunctionPrototypes */}
{$if NeedFunctionPrototypes}
{$endif}

procedure XtProcessLock;cdecl;external;
{$if NeedFunctionPrototypes}
{$endif}

procedure XtProcessUnlock;cdecl;external;
{$endif}
{$ifndef _Xos_isThreadInitialized}

    const
      _Xos_isThreadInitialized = _XtProcessLock;      
{$endif}
{$ifndef _Xos_processLock}

    function _Xos_processLock : longint; { return type might be wrong }

{$endif}
{$ifndef _Xos_processUnlock}

    function _Xos_processUnlock : longint; { return type might be wrong }

{$endif}
{$else defined(XOS_USE_NO_LOCKING)}
{$ifndef _Xos_isThreadInitialized}

    const
      _Xos_isThreadInitialized = 0;      
{$endif}
{$ifndef _Xos_processLock}

    const
      _Xos_processLock = 0;      
{$endif}
{$ifndef _Xos_processUnlock}

    const
      _Xos_processUnlock = 0;      
{$endif}
{$endif}
{$endif}


{$if defined(__sun) && defined(_POSIX_THREAD_SAFE_FUNCTIONS) && \}
(* error 
	(_POSIX_C_SOURCE - 0 < 199506L) && !defined(_POSIX_PTHREAD_SEMANTICS)
{$undef _POSIX_THREAD_SAFE_FUNCTIONS}
{$endif}


{$if defined(X_INCLUDE_PWD_H) && !defined(_XOS_INCLUDED_PWD_H)}
{$include <pwd.h>}
{$if defined(XUSE_MTSAFE_API) || defined(XUSE_MTSAFE_PWDAPI)}
in define line 218 *)
{$endif}
{$endif}
{$undef X_NEEDS_PWPARAMS}
{$if !defined(X_INCLUDE_PWD_H) || defined(_XOS_INCLUDED_PWD_H)}

{$else !defined(XTHREADS) && !defined(X_FORCE_USE_MTSAFE_API)}

{$if defined(X_NOT_POSIX) && !defined(__i386__) && !defined(SYSV)}

function getpwuid:Ppasswd;cdecl;external;
{$endif}
    type
      PXgetpwparams = ^TXgetpwparams;
      TXgetpwparams = longint;


    function _XGetpwuid(u,p : longint) : longint;    

    function _XGetpwnam(u,p : longint) : longint;    

{$else !defined(XOS_USE_MTSAFE_PWDAPI) || defined(XNO_MTSAFE_PWDAPI)}

{$define X_NEEDS_PWPARAMS}    
    type
      PXgetpwparams = ^TXgetpwparams;
      TXgetpwparams = record
          pws : Tpasswd;
          pwbuf : array[0..1023] of char;
          pwp : Ppasswd;
          len : Tsize_t;
        end;

{$if defined(__NetBSD__) || defined(__FreeBSD__) || defined(__OpenBSD__) || \}
(* error 
    defined(__APPLE__) || defined(__DragonFly__)
 in declarator_list *)
(* error 
   memcpy(&(p).pws, (p).pwp, sizeof(struct passwd));
(* error 
   memcpy(&(p).pws, (p).pwp, sizeof(struct passwd));
(* error 
   memcpy(&(p).pws, (p).pwp, sizeof(struct passwd));
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
      var
 : Tdefined;
(* error 
   (p).pws.pw_name = (p).pwbuf;
in declaration at line 256 *)
(* error 
   (p).len = strlen((p).pwp->pw_name);
in declaration at line 257 *)
(* error 
   strcpy((p).pws.pw_name, (p).pwp->pw_name);
(* error 
   strcpy((p).pws.pw_name, (p).pwp->pw_name);
 in declarator_list *)
 in declarator_list *)
(* error 
   (p).pws.pw_passwd = (p).pws.pw_name + (p).len + 1;
in declaration at line 260 *)
(* error 
   (p).len = strlen((p).pwp->pw_passwd);
in declaration at line 261 *)
(* error 
   strcpy((p).pws.pw_passwd,(p).pwp->pw_passwd);
(* error 
   strcpy((p).pws.pw_passwd,(p).pwp->pw_passwd);
 in declarator_list *)
 in declarator_list *)
(* error 
   (p).pws.pw_class = (p).pws.pw_passwd + (p).len + 1;
in declaration at line 264 *)
(* error 
   (p).len = strlen((p).pwp->pw_class);
in declaration at line 265 *)
(* error 
   strcpy((p).pws.pw_class, (p).pwp->pw_class);
(* error 
   strcpy((p).pws.pw_class, (p).pwp->pw_class);
 in declarator_list *)
 in declarator_list *)
(* error 
   (p).pws.pw_gecos = (p).pws.pw_class + (p).len + 1;
in declaration at line 268 *)
(* error 
   (p).len = strlen((p).pwp->pw_gecos);
in declaration at line 269 *)
(* error 
   strcpy((p).pws.pw_gecos, (p).pwp->pw_gecos);
(* error 
   strcpy((p).pws.pw_gecos, (p).pwp->pw_gecos);
 in declarator_list *)
 in declarator_list *)
(* error 
   (p).pws.pw_dir = (p).pws.pw_gecos + (p).len + 1;
in declaration at line 272 *)
(* error 
   (p).len = strlen((p).pwp->pw_dir);
in declaration at line 273 *)
(* error 
   strcpy((p).pws.pw_dir, (p).pwp->pw_dir);
(* error 
   strcpy((p).pws.pw_dir, (p).pwp->pw_dir);
 in declarator_list *)
 in declarator_list *)
(* error 
   (p).pws.pw_shell = (p).pws.pw_dir + (p).len + 1;
in declaration at line 276 *)
(* error 
   (p).len = strlen((p).pwp->pw_shell);
in declaration at line 277 *)
(* error 
   strcpy((p).pws.pw_shell, (p).pwp->pw_shell);
(* error 
   strcpy((p).pws.pw_shell, (p).pwp->pw_shell);
 in declarator_list *)
 in declarator_list *)
(* error 
   (p).pwp = &(p).pws;
in declaration at line 280 *)
(* error 
}
{$else}
in define line 308 *)
{$endif}
(* error 
( (_Xos_processLock), \
in define line 314 *)
(* error 
( (_Xos_processLock), \
in define line 319 *)
{$else !defined(_POSIX_THREAD_SAFE_FUNCTIONS) && !defined(__APPLE__)}
{$define X_NEEDS_PWPARAMS}    
    type
      PXgetpwparams = ^TXgetpwparams;
      TXgetpwparams = record
          pws : Tpasswd;
          pwbuf : array[0..(X_LINE_MAX)-1] of char;
        end;
{$if defined(_POSIX_REENTRANT_FUNCTIONS) || !defined(SVR4)}

    function _XGetpwuid(u,p : longint) : longint;    

    function _XGetpwnam(u,p : longint) : longint;    

{$else}


    function _XGetpwuid(u,p : longint) : longint;    

    function _XGetpwnam(u,p : longint) : longint;    

{$endif}

{$else}

{$define X_NEEDS_PWPARAMS}    
    type
      PXgetpwparams = ^TXgetpwparams;
      TXgetpwparams = record
          pws : Tpasswd;
          pwbuf : array[0..(X_LINE_MAX)-1] of char;
          pwp : Ppasswd;
        end;

      PXgetpwret = ^TXgetpwret;
      TXgetpwret = longint;

    function _XGetpwuid(u,p : longint) : longint;    

    function _XGetpwnam(u,p : longint) : longint;    

{$endif}

{$if defined(X_INCLUDE_PWD_H) && !defined(_XOS_INCLUDED_PWD_H)}
{$define _XOS_INCLUDED_PWD_H}    
{$endif}


{$undef XTHREADS_NEEDS_BYNAMEPARAMS}
{$if defined(X_INCLUDE_NETDB_H) && !defined(_XOS_INCLUDED_NETDB_H) \}
(* error 
    && !defined(WIN32)
{$include <netdb.h>}
{$if defined(XUSE_MTSAFE_API) || defined(XUSE_MTSAFE_NETDBAPI)}
in define line 388 *)
{$endif}
{$endif}
{$if !defined(X_INCLUDE_NETDB_H) || defined(_XOS_INCLUDED_NETDB_H)}

{$else !defined(XTHREADS) && !defined(X_FORCE_USE_MTSAFE_API)}

    type
      PXgethostbynameparams = ^TXgethostbynameparams;
      TXgethostbynameparams = longint;


      PXgetservbynameparams = ^TXgetservbynameparams;
      TXgetservbynameparams = longint;


    function _XGethostbyname(h,hp : longint) : longint;    

    function _XGethostbyaddr(a,al,t,hp : longint) : longint;    

    function _XGetservbyname(s,p,sp : longint) : longint;    

{$else !defined(XOS_USE_MTSAFE_NETDBAPI) || defined(XNO_MTSAFE_NETDBAPI)}

{$if defined(__NetBSD__) || defined(__FreeBSD__) || defined(__DragonFly__)}
{$include <sys/param.h>}
{$endif}
    type
      PXgethostbynameparams = ^TXgethostbynameparams;
      TXgethostbynameparams = record
          hent : Thostent;
          h_name : array[0..(MAXHOSTNAMELEN)-1] of char;
          hptr : Phostent;
        end;

      PXgetservbynameparams = ^TXgetservbynameparams;
      TXgetservbynameparams = record
          sent : Tservent;
          s_name : array[0..254] of char;
          s_proto : array[0..254] of char;
          sptr : Pservent;
        end;
{$define XTHREADS_NEEDS_BYNAMEPARAMS}    
(* error 
   (memcpy(&(hp).hent, (hp).hptr, sizeof(struct hostent)), \
in define line 429 *)
(* error 
   (memcpy(&(sp).sent, (sp).sptr, sizeof(struct servent)), \
in define line 437 *)
(* error 
   ((_Xos_processLock), \
in define line 442 *)
(* error 
   ((_Xos_processLock), \
in define line 447 *)
(* error 
   ((_Xos_processLock), \
in define line 452 *)
{$else defined(XUSE_NETDB_R_API)}

{$ifdef _POSIX_REENTRANT_FUNCTIONS}
{$ifndef _POSIX_THREAD_SAFE_FUNCTIONS}
{$endif}
{$endif}
{$ifdef _POSIX_THREAD_SAFE_FUNCTIONS}

    const
      X_POSIX_THREAD_SAFE_FUNCTIONS = 1;      
{$endif}
{$define XTHREADS_NEEDS_BYNAMEPARAMS}    
{$ifndef X_POSIX_THREAD_SAFE_FUNCTIONS}
    type
      PXgethostbynameparams = ^TXgethostbynameparams;
      TXgethostbynameparams = record
          hent : Thostent;
          hbuf : array[0..(X_LINE_MAX)-1] of char;
          herr : longint;
        end;

      PXgetservbynameparams = ^TXgetservbynameparams;
      TXgetservbynameparams = record
          sent : Tservent;
          sbuf : array[0..(X_LINE_MAX)-1] of char;
        end;

    function _XGethostbyname(h,hp : longint) : longint;    

    function _XGethostbyaddr(a,al,t,hp : longint) : longint;    

    function _XGetservbyname(s,p,sp : longint) : longint;    

{$else}
    type
      PXgethostbynameparams = ^TXgethostbynameparams;
      TXgethostbynameparams = record
          hent : Thostent;
          hdata : Thostent_data;
        end;

      PXgetservbynameparams = ^TXgetservbynameparams;
      TXgetservbynameparams = record
          sent : Tservent;
          sdata : Tservent_data;
        end;
(* error 
  (bzero((char*)&(hp).hdata,sizeof((hp).hdata)),	\
in define line 496 *)
(* error 
  (bzero((char*)&(hp).hdata,sizeof((hp).hdata)),	\
in define line 499 *)
(* error 
  (bzero((char*)&(sp).sdata,sizeof((sp).sdata)),	\
in define line 502 *)
{$endif}
{$ifdef X_POSIX_THREAD_SAFE_FUNCTIONS}
{$undef X_POSIX_THREAD_SAFE_FUNCTIONS}
{$endif}
{$else}

    type
      PXgethostbynameparams = ^TXgethostbynameparams;
      TXgethostbynameparams = longint;


      PXgetservbynameparams = ^TXgetservbynameparams;
      TXgetservbynameparams = longint;


    function _XGethostbyname(h,hp : longint) : longint;    

    function _XGethostbyaddr(a,al,t,hp : longint) : longint;    

    function _XGetservbyname(s,p,sp : longint) : longint;    

{$endif}

{$if defined(X_INCLUDE_NETDB_H) && !defined(_XOS_INCLUDED_NETDB_H)}
{$define _XOS_INCLUDED_NETDB_H}    
{$endif}


{$if defined(X_INCLUDE_DIRENT_H) && !defined(_XOS_INCLUDED_DIRENT_H)}
{$include <sys/types.h>}
{$if !defined(X_NOT_POSIX) || defined(SYSV)}
{$include <dirent.h>}
{$else}
{$include <sys/dir.h>}
{$ifndef dirent}

    const
      dirent = direct;      
{$endif}
{$endif}
{$if defined(XUSE_MTSAFE_API) || defined(XUSE_MTSAFE_DIRENTAPI)}

    const
      XOS_USE_MTSAFE_DIRENTAPI = 1;      
{$endif}
{$endif}
{$if !defined(X_INCLUDE_DIRENT_H) || defined(_XOS_INCLUDED_DIRENT_H)}

{$else !defined(XTHREADS) && !defined(X_FORCE_USE_MTSAFE_API)}

    type
      PXreaddirparams = ^TXreaddirparams;
      TXreaddirparams = longint;


    function _XReaddir(d,p : longint) : longint;    

{$else !defined(XOS_USE_MTSAFE_DIRENTAPI) || defined(XNO_MTSAFE_DIRENTAPI)}

{$ifdef _POSIX_PATH_MAX}
{$else defined(NAME_MAX)}
{$else}
{$endif}
    type
      PXreaddirparams = ^TXreaddirparams;
      TXreaddirparams = record
          result : Pdirent;
          dir_entry : Tdirent;
          buf : array[0..(_POSIX_PATH_MAX)-1] of char;
          buf : array[0..(NAME_MAX)-1] of char;
          buf : array[0..254] of char;
        end;
(* error 
 ( (_Xos_processLock),						 \
in define line 580 *)
{$else}
{$ifdef _POSIX_PATH_MAX}
{$else defined(NAME_MAX)}
{$else}
{$endif}
    type
      PXreaddirparams = ^TXreaddirparams;
      TXreaddirparams = record
          result : Pdirent;
          dir_entry : Tdirent;
          buf : array[0..(_POSIX_PATH_MAX)-1] of char;
          buf : array[0..(NAME_MAX)-1] of char;
          buf : array[0..254] of char;
        end;
{$if defined(_POSIX_THREAD_SAFE_FUNCTIONS) || defined(__APPLE__)}


    function _XReaddir(d,p : longint) : longint;    

{$else defined(_POSIX_REENTRANT_FUNCTIONS)}


    function _XReaddir(d,p : longint) : longint;    

{$else defined(SVR4)}


    function _XReaddir(d,p : longint) : longint;    

{$else}

(* error 
    ( (_Xos_processLock),						\
in define line 615 *)
{$endif}
{$endif}

{$if defined(X_INCLUDE_DIRENT_H) && !defined(_XOS_INCLUDED_DIRENT_H)}
{$define _XOS_INCLUDED_DIRENT_H}    
{$endif}


{$if defined(X_INCLUDE_UNISTD_H) && !defined(_XOS_INCLUDED_UNISTD_H)}

{$if defined(XUSE_MTSAFE_API) || defined(XUSE_MTSAFE_UNISTDAPI)}

    const
      XOS_USE_MTSAFE_UNISTDAPI = 1;      
{$endif}
{$endif}
{$if !defined(X_INCLUDE_UNISTD_H) || defined(_XOS_INCLUDED_UNISTD_H)}

{$else !defined(XTHREADS) && !defined(X_FORCE_USE_MTSAFE_API)}

    type
      PXgetloginparams = ^TXgetloginparams;
      TXgetloginparams = longint;


      PXttynameparams = ^TXttynameparams;
      TXttynameparams = longint;


    function _XGetlogin(p : longint) : longint;    

    function _XTtyname(f : longint) : longint;    

{$else !defined(XOS_USE_MTSAFE_UNISTDAPI) || defined(XNO_MTSAFE_UNISTDAPI)}

{$if defined(MAXLOGNAME)}
{$else defined(LOGIN_NAME_MAX)}
{$else}
{$endif}
    type
      PXgetloginparams = ^TXgetloginparams;
      TXgetloginparams = record
          result : Pchar;
          buf : array[0..(MAXLOGNAME)-1] of char;
          buf : array[0..(LOGIN_NAME_MAX)-1] of char;
          buf : array[0..63] of char;
        end;
{$ifdef TTY_NAME_MAX}
{$else defined(_POSIX_TTY_NAME_MAX)}
{$else defined(_POSIX_PATH_MAX)}
{$else}
{$endif}
    type
      PXttynameparams = ^TXttynameparams;
      TXttynameparams = record
          result : Pchar;
          buf : array[0..(TTY_NAME_MAX)-1] of char;
          buf : array[0..(_POSIX_TTY_NAME_MAX)-1] of char;
          buf : array[0..(_POSIX_PATH_MAX)-1] of char;
          buf : array[0..255] of char;
        end;
(* error 
 ( (_Xos_processLock), \
in define line 689 *)
(* error 
 ( (_Xos_processLock), \
in define line 697 *)
{$else defined(_POSIX_THREAD_SAFE_FUNCTIONS) || defined(_POSIX_REENTRANT_FUNCTIONS)}

{$if defined(MAXLOGNAME)}
{$else defined(LOGIN_NAME_MAX)}
{$else}
{$endif}
    type
      PXgetloginparams = ^TXgetloginparams;
      TXgetloginparams = record
          buf : array[0..(MAXLOGNAME)-1] of char;
          buf : array[0..(LOGIN_NAME_MAX)-1] of char;
          buf : array[0..63] of char;
        end;
{$ifdef TTY_NAME_MAX}
{$else defined(_POSIX_TTY_NAME_MAX)}
{$else defined(_POSIX_PATH_MAX)}
{$else}
{$endif}
    type
      PXttynameparams = ^TXttynameparams;
      TXttynameparams = record
          buf : array[0..(TTY_NAME_MAX)-1] of char;
          buf : array[0..(_POSIX_TTY_NAME_MAX)-1] of char;
          buf : array[0..(_POSIX_PATH_MAX)-1] of char;
          buf : array[0..255] of char;
        end;

    function _XGetlogin(p : longint) : longint;    

    function _XTtyname(f,p : longint) : longint;    

{$else}

{$if defined(MAXLOGNAME)}
{$else defined(LOGIN_NAME_MAX)}
{$else}
{$endif}
    type
      PXgetloginparams = ^TXgetloginparams;
      TXgetloginparams = record
          buf : array[0..(MAXLOGNAME)-1] of char;
          buf : array[0..(LOGIN_NAME_MAX)-1] of char;
          buf : array[0..63] of char;
        end;
{$ifdef TTY_NAME_MAX}
{$else defined(_POSIX_TTY_NAME_MAX)}
{$else defined(_POSIX_PATH_MAX)}
{$else}
{$endif}
    type
      PXttynameparams = ^TXttynameparams;
      TXttynameparams = record
          buf : array[0..(TTY_NAME_MAX)-1] of char;
          buf : array[0..(_POSIX_TTY_NAME_MAX)-1] of char;
          buf : array[0..(_POSIX_PATH_MAX)-1] of char;
          buf : array[0..255] of char;
        end;

    function _XGetlogin(p : longint) : longint;    

    function _XTtyname(f,p : longint) : longint;    

{$endif}

{$if defined(X_INCLUDE_UNISTD_H) && !defined(_XOS_INCLUDED_UNISTD_H)}
{$define _XOS_INCLUDED_UNISTD_H}    
{$endif}


{$if defined(X_INCLUDE_STRING_H) && !defined(_XOS_INCLUDED_STRING_H)}

{$if defined(XUSE_MTSAFE_API) || defined(XUSE_MTSAFE_STRINGAPI)}

    const
      XOS_USE_MTSAFE_STRINGAPI = 1;      
{$endif}
{$endif}
{$if !defined(X_INCLUDE_STRING_H) || defined(_XOS_INCLUDED_STRING_H)}

{$else !defined(XTHREADS) && !defined(X_FORCE_USE_MTSAFE_API)}

    type
      PXstrtokparams = ^TXstrtokparams;
      TXstrtokparams = longint;

(* error 
 ( p = 0, (void)p, strtok((s1),(s2)) )
in define line 794 *)
{$else !defined(XOS_USE_MTSAFE_STRINGAPI) || defined(XNO_MTSAFE_STRINGAPI)}

    type
      PXstrtokparams = ^TXstrtokparams;
      TXstrtokparams = Pchar;
(* error 
 ( (_Xos_processLock), \
in define line 803 *)
{$else}

    type
      PXstrtokparams = ^TXstrtokparams;
      TXstrtokparams = Pchar;

    function _XStrtok(s1,s2,p : longint) : longint;    

{$endif}



{$if defined(X_INCLUDE_TIME_H) && !defined(_XOS_INCLUDED_TIME_H)}
{$include <time.h>}
{$if defined(XUSE_MTSAFE_API) || defined(XUSE_MTSAFE_TIMEAPI)}

    const
      XOS_USE_MTSAFE_TIMEAPI = 1;      
{$endif}
{$endif}
{$if !defined(X_INCLUDE_TIME_H) || defined(_XOS_INCLUDED_TIME_H)}

{$else !defined(XTHREADS) && !defined(X_FORCE_USE_MTSAFE_API)}

    type
      PXatimeparams = ^TXatimeparams;
      TXatimeparams = longint;


    function _XAsctime(t,p : longint) : longint;    

    type
      PXctimeparams = ^TXctimeparams;
      TXctimeparams = longint;


    function _XCtime(t,p : longint) : longint;    

    type
      PXgtimeparams = ^TXgtimeparams;
      TXgtimeparams = longint;


    function _XGmtime(t,p : longint) : longint;    

    type
      PXltimeparams = ^TXltimeparams;
      TXltimeparams = longint;


    function _XLocaltime(t,p : longint) : longint;    

{$else !defined(XOS_USE_MTSAFE_TIMEAPI) || defined(XNO_MTSAFE_TIMEAPI)}

{$ifdef TIMELEN}
{$else}
{$endif}
    type
      PXctimeparams = ^TXctimeparams;
      TXctimeparams = record
          buf : array[0..(TIMELEN)-1] of char;
          buf : array[0..25] of char;
          result : Pchar;
        end;
      TXatimeparams = TXctimeparams;
      PXatimeparams = ^TXatimeparams;

      PXgtimeparams = ^TXgtimeparams;
      TXgtimeparams = record
          buf : Ttm;
          result : Ptm;
        end;
      TXltimeparams = TXgtimeparams;
      PXltimeparams = ^TXltimeparams;
(* error 
 ( (_Xos_processLock), \
in define line 873 *)
(* error 
 ( (_Xos_processLock), \
in define line 880 *)
(* error 
 ( (_Xos_processLock), \
in define line 887 *)
(* error 
 ( (_Xos_processLock), \
in define line 894 *)
{$else !defined(_POSIX_THREAD_SAFE_FUNCTIONS) &&  defined(hpV4)}

{$ifdef TIMELEN}
    type
      PXatimeparams = ^TXatimeparams;
      TXatimeparams = array[0..(TIMELEN)-1] of char;

      PXctimeparams = ^TXctimeparams;
      TXctimeparams = array[0..(TIMELEN)-1] of char;
{$else}
    type
      PXatimeparams = ^TXatimeparams;
      TXatimeparams = array[0..25] of char;

      PXctimeparams = ^TXctimeparams;
      TXctimeparams = array[0..25] of char;
{$endif}
    type
      Ttm = TXgtimeparams;
      Ttm = TXltimeparams;

    function _XAsctime(t,p : longint) : longint;    

    function _XCtime(t,p : longint) : longint;    

    function _XGmtime(t,p : longint) : longint;    

    function _XLocaltime(t,p : longint) : longint;    

{$else !defined(_POSIX_THREAD_SAFE_FUNCTIONS) && defined(__sun)}

{$ifdef TIMELEN}
    type
      PXatimeparams = ^TXatimeparams;
      TXatimeparams = array[0..(TIMELEN)-1] of char;

      PXctimeparams = ^TXctimeparams;
      TXctimeparams = array[0..(TIMELEN)-1] of char;
{$else}
    type
      PXatimeparams = ^TXatimeparams;
      TXatimeparams = array[0..25] of char;

      PXctimeparams = ^TXctimeparams;
      TXctimeparams = array[0..25] of char;
{$endif}
    type
      Ttm = TXgtimeparams;
      Ttm = TXltimeparams;

    function _XAsctime(t,p : longint) : longint;    

    function _XCtime(t,p : longint) : longint;    

    function _XGmtime(t,p : longint) : longint;    

    function _XLocaltime(t,p : longint) : longint;    

{$else}


{$ifdef TIMELEN}
    type
      PXatimeparams = ^TXatimeparams;
      TXatimeparams = array[0..(TIMELEN)-1] of char;

      PXctimeparams = ^TXctimeparams;
      TXctimeparams = array[0..(TIMELEN)-1] of char;
{$else}
    type
      PXatimeparams = ^TXatimeparams;
      TXatimeparams = array[0..25] of char;

      PXctimeparams = ^TXctimeparams;
      TXctimeparams = array[0..25] of char;
{$endif}
    type
      Ttm = TXgtimeparams;
      Ttm = TXltimeparams;

    function _XAsctime(t,p : longint) : longint;    

    function _XCtime(t,p : longint) : longint;    

    function _XGmtime(t,p : longint) : longint;    

    function _XLocaltime(t,p : longint) : longint;    

{$endif}

{$if defined(X_INCLUDE_TIME_H) && !defined(_XOS_INCLUDED_TIME_H)}
{$define _XOS_INCLUDED_TIME_H}    
{$endif}


{$if defined(X_INCLUDE_GRP_H) && !defined(_XOS_INCLUDED_GRP_H)}
{$include <grp.h>}
{$if defined(XUSE_MTSAFE_API) || defined(XUSE_MTSAFE_GRPAPI)}

    const
      XOS_USE_MTSAFE_GRPAPI = 1;      
{$endif}
{$endif}
{$if !defined(X_INCLUDE_GRP_H) || defined(_XOS_INCLUDED_GRP_H)}

{$else !defined(XTHREADS) && !defined(X_FORCE_USE_MTSAFE_API)}

    type
      PXgetgrparams = ^TXgetgrparams;
      TXgetgrparams = longint;


    function _XGetgrgid(g,p : longint) : longint;    

    function _XGetgrnam(n,p : longint) : longint;    

{$else !defined(XOS_USE_MTSAFE_GRPAPI) || defined(XNO_MTSAFE_GRPAPI)}


    type
      PXgetgrparams = ^TXgetgrparams;
      TXgetgrparams = record
          grp : Tgroup;
          buf : array[0..(X_LINE_MAX)-1] of char;
          pgrp : Pgroup;
          len : Tsize_t;
        end;
{$ifdef SVR4}

(* error 
 ( memcpy(&(p).grp, (p).pgrp, sizeof(struct group)), \
in define line 1021 *)
{$else}
(* error 
 ( memcpy(&(p).grp, (p).pgrp, sizeof(struct group)), \
in define line 1028 *)
{$endif}
(* error 
 ( (_Xos_processLock), \
in define line 1034 *)
(* error 
 ( (_Xos_processLock), \
in define line 1039 *)
{$else !defined(_POSIX_THREAD_SAFE_FUNCTIONS) && defined(__sun)}


    type
      PXgetgrparams = ^TXgetgrparams;
      TXgetgrparams = record
          grp : Tgroup;
          buf : array[0..(X_LINE_MAX)-1] of char;
        end;

    function _XGetgrgid(g,p : longint) : longint;    

    function _XGetgrnam(n,p : longint) : longint;    

{$else !defined(_POSIX_THREAD_SAFE_FUNCTIONS)}


    type
      PXgetgrparams = ^TXgetgrparams;
      TXgetgrparams = record
          grp : Tgroup;
          buf : array[0..(X_LINE_MAX)-1] of char;
        end;

    function _XGetgrgid(g,p : longint) : longint;    

    function _XGetgrnam(n,p : longint) : longint;    

{$else}


    type
      PXgetgrparams = ^TXgetgrparams;
      TXgetgrparams = record
          grp : Tgroup;
          buf : array[0..(X_LINE_MAX)-1] of char;
          result : Pgroup;
        end;

    function _XGetgrgid(g,p : longint) : longint;    

    function _XGetgrnam(n,p : longint) : longint;    

{$endif}
{$if defined(X_INCLUDE_GRP_H) && !defined(_XOS_INCLUDED_GRP_H)}
{$define _XOS_INCLUDED_GRP_H}    
{$endif}

implementation

function _Xos_processLock : longint; { return type might be wrong }
  var
     if_local1 : longint;
  (* result types are not known *)
  begin
    if _XLockMutex_fn then
      if_local1:=_XLockMutex_fn(_Xglobal_lock__FILE____LINE__)
    else
      if_local1:=0;
    _Xos_processLock:=if_local1;
  end;

function _Xos_processUnlock : longint; { return type might be wrong }
  var
     if_local1 : longint;
  (* result types are not known *)
  begin
    if _XUnlockMutex_fn then
      if_local1:=_XUnlockMutex_fn(_Xglobal_lock__FILE____LINE__)
    else
      if_local1:=0;
    _Xos_processUnlock:=if_local1;
  end;

    function _Xos_processLock : longint; { return type might be wrong }
      begin
        _Xos_processLock:=XtProcessLock;
      end;

    function _Xos_processUnlock : longint; { return type might be wrong }
      begin
        _Xos_processUnlock:=XtProcessUnlock;
      end;

    function _XGetpwuid(u,p : longint) : longint;
    begin
      _XGetpwuid:=getpwuid(u);
    end;

    function _XGetpwnam(u,p : longint) : longint;
    begin
      _XGetpwnam:=getpwnam(u);
    end;

    function _XGetpwuid(u,p : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      if (getpwuid_r(u,@(p.pws),p.pwbuf,sizeof(p.pwbuf)))=(-(1)) then
        if_local1:=NULL
      else
        if_local1:=@(p.pws);
      _XGetpwuid:=if_local1;
    end;

    function _XGetpwnam(u,p : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      if (getpwnam_r(u,@(p.pws),p.pwbuf,sizeof(p.pwbuf)))=(-(1)) then
        if_local1:=NULL
      else
        if_local1:=@(p.pws);
      _XGetpwnam:=if_local1;
    end;

    function _XGetpwuid(u,p : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      if (getpwuid_r(u,@(p.pws),p.pwbuf,sizeof(p.pwbuf)))=NULL then
        if_local1:=NULL
      else
        if_local1:=@(p.pws);
      _XGetpwuid:=if_local1;
    end;

    function _XGetpwnam(u,p : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      if (getpwnam_r(u,@(p.pws),p.pwbuf,sizeof(p.pwbuf)))=NULL then
        if_local1:=NULL
      else
        if_local1:=@(p.pws);
      _XGetpwnam:=if_local1;
    end;

    function _XGetpwuid(u,p : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      if (getpwuid_r(u,@(p.pws),p.pwbuf,sizeof(p.pwbuf),@(p.pwp)))=0 then
        if_local1:=p.pwp
      else
        if_local1:=NULL;
      _XGetpwuid:=if_local1;
    end;

    function _XGetpwnam(u,p : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      if (getpwnam_r(u,@(p.pws),p.pwbuf,sizeof(p.pwbuf),@(p.pwp)))=0 then
        if_local1:=p.pwp
      else
        if_local1:=NULL;
      _XGetpwnam:=if_local1;
    end;

    function _XGethostbyname(h,hp : longint) : longint;
    begin
      _XGethostbyname:=gethostbyname(h);
    end;

    function _XGethostbyaddr(a,al,t,hp : longint) : longint;
    begin
      _XGethostbyaddr:=gethostbyaddr(a,al,t);
    end;

    function _XGetservbyname(s,p,sp : longint) : longint;
    begin
      _XGetservbyname:=getservbyname(s,p);
    end;

    function _XGethostbyname(h,hp : longint) : longint;
    begin
      _XGethostbyname:=gethostbyname_r(h,@(hp.hent),hp.hbuf,sizeof(hp.hbuf),@(hp.herr));
    end;

    function _XGethostbyaddr(a,al,t,hp : longint) : longint;
    begin
      _XGethostbyaddr:=gethostbyaddr_r(a,al,t,@(hp.hent),hp.hbuf,sizeof(hp.hbuf),@(hp.herr));
    end;

    function _XGetservbyname(s,p,sp : longint) : longint;
    begin
      _XGetservbyname:=getservbyname_r(s,p,@(sp.sent),sp.sbuf,sizeof(sp.sbuf));
    end;

    function _XGethostbyname(h,hp : longint) : longint;
    begin
      _XGethostbyname:=gethostbyname(h);
    end;

    function _XGethostbyaddr(a,al,t,hp : longint) : longint;
    begin
      _XGethostbyaddr:=gethostbyaddr(a,al,t);
    end;

    function _XGetservbyname(s,p,sp : longint) : longint;
    begin
      _XGetservbyname:=getservbyname(s,p);
    end;

    function _XReaddir(d,p : longint) : longint;
    begin
      _XReaddir:=readdir(d);
    end;

    function _XReaddir(d,p : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      if readdir_r(d,@(p.dir_entry),@(p.result)) then
        if_local1:=NULL
      else
        if_local1:=p.result;
      _XReaddir:=if_local1;
    end;

    function _XReaddir(d,p : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      if readdir_r(d,@(p.dir_entry)) then
        if_local1:=NULL
      else
        if_local1:=@(p.dir_entry);
      _XReaddir:=if_local1;
    end;

    function _XReaddir(d,p : longint) : longint;
    begin
      _XReaddir:=readdir_r(d,@(p.dir_entry));
    end;

    function _XGetlogin(p : longint) : longint;
    begin
      _XGetlogin:=getlogin;
    end;

    function _XTtyname(f : longint) : longint;
    begin
      _XTtyname:=ttyname(f);
    end;

    function _XGetlogin(p : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      if getlogin_r(p.buf,sizeof(p.buf)) then
        if_local1:=NULL
      else
        if_local1:=p.buf;
      _XGetlogin:=if_local1;
    end;

    function _XTtyname(f,p : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      if ttyname_r(f,p.buf,sizeof(p.buf)) then
        if_local1:=NULL
      else
        if_local1:=p.buf;
      _XTtyname:=if_local1;
    end;

    function _XGetlogin(p : longint) : longint;
    begin
      _XGetlogin:=getlogin_r(p.buf,sizeof(p.buf));
    end;

    function _XTtyname(f,p : longint) : longint;
    begin
      _XTtyname:=ttyname_r(f,p.buf,sizeof(p.buf));
    end;

    function _XStrtok(s1,s2,p : longint) : longint;
    begin
      _XStrtok:=strtok_r(s1,s2,@(p));
    end;

    function _XAsctime(t,p : longint) : longint;
    begin
      _XAsctime:=asctime(t);
    end;

    function _XCtime(t,p : longint) : longint;
    begin
      _XCtime:=ctime(t);
    end;

    function _XGmtime(t,p : longint) : longint;
    begin
      _XGmtime:=gmtime(t);
    end;

    function _XLocaltime(t,p : longint) : longint;
    begin
      _XLocaltime:=localtime(t);
    end;

    function _XAsctime(t,p : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      if asctime_r(t,p,sizeof(p)) then
        if_local1:=NULL
      else
        if_local1:=p;
      _XAsctime:=if_local1;
    end;

    function _XCtime(t,p : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      if ctime_r(t,p,sizeof(p)) then
        if_local1:=NULL
      else
        if_local1:=p;
      _XCtime:=if_local1;
    end;

    function _XGmtime(t,p : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      if gmtime_r(t,@(p)) then
        if_local1:=NULL
      else
        if_local1:=@(p);
      _XGmtime:=if_local1;
    end;

    function _XLocaltime(t,p : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      if localtime_r(t,@(p)) then
        if_local1:=NULL
      else
        if_local1:=@(p);
      _XLocaltime:=if_local1;
    end;

    function _XAsctime(t,p : longint) : longint;
    begin
      _XAsctime:=asctime_r(t,p,sizeof(p));
    end;

    function _XCtime(t,p : longint) : longint;
    begin
      _XCtime:=ctime_r(t,p,sizeof(p));
    end;

    function _XGmtime(t,p : longint) : longint;
    begin
      _XGmtime:=gmtime_r(t,@(p));
    end;

    function _XLocaltime(t,p : longint) : longint;
    begin
      _XLocaltime:=localtime_r(t,@(p));
    end;

    function _XAsctime(t,p : longint) : longint;
    begin
      _XAsctime:=asctime_r(t,p);
    end;

    function _XCtime(t,p : longint) : longint;
    begin
      _XCtime:=ctime_r(t,p);
    end;

    function _XGmtime(t,p : longint) : longint;
    begin
      _XGmtime:=gmtime_r(t,@(p));
    end;

    function _XLocaltime(t,p : longint) : longint;
    begin
      _XLocaltime:=localtime_r(t,@(p));
    end;

    function _XGetgrgid(g,p : longint) : longint;
    begin
      _XGetgrgid:=getgrgid(g);
    end;

    function _XGetgrnam(n,p : longint) : longint;
    begin
      _XGetgrnam:=getgrnam(n);
    end;

    function _XGetgrgid(g,p : longint) : longint;
    begin
      _XGetgrgid:=getgrgid_r(g,@(p.grp),p.buf,sizeof(p.buf));
    end;

    function _XGetgrnam(n,p : longint) : longint;
    begin
      _XGetgrnam:=getgrnam_r(n,@(p.grp),p.buf,sizeof(p.buf));
    end;

    function _XGetgrgid(g,p : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      if getgrgid_r(g,@(p.grp),p.buf,sizeof(p.buf)) then
        if_local1:=NULL
      else
        if_local1:=@(p.grp);
      _XGetgrgid:=if_local1;
    end;

    function _XGetgrnam(n,p : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      if getgrnam_r(n,@(p.grp),p.buf,sizeof(p.buf)) then
        if_local1:=NULL
      else
        if_local1:=@(p.grp);
      _XGetgrnam:=if_local1;
    end;

    function _XGetgrgid(g,p : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      if getgrgid_r(g,@(p.grp),p.buf,sizeof(p.buf),@(p.result)) then
        if_local1:=NULL
      else
        if_local1:=p.result;
      _XGetgrgid:=if_local1;
    end;

    function _XGetgrnam(n,p : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      if getgrnam_r(n,@(p.grp),p.buf,sizeof(p.buf),@(p.result)) then
        if_local1:=NULL
      else
        if_local1:=p.result;
      _XGetgrnam:=if_local1;
    end;


end.
