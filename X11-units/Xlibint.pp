
unit Xlibint;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xlibint.h
  The following command line parameters were used:
    /usr/include/X11/Xlibint.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xlibint.pp
}

Type
P_XAsyncHandler  = ^_XAsyncHandler;
P_XConnectionInfo  = ^_XConnectionInfo;
P_XDisplay  = ^_XDisplay;
P_XQEvent  = ^_XQEvent;
Pchar  = ^char;
PDisplay  = ^Display;
Plongint  = ^longint;
PxChangeWindowAttributesReq  = ^xChangeWindowAttributesReq;
PxError  = ^xError;
PXErrorEvent  = ^XErrorEvent;
PXEvent  = ^XEvent;
PXExtCodes  = ^XExtCodes;
PXExtData  = ^XExtData;
PXFontStruct  = ^XFontStruct;
PXGenericEventCookie  = ^XGenericEventCookie;
PxGenericReply  = ^xGenericReply;
PXID  = ^XID;
PXModifierKeymap  = ^XModifierKeymap;
PXRectangle  = ^XRectangle;
PxReply  = ^xReply;
PXSetWindowAttributes  = ^XSetWindowAttributes;
PXWindowAttributes  = ^XWindowAttributes;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _X11_XLIBINT_H_}

  const
    _X11_XLIBINT_H_ = 1;    

{$include <stdint.h>}
{$include <X11/Xlib.h>}
{$include <X11/Xproto.h>		/* to declare xEvent */}
{$include <X11/XlibConf.h>	/* for configured options like XTHREADS */}

{$ifdef __clang__}
{$endif}
{$ifdef WIN32}

  const
    _XFlush = _XFlushIt;    
{$endif}







  type
    _XGC = record
        ext_data : ^XExtData;
        gid : GContext;
        rects : Bool;
        dashes : Bool;
        dirty : dword;
        values : XGCValues;
      end;




































(* error 
	volatile unsigned long flags;	   /* internal connection flags */
 in declarator_list *)
























































{$ifndef LONG64}
{$endif}

  type
    _XDisplay = record
        ext_data : ^XExtData;
        free_funcs : ^_XFreeFuncs;
        fd : longint;
        conn_checker : longint;
        proto_major_version : longint;
        proto_minor_version : longint;
        vendor : ^char;
        resource_base : XID;
        resource_mask : XID;
        resource_id : XID;
        resource_shift : longint;
        resource_alloc : function (_para1:P_XDisplay):XID;cdecl;
        byte_order : longint;
        bitmap_unit : longint;
        bitmap_pad : longint;
        bitmap_bit_order : longint;
        nformats : longint;
        pixmap_format : ^ScreenFormat;
        vnumber : longint;
        release : longint;
        head : ^_XSQEvent;
        tail : ^_XSQEvent;
        qlen : longint;
        last_request_read : dword;
        request : dword;
        last_req : ^char;
        buffer : ^char;
        bufptr : ^char;
        bufmax : ^char;
        max_request_size : dword;
        db : ^_XrmHashBucketRec;
        synchandler : function (_para1:P_XDisplay):longint;cdecl;
        display_name : ^char;
        default_screen : longint;
        nscreens : longint;
        screens : ^Screen;
        motion_buffer : dword;
;
        min_keycode : longint;
        max_keycode : longint;
        keysyms : ^KeySym;
        modifiermap : ^XModifierKeymap;
        keysyms_per_keycode : longint;
        xdefaults : ^char;
        scratch_buffer : ^char;
        scratch_length : dword;
        ext_number : longint;
        ext_procs : ^_XExten;
        event_vec : array[0..127] of function (_para1:PDisplay; _para2:PXEvent; _para3:PxEvent):Bool;cdecl;
        wire_vec : array[0..127] of function (_para1:PDisplay; _para2:PXEvent; _para3:PxEvent):Status;cdecl;
        lock_meaning : KeySym;
        lock : ^_XLockInfo;
        async_handlers : ^_XInternalAsync;
        bigreq_size : dword;
        lock_fns : ^_XLockPtrs;
        idlist_alloc : procedure (_para1:PDisplay; _para2:PXID; _para3:longint);cdecl;
        key_bindings : ^_XKeytrans;
        cursor_font : Font;
        atoms : ^_XDisplayAtoms;
        mode_switch : dword;
        num_lock : dword;
        context_db : ^_XContextDB;
        error_vec : ^function (_para1:PDisplay; _para2:PXErrorEvent; _para3:PxError):Bool;cdecl;
        cms : record
            defaultCCCs : XPointer;
            clientCmaps : XPointer;
            perVisualIntensityMaps : XPointer;
          end;
        im_filters : ^_XIMFilter;
        qfree : ^_XSQEvent;
        next_event_serial_num : dword;
        flushes : ^_XExten;
        im_fd_info : ^_XConnectionInfo;
        im_fd_length : longint;
        conn_watchers : ^_XConnWatchInfo;
        watcher_count : longint;
        filedes : XPointer;
        savedsynchandler : function (_para1:PDisplay):longint;cdecl;
        resource_max : XID;
        xcmisc_opcode : longint;
        xkb_info : ^_XkbInfoRec;
        trans_conn : ^_XtransConnInfo;
        xcb : ^_X11XCBPrivate;
        next_cookie : dword;
        generic_event_vec : array[0..127] of function (_para1:PDisplay; _para2:PXGenericEventCookie; _para3:PxEvent):Bool;cdecl;
        generic_event_copy_vec : array[0..127] of function (_para1:PDisplay; _para2:PXGenericEventCookie; _para3:PXGenericEventCookie):Bool;cdecl;
        cookiejar : pointer;
        last_request_read_upper32bit : dword;
        request_upper32bit : dword;
        error_threads : ^_XErrorThreadInfo;
        exit_handler : XIOErrorExitHandler;
        exit_handler_data : pointer;
      end;


  function XAllocIDs(dpy,ids,n : longint) : longint;  


