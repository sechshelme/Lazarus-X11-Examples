
unit XI2proto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XI2proto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XI2proto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XI2proto.pp
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
PFP1616  = ^FP1616;
PFP3232  = ^FP3232;
PxXI2_2AllowEventsReq  = ^xXI2_2AllowEventsReq;
PxXIAddMasterInfo  = ^xXIAddMasterInfo;
PxXIAllowEventsReq  = ^xXIAllowEventsReq;
PxXIAnyHierarchyChangeInfo  = ^xXIAnyHierarchyChangeInfo;
PxXIAnyInfo  = ^xXIAnyInfo;
PxXIAttachSlaveInfo  = ^xXIAttachSlaveInfo;
PxXIBarrierEvent  = ^xXIBarrierEvent;
PxXIBarrierHitEvent  = ^xXIBarrierHitEvent;
PxXIBarrierLeaveEvent  = ^xXIBarrierLeaveEvent;
PxXIBarrierPointerReleasedEvent  = ^xXIBarrierPointerReleasedEvent;
PxXIBarrierReleasePointerInfo  = ^xXIBarrierReleasePointerInfo;
PxXIBarrierReleasePointerReq  = ^xXIBarrierReleasePointerReq;
PxXIButtonInfo  = ^xXIButtonInfo;
PxXIChangeCursorReq  = ^xXIChangeCursorReq;
PxXIChangeHierarchyReq  = ^xXIChangeHierarchyReq;
PxXIChangePropertyReq  = ^xXIChangePropertyReq;
PxXIDeletePropertyReq  = ^xXIDeletePropertyReq;
PxXIDetachSlaveInfo  = ^xXIDetachSlaveInfo;
PxXIDeviceChangedEvent  = ^xXIDeviceChangedEvent;
PxXIDeviceEvent  = ^xXIDeviceEvent;
PxXIDeviceInfo  = ^xXIDeviceInfo;
PxXIEnterEvent  = ^xXIEnterEvent;
PxXIEventMask  = ^xXIEventMask;
PxXIFocusInEvent  = ^xXIFocusInEvent;
PxXIFocusOutEvent  = ^xXIFocusOutEvent;
PxXIGenericDeviceEvent  = ^xXIGenericDeviceEvent;
PxXIGestureInfo  = ^xXIGestureInfo;
PxXIGesturePinchEvent  = ^xXIGesturePinchEvent;
PxXIGestureSwipeEvent  = ^xXIGestureSwipeEvent;
PxXIGetClientPointerReply  = ^xXIGetClientPointerReply;
PxXIGetClientPointerReq  = ^xXIGetClientPointerReq;
PxXIGetFocusReply  = ^xXIGetFocusReply;
PxXIGetFocusReq  = ^xXIGetFocusReq;
PxXIGetPropertyReply  = ^xXIGetPropertyReply;
PxXIGetPropertyReq  = ^xXIGetPropertyReq;
PxXIGetSelectedEventsReply  = ^xXIGetSelectedEventsReply;
PxXIGetSelectedEventsReq  = ^xXIGetSelectedEventsReq;
PxXIGrabDeviceReply  = ^xXIGrabDeviceReply;
PxXIGrabDeviceReq  = ^xXIGrabDeviceReq;
PxXIGrabModifierInfo  = ^xXIGrabModifierInfo;
PxXIGroupInfo  = ^xXIGroupInfo;
PxXIHierarchyEvent  = ^xXIHierarchyEvent;
PxXIHierarchyInfo  = ^xXIHierarchyInfo;
PxXIKeyInfo  = ^xXIKeyInfo;
PxXILeaveEvent  = ^xXILeaveEvent;
PxXIListPropertiesReply  = ^xXIListPropertiesReply;
PxXIListPropertiesReq  = ^xXIListPropertiesReq;
PxXIModifierInfo  = ^xXIModifierInfo;
PxXIPassiveGrabDeviceReply  = ^xXIPassiveGrabDeviceReply;
PxXIPassiveGrabDeviceReq  = ^xXIPassiveGrabDeviceReq;
PxXIPassiveUngrabDeviceReq  = ^xXIPassiveUngrabDeviceReq;
PxXIPropertyEvent  = ^xXIPropertyEvent;
PxXIQueryDeviceReply  = ^xXIQueryDeviceReply;
PxXIQueryDeviceReq  = ^xXIQueryDeviceReq;
PxXIQueryPointerReply  = ^xXIQueryPointerReply;
PxXIQueryPointerReq  = ^xXIQueryPointerReq;
PxXIQueryVersionReply  = ^xXIQueryVersionReply;
PxXIQueryVersionReq  = ^xXIQueryVersionReq;
PxXIRawEvent  = ^xXIRawEvent;
PxXIRemoveMasterInfo  = ^xXIRemoveMasterInfo;
PxXIScrollInfo  = ^xXIScrollInfo;
PxXISelectEventsReq  = ^xXISelectEventsReq;
PxXISetClientPointerReq  = ^xXISetClientPointerReq;
PxXISetFocusReq  = ^xXISetFocusReq;
PxXITouchInfo  = ^xXITouchInfo;
PxXITouchOwnershipEvent  = ^xXITouchOwnershipEvent;
PxXIUngrabDeviceReq  = ^xXIUngrabDeviceReq;
PxXIValuatorInfo  = ^xXIValuatorInfo;
PxXIWarpPointerReq  = ^xXIWarpPointerReq;
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
  PFP1616 = ^TFP1616;
  TFP1616 = Tint32_t;


  PFP3232 = ^TFP3232;
  TFP3232 = record
      integral : Tint32_t;
      frac : Tuint32_t;
    end;







  PxXIDeviceInfo = ^TxXIDeviceInfo;
  TxXIDeviceInfo = record
      deviceid : Tuint16_t;
      use : Tuint16_t;
      attachment : Tuint16_t;
      num_classes : Tuint16_t;
      name_len : Tuint16_t;
      enabled : Tuint8_t;
      pad : Tuint8_t;
    end;





  PxXIAnyInfo = ^TxXIAnyInfo;
  TxXIAnyInfo = record
      _type : Tuint16_t;
      length : Tuint16_t;
      sourceid : Tuint16_t;
      pad : Tuint16_t;
    end;






  PxXIButtonInfo = ^TxXIButtonInfo;
  TxXIButtonInfo = record
      _type : Tuint16_t;
      length : Tuint16_t;
      sourceid : Tuint16_t;
      num_buttons : Tuint16_t;
    end;






  PxXIKeyInfo = ^TxXIKeyInfo;
  TxXIKeyInfo = record
      _type : Tuint16_t;
      length : Tuint16_t;
      sourceid : Tuint16_t;
      num_keycodes : Tuint16_t;
    end;












  PxXIValuatorInfo = ^TxXIValuatorInfo;
  TxXIValuatorInfo = record
      _type : Tuint16_t;
      length : Tuint16_t;
      sourceid : Tuint16_t;
      number : Tuint16_t;
      _label : TAtom;
      min : TFP3232;
      max : TFP3232;
      value : TFP3232;
      resolution : Tuint32_t;
      mode : Tuint8_t;
      pad1 : Tuint8_t;
      pad2 : Tuint16_t;
    end;









  PxXIScrollInfo = ^TxXIScrollInfo;
  TxXIScrollInfo = record
      _type : Tuint16_t;
      length : Tuint16_t;
      sourceid : Tuint16_t;
      number : Tuint16_t;
      scroll_type : Tuint16_t;
      pad0 : Tuint16_t;
      flags : Tuint32_t;
      increment : TFP3232;
    end;







  PxXITouchInfo = ^TxXITouchInfo;
  TxXITouchInfo = record
      _type : Tuint16_t;
      length : Tuint16_t;
      sourceid : Tuint16_t;
      mode : Tuint8_t;
      num_touches : Tuint8_t;
    end;






  PxXIGestureInfo = ^TxXIGestureInfo;
  TxXIGestureInfo = record
      _type : Tuint16_t;
      length : Tuint16_t;
      sourceid : Tuint16_t;
      num_touches : Tuint8_t;
      pad0 : Tuint8_t;
    end;




  PxXIEventMask = ^TxXIEventMask;
  TxXIEventMask = record
      deviceid : Tuint16_t;
      mask_len : Tuint16_t;
    end;






  PxXIModifierInfo = ^TxXIModifierInfo;
  TxXIModifierInfo = record
      base_mods : Tuint32_t;
      latched_mods : Tuint32_t;
      locked_mods : Tuint32_t;
      effective_mods : Tuint32_t;
    end;






  PxXIGroupInfo = ^TxXIGroupInfo;
  TxXIGroupInfo = record
      base_group : Tuint8_t;
      latched_group : Tuint8_t;
      locked_group : Tuint8_t;
      effective_group : Tuint8_t;
    end;






  PxXIQueryVersionReq = ^TxXIQueryVersionReq;
  TxXIQueryVersionReq = record
      reqType : Tuint8_t;
      ReqType : Tuint8_t;
      length : Tuint16_t;
      major_version : Tuint16_t;
      minor_version : Tuint16_t;
    end;

