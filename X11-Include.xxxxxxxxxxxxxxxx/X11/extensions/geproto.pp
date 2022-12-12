
unit geproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/geproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/geproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/geproto.pp
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
PxGEQueryVersionReply  = ^xGEQueryVersionReply;
PxGEQueryVersionReq  = ^xGEQueryVersionReq;
PxGEReq  = ^xGEReq;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _GEPROTO_H_}
{$define _GEPROTO_H_}
{$include<X11/Xproto.h>}
{$include<X11/X.h>}
{$include<X11/extensions/ge.h>}


const
  X_GEGetExtensionVersion = 1;  


type
  PxGEReq = ^TxGEReq;
  TxGEReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
    end;




  PxGEQueryVersionReq = ^TxGEQueryVersionReq;
  TxGEQueryVersionReq = record
      reqType : TCARD8;
      ReqType : TCARD8;
      length : TCARD16;
      majorVersion : TCARD16;
      minorVersion : TCARD16;
    end;

const
  sz_xGEQueryVersionReq = 8;  


type
  PxGEQueryVersionReply = ^TxGEQueryVersionReply;
  TxGEQueryVersionReply = record
      repType : TCARD8;
      RepType : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      majorVersion : TCARD16;
      minorVersion : TCARD16;
      pad00 : TCARD32;
      pad01 : TCARD32;
      pad02 : TCARD32;
      pad03 : TCARD32;
      pad04 : TCARD32;
    end;

const
  sz_xGEQueryVersionReply = 32;  
{$endif}


implementation


end.
