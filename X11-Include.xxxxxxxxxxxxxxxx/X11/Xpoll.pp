
unit Xpoll;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xpoll.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xpoll.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xpoll.pp
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
    Pfd_mask  = ^fd_mask;
    Pfd_set  = ^fd_set;
    Ptimeval  = ^timeval;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XPOLL_H_}
{$define _XPOLL_H_}
{$if !defined(WIN32) || defined(__CYGWIN__)}
{$ifndef USE_POLL}
{$include <X11/Xos.h>}
{$include <sys/select.h>  /* Get the FD_* macros. */}
{$include <X11/Xmd.h>}
{$ifdef CSRG_BASED}
{$include <sys/param.h>}
{$if BSD < 199103}
type
  Pfd_mask = ^Tfd_mask;
  Tfd_mask = longint;
{$endif}
{$endif}
{$if defined(FD_SETSIZE) && FD_SETSIZE < 512}

const
  XFD_SETSIZE = FD_SETSIZE;  
{$else}

const
  XFD_SETSIZE = 512;  
{$ifndef FD_SETSIZE}

const
  FD_SETSIZE = XFD_SETSIZE;  
{$endif}
{$endif}
{$ifndef NBBY}


const
  NBBY = 8;  
{$endif}
{$ifndef NFDBITS}


function NFDBITS : longint; { return type might be wrong }

{$endif}
{$ifndef howmany}

function howmany(x,y : longint) : longint;

{$endif}
{$if defined(BSD) && BSD < 198911 }
type
  Pfd_set = ^Tfd_set;
  Tfd_set = record
      fds_bits : array[0..(howmany(FD_SETSIZE,NFDBITS))-1] of Tfd_mask;
    end;
{$endif}

function Select(n,r,w,e,t : longint) : longint;

const
  __X_FDS_BITS = __fds_bits;  
{$ifndef __FDS_BITS}

function __FDS_BITS(p : longint) : longint;

{$endif}
(* error 
#define __XFDS_BITS(p, n) (__FDS_BITS(p))[n]
in define line 105 *)
{$ifndef FD_SET}
(* error 
#define FD_SET(n, p)    (__XFDS_BITS(p, ((n)/NFDBITS)) |= ((fd_mask)1 << ((n) % NFDBITS)))
in define line 108 *)
{$endif}
{$ifndef FD_CLR}
(* error 
#define FD_CLR(n, p)    (__XFDS_BITS((p), ((n)/NFDBITS)) &= ~((fd_mask)1 << ((n) % NFDBITS)))
in define line 111 *)
{$endif}
{$ifndef FD_ISSET}
(* error 
#define FD_ISSET(n, p)  ((__XFDS_BITS((p), ((n)/NFDBITS))) & ((fd_mask)1 << ((n) % NFDBITS)))
in define line 114 *)
{$endif}
{$ifndef FD_ZERO}
(* error 
#define FD_ZERO(p)      bzero((char *)(p), sizeof(*(p)))
in define line 117 *)
{$endif}