const
  sz_xXIQueryVersionReq = 8;  


type
  PxXIQueryVersionReply = ^TxXIQueryVersionReply;
  TxXIQueryVersionReply = record
      repType : Tuint8_t;
      RepType : Tuint8_t;
      sequenceNumber : Tuint16_t;
      length : Tuint32_t;
      major_version : Tuint16_t;
      minor_version : Tuint16_t;
      pad1 : Tuint32_t;
      pad2 : Tuint32_t;
      pad3 : Tuint32_t;
      pad4 : Tuint32_t;
      pad5 : Tuint32_t;
    end;

const
  sz_xXIQueryVersionReply = 32;  




type
  PxXIQueryDeviceReq = ^TxXIQueryDeviceReq;
  TxXIQueryDeviceReq = record
      reqType : Tuint8_t;
      ReqType : Tuint8_t;
      length : Tuint16_t;
      deviceid : Tuint16_t;
      pad : Tuint16_t;
    end;

const
  sz_xXIQueryDeviceReq = 8;  


type
  PxXIQueryDeviceReply = ^TxXIQueryDeviceReply;
  TxXIQueryDeviceReply = record
      repType : Tuint8_t;
      RepType : Tuint8_t;
      sequenceNumber : Tuint16_t;
      length : Tuint32_t;
      num_devices : Tuint16_t;
      pad0 : Tuint16_t;
      pad1 : Tuint32_t;
      pad2 : Tuint32_t;
      pad3 : Tuint32_t;
      pad4 : Tuint32_t;
      pad5 : Tuint32_t;
    end;

