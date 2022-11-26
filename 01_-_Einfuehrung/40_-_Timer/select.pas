
unit select;
interface

{
  Automatically converted by H2Pas 1.0.0 from /home/tux/Schreibtisch/h2pas_test/select.tmp.h
  The following command line parameters were used:
    -e
    -p
    -D
    -w
    -o
    /home/tux/Schreibtisch/h2pas_test/select.pas
    /home/tux/Schreibtisch/h2pas_test/select.tmp.h
}

    const
      External_library='kernel32'; {Setup as you need}

    { Pointers to basic pascal types, inserted by h2pas conversion program.}
    Type
      PLongint  = ^Longint;
      PSmallInt = ^SmallInt;
      PByte     = ^Byte;
      PWord     = ^Word;
      PDWord    = ^DWord;
      PDouble   = ^Double;

    Type
    P__fd_mask  = ^__fd_mask;
    Pfd_mask  = ^fd_mask;
    Pfd_set  = ^fd_set;
    Psuseconds_t  = ^suseconds_t;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { `fd_set' type and related macros, and `select'/`pselect' declarations.
     Copyright (C) 1996-2022 Free Software Foundation, Inc.
     This file is part of the GNU C Library.
  
     The GNU C Library is free software; you can redistribute it and/or
     modify it under the terms of the GNU Lesser General Public
     License as published by the Free Software Foundation; either
     version 2.1 of the License, or (at your option) any later version.
  
     The GNU C Library is distributed in the hope that it will be useful,
     but WITHOUT ANY WARRANTY; without even the implied warranty of
     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
     Lesser General Public License for more details.
  
     You should have received a copy of the GNU Lesser General Public
     License along with the GNU C Library; if not, see
     <https://www.gnu.org/licenses/>.   }
  {	POSIX 1003.1g: 6.2 Select from File Descriptor Sets <sys/select.h>   }
{$ifndef _SYS_SELECT_H}

  const
    _SYS_SELECT_H = 1;    
{$include <features.h>}
  { Get definition of needed basic types.   }
{$include <bits/types.h>}
  { Get __FD_* definitions.   }
{$include <bits/select.h>}
  { Get sigset_t.   }
{$include <bits/types/sigset_t.h>}
  { Get definition of timer specification structures.   }
{$include <bits/types/time_t.h>}
{$include <bits/types/struct_timeval.h>}
{$ifdef __USE_XOPEN2K}
{$include <bits/types/struct_timespec.h>}
{$endif}
{$ifndef __suseconds_t_defined}

  type
    Psuseconds_t = ^suseconds_t;
    suseconds_t = __suseconds_t;
{$define __suseconds_t_defined}  
{$endif}
  { The fd_set member is required to be an array of longs.   }

  type
    P__fd_mask = ^__fd_mask;
    __fd_mask = longint;
  { Some versions of <linux/posix_types.h> define this macros.   }
{$undef	__NFDBITS}
  { It's easier to assume 8-bit bytes than to get CHAR_BIT.   }

  { was #define dname def_expr }
  function __NFDBITS : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function __FD_ELT(d : longint) : longint;  

(* error 
#define	__FD_MASK(d)	((__fd_mask) (1UL << ((d) % __NFDBITS)))
in define line 56 *)
    { fd_set for select and pselect.   }
    { XPG4.2 requires this member name.  Otherwise avoid the name
           from the global namespace.   }
{$ifdef __USE_XOPEN}
(* error 
# define __FDS_BITS(set) ((set)->fds_bits)
{$else}
{$endif}
 in member_list *)

    type
      Pfd_set = ^fd_set;
      fd_set = record
        end;
    { Maximum number of file descriptors in `fd_set'.   }

    const
      FD_SETSIZE = __FD_SETSIZE;      
{$ifdef __USE_MISC}
    { Sometimes the fd_set member is assumed to have this type.   }

    type
      Pfd_mask = ^fd_mask;
      fd_mask = __fd_mask;
    { Number of bits per word of `fd_set' (some code assumes this is 32).   }

    const
      NFDBITS = __NFDBITS;      
{$endif}
    { Access macros for `fd_set'.   }
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   

    function FD_SET(fd,fdsetp : longint) : longint;    

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function FD_CLR(fd,fdsetp : longint) : longint;  

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function FD_ISSET(fd,fdsetp : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function FD_ZERO(fdsetp : longint) : longint;

{ Check the first NFDS descriptors each in READFDS (if not NULL) for read
   readiness, in WRITEFDS (if not NULL) for write readiness, and in EXCEPTFDS
   (if not NULL) for exceptional conditions.  If TIMEOUT is not NULL, time out
   after waiting the interval specified therein.  Returns the number of ready
   descriptors, or -1 for errors.

   This function is a cancellation point and therefore not marked with
   __THROW.   }
{$ifndef __USE_TIME_BITS64}
(* error 
extern int select (int __nfds, fd_set *__restrict __readfds,
in declaration at line 105 *)
{$else}
{$ifdef __REDIRECT}
(* error 
                       (int __nfds, fd_set *__restrict __readfds,
(* error 
                       (int __nfds, fd_set *__restrict __readfds,
(* error 
                        fd_set *__restrict __writefds,
(* error 
                        fd_set *__restrict __exceptfds,
(* error 
                        struct timeval *__restrict __timeout),
(* error 
                       __select64);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
{$else}

    const
      select = __select64;      
{$endif}
{$endif}
{$ifdef __USE_XOPEN2K}
    { Same as above only that the TIMEOUT value is given with higher
       resolution and a sigmask which is been set temporarily.  This version
       should be used.
    
       This function is a cancellation point and therefore not marked with
       __THROW.   }
{$ifndef __USE_TIME_BITS64}
(* error 
extern int pselect (int __nfds, fd_set *__restrict __readfds,
(* error 
		    fd_set *__restrict __writefds,
(* error 
		    fd_set *__restrict __exceptfds,
(* error 
		    const struct timespec *__restrict __timeout,
(* error 
		    const __sigset_t *__restrict __sigmask);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
{$else}
{$ifdef __REDIRECT}
(* error 
                       (int __nfds, fd_set *__restrict __readfds,
(* error 
                       (int __nfds, fd_set *__restrict __readfds,
(* error 
                        fd_set *__restrict __writefds,
(* error 
                        fd_set *__restrict __exceptfds,
(* error 
                        const struct timespec *__restrict __timeout,
(* error 
                        const __sigset_t *__restrict __sigmask),
(* error 
                       __pselect64);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
{$else}

    const
      pselect = __pselect64;      
{$endif}
{$endif}
{$endif}
    { Define some inlines helping to catch common problems.   }
{$if __USE_FORTIFY_LEVEL > 0 && defined __GNUC__}
{$include <bits/select2.h>}
{$endif}
{$endif}
    { sys/select.h  }
(* error 
#endif /* sys/select.h */

implementation

  { was #define dname def_expr }
  function __NFDBITS : longint; { return type might be wrong }
    begin
      __NFDBITS:=8*(longint(sizeof(__fd_mask)));
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function __FD_ELT(d : longint) : longint;
  begin
    __FD_ELT:=d/__NFDBITS;
  end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function FD_SET(fd,fdsetp : longint) : longint;
    begin
      FD_SET:=__FD_SET(fd,fdsetp);
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function FD_CLR(fd,fdsetp : longint) : longint;
  begin
    FD_CLR:=__FD_CLR(fd,fdsetp);
  end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function FD_ISSET(fd,fdsetp : longint) : longint;
begin
  FD_ISSET:=__FD_ISSET(fd,fdsetp);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function FD_ZERO(fdsetp : longint) : longint;
begin
  FD_ZERO:=__FD_ZERO(fdsetp);
end;


end.
