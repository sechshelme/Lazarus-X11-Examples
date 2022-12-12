
unit Xge;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xge.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xge.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xge.pp
}

    { Pointers to basic pascal types, inserted by h2pas conversion program.}
    Type
      PLongint  = ^Longint;
      PSmallInt = ^SmallInt;
      PByte     = ^Byte;
      PWord     = ^Word;
      PDWord    = ^DWord;
      PDouble   = ^Double;

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

function XGEQueryExtension(dpy:PDisplay; event_basep:Plongint; err_basep:Plongint):TBool;cdecl;external;
function XGEQueryVersion(dpy:PDisplay; major:Plongint; minor:Plongint):TBool;cdecl;external;
{$endif}

(* error 
#endif /* _XGE_H_ */

implementation


end.
