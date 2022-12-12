
unit applewmproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/applewmproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/applewmproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/applewmproto.pp
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
PAppleWMAttachTransient  = ^AppleWMAttachTransient;
PAppleWMDisableUpdate  = ^AppleWMDisableUpdate;
PAppleWMFrameDraw  = ^AppleWMFrameDraw;
PAppleWMFrameGetRect  = ^AppleWMFrameGetRect;
PAppleWMFrameHitTest  = ^AppleWMFrameHitTest;
PAppleWMNotify  = ^AppleWMNotify;
PAppleWMQueryVersion  = ^AppleWMQueryVersion;
PAppleWMReenableUpdate  = ^AppleWMReenableUpdate;
PAppleWMSelectInput  = ^AppleWMSelectInput;
PAppleWMSendPSN  = ^AppleWMSendPSN;
PAppleWMSetCanQuit  = ^AppleWMSetCanQuit;
PAppleWMSetFrontProcess  = ^AppleWMSetFrontProcess;
PAppleWMSetWindowLevel  = ^AppleWMSetWindowLevel;
PAppleWMSetWindowMenu  = ^AppleWMSetWindowMenu;
PAppleWMSetWindowMenuCheck  = ^AppleWMSetWindowMenuCheck;
PxAppleWMAttachTransientReq  = ^xAppleWMAttachTransientReq;
PxAppleWMDisableUpdateReq  = ^xAppleWMDisableUpdateReq;
PxAppleWMFrameDrawReq  = ^xAppleWMFrameDrawReq;
PxAppleWMFrameGetRectReply  = ^xAppleWMFrameGetRectReply;
PxAppleWMFrameGetRectReq  = ^xAppleWMFrameGetRectReq;
PxAppleWMFrameHitTestReply  = ^xAppleWMFrameHitTestReply;
PxAppleWMFrameHitTestReq  = ^xAppleWMFrameHitTestReq;
PxAppleWMNotifyEvent  = ^xAppleWMNotifyEvent;
PxAppleWMQueryVersionReply  = ^xAppleWMQueryVersionReply;
PxAppleWMQueryVersionReq  = ^xAppleWMQueryVersionReq;
PxAppleWMReenableUpdateReq  = ^xAppleWMReenableUpdateReq;
PxAppleWMSelectInputReq  = ^xAppleWMSelectInputReq;
PxAppleWMSendPSNReq  = ^xAppleWMSendPSNReq;
PxAppleWMSetCanQuitReq  = ^xAppleWMSetCanQuitReq;
PxAppleWMSetFrontProcessReq  = ^xAppleWMSetFrontProcessReq;
PxAppleWMSetWindowLevelReq  = ^xAppleWMSetWindowLevelReq;
PxAppleWMSetWindowMenuCheckReq  = ^xAppleWMSetWindowMenuCheckReq;
PxAppleWMSetWindowMenuReq  = ^xAppleWMSetWindowMenuReq;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _APPLEWMPROTO_H_}
{$define _APPLEWMPROTO_H_}
{$include <X11/extensions/applewmconst.h>}
{$include <X11/X.h>}
{$include <X11/Xmd.h>}

const
  APPLEWMNAME = 'Apple-WM';  

  APPLE_WM_MAJOR_VERSION = 1;  
  APPLE_WM_MINOR_VERSION = 3;  
  APPLE_WM_PATCH_VERSION = 0;  
  X_AppleWMQueryVersion = 0;  
  X_AppleWMFrameGetRect = 1;  
  X_AppleWMFrameHitTest = 2;  
  X_AppleWMFrameDraw = 3;  
  X_AppleWMDisableUpdate = 4;  
  X_AppleWMReenableUpdate = 5;  
  X_AppleWMSelectInput = 6;  
  X_AppleWMSetWindowMenuCheck = 7;  
  X_AppleWMSetFrontProcess = 8;  
  X_AppleWMSetWindowLevel = 9;  
  X_AppleWMSetCanQuit = 10;  
  X_AppleWMSetWindowMenu = 11;  
  X_AppleWMSendPSN = 12;  
  X_AppleWMAttachTransient = 13;  

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


type
  PAppleWMQueryVersion = ^TAppleWMQueryVersion;
  TAppleWMQueryVersion = record
      reqType : TCARD8;
      wmReqType : TCARD8;
      length : TCARD16;
    end;
  TxAppleWMQueryVersionReq = TAppleWMQueryVersion;
  PxAppleWMQueryVersionReq = ^TxAppleWMQueryVersionReq;

