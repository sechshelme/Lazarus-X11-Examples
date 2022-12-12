
unit dpms;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/dpms.h
  The following command line parameters were used:
    /usr/include/X11/extensions/dpms.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/dpms.pp
}

    Type
    PBOOL  = ^BOOL;
    PCARD16  = ^CARD16;
    PDisplay  = ^Display;
    Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _X11_EXTENSIONS_DPMS_H}

  const
    _X11_EXTENSIONS_DPMS_H = 1;    
{$include <X11/X.h>}
{$include <X11/Xmd.h>}
{$include <X11/extensions/dpmsconst.h>}
{$ifndef DPMS_SERVER}
(* error 
extern Bool DPMSQueryExtension(Display *, int *, int *);
in declaration at line 39 *)

    function DPMSGetVersion(_para1:PDisplay; _para2:Plongint; _para3:Plongint):Status;cdecl;

    function DPMSCapable(_para1:PDisplay):Bool;cdecl;

    function DPMSSetTimeouts(_para1:PDisplay; _para2:CARD16; _para3:CARD16; _para4:CARD16):Status;cdecl;

    function DPMSGetTimeouts(_para1:PDisplay; _para2:PCARD16; _para3:PCARD16; _para4:PCARD16):Bool;cdecl;

    function DPMSEnable(_para1:PDisplay):Status;cdecl;

    function DPMSDisable(_para1:PDisplay):Status;cdecl;

    function DPMSForceLevel(_para1:PDisplay; _para2:CARD16):Status;cdecl;

    function DPMSInfo(_para1:PDisplay; _para2:PCARD16; _para3:PBOOL):Status;cdecl;

{$endif}
{$endif}

(* error 


implementation


end.
