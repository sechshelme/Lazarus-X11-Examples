
unit dmxproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/dmxproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/dmxproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/dmxproto.pp
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
PxDMXAddInputReply  = ^xDMXAddInputReply;
PxDMXAddInputReq  = ^xDMXAddInputReq;
PxDMXAddScreenReply  = ^xDMXAddScreenReply;
PxDMXAddScreenReq  = ^xDMXAddScreenReq;
PxDMXChangeDesktopAttributesReply  = ^xDMXChangeDesktopAttributesReply;
PxDMXChangeDesktopAttributesReq  = ^xDMXChangeDesktopAttributesReq;
PxDMXChangeScreensAttributesReply  = ^xDMXChangeScreensAttributesReply;
PxDMXChangeScreensAttributesReq  = ^xDMXChangeScreensAttributesReq;
PxDMXForceWindowCreationReply  = ^xDMXForceWindowCreationReply;
PxDMXForceWindowCreationReq  = ^xDMXForceWindowCreationReq;
PxDMXGetDesktopAttributesReply  = ^xDMXGetDesktopAttributesReply;
PxDMXGetDesktopAttributesReq  = ^xDMXGetDesktopAttributesReq;
PxDMXGetInputAttributesReply  = ^xDMXGetInputAttributesReply;
PxDMXGetInputAttributesReq  = ^xDMXGetInputAttributesReq;
PxDMXGetInputCountReply  = ^xDMXGetInputCountReply;
PxDMXGetInputCountReq  = ^xDMXGetInputCountReq;
PxDMXGetScreenAttributesReply  = ^xDMXGetScreenAttributesReply;
PxDMXGetScreenAttributesReq  = ^xDMXGetScreenAttributesReq;
PxDMXGetScreenCountReply  = ^xDMXGetScreenCountReply;
PxDMXGetScreenCountReq  = ^xDMXGetScreenCountReq;
PxDMXGetWindowAttributesReply  = ^xDMXGetWindowAttributesReply;
PxDMXGetWindowAttributesReq  = ^xDMXGetWindowAttributesReq;
PxDMXQueryVersionReply  = ^xDMXQueryVersionReply;
PxDMXQueryVersionReq  = ^xDMXQueryVersionReq;
PxDMXRemoveInputReply  = ^xDMXRemoveInputReply;
PxDMXRemoveInputReq  = ^xDMXRemoveInputReq;
PxDMXRemoveScreenReply  = ^xDMXRemoveScreenReply;
PxDMXRemoveScreenReq  = ^xDMXRemoveScreenReq;
PxDMXSyncReply  = ^xDMXSyncReply;
PxDMXSyncReq  = ^xDMXSyncReq;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _DMXSTR_H_}
{$define _DMXSTR_H_}

const
  DMX_EXTENSION_NAME = 'DMX';  
  DMX_EXTENSION_MAJOR = 2;  
  DMX_EXTENSION_MINOR = 2;  
  DMX_EXTENSION_PATCH = 20040604;  

  DMX_BAD_XINERAMA = 1001;  
  DMX_BAD_VALUE = 1002;  
  X_DMXQueryVersion = 0;  
  X_DMXGetScreenCount = 1;  
  X_DMXGetScreenInformationDEPRECATED = 2;  
  X_DMXGetWindowAttributes = 3;  
  X_DMXGetInputCount = 4;  
  X_DMXGetInputAttributes = 5;  
  X_DMXForceWindowCreationDEPRECATED = 6;  
  X_DMXReconfigureScreenDEPRECATED = 7;  
  X_DMXSync = 8;  
  X_DMXForceWindowCreation = 9;  
  X_DMXGetScreenAttributes = 10;  
  X_DMXChangeScreensAttributes = 11;  
  X_DMXAddScreen = 12;  
  X_DMXRemoveScreen = 13;  
  X_DMXGetDesktopAttributes = 14;  
  X_DMXChangeDesktopAttributes = 15;  
  X_DMXAddInput = 16;  
  X_DMXRemoveInput = 17;  



type
  PxDMXQueryVersionReq = ^TxDMXQueryVersionReq;
  TxDMXQueryVersionReq = record
      reqType : TCARD8;
      dmxReqType : TCARD8;
      length : TCARD16;
    end;

const
  sz_xDMXQueryVersionReq = 4;  


type
  PxDMXQueryVersionReply = ^TxDMXQueryVersionReply;
  TxDMXQueryVersionReply = record
      _type : TBYTE;
      ununsed : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      majorVersion : TCARD32;
      minorVersion : TCARD32;
      patchVersion : TCARD32;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
    end;

