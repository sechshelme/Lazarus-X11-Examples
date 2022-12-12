
unit Xlibint;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xlibint.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xlibint.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xlibint.pp
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
    PDisplay  = ^Display;
    PErrorStringType  = ^ErrorStringType;
    PKeySym  = ^KeySym;
    Plongint  = ^longint;
    PScreen  = ^Screen;
    PScreenFormat  = ^ScreenFormat;
    PVisual  = ^Visual;
    PX11XCBPrivate  = ^X11XCBPrivate;
    PXAsyncErrorState  = ^XAsyncErrorState;
    PXAsyncEState  = ^XAsyncEState;
    PXAsyncHandler  = ^XAsyncHandler;
    PxChangeWindowAttributesReq  = ^xChangeWindowAttributesReq;
    PXConnectionInfo  = ^XConnectionInfo;
    PXConnWatchInfo  = ^XConnWatchInfo;
    PXContextDB  = ^XContextDB;
    PXDisplay  = ^XDisplay;
    PXDisplayAtoms  = ^XDisplayAtoms;
    PxError  = ^xError;
    PXErrorEvent  = ^XErrorEvent;
    PXErrorThreadInfo  = ^XErrorThreadInfo;
    PXEvent  = ^XEvent;
    PXExtCodes  = ^XExtCodes;
    PXExtData  = ^XExtData;
    PXExten  = ^XExten;
    PXExtension  = ^XExtension;
    PXFontStruct  = ^XFontStruct;
    PXFreeFuncRec  = ^XFreeFuncRec;
    PXFreeFuncs  = ^XFreeFuncs;
    PXGC  = ^XGC;
    PXGenericEventCookie  = ^XGenericEventCookie;
    PxGenericReply  = ^xGenericReply;
    PXID  = ^XID;
    PXIMFilter  = ^XIMFilter;
    PXInternalAsync  = ^XInternalAsync;
    PXkbInfoRec  = ^XkbInfoRec;
    PXKeytrans  = ^XKeytrans;
    PXLockInfo  = ^XLockInfo;
    PXLockPtrs  = ^XLockPtrs;
    PXModifierKeymap  = ^XModifierKeymap;
    PXPointer  = ^XPointer;
    PXQEvent  = ^XQEvent;
    PXRectangle  = ^XRectangle;
    PxReply  = ^xReply;
    PXrmHashBucketRec  = ^XrmHashBucketRec;
    PXSetWindowAttributes  = ^XSetWindowAttributes;
    PXSQEvent  = ^XSQEvent;
    PXtransConnInfo  = ^XtransConnInfo;
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
  PXGC = ^TXGC;
  TXGC = record
      ext_data : PXExtData;
      gid : TGContext;
      rects : TBool;
      dashes : TBool;
      dirty : dword;
      values : TXGCValues;
    end;




































(* error 
	volatile unsigned long flags;	   /* internal connection flags */
 in declarator_list *)
























































{$ifndef LONG64}
{$endif}
type
  PXDisplay = ^TXDisplay;
  TXDisplay = record
      ext_data : PXExtData;
      free_funcs : PXFreeFuncs;
      fd : longint;
      conn_checker : longint;
      proto_major_version : longint;
      proto_minor_version : longint;
      vendor : Pchar;
      resource_base : TXID;
      resource_mask : TXID;
      resource_id : TXID;
      resource_shift : longint;
      resource_alloc : function (para1:PXDisplay):TXID;cdecl;
      byte_order : longint;
      bitmap_unit : longint;
      bitmap_pad : longint;
      bitmap_bit_order : longint;
      nformats : longint;
      pixmap_format : PScreenFormat;
      vnumber : longint;
      release : longint;
      head : PXSQEvent;
      tail : PXSQEvent;
      qlen : longint;
      last_request_read : dword;
      request : dword;
      last_req : Pchar;
      buffer : Pchar;
      bufptr : Pchar;
      bufmax : Pchar;
      max_request_size : dword;
      db : PXrmHashBucketRec;
      synchandler : function (para1:PXDisplay):longint;cdecl;
      display_name : Pchar;
      default_screen : longint;
      nscreens : longint;
      screens : PScreen;
      motion_buffer : dword;
