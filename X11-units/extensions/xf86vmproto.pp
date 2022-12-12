
unit xf86vmproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/xf86vmproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/xf86vmproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/xf86vmproto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XF86VIDMODEPROTO_H_}
{$define _XF86VIDMODEPROTO_H_}  
{$include <X11/extensions/xf86vm.h>}

  const
    XF86VIDMODENAME = 'XFree86-VidModeExtension';    

    XF86VIDMODE_MAJOR_VERSION = 2;    
    XF86VIDMODE_MINOR_VERSION = 2;    
    X_XF86VidModeQueryVersion = 0;    
    X_XF86VidModeGetModeLine = 1;    
    X_XF86VidModeModModeLine = 2;    
    X_XF86VidModeSwitchMode = 3;    
    X_XF86VidModeGetMonitor = 4;    
    X_XF86VidModeLockModeSwitch = 5;    
    X_XF86VidModeGetAllModeLines = 6;    
    X_XF86VidModeAddModeLine = 7;    
    X_XF86VidModeDeleteModeLine = 8;    
    X_XF86VidModeValidateModeLine = 9;    
    X_XF86VidModeSwitchToMode = 10;    
    X_XF86VidModeGetViewPort = 11;    
    X_XF86VidModeSetViewPort = 12;    

    X_XF86VidModeGetDotClocks = 13;    
    X_XF86VidModeSetClientVersion = 14;    
    X_XF86VidModeSetGamma = 15;    
    X_XF86VidModeGetGamma = 16;    
    X_XF86VidModeGetGammaRamp = 17;    
    X_XF86VidModeSetGammaRamp = 18;    
    X_XF86VidModeGetGammaRampSize = 19;    
    X_XF86VidModeGetPermissions = 20;    




  type
    _XF86VidModeQueryVersion = record
        reqType : CARD8;
        xf86vidmodeReqType : CARD8;
        length : CARD16;
      end;
    xXF86VidModeQueryVersionReq = _XF86VidModeQueryVersion;

  const
    sz_xXF86VidModeQueryVersionReq = 4;    




  type
    xXF86VidModeQueryVersionReply = record
        _type : BYTE;
        pad1 : BOOL;
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
    sz_xXF86VidModeQueryVersionReply = 32;    


  type
    _XF86VidModeGetModeLine = record
        reqType : CARD8;
        xf86vidmodeReqType : CARD8;
        length : CARD16;
        screen : CARD16;
        pad : CARD16;
      end;
    xXF86VidModeGetModeLineReq = _XF86VidModeGetModeLine;
    xXF86VidModeGetAllModeLinesReq = _XF86VidModeGetModeLine;
    xXF86VidModeGetMonitorReq = _XF86VidModeGetModeLine;
    xXF86VidModeGetViewPortReq = _XF86VidModeGetModeLine;
    xXF86VidModeGetDotClocksReq = _XF86VidModeGetModeLine;
    xXF86VidModeGetPermissionsReq = _XF86VidModeGetModeLine;

  const
    sz_xXF86VidModeGetModeLineReq = 8;    
    sz_xXF86VidModeGetAllModeLinesReq = 8;    
    sz_xXF86VidModeGetMonitorReq = 8;    
    sz_xXF86VidModeGetViewPortReq = 8;    
    sz_xXF86VidModeGetDotClocksReq = 8;    
    sz_xXF86VidModeGetPermissionsReq = 8;    


  type
    xXF86VidModeGetModeLineReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        dotclock : CARD32;
        hdisplay : CARD16;
        hsyncstart : CARD16;
        hsyncend : CARD16;
        htotal : CARD16;
        hskew : CARD16;
        vdisplay : CARD16;
        vsyncstart : CARD16;
        vsyncend : CARD16;
        vtotal : CARD16;
        pad2 : CARD16;
        flags : CARD32;
        reserved1 : CARD32;
        reserved2 : CARD32;
        reserved3 : CARD32;
        privsize : CARD32;
      end;

  const
    sz_xXF86VidModeGetModeLineReply = 52;    



  type
    xXF86OldVidModeGetModeLineReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        dotclock : CARD32;
        hdisplay : CARD16;
        hsyncstart : CARD16;
        hsyncend : CARD16;
        htotal : CARD16;
        vdisplay : CARD16;
        vsyncstart : CARD16;
        vsyncend : CARD16;
        vtotal : CARD16;
        flags : CARD32;
        privsize : CARD32;
      end;

  const
    sz_xXF86OldVidModeGetModeLineReply = 36;    

  type
    xXF86VidModeModeInfo = record
        dotclock : CARD32;
        hdisplay : CARD16;
        hsyncstart : CARD16;
        hsyncend : CARD16;
        htotal : CARD16;
        hskew : CARD32;
        vdisplay : CARD16;
        vsyncstart : CARD16;
        vsyncend : CARD16;
        vtotal : CARD16;
        pad1 : CARD16;
        flags : CARD32;
        reserved1 : CARD32;
        reserved2 : CARD32;
        reserved3 : CARD32;
        privsize : CARD32;
      end;


    xXF86OldVidModeModeInfo = record
        dotclock : CARD32;
        hdisplay : CARD16;
        hsyncstart : CARD16;
        hsyncend : CARD16;
        htotal : CARD16;
        vdisplay : CARD16;
        vsyncstart : CARD16;
        vsyncend : CARD16;
        vtotal : CARD16;
        flags : CARD32;
        privsize : CARD32;
      end;


    xXF86VidModeGetAllModeLinesReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        modecount : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xXF86VidModeGetAllModeLinesReply = 32;    




  type
    _XF86VidModeAddModeLine = record
        reqType : CARD8;
        xf86vidmodeReqType : CARD8;
        length : CARD16;
        screen : CARD32;
        dotclock : CARD32;
        hdisplay : CARD16;
        hsyncstart : CARD16;
        hsyncend : CARD16;
        htotal : CARD16;
        hskew : CARD16;
        vdisplay : CARD16;
        vsyncstart : CARD16;
        vsyncend : CARD16;
        vtotal : CARD16;
        pad1 : CARD16;
        flags : CARD32;
        reserved1 : CARD32;
        reserved2 : CARD32;
        reserved3 : CARD32;
        privsize : CARD32;
        after_dotclock : CARD32;
        after_hdisplay : CARD16;
        after_hsyncstart : CARD16;
        after_hsyncend : CARD16;
        after_htotal : CARD16;
        after_hskew : CARD16;
        after_vdisplay : CARD16;
        after_vsyncstart : CARD16;
        after_vsyncend : CARD16;
        after_vtotal : CARD16;
        pad2 : CARD16;
        after_flags : CARD32;
        reserved4 : CARD32;
        reserved5 : CARD32;
        reserved6 : CARD32;
      end;
    xXF86VidModeAddModeLineReq = _XF86VidModeAddModeLine;

  const
    sz_xXF86VidModeAddModeLineReq = 92;    





  type
    _XF86OldVidModeAddModeLine = record
        reqType : CARD8;
        xf86vidmodeReqType : CARD8;
        length : CARD16;
        screen : CARD32;
        dotclock : CARD32;
        hdisplay : CARD16;
        hsyncstart : CARD16;
        hsyncend : CARD16;
        htotal : CARD16;
        vdisplay : CARD16;
        vsyncstart : CARD16;
        vsyncend : CARD16;
        vtotal : CARD16;
        flags : CARD32;
        privsize : CARD32;
        after_dotclock : CARD32;
        after_hdisplay : CARD16;
        after_hsyncstart : CARD16;
        after_hsyncend : CARD16;
        after_htotal : CARD16;
        after_vdisplay : CARD16;
        after_vsyncstart : CARD16;
        after_vsyncend : CARD16;
        after_vtotal : CARD16;
        after_flags : CARD32;
      end;
    xXF86OldVidModeAddModeLineReq = _XF86OldVidModeAddModeLine;

  const
    sz_xXF86OldVidModeAddModeLineReq = 60;    




  type
    _XF86VidModeModModeLine = record
        reqType : CARD8;
        xf86vidmodeReqType : CARD8;
        length : CARD16;
        screen : CARD32;
        hdisplay : CARD16;
        hsyncstart : CARD16;
        hsyncend : CARD16;
        htotal : CARD16;
        hskew : CARD16;
        vdisplay : CARD16;
        vsyncstart : CARD16;
        vsyncend : CARD16;
        vtotal : CARD16;
        pad1 : CARD16;
        flags : CARD32;
        reserved1 : CARD32;
        reserved2 : CARD32;
        reserved3 : CARD32;
        privsize : CARD32;
      end;
    xXF86VidModeModModeLineReq = _XF86VidModeModModeLine;

  const
    sz_xXF86VidModeModModeLineReq = 48;    





  type
    _XF86OldVidModeModModeLine = record
        reqType : CARD8;
        xf86vidmodeReqType : CARD8;
        length : CARD16;
        screen : CARD32;
        hdisplay : CARD16;
        hsyncstart : CARD16;
        hsyncend : CARD16;
        htotal : CARD16;
        vdisplay : CARD16;
        vsyncstart : CARD16;
        vsyncend : CARD16;
        vtotal : CARD16;
        flags : CARD32;
        privsize : CARD32;
      end;
    xXF86OldVidModeModModeLineReq = _XF86OldVidModeModModeLine;

  const
    sz_xXF86OldVidModeModModeLineReq = 32;    



  type
    _XF86VidModeValidateModeLine = record
        reqType : CARD8;
        xf86vidmodeReqType : CARD8;
        length : CARD16;
        screen : CARD32;
        dotclock : CARD32;
        hdisplay : CARD16;
        hsyncstart : CARD16;
        hsyncend : CARD16;
        htotal : CARD16;
        hskew : CARD16;
        vdisplay : CARD16;
        vsyncstart : CARD16;
        vsyncend : CARD16;
        vtotal : CARD16;
        pad1 : CARD16;
        flags : CARD32;
        reserved1 : CARD32;
        reserved2 : CARD32;
        reserved3 : CARD32;
        privsize : CARD32;
      end;
    xXF86VidModeDeleteModeLineReq = _XF86VidModeValidateModeLine;
    xXF86VidModeValidateModeLineReq = _XF86VidModeValidateModeLine;
    xXF86VidModeSwitchToModeReq = _XF86VidModeValidateModeLine;

  const
    sz_xXF86VidModeDeleteModeLineReq = 52;    
    sz_xXF86VidModeValidateModeLineReq = 52;    
    sz_xXF86VidModeSwitchToModeReq = 52;    




  type
    _XF86OldVidModeValidateModeLine = record
        reqType : CARD8;
        xf86vidmodeReqType : CARD8;
        length : CARD16;
        screen : CARD32;
        dotclock : CARD32;
        hdisplay : CARD16;
        hsyncstart : CARD16;
        hsyncend : CARD16;
        htotal : CARD16;
        vdisplay : CARD16;
        vsyncstart : CARD16;
        vsyncend : CARD16;
        vtotal : CARD16;
        flags : CARD32;
        privsize : CARD32;
      end;
    xXF86OldVidModeDeleteModeLineReq = _XF86OldVidModeValidateModeLine;
    xXF86OldVidModeValidateModeLineReq = _XF86OldVidModeValidateModeLine;
    xXF86OldVidModeSwitchToModeReq = _XF86OldVidModeValidateModeLine;

  const
    sz_xXF86OldVidModeDeleteModeLineReq = 36;    
    sz_xXF86OldVidModeValidateModeLineReq = 36;    
    sz_xXF86OldVidModeSwitchToModeReq = 36;    



  type
    _XF86VidModeSwitchMode = record
        reqType : CARD8;
        xf86vidmodeReqType : CARD8;
        length : CARD16;
        screen : CARD16;
        zoom : CARD16;
      end;
    xXF86VidModeSwitchModeReq = _XF86VidModeSwitchMode;

  const
    sz_xXF86VidModeSwitchModeReq = 8;    



  type
    _XF86VidModeLockModeSwitch = record
        reqType : CARD8;
        xf86vidmodeReqType : CARD8;
        length : CARD16;
        screen : CARD16;
        lock : CARD16;
      end;
    xXF86VidModeLockModeSwitchReq = _XF86VidModeLockModeSwitch;

  const
    sz_xXF86VidModeLockModeSwitchReq = 8;    


  type
    xXF86VidModeValidateModeLineReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        status : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xXF86VidModeValidateModeLineReply = 32;    


  type
    xXF86VidModeGetMonitorReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        vendorLength : CARD8;
        modelLength : CARD8;
        nhsync : CARD8;
        nvsync : CARD8;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xXF86VidModeGetMonitorReply = 32;    

  type
    xXF86VidModeGetViewPortReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        x : CARD32;
        y : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xXF86VidModeGetViewPortReply = 32;    



  type
    _XF86VidModeSetViewPort = record
        reqType : CARD8;
        xf86vidmodeReqType : CARD8;
        length : CARD16;
        screen : CARD16;
        pad : CARD16;
        x : CARD32;
        y : CARD32;
      end;
    xXF86VidModeSetViewPortReq = _XF86VidModeSetViewPort;

  const
    sz_xXF86VidModeSetViewPortReq = 16;    

  type
    xXF86VidModeGetDotClocksReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        flags : CARD32;
        clocks : CARD32;
        maxclocks : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;

  const
    sz_xXF86VidModeGetDotClocksReply = 32;    


  type
    _XF86VidModeSetClientVersion = record
        reqType : CARD8;
        xf86vidmodeReqType : CARD8;
        length : CARD16;
        major : CARD16;
        minor : CARD16;
      end;
    xXF86VidModeSetClientVersionReq = _XF86VidModeSetClientVersion;

  const
    sz_xXF86VidModeSetClientVersionReq = 8;    


  type
    _XF86VidModeGetGamma = record
        reqType : CARD8;
        xf86vidmodeReqType : CARD8;
        length : CARD16;
        screen : CARD16;
        pad : CARD16;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;
    xXF86VidModeGetGammaReq = _XF86VidModeGetGamma;

  const
    sz_xXF86VidModeGetGammaReq = 32;    

  type
    xXF86VidModeGetGammaReply = record
        _type : BYTE;
        pad : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        red : CARD32;
        green : CARD32;
        blue : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
      end;

  const
    sz_xXF86VidModeGetGammaReply = 32;    


  type
    _XF86VidModeSetGamma = record
        reqType : CARD8;
        xf86vidmodeReqType : CARD8;
        length : CARD16;
        screen : CARD16;
        pad : CARD16;
        red : CARD32;
        green : CARD32;
        blue : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
      end;
    xXF86VidModeSetGammaReq = _XF86VidModeSetGamma;

  const
    sz_xXF86VidModeSetGammaReq = 32;    


  type
    _XF86VidModeSetGammaRamp = record
        reqType : CARD8;
        xf86vidmodeReqType : CARD8;
        length : CARD16;
        screen : CARD16;
        size : CARD16;
      end;
    xXF86VidModeSetGammaRampReq = _XF86VidModeSetGammaRamp;

  const
    sz_xXF86VidModeSetGammaRampReq = 8;    


  type
    _XF86VidModeGetGammaRamp = record
        reqType : CARD8;
        xf86vidmodeReqType : CARD8;
        length : CARD16;
        screen : CARD16;
        size : CARD16;
      end;
    xXF86VidModeGetGammaRampReq = _XF86VidModeGetGammaRamp;

  const
    sz_xXF86VidModeGetGammaRampReq = 8;    

  type
    xXF86VidModeGetGammaRampReply = record
        _type : BYTE;
        pad : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        size : CARD16;
        pad0 : CARD16;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xXF86VidModeGetGammaRampReply = 32;    


  type
    _XF86VidModeGetGammaRampSize = record
        reqType : CARD8;
        xf86vidmodeReqType : CARD8;
        length : CARD16;
        screen : CARD16;
        pad : CARD16;
      end;
    xXF86VidModeGetGammaRampSizeReq = _XF86VidModeGetGammaRampSize;

  const
    sz_xXF86VidModeGetGammaRampSizeReq = 8;    

  type
    xXF86VidModeGetGammaRampSizeReply = record
        _type : BYTE;
        pad : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        size : CARD16;
        pad0 : CARD16;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xXF86VidModeGetGammaRampSizeReply = 32;    

  type
    xXF86VidModeGetPermissionsReply = record
        _type : BYTE;
        pad : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        permissions : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xXF86VidModeGetPermissionsReply = 32;    
{$endif}


implementation


end.
