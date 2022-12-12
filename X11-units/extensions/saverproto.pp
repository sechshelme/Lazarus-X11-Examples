
unit saverproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/saverproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/saverproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/saverproto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _SAVERPROTO_H_}
{$define _SAVERPROTO_H_}  
{$include <X11/extensions/saver.h>}

  const
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
    X_ScreenSaverQueryVersion = 0;    



  type
    _ScreenSaverQueryVersion = record
        reqType : CARD8;
        saverReqType : CARD8;
        length : CARD16;
        clientMajor : CARD8;
        clientMinor : CARD8;
        unused : CARD16;
      end;
    xScreenSaverQueryVersionReq = _ScreenSaverQueryVersion;

  const
    sz_xScreenSaverQueryVersionReq = 8;    





  type
    xScreenSaverQueryVersionReply = record
        _type : CARD8;
        unused : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        majorVersion : CARD16;
        minorVersion : CARD16;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
      end;

  const
    sz_xScreenSaverQueryVersionReply = 32;    
    X_ScreenSaverQueryInfo = 1;    



  type
    _ScreenSaverQueryInfo = record
        reqType : CARD8;
        saverReqType : CARD8;
        length : CARD16;
        drawable : Drawable;
      end;
    xScreenSaverQueryInfoReq = _ScreenSaverQueryInfo;

  const
    sz_xScreenSaverQueryInfoReq = 8;    




  type
    xScreenSaverQueryInfoReply = record
        _type : CARD8;
        state : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        window : Window;
        tilOrSince : CARD32;
        idle : CARD32;
        eventMask : CARD32;
        kind : BYTE;
        pad0 : CARD8;
        pad1 : CARD16;
        pad2 : CARD32;
      end;

  const
    sz_xScreenSaverQueryInfoReply = 32;    
    X_ScreenSaverSelectInput = 2;    



  type
    _ScreenSaverSelectInput = record
        reqType : CARD8;
        saverReqType : CARD8;
        length : CARD16;
        drawable : Drawable;
        eventMask : CARD32;
      end;
    xScreenSaverSelectInputReq = _ScreenSaverSelectInput;

  const
    sz_xScreenSaverSelectInputReq = 12;    
    X_ScreenSaverSetAttributes = 3;    



  type
    _ScreenSaverSetAttributes = record
        reqType : CARD8;
        saverReqType : CARD8;
        length : CARD16;
        drawable : Drawable;
        x : INT16;
        y : INT16;
        width : CARD16;
        height : CARD16;
        borderWidth : CARD16;
        c_class : BYTE;
        depth : CARD8;
        visualID : VisualID;
        mask : CARD32;
      end;
    xScreenSaverSetAttributesReq = _ScreenSaverSetAttributes;

  const
    sz_xScreenSaverSetAttributesReq = 28;    
    X_ScreenSaverUnsetAttributes = 4;    



  type
    _ScreenSaverUnsetAttributes = record
        reqType : CARD8;
        saverReqType : CARD8;
        length : CARD16;
        drawable : Drawable;
      end;
    xScreenSaverUnsetAttributesReq = _ScreenSaverUnsetAttributes;

  const
    sz_xScreenSaverUnsetAttributesReq = 8;    
    X_ScreenSaverSuspend = 5;    


  type
    _ScreenSaverSuspend = record
        reqType : CARD8;
        saverReqType : CARD8;
        length : CARD16;
        suspend : CARD32;
      end;
    xScreenSaverSuspendReq = _ScreenSaverSuspend;

  const
    sz_xScreenSaverSuspendReq = 8;    





  type
    _ScreenSaverNotify = record
        _type : CARD8;
        state : BYTE;
        sequenceNumber : CARD16;
        timestamp : Time;
        root : Window;
        window : Window;
        kind : BYTE;
        forced : BYTE;
        pad0 : CARD16;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
      end;
    xScreenSaverNotifyEvent = _ScreenSaverNotify;

  const
    sz_xScreenSaverNotifyEvent = 32;    
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