{$ifndef LONG64}


  function X_DPY_GET_REQUEST(dpy : longint) : longint;  

(* error 
            (value) & 0xFFFFFFFFUL), \
in define line 235 *)
    function X_DPY_GET_LAST_REQUEST_READ(dpy : longint) : longint;    

(* error 
            (value) & 0xFFFFFFFFUL), \
in define line 254 *)

    function X_DPY_WIDEN_UNSIGNED_LONG_SEQ(dpy,ulseq : longint) : longint;    

(* error 
        ((struct _XDisplay*)dpy)->request++, \
in define line 287 *)
(* error 
                ((struct _XDisplay*)dpy)->request--, /* wrap */ \
in define line 301 *)
{$else}


    function X_DPY_GET_REQUEST(dpy : longint) : longint;    

(* error 
    ((struct _XDisplay*)dpy)->request = (value)
in define line 308 *)
    function X_DPY_GET_LAST_REQUEST_READ(dpy : longint) : longint;    

(* error 
    ((struct _XDisplay*)dpy)->last_request_read = (value)
in define line 313 *)
    function X_DPY_WIDEN_UNSIGNED_LONG_SEQ(dpy,ulseq : longint) : longint;    

(* error 
#define X_DPY_REQUEST_INCREMENT(dpy) ((struct _XDisplay*)dpy)->request++
in define line 317 *)
(* error 
#define X_DPY_REQUEST_DECREMENT(dpy) ((struct _XDisplay*)dpy)->request--
in define line 318 *)
{$endif}
{$ifndef _XEVENT_}



    type
      _XSQEvent = record
          next : ^_XSQEvent;
          event : XEvent;
          qserial_num : dword;
        end;
      _XQEvent = _XSQEvent;
{$endif}
{$include <X11/Xproto.h>}
{$ifdef __sgi}

{$define _SGI_MP_SOURCE}    
{$endif}
{$include <errno.h>}

    const
      _XBCOPYFUNC = _Xbcopy;      
{$include <X11/Xfuncs.h>}
{$include <X11/Xosdefs.h>}

{$ifdef dirty}
{$undef dirty}
{$endif}
{$include <stdlib.h>}
{$include <string.h>}
{$include <X11/Xfuncproto.h>}

{$ifdef XTHREADS}

(* error 
typedef struct _LockInfoRec *LockInfoPtr;
in declaration at line 365 *)


{$if defined(XTHREADS_WARN) || defined(XTHREADS_FILE_LINE)}
{$endif}
{$if defined(XTHREADS_WARN) || defined(XTHREADS_FILE_LINE)}
{$endif}

    type
      _XLockPtrs = record
          lock_display : procedure (dpy:PDisplay; file:Pchar; line:longint);cdecl;
          unlock_display : procedure (dpy:PDisplay; file:Pchar; line:longint);cdecl;
        end;

{$if defined(WIN32) && !defined(_XLIBINT_)}
(* error 
#define _XCreateMutex_fn (*_XCreateMutex_fn_p)
in define line 387 *)
(* error 
#define _XFreeMutex_fn (*_XFreeMutex_fn_p)
in define line 388 *)
(* error 
#define _XLockMutex_fn (*_XLockMutex_fn_p)
in define line 389 *)
(* error 
#define _XUnlockMutex_fn (*_XUnlockMutex_fn_p)
in define line 390 *)
(* error 
#define _Xglobal_lock (*_Xglobal_lock_p)
in define line 391 *)
{$endif}



      var
        _XCreateMutex_fn : procedure (_para1:LockInfoPtr);cvar;external;

        _XFreeMutex_fn : procedure (_para1:LockInfoPtr);cvar;external;

{$if defined(XTHREADS_WARN) || defined(XTHREADS_FILE_LINE)}


{$endif}

      var
        _XLockMutex_fn : procedure (_para1:LockInfoPtr; _para2:Pchar; _para3:longint);cvar;external;

{$if defined(XTHREADS_WARN) || defined(XTHREADS_FILE_LINE)}


{$endif}

      var
        _XUnlockMutex_fn : procedure (_para1:LockInfoPtr; _para2:Pchar; _para3:longint);cvar;external;
        _Xglobal_lock : LockInfoPtr;cvar;external;
{$if defined(XTHREADS_WARN) || defined(XTHREADS_FILE_LINE)}
(* error 
#define LockDisplay(d)	     if ((d)->lock_fns) (*(d)->lock_fns->lock_display)((d),__FILE__,__LINE__)
in define line 419 *)
(* error 
#define UnlockDisplay(d)     if ((d)->lock_fns) (*(d)->lock_fns->unlock_display)((d),__FILE__,__LINE__)
in define line 420 *)
(* error 
#define _XLockMutex(lock)		if (_XLockMutex_fn) (*_XLockMutex_fn)(lock,__FILE__,__LINE__)
in define line 421 *)
(* error 
#define _XUnlockMutex(lock)	if (_XUnlockMutex_fn) (*_XUnlockMutex_fn)(lock,__FILE__,__LINE__)
in define line 422 *)
{$else}

