
unit panoramiXproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/panoramiXproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/panoramiXproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/panoramiXproto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _PANORAMIXPROTO_H_}
{$define _PANORAMIXPROTO_H_}  


  const
    PANORAMIX_MAJOR_VERSION = 1;    
    PANORAMIX_MINOR_VERSION = 1;    
    PANORAMIX_PROTOCOL_NAME = 'XINERAMA';    
    X_PanoramiXQueryVersion = 0;    
    X_PanoramiXGetState = 1;    
    X_PanoramiXGetScreenCount = 2;    
    X_PanoramiXGetScreenSize = 3;    
    X_XineramaIsActive = 4;    
    X_XineramaQueryScreens = 5;    



  type
    _PanoramiXQueryVersion = record
        reqType : CARD8;
        panoramiXReqType : CARD8;
        length : CARD16;
        clientMajor : CARD8;
        clientMinor : CARD8;
        unused : CARD16;
      end;
    xPanoramiXQueryVersionReq = _PanoramiXQueryVersion;

  const
    sz_xPanoramiXQueryVersionReq = 8;    










  type
    xPanoramiXQueryVersionReply = record
        _type : CARD8;
        pad1 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        majorVersion : CARD16;
        minorVersion : CARD16;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xPanoramiXQueryVersionReply = 32;    



  type
    _PanoramiXGetState = record
        reqType : CARD8;
        panoramiXReqType : CARD8;
        length : CARD16;
        window : CARD32;
      end;
    xPanoramiXGetStateReq = _PanoramiXGetState;

  const
    sz_xPanoramiXGetStateReq = 8;    






  type
    xPanoramiXGetStateReply = record
        _type : BYTE;
        state : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        window : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_panoramiXGetStateReply = 32;    



  type
    _PanoramiXGetScreenCount = record
        reqType : CARD8;
        panoramiXReqType : CARD8;
        length : CARD16;
        window : CARD32;
      end;
    xPanoramiXGetScreenCountReq = _PanoramiXGetScreenCount;

  const
    sz_xPanoramiXGetScreenCountReq = 8;    






  type
    xPanoramiXGetScreenCountReply = record
        _type : BYTE;
        ScreenCount : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        window : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_panoramiXGetScreenCountReply = 32;    



  type
    _PanoramiXGetScreenSize = record
        reqType : CARD8;
        panoramiXReqType : CARD8;
        length : CARD16;
        window : CARD32;
        screen : CARD32;
      end;
    xPanoramiXGetScreenSizeReq = _PanoramiXGetScreenSize;

  const
    sz_xPanoramiXGetScreenSizeReq = 12;    



  type
    xPanoramiXGetScreenSizeReply = record
        _type : BYTE;
        pad1 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        width : CARD32;
        height : CARD32;
        window : CARD32;
        screen : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
      end;

  const
    sz_panoramiXGetScreenSizeReply = 32;    


  type
    xXineramaIsActiveReq = record
        reqType : CARD8;
        panoramiXReqType : CARD8;
        length : CARD16;
      end;

  const
    sz_xXineramaIsActiveReq = 4;    

  type
    xXineramaIsActiveReply = record
        _type : BYTE;
        pad1 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        state : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_XineramaIsActiveReply = 32;    

  type
    xXineramaQueryScreensReq = record
        reqType : CARD8;
        panoramiXReqType : CARD8;
        length : CARD16;
      end;

  const
    sz_xXineramaQueryScreensReq = 4;    

  type
    xXineramaQueryScreensReply = record
        _type : BYTE;
        pad1 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        number : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_XineramaQueryScreensReply = 32;    

  type
    xXineramaScreenInfo = record
        x_org : INT16;
        y_org : INT16;
        width : CARD16;
        height : CARD16;
      end;

  const
    sz_XineramaScreenInfo = 8;    
{$endif}

implementation


end.
