
unit securproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/securproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/securproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/securproto.pp
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
PxSecurityAuthorizationRevokedEvent  = ^xSecurityAuthorizationRevokedEvent;
PxSecurityGenerateAuthorizationReply  = ^xSecurityGenerateAuthorizationReply;
PxSecurityGenerateAuthorizationReq  = ^xSecurityGenerateAuthorizationReq;
PxSecurityQueryVersionReply  = ^xSecurityQueryVersionReply;
PxSecurityQueryVersionReq  = ^xSecurityQueryVersionReq;
PxSecurityRevokeAuthorizationReq  = ^xSecurityRevokeAuthorizationReq;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _SECURPROTO_H}
{$define _SECURPROTO_H}
{$include <X11/extensions/secur.h>}

const
  X_SecurityQueryVersion = 0;  
  X_SecurityGenerateAuthorization = 1;  
  X_SecurityRevokeAuthorization = 2;  
type
  PxSecurityQueryVersionReq = ^TxSecurityQueryVersionReq;
  TxSecurityQueryVersionReq = record
      reqType : TCARD8;
      securityReqType : TCARD8;
      length : TCARD16;
      majorVersion : TCARD16;
      minorVersion : TCARD16;
    end;

const
  sz_xSecurityQueryVersionReq = 8;  
type
  PxSecurityQueryVersionReply = ^TxSecurityQueryVersionReply;
  TxSecurityQueryVersionReply = record
      _type : TCARD8;
      pad0 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      majorVersion : TCARD16;
      minorVersion : TCARD16;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xSecurityQueryVersionReply = 32;  



type
  PxSecurityGenerateAuthorizationReq = ^TxSecurityGenerateAuthorizationReq;
  TxSecurityGenerateAuthorizationReq = record
      reqType : TCARD8;
      securityReqType : TCARD8;
      length : TCARD16;
      nbytesAuthProto : TCARD16;
      nbytesAuthData : TCARD16;
      valueMask : TCARD32;
    end;

const
  sz_xSecurityGenerateAuthorizationReq = 12;  
type
  PxSecurityGenerateAuthorizationReply = ^TxSecurityGenerateAuthorizationReply;
  TxSecurityGenerateAuthorizationReply = record
      _type : TCARD8;
      pad0 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      authId : TCARD32;
      dataLength : TCARD16;
      pad1 : TCARD16;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xSecurityGenerateAuthorizationReply = 32;  
type
  PxSecurityRevokeAuthorizationReq = ^TxSecurityRevokeAuthorizationReq;
  TxSecurityRevokeAuthorizationReq = record
      reqType : TCARD8;
      securityReqType : TCARD8;
      length : TCARD16;
      authId : TCARD32;
    end;

const
  sz_xSecurityRevokeAuthorizationReq = 8;  
type
  PxSecurityAuthorizationRevokedEvent = ^TxSecurityAuthorizationRevokedEvent;
  TxSecurityAuthorizationRevokedEvent = record
      _type : TBYTE;
      detail : TBYTE;
      sequenceNumber : TCARD16;
      authId : TCARD32;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xSecurityAuthorizationRevokedEvent = 32;  
{$endif}


implementation


end.