const
  sz_xXIQueryDeviceReply = 32;  




type
  PxXISelectEventsReq = ^TxXISelectEventsReq;
  TxXISelectEventsReq = record
      reqType : Tuint8_t;
      ReqType : Tuint8_t;
      length : Tuint16_t;
      win : TWindow;
      num_masks : Tuint16_t;
      pad : Tuint16_t;
    end;

const
  sz_xXISelectEventsReq = 12;  




type
  PxXIGetSelectedEventsReq = ^TxXIGetSelectedEventsReq;
  TxXIGetSelectedEventsReq = record
      reqType : Tuint8_t;
      ReqType : Tuint8_t;
      length : Tuint16_t;
      win : TWindow;
    end;

const
  sz_xXIGetSelectedEventsReq = 8;  



type
  PxXIGetSelectedEventsReply = ^TxXIGetSelectedEventsReply;
  TxXIGetSelectedEventsReply = record
      repType : Tuint8_t;
      RepType : Tuint8_t;
      sequenceNumber : Tuint16_t;
      length : Tuint32_t;
      num_masks : Tuint16_t;
      pad0 : Tuint16_t;
      pad1 : Tuint32_t;
      pad2 : Tuint32_t;
      pad3 : Tuint32_t;
      pad4 : Tuint32_t;
      pad5 : Tuint32_t;
    end;

const
  sz_xXIGetSelectedEventsReply = 32;  




type
  PxXIQueryPointerReq = ^TxXIQueryPointerReq;
  TxXIQueryPointerReq = record
      reqType : Tuint8_t;
      ReqType : Tuint8_t;
      length : Tuint16_t;
      win : TWindow;
      deviceid : Tuint16_t;
      pad1 : Tuint16_t;
    end;

const
  sz_xXIQueryPointerReq = 12;  


type
  PxXIQueryPointerReply = ^TxXIQueryPointerReply;
  TxXIQueryPointerReply = record
      repType : Tuint8_t;
      RepType : Tuint8_t;
      sequenceNumber : Tuint16_t;
      length : Tuint32_t;
      root : TWindow;
      child : TWindow;
      root_x : TFP1616;
      root_y : TFP1616;
      win_x : TFP1616;
      win_y : TFP1616;
      same_screen : Tuint8_t;
      pad0 : Tuint8_t;
      buttons_len : Tuint16_t;
      mods : TxXIModifierInfo;
      group : TxXIGroupInfo;
    end;

const
  sz_xXIQueryPointerReply = 56;  




type
  PxXIWarpPointerReq = ^TxXIWarpPointerReq;
  TxXIWarpPointerReq = record
      reqType : Tuint8_t;
      ReqType : Tuint8_t;
      length : Tuint16_t;
      src_win : TWindow;
      dst_win : TWindow;
      src_x : TFP1616;
      src_y : TFP1616;
      src_width : Tuint16_t;
      src_height : Tuint16_t;
      dst_x : TFP1616;
      dst_y : TFP1616;
      deviceid : Tuint16_t;
      pad1 : Tuint16_t;
    end;

