
unit EVIproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/EVIproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/EVIproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/EVIproto.pp
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
PVisualID32  = ^VisualID32;
PXEVIGetVisualInfoReply  = ^XEVIGetVisualInfoReply;
PXEVIGetVisualInfoReq  = ^XEVIGetVisualInfoReq;
PXEVIQueryVersion  = ^XEVIQueryVersion;
PxEVIQueryVersionReply  = ^xEVIQueryVersionReply;
PxEVIQueryVersionReq  = ^xEVIQueryVersionReq;
PxExtendedVisualInfo  = ^xExtendedVisualInfo;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _EVIPROTO_H_}
{$define _EVIPROTO_H_}
{$include <X11/extensions/EVI.h>}

const
  X_EVIQueryVersion = 0;  
  X_EVIGetVisualInfo = 1;  
  VisualID = CARD32;  
type
  PVisualID32 = ^TVisualID32;
  TVisualID32 = TCARD32;

const
  sz_VisualID32 = 4;  
type
  PxExtendedVisualInfo = ^TxExtendedVisualInfo;
  TxExtendedVisualInfo = record
      core_visual_id : TVisualID;
      screen : TINT8;
      level : TINT8;
      transparency_type : TCARD8;
      pad0 : TCARD8;
      transparency_value : TCARD32;
      min_hw_colormaps : TCARD8;
      max_hw_colormaps : TCARD8;
      num_colormap_conflicts : TCARD16;
    end;

const
  sz_xExtendedVisualInfo = 16;  


type
  PXEVIQueryVersion = ^TXEVIQueryVersion;
  TXEVIQueryVersion = record
      reqType : TCARD8;
      xeviReqType : TCARD8;
      length : TCARD16;
    end;
  TxEVIQueryVersionReq = TXEVIQueryVersion;
  PxEVIQueryVersionReq = ^TxEVIQueryVersionReq;

const
  sz_xEVIQueryVersionReq = 4;  



type
  PxEVIQueryVersionReply = ^TxEVIQueryVersionReply;
  TxEVIQueryVersionReply = record
      _type : TBYTE;
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
  sz_xEVIQueryVersionReply = 32;  


type
  PXEVIGetVisualInfoReq = ^TXEVIGetVisualInfoReq;
  TXEVIGetVisualInfoReq = record
      reqType : TCARD8;
      xeviReqType : TCARD8;
      length : TCARD16;
      n_visual : TCARD32;
    end;

const
  sz_xEVIGetVisualInfoReq = 8;  

type
  PXEVIGetVisualInfoReply = ^TXEVIGetVisualInfoReply;
  TXEVIGetVisualInfoReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      n_info : TCARD32;
      n_conflicts : TCARD32;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
    end;

const
  sz_xEVIGetVisualInfoReply = 32;  
{$undef VisualID}
{$endif}


implementation


end.