const
  sz_xAppleWMQueryVersionReq = 4;  




type
  PxAppleWMQueryVersionReply = ^TxAppleWMQueryVersionReply;
  TxAppleWMQueryVersionReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      majorVersion : TCARD16;
      minorVersion : TCARD16;
      patchVersion : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xAppleWMQueryVersionReply = 32;  


type
  PAppleWMDisableUpdate = ^TAppleWMDisableUpdate;
  TAppleWMDisableUpdate = record
      reqType : TCARD8;
      wmReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
    end;
  TxAppleWMDisableUpdateReq = TAppleWMDisableUpdate;
  PxAppleWMDisableUpdateReq = ^TxAppleWMDisableUpdateReq;

const
  sz_xAppleWMDisableUpdateReq = 8;  


type
  PAppleWMReenableUpdate = ^TAppleWMReenableUpdate;
  TAppleWMReenableUpdate = record
      reqType : TCARD8;
      wmReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
    end;
  TxAppleWMReenableUpdateReq = TAppleWMReenableUpdate;
  PxAppleWMReenableUpdateReq = ^TxAppleWMReenableUpdateReq;

const
  sz_xAppleWMReenableUpdateReq = 8;  


type
  PAppleWMSelectInput = ^TAppleWMSelectInput;
  TAppleWMSelectInput = record
      reqType : TCARD8;
      wmReqType : TCARD8;
      length : TCARD16;
      mask : TCARD32;
    end;
  TxAppleWMSelectInputReq = TAppleWMSelectInput;
  PxAppleWMSelectInputReq = ^TxAppleWMSelectInputReq;

const
  sz_xAppleWMSelectInputReq = 8;  


type
  PAppleWMNotify = ^TAppleWMNotify;
  TAppleWMNotify = record
      _type : TBYTE;
      kind : TBYTE;
      sequenceNumber : TCARD16;
      time : TTime;
      pad1 : TCARD16;
      arg : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;
  TxAppleWMNotifyEvent = TAppleWMNotify;
  PxAppleWMNotifyEvent = ^TxAppleWMNotifyEvent;

const
  sz_xAppleWMNotifyEvent = 32;  


type
  PAppleWMSetWindowMenu = ^TAppleWMSetWindowMenu;
  TAppleWMSetWindowMenu = record
      reqType : TCARD8;
      wmReqType : TCARD8;
      length : TCARD16;
      nitems : TCARD16;
      pad1 : TCARD16;
    end;
  TxAppleWMSetWindowMenuReq = TAppleWMSetWindowMenu;
  PxAppleWMSetWindowMenuReq = ^TxAppleWMSetWindowMenuReq;

const
  sz_xAppleWMSetWindowMenuReq = 8;  


type
  PAppleWMSetWindowMenuCheck = ^TAppleWMSetWindowMenuCheck;
  TAppleWMSetWindowMenuCheck = record
      reqType : TCARD8;
      wmReqType : TCARD8;
      length : TCARD16;
      index : TCARD32;
    end;
  TxAppleWMSetWindowMenuCheckReq = TAppleWMSetWindowMenuCheck;
  PxAppleWMSetWindowMenuCheckReq = ^TxAppleWMSetWindowMenuCheckReq;

const
  sz_xAppleWMSetWindowMenuCheckReq = 8;  


type
  PAppleWMSetFrontProcess = ^TAppleWMSetFrontProcess;
  TAppleWMSetFrontProcess = record
      reqType : TCARD8;
      wmReqType : TCARD8;
      length : TCARD16;
    end;
  TxAppleWMSetFrontProcessReq = TAppleWMSetFrontProcess;
  PxAppleWMSetFrontProcessReq = ^TxAppleWMSetFrontProcessReq;

const
  sz_xAppleWMSetFrontProcessReq = 4;  


type
  PAppleWMSetWindowLevel = ^TAppleWMSetWindowLevel;
  TAppleWMSetWindowLevel = record
      reqType : TCARD8;
      wmReqType : TCARD8;
      length : TCARD16;
      window : TCARD32;
      level : TCARD32;
    end;
  TxAppleWMSetWindowLevelReq = TAppleWMSetWindowLevel;
  PxAppleWMSetWindowLevelReq = ^TxAppleWMSetWindowLevelReq;

