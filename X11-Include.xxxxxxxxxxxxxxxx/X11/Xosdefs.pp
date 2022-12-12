
unit Xosdefs;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xosdefs.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xosdefs.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xosdefs.pp
}

    { Pointers to basic pascal types, inserted by h2pas conversion program.}
    Type
      PLongint  = ^Longint;
      PSmallInt = ^SmallInt;
      PByte     = ^Byte;
      PWord     = ^Word;
      PDWord    = ^DWord;
      PDouble   = ^Double;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XOSDEFS_H_}
{$define _XOSDEFS_H_}

{$ifdef _SCO_DS}
{$ifndef __SCO__}
{$define __SCO__}
{$endif}
{$endif}
{$ifdef __i386__}
{$ifdef SYSV}
{$if !defined(__SCO__) && \}
(* error 
	!defined(__UNIXWARE__) && !defined(__sun)
{$if !defined(_POSIX_SOURCE)}
in define line 48 *)
{$endif}
{$endif}
{$endif}
{$endif}
{$ifdef __sun}

{$if defined(__SVR4) && !defined(SVR4)}

    const
      SVR4 = 1;      
{$endif}
{$ifdef SVR4}


    const
      X_POSIX_C_SOURCE = 199300;      
{$endif}
{$endif}
{$ifdef WIN32}
{$ifndef _POSIX_}
{$define X_NOT_POSIX}    
{$endif}
{$endif}
{$ifdef __APPLE__}
{$define NULL_NOT_ZERO}    

{$if defined(_XOPEN_SOURCE) || defined(_POSIX_SOURCE) || defined(_POSIX_C_SOURCE)}
{$ifndef _DARWIN_C_SOURCE}
{$define _DARWIN_C_SOURCE}    
{$endif}
{$endif}
{$endif}
{$ifdef __GNU__}
{$ifndef PATH_MAX}

    const
      PATH_MAX = 4096;      
{$endif}
{$ifndef MAXPATHLEN}

    const
      MAXPATHLEN = 4096;      
{$endif}
{$endif}
{$if defined(__SCO__) || defined(__UNIXWARE__)}
{$ifndef PATH_MAX}

    const
      PATH_MAX = 1024;      
{$endif}
{$ifndef MAXPATHLEN}

    const
      MAXPATHLEN = 1024;      
{$endif}
{$endif}
{$if defined(__OpenBSD__) || defined(__NetBSD__) || defined(__FreeBSD__) \}
(* error 
	|| defined(__APPLE__) || defined(__DragonFly__)
{$ifndef CSRG_BASED}
in define line 111 *)
{$endif}
{$endif}
{$endif}


implementation


end.
