
unit FSproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/fonts/FSproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/fonts/FSproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/fonts/FSproto.pp
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
PfsAccessContextError  = ^fsAccessContextError;
PfsAllocError  = ^fsAllocError;
PfsBitmapFormat  = ^fsBitmapFormat;
PfsBitmapFormatMask  = ^fsBitmapFormatMask;
PfsCatalogueChangeNotifyEvent  = ^fsCatalogueChangeNotifyEvent;
PfsChar2b  = ^fsChar2b;
PfsChar2b_version1  = ^fsChar2b_version1;
PfsCloseReq  = ^fsCloseReq;
PfsConnClientPrefix  = ^fsConnClientPrefix;
PfsConnSetup  = ^fsConnSetup;
PfsConnSetupAccept  = ^fsConnSetupAccept;
PfsConnSetupExtra  = ^fsConnSetupExtra;
PfsCreateACExtraReply  = ^fsCreateACExtraReply;
PfsCreateACReply  = ^fsCreateACReply;
PfsCreateACReq  = ^fsCreateACReq;
PfsError  = ^fsError;
PfsEvent  = ^fsEvent;
PfsEventMaskError  = ^fsEventMaskError;
PfsFakeReq  = ^fsFakeReq;
PfsFontChangeNotifyEvent  = ^fsFontChangeNotifyEvent;
PfsFontError  = ^fsFontError;
PfsFormatError  = ^fsFormatError;
PfsFreeACReq  = ^fsFreeACReq;
PfsGenericReply  = ^fsGenericReply;
PfsGetCataloguesReply  = ^fsGetCataloguesReply;
PfsGetCataloguesReq  = ^fsGetCataloguesReq;
PfsGetEventMaskReply  = ^fsGetEventMaskReply;
PfsGetEventMaskReq  = ^fsGetEventMaskReq;
PfsGetResolutionReply  = ^fsGetResolutionReply;
PfsGetResolutionReq  = ^fsGetResolutionReq;
PfsIDChoiceError  = ^fsIDChoiceError;
PfsImplementationError  = ^fsImplementationError;
PfsKeepAliveEvent  = ^fsKeepAliveEvent;
PfsLengthError  = ^fsLengthError;
PfsListCataloguesReply  = ^fsListCataloguesReply;
PfsListCataloguesReq  = ^fsListCataloguesReq;
PfsListExtensionsReply  = ^fsListExtensionsReply;
PfsListExtensionsReq  = ^fsListExtensionsReq;
PfsListFontsReply  = ^fsListFontsReply;
PfsListFontsReq  = ^fsListFontsReq;
PfsListFontsWithXInfoReply  = ^fsListFontsWithXInfoReply;
PfsListFontsWithXInfoReq  = ^fsListFontsWithXInfoReq;
PfsNameError  = ^fsNameError;
PfsNoopReq  = ^fsNoopReq;
PfsOffset32  = ^fsOffset32;
PfsOpenBitmapFontReply  = ^fsOpenBitmapFontReply;
PfsOpenBitmapFontReq  = ^fsOpenBitmapFontReq;
PfsPropInfo  = ^fsPropInfo;
PfsPropOffset  = ^fsPropOffset;
PfsQueryExtensionReply  = ^fsQueryExtensionReply;
PfsQueryExtensionReq  = ^fsQueryExtensionReq;
PfsQueryXBitmaps16Reply  = ^fsQueryXBitmaps16Reply;
PfsQueryXBitmaps16Req  = ^fsQueryXBitmaps16Req;
PfsQueryXBitmaps8Reply  = ^fsQueryXBitmaps8Reply;
PfsQueryXBitmaps8Req  = ^fsQueryXBitmaps8Req;
PfsQueryXExtents16Reply  = ^fsQueryXExtents16Reply;
PfsQueryXExtents16Req  = ^fsQueryXExtents16Req;
PfsQueryXExtents8Reply  = ^fsQueryXExtents8Reply;
PfsQueryXExtents8Req  = ^fsQueryXExtents8Req;
PfsQueryXInfoReply  = ^fsQueryXInfoReply;
PfsQueryXInfoReq  = ^fsQueryXInfoReq;
PfsRange  = ^fsRange;
PfsRangeError  = ^fsRangeError;
PfsReply  = ^fsReply;
PfsReq  = ^fsReq;
PfsRequestError  = ^fsRequestError;
PfsResolution  = ^fsResolution;
PfsResolutionError  = ^fsResolutionError;
PfsResourceReq  = ^fsResourceReq;
PfsSetAuthorizationReq  = ^fsSetAuthorizationReq;
PfsSetCataloguesReq  = ^fsSetCataloguesReq;
PfsSetEventMaskReq  = ^fsSetEventMaskReq;
PfsSetResolutionReq  = ^fsSetResolutionReq;
PfsTimestamp  = ^fsTimestamp;
PfsXCharInfo  = ^fsXCharInfo;
PfsXFontInfoHeader  = ^fsXFontInfoHeader;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _FS_PROTO_H_}
{$define _FS_PROTO_H_}
{$include <X11/fonts/FS.h>}

