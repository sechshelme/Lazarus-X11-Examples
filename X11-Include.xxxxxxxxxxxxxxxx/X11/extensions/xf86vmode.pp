
unit xf86vmode;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xf86vmode.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xf86vmode.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xf86vmode.pp
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
Pchar  = ^char;
PDisplay  = ^Display;
PINT32  = ^INT32;
Plongint  = ^longint;
Pword  = ^word;
PXF86VidModeGamma  = ^XF86VidModeGamma;
PXF86VidModeModeInfo  = ^XF86VidModeModeInfo;
PXF86VidModeModeLine  = ^XF86VidModeModeLine;
PXF86VidModeMonitor  = ^XF86VidModeMonitor;
PXF86VidModeNotifyEvent  = ^XF86VidModeNotifyEvent;
PXF86VidModeSyncRange  = ^XF86VidModeSyncRange;
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
  PXF86VidModeModeLine = ^TXF86VidModeModeLine;
  TXF86VidModeModeLine = record
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
      c_private : PINT32;
      private : PINT32;
    end;
{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}
{$endif}
type
  PXF86VidModeModeInfo = ^TXF86VidModeModeInfo;
  TXF86VidModeModeInfo = record
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
      c_private : PINT32;
      private : PINT32;
    end;

  PXF86VidModeSyncRange = ^TXF86VidModeSyncRange;
  TXF86VidModeSyncRange = record
      hi : single;
      lo : single;
    end;

  PXF86VidModeMonitor = ^TXF86VidModeMonitor;
  TXF86VidModeMonitor = record
      vendor : Pchar;
      model : Pchar;
      EMPTY : single;
      nhsync : byte;
      hsync : PXF86VidModeSyncRange;
      nvsync : byte;
      vsync : PXF86VidModeSyncRange;
    end;










  PXF86VidModeNotifyEvent = ^TXF86VidModeNotifyEvent;
  TXF86VidModeNotifyEvent = record
      _type : longint;
      serial : dword;
      send_event : TBool;
      display : PDisplay;
      root : TWindow;
      state : longint;
      kind : longint;
      forced : TBool;
      time : TTime;
    end;




  PXF86VidModeGamma = ^TXF86VidModeGamma;
  TXF86VidModeGamma = record
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

function XF86VidModeQueryExtension(para1:PDisplay; para2:Plongint; para3:Plongint):TBool;cdecl;external;

function XF86VidModeSetClientVersion(para1:PDisplay):TBool;cdecl;external;

function XF86VidModeGetModeLine(para1:PDisplay; para2:longint; para3:Plongint; para4:PXF86VidModeModeLine):TBool;cdecl;external;

function XF86VidModeGetAllModeLines(para1:PDisplay; para2:longint; para3:Plongint; para4:PPPXF86VidModeModeInfo):TBool;cdecl;external;

function XF86VidModeAddModeLine(para1:PDisplay; para2:longint; para3:PXF86VidModeModeInfo; para4:PXF86VidModeModeInfo):TBool;cdecl;external;

function XF86VidModeDeleteModeLine(para1:PDisplay; para2:longint; para3:PXF86VidModeModeInfo):TBool;cdecl;external;

function XF86VidModeModModeLine(para1:PDisplay; para2:longint; para3:PXF86VidModeModeLine):TBool;cdecl;external;

function XF86VidModeValidateModeLine(para1:PDisplay; para2:longint; para3:PXF86VidModeModeInfo):TStatus;cdecl;external;

function XF86VidModeSwitchMode(para1:PDisplay; para2:longint; para3:longint):TBool;cdecl;external;

function XF86VidModeSwitchToMode(para1:PDisplay; para2:longint; para3:PXF86VidModeModeInfo):TBool;cdecl;external;

function XF86VidModeLockModeSwitch(para1:PDisplay; para2:longint; para3:longint):TBool;cdecl;external;

function XF86VidModeGetMonitor(para1:PDisplay; para2:longint; para3:PXF86VidModeMonitor):TBool;cdecl;external;

function XF86VidModeGetViewPort(para1:PDisplay; para2:longint; para3:Plongint; para4:Plongint):TBool;cdecl;external;

function XF86VidModeSetViewPort(para1:PDisplay; para2:longint; para3:longint; para4:longint):TBool;cdecl;external;

function XF86VidModeGetDotClocks(para1:PDisplay; para2:longint; para3:Plongint; para4:Plongint; para5:Plongint; 
           para6:PPlongint):TBool;cdecl;external;

function XF86VidModeGetGamma(para1:PDisplay; para2:longint; para3:PXF86VidModeGamma):TBool;cdecl;external;

function XF86VidModeSetGamma(para1:PDisplay; para2:longint; para3:PXF86VidModeGamma):TBool;cdecl;external;

function XF86VidModeSetGammaRamp(para1:PDisplay; para2:longint; para3:longint; para4:Pword; para5:Pword; 
           para6:Pword):TBool;cdecl;external;

function XF86VidModeGetGammaRamp(para1:PDisplay; para2:longint; para3:longint; para4:Pword; para5:Pword; 
           para6:Pword):TBool;cdecl;external;

function XF86VidModeGetGammaRampSize(para1:PDisplay; para2:longint; para3:Plongint):TBool;cdecl;external;

function XF86VidModeGetPermissions(para1:PDisplay; para2:longint; para3:Plongint):TBool;cdecl;external;
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


end.
