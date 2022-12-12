
unit mitmiscproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/mitmiscproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/mitmiscproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/mitmiscproto.pp
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
PGetBugMode  = ^GetBugMode;
PSetBugMode  = ^SetBugMode;
PxMITGetBugModeReply  = ^xMITGetBugModeReply;
PxMITGetBugModeReq  = ^xMITGetBugModeReq;
PxMITSetBugModeReq  = ^xMITSetBugModeReq;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _MITMISCPROTO_H_}
{$define _MITMISCPROTO_H_}
{$include <X11/extensions/mitmiscconst.h>}

const
  X_MITSetBugMode = 0;  
  X_MITGetBugMode = 1;  


type
  PSetBugMode = ^TSetBugMode;
  TSetBugMode = record
      reqType : TCARD8;
      mitReqType : TCARD8;
      length : TCARD16;
      onOff : TBOOL;
      pad0 : TBYTE;
      pad1 : TCARD16;
    end;
  TxMITSetBugModeReq = TSetBugMode;
  PxMITSetBugModeReq = ^TxMITSetBugModeReq;

const
  sz_xMITSetBugModeReq = 8;  


type
  PGetBugMode = ^TGetBugMode;
  TGetBugMode = record
      reqType : TCARD8;
      mitReqType : TCARD8;
      length : TCARD16;
    end;
  TxMITGetBugModeReq = TGetBugMode;
  PxMITGetBugModeReq = ^TxMITGetBugModeReq;

const
  sz_xMITGetBugModeReq = 4;  

type
  PxMITGetBugModeReply = ^TxMITGetBugModeReply;
  TxMITGetBugModeReply = record
      _type : TBYTE;
      onOff : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xMITGetBugModeReply = 32;  
{$endif}


implementation


end.
