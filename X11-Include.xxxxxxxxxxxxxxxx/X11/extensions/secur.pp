
unit secur;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/secur.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/secur.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/secur.pp
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _SECUR_H}
{$define _SECUR_H}

const
  SECURITY_EXTENSION_NAME = 'SECURITY';  
  SECURITY_MAJOR_VERSION = 1;  
  SECURITY_MINOR_VERSION = 0;  
  XSecurityNumberEvents = 1;  
  XSecurityNumberErrors = 2;  
  XSecurityBadAuthorization = 0;  
  XSecurityBadAuthorizationProtocol = 1;  

  XSecurityClientTrusted = 0;  
  XSecurityClientUntrusted = 1;  

  XSecurityTimeout = 1 shl 0;  
  XSecurityTrustLevel = 1 shl 1;  
  XSecurityGroup = 1 shl 2;  
  XSecurityEventMask = 1 shl 3;  
  XSecurityAllAuthorizationAttributes = ((XSecurityTimeout or XSecurityTrustLevel) or XSecurityGroup) or XSecurityEventMask;  

  XSecurityAuthorizationRevokedMask = 1 shl 0;  
  XSecurityAllEventMasks = XSecurityAuthorizationRevokedMask;  

  XSecurityAuthorizationRevoked = 0;  
  XSecurityAuthorizationName = 'XC-QUERY-SECURITY-1';  
  XSecurityAuthorizationNameLen = 19;  
{$endif}


implementation


end.
