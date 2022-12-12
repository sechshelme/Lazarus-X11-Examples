
unit dmxproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/dmxproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/dmxproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/dmxproto.pp
}

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
    xDMXQueryVersionReq = record
        reqType : CARD8;
        dmxReqType : CARD8;
        length : CARD16;
      end;

  const
    sz_xDMXQueryVersionReq = 4;    



  type
    xDMXQueryVersionReply = record
        _type : BYTE;
        ununsed : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        majorVersion : CARD32;
        minorVersion : CARD32;
        patchVersion : CARD32;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
      end;

  const
    sz_xDMXQueryVersionReply = 32;    




  type
    xDMXSyncReq = record
        reqType : CARD8;
        dmxReqType : CARD8;
        length : CARD16;
      end;

  const
    sz_xDMXSyncReq = 4;    



  type
    xDMXSyncReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        status : CARD32;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;

  const
    sz_xDMXSyncReply = 32;    




  type
    xDMXForceWindowCreationReq = record
        reqType : CARD8;
        dmxReqType : CARD8;
        length : CARD16;
        window : CARD32;
      end;

  const
    sz_xDMXForceWindowCreationReq = 8;    



  type
    xDMXForceWindowCreationReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        status : CARD32;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;

  const
    sz_xDMXForceWindowCreationReply = 32;    




  type
    xDMXGetScreenCountReq = record
        reqType : CARD8;
        dmxReqType : CARD8;
        length : CARD16;
      end;

  const
    sz_xDMXGetScreenCountReq = 4;    



  type
    xDMXGetScreenCountReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        screenCount : CARD32;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;

  const
    sz_xDMXGetScreenCountReply = 32;    




  type
    xDMXGetScreenAttributesReq = record
        reqType : CARD8;
        dmxReqType : CARD8;
        length : CARD16;
        physicalScreen : CARD32;
      end;

  const
    sz_xDMXGetScreenAttributesReq = 8;    



  type
    xDMXGetScreenAttributesReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        displayNameLength : CARD32;
        logicalScreen : CARD32;
        screenWindowWidth : CARD16;
        screenWindowHeight : CARD16;
        screenWindowXoffset : INT16;
        screenWindowYoffset : INT16;
        rootWindowWidth : CARD16;
        rootWindowHeight : CARD16;
        rootWindowXoffset : INT16;
        rootWindowYoffset : INT16;
        rootWindowXorigin : INT16;
        rootWindowYorigin : INT16;
      end;

  const
    sz_xDMXGetScreenAttributesReply = 36;    




  type
    xDMXChangeScreensAttributesReq = record
        reqType : CARD8;
        dmxReqType : CARD8;
        length : CARD16;
        screenCount : CARD32;
        maskCount : CARD32;
      end;

  const
    sz_xDMXChangeScreensAttributesReq = 12;    



  type
    xDMXChangeScreensAttributesReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        status : CARD32;
        errorScreen : CARD32;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
      end;

  const
    sz_xDMXChangeScreensAttributesReply = 32;    




  type
    xDMXAddScreenReq = record
        reqType : CARD8;
        dmxReqType : CARD8;
        length : CARD16;
        displayNameLength : CARD32;
        physicalScreen : CARD32;
        valueMask : CARD32;
      end;

  const
    sz_xDMXAddScreenReq = 16;    



  type
    xDMXAddScreenReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        status : CARD32;
        physicalScreen : CARD32;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
      end;

  const
    sz_xDMXAddScreenReply = 32;    




  type
    xDMXRemoveScreenReq = record
        reqType : CARD8;
        dmxReqType : CARD8;
        length : CARD16;
        physicalScreen : CARD32;
      end;

  const
    sz_xDMXRemoveScreenReq = 8;    



  type
    xDMXRemoveScreenReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        status : CARD32;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;

  const
    sz_xDMXRemoveScreenReply = 32;    




  type
    xDMXGetWindowAttributesReq = record
        reqType : CARD8;
        dmxReqType : CARD8;
        length : CARD16;
        window : CARD32;
      end;

  const
    sz_xDMXGetWindowAttributesReq = 8;    



  type
    xDMXGetWindowAttributesReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        screenCount : CARD32;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;

  const
    sz_xDMXGetWindowAttributesReply = 32;    




  type
    xDMXGetDesktopAttributesReq = record
        reqType : CARD8;
        dmxReqType : CARD8;
        length : CARD16;
      end;

  const
    sz_xDMXGetDesktopAttributesReq = 4;    



  type
    xDMXGetDesktopAttributesReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        width : INT16;
        height : INT16;
        shiftX : INT16;
        shiftY : INT16;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
      end;

  const
    sz_xDMXGetDesktopAttributesReply = 32;    




  type
    xDMXChangeDesktopAttributesReq = record
        reqType : CARD8;
        dmxReqType : CARD8;
        length : CARD16;
        valueMask : CARD32;
      end;

  const
    sz_xDMXChangeDesktopAttributesReq = 8;    



  type
    xDMXChangeDesktopAttributesReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        status : CARD32;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;

  const
    sz_xDMXChangeDesktopAttributesReply = 32;    




  type
    xDMXGetInputCountReq = record
        reqType : CARD8;
        dmxReqType : CARD8;
        length : CARD16;
      end;

  const
    sz_xDMXGetInputCountReq = 4;    



  type
    xDMXGetInputCountReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        inputCount : CARD32;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;

  const
    sz_xDMXGetInputCountReply = 32;    




  type
    xDMXGetInputAttributesReq = record
        reqType : CARD8;
        dmxReqType : CARD8;
        length : CARD16;
        deviceId : CARD32;
      end;

  const
    sz_xDMXGetInputAttributesReq = 8;    



  type
    xDMXGetInputAttributesReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        inputType : CARD32;
        physicalScreen : CARD32;
        physicalId : CARD32;
        nameLength : CARD32;
        isCore : BOOL;
        sendsCore : BOOL;
        detached : BOOL;
        pad0 : CARD8;
        pad1 : CARD32;
      end;

  const
    sz_xDMXGetInputAttributesReply = 32;    




  type
    xDMXAddInputReq = record
        reqType : CARD8;
        dmxReqType : CARD8;
        length : CARD16;
        displayNameLength : CARD32;
        valueMask : CARD32;
      end;

  const
    sz_xDMXAddInputReq = 12;    



  type
    xDMXAddInputReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        status : CARD32;
        physicalId : CARD32;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
      end;

  const
    sz_xDMXAddInputReply = 32;    




  type
    xDMXRemoveInputReq = record
        reqType : CARD8;
        dmxReqType : CARD8;
        length : CARD16;
        physicalId : CARD32;
      end;

  const
    sz_xDMXRemoveInputReq = 8;    


  type
    xDMXRemoveInputReply = record
        _type : BYTE;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        status : CARD32;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;

  const
    sz_xDMXRemoveInputReply = 32;    
{$endif}

implementation


end.
