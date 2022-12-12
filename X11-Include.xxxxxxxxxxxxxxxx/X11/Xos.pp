
unit Xos;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xos.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xos.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xos.pp
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
    Ptimeval  = ^timeval;
    Ptimezone  = ^timezone;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XOS_H_}
{$define _XOS_H_}
{$include <X11/Xosdefs.h>}

{$include <sys/types.h>}
{$if defined(__SCO__) || defined(__UNIXWARE__)}
{$include <stdint.h>}
{$endif}

{$include <string.h>}
{$if defined(__SCO__) || defined(__UNIXWARE__) || defined(__sun) || defined(__CYGWIN__) || defined(_AIX) || defined(__APPLE__)}
{$include <strings.h>}
{$else}
{$ifndef index}

function index(s,c : longint) : longint;

{$endif}
{$ifndef rindex}

function rindex(s,c : longint) : longint;

{$endif}
{$endif}

{$if defined(X_NOT_POSIX)}
{$include <fcntl.h>}
{$if defined(USL) || defined(__i386__) && (defined(SYSV) || defined(SVR4))}
{$include <unistd.h>}
{$endif}
{$ifdef WIN32}
{$include <X11/Xw32defs.h>}
{$else}
{$include <sys/file.h>}
{$endif}
{$else}

{$include <fcntl.h>}
{$include <unistd.h>}
{$endif}


{$if defined(_POSIX_SOURCE) && defined(SVR4)}

{$undef _POSIX_SOURCE}
{$include <sys/time.h>}
{$define _POSIX_SOURCE}
{$else defined(WIN32)}
{$include <time.h>}
{$if !defined(_WINSOCKAPI_) && !defined(_WILLWINSOCK_) && !defined(_TIMEVAL_DEFINED) && !defined(_STRUCT_TIMEVAL)}


type
  Ptimeval = ^Ttimeval;
  Ttimeval = record
      tv_sec : longint;
      tv_usec : longint;
    end;

{$define _TIMEVAL_DEFINED}
{$endif}
{$include <sys/timeb.h>}
(* error 
{ \
in declaration at line 113 *)
(* error 
    struct _timeb _gtodtmp; \
(* error 
    _ftime (&_gtodtmp); \
in declaration at line 114 *)
(* error 
    _ftime (&_gtodtmp); \
(* error 
    (t)->tv_sec = _gtodtmp.time; \
in declaration at line 115 *)
(* error 
    (t)->tv_sec = _gtodtmp.time; \
(* error 
    (t)->tv_usec = _gtodtmp.millitm * 1000; \
in declaration at line 116 *)
(* error 
    (t)->tv_usec = _gtodtmp.millitm * 1000; \
(* error 
}
{$else}
{$include <sys/time.h>}
{$include <time.h>}
{$endif}


{$if defined(_XOPEN_XPG4) || defined(_XOPEN_UNIX) /* _XOPEN_UNIX is XPG4.2 */}
in define line 125 *)
{$else}
{$if defined(SVR4) || defined(__SVR4) || defined(WIN32)}

    function X_GETTIMEOFDAY(t : longint) : longint;    

{$else}

    function X_GETTIMEOFDAY(t : longint) : longint;    

{$endif}
{$endif}

{$ifdef __GNU__}

    const
      PATH_MAX = 4096;      
      MAXPATHLEN = 4096;      

      OPEN_MAX = 256;      
{$endif}

{$if defined(X_NOT_POSIX) && defined(SYSV) && !defined(SIGCHLD)}

    const
      SIGCHLD = SIGCLD;      
{$endif}
{$include <X11/Xarch.h>}
{$endif}


implementation

function index(s,c : longint) : longint;
begin
  index:=strchr(s,c);
end;

function rindex(s,c : longint) : longint;
begin
  rindex:=strrchr(s,c);
end;

    function X_GETTIMEOFDAY(t : longint) : longint;
    begin
      X_GETTIMEOFDAY:=gettimeofday(t);
    end;

    function X_GETTIMEOFDAY(t : longint) : longint;
    begin
      X_GETTIMEOFDAY:=gettimeofday(t,Ptimezone(0));
    end;


end.
