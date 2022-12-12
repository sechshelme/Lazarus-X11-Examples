
unit Xtransint;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xtrans/Xtransint.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xtrans/Xtransint.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xtrans/Xtransint.pp
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
    PXtransConnFd  = ^XtransConnFd;
    PXtransConnInfo  = ^XtransConnInfo;
    PXtransport  = ^Xtransport;
    PXtransport_table  = ^Xtransport_table;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XTRANSINT_H_}
{$define _XTRANSINT_H_}

{$if !defined(XTRANSDEBUG) && defined(XTRANS_TRANSPORT_C)}

const
  XTRANSDEBUG = 1;  
{$endif}
{$ifdef WIN32}
{$define _WILLWINSOCK_}
{$endif}
{$include "Xtrans.h"}
{$ifndef _X_UNUSED  /* Defined in Xfuncproto.h in xproto >= 7.0.22 */}

{$define _X_UNUSED}
{$endif}
{$ifdef XTRANSDEBUG}
{$include <stdio.h>}
{$endif}

{$include <errno.h>}
{$ifndef WIN32}
{$include <sys/socket.h>}
{$include <netinet/in.h>}
{$include <arpa/inet.h>}

{$if defined(_POSIX_SOURCE) || defined(USG) || defined(SVR4) || defined(__SVR4) || defined(__SCO__)}
{$ifndef NEED_UTSNAME}
{$define NEED_UTSNAME}
{$endif}
{$include <sys/utsname.h>}
{$endif}
(* error 
#  define ESET(val) errno = val
in define line 108 *)

    function EGET : longint;    

{$else}

{$include <limits.h>	/* for USHRT_MAX */}

    function ESET(val : longint) : longint;    

    function EGET : longint;    

{$endif}

{$include <stddef.h>}
{$ifdef X11_t}

    const
      X_TCP_PORT = 6000;      
{$endif}
{$if XTRANS_SEND_FDS}
    type
      PXtransConnFd = ^TXtransConnFd;
      TXtransConnFd = record
          next : PXtransConnFd;
          fd : longint;
          do_close : longint;
        end;

{$endif}
    type
      PXtransConnInfo = ^TXtransConnInfo;
      TXtransConnInfo = record
          transptr : PXtransport;
          index : longint;
          priv : Pchar;
          flags : longint;
          fd : longint;
          port : Pchar;
          family : longint;
          addr : Pchar;
          addrlen : longint;
          peeraddr : Pchar;
          peeraddrlen : longint;
          recv_fds : PXtransConnFd;
          send_fds : PXtransConnFd;
        end;


    const
      XTRANS_OPEN_COTS_CLIENT = 1;      
      XTRANS_OPEN_COTS_SERVER = 2;      
{$ifdef TRANS_CLIENT}




{$endif}

{$ifdef TRANS_SERVER}




{$endif}

{$ifdef TRANS_REOPEN}



{$endif}




{$ifdef TRANS_SERVER}

(* error 
# define ADDR_IN_USE_ALLOWED	1






{$endif}

{$ifdef TRANS_CLIENT}



{$endif}















{$if XTRANS_SEND_FDS}




{$endif}



 in member_list *)
    type
      PXtransport = ^TXtransport;
      TXtransport = record
        end;

      PXtransport_table = ^TXtransport_table;
      TXtransport_table = record
          transport : PXtransport;
          transport_id : longint;
        end;



    const
      TRANS_ALIAS = 1 shl 0;      

      TRANS_LOCAL = 1 shl 1;      

      TRANS_DISABLED = 1 shl 2;      

      TRANS_NOLISTEN = 1 shl 3;      

      TRANS_NOUNLINK = 1 shl 4;      

      TRANS_ABSTRACT = 1 shl 5;      

      TRANS_NOXAUTH = 1 shl 6;      

      TRANS_RECEIVED = 1 shl 7;      

      TRANS_KEEPFLAGS = TRANS_NOUNLINK or TRANS_ABSTRACT;      
{$ifdef XTRANS_TRANSPORT_C /* only provide static function prototypes when}
(* error 
			     building the transport.c file that has them in */
{$ifdef __clang__}

{$endif}

{$ifdef WIN32}
 in declarator_list *)