const
  sz_xXIWarpPointerReq = 36;  




type
  PxXIChangeCursorReq = ^TxXIChangeCursorReq;
  TxXIChangeCursorReq = record
      reqType : Tuint8_t;
      ReqType : Tuint8_t;
      length : Tuint16_t;
      win : TWindow;
      cursor : TCursor;
      deviceid : Tuint16_t;
      pad1 : Tuint16_t;
    end;

const
  sz_xXIChangeCursorReq = 16;  




type
  PxXIChangeHierarchyReq = ^TxXIChangeHierarchyReq;
  TxXIChangeHierarchyReq = record
      reqType : Tuint8_t;
      ReqType : Tuint8_t;
      length : Tuint16_t;
      num_changes : Tuint8_t;
      pad0 : Tuint8_t;
      pad1 : Tuint16_t;
    end;

const
  sz_xXIChangeHierarchyReq = 8;  


type
  PxXIAnyHierarchyChangeInfo = ^TxXIAnyHierarchyChangeInfo;
  TxXIAnyHierarchyChangeInfo = record
      _type : Tuint16_t;
      length : Tuint16_t;
    end;




  PxXIAddMasterInfo = ^TxXIAddMasterInfo;
  TxXIAddMasterInfo = record
      _type : Tuint16_t;
      length : Tuint16_t;
      name_len : Tuint16_t;
      send_core : Tuint8_t;
      enable : Tuint8_t;
    end;







  PxXIRemoveMasterInfo = ^TxXIRemoveMasterInfo;
  TxXIRemoveMasterInfo = record
      _type : Tuint16_t;
      length : Tuint16_t;
      deviceid : Tuint16_t;
      return_mode : Tuint8_t;
      pad : Tuint8_t;
      return_pointer : Tuint16_t;
      return_keyboard : Tuint16_t;
    end;





  PxXIAttachSlaveInfo = ^TxXIAttachSlaveInfo;
  TxXIAttachSlaveInfo = record
      _type : Tuint16_t;
      length : Tuint16_t;
      deviceid : Tuint16_t;
      new_master : Tuint16_t;
    end;




  PxXIDetachSlaveInfo = ^TxXIDetachSlaveInfo;
  TxXIDetachSlaveInfo = record
      _type : Tuint16_t;
      length : Tuint16_t;
      deviceid : Tuint16_t;
      pad : Tuint16_t;
    end;




  PxXISetClientPointerReq = ^TxXISetClientPointerReq;
  TxXISetClientPointerReq = record
      reqType : Tuint8_t;
      ReqType : Tuint8_t;
      length : Tuint16_t;
      win : TWindow;
      deviceid : Tuint16_t;
      pad1 : Tuint16_t;
    end;

const
  sz_xXISetClientPointerReq = 12;  



type
  PxXIGetClientPointerReq = ^TxXIGetClientPointerReq;
  TxXIGetClientPointerReq = record
      reqType : Tuint8_t;
      ReqType : Tuint8_t;
      length : Tuint16_t;
      win : TWindow;
    end;

const
  sz_xXIGetClientPointerReq = 8;  



type
  PxXIGetClientPointerReply = ^TxXIGetClientPointerReply;
  TxXIGetClientPointerReply = record
      repType : Tuint8_t;
      RepType : Tuint8_t;
      sequenceNumber : Tuint16_t;
      length : Tuint32_t;
      set : TBOOL;
      pad0 : Tuint8_t;
      deviceid : Tuint16_t;
      pad1 : Tuint32_t;
      pad2 : Tuint32_t;
      pad3 : Tuint32_t;
      pad4 : Tuint32_t;
      pad5 : Tuint32_t;
    end;

const
  sz_xXIGetClientPointerReply = 32;  



type
  PxXISetFocusReq = ^TxXISetFocusReq;
  TxXISetFocusReq = record
      reqType : Tuint8_t;
      ReqType : Tuint8_t;
      length : Tuint16_t;
      focus : TWindow;
      time : TTime;
      deviceid : Tuint16_t;
      pad0 : Tuint16_t;
    end;

const
  sz_xXISetFocusReq = 16;  



type
  PxXIGetFocusReq = ^TxXIGetFocusReq;
  TxXIGetFocusReq = record
      reqType : Tuint8_t;
      ReqType : Tuint8_t;
      length : Tuint16_t;
      deviceid : Tuint16_t;
      pad0 : Tuint16_t;
    end;

