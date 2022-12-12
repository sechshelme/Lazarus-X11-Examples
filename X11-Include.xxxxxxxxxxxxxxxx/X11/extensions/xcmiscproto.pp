
unit xcmiscproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xcmiscproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xcmiscproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xcmiscproto.pp
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
PxXCMiscGetVersionReply  = ^xXCMiscGetVersionReply;
PxXCMiscGetVersionReq  = ^xXCMiscGetVersionReq;
PxXCMiscGetXIDListReply  = ^xXCMiscGetXIDListReply;
PxXCMiscGetXIDListReq  = ^xXCMiscGetXIDListReq;
PxXCMiscGetXIDRangeReply  = ^xXCMiscGetXIDRangeReply;
PxXCMiscGetXIDRangeReq  = ^xXCMiscGetXIDRangeReq;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XCMISCPROTO_H_}
{$define _XCMISCPROTO_H_}

const
  X_XCMiscGetVersion = 0;  
  X_XCMiscGetXIDRange = 1;  
  X_XCMiscGetXIDList = 2;  
  XCMiscNumberEvents = 0;  
  XCMiscNumberErrors = 0;  
  XCMiscMajorVersion = 1;  
  XCMiscMinorVersion = 1;  
  XCMiscExtensionName = 'XC-MISC';  


type
  PxXCMiscGetVersionReq = ^TxXCMiscGetVersionReq;
  TxXCMiscGetVersionReq = record
      reqType : TCARD8;
      miscReqType : TCARD8;
      length : TCARD16;
      majorVersion : TCARD16;
      minorVersion : TCARD16;
    end;

const
  sz_xXCMiscGetVersionReq = 8;  

type
  PxXCMiscGetVersionReply = ^TxXCMiscGetVersionReply;
  TxXCMiscGetVersionReply = record
      _type : TBYTE;
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
  sz_xXCMiscGetVersionReply = 32;  


type
  PxXCMiscGetXIDRangeReq = ^TxXCMiscGetXIDRangeReq;
  TxXCMiscGetXIDRangeReq = record
      reqType : TCARD8;
      miscReqType : TCARD8;
      length : TCARD16;
    end;

const
  sz_xXCMiscGetXIDRangeReq = 4;  

type
  PxXCMiscGetXIDRangeReply = ^TxXCMiscGetXIDRangeReply;
  TxXCMiscGetXIDRangeReply = record
      _type : TBYTE;
      pad0 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      start_id : TCARD32;
      count : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xXCMiscGetXIDRangeReply = 32;  



type
  PxXCMiscGetXIDListReq = ^TxXCMiscGetXIDListReq;
  TxXCMiscGetXIDListReq = record
      reqType : TCARD8;
      miscReqType : TCARD8;
      length : TCARD16;
      count : TCARD32;
    end;

const
  sz_xXCMiscGetXIDListReq = 8;  


type
  PxXCMiscGetXIDListReply = ^TxXCMiscGetXIDListReply;
  TxXCMiscGetXIDListReply = record
      _type : TBYTE;
      pad0 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      count : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xXCMiscGetXIDListReply = 32;  
{$endif}


implementation


end.
