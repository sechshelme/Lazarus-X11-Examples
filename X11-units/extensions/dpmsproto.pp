
unit dpmsproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/dpmsproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/dpmsproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/dpmsproto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _DPMSPROTO_H_}
{$define _DPMSPROTO_H_}  
{$include <X11/extensions/dpmsconst.h>}

  const
    X_DPMSGetVersion = 0;    
    X_DPMSCapable = 1;    
    X_DPMSGetTimeouts = 2;    
    X_DPMSSetTimeouts = 3;    
    X_DPMSEnable = 4;    
    X_DPMSDisable = 5;    
    X_DPMSForceLevel = 6;    
    X_DPMSInfo = 7;    
    X_DPMSSelectInput = 8;    
    DPMSNumberEvents = 0;    
    DPMSNumberErrors = 0;    



  type
    xDPMSGetVersionReq = record
        reqType : CARD8;
        dpmsReqType : CARD8;
        length : CARD16;
        majorVersion : CARD16;
        minorVersion : CARD16;
      end;

  const
    sz_xDPMSGetVersionReq = 8;    


  type
    xDPMSGetVersionReply = record
        _type : BYTE;
        pad0 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        majorVersion : CARD16;
        minorVersion : CARD16;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xDPMSGetVersionReply = 32;    



  type
    xDPMSCapableReq = record
        reqType : CARD8;
        dpmsReqType : CARD8;
        length : CARD16;
      end;

  const
    sz_xDPMSCapableReq = 4;    


  type
    xDPMSCapableReply = record
        _type : BYTE;
        pad0 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        capable : BOOL;
        pad1 : CARD8;
        pad2 : CARD16;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
        pad7 : CARD32;
      end;

  const
    sz_xDPMSCapableReply = 32;    



  type
    xDPMSGetTimeoutsReq = record
        reqType : CARD8;
        dpmsReqType : CARD8;
        length : CARD16;
      end;

  const
    sz_xDPMSGetTimeoutsReq = 4;    


  type
    xDPMSGetTimeoutsReply = record
        _type : BYTE;
        pad0 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        standby : CARD16;
        suspend : CARD16;
        off : CARD16;
        pad1 : CARD16;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xDPMSGetTimeoutsReply = 32;    



  type
    xDPMSSetTimeoutsReq = record
        reqType : CARD8;
        dpmsReqType : CARD8;
        length : CARD16;
        standby : CARD16;
        suspend : CARD16;
        off : CARD16;
        pad0 : CARD16;
      end;

  const
    sz_xDPMSSetTimeoutsReq = 12;    



  type
    xDPMSEnableReq = record
        reqType : CARD8;
        dpmsReqType : CARD8;
        length : CARD16;
      end;

  const
    sz_xDPMSEnableReq = 4;    



  type
    xDPMSDisableReq = record
        reqType : CARD8;
        dpmsReqType : CARD8;
        length : CARD16;
      end;

  const
    sz_xDPMSDisableReq = 4;    




  type
    xDPMSForceLevelReq = record
        reqType : CARD8;
        dpmsReqType : CARD8;
        length : CARD16;
        level : CARD16;
        pad0 : CARD16;
      end;

  const
    sz_xDPMSForceLevelReq = 8;    



  type
    xDPMSInfoReq = record
        reqType : CARD8;
        dpmsReqType : CARD8;
        length : CARD16;
      end;

  const
    sz_xDPMSInfoReq = 4;    


  type
    xDPMSInfoReply = record
        _type : BYTE;
        pad0 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        power_level : CARD16;
        state : BOOL;
        pad1 : CARD8;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;

  const
    sz_xDPMSInfoReply = 32;    


(* error 
    CARD16	length B16;
 in declarator_list *)
(* error 
    CARD32	eventMask B32;
 in declarator_list *)

  type
    xDPMSSelectInputReq = record
        reqType : CARD8;
        dpmsReqType : CARD8;
;
;
      end;

  const
    sz_xDPMSSelectInputReq = 8;    
(* error 
    CARD16	sequenceNumber B16;
 in declarator_list *)
(* error 
    CARD16	evtype B16;
 in declarator_list *)
(* error 
    CARD16	pad0 B16;
 in declarator_list *)
(* error 
    Time	timestamp B32;
 in declarator_list *)
(* error 
    CARD16	power_level B16;
 in declarator_list *)
(* error 
    CARD32	pad2 B32;
 in declarator_list *)
(* error 
    CARD32	pad3 B32;
 in declarator_list *)
(* error 
    CARD32	pad4 B32;
 in declarator_list *)

  type
    xDPMSInfoNotifyEvent = record
        _type : CARD8;
        extension : CARD8;
;
        length : CARD32;
;
;
;
;
        state : BOOL;
        pad1 : CARD8;
;
;
;
      end;

  const
    sz_xDPMSInfoNotifyEvent = 32;    
{$endif}


implementation


end.