const
  sz_fsPropOffset = 20;  
  sz_fsPropInfo = 8;  
  sz_fsResolution = 6;  
  sz_fsChar2b = 2;  
  sz_fsChar2b_version1 = 2;  
  sz_fsOffset32 = 8;  
  sz_fsRange = 4;  
  sz_fsXCharInfo = 12;  
  sz_fsXFontInfoHeader = 40;  
  sz_fsConnClientPrefix = 8;  
  sz_fsConnSetup = 12;  
  sz_fsConnSetupExtra = 8;  
  sz_fsConnSetupAccept = 12;  

  sz_fsReq = 4;  
  sz_fsListExtensionsReq = 4;  
  sz_fsResourceReq = 8;  
  sz_fsNoopReq = 4;  
  sz_fsListExtensionReq = 4;  
  sz_fsQueryExtensionReq = 4;  
  sz_fsListCataloguesReq = 12;  
  sz_fsSetCataloguesReq = 4;  
  sz_fsGetCataloguesReq = 4;  
  sz_fsSetEventMaskReq = 8;  
  sz_fsGetEventMaskReq = 4;  
  sz_fsCreateACReq = 8;  
  sz_fsFreeACReq = 8;  
  sz_fsSetAuthorizationReq = 8;  
  sz_fsSetResolutionReq = 4;  
  sz_fsGetResolutionReq = 4;  
  sz_fsListFontsReq = 12;  
  sz_fsListFontsWithXInfoReq = 12;  
  sz_fsOpenBitmapFontReq = 16;  
  sz_fsQueryXInfoReq = 8;  
  sz_fsQueryXExtents8Req = 12;  
  sz_fsQueryXExtents16Req = 12;  
  sz_fsQueryXBitmaps8Req = 16;  
  sz_fsQueryXBitmaps16Req = 16;  
  sz_fsCloseReq = 8;  

  sz_fsReply = 8;  
  sz_fsGenericReply = 8;  
  sz_fsListExtensionsReply = 8;  
  sz_fsQueryExtensionReply = 20;  
  sz_fsListCataloguesReply = 16;  
  sz_fsGetCataloguesReply = 8;  
  sz_fsGetEventMaskReply = 12;  
  sz_fsCreateACReply = 12;  
  sz_fsGetResolutionReply = 8;  
  sz_fsListFontsReply = 16;  
  sz_fsListFontsWithXInfoReply = 12+sz_fsXFontInfoHeader;  
  sz_fsOpenBitmapFontReply = 16;  
  sz_fsQueryXInfoReply = 8+sz_fsXFontInfoHeader;  
  sz_fsQueryXExtents8Reply = 12;  
  sz_fsQueryXExtents16Reply = 12;  
  sz_fsQueryXBitmaps8Reply = 20;  
  sz_fsQueryXBitmaps16Reply = 20;  
  sz_fsError = 16;  
  sz_fsEvent = 12;  
  sz_fsKeepAliveEvent = 12;  
  fsTrue = 1;  
  fsFalse = 0;  

  Mask = CARD32;  
  Font = CARD32;  
  AccContext = CARD32;  