;
      min_keycode : longint;
      max_keycode : longint;
      keysyms : PKeySym;
      modifiermap : PXModifierKeymap;
      keysyms_per_keycode : longint;
      xdefaults : Pchar;
      scratch_buffer : Pchar;
      scratch_length : dword;
      ext_number : longint;
      ext_procs : PXExten;
      event_vec : array[0..127] of function (para1:PDisplay; para2:PXEvent; para3:PxEvent):TBool;cdecl;
      wire_vec : array[0..127] of function (para1:PDisplay; para2:PXEvent; para3:PxEvent):TStatus;cdecl;
      lock_meaning : TKeySym;
      lock : PXLockInfo;
      async_handlers : PXInternalAsync;
      bigreq_size : dword;
      lock_fns : PXLockPtrs;
      idlist_alloc : procedure (para1:PDisplay; para2:PXID; para3:longint);cdecl;
      key_bindings : PXKeytrans;
      cursor_font : TFont;
      atoms : PXDisplayAtoms;
      mode_switch : dword;
      num_lock : dword;
      context_db : PXContextDB;
      error_vec : ^function (para1:PDisplay; para2:PXErrorEvent; para3:PxError):TBool;cdecl;
      cms : record
          defaultCCCs : TXPointer;
          clientCmaps : TXPointer;
          perVisualIntensityMaps : TXPointer;
        end;
      im_filters : PXIMFilter;
      qfree : PXSQEvent;
      next_event_serial_num : dword;
      flushes : PXExten;
      im_fd_info : PXConnectionInfo;
      im_fd_length : longint;
      conn_watchers : PXConnWatchInfo;
      watcher_count : longint;
      filedes : TXPointer;
      savedsynchandler : function (para1:PDisplay):longint;cdecl;
      resource_max : TXID;
      xcmisc_opcode : longint;
      xkb_info : PXkbInfoRec;
      trans_conn : PXtransConnInfo;
      xcb : PX11XCBPrivate;
      next_cookie : dword;
      generic_event_vec : array[0..127] of function (para1:PDisplay; para2:PXGenericEventCookie; para3:PxEvent):TBool;cdecl;
      generic_event_copy_vec : array[0..127] of function (para1:PDisplay; para2:PXGenericEventCookie; para3:PXGenericEventCookie):TBool;cdecl;
      cookiejar : pointer;
      last_request_read_upper32bit : dword;
      request_upper32bit : dword;
      error_threads : PXErrorThreadInfo;
      exit_handler : TXIOErrorExitHandler;
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
      PXSQEvent = ^TXSQEvent;
      TXSQEvent = record
          next : PXSQEvent;
          event : TXEvent;
          qserial_num : dword;
        end;
      TXQEvent = TXSQEvent;
      PXQEvent = ^TXQEvent;
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
      PXLockPtrs = ^TXLockPtrs;
      TXLockPtrs = record
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
        _XCreateMutex_fn : procedure (para1:TLockInfoPtr);cvar;external;

        _XFreeMutex_fn : procedure (para1:TLockInfoPtr);cvar;external;

{$if defined(XTHREADS_WARN) || defined(XTHREADS_FILE_LINE)}


{$endif}
      var
        _XLockMutex_fn : procedure (para1:TLockInfoPtr; para2:Pchar; para3:longint);cvar;external;

{$if defined(XTHREADS_WARN) || defined(XTHREADS_FILE_LINE)}


{$endif}
      var
        _XUnlockMutex_fn : procedure (para1:TLockInfoPtr; para2:Pchar; para3:longint);cvar;external;
        _Xglobal_lock : TLockInfoPtr;cvar;external;
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


function _XGetRequest(dpy:PDisplay; _type:TCARD8; len:Tsize_t):pointer;cdecl;external;

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

procedure _XFlushGCCache(dpy:PDisplay; gc:TGC);cdecl;external;
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
procedure _XRead32(dpy:PDisplay; data:Plongint; len:longint);cdecl;external;
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
        handler : function (para1:PDisplay; para2:PxReply; para3:Pchar; para4:longint; para5:TXPointer):TBool;cvar;public;
        data : TXPointer;cvar;public;
