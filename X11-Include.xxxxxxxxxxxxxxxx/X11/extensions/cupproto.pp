
unit cupproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/cupproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/cupproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/cupproto.pp
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
PXcupGetReservedColormapEntries  = ^XcupGetReservedColormapEntries;
PXcupQueryVersion  = ^XcupQueryVersion;
PXcupStoreColors  = ^XcupStoreColors;
PxXcupGetReservedColormapEntriesReply  = ^xXcupGetReservedColormapEntriesReply;
PxXcupGetReservedColormapEntriesReq  = ^xXcupGetReservedColormapEntriesReq;
PxXcupQueryVersionReply  = ^xXcupQueryVersionReply;
PxXcupQueryVersionReq  = ^xXcupQueryVersionReq;
PxXcupStoreColorsReply  = ^xXcupStoreColorsReply;
PxXcupStoreColorsReq  = ^xXcupStoreColorsReq;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XCUPPROTO_H_ /* { */}
{$define _XCUPPROTO_H_}
{$include <X11/extensions/cup.h>}

const
  X_XcupQueryVersion = 0;  
  X_XcupGetReservedColormapEntries = 1;  
  X_XcupStoreColors = 2;  


type
  PXcupQueryVersion = ^TXcupQueryVersion;
  TXcupQueryVersion = record
      reqType : TCARD8;
      xcupReqType : TCARD8;
      length : TCARD16;
      client_major_version : TCARD16;
      client_minor_version : TCARD16;
    end;
  TxXcupQueryVersionReq = TXcupQueryVersion;
  PxXcupQueryVersionReq = ^TxXcupQueryVersionReq;

const
  sz_xXcupQueryVersionReq = 8;  

type
  PxXcupQueryVersionReply = ^TxXcupQueryVersionReply;
  TxXcupQueryVersionReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequence_number : TCARD16;
      length : TCARD32;
      server_major_version : TCARD16;
      server_minor_version : TCARD16;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xXcupQueryVersionReply = 32;  


type
  PXcupGetReservedColormapEntries = ^TXcupGetReservedColormapEntries;
  TXcupGetReservedColormapEntries = record
      reqType : TCARD8;
      xcupReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
    end;
  TxXcupGetReservedColormapEntriesReq = TXcupGetReservedColormapEntries;
  PxXcupGetReservedColormapEntriesReq = ^TxXcupGetReservedColormapEntriesReq;

const
  sz_xXcupGetReservedColormapEntriesReq = 8;  

type
  PxXcupGetReservedColormapEntriesReply = ^TxXcupGetReservedColormapEntriesReply;
  TxXcupGetReservedColormapEntriesReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequence_number : TCARD16;
      length : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
      pad7 : TCARD32;
    end;

const
  sz_xXcupGetReservedColormapEntriesReply = 32;  


type
  PXcupStoreColors = ^TXcupStoreColors;
  TXcupStoreColors = record
      reqType : TCARD8;
      xcupReqType : TCARD8;
      length : TCARD16;
      cmap : TCARD32;
    end;
  TxXcupStoreColorsReq = TXcupStoreColors;
  PxXcupStoreColorsReq = ^TxXcupStoreColorsReq;

const
  sz_xXcupStoreColorsReq = 8;  

type
  PxXcupStoreColorsReply = ^TxXcupStoreColorsReply;
  TxXcupStoreColorsReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequence_number : TCARD16;
      length : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
      pad7 : TCARD32;
    end;

const
  sz_xXcupStoreColorsReply = 32;  
{$endif}


implementation


end.
