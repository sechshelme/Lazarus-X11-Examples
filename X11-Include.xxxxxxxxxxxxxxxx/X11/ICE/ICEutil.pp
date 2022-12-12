
unit ICEutil;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ICE/ICEutil.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ICE/ICEutil.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ICE/ICEutil.pp
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
    Pchar  = ^char;
    PFILE  = ^FILE;
    PIceAuthDataEntry  = ^IceAuthDataEntry;
    PIceAuthFileEntry  = ^IceAuthFileEntry;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _ICEUTIL_H_}
{$define _ICEUTIL_H_}
{$include <X11/Xfuncproto.h>}
{$include <stdio.h>}

(* error 
typedef struct {
in declaration at line 43 *)
      var
        protocol_data_length : word;cvar;public;
        protocol_data : Pchar;cvar;public;
        network_id : Pchar;cvar;public;
        auth_name : Pchar;cvar;public;
        auth_data_length : word;cvar;public;
        auth_data : Pchar;cvar;public;
(* error 
} IceAuthFileEntry;
in declaration at line 50 *)

    type
      PIceAuthDataEntry = ^TIceAuthDataEntry;
      TIceAuthDataEntry = record
          protocol_name : Pchar;
          network_id : Pchar;
          auth_name : Pchar;
          auth_data_length : word;
          auth_data : Pchar;
        end;



    const
      IceAuthLockSuccess = 0;      

      IceAuthLockError = 1;      

      IceAuthLockTimeout = 2;      


function IceAuthFileName:Pchar;cdecl;external;

function IceLockAuthFile(para1:Pchar; para2:longint; para3:longint; para4:longint):longint;cdecl;external;

procedure IceUnlockAuthFile(para1:Pchar);cdecl;external;

function IceReadAuthFileEntry(para1:PFILE):PIceAuthFileEntry;cdecl;external;

procedure IceFreeAuthFileEntry(para1:PIceAuthFileEntry);cdecl;external;

function IceWriteAuthFileEntry(para1:PFILE; para2:PIceAuthFileEntry):TStatus;cdecl;external;

function IceGetAuthFileEntry(para1:Pchar; para2:Pchar; para3:Pchar):PIceAuthFileEntry;cdecl;external;

function IceGenerateMagicCookie(para1:longint):Pchar;cdecl;external;

procedure IceSetPaAuthData(para1:longint; para2:PIceAuthDataEntry);cdecl;external;
{$endif}

(* error 
#endif /* _ICEUTIL_H_ */

implementation


end.