const
  sz_xDMXQueryVersionReply = 32;  



type
  PxDMXSyncReq = ^TxDMXSyncReq;
  TxDMXSyncReq = record
      reqType : TCARD8;
      dmxReqType : TCARD8;
      length : TCARD16;
    end;

const
  sz_xDMXSyncReq = 4;  


type
  PxDMXSyncReply = ^TxDMXSyncReply;
  TxDMXSyncReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      status : TCARD32;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xDMXSyncReply = 32;  



type
  PxDMXForceWindowCreationReq = ^TxDMXForceWindowCreationReq;
  TxDMXForceWindowCreationReq = record
      reqType : TCARD8;
      dmxReqType : TCARD8;
      length : TCARD16;
      window : TCARD32;
    end;

const
  sz_xDMXForceWindowCreationReq = 8;  


type
  PxDMXForceWindowCreationReply = ^TxDMXForceWindowCreationReply;
  TxDMXForceWindowCreationReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      status : TCARD32;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xDMXForceWindowCreationReply = 32;  



type
  PxDMXGetScreenCountReq = ^TxDMXGetScreenCountReq;
  TxDMXGetScreenCountReq = record
      reqType : TCARD8;
      dmxReqType : TCARD8;
      length : TCARD16;
    end;

const
  sz_xDMXGetScreenCountReq = 4;  


type
  PxDMXGetScreenCountReply = ^TxDMXGetScreenCountReply;
  TxDMXGetScreenCountReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      screenCount : TCARD32;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xDMXGetScreenCountReply = 32;  



type
  PxDMXGetScreenAttributesReq = ^TxDMXGetScreenAttributesReq;
  TxDMXGetScreenAttributesReq = record
      reqType : TCARD8;
      dmxReqType : TCARD8;
      length : TCARD16;
      physicalScreen : TCARD32;
    end;

const
  sz_xDMXGetScreenAttributesReq = 8;  


type
  PxDMXGetScreenAttributesReply = ^TxDMXGetScreenAttributesReply;
  TxDMXGetScreenAttributesReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      displayNameLength : TCARD32;
      logicalScreen : TCARD32;
      screenWindowWidth : TCARD16;
      screenWindowHeight : TCARD16;
      screenWindowXoffset : TINT16;
      screenWindowYoffset : TINT16;
      rootWindowWidth : TCARD16;
      rootWindowHeight : TCARD16;
      rootWindowXoffset : TINT16;
      rootWindowYoffset : TINT16;
      rootWindowXorigin : TINT16;
      rootWindowYorigin : TINT16;
    end;

const
  sz_xDMXGetScreenAttributesReply = 36;  



type
  PxDMXChangeScreensAttributesReq = ^TxDMXChangeScreensAttributesReq;
  TxDMXChangeScreensAttributesReq = record
      reqType : TCARD8;
      dmxReqType : TCARD8;
      length : TCARD16;
      screenCount : TCARD32;
      maskCount : TCARD32;
    end;

const
  sz_xDMXChangeScreensAttributesReq = 12;  


type
  PxDMXChangeScreensAttributesReply = ^TxDMXChangeScreensAttributesReply;
  TxDMXChangeScreensAttributesReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      status : TCARD32;
      errorScreen : TCARD32;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
    end;

const
  sz_xDMXChangeScreensAttributesReply = 32;  



type
  PxDMXAddScreenReq = ^TxDMXAddScreenReq;
  TxDMXAddScreenReq = record
      reqType : TCARD8;
      dmxReqType : TCARD8;
      length : TCARD16;
      displayNameLength : TCARD32;
      physicalScreen : TCARD32;
      valueMask : TCARD32;
    end;

const
  sz_xDMXAddScreenReq = 16;  


type
  PxDMXAddScreenReply = ^TxDMXAddScreenReply;
  TxDMXAddScreenReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      status : TCARD32;
      physicalScreen : TCARD32;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
    end;

const
  sz_xDMXAddScreenReply = 32;  



type
  PxDMXRemoveScreenReq = ^TxDMXRemoveScreenReq;
  TxDMXRemoveScreenReq = record
      reqType : TCARD8;
      dmxReqType : TCARD8;
      length : TCARD16;
      physicalScreen : TCARD32;
    end;

const
  sz_xDMXRemoveScreenReq = 8;  


type
  PxDMXRemoveScreenReply = ^TxDMXRemoveScreenReply;
  TxDMXRemoveScreenReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      status : TCARD32;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xDMXRemoveScreenReply = 32;  