type
  PfsTimestamp = ^TfsTimestamp;
  TfsTimestamp = TCARD32;
{$ifdef NOTDEF /* in fsmasks.h */}

  PfsBitmapFormat = ^TfsBitmapFormat;
  TfsBitmapFormat = TCARD32;

  PfsBitmapFormatMask = ^TfsBitmapFormatMask;
  TfsBitmapFormatMask = TCARD32;
{$endif}

const
  sz_fsBitmapFormat = 4;  
type
  PfsXCharInfo = ^TfsXCharInfo;
  TfsXCharInfo = record
      left : TINT16;
      right : TINT16;
      width : TINT16;
      ascent : TINT16;
      descent : TINT16;
      attributes : TCARD16;
    end;

  PfsChar2b = ^TfsChar2b;
  TfsChar2b = record
      high : TCARD8;
      low : TCARD8;
    end;

  PfsChar2b_version1 = ^TfsChar2b_version1;
  TfsChar2b_version1 = record
      low : TCARD8;
      high : TCARD8;
    end;

  PfsRange = ^TfsRange;
  TfsRange = record
      min_char_high : TCARD8;
      min_char_low : TCARD8;
      max_char_high : TCARD8;
      max_char_low : TCARD8;
    end;

  PfsOffset32 = ^TfsOffset32;
  TfsOffset32 = record
      position : TCARD32;
      length : TCARD32;
    end;

  PfsPropOffset = ^TfsPropOffset;
  TfsPropOffset = record
      name : TfsOffset32;
      value : TfsOffset32;
      _type : TCARD8;
      pad0 : TBYTE;
      pad1 : TCARD16;
    end;



  PfsPropInfo = ^TfsPropInfo;
  TfsPropInfo = record
      num_offsets : TCARD32;
      data_len : TCARD32;
    end;

  PfsResolution = ^TfsResolution;
  TfsResolution = record
      x_resolution : TCARD16;
      y_resolution : TCARD16;
      point_size : TCARD16;
    end;


  PfsXFontInfoHeader = ^TfsXFontInfoHeader;
  TfsXFontInfoHeader = record
      flags : TCARD32;
      char_range_min_char_high : TCARD8;
      char_range_min_char_low : TCARD8;
      char_range_max_char_high : TCARD8;
      char_range_max_char_low : TCARD8;
      draw_direction : TCARD8;
      pad : TCARD8;
      default_char_high : TCARD8;
      default_char_low : TCARD8;
      min_bounds_left : TINT16;
      min_bounds_right : TINT16;
      min_bounds_width : TINT16;
      min_bounds_ascent : TINT16;
      min_bounds_descent : TINT16;
      min_bounds_attributes : TCARD16;
      max_bounds_left : TINT16;
      max_bounds_right : TINT16;
      max_bounds_width : TINT16;
      max_bounds_ascent : TINT16;
      max_bounds_descent : TINT16;
      max_bounds_attributes : TCARD16;
      font_ascent : TINT16;
      font_descent : TINT16;
    end;



  PfsConnClientPrefix = ^TfsConnClientPrefix;
  TfsConnClientPrefix = record
      byteOrder : TBYTE;
      num_auths : TCARD8;
      major_version : TCARD16;
      minor_version : TCARD16;
      auth_len : TCARD16;
    end;



  PfsConnSetup = ^TfsConnSetup;
  TfsConnSetup = record
      status : TCARD16;
      major_version : TCARD16;
      minor_version : TCARD16;
      num_alternates : TCARD8;
      auth_index : TCARD8;
      alternate_len : TCARD16;
      auth_len : TCARD16;
    end;


  PfsConnSetupExtra = ^TfsConnSetupExtra;
  TfsConnSetupExtra = record
      length : TCARD32;
      status : TCARD16;
      pad : TCARD16;
    end;


  PfsConnSetupAccept = ^TfsConnSetupAccept;
  TfsConnSetupAccept = record
      length : TCARD32;
      max_request_len : TCARD16;
      vendor_len : TCARD16;
      release_number : TCARD32;
    end;

  PfsReq = ^TfsReq;
  TfsReq = record
      reqType : TCARD8;
      data : TCARD8;
      length : TCARD16;
    end;



  PfsFakeReq = ^TfsFakeReq;
  TfsFakeReq = record
      reqType : TCARD8;
      data : TCARD8;
      length : TCARD16;
      pad : TCARD32;
    end;

  PfsResourceReq = ^TfsResourceReq;
  TfsResourceReq = record
      reqType : TCARD8;
      pad : TBYTE;
      length : TCARD16;
      id : TFont;
    end;

  PfsNoopReq = ^TfsNoopReq;
  TfsNoopReq = TfsReq;

  PfsListExtensionsReq = ^TfsListExtensionsReq;
  TfsListExtensionsReq = TfsReq;


  PfsQueryExtensionReq = ^TfsQueryExtensionReq;
  TfsQueryExtensionReq = record
      reqType : TCARD8;
      nbytes : TBYTE;
      length : TCARD16;
    end;


  PfsListCataloguesReq = ^TfsListCataloguesReq;
  TfsListCataloguesReq = record
      reqType : TCARD8;
      data : TCARD8;
      length : TCARD16;
      maxNames : TCARD32;
      nbytes : TCARD16;
      pad2 : TCARD16;
    end;


  PfsSetCataloguesReq = ^TfsSetCataloguesReq;
  TfsSetCataloguesReq = record
      reqType : TCARD8;
      num_catalogues : TBYTE;
      length : TCARD16;
    end;

  PfsGetCataloguesReq = ^TfsGetCataloguesReq;
  TfsGetCataloguesReq = TfsReq;

  PfsSetEventMaskReq = ^TfsSetEventMaskReq;
  TfsSetEventMaskReq = record
      reqType : TCARD8;
      ext_opcode : TCARD8;
      length : TCARD16;
      event_mask : TMask;
    end;

  PfsGetEventMaskReq = ^TfsGetEventMaskReq;
  TfsGetEventMaskReq = record
      reqType : TCARD8;
      ext_opcode : TCARD8;
      length : TCARD16;
    end;


  PfsCreateACReq = ^TfsCreateACReq;
  TfsCreateACReq = record
      reqType : TCARD8;
      num_auths : TBYTE;
      length : TCARD16;
      acid : TAccContext;
    end;

  PfsFreeACReq = ^TfsFreeACReq;
  TfsFreeACReq = TfsResourceReq;

  PfsSetAuthorizationReq = ^TfsSetAuthorizationReq;
  TfsSetAuthorizationReq = TfsResourceReq;


  PfsSetResolutionReq = ^TfsSetResolutionReq;
  TfsSetResolutionReq = record
      reqType : TCARD8;
      num_resolutions : TBYTE;
      length : TCARD16;
    end;

  PfsGetResolutionReq = ^TfsGetResolutionReq;
  TfsGetResolutionReq = TfsReq;


  PfsListFontsReq = ^TfsListFontsReq;
  TfsListFontsReq = record
      reqType : TCARD8;
      pad : TBYTE;
      length : TCARD16;
      maxNames : TCARD32;
      nbytes : TCARD16;
      pad2 : TCARD16;
    end;

  PfsListFontsWithXInfoReq = ^TfsListFontsWithXInfoReq;
  TfsListFontsWithXInfoReq = TfsListFontsReq;


  PfsOpenBitmapFontReq = ^TfsOpenBitmapFontReq;
  TfsOpenBitmapFontReq = record
      reqType : TCARD8;
      pad : TBYTE;
      length : TCARD16;
      fid : TFont;
      format_mask : TfsBitmapFormatMask;
      format_hint : TfsBitmapFormat;
    end;

  PfsQueryXInfoReq = ^TfsQueryXInfoReq;
  TfsQueryXInfoReq = TfsResourceReq;


  PfsQueryXExtents8Req = ^TfsQueryXExtents8Req;
  TfsQueryXExtents8Req = record
      reqType : TCARD8;
      range : TBOOL;
      length : TCARD16;
      fid : TFont;
      num_ranges : TCARD32;
    end;

  PfsQueryXExtents16Req = ^TfsQueryXExtents16Req;
  TfsQueryXExtents16Req = TfsQueryXExtents8Req;


  PfsQueryXBitmaps8Req = ^TfsQueryXBitmaps8Req;
  TfsQueryXBitmaps8Req = record
      reqType : TCARD8;
      range : TBOOL;
      length : TCARD16;
      fid : TFont;
      format : TfsBitmapFormat;
      num_ranges : TCARD32;
    end;

  PfsQueryXBitmaps16Req = ^TfsQueryXBitmaps16Req;
  TfsQueryXBitmaps16Req = TfsQueryXBitmaps8Req;

  PfsCloseReq = ^TfsCloseReq;
  TfsCloseReq = TfsResourceReq;


  PfsGenericReply = ^TfsGenericReply;
  TfsGenericReply = record
      _type : TBYTE;
      data1 : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
    end;


  PfsListExtensionsReply = ^TfsListExtensionsReply;
  TfsListExtensionsReply = record
      _type : TBYTE;
      nExtensions : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
    end;

  PfsQueryExtensionReply = ^TfsQueryExtensionReply;
  TfsQueryExtensionReply = record
      _type : TBYTE;
      present : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      major_version : TCARD16;
      minor_version : TCARD16;
      major_opcode : TCARD8;
      first_event : TCARD8;
      num_events : TCARD8;
      first_error : TCARD8;
      num_errors : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD16;
    end;


  PfsListCataloguesReply = ^TfsListCataloguesReply;
  TfsListCataloguesReply = record
      _type : TBYTE;
      pad : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      num_replies : TCARD32;
      num_catalogues : TCARD32;
    end;


  PfsGetCataloguesReply = ^TfsGetCataloguesReply;
  TfsGetCataloguesReply = record
      _type : TBYTE;
      num_catalogues : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
    end;

  PfsGetEventMaskReply = ^TfsGetEventMaskReply;
  TfsGetEventMaskReply = record
      _type : TBYTE;
      pad1 : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      event_mask : TCARD32;
    end;


  PfsCreateACReply = ^TfsCreateACReply;
  TfsCreateACReply = record
      _type : TBYTE;
      auth_index : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      status : TCARD16;
      pad : TCARD16;
    end;


  PfsCreateACExtraReply = ^TfsCreateACExtraReply;
  TfsCreateACExtraReply = record
      length : TCARD32;
      status : TCARD16;
      pad : TCARD16;
    end;


  PfsGetResolutionReply = ^TfsGetResolutionReply;
  TfsGetResolutionReply = record
      _type : TBYTE;
      num_resolutions : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
    end;


  PfsListFontsReply = ^TfsListFontsReply;
  TfsListFontsReply = record
      _type : TBYTE;
      pad1 : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      following : TCARD32;
      nFonts : TCARD32;
    end;





  PfsListFontsWithXInfoReply = ^TfsListFontsWithXInfoReply;
  TfsListFontsWithXInfoReply = record
      _type : TBYTE;
      nameLength : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      nReplies : TCARD32;
      font_header_flags : TCARD32;
      font_hdr_char_range_min_char_high : TCARD8;
      font_hdr_char_range_min_char_low : TCARD8;
      font_hdr_char_range_max_char_high : TCARD8;
      font_hdr_char_range_max_char_low : TCARD8;
      font_header_draw_direction : TCARD8;
      font_header_pad : TCARD8;
      font_header_default_char_high : TCARD8;
      font_header_default_char_low : TCARD8;
      font_header_min_bounds_left : TINT16;
      font_header_min_bounds_right : TINT16;
      font_header_min_bounds_width : TINT16;
      font_header_min_bounds_ascent : TINT16;
      font_header_min_bounds_descent : TINT16;
      font_header_min_bounds_attributes : TCARD16;
      font_header_max_bounds_left : TINT16;
      font_header_max_bounds_right : TINT16;
      font_header_max_bounds_width : TINT16;
      font_header_max_bounds_ascent : TINT16;
      font_header_max_bounds_descent : TINT16;
      font_header_max_bounds_attributes : TCARD16;
      font_header_font_ascent : TINT16;
      font_header_font_descent : TINT16;
    end;

  PfsOpenBitmapFontReply = ^TfsOpenBitmapFontReply;
  TfsOpenBitmapFontReply = record
      _type : TBYTE;
      otherid_valid : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      otherid : TCARD32;
      cachable : TBYTE;
      pad1 : TBYTE;
      pad2 : TCARD16;
    end;


  PfsQueryXInfoReply = ^TfsQueryXInfoReply;
  TfsQueryXInfoReply = record
      _type : TBYTE;
      pad0 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      font_header_flags : TCARD32;
      font_hdr_char_range_min_char_high : TCARD8;
      font_hdr_char_range_min_char_low : TCARD8;
      font_hdr_char_range_max_char_high : TCARD8;
      font_hdr_char_range_max_char_low : TCARD8;
      font_header_draw_direction : TCARD8;
      font_header_pad : TCARD8;
      font_header_default_char_high : TCARD8;
      font_header_default_char_low : TCARD8;
      font_header_min_bounds_left : TINT16;
      font_header_min_bounds_right : TINT16;
      font_header_min_bounds_width : TINT16;
      font_header_min_bounds_ascent : TINT16;
      font_header_min_bounds_descent : TINT16;
      font_header_min_bounds_attributes : TCARD16;
      font_header_max_bounds_left : TINT16;
      font_header_max_bounds_right : TINT16;
      font_header_max_bounds_width : TINT16;
      font_header_max_bounds_ascent : TINT16;
      font_header_max_bounds_descent : TINT16;
      font_header_max_bounds_attributes : TCARD16;
      font_header_font_ascent : TINT16;
      font_header_font_descent : TINT16;
    end;


  PfsQueryXExtents8Reply = ^TfsQueryXExtents8Reply;
  TfsQueryXExtents8Reply = record
      _type : TBYTE;
      pad0 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      num_extents : TCARD32;
    end;

  PfsQueryXExtents16Reply = ^TfsQueryXExtents16Reply;
  TfsQueryXExtents16Reply = TfsQueryXExtents8Reply;



  PfsQueryXBitmaps8Reply = ^TfsQueryXBitmaps8Reply;
  TfsQueryXBitmaps8Reply = record
      _type : TBYTE;
      pad0 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      replies_hint : TCARD32;
      num_chars : TCARD32;
      nbytes : TCARD32;
    end;

  PfsQueryXBitmaps16Reply = ^TfsQueryXBitmaps16Reply;
  TfsQueryXBitmaps16Reply = TfsQueryXBitmaps8Reply;

  PfsReply = ^TfsReply;
  TfsReply = record
      case longint of
        0 : ( generic : TfsGenericReply );
        1 : ( extensions : TfsListExtensionsReply );
        2 : ( getres : TfsGetResolutionReply );
      end;


  PfsError = ^TfsError;
  TfsError = record
      _type : TBYTE;
      request : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      timestamp : TfsTimestamp;
      major_opcode : TCARD8;
      minor_opcode : TCARD8;
      pad : TCARD16;
    end;

  PfsRequestError = ^TfsRequestError;
  TfsRequestError = record
      _type : TBYTE;
      request : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      timestamp : TfsTimestamp;
      major_opcode : TCARD8;
      minor_opcode : TCARD8;
      pad : TCARD16;
    end;

  PfsFormatError = ^TfsFormatError;
  TfsFormatError = record
      _type : TBYTE;
      request : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      timestamp : TfsTimestamp;
      major_opcode : TCARD8;
      minor_opcode : TCARD8;
      pad : TCARD16;
      format : TfsBitmapFormat;
    end;

  PfsFontError = ^TfsFontError;
  TfsFontError = record
      _type : TBYTE;
      request : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      timestamp : TfsTimestamp;
      major_opcode : TCARD8;
      minor_opcode : TCARD8;
      pad : TCARD16;
      fontid : TFont;
    end;

  PfsRangeError = ^TfsRangeError;
  TfsRangeError = record
      _type : TBYTE;
      request : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      timestamp : TfsTimestamp;
      major_opcode : TCARD8;
      minor_opcode : TCARD8;
      pad : TCARD16;
      range : TfsRange;
    end;

  PfsEventMaskError = ^TfsEventMaskError;
  TfsEventMaskError = record
      _type : TBYTE;
      request : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      timestamp : TfsTimestamp;
      major_opcode : TCARD8;
      minor_opcode : TCARD8;
      pad : TCARD16;
      event_mask : TMask;
    end;

  PfsAccessContextError = ^TfsAccessContextError;
  TfsAccessContextError = record
      _type : TBYTE;
      request : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      timestamp : TfsTimestamp;
      major_opcode : TCARD8;
      minor_opcode : TCARD8;
      pad : TCARD16;
      acid : TAccContext;
    end;

  PfsIDChoiceError = ^TfsIDChoiceError;
  TfsIDChoiceError = record
      _type : TBYTE;
      request : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      timestamp : TfsTimestamp;
      major_opcode : TCARD8;
      minor_opcode : TCARD8;
      pad : TCARD16;
      fontid : TFont;
    end;

  PfsNameError = ^TfsNameError;
  TfsNameError = record
      _type : TBYTE;
      request : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      timestamp : TfsTimestamp;
      major_opcode : TCARD8;
      minor_opcode : TCARD8;
      pad : TCARD16;
    end;

  PfsResolutionError = ^TfsResolutionError;
  TfsResolutionError = record
      _type : TBYTE;
      request : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      timestamp : TfsTimestamp;
      major_opcode : TCARD8;
      minor_opcode : TCARD8;
      resolution : TfsResolution;
    end;

  PfsAllocError = ^TfsAllocError;
  TfsAllocError = record
      _type : TBYTE;
      request : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      timestamp : TfsTimestamp;
      major_opcode : TCARD8;
      minor_opcode : TCARD8;
      pad : TCARD16;
    end;

  PfsLengthError = ^TfsLengthError;
  TfsLengthError = record
      _type : TBYTE;
      request : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      timestamp : TfsTimestamp;
      major_opcode : TCARD8;
      minor_opcode : TCARD8;
      pad : TCARD16;
      bad_length : TCARD32;
    end;

  PfsImplementationError = ^TfsImplementationError;
  TfsImplementationError = record
      _type : TBYTE;
      request : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      timestamp : TfsTimestamp;
      major_opcode : TCARD8;
      minor_opcode : TCARD8;
      pad : TCARD16;
    end;


  PfsKeepAliveEvent = ^TfsKeepAliveEvent;
  TfsKeepAliveEvent = record
      _type : TBYTE;
      event_code : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      timestamp : TfsTimestamp;
    end;

  PfsCatalogueChangeNotifyEvent = ^TfsCatalogueChangeNotifyEvent;
  TfsCatalogueChangeNotifyEvent = record
      _type : TBYTE;
      event_code : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      timestamp : TfsTimestamp;
      added : TBOOL;
      deleted : TBOOL;
      pad : TCARD16;
    end;

  PfsFontChangeNotifyEvent = ^TfsFontChangeNotifyEvent;
  TfsFontChangeNotifyEvent = TfsCatalogueChangeNotifyEvent;

  PfsEvent = ^TfsEvent;
  TfsEvent = TfsCatalogueChangeNotifyEvent;



const
  FS_Reply = 0;  

  FS_Error = 1;  
  FS_Event = 2;  

  FS_Noop = 0;  
  FS_ListExtensions = 1;  
  FS_QueryExtension = 2;  
  FS_ListCatalogues = 3;  
  FS_SetCatalogues = 4;  
  FS_GetCatalogues = 5;  
  FS_SetEventMask = 6;  
  FS_GetEventMask = 7;  
  FS_CreateAC = 8;  
  FS_FreeAC = 9;  
  FS_SetAuthorization = 10;  
  FS_SetResolution = 11;  
  FS_GetResolution = 12;  
  FS_ListFonts = 13;  
  FS_ListFontsWithXInfo = 14;  
  FS_OpenBitmapFont = 15;  
  FS_QueryXInfo = 16;  
  FS_QueryXExtents8 = 17;  
  FS_QueryXExtents16 = 18;  
  FS_QueryXBitmaps8 = 19;  
  FS_QueryXBitmaps16 = 20;  
  FS_CloseFont = 21;  

{$undef	Mask}
{$undef	Font}
{$undef  AccContext}
{$endif}


implementation


end.