const
  sz_xXIGetFocusReq = 8;  


type
  PxXIGetFocusReply = ^TxXIGetFocusReply;
  TxXIGetFocusReply = record
      repType : Tuint8_t;
      RepType : Tuint8_t;
      sequenceNumber : Tuint16_t;
      length : Tuint32_t;
      focus : TWindow;
      pad1 : Tuint32_t;
      pad2 : Tuint32_t;
      pad3 : Tuint32_t;
      pad4 : Tuint32_t;
      pad5 : Tuint32_t;
    end;

const
  sz_xXIGetFocusReply = 32;  



type
  PxXIGrabDeviceReq = ^TxXIGrabDeviceReq;
  TxXIGrabDeviceReq = record
      reqType : Tuint8_t;
      ReqType : Tuint8_t;
      length : Tuint16_t;
      grab_window : TWindow;
      time : TTime;
      cursor : TCursor;
      deviceid : Tuint16_t;
      grab_mode : Tuint8_t;
      paired_device_mode : Tuint8_t;
      owner_events : Tuint8_t;
      pad : Tuint8_t;
      mask_len : Tuint16_t;
    end;

const
  sz_xXIGrabDeviceReq = 24;  



type
  PxXIGrabModifierInfo = ^TxXIGrabModifierInfo;
  TxXIGrabModifierInfo = record
      modifiers : Tuint32_t;
      status : Tuint8_t;
      pad0 : Tuint8_t;
      pad1 : Tuint16_t;
    end;



  PxXIGrabDeviceReply = ^TxXIGrabDeviceReply;
  TxXIGrabDeviceReply = record
      repType : Tuint8_t;
      RepType : Tuint8_t;
      sequenceNumber : Tuint16_t;
      length : Tuint32_t;
      status : Tuint8_t;
      pad0 : Tuint8_t;
      pad1 : Tuint16_t;
      pad2 : Tuint32_t;
      pad3 : Tuint32_t;
      pad4 : Tuint32_t;
      pad5 : Tuint32_t;
      pad6 : Tuint32_t;
    end;

const
  sz_xXIGrabDeviceReply = 32;  



type
  PxXIUngrabDeviceReq = ^TxXIUngrabDeviceReq;
  TxXIUngrabDeviceReq = record
      reqType : Tuint8_t;
      ReqType : Tuint8_t;
      length : Tuint16_t;
      time : TTime;
      deviceid : Tuint16_t;
      pad : Tuint16_t;
    end;

const
  sz_xXIUngrabDeviceReq = 12;  



type
  PxXIAllowEventsReq = ^TxXIAllowEventsReq;
  TxXIAllowEventsReq = record
      reqType : Tuint8_t;
      ReqType : Tuint8_t;
      length : Tuint16_t;
      time : TTime;
      deviceid : Tuint16_t;
      mode : Tuint8_t;
      pad : Tuint8_t;
    end;

const
  sz_xXIAllowEventsReq = 12;  





type
  PxXI2_2AllowEventsReq = ^TxXI2_2AllowEventsReq;
  TxXI2_2AllowEventsReq = record
      reqType : Tuint8_t;
      ReqType : Tuint8_t;
      length : Tuint16_t;
      time : TTime;
      deviceid : Tuint16_t;
      mode : Tuint8_t;
      pad : Tuint8_t;
      touchid : Tuint32_t;
      grab_window : TWindow;
    end;

const
  sz_xXI2_2AllowEventsReq = 20;  



type
  PxXIPassiveGrabDeviceReq = ^TxXIPassiveGrabDeviceReq;
  TxXIPassiveGrabDeviceReq = record
      reqType : Tuint8_t;
      ReqType : Tuint8_t;
      length : Tuint16_t;
      time : TTime;
      grab_window : TWindow;
      cursor : TCursor;
      detail : Tuint32_t;
      deviceid : Tuint16_t;
      num_modifiers : Tuint16_t;
      mask_len : Tuint16_t;
      grab_type : Tuint8_t;
      grab_mode : Tuint8_t;
      paired_device_mode : Tuint8_t;
      owner_events : Tuint8_t;
      pad1 : Tuint16_t;
    end;

const
  sz_xXIPassiveGrabDeviceReq = 32;  


type
  PxXIPassiveGrabDeviceReply = ^TxXIPassiveGrabDeviceReply;
  TxXIPassiveGrabDeviceReply = record
      repType : Tuint8_t;
      RepType : Tuint8_t;
      sequenceNumber : Tuint16_t;
      length : Tuint32_t;
      num_modifiers : Tuint16_t;
      pad1 : Tuint16_t;
      pad2 : Tuint32_t;
      pad3 : Tuint32_t;
      pad4 : Tuint32_t;
      pad5 : Tuint32_t;
      pad6 : Tuint32_t;
    end;