(* error 
#define READV(ciptr, iov, iovcnt)	TRANS(ReadV)(ciptr, iov, iovcnt)
 in declarator_list *)
(* error 
#define READV(ciptr, iov, iovcnt)	TRANS(ReadV)(ciptr, iov, iovcnt)

(* error 
    struct iovec *,	/* iov */

(* error 
    int			/* iovcnt */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
{$else}

    function READV(ciptr,iov,iovcnt : longint) : longint;    

{$endif}

{$ifdef WIN32}
(* error 
#define WRITEV(ciptr, iov, iovcnt)	TRANS(WriteV)(ciptr, iov, iovcnt)
in define line 340 *)
(* error 
static int TRANS(WriteV)(



in declaration at line 346 *)
{$else}

    function WRITEV(ciptr,iov,iovcnt : longint) : longint;    

{$endif}

(* error 
static int is_numeric (

in declaration at line 357 *)
{$ifdef TRANS_SERVER}
(* error 
static int trans_mkdir (


in declaration at line 363 *)
{$endif}
{$ifdef __clang__}
{$endif}

{$ifdef XTRANSDEBUG}
{$include <stdarg.h>}

{$if defined(XSERV_t) && defined(TRANS_SERVER)}
{$include "os.h"}
{$else}
(* error 
static inline void _X_ATTRIBUTE_PRINTF(1, 0)
(* error 
static inline void _X_ATTRIBUTE_PRINTF(1, 0)
(* error 
VErrorF(const char *f, va_list args)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
static inline void  _X_ATTRIBUTE_PRINTF(1, 2)
(* error 
static inline void  _X_ATTRIBUTE_PRINTF(1, 2)
(* error 
ErrorF(const char *f, ...)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    va_list args;
 in declarator_list *)
(* error 
    va_start(args, f);
(* error 
    va_start(args, f);
 in declarator_list *)
 in declarator_list *)
(* error 
    VErrorF(f, args);
(* error 
    VErrorF(f, args);
 in declarator_list *)
 in declarator_list *)
      var
        args : Tva_end;cvar;public;
(* error 
}
{$endif}

{$endif}

{$ifdef XTRANSDEBUG}
in declaration at line 407 *)
(* error 
    va_start(args, f);
(* error 
    va_start(args, f);
 in declarator_list *)
 in declarator_list *)
(* error 
    if (lvl <= XTRANSDEBUG) {
 in declarator_list *)
(* error 
	int saveerrno = errno;
 in declarator_list *)
(* error 
	ErrorF("%s", __xtransname);
(* error 
	ErrorF("%s", __xtransname);
 in declarator_list *)
 in declarator_list *)
(* error 
	VErrorF(f, args);
(* error 
	VErrorF(f, args);
 in declarator_list *)
 in declarator_list *)
{$ifdef XTRANSDEBUGTIMESTAMP}
(* error 
	{
in declaration at line 418 *)
(* error 
	    gettimeofday(&tp, 0);
(* error 
	    gettimeofday(&tp, 0);
 in declarator_list *)
 in declarator_list *)
(* error 
	    ErrorF("timestamp (ms): %d\n",
(* error 
		   tp.tv_sec * 1000 + tp.tv_usec / 1000);
 in declarator_list *)
 in declarator_list *)
(* error 
	}
{$endif}
in declaration at line 424 *)
(* error 
    }
in declaration at line 426 *)
{$endif}

(* error 
}
{$endif}

{$endif}


implementation

    function EGET : longint;
    begin
      EGET:=errno;
    end;

    function ESET(val : longint) : longint;
    begin
      ESET:=WSASetLastError(val);
    end;

    function EGET : longint;
    begin
      EGET:=WSAGetLastError;
    end;

    function READV(ciptr,iov,iovcnt : longint) : longint;
    begin
      READV:=readv(ciptr^.fd,iov,iovcnt);
    end;

    function WRITEV(ciptr,iov,iovcnt : longint) : longint;
    begin
      WRITEV:=writev(ciptr^.fd,iov,iovcnt);
    end;


end.
