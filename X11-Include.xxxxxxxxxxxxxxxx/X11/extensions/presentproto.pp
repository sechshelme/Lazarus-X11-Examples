
unit presentproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/presentproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/presentproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/presentproto.pp
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
PxPresentCompleteNotify  = ^xPresentCompleteNotify;
PxPresentConfigureNotify  = ^xPresentConfigureNotify;
PxPresentIdleNotify  = ^xPresentIdleNotify;
PxPresentNotify  = ^xPresentNotify;
PxPresentNotifyMSCReq  = ^xPresentNotifyMSCReq;
PxPresentPixmapReq  = ^xPresentPixmapReq;
PxPresentQueryCapabilitiesReply  = ^xPresentQueryCapabilitiesReply;
PxPresentQueryCapabilitiesReq  = ^xPresentQueryCapabilitiesReq;
PxPresentQueryVersionReply  = ^xPresentQueryVersionReply;
PxPresentQueryVersionReq  = ^xPresentQueryVersionReq;
PxPresentRedirectNotify  = ^xPresentRedirectNotify;
PxPresentSelectInputReq  = ^xPresentSelectInputReq;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _PRESENT_PROTO_H_}
{$define _PRESENT_PROTO_H_}
{$include <X11/extensions/presenttokens.h>}

const
  Window = CARD32;  
  Pixmap = CARD32;  
  Region = CARD32;  
  XSyncFence = CARD32;  
  EventID = CARD32;  
type
  PxPresentNotify = ^TxPresentNotify;
  TxPresentNotify = record
      window : TWindow;
      serial : TCARD32;
    end;

const
  sz_xPresentNotify = 8;  
type
  PxPresentQueryVersionReq = ^TxPresentQueryVersionReq;
  TxPresentQueryVersionReq = record
      reqType : TCARD8;
      presentReqType : TCARD8;
      length : TCARD16;
      majorVersion : TCARD32;
      minorVersion : TCARD32;
    end;

const
  sz_xPresentQueryVersionReq = 12;  

type
  PxPresentQueryVersionReply = ^TxPresentQueryVersionReply;
  TxPresentQueryVersionReply = record
      _type : TBYTE;
      pad1 : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      majorVersion : TCARD32;
      minorVersion : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xPresentQueryVersionReply = 32;  

type
  PxPresentPixmapReq = ^TxPresentPixmapReq;
  TxPresentPixmapReq = record
      reqType : TCARD8;
      presentReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
      pixmap : TPixmap;
      serial : TCARD32;
      valid : TRegion;
      update : TRegion;
      x_off : TINT16;
      y_off : TINT16;
      target_crtc : TCARD32;
      wait_fence : TXSyncFence;
      idle_fence : TXSyncFence;
      options : TCARD32;
      pad1 : TCARD32;
      target_msc : TCARD64;
      divisor : TCARD64;
      remainder : TCARD64;
    end;

const
  sz_xPresentPixmapReq = 72;  
type
  PxPresentNotifyMSCReq = ^TxPresentNotifyMSCReq;
  TxPresentNotifyMSCReq = record
      reqType : TCARD8;
      presentReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
      serial : TCARD32;
      pad0 : TCARD32;
      target_msc : TCARD64;
      divisor : TCARD64;
      remainder : TCARD64;
    end;

const
  sz_xPresentNotifyMSCReq = 40;  
type
  PxPresentSelectInputReq = ^TxPresentSelectInputReq;
  TxPresentSelectInputReq = record
      reqType : TCARD8;
      presentReqType : TCARD8;
      length : TCARD16;
      eid : TCARD32;
      window : TCARD32;
      eventMask : TCARD32;
    end;

const
  sz_xPresentSelectInputReq = 16;  
type
  PxPresentQueryCapabilitiesReq = ^TxPresentQueryCapabilitiesReq;
  TxPresentQueryCapabilitiesReq = record
      reqType : TCARD8;
      presentReqType : TCARD8;
      length : TCARD16;
      target : TCARD32;
    end;

const
  sz_xPresentQueryCapabilitiesReq = 8;  

type
  PxPresentQueryCapabilitiesReply = ^TxPresentQueryCapabilitiesReply;
  TxPresentQueryCapabilitiesReply = record
      _type : TBYTE;
      pad1 : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      capabilities : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
      pad7 : TCARD32;
    end;

const
  sz_xPresentQueryCapabilitiesReply = 32;  

type
  PxPresentConfigureNotify = ^TxPresentConfigureNotify;
  TxPresentConfigureNotify = record
      _type : TCARD8;
      extension : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      evtype : TCARD16;
      pad2 : TCARD16;
      eid : TCARD32;
      window : TCARD32;
      x : TINT16;
      y : TINT16;
      width : TCARD16;
      height : TCARD16;
      off_x : TINT16;
      off_y : TINT16;
      pixmap_width : TCARD16;
      pixmap_height : TCARD16;
      pixmap_flags : TCARD32;
    end;

const
  sz_xPresentConfigureNotify = 40;  
type
  PxPresentCompleteNotify = ^TxPresentCompleteNotify;
  TxPresentCompleteNotify = record
      _type : TCARD8;
      extension : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      evtype : TCARD16;
      kind : TCARD8;
      mode : TCARD8;
      eid : TCARD32;
      window : TWindow;
      serial : TCARD32;
      ust : TCARD64;
      msc : TCARD64;
    end;

const
  sz_xPresentCompleteNotify = 40;  
type
  PxPresentIdleNotify = ^TxPresentIdleNotify;
  TxPresentIdleNotify = record
      _type : TCARD8;
      extension : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      evtype : TCARD16;
      pad2 : TCARD16;
      eid : TCARD32;
      window : TWindow;
      serial : TCARD32;
      pixmap : TPixmap;
      idle_fence : TCARD32;
    end;

const
  sz_xPresentIdleNotify = 32;  
{$if PRESENT_FUTURE_VERSION}

type
  PxPresentRedirectNotify = ^TxPresentRedirectNotify;
  TxPresentRedirectNotify = record
      _type : TCARD8;
      extension : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      evtype : TCARD16;
      update_window : TCARD8;
      pad1 : TCARD8;
      eid : TCARD32;
      event_window : TWindow;
      window : TWindow;
      pixmap : TPixmap;
      serial : TCARD32;
      valid_region : TRegion;
      update_region : TRegion;
      valid_rect : TxRectangle;
      update_rect : TxRectangle;
      x_off : TINT16;
      y_off : TINT16;
      target_crtc : TCARD32;
      wait_fence : TXSyncFence;
      idle_fence : TXSyncFence;
      options : TCARD32;
      pad2 : TCARD32;
      target_msc : TCARD64;
      divisor : TCARD64;
      remainder : TCARD64;
    end;

const
  sz_xPresentRedirectNotify = 104;  
{$endif}
{$undef Window}
{$undef Pixmap}
{$undef Region}
{$undef XSyncFence}
{$undef EventID}
{$endif}

implementation


end.
