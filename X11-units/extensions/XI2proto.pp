
unit XI2proto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/XI2proto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/XI2proto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/XI2proto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _XI2PROTO_H_}
{$define _XI2PROTO_H_}  
{$include <X11/Xproto.h>}
{$include <X11/X.h>}
{$include <X11/extensions/XI2.h>}
{$include <stdint.h>}


  const
    Window = uint32_t;    
    Time = uint32_t;    
    Atom = uint32_t;    
    Cursor = uint32_t;    
    Barrier = uint32_t;    

    X_XIQueryPointer = 40;    
    X_XIWarpPointer = 41;    
    X_XIChangeCursor = 42;    
    X_XIChangeHierarchy = 43;    
    X_XISetClientPointer = 44;    
    X_XIGetClientPointer = 45;    
    X_XISelectEvents = 46;    
    X_XIQueryVersion = 47;    
    X_XIQueryDevice = 48;    
    X_XISetFocus = 49;    
    X_XIGetFocus = 50;    
    X_XIGrabDevice = 51;    
    X_XIUngrabDevice = 52;    
    X_XIAllowEvents = 53;    
    X_XIPassiveGrabDevice = 54;    
    X_XIPassiveUngrabDevice = 55;    
    X_XIListProperties = 56;    
    X_XIChangeProperty = 57;    
    X_XIDeleteProperty = 58;    
    X_XIGetProperty = 59;    
    X_XIGetSelectedEvents = 60;    
    X_XIBarrierReleasePointer = 61;    

    XI2REQUESTS = (X_XIBarrierReleasePointer-X_XIQueryPointer)+1;    

    XI2EVENTS = XI_LASTEVENT+1;    



  type
    FP1616 = int32_t;


    FP3232 = record
        integral : int32_t;
        frac : uint32_t;
      end;







    xXIDeviceInfo = record
        deviceid : uint16_t;
        use : uint16_t;
        attachment : uint16_t;
        num_classes : uint16_t;
        name_len : uint16_t;
        enabled : uint8_t;
        pad : uint8_t;
      end;





    xXIAnyInfo = record
        _type : uint16_t;
        length : uint16_t;
        sourceid : uint16_t;
        pad : uint16_t;
      end;






    xXIButtonInfo = record
        _type : uint16_t;
        length : uint16_t;
        sourceid : uint16_t;
        num_buttons : uint16_t;
      end;






    xXIKeyInfo = record
        _type : uint16_t;
        length : uint16_t;
        sourceid : uint16_t;
        num_keycodes : uint16_t;
      end;












    xXIValuatorInfo = record
        _type : uint16_t;
        length : uint16_t;
        sourceid : uint16_t;
        number : uint16_t;
        _label : Atom;
        min : FP3232;
        max : FP3232;
        value : FP3232;
        resolution : uint32_t;
        mode : uint8_t;
        pad1 : uint8_t;
        pad2 : uint16_t;
      end;









    xXIScrollInfo = record
        _type : uint16_t;
        length : uint16_t;
        sourceid : uint16_t;
        number : uint16_t;
        scroll_type : uint16_t;
        pad0 : uint16_t;
        flags : uint32_t;
        increment : FP3232;
      end;







    xXITouchInfo = record
        _type : uint16_t;
        length : uint16_t;
        sourceid : uint16_t;
        mode : uint8_t;
        num_touches : uint8_t;
      end;






    xXIGestureInfo = record
        _type : uint16_t;
        length : uint16_t;
        sourceid : uint16_t;
        num_touches : uint8_t;
        pad0 : uint8_t;
      end;




    xXIEventMask = record
        deviceid : uint16_t;
        mask_len : uint16_t;
      end;






    xXIModifierInfo = record
        base_mods : uint32_t;
        latched_mods : uint32_t;
        locked_mods : uint32_t;
        effective_mods : uint32_t;
      end;






    xXIGroupInfo = record
        base_group : uint8_t;
        latched_group : uint8_t;
        locked_group : uint8_t;
        effective_group : uint8_t;
      end;






    xXIQueryVersionReq = record
        reqType : uint8_t;
        ReqType : uint8_t;
        length : uint16_t;
        major_version : uint16_t;
        minor_version : uint16_t;
      end;

  const
    sz_xXIQueryVersionReq = 8;    



  type
    xXIQueryVersionReply = record
        repType : uint8_t;
        RepType : uint8_t;
        sequenceNumber : uint16_t;
        length : uint32_t;
        major_version : uint16_t;
        minor_version : uint16_t;
        pad1 : uint32_t;
        pad2 : uint32_t;
        pad3 : uint32_t;
        pad4 : uint32_t;
        pad5 : uint32_t;
      end;

  const
    sz_xXIQueryVersionReply = 32;    





  type
    xXIQueryDeviceReq = record
        reqType : uint8_t;
        ReqType : uint8_t;
        length : uint16_t;
        deviceid : uint16_t;
        pad : uint16_t;
      end;

  const
    sz_xXIQueryDeviceReq = 8;    



  type
    xXIQueryDeviceReply = record
        repType : uint8_t;
        RepType : uint8_t;
        sequenceNumber : uint16_t;
        length : uint32_t;
        num_devices : uint16_t;
        pad0 : uint16_t;
        pad1 : uint32_t;
        pad2 : uint32_t;
        pad3 : uint32_t;
        pad4 : uint32_t;
        pad5 : uint32_t;
      end;

  const
    sz_xXIQueryDeviceReply = 32;    





  type
    xXISelectEventsReq = record
        reqType : uint8_t;
        ReqType : uint8_t;
        length : uint16_t;
        win : Window;
        num_masks : uint16_t;
        pad : uint16_t;
      end;

  const
    sz_xXISelectEventsReq = 12;    





  type
    xXIGetSelectedEventsReq = record
        reqType : uint8_t;
        ReqType : uint8_t;
        length : uint16_t;
        win : Window;
      end;

  const
    sz_xXIGetSelectedEventsReq = 8;    




  type
    xXIGetSelectedEventsReply = record
        repType : uint8_t;
        RepType : uint8_t;
        sequenceNumber : uint16_t;
        length : uint32_t;
        num_masks : uint16_t;
        pad0 : uint16_t;
        pad1 : uint32_t;
        pad2 : uint32_t;
        pad3 : uint32_t;
        pad4 : uint32_t;
        pad5 : uint32_t;
      end;

  const
    sz_xXIGetSelectedEventsReply = 32;    





  type
    xXIQueryPointerReq = record
        reqType : uint8_t;
        ReqType : uint8_t;
        length : uint16_t;
        win : Window;
        deviceid : uint16_t;
        pad1 : uint16_t;
      end;

  const
    sz_xXIQueryPointerReq = 12;    



  type
    xXIQueryPointerReply = record
        repType : uint8_t;
        RepType : uint8_t;
        sequenceNumber : uint16_t;
        length : uint32_t;
        root : Window;
        child : Window;
        root_x : FP1616;
        root_y : FP1616;
        win_x : FP1616;
        win_y : FP1616;
        same_screen : uint8_t;
        pad0 : uint8_t;
        buttons_len : uint16_t;
        mods : xXIModifierInfo;
        group : xXIGroupInfo;
      end;

  const
    sz_xXIQueryPointerReply = 56;    





  type
    xXIWarpPointerReq = record
        reqType : uint8_t;
        ReqType : uint8_t;
        length : uint16_t;
        src_win : Window;
        dst_win : Window;
        src_x : FP1616;
        src_y : FP1616;
        src_width : uint16_t;
        src_height : uint16_t;
        dst_x : FP1616;
        dst_y : FP1616;
        deviceid : uint16_t;
        pad1 : uint16_t;
      end;

  const
    sz_xXIWarpPointerReq = 36;    





  type
    xXIChangeCursorReq = record
        reqType : uint8_t;
        ReqType : uint8_t;
        length : uint16_t;
        win : Window;
        cursor : Cursor;
        deviceid : uint16_t;
        pad1 : uint16_t;
      end;

  const
    sz_xXIChangeCursorReq = 16;    





  type
    xXIChangeHierarchyReq = record
        reqType : uint8_t;
        ReqType : uint8_t;
        length : uint16_t;
        num_changes : uint8_t;
        pad0 : uint8_t;
        pad1 : uint16_t;
      end;

  const
    sz_xXIChangeHierarchyReq = 8;    



  type
    xXIAnyHierarchyChangeInfo = record
        _type : uint16_t;
        length : uint16_t;
      end;




    xXIAddMasterInfo = record
        _type : uint16_t;
        length : uint16_t;
        name_len : uint16_t;
        send_core : uint8_t;
        enable : uint8_t;
      end;







    xXIRemoveMasterInfo = record
        _type : uint16_t;
        length : uint16_t;
        deviceid : uint16_t;
        return_mode : uint8_t;
        pad : uint8_t;
        return_pointer : uint16_t;
        return_keyboard : uint16_t;
      end;





    xXIAttachSlaveInfo = record
        _type : uint16_t;
        length : uint16_t;
        deviceid : uint16_t;
        new_master : uint16_t;
      end;




    xXIDetachSlaveInfo = record
        _type : uint16_t;
        length : uint16_t;
        deviceid : uint16_t;
        pad : uint16_t;
      end;




    xXISetClientPointerReq = record
        reqType : uint8_t;
        ReqType : uint8_t;
        length : uint16_t;
        win : Window;
        deviceid : uint16_t;
        pad1 : uint16_t;
      end;

  const
    sz_xXISetClientPointerReq = 12;    




  type
    xXIGetClientPointerReq = record
        reqType : uint8_t;
        ReqType : uint8_t;
        length : uint16_t;
        win : Window;
      end;

  const
    sz_xXIGetClientPointerReq = 8;    




  type
    xXIGetClientPointerReply = record
        repType : uint8_t;
        RepType : uint8_t;
        sequenceNumber : uint16_t;
        length : uint32_t;
        set : BOOL;
        pad0 : uint8_t;
        deviceid : uint16_t;
        pad1 : uint32_t;
        pad2 : uint32_t;
        pad3 : uint32_t;
        pad4 : uint32_t;
        pad5 : uint32_t;
      end;

  const
    sz_xXIGetClientPointerReply = 32;    




  type
    xXISetFocusReq = record
        reqType : uint8_t;
        ReqType : uint8_t;
        length : uint16_t;
        focus : Window;
        time : Time;
        deviceid : uint16_t;
        pad0 : uint16_t;
      end;

  const
    sz_xXISetFocusReq = 16;    




  type
    xXIGetFocusReq = record
        reqType : uint8_t;
        ReqType : uint8_t;
        length : uint16_t;
        deviceid : uint16_t;
        pad0 : uint16_t;
      end;

  const
    sz_xXIGetFocusReq = 8;    



  type
    xXIGetFocusReply = record
        repType : uint8_t;
        RepType : uint8_t;
        sequenceNumber : uint16_t;
        length : uint32_t;
        focus : Window;
        pad1 : uint32_t;
        pad2 : uint32_t;
        pad3 : uint32_t;
        pad4 : uint32_t;
        pad5 : uint32_t;
      end;

  const
    sz_xXIGetFocusReply = 32;    




  type
    xXIGrabDeviceReq = record
        reqType : uint8_t;
        ReqType : uint8_t;
        length : uint16_t;
        grab_window : Window;
        time : Time;
        cursor : Cursor;
        deviceid : uint16_t;
        grab_mode : uint8_t;
        paired_device_mode : uint8_t;
        owner_events : uint8_t;
        pad : uint8_t;
        mask_len : uint16_t;
      end;

  const
    sz_xXIGrabDeviceReq = 24;    




  type
    xXIGrabModifierInfo = record
        modifiers : uint32_t;
        status : uint8_t;
        pad0 : uint8_t;
        pad1 : uint16_t;
      end;



    xXIGrabDeviceReply = record
        repType : uint8_t;
        RepType : uint8_t;
        sequenceNumber : uint16_t;
        length : uint32_t;
        status : uint8_t;
        pad0 : uint8_t;
        pad1 : uint16_t;
        pad2 : uint32_t;
        pad3 : uint32_t;
        pad4 : uint32_t;
        pad5 : uint32_t;
        pad6 : uint32_t;
      end;

  const
    sz_xXIGrabDeviceReply = 32;    




  type
    xXIUngrabDeviceReq = record
        reqType : uint8_t;
        ReqType : uint8_t;
        length : uint16_t;
        time : Time;
        deviceid : uint16_t;
        pad : uint16_t;
      end;

  const
    sz_xXIUngrabDeviceReq = 12;    




  type
    xXIAllowEventsReq = record
        reqType : uint8_t;
        ReqType : uint8_t;
        length : uint16_t;
        time : Time;
        deviceid : uint16_t;
        mode : uint8_t;
        pad : uint8_t;
      end;

  const
    sz_xXIAllowEventsReq = 12;    






  type
    xXI2_2AllowEventsReq = record
        reqType : uint8_t;
        ReqType : uint8_t;
        length : uint16_t;
        time : Time;
        deviceid : uint16_t;
        mode : uint8_t;
        pad : uint8_t;
        touchid : uint32_t;
        grab_window : Window;
      end;

  const
    sz_xXI2_2AllowEventsReq = 20;    




  type
    xXIPassiveGrabDeviceReq = record
        reqType : uint8_t;
        ReqType : uint8_t;
        length : uint16_t;
        time : Time;
        grab_window : Window;
        cursor : Cursor;
        detail : uint32_t;
        deviceid : uint16_t;
        num_modifiers : uint16_t;
        mask_len : uint16_t;
        grab_type : uint8_t;
        grab_mode : uint8_t;
        paired_device_mode : uint8_t;
        owner_events : uint8_t;
        pad1 : uint16_t;
      end;

  const
    sz_xXIPassiveGrabDeviceReq = 32;    



  type
    xXIPassiveGrabDeviceReply = record
        repType : uint8_t;
        RepType : uint8_t;
        sequenceNumber : uint16_t;
        length : uint32_t;
        num_modifiers : uint16_t;
        pad1 : uint16_t;
        pad2 : uint32_t;
        pad3 : uint32_t;
        pad4 : uint32_t;
        pad5 : uint32_t;
        pad6 : uint32_t;
      end;

  const
    sz_xXIPassiveGrabDeviceReply = 32;    




  type
    xXIPassiveUngrabDeviceReq = record
        reqType : uint8_t;
        ReqType : uint8_t;
        length : uint16_t;
        grab_window : Window;
        detail : uint32_t;
        deviceid : uint16_t;
        num_modifiers : uint16_t;
        grab_type : uint8_t;
        pad0 : uint8_t;
        pad1 : uint16_t;
      end;

  const
    sz_xXIPassiveUngrabDeviceReq = 20;    




  type
    xXIListPropertiesReq = record
        reqType : uint8_t;
        ReqType : uint8_t;
        length : uint16_t;
        deviceid : uint16_t;
        pad : uint16_t;
      end;

  const
    sz_xXIListPropertiesReq = 8;    



  type
    xXIListPropertiesReply = record
        repType : uint8_t;
        RepType : uint8_t;
        sequenceNumber : uint16_t;
        length : uint32_t;
        num_properties : uint16_t;
        pad0 : uint16_t;
        pad1 : uint32_t;
        pad2 : uint32_t;
        pad3 : uint32_t;
        pad4 : uint32_t;
        pad5 : uint32_t;
      end;

  const
    sz_xXIListPropertiesReply = 32;    




  type
    xXIChangePropertyReq = record
        reqType : uint8_t;
        ReqType : uint8_t;
        length : uint16_t;
        deviceid : uint16_t;
        mode : uint8_t;
        format : uint8_t;
        _property : Atom;
        _type : Atom;
        num_items : uint32_t;
      end;

  const
    sz_xXIChangePropertyReq = 20;    




  type
    xXIDeletePropertyReq = record
        reqType : uint8_t;
        ReqType : uint8_t;
        length : uint16_t;
        deviceid : uint16_t;
        pad0 : uint16_t;
        _property : Atom;
      end;

  const
    sz_xXIDeletePropertyReq = 12;    