(* error 
} _XAsyncHandler;
in declaration at line 784 *)

    type
      PXAsyncEState = ^TXAsyncEState;
      TXAsyncEState = record
          min_sequence_number : dword;
          max_sequence_number : dword;
          error_code : byte;
          major_opcode : byte;
          minor_opcode : word;
          last_error_received : byte;
          error_count : longint;
        end;
      TXAsyncErrorState = TXAsyncEState;
      PXAsyncErrorState = ^TXAsyncErrorState;

procedure _XDeqAsyncHandler(dpy:PDisplay; handler:PXAsyncHandler);cdecl;external;
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

      TFreeModmapType = function (para1:PXModifierKeymap):longint;cdecl;











      PXFreeFuncs = ^TXFreeFuncs;
      TXFreeFuncs = record
          atoms : TFreeFuncType;
          modifiermap : TFreeModmapType;
          key_bindings : TFreeFuncType;
          context_db : TFreeFuncType;
          defaultCCCs : TFreeFuncType;
          clientCmaps : TFreeFuncType;
          intensityMaps : TFreeFuncType;
          im_filters : TFreeFuncType;
          xkb : TFreeFuncType;
        end;
      TXFreeFuncRec = TXFreeFuncs;
      PXFreeFuncRec = ^TXFreeFuncRec;



      TCreateGCType = function (para1:PDisplay; para2:TGC; para3:PXExtCodes):longint;cdecl;


      TCopyGCType = function (para1:PDisplay; para2:TGC; para3:PXExtCodes):longint;cdecl;


      TFlushGCType = function (para1:PDisplay; para2:TGC; para3:PXExtCodes):longint;cdecl;


      TFreeGCType = function (para1:PDisplay; para2:TGC; para3:PXExtCodes):longint;cdecl;


      TCreateFontType = function (para1:PDisplay; para2:PXFontStruct; para3:PXExtCodes):longint;cdecl;


      TFreeFontType = function (para1:PDisplay; para2:PXFontStruct; para3:PXExtCodes):longint;cdecl;


      TCloseDisplayType = function (para1:PDisplay; para2:PXExtCodes):longint;cdecl;


      TErrorType = function (para1:PDisplay; para2:PxError; para3:PXExtCodes; para4:Plongint):longint;cdecl;


      PErrorStringType = ^TErrorStringType;
      TErrorStringType = function (para1:PDisplay; para2:longint; para3:PXExtCodes; para4:Pchar; para5:longint):Pchar;cdecl;


      TPrintErrorType = procedure (para1:PDisplay; para2:PXErrorEvent; para3:pointer);cdecl;
(* error 
    _Xconst char* /* data */,

in declaration at line 900 *)


















      PXExten = ^TXExten;
      TXExten = record
          next : PXExten;
          codes : TXExtCodes;
          create_GC : TCreateGCType;
          copy_GC : TCopyGCType;
          flush_GC : TFlushGCType;
          free_GC : TFreeGCType;
          create_Font : TCreateFontType;
          free_Font : TFreeFontType;
          close_display : TCloseDisplayType;
          error : TErrorType;
          error_string : TErrorStringType;
          name : Pchar;
          error_values : TPrintErrorType;
          before_flush : TBeforeFlushType;
          next_flush : PXExten;
        end;
      TXExtension = TXExten;
      PXExtension = ^TXExtension;

{$ifdef DataRoutineIsProcedure}

procedure Data(dpy:PDisplay; data:Pchar; len:longint);cdecl;external;
{$endif}


function _XError(para1:PDisplay; para2:PxError):longint;cdecl;external;

function _XIOError(para1:PDisplay):longint;cdecl;external;

      var
        _XIOErrorFunction : function (para1:PDisplay):longint;cvar;external;

        _XErrorFunction : function (para1:PDisplay; para2:PXErrorEvent):longint;cvar;external;

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


function _XAllocScratch(para1:PDisplay; para2:dword):Pchar;cdecl;external;

function _XAllocTemp(para1:PDisplay; para2:dword):Pchar;cdecl;external;

procedure _XFreeTemp(para1:PDisplay; para2:Pchar; para3:dword);cdecl;external;

function _XVIDtoVisual(para1:PDisplay; para2:TVisualID):PVisual;cdecl;external;

function _XSetLastRequestRead(para1:PDisplay; para2:PxGenericReply):dword;cdecl;external;

