
unit damageproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/damageproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/damageproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/damageproto.pp
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
PxDamageAddReq  = ^xDamageAddReq;
PxDamageCreateReq  = ^xDamageCreateReq;
PxDamageDestroyReq  = ^xDamageDestroyReq;
PxDamageNotifyEvent  = ^xDamageNotifyEvent;
PxDamageQueryVersionReply  = ^xDamageQueryVersionReply;
PxDamageQueryVersionReq  = ^xDamageQueryVersionReq;
PxDamageReq  = ^xDamageReq;
PxDamageSubtractReq  = ^xDamageSubtractReq;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _DAMAGEPROTO_H_}
{$define _DAMAGEPROTO_H_}
{$include <X11/Xmd.h>}
{$include <X11/extensions/xfixesproto.h>}
{$include <X11/extensions/damagewire.h>}

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
  Picture = CARD32;  
  Region = CARD32;  
  Damage = CARD32;  

type
  PxDamageReq = ^TxDamageReq;
  TxDamageReq = record
      reqType : TCARD8;
      damageReqType : TCARD8;
      length : TCARD16;
    end;


  PxDamageQueryVersionReq = ^TxDamageQueryVersionReq;
  TxDamageQueryVersionReq = record
      reqType : TCARD8;
      damageReqType : TCARD8;
      length : TCARD16;
      majorVersion : TCARD32;
      minorVersion : TCARD32;
    end;

const
  sz_xDamageQueryVersionReq = 12;  

type
  PxDamageQueryVersionReply = ^TxDamageQueryVersionReply;
  TxDamageQueryVersionReply = record
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
  sz_xDamageQueryVersionReply = 32;  
type
  PxDamageCreateReq = ^TxDamageCreateReq;
  TxDamageCreateReq = record
      reqType : TCARD8;
      damageReqType : TCARD8;
      length : TCARD16;
      damage : TDamage;
      drawable : TDrawable;
      level : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD16;
    end;

const
  sz_xDamageCreateReq = 16;  
type
  PxDamageDestroyReq = ^TxDamageDestroyReq;
  TxDamageDestroyReq = record
      reqType : TCARD8;
      damageReqType : TCARD8;
      length : TCARD16;
      damage : TDamage;
    end;

const
  sz_xDamageDestroyReq = 8;  
type
  PxDamageSubtractReq = ^TxDamageSubtractReq;
  TxDamageSubtractReq = record
      reqType : TCARD8;
      damageReqType : TCARD8;
      length : TCARD16;
      damage : TDamage;
      repair : TRegion;
      parts : TRegion;
    end;

const
  sz_xDamageSubtractReq = 16;  
type
  PxDamageAddReq = ^TxDamageAddReq;
  TxDamageAddReq = record
      reqType : TCARD8;
      damageReqType : TCARD8;
      length : TCARD16;
      drawable : TDrawable;
      region : TRegion;
    end;

const
  sz_xDamageAddReq = 12;  

  DamageNotifyMore = $80;  
type
  PxDamageNotifyEvent = ^TxDamageNotifyEvent;
  TxDamageNotifyEvent = record
      _type : TCARD8;
      level : TCARD8;
      sequenceNumber : TCARD16;
      drawable : TDrawable;
      damage : TDamage;
      timestamp : TTime;
      area : TxRectangle;
      geometry : TxRectangle;
    end;
{$undef Damage}
{$undef Region}
{$undef Picture}
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
