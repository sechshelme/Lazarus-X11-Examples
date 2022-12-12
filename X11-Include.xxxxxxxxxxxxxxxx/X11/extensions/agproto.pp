
unit agproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/agproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/agproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/agproto.pp
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
    PXagCreate  = ^XagCreate;
    PXagCreateAssoc  = ^XagCreateAssoc;
    PXagDestroy  = ^XagDestroy;
    PXagDestroyAssoc  = ^XagDestroyAssoc;
    PXagGetAttr  = ^XagGetAttr;
    PXagQuery  = ^XagQuery;
    PXagQueryVersion  = ^XagQueryVersion;
    PxXagCreateAssocReq  = ^xXagCreateAssocReq;
    PxXagCreateReq  = ^xXagCreateReq;
    PxXagDestroyAssocReq  = ^xXagDestroyAssocReq;
    PxXagDestroyReq  = ^xXagDestroyReq;
    PxXagGetAttrReply  = ^xXagGetAttrReply;
    PxXagGetAttrReq  = ^xXagGetAttrReq;
    PxXagQueryReply  = ^xXagQueryReply;
    PxXagQueryReq  = ^xXagQueryReq;
    PxXagQueryVersionReply  = ^xXagQueryVersionReply;
    PxXagQueryVersionReq  = ^xXagQueryVersionReq;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _AGPROTO_H_ /* { */}
{$define _AGPROTO_H_}
{$include <X11/extensions/ag.h>}

const
  X_XagQueryVersion = 0;  
  X_XagCreate = 1;  
  X_XagDestroy = 2;  
  X_XagGetAttr = 3;  
  X_XagQuery = 4;  
  X_XagCreateAssoc = 5;  
  X_XagDestroyAssoc = 6;  
  XAppGroup = CARD32;  

  Colormap = CARD32;  
  VisualID = CARD32;  
  Window = CARD32;  


type
  PXagQueryVersion = ^TXagQueryVersion;
  TXagQueryVersion = record
      reqType : TCARD8;
      xagReqType : TCARD8;
      length : TCARD16;
      client_major_version : TCARD16;
      client_minor_version : TCARD16;
    end;
  TxXagQueryVersionReq = TXagQueryVersion;
  PxXagQueryVersionReq = ^TxXagQueryVersionReq;

const
  sz_xXagQueryVersionReq = 8;  

type
  PxXagQueryVersionReply = ^TxXagQueryVersionReply;
  TxXagQueryVersionReply = record
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
  sz_xXagQueryVersionReply = 32;  

(* error 
#define XagSingleScreenMask		1 << 0
in define line 78 *)
(* error 
#define XagDefaultRootMask		1 << XagNdefaultRoot
in define line 79 *)
(* error 
#define XagRootVisualMask		1 << XagNrootVisual
in define line 80 *)
(* error 
#define XagDefaultColormapMask		1 << XagNdefaultColormap
in define line 81 *)
(* error 
#define XagBlackPixelMask		1 << XagNblackPixel
in define line 82 *)
(* error 
#define XagWhitePixelMask		1 << XagNwhitePixel
in define line 83 *)
(* error 
#define XagAppGroupLeaderMask		1 << XagNappGroupLeader
in define line 84 *)



    type
      PXagCreate = ^TXagCreate;
      TXagCreate = record
          reqType : TCARD8;
          xagReqType : TCARD8;
          length : TCARD16;
          app_group : TXAppGroup;
          attrib_mask : TCARD32;
        end;
      TxXagCreateReq = TXagCreate;
      PxXagCreateReq = ^TxXagCreateReq;

    const
      sz_xXagCreateReq = 12;      


    type
      PXagDestroy = ^TXagDestroy;
      TXagDestroy = record
          reqType : TCARD8;
          xagReqType : TCARD8;
          length : TCARD16;
          app_group : TXAppGroup;
        end;
      TxXagDestroyReq = TXagDestroy;
      PxXagDestroyReq = ^TxXagDestroyReq;

    const
      sz_xXagDestroyReq = 8;      


    type
      PXagGetAttr = ^TXagGetAttr;
      TXagGetAttr = record
          reqType : TCARD8;
          xagReqType : TCARD8;
          length : TCARD16;
          app_group : TXAppGroup;
        end;
      TxXagGetAttrReq = TXagGetAttr;
      PxXagGetAttrReq = ^TxXagGetAttrReq;

    const
      sz_xXagGetAttrReq = 8;      

    type
      PxXagGetAttrReply = ^TxXagGetAttrReply;
      TxXagGetAttrReply = record
          _type : TBYTE;
          pad1 : TBOOL;
          sequence_number : TCARD16;
          length : TCARD32;
          default_root : TWindow;
          root_visual : TVisualID;
          default_colormap : TColormap;
          black_pixel : TCARD32;
          white_pixel : TCARD32;
          single_screen : TBOOL;
          app_group_leader : TBOOL;
          pad2 : TCARD16;
        end;

    const
      sz_xXagGetAttrReply = 32;      


    type
      PXagQuery = ^TXagQuery;
      TXagQuery = record
          reqType : TCARD8;
          xagReqType : TCARD8;
          length : TCARD16;
          resource : TCARD32;
        end;
      TxXagQueryReq = TXagQuery;
      PxXagQueryReq = ^TxXagQueryReq;

    const
      sz_xXagQueryReq = 8;      

    type
      PxXagQueryReply = ^TxXagQueryReply;
      TxXagQueryReply = record
          _type : TBYTE;
          pad1 : TBOOL;
          sequence_number : TCARD16;
          length : TCARD32;
          app_group : TXAppGroup;
          pad2 : TCARD32;
          pad3 : TCARD32;
          pad4 : TCARD32;
          pad5 : TCARD32;
          pad6 : TCARD32;
        end;

    const
      sz_xXagQueryReply = 32;      



    type
      PXagCreateAssoc = ^TXagCreateAssoc;
      TXagCreateAssoc = record
          reqType : TCARD8;
          xagReqType : TCARD8;
          length : TCARD16;
          window : TWindow;
          window_type : TCARD16;
          system_window_len : TCARD16;
        end;
      TxXagCreateAssocReq = TXagCreateAssoc;
      PxXagCreateAssocReq = ^TxXagCreateAssocReq;

    const
      sz_xXagCreateAssocReq = 12;      


    type
      PXagDestroyAssoc = ^TXagDestroyAssoc;
      TXagDestroyAssoc = record
          reqType : TCARD8;
          xagReqType : TCARD8;
          length : TCARD16;
          window : TWindow;
        end;
      TxXagDestroyAssocReq = TXagDestroyAssoc;
      PxXagDestroyAssocReq = ^TxXagDestroyAssocReq;

    const
      sz_xXagDestroyAssocReq = 8;      
{$undef XAppGroup}

{$undef Window}
{$undef Colormap}
{$undef VisualID}
{$endif}


implementation


end.
