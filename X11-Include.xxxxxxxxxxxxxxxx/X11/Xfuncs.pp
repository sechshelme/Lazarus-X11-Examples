
unit Xfuncs;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xfuncs.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xfuncs.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xfuncs.pp
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



{$ifndef _XFUNCS_H_}
{$define _XFUNCS_H_}
{$include <X11/Xosdefs.h>}

{$if !(defined(XFree86LOADER) && defined(IN_MODULE))}
{$ifdef X_USEBFUNCS}

procedure bcopy;cdecl;external;
procedure bzero;cdecl;external;
function bcmp:longint;cdecl;external;
{$else}
{$if defined(SYSV) && !defined(__SCO__) && !defined(__sun) && !defined(__UNIXWARE__) && !defined(_AIX)}
{$include <memory.h>}

procedure bcopy;cdecl;external;
function bzero(b,len : longint) : longint;

function bcmp(b1,b2,len : longint) : longint;

{$else}
{$include <string.h>}
{$if defined(__SCO__) || defined(__sun) || defined(__UNIXWARE__) || defined(__CYGWIN__) || defined(_AIX) || defined(__APPLE__)}
{$include <strings.h>}
{$endif}
{$define _XFUNCS_H_INCLUDED_STRING_H}
{$endif}
{$endif}



{$ifndef _XFUNCS_H_INCLUDED_STRING_H}
{$include <string.h>}
{$endif}
{$undef bzero}

function bzero(b,len : longint) : longint;

{$if defined WIN32 && defined __MINGW32__}

function bcopy(b1,b2,len : longint) : longint;

{$endif}
{$endif}

{$endif}


implementation

function bzero(b,len : longint) : longint;
begin
  bzero:=memset(b,0,len);
end;

function bcmp(b1,b2,len : longint) : longint;
begin
  bcmp:=memcmp(b1,b2,len);
end;

function bzero(b,len : longint) : longint;
begin
  bzero:=memset(b,0,len);
end;

function bcopy(b1,b2,len : longint) : longint;
begin
  bcopy:=memmove(b2,b1,Tsize_t(len));
end;


end.