const
  sz_xXIPassiveGrabDeviceReply = 32;  



type
  PxXIPassiveUngrabDeviceReq = ^TxXIPassiveUngrabDeviceReq;
  TxXIPassiveUngrabDeviceReq = record
      reqType : Tuint8_t;
      ReqType : Tuint8_t;
      length : Tuint16_t;
      grab_window : TWindow;
      detail : Tuint32_t;
      deviceid : Tuint16_t;
      num_modifiers : Tuint16_t;
      grab_type : Tuint8_t;
      pad0 : Tuint8_t;
      pad1 : Tuint16_t;
    end;

const
  sz_xXIPassiveUngrabDeviceReq = 20;  



type
  PxXIListPropertiesReq = ^TxXIListPropertiesReq;
  TxXIListPropertiesReq = record
      reqType : Tuint8_t;
      ReqType : Tuint8_t;
      length : Tuint16_t;
      deviceid : Tuint16_t;
      pad : Tuint16_t;
    end;

const
  sz_xXIListPropertiesReq = 8;  


type
  PxXIListPropertiesReply = ^TxXIListPropertiesReply;
  TxXIListPropertiesReply = record
      repType : Tuint8_t;
      RepType : Tuint8_t;
      sequenceNumber : Tuint16_t;
      length : Tuint32_t;
      num_properties : Tuint16_t;
      pad0 : Tuint16_t;
      pad1 : Tuint32_t;
      pad2 : Tuint32_t;
      pad3 : Tuint32_t;
      pad4 : Tuint32_t;
      pad5 : Tuint32_t;
    end;

const
  sz_xXIListPropertiesReply = 32;  



type
  PxXIChangePropertyReq = ^TxXIChangePropertyReq;
  TxXIChangePropertyReq = record
      reqType : Tuint8_t;
      ReqType : Tuint8_t;
      length : Tuint16_t;
      deviceid : Tuint16_t;
      mode : Tuint8_t;
      format : Tuint8_t;
      _property : TAtom;
      _type : TAtom;
      num_items : Tuint32_t;
    end;

const
  sz_xXIChangePropertyReq = 20;  



type
  PxXIDeletePropertyReq = ^TxXIDeletePropertyReq;
  TxXIDeletePropertyReq = record
      reqType : Tuint8_t;
      ReqType : Tuint8_t;
      length : Tuint16_t;
      deviceid : Tuint16_t;
      pad0 : Tuint16_t;
      _property : TAtom;
    end;

const
  sz_xXIDeletePropertyReq = 12;  



{$if defined(__cplusplus) || defined(c_plusplus)}
{$else}
{$endif}
type
  PxXIGetPropertyReq = ^TxXIGetPropertyReq;
  TxXIGetPropertyReq = record
      reqType : Tuint8_t;
      ReqType : Tuint8_t;
      length : Tuint16_t;
      deviceid : Tuint16_t;
      c_delete : Tuint8_t;
      delete : Tuint8_t;
      pad0 : Tuint8_t;
      _property : TAtom;
      _type : TAtom;
      offset : Tuint32_t;
      len : Tuint32_t;
    end;

const
  sz_xXIGetPropertyReq = 24;  


type
  PxXIGetPropertyReply = ^TxXIGetPropertyReply;
  TxXIGetPropertyReply = record
      repType : Tuint8_t;
      RepType : Tuint8_t;
      sequenceNumber : Tuint16_t;
      length : Tuint32_t;
      _type : TAtom;
      bytes_after : Tuint32_t;
      num_items : Tuint32_t;
      format : Tuint8_t;
      pad0 : Tuint8_t;
      pad1 : Tuint16_t;
      pad2 : Tuint32_t;
      pad3 : Tuint32_t;
    end;

const
  sz_xXIGetPropertyReply = 32;  
type
  PxXIBarrierReleasePointerInfo = ^TxXIBarrierReleasePointerInfo;
  TxXIBarrierReleasePointerInfo = record
      deviceid : Tuint16_t;
      pad : Tuint16_t;
      barrier : TBarrier;
      eventid : Tuint32_t;
    end;




  PxXIBarrierReleasePointerReq = ^TxXIBarrierReleasePointerReq;
  TxXIBarrierReleasePointerReq = record
      reqType : Tuint8_t;
      ReqType : Tuint8_t;
      length : Tuint16_t;
      num_barriers : Tuint32_t;
    end;

