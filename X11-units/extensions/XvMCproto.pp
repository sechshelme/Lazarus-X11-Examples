
unit XvMCproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/XvMCproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/XvMCproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/XvMCproto.pp
}

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
    xvmcSurfaceInfo = record
        surface_type_id : CARD32;
        chroma_format : CARD16;
        pad0 : CARD16;
        max_width : CARD16;
        max_height : CARD16;
        subpicture_max_width : CARD16;
        subpicture_max_height : CARD16;
        mc_type : CARD32;
        flags : CARD32;
      end;
(* error 
#define sz_xvmcSurfaceInfo 24;
in declaration at line 30 *)

      xvmcQueryVersionReq = record
          reqType : CARD8;
          xvmcReqType : CARD8;
          length : CARD16;
        end;
(* error 
#define sz_xvmcQueryVersionReq 4;
in declaration at line 37 *)


      xvmcQueryVersionReply = record
          _type : BYTE;
          padb1 : BYTE;
          sequenceNumber : CARD16;
          length : CARD32;
          major : CARD32;
          minor : CARD32;
          padl4 : CARD32;
          padl5 : CARD32;
          padl6 : CARD32;
          padl7 : CARD32;
        end;

    const
      sz_xvmcQueryVersionReply = 32;      

    type
      xvmcListSurfaceTypesReq = record
          reqType : CARD8;
          xvmcReqType : CARD8;
          length : CARD16;
          port : CARD32;
        end;
(* error 
#define sz_xvmcListSurfaceTypesReq 8;
in declaration at line 59 *)


      xvmcListSurfaceTypesReply = record
          _type : BYTE;
          padb1 : BYTE;
          sequenceNumber : CARD16;
          length : CARD32;
          num : CARD32;
          padl3 : CARD32;
          padl4 : CARD32;
          padl5 : CARD32;
          padl6 : CARD32;
          padl7 : CARD32;
        end;

    const
      sz_xvmcListSurfaceTypesReply = 32;      

    type
      xvmcCreateContextReq = record
          reqType : CARD8;
          xvmcReqType : CARD8;
          length : CARD16;
          context_id : CARD32;
          port : CARD32;
          surface_type_id : CARD32;
          width : CARD16;
          height : CARD16;
          flags : CARD32;
        end;
(* error 
#define sz_xvmcCreateContextReq 24;
in declaration at line 86 *)


      xvmcCreateContextReply = record
          _type : BYTE;
          padb1 : BYTE;
          sequenceNumber : CARD16;
          length : CARD32;
          width_actual : CARD16;
          height_actual : CARD16;
          flags_return : CARD32;
          padl4 : CARD32;
          padl5 : CARD32;
          padl6 : CARD32;
          padl7 : CARD32;
        end;

    const
      sz_xvmcCreateContextReply = 32;      

    type
      xvmcDestroyContextReq = record
          reqType : CARD8;
          xvmcReqType : CARD8;
          length : CARD16;
          context_id : CARD32;
        end;
(* error 
#define sz_xvmcDestroyContextReq 8;
in declaration at line 109 *)

      xvmcCreateSurfaceReq = record
          reqType : CARD8;
          xvmcReqType : CARD8;
          length : CARD16;
          surface_id : CARD32;
          context_id : CARD32;
        end;
(* error 
#define sz_xvmcCreateSurfaceReq 12;
in declaration at line 118 *)


      xvmcCreateSurfaceReply = record
          _type : BYTE;
          padb1 : BYTE;
          sequenceNumber : CARD16;
          length : CARD32;
          padl2 : CARD32;
          padl3 : CARD32;
          padl4 : CARD32;
          padl5 : CARD32;
          padl6 : CARD32;
          padl7 : CARD32;
        end;

    const
      sz_xvmcCreateSurfaceReply = 32;      

    type
      xvmcDestroySurfaceReq = record
          reqType : CARD8;
          xvmcReqType : CARD8;
          length : CARD16;
          surface_id : CARD32;
        end;
(* error 
#define sz_xvmcDestroySurfaceReq 8;
in declaration at line 140 *)

      xvmcCreateSubpictureReq = record
          reqType : CARD8;
          xvmcReqType : CARD8;
          length : CARD16;
          subpicture_id : CARD32;
          context_id : CARD32;
          xvimage_id : CARD32;
          width : CARD16;
          height : CARD16;
        end;
(* error 
#define sz_xvmcCreateSubpictureReq 20;
in declaration at line 153 *)


      xvmcCreateSubpictureReply = record
          _type : BYTE;
          padb1 : BYTE;
          sequenceNumber : CARD16;
          length : CARD32;
          width_actual : CARD16;
          height_actual : CARD16;
          num_palette_entries : CARD16;
          entry_bytes : CARD16;
          component_order : array[0..3] of CARD8;
          padl5 : CARD32;
          padl6 : CARD32;
          padl7 : CARD32;
        end;

    const
      sz_xvmcCreateSubpictureReply = 32;      

    type
      xvmcDestroySubpictureReq = record
          reqType : CARD8;
          xvmcReqType : CARD8;
          length : CARD16;
          subpicture_id : CARD32;
        end;
(* error 
#define sz_xvmcDestroySubpictureReq 8;
in declaration at line 177 *)

      xvmcListSubpictureTypesReq = record
          reqType : CARD8;
          xvmcReqType : CARD8;
          length : CARD16;
          port : CARD32;
          surface_type_id : CARD32;
        end;
(* error 
#define sz_xvmcListSubpictureTypesReq 12;
in declaration at line 186 *)


      xvmcListSubpictureTypesReply = record
          _type : BYTE;
          padb1 : BYTE;
          sequenceNumber : CARD16;
          length : CARD32;
          num : CARD32;
          padl2 : CARD32;
          padl3 : CARD32;
          padl4 : CARD32;
          padl5 : CARD32;
          padl6 : CARD32;
        end;

    const
      sz_xvmcListSubpictureTypesReply = 32;      

    type
      xvmcGetDRInfoReq = record
          reqType : CARD8;
          xvmcReqType : CARD8;
          length : CARD16;
          port : CARD32;
          shmKey : CARD32;
          magic : CARD32;
        end;
(* error 
#define sz_xvmcGetDRInfoReq 16;
in declaration at line 210 *)


      xvmcGetDRInfoReply = record
          _type : BYTE;
          padb1 : BYTE;
          sequenceNumber : CARD16;
          length : CARD32;
          major : CARD32;
          minor : CARD32;
          patchLevel : CARD32;
          nameLen : CARD32;
          busIDLen : CARD32;
          isLocal : CARD32;
        end;

    const
      sz_xvmcGetDRInfoReply = 32;      
{$endif}

implementation


end.
