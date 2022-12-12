
unit Initer;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/Initer.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/Initer.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xmu/Initer.pp
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




{$ifndef _XMU_INITER_H_}
{$define _XMU_INITER_H_}
{$include <X11/Intrinsic.h>}
{$include <X11/Xfuncproto.h>}
type

  TXmuInitializerProc = procedure (app_context:TXtAppContext; data:TXPointer);cdecl;
(* error 
void XmuCallInitializers
in declaration at line 45 *)

procedure XmuAddInitializer(func:TXmuInitializerProc; data:TXPointer);cdecl;external;
{$endif}

(* error 
#endif /* _XMU_INITER_H_ */

implementation


end.
