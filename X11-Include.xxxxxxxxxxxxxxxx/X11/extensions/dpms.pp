
unit dpms;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/dpms.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/dpms.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/dpms.pp
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

function DPMSGetVersion(para1:PDisplay; para2:Plongint; para3:Plongint):TStatus;cdecl;external;
function DPMSCapable(para1:PDisplay):TBool;cdecl;external;
function DPMSSetTimeouts(para1:PDisplay; para2:TCARD16; para3:TCARD16; para4:TCARD16):TStatus;cdecl;external;
function DPMSGetTimeouts(para1:PDisplay; para2:PCARD16; para3:PCARD16; para4:PCARD16):TBool;cdecl;external;
function DPMSEnable(para1:PDisplay):TStatus;cdecl;external;
function DPMSDisable(para1:PDisplay):TStatus;cdecl;external;
function DPMSForceLevel(para1:PDisplay; para2:TCARD16):TStatus;cdecl;external;
function DPMSInfo(para1:PDisplay; para2:PCARD16; para3:PBOOL):TStatus;cdecl;external;
{$endif}
{$endif}

(* error 


implementation


end.
