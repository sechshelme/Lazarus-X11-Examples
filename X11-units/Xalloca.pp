
unit Xalloca;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xalloca.h
  The following command line parameters were used:
    /usr/include/X11/Xalloca.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xalloca.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef XALLOCA_H}

  const
    XALLOCA_H = 1;    
{$ifndef INCLUDE_ALLOCA_H}

{$if defined(HAVE_ALLOCA_H) || defined(__SUNPRO_C) || defined(__SUNPRO_CC)}
{$define INCLUDE_ALLOCA_H}  
{$endif}
{$endif}
{$ifdef INCLUDE_ALLOCA_H}
{$include <alloca.h>}
{$endif}
{$ifndef NO_ALLOCA}

{$ifdef __GNUC__}
{$ifndef alloca}

  const
    alloca = __builtin_alloca;    
{$endif}


  function ALLOCATE_LOCAL(size : longint) : longint;  

{$else}


{$if defined(__sun) || defined(alloca)}


{$if !defined(__cplusplus)}

{$define __Xnullarg}  

  function alloca(_para1:__Xnullarg):pointer;cdecl;

{$endif}

  function ALLOCATE_LOCAL(size : longint) : longint;  

{$endif}

{$endif}

{$endif}

{$if !defined(ALLOCATE_LOCAL)}
{$if defined(ALLOCATE_LOCAL_FALLBACK) && defined(DEALLOCATE_LOCAL_FALLBACK)}

  function ALLOCATE_LOCAL(_size : longint) : longint;  

  function DEALLOCATE_LOCAL(_ptr : longint) : longint;  

{$else}

(* error 
#    define ALLOCATE_LOCAL(_size)  ALLOCATE_LOCAL_FALLBACK undefined!
in define line 112 *)
(* error 
#    define DEALLOCATE_LOCAL(_ptr) DEALLOCATE_LOCAL_FALLBACK undefined!
in define line 113 *)
{$endif}

{$else}
{$if !defined(DEALLOCATE_LOCAL)}
(* error 
#    define DEALLOCATE_LOCAL(_ptr) do {} while(0)
in define line 117 *)
{$endif}
{$endif}

{$endif}


implementation

  function ALLOCATE_LOCAL(size : longint) : longint;
  begin
    ALLOCATE_LOCAL:=alloca(size_t(size));
  end;

  function ALLOCATE_LOCAL(size : longint) : longint;
  begin
    ALLOCATE_LOCAL:=alloca(size_t(size));
  end;

  function ALLOCATE_LOCAL(_size : longint) : longint;
  begin
    ALLOCATE_LOCAL:=ALLOCATE_LOCAL_FALLBACK(_size);
  end;

  function DEALLOCATE_LOCAL(_ptr : longint) : longint;
  begin
    DEALLOCATE_LOCAL:=DEALLOCATE_LOCAL_FALLBACK(_ptr);
  end;


end.
