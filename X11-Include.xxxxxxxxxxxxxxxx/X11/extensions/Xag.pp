
unit Xag;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xag.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xag.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xag.pp
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
    PWindow  = ^Window;
    PXAppGroup  = ^XAppGroup;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XAG_H_}
{$define _XAG_H_}
{$include <X11/extensions/ag.h>}
{$include <X11/Xfuncproto.h>}
{$include <stdarg.h>}
(* error 
typedef XID XAppGroup;
in declaration at line 37 *)


function XagQueryVersion(para1:PDisplay; para2:Plongint; para3:Plongint):TBool;cdecl;external;

function XagCreateEmbeddedApplicationGroup(para1:PDisplay; para2:TVisualID; para3:TColormap; para4:dword; para5:dword; 
               para6:PXAppGroup):TStatus;cdecl;external;

function XagCreateNonembeddedApplicationGroup(para1:PDisplay; para2:PXAppGroup):TStatus;cdecl;external;

function XagDestroyApplicationGroup(para1:PDisplay; para2:TXAppGroup):TStatus;cdecl;external;
function XagGetApplicationGroupAttributes(para1:PDisplay; para2:TXAppGroup; args:array of const):TStatus;cdecl;external;
function XagGetApplicationGroupAttributes(para1:PDisplay; para2:TXAppGroup):TStatus;cdecl;external;

function XagQueryApplicationGroup(para1:PDisplay; para2:TXID; para3:PXAppGroup):TStatus;cdecl;external;

function XagCreateAssociation(para1:PDisplay; para2:PWindow; para3:pointer):TStatus;cdecl;external;

function XagDestroyAssociation(para1:PDisplay; para2:TWindow):TStatus;cdecl;external;
{$endif}

(* error 


implementation


end.
