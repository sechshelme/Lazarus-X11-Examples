
unit saverproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/saverproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/saverproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/saverproto.pp
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
PScreenSaverNotify  = ^ScreenSaverNotify;
PScreenSaverQueryInfo  = ^ScreenSaverQueryInfo;
PScreenSaverQueryVersion  = ^ScreenSaverQueryVersion;
PScreenSaverSelectInput  = ^ScreenSaverSelectInput;
PScreenSaverSetAttributes  = ^ScreenSaverSetAttributes;
PScreenSaverSuspend  = ^ScreenSaverSuspend;
PScreenSaverUnsetAttributes  = ^ScreenSaverUnsetAttributes;
PxScreenSaverNotifyEvent  = ^xScreenSaverNotifyEvent;
PxScreenSaverQueryInfoReply  = ^xScreenSaverQueryInfoReply;
PxScreenSaverQueryInfoReq  = ^xScreenSaverQueryInfoReq;
PxScreenSaverQueryVersionReply  = ^xScreenSaverQueryVersionReply;
PxScreenSaverQueryVersionReq  = ^xScreenSaverQueryVersionReq;
PxScreenSaverSelectInputReq  = ^xScreenSaverSelectInputReq;
PxScreenSaverSetAttributesReq  = ^xScreenSaverSetAttributesReq;
PxScreenSaverSuspendReq  = ^xScreenSaverSuspendReq;
PxScreenSaverUnsetAttributesReq  = ^xScreenSaverUnsetAttributesReq;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _SAVERPROTO_H_}
{$define _SAVERPROTO_H_}
{$include <X11/extensions/saver.h>}

const
  Window = CARD32;  
  Drawable = CARD32;  
  Font = CARD32;  
  Pixmap = CARD32;  
  Cursor = CARD32;  
  Colormap = CARD32;  
  GContext = CARD32;  
  Atom = CARD32;  
  VisualID = CARD32;  
  Time = CARD32;  
  KeyCode = CARD8;  
  KeySym = CARD32;  
  X_ScreenSaverQueryVersion = 0;  


type
  PScreenSaverQueryVersion = ^TScreenSaverQueryVersion;
  TScreenSaverQueryVersion = record
      reqType : TCARD8;
      saverReqType : TCARD8;
      length : TCARD16;
      clientMajor : TCARD8;
      clientMinor : TCARD8;
      unused : TCARD16;
    end;
  TxScreenSaverQueryVersionReq = TScreenSaverQueryVersion;
  PxScreenSaverQueryVersionReq = ^TxScreenSaverQueryVersionReq;

const
  sz_xScreenSaverQueryVersionReq = 8;  




type
  PxScreenSaverQueryVersionReply = ^TxScreenSaverQueryVersionReply;
  TxScreenSaverQueryVersionReply = record
      _type : TCARD8;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      majorVersion : TCARD16;
      minorVersion : TCARD16;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xScreenSaverQueryVersionReply = 32;  
  X_ScreenSaverQueryInfo = 1;  


type
  PScreenSaverQueryInfo = ^TScreenSaverQueryInfo;
  TScreenSaverQueryInfo = record
      reqType : TCARD8;
      saverReqType : TCARD8;
      length : TCARD16;
      drawable : TDrawable;
    end;
  TxScreenSaverQueryInfoReq = TScreenSaverQueryInfo;
  PxScreenSaverQueryInfoReq = ^TxScreenSaverQueryInfoReq;

const
  sz_xScreenSaverQueryInfoReq = 8;  



type
  PxScreenSaverQueryInfoReply = ^TxScreenSaverQueryInfoReply;
  TxScreenSaverQueryInfoReply = record
      _type : TCARD8;
      state : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      window : TWindow;
      tilOrSince : TCARD32;
      idle : TCARD32;
      eventMask : TCARD32;
      kind : TBYTE;
      pad0 : TCARD8;
      pad1 : TCARD16;
      pad2 : TCARD32;
    end;

const
  sz_xScreenSaverQueryInfoReply = 32;  
  X_ScreenSaverSelectInput = 2;  


type
  PScreenSaverSelectInput = ^TScreenSaverSelectInput;
  TScreenSaverSelectInput = record
      reqType : TCARD8;
      saverReqType : TCARD8;
      length : TCARD16;
      drawable : TDrawable;
      eventMask : TCARD32;
    end;
  TxScreenSaverSelectInputReq = TScreenSaverSelectInput;
  PxScreenSaverSelectInputReq = ^TxScreenSaverSelectInputReq;

const
  sz_xScreenSaverSelectInputReq = 12;  
  X_ScreenSaverSetAttributes = 3;  


type
  PScreenSaverSetAttributes = ^TScreenSaverSetAttributes;
  TScreenSaverSetAttributes = record
      reqType : TCARD8;
      saverReqType : TCARD8;
      length : TCARD16;
      drawable : TDrawable;
      x : TINT16;
      y : TINT16;
      width : TCARD16;
      height : TCARD16;
      borderWidth : TCARD16;
      c_class : TBYTE;
      depth : TCARD8;
      visualID : TVisualID;
      mask : TCARD32;
    end;
  TxScreenSaverSetAttributesReq = TScreenSaverSetAttributes;
  PxScreenSaverSetAttributesReq = ^TxScreenSaverSetAttributesReq;

const
  sz_xScreenSaverSetAttributesReq = 28;  
  X_ScreenSaverUnsetAttributes = 4;  


type
  PScreenSaverUnsetAttributes = ^TScreenSaverUnsetAttributes;
  TScreenSaverUnsetAttributes = record
      reqType : TCARD8;
      saverReqType : TCARD8;
      length : TCARD16;
      drawable : TDrawable;
    end;
  TxScreenSaverUnsetAttributesReq = TScreenSaverUnsetAttributes;
  PxScreenSaverUnsetAttributesReq = ^TxScreenSaverUnsetAttributesReq;

const
  sz_xScreenSaverUnsetAttributesReq = 8;  
  X_ScreenSaverSuspend = 5;  

type
  PScreenSaverSuspend = ^TScreenSaverSuspend;
  TScreenSaverSuspend = record
      reqType : TCARD8;
      saverReqType : TCARD8;
      length : TCARD16;
      suspend : TCARD32;
    end;
  TxScreenSaverSuspendReq = TScreenSaverSuspend;
  PxScreenSaverSuspendReq = ^TxScreenSaverSuspendReq;

const
  sz_xScreenSaverSuspendReq = 8;  




type
  PScreenSaverNotify = ^TScreenSaverNotify;
  TScreenSaverNotify = record
      _type : TCARD8;
      state : TBYTE;
      sequenceNumber : TCARD16;
      timestamp : TTime;
      root : TWindow;
      window : TWindow;
      kind : TBYTE;
      forced : TBYTE;
      pad0 : TCARD16;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
    end;
  TxScreenSaverNotifyEvent = TScreenSaverNotify;
  PxScreenSaverNotifyEvent = ^TxScreenSaverNotifyEvent;

const
  sz_xScreenSaverNotifyEvent = 32;  
{$undef Window}
{$undef Drawable}
{$undef Font}
{$undef Pixmap}
{$undef Cursor}
{$undef Colormap}
{$undef GContext}
{$undef Atom}
{$undef VisualID}
{$undef Time}
{$undef KeyCode}
{$undef KeySym}
{$endif}


implementation


end.
