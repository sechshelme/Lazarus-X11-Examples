
unit applewmproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/applewmproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/applewmproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/applewmproto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _APPLEWMPROTO_H_}
{$define _APPLEWMPROTO_H_}  
{$include <X11/extensions/applewmconst.h>}
{$include <X11/X.h>}
{$include <X11/Xmd.h>}

  const
    APPLEWMNAME = 'Apple-WM';    

    APPLE_WM_MAJOR_VERSION = 1;    
    APPLE_WM_MINOR_VERSION = 3;    
    APPLE_WM_PATCH_VERSION = 0;    
    X_AppleWMQueryVersion = 0;    
    X_AppleWMFrameGetRect = 1;    
    X_AppleWMFrameHitTest = 2;    
    X_AppleWMFrameDraw = 3;    
    X_AppleWMDisableUpdate = 4;    
    X_AppleWMReenableUpdate = 5;    
    X_AppleWMSelectInput = 6;    
    X_AppleWMSetWindowMenuCheck = 7;    
    X_AppleWMSetFrontProcess = 8;    
    X_AppleWMSetWindowLevel = 9;    
    X_AppleWMSetCanQuit = 10;    
    X_AppleWMSetWindowMenu = 11;    
    X_AppleWMSendPSN = 12;    
    X_AppleWMAttachTransient = 13;    

    Window = CARD32;    
    Drawable = CARD32;    
    Font = CARD32;    
    Pixmap = CARD32;    
    Cursor = CARD32;    
    Colormap = CARD32;    
    GContext = CARD32;    
    Atom = CARD32;    
    VisualID = CARD32;    
    Time = CARD32;    
    KeyCode = CARD8;    
    KeySym = CARD32;    



  type
    _AppleWMQueryVersion = record
        reqType : CARD8;
        wmReqType : CARD8;
        length : CARD16;
      end;
    xAppleWMQueryVersionReq = _AppleWMQueryVersion;

  const
    sz_xAppleWMQueryVersionReq = 4;    





  type
    xAppleWMQueryVersionReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        majorVersion : CARD16;
        minorVersion : CARD16;
        patchVersion : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xAppleWMQueryVersionReply = 32;    



  type
    _AppleWMDisableUpdate = record
        reqType : CARD8;
        wmReqType : CARD8;
        length : CARD16;
        screen : CARD32;
      end;
    xAppleWMDisableUpdateReq = _AppleWMDisableUpdate;

  const
    sz_xAppleWMDisableUpdateReq = 8;    



  type
    _AppleWMReenableUpdate = record
        reqType : CARD8;
        wmReqType : CARD8;
        length : CARD16;
        screen : CARD32;
      end;
    xAppleWMReenableUpdateReq = _AppleWMReenableUpdate;

  const
    sz_xAppleWMReenableUpdateReq = 8;    



  type
    _AppleWMSelectInput = record
        reqType : CARD8;
        wmReqType : CARD8;
        length : CARD16;
        mask : CARD32;
      end;
    xAppleWMSelectInputReq = _AppleWMSelectInput;

  const
    sz_xAppleWMSelectInputReq = 8;    



  type
    _AppleWMNotify = record
        _type : BYTE;
        kind : BYTE;
        sequenceNumber : CARD16;
        time : Time;
        pad1 : CARD16;
        arg : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;
    xAppleWMNotifyEvent = _AppleWMNotify;

  const
    sz_xAppleWMNotifyEvent = 32;    



  type
    _AppleWMSetWindowMenu = record
        reqType : CARD8;
        wmReqType : CARD8;
        length : CARD16;
        nitems : CARD16;
        pad1 : CARD16;
      end;
    xAppleWMSetWindowMenuReq = _AppleWMSetWindowMenu;

  const
    sz_xAppleWMSetWindowMenuReq = 8;    



  type
    _AppleWMSetWindowMenuCheck = record
        reqType : CARD8;
        wmReqType : CARD8;
        length : CARD16;
        index : CARD32;
      end;
    xAppleWMSetWindowMenuCheckReq = _AppleWMSetWindowMenuCheck;

  const
    sz_xAppleWMSetWindowMenuCheckReq = 8;    



  type
    _AppleWMSetFrontProcess = record
        reqType : CARD8;
        wmReqType : CARD8;
        length : CARD16;
      end;
    xAppleWMSetFrontProcessReq = _AppleWMSetFrontProcess;

  const
    sz_xAppleWMSetFrontProcessReq = 4;    



  type
    _AppleWMSetWindowLevel = record
        reqType : CARD8;
        wmReqType : CARD8;
        length : CARD16;
        window : CARD32;
        level : CARD32;
      end;
    xAppleWMSetWindowLevelReq = _AppleWMSetWindowLevel;

  const
    sz_xAppleWMSetWindowLevelReq = 12;    



  type
    _AppleWMSendPSN = record
        reqType : CARD8;
        wmReqType : CARD8;
        length : CARD16;
        psn_hi : CARD32;
        psn_lo : CARD32;
      end;
    xAppleWMSendPSNReq = _AppleWMSendPSN;

  const
    sz_xAppleWMSendPSNReq = 12;    



  type
    _AppleWMAttachTransient = record
        reqType : CARD8;
        wmReqType : CARD8;
        length : CARD16;
        child : CARD32;
        parent : CARD32;
      end;
    xAppleWMAttachTransientReq = _AppleWMAttachTransient;

  const
    sz_xAppleWMAttachTransientReq = 12;    



  type
    _AppleWMSetCanQuit = record
        reqType : CARD8;
        wmReqType : CARD8;
        length : CARD16;
        state : CARD32;
      end;
    xAppleWMSetCanQuitReq = _AppleWMSetCanQuit;

  const
    sz_xAppleWMSetCanQuitReq = 8;    



  type
    _AppleWMFrameGetRect = record
        reqType : CARD8;
        wmReqType : CARD8;
        length : CARD16;
        frame_class : CARD16;
        frame_rect : CARD16;
        ix : CARD16;
        iy : CARD16;
        iw : CARD16;
        ih : CARD16;
        ox : CARD16;
        oy : CARD16;
        ow : CARD16;
        oh : CARD16;
      end;
    xAppleWMFrameGetRectReq = _AppleWMFrameGetRect;

  const
    sz_xAppleWMFrameGetRectReq = 24;    


  type
    xAppleWMFrameGetRectReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        x : CARD16;
        y : CARD16;
        w : CARD16;
        h : CARD16;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xAppleWMFrameGetRectReply = 32;    



  type
    _AppleWMFrameHitTest = record
        reqType : CARD8;
        wmReqType : CARD8;
        length : CARD16;
        frame_class : CARD16;
        pad1 : CARD16;
        px : CARD16;
        py : CARD16;
        ix : CARD16;
        iy : CARD16;
        iw : CARD16;
        ih : CARD16;
        ox : CARD16;
        oy : CARD16;
        ow : CARD16;
        oh : CARD16;
      end;
    xAppleWMFrameHitTestReq = _AppleWMFrameHitTest;

  const
    sz_xAppleWMFrameHitTestReq = 28;    


  type
    xAppleWMFrameHitTestReply = record
        _type : BYTE;
        pad1 : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        ret : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xAppleWMFrameHitTestReply = 32;    



  type
    _AppleWMFrameDraw = record
        reqType : CARD8;
        wmReqType : CARD8;
        length : CARD16;
        screen : CARD32;
        window : CARD32;
        frame_class : CARD16;
        frame_attr : CARD16;
        ix : CARD16;
        iy : CARD16;
        iw : CARD16;
        ih : CARD16;
        ox : CARD16;
        oy : CARD16;
        ow : CARD16;
        oh : CARD16;
        title_length : CARD32;
      end;
    xAppleWMFrameDrawReq = _AppleWMFrameDraw;

  const
    sz_xAppleWMFrameDrawReq = 36;    

{$undef Window}
{$undef Drawable}
{$undef Font}
{$undef Pixmap}
{$undef Cursor}
{$undef Colormap}
{$undef GContext}
{$undef Atom}
{$undef VisualID}
{$undef Time}
{$undef KeyCode}
{$undef KeySym}
{$endif}


implementation


end.
