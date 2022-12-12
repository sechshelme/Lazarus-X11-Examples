
unit xf86vmode;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/xf86vmode.h
  The following command line parameters were used:
    /usr/include/X11/extensions/xf86vmode.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/xf86vmode.pp
}

  Type
  PDisplay  = ^Display;
  Plongint  = ^longint;
  Pword  = ^word;
  PXF86VidModeGamma  = ^XF86VidModeGamma;
  PXF86VidModeModeInfo  = ^XF86VidModeModeInfo;
  PXF86VidModeModeLine  = ^XF86VidModeModeLine;
  PXF86VidModeMonitor  = ^XF86VidModeMonitor;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XF86VIDMODE_H_}
{$define _XF86VIDMODE_H_}  
{$include <X11/Xfuncproto.h>}
{$include <X11/Xmd.h>}
{$include <X11/extensions/xf86vm.h>}

  const
    CLKFLAG_PROGRAMABLE = 1;    
{$ifdef XF86VIDMODE_EVENTS}
    XF86VidModeNotify = 0;    
    XF86VidModeNumberEvents = XF86VidModeNotify+1;    
    XF86VidModeNotifyMask = $00000001;    
    XF86VidModeNonEvent = 0;    
    XF86VidModeModeChange = 1;    
{$else}

  const
    XF86VidModeNumberEvents = 0;    
{$endif}

  const
    XF86VidModeBadClock = 0;    
    XF86VidModeBadHTimings = 1;    
    XF86VidModeBadVTimings = 2;    
    XF86VidModeModeUnsuitable = 3;    
    XF86VidModeExtensionDisabled = 4;    
    XF86VidModeClientNotLocal = 5;    
    XF86VidModeZoomLocked = 6;    
    XF86VidModeNumberErrors = XF86VidModeZoomLocked+1;    
    XF86VM_READ_PERMISSION = 1;    
    XF86VM_WRITE_PERMISSION = 2;    
{$ifndef _XF86VIDMODE_SERVER_}
{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}
{$endif}

  type
    XF86VidModeModeLine = record
        hdisplay : word;
        hsyncstart : word;
        hsyncend : word;
        htotal : word;
        hskew : word;
        vdisplay : word;
        vsyncstart : word;
        vsyncend : word;
        vtotal : word;
        flags : dword;
        privsize : longint;
        c_private : ^INT32;
        private : ^INT32;
      end;
{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}
{$endif}

  type
    XF86VidModeModeInfo = record
        dotclock : dword;
        hdisplay : word;
        hsyncstart : word;
        hsyncend : word;
        htotal : word;
        hskew : word;
        vdisplay : word;
        vsyncstart : word;
        vsyncend : word;
        vtotal : word;
        flags : dword;
        privsize : longint;
        c_private : ^INT32;
        private : ^INT32;
      end;

    XF86VidModeSyncRange = record
        hi : single;
        lo : single;
      end;

    XF86VidModeMonitor = record
        vendor : ^char;
        model : ^char;
        EMPTY : single;
        nhsync : byte;
        hsync : ^XF86VidModeSyncRange;
        nvsync : byte;
        vsync : ^XF86VidModeSyncRange;
      end;










    XF86VidModeNotifyEvent = record
        _type : longint;
        serial : dword;
        send_event : Bool;
        display : ^Display;
        root : Window;
        state : longint;
        kind : longint;
        forced : Bool;
        time : Time;
      end;




    XF86VidModeGamma = record
        red : single;
        green : single;
        blue : single;
      end;

  function XF86VidModeSelectNextMode(disp,scr : longint) : longint;  

  function XF86VidModeSelectPrevMode(disp,scr : longint) : longint;  