function _XGetHostname(para1:Pchar; para2:longint):longint;cdecl;external;

function _XScreenOfWindow(para1:PDisplay; para2:TWindow):PScreen;cdecl;external;

function _XAsyncErrorHandler(para1:PDisplay; para2:PxReply; para3:Pchar; para4:longint; para5:TXPointer):TBool;cdecl;external;

function _XGetAsyncReply(para1:PDisplay; para2:Pchar; para3:PxReply; para4:Pchar; para5:longint; 
               para6:longint; para7:TBool):Pchar;cdecl;external;

procedure _XGetAsyncData(para1:PDisplay; para2:Pchar; para3:Pchar; para4:longint; para5:longint; 
                para6:longint; para7:longint);cdecl;external;

procedure _XFlush(para1:PDisplay);cdecl;external;

function _XEventsQueued(para1:PDisplay; para2:longint):longint;cdecl;external;

procedure _XReadEvents(para1:PDisplay);cdecl;external;

function _XRead(para1:PDisplay; para2:Pchar; para3:longint):longint;cdecl;external;

procedure _XReadPad(para1:PDisplay; para2:Pchar; para3:longint);cdecl;external;
(* error 
    _Xconst char*	/* data */,
(* error 
    long		/* size */

 in declarator_list *)
 in declarator_list *)

function _XReply(para1:PDisplay; para2:PxReply; para3:longint; para4:TBool):TStatus;cdecl;external;

procedure _XEnq(para1:PDisplay; para2:PxEvent);cdecl;external;

procedure _XDeq(para1:PDisplay; para2:PXQEvent; para3:PXQEvent);cdecl;external;

function _XUnknownWireEvent(para1:PDisplay; para2:PXEvent; para3:PxEvent):TBool;cdecl;external;

function _XUnknownWireEventCookie(para1:PDisplay; para2:PXGenericEventCookie; para3:PxEvent):TBool;cdecl;external;

function _XUnknownCopyEventCookie(para1:PDisplay; para2:PXGenericEventCookie; para3:PXGenericEventCookie):TBool;cdecl;external;

function _XUnknownNativeEvent(para1:PDisplay; para2:PXEvent; para3:PxEvent):TStatus;cdecl;external;
function _XWireToEvent(dpy:PDisplay; re:PXEvent; event:PxEvent):TBool;cdecl;external;
function _XDefaultWireError(display:PDisplay; he:PXErrorEvent; we:PxError):TBool;cdecl;external;
function _XPollfdCacheInit(dpy:PDisplay):TBool;cdecl;external;
procedure _XPollfdCacheAdd(dpy:PDisplay; fd:longint);cdecl;external;
procedure _XPollfdCacheDel(dpy:PDisplay; fd:longint);cdecl;external;
function _XAllocID(dpy:PDisplay):TXID;cdecl;external;
procedure _XAllocIDs(dpy:PDisplay; ids:PXID; count:longint);cdecl;external;

function _XFreeExtData(para1:PXExtData):longint;cdecl;external;


function XESetCreateGC(para1:PDisplay; para2:longint; para3:function (para1:PDisplay; para2:TGC; para3:PXExtCodes):longint):function (para1:PDisplay; para2:TGC; para3:PXExtCodes):longint;cdecl;external;


function XESetCopyGC(para1:PDisplay; para2:longint; para3:function (para1:PDisplay; para2:TGC; para3:PXExtCodes):longint):function (para1:PDisplay; para2:TGC; para3:PXExtCodes):longint;cdecl;external;


function XESetFlushGC(para1:PDisplay; para2:longint; para3:function (para1:PDisplay; para2:TGC; para3:PXExtCodes):longint):function (para1:PDisplay; para2:TGC; para3:PXExtCodes):longint;cdecl;external;


function XESetFreeGC(para1:PDisplay; para2:longint; para3:function (para1:PDisplay; para2:TGC; para3:PXExtCodes):longint):function (para1:PDisplay; para2:TGC; para3:PXExtCodes):longint;cdecl;external;


function XESetCreateFont(para1:PDisplay; para2:longint; para3:function (para1:PDisplay; para2:PXFontStruct; para3:PXExtCodes):longint):function (para1:PDisplay; para2:PXFontStruct; para3:PXExtCodes):longint;cdecl;external;


