
unit presentproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/presentproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/presentproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/presentproto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _PRESENT_PROTO_H_}
{$define _PRESENT_PROTO_H_}  
{$include <X11/extensions/presenttokens.h>}

  const
    Window = CARD32;    
    Pixmap = CARD32;    
    Region = CARD32;    
    XSyncFence = CARD32;    
    EventID = CARD32;    

  type
    xPresentNotify = record
        window : Window;
        serial : CARD32;
      end;

  const
    sz_xPresentNotify = 8;    

  type
    xPresentQueryVersionReq = record
        reqType : CARD8;
        presentReqType : CARD8;
        length : CARD16;
        majorVersion : CARD32;
        minorVersion : CARD32;
      end;

  const
    sz_xPresentQueryVersionReq = 12;    


  type
    xPresentQueryVersionReply = record
        _type : BYTE;
        pad1 : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        majorVersion : CARD32;
        minorVersion : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xPresentQueryVersionReply = 32;    


  type
    xPresentPixmapReq = record
        reqType : CARD8;
        presentReqType : CARD8;
        length : CARD16;
        window : Window;
        pixmap : Pixmap;
        serial : CARD32;
        valid : Region;
        update : Region;
        x_off : INT16;
        y_off : INT16;
        target_crtc : CARD32;
        wait_fence : XSyncFence;
        idle_fence : XSyncFence;
        options : CARD32;
        pad1 : CARD32;
        target_msc : CARD64;
        divisor : CARD64;
        remainder : CARD64;
      end;

  const
    sz_xPresentPixmapReq = 72;    

  type
    xPresentNotifyMSCReq = record
        reqType : CARD8;
        presentReqType : CARD8;
        length : CARD16;
        window : Window;
        serial : CARD32;
        pad0 : CARD32;
        target_msc : CARD64;
        divisor : CARD64;
        remainder : CARD64;
      end;

  const
    sz_xPresentNotifyMSCReq = 40;    

  type
    xPresentSelectInputReq = record
        reqType : CARD8;
        presentReqType : CARD8;
        length : CARD16;
        eid : CARD32;
        window : CARD32;
        eventMask : CARD32;
      end;

  const
    sz_xPresentSelectInputReq = 16;    

  type
    xPresentQueryCapabilitiesReq = record
        reqType : CARD8;
        presentReqType : CARD8;
        length : CARD16;
        target : CARD32;
      end;

  const
    sz_xPresentQueryCapabilitiesReq = 8;    


  type
    xPresentQueryCapabilitiesReply = record
        _type : BYTE;
        pad1 : BYTE;
        sequenceNumber : CARD16;
        length : CARD32;
        capabilities : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
        pad7 : CARD32;
      end;

  const
    sz_xPresentQueryCapabilitiesReply = 32;    


  type
    xPresentConfigureNotify = record
        _type : CARD8;
        extension : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        evtype : CARD16;
        pad2 : CARD16;
        eid : CARD32;
        window : CARD32;
        x : INT16;
        y : INT16;
        width : CARD16;
        height : CARD16;
        off_x : INT16;
        off_y : INT16;
        pixmap_width : CARD16;
        pixmap_height : CARD16;
        pixmap_flags : CARD32;
      end;

  const
    sz_xPresentConfigureNotify = 40;    

  type
    xPresentCompleteNotify = record
        _type : CARD8;
        extension : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        evtype : CARD16;
        kind : CARD8;
        mode : CARD8;
        eid : CARD32;
        window : Window;
        serial : CARD32;
        ust : CARD64;
        msc : CARD64;
      end;

  const
    sz_xPresentCompleteNotify = 40;    

  type
    xPresentIdleNotify = record
        _type : CARD8;
        extension : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        evtype : CARD16;
        pad2 : CARD16;
        eid : CARD32;
        window : Window;
        serial : CARD32;
        pixmap : Pixmap;
        idle_fence : CARD32;
      end;

  const
    sz_xPresentIdleNotify = 32;    
{$if PRESENT_FUTURE_VERSION}


  type
    xPresentRedirectNotify = record
        _type : CARD8;
        extension : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        evtype : CARD16;
        update_window : CARD8;
        pad1 : CARD8;
        eid : CARD32;
        event_window : Window;
        window : Window;
        pixmap : Pixmap;
        serial : CARD32;
        valid_region : Region;
        update_region : Region;
        valid_rect : xRectangle;
        update_rect : xRectangle;
        x_off : INT16;
        y_off : INT16;
        target_crtc : CARD32;
        wait_fence : XSyncFence;
        idle_fence : XSyncFence;
        options : CARD32;
        pad2 : CARD32;
        target_msc : CARD64;
        divisor : CARD64;
        remainder : CARD64;
      end;

  const
    sz_xPresentRedirectNotify = 104;    
{$endif}
{$undef Window}
{$undef Pixmap}
{$undef Region}
{$undef XSyncFence}
{$undef EventID}
{$endif}

implementation


end.
