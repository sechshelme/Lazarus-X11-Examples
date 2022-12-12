
unit bigreqsproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/bigreqsproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/bigreqsproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/bigreqsproto.pp
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
PxBigReq  = ^xBigReq;
PxBigReqEnableReply  = ^xBigReqEnableReply;
PxBigReqEnableReq  = ^xBigReqEnableReq;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _BIGREQSPROTO_H_}
{$define _BIGREQSPROTO_H_}

const
  X_BigReqEnable = 0;  
  XBigReqNumberEvents = 0;  
  XBigReqNumberErrors = 0;  
  XBigReqExtensionName = 'BIG-REQUESTS';  


type
  PxBigReqEnableReq = ^TxBigReqEnableReq;
  TxBigReqEnableReq = record
      reqType : TCARD8;
      brReqType : TCARD8;
      length : TCARD16;
    end;

const
  sz_xBigReqEnableReq = 4;  

type
  PxBigReqEnableReply = ^TxBigReqEnableReply;
  TxBigReqEnableReply = record
      _type : TBYTE;
      pad0 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      max_request_size : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xBigReqEnableReply = 32;  
type
  PxBigReq = ^TxBigReq;
  TxBigReq = record
      reqType : TCARD8;
      data : TCARD8;
      zero : TCARD16;
      length : TCARD32;
    end;
{$endif}


implementation


end.