(* error 
#define LockDisplay(d)	     if ((d)->lock_fns) (*(d)->lock_fns->lock_display)(d)
in define line 425 *)
(* error 
#define UnlockDisplay(d)     if ((d)->lock_fns) (*(d)->lock_fns->unlock_display)(d)
in define line 426 *)
(* error 
#define _XLockMutex(lock)		if (_XLockMutex_fn) (*_XLockMutex_fn)(lock)
in define line 427 *)
(* error 
#define _XUnlockMutex(lock)	if (_XUnlockMutex_fn) (*_XUnlockMutex_fn)(lock)
in define line 428 *)
{$endif}
(* error 
#define _XCreateMutex(lock)	if (_XCreateMutex_fn) (*_XCreateMutex_fn)(lock);
in declaration at line 430 *)
(* error 
#define _XFreeMutex(lock)	if (_XFreeMutex_fn) (*_XFreeMutex_fn)(lock);
in declaration at line 431 *)
{$else}

(* error 
#define LockDisplay(dis)
in define line 434 *)
(* error 
#define _XLockMutex(lock)
in define line 435 *)
(* error 
#define _XUnlockMutex(lock)
in define line 436 *)
(* error 
#define UnlockDisplay(dis)
in define line 437 *)
(* error 
#define _XCreateMutex(lock)
in define line 438 *)
(* error 
#define _XFreeMutex(lock)
in define line 439 *)
{$endif}

    function Xfree(ptr : longint) : longint;    


{$if defined(MALLOC_0_RETURNS_NULL) || defined(__clang_analyzer__)}

  function Xmalloc(size : longint) : longint;  

function Xrealloc(ptr,size : longint) : longint;

function Xcalloc(nelem,elsize : longint) : longint;

{$else}

function Xmalloc(size : longint) : longint;

function Xrealloc(ptr,size : longint) : longint;

function Xcalloc(nelem,elsize : longint) : longint;

{$endif}
{$include <stddef.h>}

const
  LOCKED = 1;  
  UNLOCKED = 0;  
{$ifndef BUFSIZE}


const
  BUFSIZE = 2048;  
{$endif}
{$ifndef PTSPERBATCH}


const
  PTSPERBATCH = 1024;  
{$endif}
{$ifndef WLNSPERBATCH}


const
  WLNSPERBATCH = 50;  
{$endif}
{$ifndef ZLNSPERBATCH}


const
  ZLNSPERBATCH = 1024;  
{$endif}
{$ifndef WRCTSPERBATCH}


const
  WRCTSPERBATCH = 10;  
{$endif}
{$ifndef ZRCTSPERBATCH}


const
  ZRCTSPERBATCH = 256;  
{$endif}
{$ifndef FRCTSPERBATCH}


const
  FRCTSPERBATCH = 256;  
{$endif}
{$ifndef FARCSPERBATCH}


const
  FARCSPERBATCH = 256;  
{$endif}
{$ifndef CURSORFONT}


const
  CURSORFONT = 'cursor';  
{$endif}


const
  XlibDisplayIOError = 1 shl 0;  
  XlibDisplayClosing = 1 shl 1;  
  XlibDisplayNoXkb = 1 shl 2;  
  XlibDisplayPrivSync = 1 shl 3;  

  XlibDisplayProcConni = 1 shl 4;  

  XlibDisplayReadEvents = 1 shl 5;  

  XlibDisplayReply = 1 shl 5;  

  XlibDisplayWriting = 1 shl 6;  

  XlibDisplayDfltRMDB = 1 shl 7;  


{$define WORD64ALIGN}


function _XGetRequest(dpy:PDisplay; _type:CARD8; len:size_t):pointer;cdecl;