{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}

  type
    xXIGetPropertyReq = record
        reqType : uint8_t;
        ReqType : uint8_t;
        length : uint16_t;
        deviceid : uint16_t;
        c_delete : uint8_t;
        delete : uint8_t;
        pad0 : uint8_t;
        _property : Atom;
        _type : Atom;
        offset : uint32_t;
        len : uint32_t;
      end;

  const
    sz_xXIGetPropertyReq = 24;    



  type
    xXIGetPropertyReply = record
        repType : uint8_t;
        RepType : uint8_t;
        sequenceNumber : uint16_t;
        length : uint32_t;
        _type : Atom;
        bytes_after : uint32_t;
        num_items : uint32_t;
        format : uint8_t;
        pad0 : uint8_t;
        pad1 : uint16_t;
        pad2 : uint32_t;
        pad3 : uint32_t;
      end;

  const
    sz_xXIGetPropertyReply = 32;    

  type
    xXIBarrierReleasePointerInfo = record
        deviceid : uint16_t;
        pad : uint16_t;
        barrier : Barrier;
        eventid : uint32_t;
      end;




    xXIBarrierReleasePointerReq = record
        reqType : uint8_t;
        ReqType : uint8_t;
        length : uint16_t;
        num_barriers : uint32_t;
      end;

  const
    sz_xXIBarrierReleasePointerReq = 8;    




  type
    xXIGenericDeviceEvent = record
        _type : uint8_t;
        extension : uint8_t;
        sequenceNumber : uint16_t;
        length : uint32_t;
        evtype : uint16_t;
        deviceid : uint16_t;
        time : Time;
      end;






    xXIHierarchyInfo = record
        deviceid : uint16_t;
        attachment : uint16_t;
        use : uint8_t;
        enabled : BOOL;
        pad : uint16_t;
        flags : uint32_t;
      end;







    xXIHierarchyEvent = record
        _type : uint8_t;
        extension : uint8_t;
        sequenceNumber : uint16_t;
        length : uint32_t;
        evtype : uint16_t;
        deviceid : uint16_t;
        time : Time;
        flags : uint32_t;
        num_info : uint16_t;
        pad0 : uint16_t;
        pad1 : uint32_t;
        pad2 : uint32_t;
      end;










    xXIDeviceChangedEvent = record
        _type : uint8_t;
        extension : uint8_t;
        sequenceNumber : uint16_t;
        length : uint32_t;
        evtype : uint16_t;
        deviceid : uint16_t;
        time : Time;
        num_classes : uint16_t;
        sourceid : uint16_t;
        reason : uint8_t;
        pad0 : uint8_t;
        pad1 : uint16_t;
        pad2 : uint32_t;
        pad3 : uint32_t;
      end;








    xXITouchOwnershipEvent = record
        _type : uint8_t;
        extension : uint8_t;
        sequenceNumber : uint16_t;
        length : uint32_t;
        evtype : uint16_t;
        deviceid : uint16_t;
        time : Time;
        touchid : uint32_t;
        root : Window;
        event : Window;
        child : Window;
        sourceid : uint16_t;
        pad0 : uint16_t;
        flags : uint32_t;
        pad1 : uint32_t;
        pad2 : uint32_t;
      end;













    xXIDeviceEvent = record
        _type : uint8_t;
        extension : uint8_t;
        sequenceNumber : uint16_t;
        length : uint32_t;
        evtype : uint16_t;
        deviceid : uint16_t;
        time : Time;
        detail : uint32_t;
        root : Window;
        event : Window;
        child : Window;
        root_x : FP1616;
        root_y : FP1616;
        event_x : FP1616;
        event_y : FP1616;
        buttons_len : uint16_t;
        valuators_len : uint16_t;
        sourceid : uint16_t;
        pad0 : uint16_t;
        flags : uint32_t;
        mods : xXIModifierInfo;
        group : xXIGroupInfo;
      end;









    xXIRawEvent = record
        _type : uint8_t;
        extension : uint8_t;
        sequenceNumber : uint16_t;
        length : uint32_t;
        evtype : uint16_t;
        deviceid : uint16_t;
        time : Time;
        detail : uint32_t;
        sourceid : uint16_t;
        valuators_len : uint16_t;
        flags : uint32_t;
        pad2 : uint32_t;
      end;








    xXIEnterEvent = record
        _type : uint8_t;
        extension : uint8_t;
        sequenceNumber : uint16_t;
        length : uint32_t;
        evtype : uint16_t;
        deviceid : uint16_t;
        time : Time;
        sourceid : uint16_t;
        mode : uint8_t;
        detail : uint8_t;
        root : Window;
        event : Window;
        child : Window;
        root_x : FP1616;
        root_y : FP1616;
        event_x : FP1616;
        event_y : FP1616;
        same_screen : BOOL;
        focus : BOOL;
        buttons_len : uint16_t;
        mods : xXIModifierInfo;
        group : xXIGroupInfo;
      end;

    xXILeaveEvent = xXIEnterEvent;

    xXIFocusInEvent = xXIEnterEvent;

    xXIFocusOutEvent = xXIEnterEvent;







    xXIPropertyEvent = record
        _type : uint8_t;
        extension : uint8_t;
        sequenceNumber : uint16_t;
        length : uint32_t;
        evtype : uint16_t;
        deviceid : uint16_t;
        time : Time;
        _property : Atom;
        what : uint8_t;
        pad0 : uint8_t;
        pad1 : uint16_t;
        pad2 : uint32_t;
        pad3 : uint32_t;
      end;







    xXIBarrierEvent = record
        _type : uint8_t;
        extension : uint8_t;
        sequenceNumber : uint16_t;
        length : uint32_t;
        evtype : uint16_t;
        deviceid : uint16_t;
        time : Time;
        eventid : uint32_t;
        root : Window;
        event : Window;
        barrier : Barrier;
        dtime : uint32_t;
        flags : uint32_t;
        sourceid : uint16_t;
        pad : int16_t;
        root_x : FP1616;
        root_y : FP1616;
        dx : FP3232;
        dy : FP3232;
      end;

    xXIBarrierHitEvent = xXIBarrierEvent;

    xXIBarrierPointerReleasedEvent = xXIBarrierEvent;

    xXIBarrierLeaveEvent = xXIBarrierEvent;











    xXIGesturePinchEvent = record
        _type : uint8_t;
        extension : uint8_t;
        sequenceNumber : uint16_t;
        length : uint32_t;
        evtype : uint16_t;
        deviceid : uint16_t;
        time : Time;
        detail : uint32_t;
        root : Window;
        event : Window;
        child : Window;
        root_x : FP1616;
        root_y : FP1616;
        event_x : FP1616;
        event_y : FP1616;
        delta_x : FP1616;
        delta_y : FP1616;
        delta_unaccel_x : FP1616;
        delta_unaccel_y : FP1616;
        scale : FP1616;
        delta_angle : FP1616;
        sourceid : uint16_t;
        pad0 : uint16_t;
        mods : xXIModifierInfo;
        group : xXIGroupInfo;
        flags : uint32_t;
      end;











    xXIGestureSwipeEvent = record
        _type : uint8_t;
        extension : uint8_t;
        sequenceNumber : uint16_t;
        length : uint32_t;
        evtype : uint16_t;
        deviceid : uint16_t;
        time : Time;
        detail : uint32_t;
        root : Window;
        event : Window;
        child : Window;
        root_x : FP1616;
        root_y : FP1616;
        event_x : FP1616;
        event_y : FP1616;
        delta_x : FP1616;
        delta_y : FP1616;
        delta_unaccel_x : FP1616;
        delta_unaccel_y : FP1616;
        sourceid : uint16_t;
        pad0 : uint16_t;
        mods : xXIModifierInfo;
        group : xXIGroupInfo;
        flags : uint32_t;
      end;
{$undef Window}
{$undef Time}
{$undef Atom}
{$undef Cursor}
{$undef Barrier}
{$endif}


implementation


end.
