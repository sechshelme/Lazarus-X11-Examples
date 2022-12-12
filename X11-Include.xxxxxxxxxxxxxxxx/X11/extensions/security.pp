
unit security;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/security.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/security.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/security.pp
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
    PXauth  = ^Xauth;
    PXSecurityAuthorization  = ^XSecurityAuthorization;
    PXSecurityAuthorizationAttributes  = ^XSecurityAuthorizationAttributes;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _SECURITY_H}
{$define _SECURITY_H}
{$define _XAUTH_STRUCT_ONLY}
{$include <X11/Xauth.h>}
{$include <X11/extensions/secur.h>}
(* error 
Status XSecurityQueryExtension (
(* error 
    int *major_version_return,
(* error 
    int *minor_version_return);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

function XSecurityAllocXauth:PXauth;cdecl;external;
procedure XSecurityFreeXauth(auth:PXauth);cdecl;external;

type
  PXSecurityAuthorization = ^TXSecurityAuthorization;
  TXSecurityAuthorization = dword;

  PXSecurityAuthorizationAttributes = ^TXSecurityAuthorizationAttributes;
  TXSecurityAuthorizationAttributes = record
      timeout : dword;
      trust_level : dword;
      group : TXID;
      event_mask : longint;
    end;

function XSecurityGenerateAuthorization(dpy:PDisplay; auth_in:PXauth; valuemask:dword; attributes:PXSecurityAuthorizationAttributes; auth_id_return:PXSecurityAuthorization):PXauth;cdecl;external;
function XSecurityRevokeAuthorization(dpy:PDisplay; auth_id:TXSecurityAuthorization):TStatus;cdecl;external;
(* error 
typedef struct {
in declaration at line 70 *)

      var
        serial : dword;cvar;public;

        send_event : TBool;cvar;public;

        display : PDisplay;cvar;public;

        auth_id : TXSecurityAuthorization;cvar;public;

(* error 
} XSecurityAuthorizationRevokedEvent;
in declaration at line 75 *)
{$endif}


implementation


end.
