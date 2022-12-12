
unit Xwindows;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xwindows.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xwindows.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xwindows.pp
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





{$undef _XFree86Server}
{$ifdef XFree86Server}
{$define _XFree86Server}
{$undef XFree86Server}
{$endif}

{$define NOMINMAX}

{$define _NO_BOOL_TYPEDEF}

const
  BOOL = WINBOOL;  
  INT32 = wINT32;  
{$ifdef __x86_64__}
  INT64 = wINT64;  
  LONG64 = wLONG64;  
{$endif}
{$undef Status}

const
  Status = wStatus;  
  ATOM = wATOM;  
  BYTE = wBYTE;  
  FreeResource = wFreeResource;  
{$include <windows.h>}
{$undef NOMINMAX}
{$undef Status}

const
  Status = longint;  
{$undef BYTE}
{$undef BOOL}
{$undef INT32}
{$undef INT64}
{$undef LONG64}
{$undef ATOM}
{$undef FreeResource}
{$undef CreateWindowA}

  wBOOL = WINBOOL;  
{$ifdef RESOURCE_H}
{$undef RT_FONT}
{$undef RT_CURSOR}

function RT_FONT : TRESTYPE;  

function RT_CURSOR : TRESTYPE;  

{$endif}
{$ifndef __CYGWIN__}

function sleep(x : longint) : longint;

{$endif}
{$if defined(WIN32) && (!defined(PATH_MAX) || PATH_MAX < 1024)}
{$undef PATH_MAX}

const
  PATH_MAX = 1024;  
{$endif}
{$ifdef _XFree86Server}
{$define XFree86Server}
{$undef _XFree86Server}
{$endif}

implementation

function RT_FONT : TRESTYPE;
  begin
    RT_FONT:=TRESTYPE(4);
  end;

function RT_CURSOR : TRESTYPE;
  begin
    RT_CURSOR:=TRESTYPE(5);
  end;

function sleep(x : longint) : longint;
begin
  sleep:=Sleep(x*1000);
end;


end.
