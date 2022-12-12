
unit xtestproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xtestproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xtestproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xtestproto.pp
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
PxXTestCompareCursorReply  = ^xXTestCompareCursorReply;
PxXTestCompareCursorReq  = ^xXTestCompareCursorReq;
PxXTestFakeInputReq  = ^xXTestFakeInputReq;
PxXTestGetVersionReply  = ^xXTestGetVersionReply;
PxXTestGetVersionReq  = ^xXTestGetVersionReq;
PxXTestGrabControlReq  = ^xXTestGrabControlReq;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XTESTPROTO_H_}
{$define _XTESTPROTO_H_}
{$include <X11/extensions/xtestconst.h>}

const
  Window = CARD32;  
  Time = CARD32;  
  Cursor = CARD32;  
  X_XTestGetVersion = 0;  
  X_XTestCompareCursor = 1;  
  X_XTestFakeInput = 2;  
  X_XTestGrabControl = 3;  


type
  PxXTestGetVersionReq = ^TxXTestGetVersionReq;
  TxXTestGetVersionReq = record
      reqType : TCARD8;
      xtReqType : TCARD8;
      length : TCARD16;
      majorVersion : TCARD8;
      pad : TCARD8;
      minorVersion : TCARD16;
    end;

const
  sz_xXTestGetVersionReq = 8;  

type
  PxXTestGetVersionReply = ^TxXTestGetVersionReply;
  TxXTestGetVersionReply = record
      _type : TBYTE;
      majorVersion : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      minorVersion : TCARD16;
      pad0 : TCARD16;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xXTestGetVersionReply = 32;  


type
  PxXTestCompareCursorReq = ^TxXTestCompareCursorReq;
  TxXTestCompareCursorReq = record
      reqType : TCARD8;
      xtReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
      cursor : TCursor;
    end;

const
  sz_xXTestCompareCursorReq = 12;  

type
  PxXTestCompareCursorReply = ^TxXTestCompareCursorReply;
  TxXTestCompareCursorReply = record
      _type : TBYTE;
      same : TBOOL;
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
  sz_xXTestCompareCursorReply = 32;  



type
  PxXTestFakeInputReq = ^TxXTestFakeInputReq;
  TxXTestFakeInputReq = record
      reqType : TCARD8;
      xtReqType : TCARD8;
      length : TCARD16;
      _type : TBYTE;
      detail : TBYTE;
      pad0 : TCARD16;
      time : TTime;
      root : TWindow;
      pad1 : TCARD32;
      pad2 : TCARD32;
      rootX : TINT16;
      rootY : TINT16;
      pad3 : TCARD32;
      pad4 : TCARD16;
      pad5 : TCARD8;
      deviceid : TCARD8;
    end;

const
  sz_xXTestFakeInputReq = 36;  


type
  PxXTestGrabControlReq = ^TxXTestGrabControlReq;
  TxXTestGrabControlReq = record
      reqType : TCARD8;
      xtReqType : TCARD8;
      length : TCARD16;
      impervious : TBOOL;
      pad0 : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD8;
    end;

const
  sz_xXTestGrabControlReq = 8;  
{$undef Window}
{$undef Time}
{$undef Cursor}
{$endif}


implementation


end.
