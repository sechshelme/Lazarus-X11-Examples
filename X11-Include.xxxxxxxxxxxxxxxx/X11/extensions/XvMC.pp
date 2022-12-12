
unit XvMC;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XvMC.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XvMC.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XvMC.pp
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
Psmallint  = ^smallint;
PXvMCBlockArray  = ^XvMCBlockArray;
PXvMCContext  = ^XvMCContext;
PXvMCMacroBlock  = ^XvMCMacroBlock;
PXvMCMacroBlockArray  = ^XvMCMacroBlockArray;
PXvMCSubpicture  = ^XvMCSubpicture;
PXvMCSurface  = ^XvMCSurface;
PXvMCSurfaceInfo  = ^XvMCSurfaceInfo;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{$ifndef _XVMC_H_}
{$define _XVMC_H_}
{$include <X11/X.h>}
{$include <X11/extensions/Xv.h>}

const
  XvMCName = 'XVideo-MotionCompensation';  
  XvMCNumEvents = 0;  
  XvMCNumErrors = 3;  
  XvMCVersion = 1;  
  XvMCRevision = 1;  
  XvMCBadContext = 0;  
  XvMCBadSurface = 1;  
  XvMCBadSubpicture = 2;  

  XVMC_CHROMA_FORMAT_420 = $00000001;  
  XVMC_CHROMA_FORMAT_422 = $00000002;  
  XVMC_CHROMA_FORMAT_444 = $00000003;  

  XVMC_OVERLAID_SURFACE = $00000001;  
  XVMC_BACKEND_SUBPICTURE = $00000002;  
  XVMC_SUBPICTURE_INDEPENDENT_SCALING = $00000004;  
  XVMC_INTRA_UNSIGNED = $00000008;  

  XVMC_MOCOMP = $00000000;  
  XVMC_IDCT = $00010000;  
  XVMC_MPEG_1 = $00000001;  
  XVMC_MPEG_2 = $00000002;  
  XVMC_H263 = $00000003;  
  XVMC_MPEG_4 = $00000004;  
  XVMC_MB_TYPE_MOTION_FORWARD = $02;  
  XVMC_MB_TYPE_MOTION_BACKWARD = $04;  
  XVMC_MB_TYPE_PATTERN = $08;  
  XVMC_MB_TYPE_INTRA = $10;  
  XVMC_PREDICTION_FIELD = $01;  
  XVMC_PREDICTION_FRAME = $02;  
  XVMC_PREDICTION_DUAL_PRIME = $03;  
  XVMC_PREDICTION_16x8 = $02;  
  XVMC_PREDICTION_4MV = $04;  
  XVMC_SELECT_FIRST_FORWARD = $01;  
  XVMC_SELECT_FIRST_BACKWARD = $02;  
  XVMC_SELECT_SECOND_FORWARD = $04;  
  XVMC_SELECT_SECOND_BACKWARD = $08;  
  XVMC_DCT_TYPE_FRAME = $00;  
  XVMC_DCT_TYPE_FIELD = $01;  
  XVMC_TOP_FIELD = $00000001;  
  XVMC_BOTTOM_FIELD = $00000002;  
  XVMC_FRAME_PICTURE = XVMC_TOP_FIELD or XVMC_BOTTOM_FIELD;  
  XVMC_SECOND_FIELD = $00000004;  
  XVMC_DIRECT = $00000001;  
  XVMC_RENDERING = $00000001;  
  XVMC_DISPLAYING = $00000002;  
type
  PXvMCSurfaceInfo = ^TXvMCSurfaceInfo;
  TXvMCSurfaceInfo = record
      surface_type_id : longint;
      chroma_format : longint;
      max_width : word;
      max_height : word;
      subpicture_max_width : word;
      subpicture_max_height : word;
      mc_type : longint;
      flags : longint;
    end;


  PXvMCContext = ^TXvMCContext;
  TXvMCContext = record
      context_id : TXID;
      surface_type_id : longint;
      width : word;
      height : word;
      port : TXvPortID;
      flags : longint;
      privData : pointer;
    end;


  PXvMCSurface = ^TXvMCSurface;
  TXvMCSurface = record
      surface_id : TXID;
      context_id : TXID;
      surface_type_id : longint;
      width : word;
      height : word;
      privData : pointer;
    end;


  PXvMCSubpicture = ^TXvMCSubpicture;
  TXvMCSubpicture = record
      subpicture_id : TXID;
      context_id : TXID;
      xvimage_id : longint;
      width : word;
      height : word;
      num_palette_entries : longint;
      entry_bytes : longint;
      component_order : array[0..3] of char;
      privData : pointer;
    end;

  PXvMCBlockArray = ^TXvMCBlockArray;
  TXvMCBlockArray = record
      num_blocks : dword;
      context_id : TXID;
      privData : pointer;
      blocks : Psmallint;
    end;

  PXvMCMacroBlock = ^TXvMCMacroBlock;
  TXvMCMacroBlock = record
      x : word;
      y : word;
      macroblock_type : byte;
      motion_type : byte;
      motion_vertical_field_select : byte;
      dct_type : byte;
      PMV : array[0..1] of array[0..1] of array[0..1] of smallint;
      index : dword;
      coded_block_pattern : word;
      pad0 : word;
    end;

  PXvMCMacroBlockArray = ^TXvMCMacroBlockArray;
  TXvMCMacroBlockArray = record
      num_blocks : dword;
      context_id : TXID;
      privData : pointer;
      macro_blocks : PXvMCMacroBlock;
    end;
{$endif}

implementation


end.
