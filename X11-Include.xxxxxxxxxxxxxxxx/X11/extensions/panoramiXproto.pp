
unit panoramiXproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/panoramiXproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/panoramiXproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/panoramiXproto.pp
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
PPanoramiXGetScreenCount  = ^PanoramiXGetScreenCount;
PPanoramiXGetScreenSize  = ^PanoramiXGetScreenSize;
PPanoramiXGetState  = ^PanoramiXGetState;
PPanoramiXQueryVersion  = ^PanoramiXQueryVersion;
PxPanoramiXGetScreenCountReply  = ^xPanoramiXGetScreenCountReply;
PxPanoramiXGetScreenCountReq  = ^xPanoramiXGetScreenCountReq;
PxPanoramiXGetScreenSizeReply  = ^xPanoramiXGetScreenSizeReply;
PxPanoramiXGetScreenSizeReq  = ^xPanoramiXGetScreenSizeReq;
PxPanoramiXGetStateReply  = ^xPanoramiXGetStateReply;
PxPanoramiXGetStateReq  = ^xPanoramiXGetStateReq;
PxPanoramiXQueryVersionReply  = ^xPanoramiXQueryVersionReply;
PxPanoramiXQueryVersionReq  = ^xPanoramiXQueryVersionReq;
PxXineramaIsActiveReply  = ^xXineramaIsActiveReply;
PxXineramaIsActiveReq  = ^xXineramaIsActiveReq;
PxXineramaQueryScreensReply  = ^xXineramaQueryScreensReply;
PxXineramaQueryScreensReq  = ^xXineramaQueryScreensReq;
PxXineramaScreenInfo  = ^xXineramaScreenInfo;
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
  PPanoramiXQueryVersion = ^TPanoramiXQueryVersion;
  TPanoramiXQueryVersion = record
      reqType : TCARD8;
      panoramiXReqType : TCARD8;
      length : TCARD16;
      clientMajor : TCARD8;
      clientMinor : TCARD8;
      unused : TCARD16;
    end;
  TxPanoramiXQueryVersionReq = TPanoramiXQueryVersion;
  PxPanoramiXQueryVersionReq = ^TxPanoramiXQueryVersionReq;

const
  sz_xPanoramiXQueryVersionReq = 8;  









type
  PxPanoramiXQueryVersionReply = ^TxPanoramiXQueryVersionReply;
  TxPanoramiXQueryVersionReply = record
      _type : TCARD8;
      pad1 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      majorVersion : TCARD16;
      minorVersion : TCARD16;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xPanoramiXQueryVersionReply = 32;  


type
  PPanoramiXGetState = ^TPanoramiXGetState;
  TPanoramiXGetState = record
      reqType : TCARD8;
      panoramiXReqType : TCARD8;
      length : TCARD16;
      window : TCARD32;
    end;
  TxPanoramiXGetStateReq = TPanoramiXGetState;
  PxPanoramiXGetStateReq = ^TxPanoramiXGetStateReq;

const
  sz_xPanoramiXGetStateReq = 8;  





type
  PxPanoramiXGetStateReply = ^TxPanoramiXGetStateReply;
  TxPanoramiXGetStateReply = record
      _type : TBYTE;
      state : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      window : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_panoramiXGetStateReply = 32;  


type
  PPanoramiXGetScreenCount = ^TPanoramiXGetScreenCount;
  TPanoramiXGetScreenCount = record
      reqType : TCARD8;
      panoramiXReqType : TCARD8;
      length : TCARD16;
      window : TCARD32;
    end;
  TxPanoramiXGetScreenCountReq = TPanoramiXGetScreenCount;
  PxPanoramiXGetScreenCountReq = ^TxPanoramiXGetScreenCountReq;

const
  sz_xPanoramiXGetScreenCountReq = 8;  





type
  PxPanoramiXGetScreenCountReply = ^TxPanoramiXGetScreenCountReply;
  TxPanoramiXGetScreenCountReply = record
      _type : TBYTE;
      ScreenCount : TBYTE;
      sequenceNumber : TCARD16;
      length : TCARD32;
      window : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_panoramiXGetScreenCountReply = 32;  


type
  PPanoramiXGetScreenSize = ^TPanoramiXGetScreenSize;
  TPanoramiXGetScreenSize = record
      reqType : TCARD8;
      panoramiXReqType : TCARD8;
      length : TCARD16;
      window : TCARD32;
      screen : TCARD32;
    end;
  TxPanoramiXGetScreenSizeReq = TPanoramiXGetScreenSize;
  PxPanoramiXGetScreenSizeReq = ^TxPanoramiXGetScreenSizeReq;

const
  sz_xPanoramiXGetScreenSizeReq = 12;  


type
  PxPanoramiXGetScreenSizeReply = ^TxPanoramiXGetScreenSizeReply;
  TxPanoramiXGetScreenSizeReply = record
      _type : TBYTE;
      pad1 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      width : TCARD32;
      height : TCARD32;
      window : TCARD32;
      screen : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
    end;

const
  sz_panoramiXGetScreenSizeReply = 32;  

type
  PxXineramaIsActiveReq = ^TxXineramaIsActiveReq;
  TxXineramaIsActiveReq = record
      reqType : TCARD8;
      panoramiXReqType : TCARD8;
      length : TCARD16;
    end;

const
  sz_xXineramaIsActiveReq = 4;  
type
  PxXineramaIsActiveReply = ^TxXineramaIsActiveReply;
  TxXineramaIsActiveReply = record
      _type : TBYTE;
      pad1 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      state : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_XineramaIsActiveReply = 32;  
type
  PxXineramaQueryScreensReq = ^TxXineramaQueryScreensReq;
  TxXineramaQueryScreensReq = record
      reqType : TCARD8;
      panoramiXReqType : TCARD8;
      length : TCARD16;
    end;

const
  sz_xXineramaQueryScreensReq = 4;  
type
  PxXineramaQueryScreensReply = ^TxXineramaQueryScreensReply;
  TxXineramaQueryScreensReply = record
      _type : TBYTE;
      pad1 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      number : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_XineramaQueryScreensReply = 32;  
type
  PxXineramaScreenInfo = ^TxXineramaScreenInfo;
  TxXineramaScreenInfo = record
      x_org : TINT16;
      y_org : TINT16;
      width : TCARD16;
      height : TCARD16;
    end;

const
  sz_XineramaScreenInfo = 8;  
{$endif}

implementation


end.