const
  sz_xXIBarrierReleasePointerReq = 8;  



type
  PxXIGenericDeviceEvent = ^TxXIGenericDeviceEvent;
  TxXIGenericDeviceEvent = record
      _type : Tuint8_t;
      extension : Tuint8_t;
      sequenceNumber : Tuint16_t;
      length : Tuint32_t;
      evtype : Tuint16_t;
      deviceid : Tuint16_t;
      time : TTime;
    end;






  PxXIHierarchyInfo = ^TxXIHierarchyInfo;
  TxXIHierarchyInfo = record
      deviceid : Tuint16_t;
      attachment : Tuint16_t;
      use : Tuint8_t;
      enabled : TBOOL;
      pad : Tuint16_t;
      flags : Tuint32_t;
    end;







  PxXIHierarchyEvent = ^TxXIHierarchyEvent;
  TxXIHierarchyEvent = record
      _type : Tuint8_t;
      extension : Tuint8_t;
      sequenceNumber : Tuint16_t;
      length : Tuint32_t;
      evtype : Tuint16_t;
      deviceid : Tuint16_t;
      time : TTime;
      flags : Tuint32_t;
      num_info : Tuint16_t;
      pad0 : Tuint16_t;
      pad1 : Tuint32_t;
      pad2 : Tuint32_t;
    end;










  PxXIDeviceChangedEvent = ^TxXIDeviceChangedEvent;
  TxXIDeviceChangedEvent = record
      _type : Tuint8_t;
      extension : Tuint8_t;
      sequenceNumber : Tuint16_t;
      length : Tuint32_t;
      evtype : Tuint16_t;
      deviceid : Tuint16_t;
      time : TTime;
      num_classes : Tuint16_t;
      sourceid : Tuint16_t;
      reason : Tuint8_t;
      pad0 : Tuint8_t;
      pad1 : Tuint16_t;
      pad2 : Tuint32_t;
      pad3 : Tuint32_t;
    end;








  PxXITouchOwnershipEvent = ^TxXITouchOwnershipEvent;
  TxXITouchOwnershipEvent = record
      _type : Tuint8_t;
      extension : Tuint8_t;
      sequenceNumber : Tuint16_t;
      length : Tuint32_t;
      evtype : Tuint16_t;
      deviceid : Tuint16_t;
      time : TTime;
      touchid : Tuint32_t;
      root : TWindow;
      event : TWindow;
      child : TWindow;
      sourceid : Tuint16_t;
      pad0 : Tuint16_t;
      flags : Tuint32_t;
      pad1 : Tuint32_t;
      pad2 : Tuint32_t;
    end;













  PxXIDeviceEvent = ^TxXIDeviceEvent;
  TxXIDeviceEvent = record
      _type : Tuint8_t;
      extension : Tuint8_t;
      sequenceNumber : Tuint16_t;
      length : Tuint32_t;
      evtype : Tuint16_t;
      deviceid : Tuint16_t;
      time : TTime;
      detail : Tuint32_t;
      root : TWindow;
      event : TWindow;
      child : TWindow;
      root_x : TFP1616;
      root_y : TFP1616;
      event_x : TFP1616;
      event_y : TFP1616;
      buttons_len : Tuint16_t;
      valuators_len : Tuint16_t;
      sourceid : Tuint16_t;
      pad0 : Tuint16_t;
      flags : Tuint32_t;
      mods : TxXIModifierInfo;
      group : TxXIGroupInfo;
    end;









  PxXIRawEvent = ^TxXIRawEvent;
  TxXIRawEvent = record
      _type : Tuint8_t;
      extension : Tuint8_t;
      sequenceNumber : Tuint16_t;
      length : Tuint32_t;
      evtype : Tuint16_t;
      deviceid : Tuint16_t;
      time : TTime;
      detail : Tuint32_t;
      sourceid : Tuint16_t;
      valuators_len : Tuint16_t;
      flags : Tuint32_t;
      pad2 : Tuint32_t;
    end;








  PxXIEnterEvent = ^TxXIEnterEvent;
  TxXIEnterEvent = record
      _type : Tuint8_t;
      extension : Tuint8_t;
      sequenceNumber : Tuint16_t;
      length : Tuint32_t;
      evtype : Tuint16_t;
      deviceid : Tuint16_t;
      time : TTime;
      sourceid : Tuint16_t;
      mode : Tuint8_t;
      detail : Tuint8_t;
      root : TWindow;
      event : TWindow;
      child : TWindow;
      root_x : TFP1616;
      root_y : TFP1616;
      event_x : TFP1616;
      event_y : TFP1616;
      same_screen : TBOOL;
      focus : TBOOL;
      buttons_len : Tuint16_t;
      mods : TxXIModifierInfo;
      group : TxXIGroupInfo;
    end;

  PxXILeaveEvent = ^TxXILeaveEvent;
  TxXILeaveEvent = TxXIEnterEvent;

  PxXIFocusInEvent = ^TxXIFocusInEvent;
  TxXIFocusInEvent = TxXIEnterEvent;

  PxXIFocusOutEvent = ^TxXIFocusOutEvent;
  TxXIFocusOutEvent = TxXIEnterEvent;







  PxXIPropertyEvent = ^TxXIPropertyEvent;
  TxXIPropertyEvent = record
      _type : Tuint8_t;
      extension : Tuint8_t;
      sequenceNumber : Tuint16_t;
      length : Tuint32_t;
      evtype : Tuint16_t;
      deviceid : Tuint16_t;
      time : TTime;
      _property : TAtom;
      what : Tuint8_t;
      pad0 : Tuint8_t;
      pad1 : Tuint16_t;
      pad2 : Tuint32_t;
      pad3 : Tuint32_t;
    end;







  PxXIBarrierEvent = ^TxXIBarrierEvent;
  TxXIBarrierEvent = record
      _type : Tuint8_t;
      extension : Tuint8_t;
      sequenceNumber : Tuint16_t;
      length : Tuint32_t;
      evtype : Tuint16_t;
      deviceid : Tuint16_t;
      time : TTime;
      eventid : Tuint32_t;
      root : TWindow;
      event : TWindow;
      barrier : TBarrier;
      dtime : Tuint32_t;
      flags : Tuint32_t;
      sourceid : Tuint16_t;
      pad : Tint16_t;
      root_x : TFP1616;
      root_y : TFP1616;
      dx : TFP3232;
      dy : TFP3232;
    end;

  PxXIBarrierHitEvent = ^TxXIBarrierHitEvent;
  TxXIBarrierHitEvent = TxXIBarrierEvent;

  PxXIBarrierPointerReleasedEvent = ^TxXIBarrierPointerReleasedEvent;
  TxXIBarrierPointerReleasedEvent = TxXIBarrierEvent;

  PxXIBarrierLeaveEvent = ^TxXIBarrierLeaveEvent;
  TxXIBarrierLeaveEvent = TxXIBarrierEvent;











  PxXIGesturePinchEvent = ^TxXIGesturePinchEvent;
  TxXIGesturePinchEvent = record
      _type : Tuint8_t;
      extension : Tuint8_t;
      sequenceNumber : Tuint16_t;
      length : Tuint32_t;
      evtype : Tuint16_t;
      deviceid : Tuint16_t;
      time : TTime;
      detail : Tuint32_t;
      root : TWindow;
      event : TWindow;
      child : TWindow;
      root_x : TFP1616;
      root_y : TFP1616;
      event_x : TFP1616;
      event_y : TFP1616;
      delta_x : TFP1616;
      delta_y : TFP1616;
      delta_unaccel_x : TFP1616;
      delta_unaccel_y : TFP1616;
      scale : TFP1616;
      delta_angle : TFP1616;
      sourceid : Tuint16_t;
      pad0 : Tuint16_t;
      mods : TxXIModifierInfo;
      group : TxXIGroupInfo;
      flags : Tuint32_t;
    end;











  PxXIGestureSwipeEvent = ^TxXIGestureSwipeEvent;
  TxXIGestureSwipeEvent = record
      _type : Tuint8_t;
      extension : Tuint8_t;
      sequenceNumber : Tuint16_t;
      length : Tuint32_t;
      evtype : Tuint16_t;
      deviceid : Tuint16_t;
      time : TTime;
      detail : Tuint32_t;
      root : TWindow;
      event : TWindow;
      child : TWindow;
      root_x : TFP1616;
      root_y : TFP1616;
      event_x : TFP1616;
      event_y : TFP1616;
      delta_x : TFP1616;
      delta_y : TFP1616;
      delta_unaccel_x : TFP1616;
      delta_unaccel_y : TFP1616;
      sourceid : Tuint16_t;
      pad0 : Tuint16_t;
      mods : TxXIModifierInfo;
      group : TxXIGroupInfo;
      flags : Tuint32_t;
    end;
{$undef Window}
{$undef Time}
{$undef Atom}
{$undef Cursor}
{$undef Barrier}
{$endif}


implementation


end.