type
  PxDMXGetWindowAttributesReq = ^TxDMXGetWindowAttributesReq;
  TxDMXGetWindowAttributesReq = record
      reqType : TCARD8;
      dmxReqType : TCARD8;
      length : TCARD16;
      window : TCARD32;
    end;

const
  sz_xDMXGetWindowAttributesReq = 8;  


type
  PxDMXGetWindowAttributesReply = ^TxDMXGetWindowAttributesReply;
  TxDMXGetWindowAttributesReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      screenCount : TCARD32;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xDMXGetWindowAttributesReply = 32;  



type
  PxDMXGetDesktopAttributesReq = ^TxDMXGetDesktopAttributesReq;
  TxDMXGetDesktopAttributesReq = record
      reqType : TCARD8;
      dmxReqType : TCARD8;
      length : TCARD16;
    end;

const
  sz_xDMXGetDesktopAttributesReq = 4;  


type
  PxDMXGetDesktopAttributesReply = ^TxDMXGetDesktopAttributesReply;
  TxDMXGetDesktopAttributesReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      width : TINT16;
      height : TINT16;
      shiftX : TINT16;
      shiftY : TINT16;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
    end;

const
  sz_xDMXGetDesktopAttributesReply = 32;  



type
  PxDMXChangeDesktopAttributesReq = ^TxDMXChangeDesktopAttributesReq;
  TxDMXChangeDesktopAttributesReq = record
      reqType : TCARD8;
      dmxReqType : TCARD8;
      length : TCARD16;
      valueMask : TCARD32;
    end;

const
  sz_xDMXChangeDesktopAttributesReq = 8;  


type
  PxDMXChangeDesktopAttributesReply = ^TxDMXChangeDesktopAttributesReply;
  TxDMXChangeDesktopAttributesReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      status : TCARD32;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xDMXChangeDesktopAttributesReply = 32;  



type
  PxDMXGetInputCountReq = ^TxDMXGetInputCountReq;
  TxDMXGetInputCountReq = record
      reqType : TCARD8;
      dmxReqType : TCARD8;
      length : TCARD16;
    end;

const
  sz_xDMXGetInputCountReq = 4;  


type
  PxDMXGetInputCountReply = ^TxDMXGetInputCountReply;
  TxDMXGetInputCountReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      inputCount : TCARD32;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xDMXGetInputCountReply = 32;  



type
  PxDMXGetInputAttributesReq = ^TxDMXGetInputAttributesReq;
  TxDMXGetInputAttributesReq = record
      reqType : TCARD8;
      dmxReqType : TCARD8;
      length : TCARD16;
      deviceId : TCARD32;
    end;

const
  sz_xDMXGetInputAttributesReq = 8;  


type
  PxDMXGetInputAttributesReply = ^TxDMXGetInputAttributesReply;
  TxDMXGetInputAttributesReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      inputType : TCARD32;
      physicalScreen : TCARD32;
      physicalId : TCARD32;
      nameLength : TCARD32;
      isCore : TBOOL;
      sendsCore : TBOOL;
      detached : TBOOL;
      pad0 : TCARD8;
      pad1 : TCARD32;
    end;

const
  sz_xDMXGetInputAttributesReply = 32;  



type
  PxDMXAddInputReq = ^TxDMXAddInputReq;
  TxDMXAddInputReq = record
      reqType : TCARD8;
      dmxReqType : TCARD8;
      length : TCARD16;
      displayNameLength : TCARD32;
      valueMask : TCARD32;
    end;

const
  sz_xDMXAddInputReq = 12;  


type
  PxDMXAddInputReply = ^TxDMXAddInputReply;
  TxDMXAddInputReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      status : TCARD32;
      physicalId : TCARD32;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
    end;

const
  sz_xDMXAddInputReply = 32;  



type
  PxDMXRemoveInputReq = ^TxDMXRemoveInputReq;
  TxDMXRemoveInputReq = record
      reqType : TCARD8;
      dmxReqType : TCARD8;
      length : TCARD16;
      physicalId : TCARD32;
    end;

const
  sz_xDMXRemoveInputReq = 8;  

type
  PxDMXRemoveInputReply = ^TxDMXRemoveInputReply;
  TxDMXRemoveInputReply = record
      _type : TBYTE;
      unused : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      status : TCARD32;
      pad0 : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xDMXRemoveInputReply = 32;  
{$endif}

implementation


end.
