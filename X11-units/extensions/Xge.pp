
unit Xge;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/Xge.h
  The following command line parameters were used:
    /usr/include/X11/extensions/Xge.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/Xge.pp
}

    Type
    PDisplay  = ^Display;
    Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XGE_H_}
{$define _XGE_H_}  
{$include <X11/Xlib.h>}
{$include <X11/Xfuncproto.h>}

(* error 
typedef struct {
in declaration at line 46 *)

      var
        pad0 : byte;cvar;public;
        pad1 : word;cvar;public;
        evmask : dword;cvar;public;
(* error 
} XGenericEventMask;
in declaration at line 50 *)

    function XGEQueryExtension(dpy:PDisplay; event_basep:Plongint; err_basep:Plongint):Bool;

    function XGEQueryVersion(dpy:PDisplay; major:Plongint; minor:Plongint):Bool;

{$endif}

(* error 
#endif /* _XGE_H_ */

implementation

    function XGEQueryExtension(dpy:PDisplay; event_basep:Plongint; err_basep:Plongint):Bool;
    begin
      { You must implement this function }
    end;
    function XGEQueryVersion(dpy:PDisplay; major:Plongint; minor:Plongint):Bool;
    begin
      { You must implement this function }
    end;

end.
