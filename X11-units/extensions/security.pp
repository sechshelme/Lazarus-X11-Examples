
unit security;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/security.h
  The following command line parameters were used:
    /usr/include/X11/extensions/security.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/security.pp
}

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

  function XSecurityAllocXauth:^Xauth;

  procedure XSecurityFreeXauth(auth:PXauth);



  type
    XSecurityAuthorization = dword;

    XSecurityAuthorizationAttributes = record
        timeout : dword;
        trust_level : dword;
        group : XID;
        event_mask : longint;
      end;

  function XSecurityGenerateAuthorization(dpy:PDisplay; auth_in:PXauth; valuemask:dword; attributes:PXSecurityAuthorizationAttributes; auth_id_return:PXSecurityAuthorization):^Xauth;

  function XSecurityRevokeAuthorization(dpy:PDisplay; auth_id:XSecurityAuthorization):Status;

(* error 
typedef struct {
in declaration at line 70 *)


      var
        serial : dword;cvar;public;

        send_event : Bool;cvar;public;

        display : ^Display;cvar;public;

        auth_id : XSecurityAuthorization;cvar;public;

(* error 
} XSecurityAuthorizationRevokedEvent;
in declaration at line 75 *)
{$endif}


implementation

  function XSecurityAllocXauth:PXauth;
  begin
    { You must implement this function }
  end;
  procedure XSecurityFreeXauth(auth:PXauth);
  begin
    { You must implement this function }
  end;
  function XSecurityGenerateAuthorization(dpy:PDisplay; auth_in:PXauth; valuemask:dword; attributes:PXSecurityAuthorizationAttributes; auth_id_return:PXSecurityAuthorization):PXauth;
  begin
    { You must implement this function }
  end;
  function XSecurityRevokeAuthorization(dpy:PDisplay; auth_id:XSecurityAuthorization):Status;
  begin
    { You must implement this function }
  end;

end.
