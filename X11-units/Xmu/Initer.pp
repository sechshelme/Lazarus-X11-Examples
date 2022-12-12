
unit Initer;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xmu/Initer.h
  The following command line parameters were used:
    /usr/include/X11/Xmu/Initer.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xmu/Initer.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XMU_INITER_H_}
{$define _XMU_INITER_H_}  
{$include <X11/Intrinsic.h>}
{$include <X11/Xfuncproto.h>}

  type

    XmuInitializerProc = procedure (app_context:XtAppContext; data:XPointer);cdecl;
(* error 
void XmuCallInitializers
in declaration at line 45 *)

    procedure XmuAddInitializer(func:XmuInitializerProc; data:XPointer);

{$endif}

(* error 
#endif /* _XMU_INITER_H_ */

implementation

    procedure XmuAddInitializer(func:XmuInitializerProc; data:XPointer);
    begin
      { You must implement this function }
    end;

end.
