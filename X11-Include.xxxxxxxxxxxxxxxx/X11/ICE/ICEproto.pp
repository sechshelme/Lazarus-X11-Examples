
unit ICEproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ICE/ICEproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ICE/ICEproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/ICE/ICEproto.pp
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
PiceAuthNextPhaseMsg  = ^iceAuthNextPhaseMsg;
PiceAuthReplyMsg  = ^iceAuthReplyMsg;
PiceAuthRequiredMsg  = ^iceAuthRequiredMsg;
PiceByteOrderMsg  = ^iceByteOrderMsg;
PiceConnectionReplyMsg  = ^iceConnectionReplyMsg;
PiceConnectionSetupMsg  = ^iceConnectionSetupMsg;
PiceErrorMsg  = ^iceErrorMsg;
PiceMsg  = ^iceMsg;
PiceNoCloseMsg  = ^iceNoCloseMsg;
PicePingMsg  = ^icePingMsg;
PicePingReplyMsg  = ^icePingReplyMsg;
PiceProtocolReplyMsg  = ^iceProtocolReplyMsg;
PiceProtocolSetupMsg  = ^iceProtocolSetupMsg;
PiceWantToCloseMsg  = ^iceWantToCloseMsg;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _ICEPROTO_H_}
{$define _ICEPROTO_H_}
{$include <X11/Xmd.h>}
type
  PiceMsg = ^TiceMsg;
  TiceMsg = record
      majorOpcode : TCARD8;
      minorOpcode : TCARD8;
      data : array[0..1] of TCARD8;
      length : TCARD32;
    end;



  PiceErrorMsg = ^TiceErrorMsg;
  TiceErrorMsg = record
      majorOpcode : TCARD8;
      minorOpcode : TCARD8;
      errorClass : TCARD16;
      length : TCARD32;
      offendingMinorOpcode : TCARD8;
      severity : TCARD8;
      unused : TCARD16;
      offendingSequenceNum : TCARD32;
    end;

  PiceByteOrderMsg = ^TiceByteOrderMsg;
  TiceByteOrderMsg = record
      majorOpcode : TCARD8;
      minorOpcode : TCARD8;
      byteOrder : TCARD8;
      unused : TCARD8;
      length : TCARD32;
    end;






  PiceConnectionSetupMsg = ^TiceConnectionSetupMsg;
  TiceConnectionSetupMsg = record
      majorOpcode : TCARD8;
      minorOpcode : TCARD8;
      versionCount : TCARD8;
      authCount : TCARD8;
      length : TCARD32;
      mustAuthenticate : TCARD8;
      unused : array[0..6] of TCARD8;
    end;



  PiceAuthRequiredMsg = ^TiceAuthRequiredMsg;
  TiceAuthRequiredMsg = record
      majorOpcode : TCARD8;
      minorOpcode : TCARD8;
      authIndex : TCARD8;
      unused1 : TCARD8;
      length : TCARD32;
      authDataLength : TCARD16;
      unused2 : array[0..5] of TCARD8;
    end;



  PiceAuthReplyMsg = ^TiceAuthReplyMsg;
  TiceAuthReplyMsg = record
      majorOpcode : TCARD8;
      minorOpcode : TCARD8;
      unused1 : array[0..1] of TCARD8;
      length : TCARD32;
      authDataLength : TCARD16;
      unused2 : array[0..5] of TCARD8;
    end;



  PiceAuthNextPhaseMsg = ^TiceAuthNextPhaseMsg;
  TiceAuthNextPhaseMsg = record
      majorOpcode : TCARD8;
      minorOpcode : TCARD8;
      unused1 : array[0..1] of TCARD8;
      length : TCARD32;
      authDataLength : TCARD16;
      unused2 : array[0..5] of TCARD8;
    end;




  PiceConnectionReplyMsg = ^TiceConnectionReplyMsg;
  TiceConnectionReplyMsg = record
      majorOpcode : TCARD8;
      minorOpcode : TCARD8;
      versionIndex : TCARD8;
      unused : TCARD8;
      length : TCARD32;
    end;







  PiceProtocolSetupMsg = ^TiceProtocolSetupMsg;
  TiceProtocolSetupMsg = record
      majorOpcode : TCARD8;
      minorOpcode : TCARD8;
      protocolOpcode : TCARD8;
      mustAuthenticate : TCARD8;
      length : TCARD32;
      versionCount : TCARD8;
      authCount : TCARD8;
      unused : array[0..5] of TCARD8;
    end;




  PiceProtocolReplyMsg = ^TiceProtocolReplyMsg;
  TiceProtocolReplyMsg = record
      majorOpcode : TCARD8;
      minorOpcode : TCARD8;
      versionIndex : TCARD8;
      protocolOpcode : TCARD8;
      length : TCARD32;
    end;

  PicePingMsg = ^TicePingMsg;
  TicePingMsg = TiceMsg;

  PicePingReplyMsg = ^TicePingReplyMsg;
  TicePingReplyMsg = TiceMsg;

  PiceWantToCloseMsg = ^TiceWantToCloseMsg;
  TiceWantToCloseMsg = TiceMsg;

  PiceNoCloseMsg = ^TiceNoCloseMsg;
  TiceNoCloseMsg = TiceMsg;


const
  sz_iceMsg = 8;  
  sz_iceErrorMsg = 16;  
  sz_iceByteOrderMsg = 8;  
  sz_iceConnectionSetupMsg = 16;  
  sz_iceAuthRequiredMsg = 16;  
  sz_iceAuthReplyMsg = 16;  
  sz_iceAuthNextPhaseMsg = 16;  
  sz_iceConnectionReplyMsg = 8;  
  sz_iceProtocolSetupMsg = 16;  
  sz_iceProtocolReplyMsg = 8;  
  sz_icePingMsg = 8;  
  sz_icePingReplyMsg = 8;  
  sz_iceWantToCloseMsg = 8;  
  sz_iceNoCloseMsg = 8;  
{$endif}


implementation


end.