(* error 
        ((howmany(FD_SETSIZE, NFDBITS) > 0 && (__XFDS_BITS(p, 0))) || \
in define line 141 *)
(* error 
#define XFD_COPYSET(src,dst) { \
in declaration at line 145 *)
(* error 
        int __i__; \
(* error 
		for (__i__ = 0; __i__ < howmany(FD_SETSIZE, NFDBITS); __i__++) \
in declaration at line 146 *)
(* error 
		for (__i__ = 0; __i__ < howmany(FD_SETSIZE, NFDBITS); __i__++) \
in declaration at line 146 *)
(* error 
		for (__i__ = 0; __i__ < howmany(FD_SETSIZE, NFDBITS); __i__++) \
in declaration at line 147 *)
(* error 
            __XFDS_BITS((dst), __i__) = __XFDS_BITS((src), __i__); \
(* error 
        }
in declaration at line 150 *)
(* error 
        int __i__; \
(* error 
        for (__i__ = 0; __i__ < howmany(FD_SETSIZE, NFDBITS); __i__++) \
in declaration at line 151 *)
(* error 
        for (__i__ = 0; __i__ < howmany(FD_SETSIZE, NFDBITS); __i__++) \
in declaration at line 151 *)
(* error 
        for (__i__ = 0; __i__ < howmany(FD_SETSIZE, NFDBITS); __i__++) \
in declaration at line 152 *)
(* error 
            __XFDS_BITS((dst), __i__) = ((__XFDS_BITS((b1), __i__)) & (__XFDS_BITS((b2), __i__))); \
(* error 
        }
in declaration at line 155 *)
(* error 
        int __i__; \
(* error 
        for (__i__ = 0; __i__ < howmany(FD_SETSIZE, NFDBITS); __i__++) \
in declaration at line 156 *)
(* error 
        for (__i__ = 0; __i__ < howmany(FD_SETSIZE, NFDBITS); __i__++) \
in declaration at line 156 *)
(* error 
        for (__i__ = 0; __i__ < howmany(FD_SETSIZE, NFDBITS); __i__++) \
in declaration at line 157 *)
(* error 
		__XFDS_BITS((dst), __i__) = ((__XFDS_BITS((b1), __i__)) | (__XFDS_BITS((b2), __i__))); \
(* error 
        }        
in declaration at line 160 *)
(* error 
        int __i__; \
(* error 
        for (__i__ = 0; __i__ < howmany(FD_SETSIZE, NFDBITS); __i__++) \
in declaration at line 161 *)
(* error 
        for (__i__ = 0; __i__ < howmany(FD_SETSIZE, NFDBITS); __i__++) \
in declaration at line 161 *)
(* error 
        for (__i__ = 0; __i__ < howmany(FD_SETSIZE, NFDBITS); __i__++) \
in declaration at line 162 *)
(* error 
    		__XFDS_BITS((dst), __i__) &= ~(__XFDS_BITS((b1), __i__)); \
(* error 
        }
{$else}

{$include <sys/poll.h>}
{$endif}

{$else}

in define line 171 *)
{$ifndef FD_SETSIZE}

    const
      FD_SETSIZE = XFD_SETSIZE;      
{$endif}
{$include <X11/Xwinsock.h>}

    function Select(n,r,w,e,t : longint) : longint;    

Tfd_set ignored *)
    function XFD_SETCOUNT(p : longint) : longint;    

Tfd_set ignored *)
    function XFD_FD(p,i : longint) : longint;    

    function XFD_ANYSET(p : longint) : longint;    

(* error 
#define XFD_COPYSET(src,dst) { \
in declaration at line 184 *)
(* error 
    u_int __i; \
(* error 
    FD_ZERO(dst); \
in declaration at line 185 *)
(* error 
    FD_ZERO(dst); \
(* error 
    for (__i = 0; __i < XFD_SETCOUNT(src) ; __i++) { \
in declaration at line 186 *)
(* error 
    for (__i = 0; __i < XFD_SETCOUNT(src) ; __i++) { \
in declaration at line 186 *)
(* error 
    for (__i = 0; __i < XFD_SETCOUNT(src) ; __i++) { \
in declaration at line 187 *)
(* error 
        XFD_FD(dst,__i) = XFD_FD(src,__i); \
(* error 
    } \
in declaration at line 189 *)
(* error 
    XFD_SETCOUNT(dst) = XFD_SETCOUNT(src); \
(* error 
}
in declaration at line 193 *)
(* error 
    u_int __i; \
(* error 
    FD_ZERO(dst); \
in declaration at line 194 *)
(* error 
    FD_ZERO(dst); \
(* error 
    for (__i = 0; __i < XFD_SETCOUNT(b1) ; __i++) { \
in declaration at line 195 *)
(* error 
    for (__i = 0; __i < XFD_SETCOUNT(b1) ; __i++) { \
in declaration at line 195 *)
(* error 
    for (__i = 0; __i < XFD_SETCOUNT(b1) ; __i++) { \
in declaration at line 197 *)
(* error 
	   FD_SET(XFD_FD(b1,__i), dst); \
(* error 
    } \
in declaration at line 202 *)
(* error 
    u_int __i; \
(* error 
    if (dst != b1) XFD_COPYSET(b1,dst); \
in declaration at line 203 *)
(* error 
    if (dst != b1) XFD_COPYSET(b1,dst); \
(* error 
    for (__i = 0; __i < XFD_SETCOUNT(b2) ; __i++) { \
in declaration at line 204 *)
(* error 
    for (__i = 0; __i < XFD_SETCOUNT(b2) ; __i++) { \
in declaration at line 204 *)
(* error 
    for (__i = 0; __i < XFD_SETCOUNT(b2) ; __i++) { \
in declaration at line 206 *)
(* error 
	   FD_SET(XFD_FD(b2,__i), dst); \
(* error 
    } \

in declaration at line 212 *)
(* error 
    u_int __i; \
(* error 
    for (__i = 0; __i < XFD_SETCOUNT(b1) ; __i++) { \
in declaration at line 213 *)
(* error 
    for (__i = 0; __i < XFD_SETCOUNT(b1) ; __i++) { \
in declaration at line 213 *)
(* error 
    for (__i = 0; __i < XFD_SETCOUNT(b1) ; __i++) { \
in declaration at line 214 *)
(* error 
	FD_CLR(XFD_FD(b1,__i), dst); \
(* error 
    } \

{$undef FD_SET}
in declaration at line 223 *)
(* error 
        XFD_FD(set,XFD_SETCOUNT(set)++)=(fd); \
(* error 
} while(0)
in define line 226 *)
{$endif}

{$endif}


implementation

function NFDBITS : longint; { return type might be wrong }
  begin
    NFDBITS:=(sizeof(fd_mask))*NBBY;
  end;

function howmany(x,y : longint) : longint;
begin
  howmany:=(Tx(+(Ty(-(1)))))/y;
end;

function Select(n,r,w,e,t : longint) : longint;
begin
  Select:=select(n,Pfd_set(r),Pfd_set(w),Pfd_set(e),Ptimeval(t));
end;

function __FDS_BITS(p : longint) : longint;
begin
  __FDS_BITS:=p^.__X_FDS_BITS;
end;

    function Select(n,r,w,e,t : longint) : longint;
    begin
      Select:=select(0,Pfd_set(r),Pfd_set(w),Pfd_set(e),Ptimeval(t));
    end;

    function XFD_SETCOUNT(p : longint) : longint;
    begin
      XFD_SETCOUNT:=(Pfd_set(p))^.fd_count;
    end;

    function XFD_FD(p,i : longint) : longint;
    begin
      XFD_FD:=(Pfd_set(p))^.(fd_array[i]);
    end;

    function XFD_ANYSET(p : longint) : longint;
    begin
      XFD_ANYSET:=XFD_SETCOUNT(p);
    end;


end.
