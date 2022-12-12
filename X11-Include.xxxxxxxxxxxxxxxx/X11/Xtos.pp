
unit Xtos;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xtos.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xtos.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xtos.pp
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



{$ifndef _Xtos_h}
{$define _Xtos_h}

function ALLOCATE_LOCAL_FALLBACK(_size : longint) : longint;

function DEALLOCATE_LOCAL_FALLBACK(_ptr : longint) : longint;

{$include <X11/Xalloca.h>}
{$if defined (_LP64) || \}
(* error 
    defined(__alpha) || defined(__alpha__) || \
{$endif}
{$endif}



implementation

function ALLOCATE_LOCAL_FALLBACK(_size : longint) : longint;
begin
  ALLOCATE_LOCAL_FALLBACK:=XtMalloc(dword(_size));
end;

function DEALLOCATE_LOCAL_FALLBACK(_ptr : longint) : longint;
begin
  DEALLOCATE_LOCAL_FALLBACK:=XtFree(TXtPointer(_ptr));
end;


end.
