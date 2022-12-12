
unit FSproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/fonts/FSproto.h
  The following command line parameters were used:
    /usr/include/X11/fonts/FSproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/fonts/FSproto.pp
}

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
    fsTimestamp = CARD32;
{$ifdef NOTDEF /* in fsmasks.h */}

    fsBitmapFormat = CARD32;

    fsBitmapFormatMask = CARD32;
{$endif}

  const
    sz_fsBitmapFormat = 4;    

  type
    fsXCharInfo = record
        left : INT16;
        right : INT16;
        width : INT16;
        ascent : INT16;
        descent : INT16;
        attributes : CARD16;
      end;

    fsChar2b = record
        high : CARD8;
        low : CARD8;
      end;

    fsChar2b_version1 = record
        low : CARD8;
        high : CARD8;
      end;

    fsRange = record
        min_char_high : CARD8;
        min_char_low : CARD8;
        max_char_high : CARD8;
        max_char_low : CARD8;
      end;

    fsOffset32 = record
        position : CARD32;
        length : CARD32;
      end;

    fsPropOffset = record
        name : fsOffset32;
        value : fsOffset32;
        _type : CARD8;
        pad0 : BYTE;
        pad1 : CARD16;
      end;



    fsPropInfo = record
        num_offsets : CARD32;
        data_len : CARD32;
      end;

    fsResolution = record
        x_resolution : CARD16;
        y_resolution : CARD16;
        point_size : CARD16;
      end;


    fsXFontInfoHeader = record
        flags : CARD32;
        char_range_min_char_high : CARD8;
        char_range_min_char_low : CARD8;
        char_range_max_char_high : CARD8;
        char_range_max_char_low : CARD8;
        draw_direction : CARD8;
        pad : CARD8;
        default_char_high : CARD8;
        default_char_low : CARD8;
        min_bounds_left : INT16;
        min_bounds_right : INT16;
        min_bounds_width : INT16;
        min_bounds_ascent : INT16;
        min_bounds_descent : INT16;
        min_bounds_attributes : CARD16;
        max_bounds_left : INT16;
        max_bounds_right : INT16;
        max_bounds_width : INT16;
        max_bounds_ascent : INT16;
        max_bounds_descent : INT16;
        max_bounds_attributes : CARD16;
        font_ascent : INT16;
        font_descent : INT16;
      end;



    fsConnClientPrefix = record
        byteOrder : BYTE;
        num_auths : CARD8;
        major_version : CARD16;
        minor_version : CARD16;
        auth_len : CARD16;
      end;



    fsConnSetup = record
        status : CARD16;
        major_version : CARD16;
        minor_version : CARD16;
        num_alternates : CARD8;
        auth_index : CARD8;
        alternate_len : CARD16;
        auth_len : CARD16;
      end;


    fsConnSetupExtra = record
        length : CARD32;
        status : CARD16;
        pad : CARD16;
      end;


    fsConnSetupAccept = record
        length : CARD32;
        max_request_len : CARD16;
        vendor_len : CARD16;
        release_number : CARD32;
      end;

    fsReq = record
        reqType : CARD8;
        data : CARD8;
        length : CARD16;
      end;



    fsFakeReq = record
        reqType : CARD8;
        data : CARD8;
        length : CARD16;
        pad : CARD32;
      end;

    fsResourceReq = record
        reqType : CARD8;
        pad : BYTE;
        length : CARD16;
        id : Font;
      end;

    fsNoopReq = fsReq;

    fsListExtensionsReq = fsReq;


    fsQueryExtensionReq = record
        reqType : CARD8;
        nbytes : BYTE;
        length : CARD16;
      end;


    fsListCataloguesReq = record
        reqType : CARD8;
        data : CARD8;
        length : CARD16;
        maxNames : CARD32;
        nbytes : CARD16;
        pad2 : CARD16;
      end;


    fsSetCataloguesReq = record
        reqType : CARD8;
        num_catalogues : BYTE;
        length : CARD16;
      end;

    fsGetCataloguesReq = fsReq;

    fsSetEventMaskReq = record
        reqType : CARD8;
        ext_opcode : CARD8;
        length : CARD16;
        event_mask : Mask;
      end;

    fsGetEventMaskReq = record
        reqType : CARD8;
        ext_opcode : CARD8;
        length : CARD16;
      end;


    fsCreateACReq = record
        reqType : CARD8;
        num_auths : BYTE;
        length : CARD16;
        acid : AccContext;
      end;

    fsFreeACReq = fsResourceReq;

    fsSetAuthorizationReq = fsResourceReq;


    fsSetResolutionReq = record
        reqType : CARD8;
        num_resolutions : BYTE;
        length : CARD16;
      end;

    fsGetResolutionReq = fsReq;


    fsListFontsReq = record
        reqType : CARD8;
        pad : BYTE;
        length : CARD16;
        maxNames : CARD32;
        nbytes : CARD16;
        pad2 : CARD16;
      end;

    fsListFontsWithXInfoReq = fsListFontsReq;


    fsOpenBitmapFontReq = record
        reqType : CARD8;
        pad : BYTE;
        length : CARD16;
        fid : Font;
        format_mask : fsBitmapFormatMask;
        format_hint : fsBitmapFormat;
      end;

    fsQueryXInfoReq = fsResourceReq;


    fsQueryXExtents8Req = record
        reqType : CARD8;
        range : BOOL;
        length : CARD16;
        fid : Font;
        num_ranges : CARD32;
      end;

    fsQueryXExtents16Req = fsQueryXExtents8Req;


    fsQueryXBitmaps8Req = record
        reqType : CARD8;
        range : BOOL;
        length : CARD16;
        fid : Font;
        format : fsBitmapFormat;
        num_ranges : CARD32;
      end;

    fsQueryXBitmaps16Req = fsQueryXBitmaps8Req;

    fsCloseReq = fsResourceReq;


    fsGenericReply = record
        _type : BYTE;
        data1 : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
      end;


    fsListExtensionsReply = record
        _type : BYTE;
        nExtensions : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
      end;

    fsQueryExtensionReply = record
        _type : BYTE;
        present : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        major_version : CARD16;
        minor_version : CARD16;
        major_opcode : CARD8;
        first_event : CARD8;
        num_events : CARD8;
        first_error : CARD8;
        num_errors : CARD8;
        pad1 : CARD8;
        pad2 : CARD16;
      end;


    fsListCataloguesReply = record
        _type : BYTE;
        pad : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        num_replies : CARD32;
        num_catalogues : CARD32;
      end;


    fsGetCataloguesReply = record
        _type : BYTE;
        num_catalogues : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
      end;

    fsGetEventMaskReply = record
        _type : BYTE;
        pad1 : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        event_mask : CARD32;
      end;


    fsCreateACReply = record
        _type : BYTE;
        auth_index : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        status : CARD16;
        pad : CARD16;
      end;


    fsCreateACExtraReply = record
        length : CARD32;
        status : CARD16;
        pad : CARD16;
      end;


    fsGetResolutionReply = record
        _type : BYTE;
        num_resolutions : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
      end;


    fsListFontsReply = record
        _type : BYTE;
        pad1 : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        following : CARD32;
        nFonts : CARD32;
      end;





    fsListFontsWithXInfoReply = record
        _type : BYTE;
        nameLength : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        nReplies : CARD32;
        font_header_flags : CARD32;
        font_hdr_char_range_min_char_high : CARD8;
        font_hdr_char_range_min_char_low : CARD8;
        font_hdr_char_range_max_char_high : CARD8;
        font_hdr_char_range_max_char_low : CARD8;
        font_header_draw_direction : CARD8;
        font_header_pad : CARD8;
        font_header_default_char_high : CARD8;
        font_header_default_char_low : CARD8;
        font_header_min_bounds_left : INT16;
        font_header_min_bounds_right : INT16;
        font_header_min_bounds_width : INT16;
        font_header_min_bounds_ascent : INT16;
        font_header_min_bounds_descent : INT16;
        font_header_min_bounds_attributes : CARD16;
        font_header_max_bounds_left : INT16;
        font_header_max_bounds_right : INT16;
        font_header_max_bounds_width : INT16;
        font_header_max_bounds_ascent : INT16;
        font_header_max_bounds_descent : INT16;
        font_header_max_bounds_attributes : CARD16;
        font_header_font_ascent : INT16;
        font_header_font_descent : INT16;
      end;

    fsOpenBitmapFontReply = record
        _type : BYTE;
        otherid_valid : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        otherid : CARD32;
        cachable : BYTE;
        pad1 : BYTE;
        pad2 : CARD16;
      end;


    fsQueryXInfoReply = record
        _type : BYTE;
        pad0 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        font_header_flags : CARD32;
        font_hdr_char_range_min_char_high : CARD8;
        font_hdr_char_range_min_char_low : CARD8;
        font_hdr_char_range_max_char_high : CARD8;
        font_hdr_char_range_max_char_low : CARD8;
        font_header_draw_direction : CARD8;
        font_header_pad : CARD8;
        font_header_default_char_high : CARD8;
        font_header_default_char_low : CARD8;
        font_header_min_bounds_left : INT16;
        font_header_min_bounds_right : INT16;
        font_header_min_bounds_width : INT16;
        font_header_min_bounds_ascent : INT16;
        font_header_min_bounds_descent : INT16;
        font_header_min_bounds_attributes : CARD16;
        font_header_max_bounds_left : INT16;
        font_header_max_bounds_right : INT16;
        font_header_max_bounds_width : INT16;
        font_header_max_bounds_ascent : INT16;
        font_header_max_bounds_descent : INT16;
        font_header_max_bounds_attributes : CARD16;
        font_header_font_ascent : INT16;
        font_header_font_descent : INT16;
      end;


    fsQueryXExtents8Reply = record
        _type : BYTE;
        pad0 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        num_extents : CARD32;
      end;

    fsQueryXExtents16Reply = fsQueryXExtents8Reply;



    fsQueryXBitmaps8Reply = record
        _type : BYTE;
        pad0 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        replies_hint : CARD32;
        num_chars : CARD32;
        nbytes : CARD32;
      end;

    fsQueryXBitmaps16Reply = fsQueryXBitmaps8Reply;

    fsReply = record
        case longint of
          0 : ( generic : fsGenericReply );
          1 : ( extensions : fsListExtensionsReply );
          2 : ( getres : fsGetResolutionReply );
        end;


    fsError = record
        _type : BYTE;
        request : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        timestamp : fsTimestamp;
        major_opcode : CARD8;
        minor_opcode : CARD8;
        pad : CARD16;
      end;

    fsRequestError = record
        _type : BYTE;
        request : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        timestamp : fsTimestamp;
        major_opcode : CARD8;
        minor_opcode : CARD8;
        pad : CARD16;
      end;

    fsFormatError = record
        _type : BYTE;
        request : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        timestamp : fsTimestamp;
        major_opcode : CARD8;
        minor_opcode : CARD8;
        pad : CARD16;
        format : fsBitmapFormat;
      end;

    fsFontError = record
        _type : BYTE;
        request : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        timestamp : fsTimestamp;
        major_opcode : CARD8;
        minor_opcode : CARD8;
        pad : CARD16;
        fontid : Font;
      end;

    fsRangeError = record
        _type : BYTE;
        request : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        timestamp : fsTimestamp;
        major_opcode : CARD8;
        minor_opcode : CARD8;
        pad : CARD16;
        range : fsRange;
      end;

    fsEventMaskError = record
        _type : BYTE;
        request : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        timestamp : fsTimestamp;
        major_opcode : CARD8;
        minor_opcode : CARD8;
        pad : CARD16;
        event_mask : Mask;
      end;

    fsAccessContextError = record
        _type : BYTE;
        request : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        timestamp : fsTimestamp;
        major_opcode : CARD8;
        minor_opcode : CARD8;
        pad : CARD16;
        acid : AccContext;
      end;

    fsIDChoiceError = record
        _type : BYTE;
        request : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        timestamp : fsTimestamp;
        major_opcode : CARD8;
        minor_opcode : CARD8;
        pad : CARD16;
        fontid : Font;
      end;

    fsNameError = record
        _type : BYTE;
        request : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        timestamp : fsTimestamp;
        major_opcode : CARD8;
        minor_opcode : CARD8;
        pad : CARD16;
      end;

    fsResolutionError = record
        _type : BYTE;
        request : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        timestamp : fsTimestamp;
        major_opcode : CARD8;
        minor_opcode : CARD8;
        resolution : fsResolution;
      end;

    fsAllocError = record
        _type : BYTE;
        request : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        timestamp : fsTimestamp;
        major_opcode : CARD8;
        minor_opcode : CARD8;
        pad : CARD16;
      end;

    fsLengthError = record
        _type : BYTE;
        request : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        timestamp : fsTimestamp;
        major_opcode : CARD8;
        minor_opcode : CARD8;
        pad : CARD16;
        bad_length : CARD32;
      end;

    fsImplementationError = record
        _type : BYTE;
        request : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        timestamp : fsTimestamp;
        major_opcode : CARD8;
        minor_opcode : CARD8;
        pad : CARD16;
      end;


    fsKeepAliveEvent = record
        _type : BYTE;
        event_code : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        timestamp : fsTimestamp;
      end;

    fsCatalogueChangeNotifyEvent = record
        _type : BYTE;
        event_code : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        timestamp : fsTimestamp;
        added : BOOL;
        deleted : BOOL;
        pad : CARD16;
      end;

    fsFontChangeNotifyEvent = fsCatalogueChangeNotifyEvent;

    fsEvent = fsCatalogueChangeNotifyEvent;



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