(* error 
Bool XF86VidModeQueryVersion(
(* error 
    int*		/* majorVersion */,
(* error 
    int*		/* minorVersion */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

  function XF86VidModeQueryExtension(_para1:PDisplay; _para2:Plongint; _para3:Plongint):Bool;


  function XF86VidModeSetClientVersion(_para1:PDisplay):Bool;


  function XF86VidModeGetModeLine(_para1:PDisplay; _para2:longint; _para3:Plongint; _para4:PXF86VidModeModeLine):Bool;


  function XF86VidModeGetAllModeLines(_para1:PDisplay; _para2:longint; _para3:Plongint; _para4:PPPXF86VidModeModeInfo):Bool;


  function XF86VidModeAddModeLine(_para1:PDisplay; _para2:longint; _para3:PXF86VidModeModeInfo; _para4:PXF86VidModeModeInfo):Bool;


  function XF86VidModeDeleteModeLine(_para1:PDisplay; _para2:longint; _para3:PXF86VidModeModeInfo):Bool;


  function XF86VidModeModModeLine(_para1:PDisplay; _para2:longint; _para3:PXF86VidModeModeLine):Bool;


  function XF86VidModeValidateModeLine(_para1:PDisplay; _para2:longint; _para3:PXF86VidModeModeInfo):Status;


  function XF86VidModeSwitchMode(_para1:PDisplay; _para2:longint; _para3:longint):Bool;


  function XF86VidModeSwitchToMode(_para1:PDisplay; _para2:longint; _para3:PXF86VidModeModeInfo):Bool;


  function XF86VidModeLockModeSwitch(_para1:PDisplay; _para2:longint; _para3:longint):Bool;


  function XF86VidModeGetMonitor(_para1:PDisplay; _para2:longint; _para3:PXF86VidModeMonitor):Bool;


  function XF86VidModeGetViewPort(_para1:PDisplay; _para2:longint; _para3:Plongint; _para4:Plongint):Bool;


  function XF86VidModeSetViewPort(_para1:PDisplay; _para2:longint; _para3:longint; _para4:longint):Bool;


  function XF86VidModeGetDotClocks(_para1:PDisplay; _para2:longint; _para3:Plongint; _para4:Plongint; _para5:Plongint; 
             _para6:PPlongint):Bool;


  function XF86VidModeGetGamma(_para1:PDisplay; _para2:longint; _para3:PXF86VidModeGamma):Bool;


  function XF86VidModeSetGamma(_para1:PDisplay; _para2:longint; _para3:PXF86VidModeGamma):Bool;


  function XF86VidModeSetGammaRamp(_para1:PDisplay; _para2:longint; _para3:longint; _para4:Pword; _para5:Pword; 
             _para6:Pword):Bool;


  function XF86VidModeGetGammaRamp(_para1:PDisplay; _para2:longint; _para3:longint; _para4:Pword; _para5:Pword; 
             _para6:Pword):Bool;


  function XF86VidModeGetGammaRampSize(_para1:PDisplay; _para2:longint; _para3:Plongint):Bool;


  function XF86VidModeGetPermissions(_para1:PDisplay; _para2:longint; _para3:Plongint):Bool;

{$endif}
{$endif}
(* error 
#endif

implementation

  function XF86VidModeSelectNextMode(disp,scr : longint) : longint;
  begin
    XF86VidModeSelectNextMode:=XF86VidModeSwitchMode(disp,scr,1);
  end;

  function XF86VidModeSelectPrevMode(disp,scr : longint) : longint;
  begin
    XF86VidModeSelectPrevMode:=XF86VidModeSwitchMode(disp,scr,-(1));
  end;

  function XF86VidModeQueryExtension(_para1:PDisplay; _para2:Plongint; _para3:Plongint):Bool;
  begin
    { You must implement this function }
  end;
  function XF86VidModeSetClientVersion(_para1:PDisplay):Bool;
  begin
    { You must implement this function }
  end;
  function XF86VidModeGetModeLine(_para1:PDisplay; _para2:longint; _para3:Plongint; _para4:PXF86VidModeModeLine):Bool;
  begin
    { You must implement this function }
  end;
  function XF86VidModeGetAllModeLines(_para1:PDisplay; _para2:longint; _para3:Plongint; _para4:PPPXF86VidModeModeInfo):Bool;
  begin
    { You must implement this function }
  end;
  function XF86VidModeAddModeLine(_para1:PDisplay; _para2:longint; _para3:PXF86VidModeModeInfo; _para4:PXF86VidModeModeInfo):Bool;
  begin
    { You must implement this function }
  end;
  function XF86VidModeDeleteModeLine(_para1:PDisplay; _para2:longint; _para3:PXF86VidModeModeInfo):Bool;
  begin
    { You must implement this function }
  end;
  function XF86VidModeModModeLine(_para1:PDisplay; _para2:longint; _para3:PXF86VidModeModeLine):Bool;
  begin
    { You must implement this function }
  end;
  function XF86VidModeValidateModeLine(_para1:PDisplay; _para2:longint; _para3:PXF86VidModeModeInfo):Status;
  begin
    { You must implement this function }
  end;
  function XF86VidModeSwitchMode(_para1:PDisplay; _para2:longint; _para3:longint):Bool;
  begin
    { You must implement this function }
  end;
  function XF86VidModeSwitchToMode(_para1:PDisplay; _para2:longint; _para3:PXF86VidModeModeInfo):Bool;
  begin
    { You must implement this function }
  end;
  function XF86VidModeLockModeSwitch(_para1:PDisplay; _para2:longint; _para3:longint):Bool;
  begin
    { You must implement this function }
  end;
  function XF86VidModeGetMonitor(_para1:PDisplay; _para2:longint; _para3:PXF86VidModeMonitor):Bool;
  begin
    { You must implement this function }
  end;
  function XF86VidModeGetViewPort(_para1:PDisplay; _para2:longint; _para3:Plongint; _para4:Plongint):Bool;
  begin
    { You must implement this function }
  end;
  function XF86VidModeSetViewPort(_para1:PDisplay; _para2:longint; _para3:longint; _para4:longint):Bool;
  begin
    { You must implement this function }
  end;
  function XF86VidModeGetDotClocks(_para1:PDisplay; _para2:longint; _para3:Plongint; _para4:Plongint; _para5:Plongint; 
             _para6:PPlongint):Bool;
  begin
    { You must implement this function }
  end;
  function XF86VidModeGetGamma(_para1:PDisplay; _para2:longint; _para3:PXF86VidModeGamma):Bool;
  begin
    { You must implement this function }
  end;
  function XF86VidModeSetGamma(_para1:PDisplay; _para2:longint; _para3:PXF86VidModeGamma):Bool;
  begin
    { You must implement this function }
  end;
  function XF86VidModeSetGammaRamp(_para1:PDisplay; _para2:longint; _para3:longint; _para4:Pword; _para5:Pword; 
             _para6:Pword):Bool;
  begin
    { You must implement this function }
  end;
  function XF86VidModeGetGammaRamp(_para1:PDisplay; _para2:longint; _para3:longint; _para4:Pword; _para5:Pword; 
             _para6:Pword):Bool;
  begin
    { You must implement this function }
  end;
  function XF86VidModeGetGammaRampSize(_para1:PDisplay; _para2:longint; _para3:Plongint):Bool;
  begin
    { You must implement this function }
  end;
  function XF86VidModeGetPermissions(_para1:PDisplay; _para2:longint; _para3:Plongint):Bool;
  begin
    { You must implement this function }
  end;

end.