const
  sz_xAppleWMSetWindowLevelReq = 12;  


type
  PAppleWMSendPSN = ^TAppleWMSendPSN;
  TAppleWMSendPSN = record
      reqType : TCARD8;
      wmReqType : TCARD8;
      length : TCARD16;
      psn_hi : TCARD32;
      psn_lo : TCARD32;
    end;
  TxAppleWMSendPSNReq = TAppleWMSendPSN;
  PxAppleWMSendPSNReq = ^TxAppleWMSendPSNReq;

const
  sz_xAppleWMSendPSNReq = 12;  


type
  PAppleWMAttachTransient = ^TAppleWMAttachTransient;
  TAppleWMAttachTransient = record
      reqType : TCARD8;
      wmReqType : TCARD8;
      length : TCARD16;
      child : TCARD32;
      parent : TCARD32;
    end;
  TxAppleWMAttachTransientReq = TAppleWMAttachTransient;
  PxAppleWMAttachTransientReq = ^TxAppleWMAttachTransientReq;

const
  sz_xAppleWMAttachTransientReq = 12;  


type
  PAppleWMSetCanQuit = ^TAppleWMSetCanQuit;
  TAppleWMSetCanQuit = record
      reqType : TCARD8;
      wmReqType : TCARD8;
      length : TCARD16;
      state : TCARD32;
    end;
  TxAppleWMSetCanQuitReq = TAppleWMSetCanQuit;
  PxAppleWMSetCanQuitReq = ^TxAppleWMSetCanQuitReq;

const
  sz_xAppleWMSetCanQuitReq = 8;  


type
  PAppleWMFrameGetRect = ^TAppleWMFrameGetRect;
  TAppleWMFrameGetRect = record
      reqType : TCARD8;
      wmReqType : TCARD8;
      length : TCARD16;
      frame_class : TCARD16;
      frame_rect : TCARD16;
      ix : TCARD16;
      iy : TCARD16;
      iw : TCARD16;
      ih : TCARD16;
      ox : TCARD16;
      oy : TCARD16;
      ow : TCARD16;
      oh : TCARD16;
    end;
  TxAppleWMFrameGetRectReq = TAppleWMFrameGetRect;
  PxAppleWMFrameGetRectReq = ^TxAppleWMFrameGetRectReq;

const
  sz_xAppleWMFrameGetRectReq = 24;  

type
  PxAppleWMFrameGetRectReply = ^TxAppleWMFrameGetRectReply;
  TxAppleWMFrameGetRectReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      x : TCARD16;
      y : TCARD16;
      w : TCARD16;
      h : TCARD16;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xAppleWMFrameGetRectReply = 32;  


type
  PAppleWMFrameHitTest = ^TAppleWMFrameHitTest;
  TAppleWMFrameHitTest = record
      reqType : TCARD8;
      wmReqType : TCARD8;
      length : TCARD16;
      frame_class : TCARD16;
      pad1 : TCARD16;
      px : TCARD16;
      py : TCARD16;
      ix : TCARD16;
      iy : TCARD16;
      iw : TCARD16;
      ih : TCARD16;
      ox : TCARD16;
      oy : TCARD16;
      ow : TCARD16;
      oh : TCARD16;
    end;
  TxAppleWMFrameHitTestReq = TAppleWMFrameHitTest;
  PxAppleWMFrameHitTestReq = ^TxAppleWMFrameHitTestReq;

const
  sz_xAppleWMFrameHitTestReq = 28;  

type
  PxAppleWMFrameHitTestReply = ^TxAppleWMFrameHitTestReply;
  TxAppleWMFrameHitTestReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      ret : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xAppleWMFrameHitTestReply = 32;  


type
  PAppleWMFrameDraw = ^TAppleWMFrameDraw;
  TAppleWMFrameDraw = record
      reqType : TCARD8;
      wmReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
      window : TCARD32;
      frame_class : TCARD16;
      frame_attr : TCARD16;
      ix : TCARD16;
      iy : TCARD16;
      iw : TCARD16;
      ih : TCARD16;
      ox : TCARD16;
      oy : TCARD16;
      ow : TCARD16;
      oh : TCARD16;
      title_length : TCARD32;
    end;
  TxAppleWMFrameDrawReq = TAppleWMFrameDraw;
  PxAppleWMFrameDrawReq = ^TxAppleWMFrameDrawReq;

const
  sz_xAppleWMFrameDrawReq = 36;  

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
