
unit compositeproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/compositeproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/compositeproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/compositeproto.pp
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
PxCompositeCreateRegionFromBorderClipReq  = ^xCompositeCreateRegionFromBorderClipReq;
PxCompositeGetOverlayWindowReply  = ^xCompositeGetOverlayWindowReply;
PxCompositeGetOverlayWindowReq  = ^xCompositeGetOverlayWindowReq;
PxCompositeNameWindowPixmapReq  = ^xCompositeNameWindowPixmapReq;
PxCompositeQueryVersionReply  = ^xCompositeQueryVersionReply;
PxCompositeQueryVersionReq  = ^xCompositeQueryVersionReq;
PxCompositeRedirectSubwindowsReq  = ^xCompositeRedirectSubwindowsReq;
PxCompositeRedirectWindowReq  = ^xCompositeRedirectWindowReq;
PxCompositeReleaseOverlayWindowReq  = ^xCompositeReleaseOverlayWindowReq;
PxCompositeUnredirectSubwindowsReq  = ^xCompositeUnredirectSubwindowsReq;
PxCompositeUnredirectWindowReq  = ^xCompositeUnredirectWindowReq;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _COMPOSITEPROTO_H_}
{$define _COMPOSITEPROTO_H_}
{$include <X11/Xmd.h>}
{$include <X11/extensions/composite.h>}

const
  Window = CARD32;  
  Region = CARD32;  
  Pixmap = CARD32;  

type
  PxCompositeQueryVersionReq = ^TxCompositeQueryVersionReq;
  TxCompositeQueryVersionReq = record
      reqType : TCARD8;
      compositeReqType : TCARD8;
      length : TCARD16;
      majorVersion : TCARD32;
      minorVersion : TCARD32;
    end;

const
  sz_xCompositeQueryVersionReq = 12;  

type
  PxCompositeQueryVersionReply = ^TxCompositeQueryVersionReply;
  TxCompositeQueryVersionReply = record
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
  sz_xCompositeQueryVersionReply = 32;  
type
  PxCompositeRedirectWindowReq = ^TxCompositeRedirectWindowReq;
  TxCompositeRedirectWindowReq = record
      reqType : TCARD8;
      compositeReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
      update : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD16;
    end;

const
  sz_xCompositeRedirectWindowReq = 12;  
type
  PxCompositeRedirectSubwindowsReq = ^TxCompositeRedirectSubwindowsReq;
  TxCompositeRedirectSubwindowsReq = record
      reqType : TCARD8;
      compositeReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
      update : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD16;
    end;

const
  sz_xCompositeRedirectSubwindowsReq = 12;  
type
  PxCompositeUnredirectWindowReq = ^TxCompositeUnredirectWindowReq;
  TxCompositeUnredirectWindowReq = record
      reqType : TCARD8;
      compositeReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
      update : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD16;
    end;

const
  sz_xCompositeUnredirectWindowReq = 12;  
type
  PxCompositeUnredirectSubwindowsReq = ^TxCompositeUnredirectSubwindowsReq;
  TxCompositeUnredirectSubwindowsReq = record
      reqType : TCARD8;
      compositeReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
      update : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD16;
    end;

const
  sz_xCompositeUnredirectSubwindowsReq = 12;  
type
  PxCompositeCreateRegionFromBorderClipReq = ^TxCompositeCreateRegionFromBorderClipReq;
  TxCompositeCreateRegionFromBorderClipReq = record
      reqType : TCARD8;
      compositeReqType : TCARD8;
      length : TCARD16;
      region : TRegion;
      window : TWindow;
    end;

const
  sz_xCompositeCreateRegionFromBorderClipReq = 12;  

type
  PxCompositeNameWindowPixmapReq = ^TxCompositeNameWindowPixmapReq;
  TxCompositeNameWindowPixmapReq = record
      reqType : TCARD8;
      compositeReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
      pixmap : TPixmap;
    end;

const
  sz_xCompositeNameWindowPixmapReq = 12;  

type
  PxCompositeGetOverlayWindowReq = ^TxCompositeGetOverlayWindowReq;
  TxCompositeGetOverlayWindowReq = record
      reqType : TCARD8;
      compositeReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
    end;

function sz_xCompositeGetOverlayWindowReq : longint; { return type might be wrong }


type
  PxCompositeGetOverlayWindowReply = ^TxCompositeGetOverlayWindowReply;
  TxCompositeGetOverlayWindowReply = record
      _type : TBYTE;
      pad1 : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      overlayWin : TWindow;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

function sz_xCompositeGetOverlayWindowReply : longint; { return type might be wrong }

type
  PxCompositeReleaseOverlayWindowReq = ^TxCompositeReleaseOverlayWindowReq;
  TxCompositeReleaseOverlayWindowReq = record
      reqType : TCARD8;
      compositeReqType : TCARD8;
      length : TCARD16;
      window : TWindow;
    end;

function sz_xCompositeReleaseOverlayWindowReq : longint; { return type might be wrong }

{$undef Window}
{$undef Region}
{$undef Pixmap}
{$endif}


implementation

function sz_xCompositeGetOverlayWindowReq : longint; { return type might be wrong }
  begin
    sz_xCompositeGetOverlayWindowReq:=sizeof(xCompositeGetOverlayWindowReq);
  end;

function sz_xCompositeGetOverlayWindowReply : longint; { return type might be wrong }
  begin
    sz_xCompositeGetOverlayWindowReply:=sizeof(xCompositeGetOverlayWindowReply);
  end;

function sz_xCompositeReleaseOverlayWindowReq : longint; { return type might be wrong }
  begin
    sz_xCompositeReleaseOverlayWindowReq:=sizeof(xCompositeReleaseOverlayWindowReq);
  end;


end.
