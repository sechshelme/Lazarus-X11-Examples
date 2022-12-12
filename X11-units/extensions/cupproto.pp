
unit cupproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/cupproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/cupproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/cupproto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XCUPPROTO_H_ /* { */}
{$define _XCUPPROTO_H_}  
{$include <X11/extensions/cup.h>}

  const
    X_XcupQueryVersion = 0;    
    X_XcupGetReservedColormapEntries = 1;    
    X_XcupStoreColors = 2;    



  type
    _XcupQueryVersion = record
        reqType : CARD8;
        xcupReqType : CARD8;
        length : CARD16;
        client_major_version : CARD16;
        client_minor_version : CARD16;
      end;
    xXcupQueryVersionReq = _XcupQueryVersion;

  const
    sz_xXcupQueryVersionReq = 8;    


  type
    xXcupQueryVersionReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequence_number : CARD16;
        length : CARD32;
        server_major_version : CARD16;
        server_minor_version : CARD16;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xXcupQueryVersionReply = 32;    



  type
    _XcupGetReservedColormapEntries = record
        reqType : CARD8;
        xcupReqType : CARD8;
        length : CARD16;
        screen : CARD32;
      end;
    xXcupGetReservedColormapEntriesReq = _XcupGetReservedColormapEntries;

  const
    sz_xXcupGetReservedColormapEntriesReq = 8;    


  type
    xXcupGetReservedColormapEntriesReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequence_number : CARD16;
        length : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
        pad7 : CARD32;
      end;

  const
    sz_xXcupGetReservedColormapEntriesReply = 32;    



  type
    _XcupStoreColors = record
        reqType : CARD8;
        xcupReqType : CARD8;
        length : CARD16;
        cmap : CARD32;
      end;
    xXcupStoreColorsReq = _XcupStoreColors;

  const
    sz_xXcupStoreColorsReq = 8;    


  type
    xXcupStoreColorsReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequence_number : CARD16;
        length : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
        pad7 : CARD32;
      end;

  const
    sz_xXcupStoreColorsReply = 32;    
{$endif}


implementation


end.
