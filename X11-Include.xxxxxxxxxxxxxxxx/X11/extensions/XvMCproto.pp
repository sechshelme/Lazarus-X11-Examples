
unit XvMCproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XvMCproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XvMCproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XvMCproto.pp
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
    PxvmcCreateContextReply  = ^xvmcCreateContextReply;
    PxvmcCreateContextReq  = ^xvmcCreateContextReq;
    PxvmcCreateSubpictureReply  = ^xvmcCreateSubpictureReply;
    PxvmcCreateSubpictureReq  = ^xvmcCreateSubpictureReq;
    PxvmcCreateSurfaceReply  = ^xvmcCreateSurfaceReply;
    PxvmcCreateSurfaceReq  = ^xvmcCreateSurfaceReq;
    PxvmcDestroyContextReq  = ^xvmcDestroyContextReq;
    PxvmcDestroySubpictureReq  = ^xvmcDestroySubpictureReq;
    PxvmcDestroySurfaceReq  = ^xvmcDestroySurfaceReq;
    PxvmcGetDRInfoReply  = ^xvmcGetDRInfoReply;
    PxvmcGetDRInfoReq  = ^xvmcGetDRInfoReq;
    PxvmcListSubpictureTypesReply  = ^xvmcListSubpictureTypesReply;
    PxvmcListSubpictureTypesReq  = ^xvmcListSubpictureTypesReq;
    PxvmcListSurfaceTypesReply  = ^xvmcListSurfaceTypesReply;
    PxvmcListSurfaceTypesReq  = ^xvmcListSurfaceTypesReq;
    PxvmcQueryVersionReply  = ^xvmcQueryVersionReply;
    PxvmcQueryVersionReq  = ^xvmcQueryVersionReq;
    PxvmcSurfaceInfo  = ^xvmcSurfaceInfo;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{$ifndef _XVMCPROTO_H_}
{$define _XVMCPROTO_H_}

const
  xvmc_QueryVersion = 0;  
  xvmc_ListSurfaceTypes = 1;  
  xvmc_CreateContext = 2;  
  xvmc_DestroyContext = 3;  
  xvmc_CreateSurface = 4;  
  xvmc_DestroySurface = 5;  
  xvmc_CreateSubpicture = 6;  
  xvmc_DestroySubpicture = 7;  
  xvmc_ListSubpictureTypes = 8;  
  xvmc_GetDRInfo = 9;  
  xvmc_LastRequest = xvmc_GetDRInfo;  
  xvmcNumRequest = xvmc_LastRequest+1;  
type
  PxvmcSurfaceInfo = ^TxvmcSurfaceInfo;
  TxvmcSurfaceInfo = record
      surface_type_id : TCARD32;
      chroma_format : TCARD16;
      pad0 : TCARD16;
      max_width : TCARD16;
      max_height : TCARD16;
      subpicture_max_width : TCARD16;
      subpicture_max_height : TCARD16;
      mc_type : TCARD32;
      flags : TCARD32;
    end;
(* error 
#define sz_xvmcSurfaceInfo 24;
in declaration at line 30 *)

      PxvmcQueryVersionReq = ^TxvmcQueryVersionReq;
      TxvmcQueryVersionReq = record
          reqType : TCARD8;
          xvmcReqType : TCARD8;
          length : TCARD16;
        end;
(* error 
#define sz_xvmcQueryVersionReq 4;
in declaration at line 37 *)


      PxvmcQueryVersionReply = ^TxvmcQueryVersionReply;
      TxvmcQueryVersionReply = record
          _type : TBYTE;
          padb1 : TBYTE;
          sequenceNumber : TCARD16;
          length : TCARD32;
          major : TCARD32;
          minor : TCARD32;
          padl4 : TCARD32;
          padl5 : TCARD32;
          padl6 : TCARD32;
          padl7 : TCARD32;
        end;

    const
      sz_xvmcQueryVersionReply = 32;      
    type
      PxvmcListSurfaceTypesReq = ^TxvmcListSurfaceTypesReq;
      TxvmcListSurfaceTypesReq = record
          reqType : TCARD8;
          xvmcReqType : TCARD8;
          length : TCARD16;
          port : TCARD32;
        end;
(* error 
#define sz_xvmcListSurfaceTypesReq 8;
in declaration at line 59 *)


      PxvmcListSurfaceTypesReply = ^TxvmcListSurfaceTypesReply;
      TxvmcListSurfaceTypesReply = record
          _type : TBYTE;
          padb1 : TBYTE;
          sequenceNumber : TCARD16;
          length : TCARD32;
          num : TCARD32;
          padl3 : TCARD32;
          padl4 : TCARD32;
          padl5 : TCARD32;
          padl6 : TCARD32;
          padl7 : TCARD32;
        end;

    const
      sz_xvmcListSurfaceTypesReply = 32;      
    type
      PxvmcCreateContextReq = ^TxvmcCreateContextReq;
      TxvmcCreateContextReq = record
          reqType : TCARD8;
          xvmcReqType : TCARD8;
          length : TCARD16;
          context_id : TCARD32;
          port : TCARD32;
          surface_type_id : TCARD32;
          width : TCARD16;
          height : TCARD16;
          flags : TCARD32;
        end;