function XESetFreeFont(para1:PDisplay; para2:longint; para3:function (para1:PDisplay; para2:PXFontStruct; para3:PXExtCodes):longint):function (para1:PDisplay; para2:PXFontStruct; para3:PXExtCodes):longint;cdecl;external;


function XESetCloseDisplay(para1:PDisplay; para2:longint; para3:function (para1:PDisplay; para2:PXExtCodes):longint):function (para1:PDisplay; para2:PXExtCodes):longint;cdecl;external;


function XESetError(para1:PDisplay; para2:longint; para3:function (para1:PDisplay; para2:PxError; para3:PXExtCodes; para4:Plongint):longint):function (para1:PDisplay; para2:PxError; para3:PXExtCodes; para4:Plongint):longint;cdecl;external;


function XESetErrorString(para1:PDisplay; para2:longint; para3:Pfunction (para1:PDisplay; para2:longint; para3:PXExtCodes; para4:Pchar; para5:longint):char):function (para1:PDisplay; para2:longint; para3:PXExtCodes; para4:Pchar; para5:longint):Pchar;cdecl;external;


function XESetPrintErrorValues(para1:PDisplay; para2:longint; para3:procedure (para1:PDisplay; para2:PXErrorEvent; para3:pointer)):procedure (para1:PDisplay; para2:PXErrorEvent; para3:pointer);cdecl;external;


function XESetWireToEvent(para1:PDisplay; para2:longint; para3:function (para1:PDisplay; para2:PXEvent; para3:PxEvent):TBool):function (para1:PDisplay; para2:PXEvent; para3:PxEvent):TBool;cdecl;external;


function XESetWireToEventCookie(para1:PDisplay; para2:longint; para3:function (para1:PDisplay; para2:PXGenericEventCookie; para3:PxEvent):TBool):function (para1:PDisplay; para2:PXGenericEventCookie; para3:PxEvent):TBool;cdecl;external;


function XESetCopyEventCookie(para1:PDisplay; para2:longint; para3:function (para1:PDisplay; para2:PXGenericEventCookie; para3:PXGenericEventCookie):TBool):function (para1:PDisplay; para2:PXGenericEventCookie; para3:PXGenericEventCookie):TBool;cdecl;external;


function XESetEventToWire(para1:PDisplay; para2:longint; para3:function (para1:PDisplay; para2:PXEvent; para3:PxEvent):TStatus):function (para1:PDisplay; para2:PXEvent; para3:PxEvent):TStatus;cdecl;external;


function XESetWireToError(para1:PDisplay; para2:longint; para3:function (para1:PDisplay; para2:PXErrorEvent; para3:PxError):TBool):function (para1:PDisplay; para2:PXErrorEvent; para3:PxError):TBool;cdecl;external;
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

      TXInternalConnectionProc = procedure (para1:PDisplay; para2:longint; para3:TXPointer);cdecl;


function _XRegisterInternalConnection(para1:PDisplay; para2:longint; para3:TXInternalConnectionProc; para4:TXPointer):TStatus;cdecl;external;

procedure _XUnregisterInternalConnection(para1:PDisplay; para2:longint);cdecl;external;

procedure _XProcessInternalConnection(para1:PDisplay; para2:PXConnectionInfo);cdecl;external;



    type
      PXConnectionInfo = ^TXConnectionInfo;
      TXConnectionInfo = record
          fd : longint;cdecl;
          read_callback : TXInternalConnectionProc;
          call_data : TXPointer;
          watch_data : PXPointer;
          next : PXConnectionInfo;
        end;


      PXConnWatchInfo = ^TXConnWatchInfo;
      TXConnWatchInfo = record
          fn : TXConnectionWatchProc;
          client_data : TXPointer;
          next : PXConnWatchInfo;
        end;

{$ifdef __UNIXOS2__}

function __XOS2RedirRoot(para1:Pchar):Pchar;cdecl;external;
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


