
unit ICEutil;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/ICE/ICEutil.h
  The following command line parameters were used:
    /usr/include/X11/ICE/ICEutil.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/ICE/ICEutil.pp
}

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
        protocol_data : ^char;cvar;public;
        network_id : ^char;cvar;public;
        auth_name : ^char;cvar;public;
        auth_data_length : word;cvar;public;
        auth_data : ^char;cvar;public;
(* error 
} IceAuthFileEntry;
in declaration at line 50 *)


    type
      IceAuthDataEntry = record
          protocol_name : ^char;
          network_id : ^char;
          auth_name : ^char;
          auth_data_length : word;
          auth_data : ^char;
        end;



    const
      IceAuthLockSuccess = 0;      

      IceAuthLockError = 1;      

      IceAuthLockTimeout = 2;      


    function IceAuthFileName:^char;cdecl;


    function IceLockAuthFile(_para1:Pchar; _para2:longint; _para3:longint; _para4:longint):longint;cdecl;


    procedure IceUnlockAuthFile(_para1:Pchar);cdecl;


    function IceReadAuthFileEntry(_para1:PFILE):^IceAuthFileEntry;cdecl;


    procedure IceFreeAuthFileEntry(_para1:PIceAuthFileEntry);cdecl;


    function IceWriteAuthFileEntry(_para1:PFILE; _para2:PIceAuthFileEntry):Status;cdecl;


    function IceGetAuthFileEntry(_para1:Pchar; _para2:Pchar; _para3:Pchar):^IceAuthFileEntry;cdecl;


    function IceGenerateMagicCookie(_para1:longint):^char;cdecl;


    procedure IceSetPaAuthData(_para1:longint; _para2:PIceAuthDataEntry);cdecl;

{$endif}

(* error 
#endif /* _ICEUTIL_H_ */

implementation


end.
