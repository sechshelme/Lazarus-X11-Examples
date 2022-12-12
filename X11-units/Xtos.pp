
unit Xtos;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xtos.h
  The following command line parameters were used:
    /usr/include/X11/Xtos.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xtos.pp
}

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
    DEALLOCATE_LOCAL_FALLBACK:=XtFree(XtPointer(_ptr));
  end;


end.