(* error 
#define sz_xvmcCreateContextReq 24;
in declaration at line 86 *)


      PxvmcCreateContextReply = ^TxvmcCreateContextReply;
      TxvmcCreateContextReply = record
          _type : TBYTE;
          padb1 : TBYTE;
          sequenceNumber : TCARD16;
          length : TCARD32;
          width_actual : TCARD16;
          height_actual : TCARD16;
          flags_return : TCARD32;
          padl4 : TCARD32;
          padl5 : TCARD32;
          padl6 : TCARD32;
          padl7 : TCARD32;
        end;

    const
      sz_xvmcCreateContextReply = 32;      
    type
      PxvmcDestroyContextReq = ^TxvmcDestroyContextReq;
      TxvmcDestroyContextReq = record
          reqType : TCARD8;
          xvmcReqType : TCARD8;
          length : TCARD16;
          context_id : TCARD32;
        end;
(* error 
#define sz_xvmcDestroyContextReq 8;
in declaration at line 109 *)

      PxvmcCreateSurfaceReq = ^TxvmcCreateSurfaceReq;
      TxvmcCreateSurfaceReq = record
          reqType : TCARD8;
          xvmcReqType : TCARD8;
          length : TCARD16;
          surface_id : TCARD32;
          context_id : TCARD32;
        end;
(* error 
#define sz_xvmcCreateSurfaceReq 12;
in declaration at line 118 *)


      PxvmcCreateSurfaceReply = ^TxvmcCreateSurfaceReply;
      TxvmcCreateSurfaceReply = record
          _type : TBYTE;
          padb1 : TBYTE;
          sequenceNumber : TCARD16;
          length : TCARD32;
          padl2 : TCARD32;
          padl3 : TCARD32;
          padl4 : TCARD32;
          padl5 : TCARD32;
          padl6 : TCARD32;
          padl7 : TCARD32;
        end;

    const
      sz_xvmcCreateSurfaceReply = 32;      
    type
      PxvmcDestroySurfaceReq = ^TxvmcDestroySurfaceReq;
      TxvmcDestroySurfaceReq = record
          reqType : TCARD8;
          xvmcReqType : TCARD8;
          length : TCARD16;
          surface_id : TCARD32;
        end;
(* error 
#define sz_xvmcDestroySurfaceReq 8;
in declaration at line 140 *)

      PxvmcCreateSubpictureReq = ^TxvmcCreateSubpictureReq;
      TxvmcCreateSubpictureReq = record
          reqType : TCARD8;
          xvmcReqType : TCARD8;
          length : TCARD16;
          subpicture_id : TCARD32;
          context_id : TCARD32;
          xvimage_id : TCARD32;
          width : TCARD16;
          height : TCARD16;
        end;
(* error 
#define sz_xvmcCreateSubpictureReq 20;
in declaration at line 153 *)


      PxvmcCreateSubpictureReply = ^TxvmcCreateSubpictureReply;
      TxvmcCreateSubpictureReply = record
          _type : TBYTE;
          padb1 : TBYTE;
          sequenceNumber : TCARD16;
          length : TCARD32;
          width_actual : TCARD16;
          height_actual : TCARD16;
          num_palette_entries : TCARD16;
          entry_bytes : TCARD16;
          component_order : array[0..3] of TCARD8;
          padl5 : TCARD32;
          padl6 : TCARD32;
          padl7 : TCARD32;
        end;

    const
      sz_xvmcCreateSubpictureReply = 32;      
    type
      PxvmcDestroySubpictureReq = ^TxvmcDestroySubpictureReq;
      TxvmcDestroySubpictureReq = record
          reqType : TCARD8;
          xvmcReqType : TCARD8;
          length : TCARD16;
          subpicture_id : TCARD32;
        end;
(* error 
#define sz_xvmcDestroySubpictureReq 8;
in declaration at line 177 *)

      PxvmcListSubpictureTypesReq = ^TxvmcListSubpictureTypesReq;
      TxvmcListSubpictureTypesReq = record
          reqType : TCARD8;
          xvmcReqType : TCARD8;
          length : TCARD16;
          port : TCARD32;
          surface_type_id : TCARD32;
        end;
(* error 
#define sz_xvmcListSubpictureTypesReq 12;
in declaration at line 186 *)


      PxvmcListSubpictureTypesReply = ^TxvmcListSubpictureTypesReply;
      TxvmcListSubpictureTypesReply = record
          _type : TBYTE;
          padb1 : TBYTE;
          sequenceNumber : TCARD16;
          length : TCARD32;
          num : TCARD32;
          padl2 : TCARD32;
          padl3 : TCARD32;
          padl4 : TCARD32;
          padl5 : TCARD32;
          padl6 : TCARD32;
        end;

    const
      sz_xvmcListSubpictureTypesReply = 32;      
    type
      PxvmcGetDRInfoReq = ^TxvmcGetDRInfoReq;
      TxvmcGetDRInfoReq = record
          reqType : TCARD8;
          xvmcReqType : TCARD8;
          length : TCARD16;
          port : TCARD32;
          shmKey : TCARD32;
          magic : TCARD32;
        end;
(* error 
#define sz_xvmcGetDRInfoReq 16;
in declaration at line 210 *)


      PxvmcGetDRInfoReply = ^TxvmcGetDRInfoReply;
      TxvmcGetDRInfoReply = record
          _type : TBYTE;
          padb1 : TBYTE;
          sequenceNumber : TCARD16;
          length : TCARD32;
          major : TCARD32;
          minor : TCARD32;
          patchLevel : TCARD32;
          nameLen : TCARD32;
          busIDLen : TCARD32;
          isLocal : TCARD32;
        end;

    const
      sz_xvmcGetDRInfoReply = 32;      
{$endif}

implementation


end.