(* error 
	req = (x##name##Req *) _XGetRequest(dpy, X_##name, sz)
in define line 534 *)

(* error 
	GetReqSized(name, SIZEOF(x##name##Req), req)
in define line 546 *)

(* error 
        GetReqSized(name, SIZEOF(x##name##Req) + n, req)
in define line 552 *)

(* error 
	req = (xResourceReq *) _XGetRequest(dpy, X_##name, SIZEOF(xResourceReq)); \
in declaration at line 561 *)
(* error 
	req = (xResourceReq *) _XGetRequest(dpy, X_##name, SIZEOF(xResourceReq)); \
(* error 
	if (req) req->id = (rid)

in define line 570 *)

{$ifdef LONG64}
(* error 
    { \
in declaration at line 583 *)
(* error 
    CARD64 _BRdat; \
(* error 
    CARD32 _BRlen = req->length - 1; \
in declaration at line 584 *)
(* error 
    CARD32 _BRlen = req->length - 1; \
(* error 
    req->length = 0; \
in declaration at line 585 *)
(* error 
    req->length = 0; \
(* error 
    _BRdat = ((CARD32 *)req)[_BRlen]; \
in declaration at line 586 *)
(* error 
    _BRdat = ((CARD32 *)req)[_BRlen]; \
(* error 
    memmove(((char *)req) + 8, ((char *)req) + 4, (_BRlen - 1) << 2); \
in declaration at line 587 *)
(* error 
    memmove(((char *)req) + 8, ((char *)req) + 4, (_BRlen - 1) << 2); \
(* error 
    ((CARD32 *)req)[1] = _BRlen + n + 2; \
in declaration at line 588 *)
(* error 
    ((CARD32 *)req)[1] = _BRlen + n + 2; \
(* error 
    Data32(dpy, &_BRdat, 4); \
in declaration at line 589 *)
(* error 
    Data32(dpy, &_BRdat, 4); \
(* error 
    }
{$else}
in declaration at line 594 *)
(* error 
    CARD32 _BRdat; \
(* error 
    CARD32 _BRlen = req->length - 1; \
in declaration at line 595 *)
(* error 
    CARD32 _BRlen = req->length - 1; \
(* error 
    req->length = 0; \
in declaration at line 596 *)
(* error 
    req->length = 0; \
(* error 
    _BRdat = ((CARD32 *)req)[_BRlen]; \
in declaration at line 597 *)
(* error 
    _BRdat = ((CARD32 *)req)[_BRlen]; \
(* error 
    memmove(((char *)req) + 8, ((char *)req) + 4, (_BRlen - 1) << 2); \
in declaration at line 598 *)
(* error 
    memmove(((char *)req) + 8, ((char *)req) + 4, (_BRlen - 1) << 2); \
(* error 
    ((CARD32 *)req)[1] = _BRlen + n + 2; \
in declaration at line 599 *)
(* error 
    ((CARD32 *)req)[1] = _BRlen + n + 2; \
(* error 
    Data32(dpy, &_BRdat, 4); \
in declaration at line 600 *)
(* error 
    Data32(dpy, &_BRdat, 4); \
(* error 
    }
{$endif}

{$ifndef __clang_analyzer__}
in declaration at line 617 *)
(* error 
	    n = badlen; \
(* error 
	    req->length += n; \
in declaration at line 618 *)
(* error 
	    req->length += n; \
(* error 
	} \
{$else}
in define line 624 *)
{$endif}
(* error 
	if (dpy->synchandler) (*dpy->synchandler)(dpy)
in define line 628 *)

    procedure _XFlushGCCache(dpy:PDisplay; gc:GC);cdecl;

(* error 
	if ((gc)->dirty) _XFlushGCCache((dpy), (gc))
in define line 632 *)

{$ifndef DataRoutineIsProcedure}
(* error 
#define Data(dpy, data, len) {\
in declaration at line 644 *)
(* error 
		memcpy(dpy->bufptr, data, (int)(len));\
(* error 
		dpy->bufptr += ((len) + 3) & ~3;\
in declaration at line 645 *)
(* error 
		dpy->bufptr += ((len) + 3) & ~3;\
(* error 
	} else\
in declaration at line 647 *)
(* error 
		_XSend(dpy, data, len);\
(* error 
}
{$endif}


in declaration at line 668 *)
(* error 
        _XFlush (dpy); \
(* error 
    ptr = (type) dpy->bufptr; \
in declaration at line 669 *)
(* error 
    ptr = (type) dpy->bufptr; \
(* error 
    memset(ptr, '\0', n); \
in declaration at line 670 *)
(* error 
    memset(ptr, '\0', n); \
(* error 
    dpy->bufptr += (n);
in declaration at line 671 *)
(* error 
#define Data16(dpy, data, len) Data((dpy), (_Xconst char *)(data), (len))
in define line 673 *)

    function _XRead16Pad(dpy,data,len : longint) : longint;    

  function _XRead16(dpy,data,len : longint) : longint;  

{$ifdef LONG64}
(* error 
#define Data32(dpy, data, len) _XData32(dpy, (_Xconst long *)data, len)
in define line 677 *)
(* error 
	     _Xconst long *data,
(* error 
	     unsigned len
 in declarator_list *)
 in declarator_list *)
    procedure _XRead32(dpy:PDisplay; data:Plongint; len:longint);cdecl;

{$else}
(* error 
#define Data32(dpy, data, len) Data((dpy), (_Xconst char *)(data), (len))
in define line 689 *)

    function _XRead32(dpy,data,len : longint) : longint;    

{$endif}

  function PackData16(dpy,data,len : longint) : longint;  

function PackData32(dpy,data,len : longint) : longint;


function PackData(dpy,data,len : longint) : longint;

function min(a,b : longint) : longint;

function max(a,b : longint) : longint;

function CI_NONEXISTCHAR(cs : longint) : longint;


(* error 
{ \
in declaration at line 715 *)
(* error 
    cs = def; \
(* error 
    if (col >= fs->min_char_or_byte2 && col <= fs->max_char_or_byte2) { \
in declaration at line 718 *)
(* error 
	    cs = &fs->min_bounds; \
(* error 
	} else { \
in declaration at line 720 *)
(* error 
	    cs = &fs->per_char[(col - fs->min_char_or_byte2)]; \
(* error 
	    if (CI_NONEXISTCHAR(cs)) cs = def; \
in declaration at line 721 *)
(* error 
	    if (CI_NONEXISTCHAR(cs)) cs = def; \
(* error 
	} \
in define line 727 *)

(* error 
{ \
in declaration at line 737 *)
(* error 
    cs = def; \
(* error 
    if (row >= fs->min_byte1 && row <= fs->max_byte1 && \
in declaration at line 741 *)
(* error 
	    cs = &fs->min_bounds; \
(* error 
	} else { \
in declaration at line 746 *)
(* error 
			       (col - fs->min_char_or_byte2)]; \
(* error 
	    if (CI_NONEXISTCHAR(cs)) cs = def; \
in declaration at line 747 *)
(* error 
	    if (CI_NONEXISTCHAR(cs)) cs = def; \
(* error 
        } \
in declaration at line 754 *)
(* error 
    unsigned int r = (fs->default_char >> 8); \
(* error 
    unsigned int c = (fs->default_char & 0xff); \
in declaration at line 755 *)
(* error 
    unsigned int c = (fs->default_char & 0xff); \
(* error 
    CI_GET_CHAR_INFO_2D (fs, r, c, NULL, cs); \
in declaration at line 756 *)
(* error 
    CI_GET_CHAR_INFO_2D (fs, r, c, NULL, cs); \
(* error 
}

in declaration at line 762 *)
(* error 
  { *(CARD32 *)(dstaddr) = (srcvar); }
in declaration at line 766 *)



      var
        handler : function (_para1:PDisplay; _para2:PxReply; _para3:Pchar; _para4:longint; _para5:XPointer):Bool;cvar;public;
        data : XPointer;cvar;public;
(* error 
} _XAsyncHandler;
in declaration at line 784 *)


    type
      _XAsyncEState = record
          min_sequence_number : dword;
          max_sequence_number : dword;
          error_code : byte;
          major_opcode : byte;
          minor_opcode : word;
          last_error_received : byte;
          error_count : longint;
        end;
      _XAsyncErrorState = _XAsyncEState;

    procedure _XDeqAsyncHandler(dpy:PDisplay; handler:P_XAsyncHandler);cdecl;

(* error 
#define DeqAsyncHandler(dpy,handler) { \
in declaration at line 804 *)
(* error 
	dpy->async_handlers = (handler)->next; \
(* error 
    else \
in declaration at line 806 *)
(* error 
	_XDeqAsyncHandler(dpy, handler); \
(* error 
    }

in declaration at line 811 *)


    type

      FreeModmapType = function (_para1:PXModifierKeymap):longint;cdecl;











      _XFreeFuncs = record
          atoms : FreeFuncType;
          modifiermap : FreeModmapType;
          key_bindings : FreeFuncType;
          context_db : FreeFuncType;
          defaultCCCs : FreeFuncType;
          clientCmaps : FreeFuncType;
          intensityMaps : FreeFuncType;
          im_filters : FreeFuncType;
          xkb : FreeFuncType;
        end;
      _XFreeFuncRec = _XFreeFuncs;



      CreateGCType = function (_para1:PDisplay; _para2:GC; _para3:PXExtCodes):longint;cdecl;


      CopyGCType = function (_para1:PDisplay; _para2:GC; _para3:PXExtCodes):longint;cdecl;


      FlushGCType = function (_para1:PDisplay; _para2:GC; _para3:PXExtCodes):longint;cdecl;


      FreeGCType = function (_para1:PDisplay; _para2:GC; _para3:PXExtCodes):longint;cdecl;


      CreateFontType = function (_para1:PDisplay; _para2:PXFontStruct; _para3:PXExtCodes):longint;cdecl;


      FreeFontType = function (_para1:PDisplay; _para2:PXFontStruct; _para3:PXExtCodes):longint;cdecl;


      CloseDisplayType = function (_para1:PDisplay; _para2:PXExtCodes):longint;cdecl;


      ErrorType = function (_para1:PDisplay; _para2:PxError; _para3:PXExtCodes; _para4:Plongint):longint;cdecl;


      ErrorStringType = function (_para1:PDisplay; _para2:longint; _para3:PXExtCodes; _para4:Pchar; _para5:longint):Pchar;cdecl;


      PrintErrorType = procedure (_para1:PDisplay; _para2:PXErrorEvent; _para3:pointer);cdecl;
(* error 
    _Xconst char* /* data */,

in declaration at line 900 *)


















      _XExten = record
          next : ^_XExten;
          codes : XExtCodes;
          create_GC : CreateGCType;
          copy_GC : CopyGCType;
          flush_GC : FlushGCType;
          free_GC : FreeGCType;
          create_Font : CreateFontType;
          free_Font : FreeFontType;
          close_display : CloseDisplayType;
          error : ErrorType;
          error_string : ErrorStringType;
          name : ^char;
          error_values : PrintErrorType;
          before_flush : BeforeFlushType;
          next_flush : ^_XExten;
        end;
      _XExtension = _XExten;

{$ifdef DataRoutineIsProcedure}

    procedure Data(dpy:PDisplay; data:Pchar; len:longint);cdecl;

{$endif}


    function _XError(_para1:PDisplay; _para2:PxError):longint;cdecl;


    function _XIOError(_para1:PDisplay):longint;cdecl;



      var
        _XIOErrorFunction : function (_para1:PDisplay):longint;cvar;external;

        _XErrorFunction : function (_para1:PDisplay; _para2:PXErrorEvent):longint;cvar;external;

(* error 
) _X_COLD;
 in declarator_list *)
 : pointer;

(* error 
) _X_COLD;
 in declarator_list *)
 : pointer;
{$if defined(__SUNPRO_C) /* Studio compiler alternative to "cold" attribute */}
{$endif}


    function _XAllocScratch(_para1:PDisplay; _para2:dword):^char;cdecl;


    function _XAllocTemp(_para1:PDisplay; _para2:dword):^char;cdecl;


    procedure _XFreeTemp(_para1:PDisplay; _para2:Pchar; _para3:dword);cdecl;


    function _XVIDtoVisual(_para1:PDisplay; _para2:VisualID):^Visual;cdecl;


    function _XSetLastRequestRead(_para1:PDisplay; _para2:PxGenericReply):dword;cdecl;


    function _XGetHostname(_para1:Pchar; _para2:longint):longint;cdecl;


    function _XScreenOfWindow(_para1:PDisplay; _para2:Window):^Screen;cdecl;


    function _XAsyncErrorHandler(_para1:PDisplay; _para2:PxReply; _para3:Pchar; _para4:longint; _para5:XPointer):Bool;cdecl;


    function _XGetAsyncReply(_para1:PDisplay; _para2:Pchar; _para3:PxReply; _para4:Pchar; _para5:longint; 
               _para6:longint; _para7:Bool):^char;cdecl;


    procedure _XGetAsyncData(_para1:PDisplay; _para2:Pchar; _para3:Pchar; _para4:longint; _para5:longint; 
                _para6:longint; _para7:longint);cdecl;


    procedure _XFlush(_para1:PDisplay);cdecl;


    function _XEventsQueued(_para1:PDisplay; _para2:longint):longint;cdecl;


    procedure _XReadEvents(_para1:PDisplay);cdecl;


    function _XRead(_para1:PDisplay; _para2:Pchar; _para3:longint):longint;cdecl;


    procedure _XReadPad(_para1:PDisplay; _para2:Pchar; _para3:longint);cdecl;

(* error 
    _Xconst char*	/* data */,
(* error 
    long		/* size */

 in declarator_list *)
 in declarator_list *)

    function _XReply(_para1:PDisplay; _para2:PxReply; _para3:longint; _para4:Bool):Status;cdecl;


    procedure _XEnq(_para1:PDisplay; _para2:PxEvent);cdecl;


    procedure _XDeq(_para1:PDisplay; _para2:P_XQEvent; _para3:P_XQEvent);cdecl;


    function _XUnknownWireEvent(_para1:PDisplay; _para2:PXEvent; _para3:PxEvent):Bool;cdecl;


    function _XUnknownWireEventCookie(_para1:PDisplay; _para2:PXGenericEventCookie; _para3:PxEvent):Bool;cdecl;


    function _XUnknownCopyEventCookie(_para1:PDisplay; _para2:PXGenericEventCookie; _para3:PXGenericEventCookie):Bool;cdecl;


    function _XUnknownNativeEvent(_para1:PDisplay; _para2:PXEvent; _para3:PxEvent):Status;cdecl;

    function _XWireToEvent(dpy:PDisplay; re:PXEvent; event:PxEvent):Bool;cdecl;

    function _XDefaultWireError(display:PDisplay; he:PXErrorEvent; we:PxError):Bool;cdecl;

    function _XPollfdCacheInit(dpy:PDisplay):Bool;cdecl;

    procedure _XPollfdCacheAdd(dpy:PDisplay; fd:longint);cdecl;

    procedure _XPollfdCacheDel(dpy:PDisplay; fd:longint);cdecl;

    function _XAllocID(dpy:PDisplay):XID;cdecl;

    procedure _XAllocIDs(dpy:PDisplay; ids:PXID; count:longint);cdecl;


    function _XFreeExtData(_para1:PXExtData):longint;cdecl;



    function XESetCreateGC(_para1:PDisplay; _para2:longint; _para3:function (_para1:PDisplay; _para2:GC; _para3:PXExtCodes):longint):function (_para1:PDisplay; _para2:GC; _para3:PXExtCodes):longint;cdecl;



    function XESetCopyGC(_para1:PDisplay; _para2:longint; _para3:function (_para1:PDisplay; _para2:GC; _para3:PXExtCodes):longint):function (_para1:PDisplay; _para2:GC; _para3:PXExtCodes):longint;cdecl;



    function XESetFlushGC(_para1:PDisplay; _para2:longint; _para3:function (_para1:PDisplay; _para2:GC; _para3:PXExtCodes):longint):function (_para1:PDisplay; _para2:GC; _para3:PXExtCodes):longint;cdecl;



    function XESetFreeGC(_para1:PDisplay; _para2:longint; _para3:function (_para1:PDisplay; _para2:GC; _para3:PXExtCodes):longint):function (_para1:PDisplay; _para2:GC; _para3:PXExtCodes):longint;cdecl;



    function XESetCreateFont(_para1:PDisplay; _para2:longint; _para3:function (_para1:PDisplay; _para2:PXFontStruct; _para3:PXExtCodes):longint):function (_para1:PDisplay; _para2:PXFontStruct; _para3:PXExtCodes):longint;cdecl;



    function XESetFreeFont(_para1:PDisplay; _para2:longint; _para3:function (_para1:PDisplay; _para2:PXFontStruct; _para3:PXExtCodes):longint):function (_para1:PDisplay; _para2:PXFontStruct; _para3:PXExtCodes):longint;cdecl;



    function XESetCloseDisplay(_para1:PDisplay; _para2:longint; _para3:function (_para1:PDisplay; _para2:PXExtCodes):longint):function (_para1:PDisplay; _para2:PXExtCodes):longint;cdecl;



    function XESetError(_para1:PDisplay; _para2:longint; _para3:function (_para1:PDisplay; _para2:PxError; _para3:PXExtCodes; _para4:Plongint):longint):function (_para1:PDisplay; _para2:PxError; _para3:PXExtCodes; _para4:Plongint):longint;cdecl;



    function XESetErrorString(_para1:PDisplay; _para2:longint; _para3:Pfunction (_para1:PDisplay; _para2:longint; _para3:PXExtCodes; _para4:Pchar; _para5:longint):char):function (_para1:PDisplay; _para2:longint; _para3:PXExtCodes; _para4:Pchar; _para5:longint):Pchar;cdecl;



    function XESetPrintErrorValues(_para1:PDisplay; _para2:longint; _para3:procedure (_para1:PDisplay; _para2:PXErrorEvent; _para3:pointer)):procedure (_para1:PDisplay; _para2:PXErrorEvent; _para3:pointer);cdecl;



    function XESetWireToEvent(_para1:PDisplay; _para2:longint; _para3:function (_para1:PDisplay; _para2:PXEvent; _para3:PxEvent):Bool):function (_para1:PDisplay; _para2:PXEvent; _para3:PxEvent):Bool;cdecl;



    function XESetWireToEventCookie(_para1:PDisplay; _para2:longint; _para3:function (_para1:PDisplay; _para2:PXGenericEventCookie; _para3:PxEvent):Bool):function (_para1:PDisplay; _para2:PXGenericEventCookie; _para3:PxEvent):Bool;cdecl;



    function XESetCopyEventCookie(_para1:PDisplay; _para2:longint; _para3:function (_para1:PDisplay; _para2:PXGenericEventCookie; _para3:PXGenericEventCookie):Bool):function (_para1:PDisplay; _para2:PXGenericEventCookie; _para3:PXGenericEventCookie):Bool;cdecl;



    function XESetEventToWire(_para1:PDisplay; _para2:longint; _para3:function (_para1:PDisplay; _para2:PXEvent; _para3:PxEvent):Status):function (_para1:PDisplay; _para2:PXEvent; _para3:PxEvent):Status;cdecl;



    function XESetWireToError(_para1:PDisplay; _para2:longint; _para3:function (_para1:PDisplay; _para2:PXErrorEvent; _para3:PxError):Bool):function (_para1:PDisplay; _para2:PXErrorEvent; _para3:PxError):Bool;cdecl;

(* error 
	       _Xconst char*		/* data */,
(* error 
	       long			/* len */


(* error 
    Display*, XExtCodes*, _Xconst char*, long
(* error 
    Display*, XExtCodes*, _Xconst char*, long
(* error 
    Display*, XExtCodes*, _Xconst char*, long
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)



    type

      _XInternalConnectionProc = procedure (_para1:PDisplay; _para2:longint; _para3:XPointer);cdecl;


    function _XRegisterInternalConnection(_para1:PDisplay; _para2:longint; _para3:_XInternalConnectionProc; _para4:XPointer):Status;cdecl;


    procedure _XUnregisterInternalConnection(_para1:PDisplay; _para2:longint);cdecl;


    procedure _XProcessInternalConnection(_para1:PDisplay; _para2:P_XConnectionInfo);cdecl;





    type
      _XConnectionInfo = record
          fd : longint;cdecl;
          read_callback : _XInternalConnectionProc;
          call_data : XPointer;
          watch_data : ^XPointer;
          next : ^_XConnectionInfo;
        end;


      _XConnWatchInfo = record
          fn : XConnectionWatchProc;
          client_data : XPointer;
          next : ^_XConnWatchInfo;
        end;

{$ifdef __UNIXOS2__}

    function __XOS2RedirRoot(_para1:Pchar):^char;cdecl;

{$endif}
(* error 
    _Xconst char*	/* string */,
(* error 
    int			/* count */

 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst XChar2b*	/* string */,
(* error 
    int			/* count */

 in declarator_list *)
 in declarator_list *)
{$if defined(WIN32)}
(* error 
    _Xconst char*	/* path */,
(* error 
    int			/* flags */

 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst char*	/* path */,
(* error 
    int			/* flags */,

(* error 
);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst char*	/* path */,
(* error 
    _Xconst char*	/* mode */

 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst char*	/* path */

 in declarator_list *)
{$else}

    function _XOpenFile(path,flags : longint) : longint;    

  function _XOpenFileMode(path,flags,mode : longint) : longint;  

function _XFopenFile(path,mode : longint) : longint;

{$endif}


function _XEventToWire(dpy:PDisplay; re:PXEvent; event:PxEvent):Status;cdecl;

(* error 
    _Xconst char*	/* name*/,
(* error 
    XFontStruct**	/* xfp*/,
(* error 
    Font*		/* fidp */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
procedure _XProcessWindowAttributes(dpy:PDisplay; req:PxChangeWindowAttributesReq; valuemask:dword; attributes:PXSetWindowAttributes);cdecl;

function _XDefaultError(dpy:PDisplay; event:PXErrorEvent):longint;cdecl;

function _XDefaultIOError(dpy:PDisplay):longint;cdecl;

procedure _XDefaultIOErrorExit(dpy:PDisplay; user_data:pointer);cdecl;

procedure _XSetClipRectangles(dpy:PDisplay; gc:GC; clip_x_origin:longint; clip_y_origin:longint; rectangles:PXRectangle; 
            n:longint; ordering:longint);cdecl;

function _XGetWindowAttributes(dpy:PDisplay; w:Window; attr:PXWindowAttributes):Status;

function _XPutBackEvent(dpy:PDisplay; event:PXEvent):longint;

function _XIsEventCookie(dpy:PDisplay; ev:PXEvent):Bool;cdecl;

procedure _XFreeEventCookies(dpy:PDisplay);cdecl;

procedure _XStoreEventCookie(dpy:PDisplay; ev:PXEvent);cdecl;

function _XFetchEventCookie(dpy:PDisplay; ev:PXGenericEventCookie):Bool;cdecl;

function _XCopyEventCookie(dpy:PDisplay; in:PXGenericEventCookie; out:PXGenericEventCookie):Bool;cdecl;


procedure xlocaledir(buf:Pchar; buf_len:longint);cdecl;

{$ifdef __clang__}
{$endif}
{$endif}

(* error 
#endif /* _X11_XLIBINT_H_ */

implementation

  function XAllocIDs(dpy,ids,n : longint) : longint;
  begin
    XAllocIDs:=dpy^.idlist_alloc(dpyidsn);
  end;

  function X_DPY_GET_REQUEST(dpy : longint) : longint;
  begin
    X_DPY_GET_REQUEST:=(uint64_t((p_XDisplay(dpy))^.request))+((uint64_t((p_XDisplay(dpy))^.request_upper32bit)) shl 32);
  end;

    function X_DPY_GET_LAST_REQUEST_READ(dpy : longint) : longint;
    begin
      X_DPY_GET_LAST_REQUEST_READ:=(uint64_t((p_XDisplay(dpy))^.last_request_read))+((uint64_t((p_XDisplay(dpy))^.last_request_read_upper32bit)) shl 32);
    end;

    function X_DPY_WIDEN_UNSIGNED_LONG_SEQ(dpy,ulseq : longint) : longint;
    begin
      X_DPY_WIDEN_UNSIGNED_LONG_SEQ:=(uint64_t(ulseq))+(((uint64_t((p_XDisplay(dpy))^.request_upper32bit))-(uint64_t(ulseq>((p_XDisplay(dpy))^.request)))) shl 32);
    end;

    function X_DPY_GET_REQUEST(dpy : longint) : longint;
    begin
      X_DPY_GET_REQUEST:=(p_XDisplay(dpy))^.request;
    end;

    function X_DPY_GET_LAST_REQUEST_READ(dpy : longint) : longint;
    begin
      X_DPY_GET_LAST_REQUEST_READ:=(p_XDisplay(dpy))^.last_request_read;
    end;

    function X_DPY_WIDEN_UNSIGNED_LONG_SEQ(dpy,ulseq : longint) : longint;
    begin
      X_DPY_WIDEN_UNSIGNED_LONG_SEQ:=ulseq;
    end;

    function Xfree(ptr : longint) : longint;
    begin
      Xfree:=free(ptr);
    end;

  function Xmalloc(size : longint) : longint;
  var
     if_local1 : longint;
  (* result types are not known *)
  begin
    Xmalloc:=malloc(size_t(size=(if_local1)));
  end;

function Xrealloc(ptr,size : longint) : longint;
var
   if_local1 : longint;
(* result types are not known *)
begin
  Xrealloc:=realloc(ptr,size_t(size=(if_local1)));
end;

function Xcalloc(nelem,elsize : longint) : longint;
var
   if_local1 : longint;
(* result types are not known *)
begin
  Xcalloc:=calloc(size_t(nelem=(if_local1)),size_t(elsize));
end;

function Xmalloc(size : longint) : longint;
begin
  Xmalloc:=malloc(size_t(size));
end;

function Xrealloc(ptr,size : longint) : longint;
begin
  Xrealloc:=realloc(ptr,size_t(size));
end;

function Xcalloc(nelem,elsize : longint) : longint;
begin
  Xcalloc:=calloc(size_t(nelem),size_t(elsize));
end;

    function _XRead16Pad(dpy,data,len : longint) : longint;
    begin
      _XRead16Pad:=_XReadPad(dpy,pchar(data),len);
    end;

  function _XRead16(dpy,data,len : longint) : longint;
  begin
    _XRead16:=_XRead(dpy,pchar(data),len);
  end;

    function _XRead32(dpy,data,len : longint) : longint;
    begin
      _XRead32:=_XRead(dpy,pchar(data),len);
    end;

  function PackData16(dpy,data,len : longint) : longint;
  begin
    PackData16:=Data16(dpy,data,len);
  end;

function PackData32(dpy,data,len : longint) : longint;
begin
  PackData32:=Data32(dpy,data,len);
end;

function PackData(dpy,data,len : longint) : longint;
begin
  PackData:=PackData16(dpy,data,len);
end;

function min(a,b : longint) : longint;
var
   if_local1 : longint;
(* result types are not known *)
begin
  if a<b then
    if_local1:=a
  else
    if_local1:=b;
  min:=if_local1;
end;

function max(a,b : longint) : longint;
var
   if_local1 : longint;
(* result types are not known *)
begin
  if a>b then
    if_local1:=a
  else
    if_local1:=b;
  max:=if_local1;
end;

function CI_NONEXISTCHAR(cs : longint) : longint;
begin
  CI_NONEXISTCHAR:=((cs^.width)=0) and (@(((((cs^.rbearing) or (cs^.lbearing)) or (cs^.ascent)) or (cs^.descent))=0));
end;

    function _XOpenFile(path,flags : longint) : longint;
    begin
      _XOpenFile:=open(path,flags);
    end;

  function _XOpenFileMode(path,flags,mode : longint) : longint;
  begin
    _XOpenFileMode:=open(path,flags,mode);
  end;

function _XFopenFile(path,mode : longint) : longint;
begin
  _XFopenFile:=fopen(path,mode);
end;

function _XGetWindowAttributes(dpy:PDisplay; w:Window; attr:PXWindowAttributes):Status;
begin
  { You must implement this function }
end;
function _XPutBackEvent(dpy:PDisplay; event:PXEvent):longint;
begin
  { You must implement this function }
end;

end.
