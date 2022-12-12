
unit xf86bigfproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xf86bigfproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xf86bigfproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xf86bigfproto.pp
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
PXF86BigfontQueryFont  = ^XF86BigfontQueryFont;
PXF86BigfontQueryVersion  = ^XF86BigfontQueryVersion;
PxXF86BigfontQueryFontReply  = ^xXF86BigfontQueryFontReply;
PxXF86BigfontQueryFontReq  = ^xXF86BigfontQueryFontReq;
PxXF86BigfontQueryVersionReply  = ^xXF86BigfontQueryVersionReply;
PxXF86BigfontQueryVersionReq  = ^xXF86BigfontQueryVersionReq;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XF86BIGFPROTO_H_}
{$define _XF86BIGFPROTO_H_}
{$include <X11/extensions/xf86bigfont.h>}

const
  XF86BIGFONTNAME = 'XFree86-Bigfont';  

  XF86BIGFONT_MAJOR_VERSION = 1;  
  XF86BIGFONT_MINOR_VERSION = 1;  


type
  PXF86BigfontQueryVersion = ^TXF86BigfontQueryVersion;
  TXF86BigfontQueryVersion = record
      reqType : TCARD8;
      xf86bigfontReqType : TCARD8;
      length : TCARD16;
    end;
  TxXF86BigfontQueryVersionReq = TXF86BigfontQueryVersion;
  PxXF86BigfontQueryVersionReq = ^TxXF86BigfontQueryVersionReq;

const
  sz_xXF86BigfontQueryVersionReq = 4;  



type
  PxXF86BigfontQueryVersionReply = ^TxXF86BigfontQueryVersionReply;
  TxXF86BigfontQueryVersionReply = record
      _type : TBYTE;
      capabilities : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      majorVersion : TCARD16;
      minorVersion : TCARD16;
      uid : TCARD32;
      gid : TCARD32;
      signature : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
    end;

const
  sz_xXF86BigfontQueryVersionReply = 32;  

  XF86Bigfont_CAP_LocalShm = 1;  


type
  PXF86BigfontQueryFont = ^TXF86BigfontQueryFont;
  TXF86BigfontQueryFont = record
      reqType : TCARD8;
      xf86bigfontReqType : TCARD8;
      length : TCARD16;
      id : TCARD32;
      flags : TCARD32;
    end;
  TxXF86BigfontQueryFontReq = TXF86BigfontQueryFont;
  PxXF86BigfontQueryFontReq = ^TxXF86BigfontQueryFontReq;

const
  sz_xXF86BigfontQueryFontReq = 12;  

{$ifndef WORD64}
{$endif}
{$ifndef WORD64}
{$endif}


type
  PxXF86BigfontQueryFontReply = ^TxXF86BigfontQueryFontReply;
  TxXF86BigfontQueryFontReply = record
      _type : TBYTE;
      pad1 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      minBounds : TxCharInfo;
      walign1 : TCARD32;
      maxBounds : TxCharInfo;
      walign2 : TCARD32;
      minCharOrByte2 : TCARD16;
      maxCharOrByte2 : TCARD16;
      defaultChar : TCARD16;
      nFontProps : TCARD16;
      drawDirection : TCARD8;
      minByte1 : TCARD8;
      maxByte1 : TCARD8;
      allCharsExist : TBOOL;
      fontAscent : TINT16;
      fontDescent : TINT16;
      nCharInfos : TCARD32;
      nUniqCharInfos : TCARD32;
      shmid : TCARD32;
      shmsegoffset : TCARD32;
    end;

const
  sz_xXF86BigfontQueryFontReply = 72;  

  XF86Bigfont_FLAGS_Shm = 1;  
{$endif}


implementation


end.