function _XEventToWire(dpy:PDisplay; re:PXEvent; event:PxEvent):TStatus;cdecl;external;
(* error 
    _Xconst char*	/* name*/,
(* error 
    XFontStruct**	/* xfp*/,
(* error 
    Font*		/* fidp */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
procedure _XProcessWindowAttributes(dpy:PDisplay; req:PxChangeWindowAttributesReq; valuemask:dword; attributes:PXSetWindowAttributes);cdecl;external;
function _XDefaultError(dpy:PDisplay; event:PXErrorEvent):longint;cdecl;external;
function _XDefaultIOError(dpy:PDisplay):longint;cdecl;external;
procedure _XDefaultIOErrorExit(dpy:PDisplay; user_data:pointer);cdecl;external;
procedure _XSetClipRectangles(dpy:PDisplay; gc:TGC; clip_x_origin:longint; clip_y_origin:longint; rectangles:PXRectangle; 
                n:longint; ordering:longint);cdecl;external;
function _XGetWindowAttributes(dpy:PDisplay; w:TWindow; attr:PXWindowAttributes):TStatus;cdecl;external;
function _XPutBackEvent(dpy:PDisplay; event:PXEvent):longint;cdecl;external;
function _XIsEventCookie(dpy:PDisplay; ev:PXEvent):TBool;cdecl;external;
procedure _XFreeEventCookies(dpy:PDisplay);cdecl;external;
procedure _XStoreEventCookie(dpy:PDisplay; ev:PXEvent);cdecl;external;
function _XFetchEventCookie(dpy:PDisplay; ev:PXGenericEventCookie):TBool;cdecl;external;
function _XCopyEventCookie(dpy:PDisplay; in:PXGenericEventCookie; out:PXGenericEventCookie):TBool;cdecl;external;

procedure xlocaledir(buf:Pchar; buf_len:longint);cdecl;external;
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
  X_DPY_GET_REQUEST:=(Tuint64_t((PXDisplay(dpy))^.request))+((Tuint64_t((PXDisplay(dpy))^.request_upper32bit)) shl 32);
end;

    function X_DPY_GET_LAST_REQUEST_READ(dpy : longint) : longint;
    begin
      X_DPY_GET_LAST_REQUEST_READ:=(Tuint64_t((PXDisplay(dpy))^.last_request_read))+((Tuint64_t((PXDisplay(dpy))^.last_request_read_upper32bit)) shl 32);
    end;

    function X_DPY_WIDEN_UNSIGNED_LONG_SEQ(dpy,ulseq : longint) : longint;
    begin
      X_DPY_WIDEN_UNSIGNED_LONG_SEQ:=(Tuint64_t(ulseq))+(((Tuint64_t((PXDisplay(dpy))^.request_upper32bit))-(Tuint64_t(ulseq>((PXDisplay(dpy))^.request)))) shl 32);
    end;

    function X_DPY_GET_REQUEST(dpy : longint) : longint;
    begin
      X_DPY_GET_REQUEST:=(PXDisplay(dpy))^.request;
    end;

    function X_DPY_GET_LAST_REQUEST_READ(dpy : longint) : longint;
    begin
      X_DPY_GET_LAST_REQUEST_READ:=(PXDisplay(dpy))^.last_request_read;
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
      Xmalloc:=malloc(Tsize_t(size=(if_local1)));
    end;

    function Xrealloc(ptr,size : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      Xrealloc:=realloc(ptr,Tsize_t(size=(if_local1)));
    end;

    function Xcalloc(nelem,elsize : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      Xcalloc:=calloc(Tsize_t(nelem=(if_local1)),Tsize_t(elsize));
    end;

    function Xmalloc(size : longint) : longint;
    begin
      Xmalloc:=malloc(Tsize_t(size));
    end;

    function Xrealloc(ptr,size : longint) : longint;
    begin
      Xrealloc:=realloc(ptr,Tsize_t(size));
    end;

    function Xcalloc(nelem,elsize : longint) : longint;
    begin
      Xcalloc:=calloc(Tsize_t(nelem),Tsize_t(elsize));
    end;

    function _XRead16Pad(dpy,data,len : longint) : longint;
    begin
      _XRead16Pad:=_XReadPad(dpy,Pchar(data),len);
    end;

    function _XRead16(dpy,data,len : longint) : longint;
    begin
      _XRead16:=_XRead(dpy,Pchar(data),len);
    end;

    function _XRead32(dpy,data,len : longint) : longint;
    begin
      _XRead32:=_XRead(dpy,Pchar(data),len);
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


end.
