
unit xf86vmproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xf86vmproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xf86vmproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xf86vmproto.pp
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
PXF86OldVidModeAddModeLine  = ^XF86OldVidModeAddModeLine;
PXF86OldVidModeModModeLine  = ^XF86OldVidModeModModeLine;
PXF86OldVidModeValidateModeLine  = ^XF86OldVidModeValidateModeLine;
PXF86VidModeAddModeLine  = ^XF86VidModeAddModeLine;
PXF86VidModeGetGamma  = ^XF86VidModeGetGamma;
PXF86VidModeGetGammaRamp  = ^XF86VidModeGetGammaRamp;
PXF86VidModeGetGammaRampSize  = ^XF86VidModeGetGammaRampSize;
PXF86VidModeGetModeLine  = ^XF86VidModeGetModeLine;
PXF86VidModeLockModeSwitch  = ^XF86VidModeLockModeSwitch;
PXF86VidModeModModeLine  = ^XF86VidModeModModeLine;
PXF86VidModeQueryVersion  = ^XF86VidModeQueryVersion;
PXF86VidModeSetClientVersion  = ^XF86VidModeSetClientVersion;
PXF86VidModeSetGamma  = ^XF86VidModeSetGamma;
PXF86VidModeSetGammaRamp  = ^XF86VidModeSetGammaRamp;
PXF86VidModeSetViewPort  = ^XF86VidModeSetViewPort;
PXF86VidModeSwitchMode  = ^XF86VidModeSwitchMode;
PXF86VidModeValidateModeLine  = ^XF86VidModeValidateModeLine;
PxXF86OldVidModeAddModeLineReq  = ^xXF86OldVidModeAddModeLineReq;
PxXF86OldVidModeDeleteModeLineReq  = ^xXF86OldVidModeDeleteModeLineReq;
PxXF86OldVidModeGetModeLineReply  = ^xXF86OldVidModeGetModeLineReply;
PxXF86OldVidModeModeInfo  = ^xXF86OldVidModeModeInfo;
PxXF86OldVidModeModModeLineReq  = ^xXF86OldVidModeModModeLineReq;
PxXF86OldVidModeSwitchToModeReq  = ^xXF86OldVidModeSwitchToModeReq;
PxXF86OldVidModeValidateModeLineReq  = ^xXF86OldVidModeValidateModeLineReq;
PxXF86VidModeAddModeLineReq  = ^xXF86VidModeAddModeLineReq;
PxXF86VidModeDeleteModeLineReq  = ^xXF86VidModeDeleteModeLineReq;
PxXF86VidModeGetAllModeLinesReply  = ^xXF86VidModeGetAllModeLinesReply;
PxXF86VidModeGetAllModeLinesReq  = ^xXF86VidModeGetAllModeLinesReq;
PxXF86VidModeGetDotClocksReply  = ^xXF86VidModeGetDotClocksReply;
PxXF86VidModeGetDotClocksReq  = ^xXF86VidModeGetDotClocksReq;
PxXF86VidModeGetGammaRampReply  = ^xXF86VidModeGetGammaRampReply;
PxXF86VidModeGetGammaRampReq  = ^xXF86VidModeGetGammaRampReq;
PxXF86VidModeGetGammaRampSizeReply  = ^xXF86VidModeGetGammaRampSizeReply;
PxXF86VidModeGetGammaRampSizeReq  = ^xXF86VidModeGetGammaRampSizeReq;
PxXF86VidModeGetGammaReply  = ^xXF86VidModeGetGammaReply;
PxXF86VidModeGetGammaReq  = ^xXF86VidModeGetGammaReq;
PxXF86VidModeGetModeLineReply  = ^xXF86VidModeGetModeLineReply;
PxXF86VidModeGetModeLineReq  = ^xXF86VidModeGetModeLineReq;
PxXF86VidModeGetMonitorReply  = ^xXF86VidModeGetMonitorReply;
PxXF86VidModeGetMonitorReq  = ^xXF86VidModeGetMonitorReq;
PxXF86VidModeGetPermissionsReply  = ^xXF86VidModeGetPermissionsReply;
PxXF86VidModeGetPermissionsReq  = ^xXF86VidModeGetPermissionsReq;
PxXF86VidModeGetViewPortReply  = ^xXF86VidModeGetViewPortReply;
PxXF86VidModeGetViewPortReq  = ^xXF86VidModeGetViewPortReq;
PxXF86VidModeLockModeSwitchReq  = ^xXF86VidModeLockModeSwitchReq;
PxXF86VidModeModeInfo  = ^xXF86VidModeModeInfo;
PxXF86VidModeModModeLineReq  = ^xXF86VidModeModModeLineReq;
PxXF86VidModeQueryVersionReply  = ^xXF86VidModeQueryVersionReply;
PxXF86VidModeQueryVersionReq  = ^xXF86VidModeQueryVersionReq;
PxXF86VidModeSetClientVersionReq  = ^xXF86VidModeSetClientVersionReq;
PxXF86VidModeSetGammaRampReq  = ^xXF86VidModeSetGammaRampReq;
PxXF86VidModeSetGammaReq  = ^xXF86VidModeSetGammaReq;
PxXF86VidModeSetViewPortReq  = ^xXF86VidModeSetViewPortReq;
PxXF86VidModeSwitchModeReq  = ^xXF86VidModeSwitchModeReq;
PxXF86VidModeSwitchToModeReq  = ^xXF86VidModeSwitchToModeReq;
PxXF86VidModeValidateModeLineReply  = ^xXF86VidModeValidateModeLineReply;
PxXF86VidModeValidateModeLineReq  = ^xXF86VidModeValidateModeLineReq;
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
  PXF86VidModeQueryVersion = ^TXF86VidModeQueryVersion;
  TXF86VidModeQueryVersion = record
      reqType : TCARD8;
      xf86vidmodeReqType : TCARD8;
      length : TCARD16;
    end;
  TxXF86VidModeQueryVersionReq = TXF86VidModeQueryVersion;
  PxXF86VidModeQueryVersionReq = ^TxXF86VidModeQueryVersionReq;

const
  sz_xXF86VidModeQueryVersionReq = 4;  



type
  PxXF86VidModeQueryVersionReply = ^TxXF86VidModeQueryVersionReply;
  TxXF86VidModeQueryVersionReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      majorVersion : TCARD16;
      minorVersion : TCARD16;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xXF86VidModeQueryVersionReply = 32;  

type
  PXF86VidModeGetModeLine = ^TXF86VidModeGetModeLine;
  TXF86VidModeGetModeLine = record
      reqType : TCARD8;
      xf86vidmodeReqType : TCARD8;
      length : TCARD16;
      screen : TCARD16;
      pad : TCARD16;
    end;
  TxXF86VidModeGetModeLineReq = TXF86VidModeGetModeLine;
  PxXF86VidModeGetModeLineReq = ^TxXF86VidModeGetModeLineReq;
  TxXF86VidModeGetAllModeLinesReq = TXF86VidModeGetModeLine;
  PxXF86VidModeGetAllModeLinesReq = ^TxXF86VidModeGetAllModeLinesReq;
  TxXF86VidModeGetMonitorReq = TXF86VidModeGetModeLine;
  PxXF86VidModeGetMonitorReq = ^TxXF86VidModeGetMonitorReq;
  TxXF86VidModeGetViewPortReq = TXF86VidModeGetModeLine;
  PxXF86VidModeGetViewPortReq = ^TxXF86VidModeGetViewPortReq;
  TxXF86VidModeGetDotClocksReq = TXF86VidModeGetModeLine;
  PxXF86VidModeGetDotClocksReq = ^TxXF86VidModeGetDotClocksReq;
  TxXF86VidModeGetPermissionsReq = TXF86VidModeGetModeLine;
  PxXF86VidModeGetPermissionsReq = ^TxXF86VidModeGetPermissionsReq;

const
  sz_xXF86VidModeGetModeLineReq = 8;  
  sz_xXF86VidModeGetAllModeLinesReq = 8;  
  sz_xXF86VidModeGetMonitorReq = 8;  
  sz_xXF86VidModeGetViewPortReq = 8;  
  sz_xXF86VidModeGetDotClocksReq = 8;  
  sz_xXF86VidModeGetPermissionsReq = 8;  

type
  PxXF86VidModeGetModeLineReply = ^TxXF86VidModeGetModeLineReply;
  TxXF86VidModeGetModeLineReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      dotclock : TCARD32;
      hdisplay : TCARD16;
      hsyncstart : TCARD16;
      hsyncend : TCARD16;
      htotal : TCARD16;
      hskew : TCARD16;
      vdisplay : TCARD16;
      vsyncstart : TCARD16;
      vsyncend : TCARD16;
      vtotal : TCARD16;
      pad2 : TCARD16;
      flags : TCARD32;
      reserved1 : TCARD32;
      reserved2 : TCARD32;
      reserved3 : TCARD32;
      privsize : TCARD32;
    end;

const
  sz_xXF86VidModeGetModeLineReply = 52;  


type
  PxXF86OldVidModeGetModeLineReply = ^TxXF86OldVidModeGetModeLineReply;
  TxXF86OldVidModeGetModeLineReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      dotclock : TCARD32;
      hdisplay : TCARD16;
      hsyncstart : TCARD16;
      hsyncend : TCARD16;
      htotal : TCARD16;
      vdisplay : TCARD16;
      vsyncstart : TCARD16;
      vsyncend : TCARD16;
      vtotal : TCARD16;
      flags : TCARD32;
      privsize : TCARD32;
    end;

const
  sz_xXF86OldVidModeGetModeLineReply = 36;  
type
  PxXF86VidModeModeInfo = ^TxXF86VidModeModeInfo;
  TxXF86VidModeModeInfo = record
      dotclock : TCARD32;
      hdisplay : TCARD16;
      hsyncstart : TCARD16;
      hsyncend : TCARD16;
      htotal : TCARD16;
      hskew : TCARD32;
      vdisplay : TCARD16;
      vsyncstart : TCARD16;
      vsyncend : TCARD16;
      vtotal : TCARD16;
      pad1 : TCARD16;
      flags : TCARD32;
      reserved1 : TCARD32;
      reserved2 : TCARD32;
      reserved3 : TCARD32;
      privsize : TCARD32;
    end;


  PxXF86OldVidModeModeInfo = ^TxXF86OldVidModeModeInfo;
  TxXF86OldVidModeModeInfo = record
      dotclock : TCARD32;
      hdisplay : TCARD16;
      hsyncstart : TCARD16;
      hsyncend : TCARD16;
      htotal : TCARD16;
      vdisplay : TCARD16;
      vsyncstart : TCARD16;
      vsyncend : TCARD16;
      vtotal : TCARD16;
      flags : TCARD32;
      privsize : TCARD32;
    end;


  PxXF86VidModeGetAllModeLinesReply = ^TxXF86VidModeGetAllModeLinesReply;
  TxXF86VidModeGetAllModeLinesReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      modecount : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xXF86VidModeGetAllModeLinesReply = 32;  



type
  PXF86VidModeAddModeLine = ^TXF86VidModeAddModeLine;
  TXF86VidModeAddModeLine = record
      reqType : TCARD8;
      xf86vidmodeReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
      dotclock : TCARD32;
      hdisplay : TCARD16;
      hsyncstart : TCARD16;
      hsyncend : TCARD16;
      htotal : TCARD16;
      hskew : TCARD16;
      vdisplay : TCARD16;
      vsyncstart : TCARD16;
      vsyncend : TCARD16;
      vtotal : TCARD16;
      pad1 : TCARD16;
      flags : TCARD32;
      reserved1 : TCARD32;
      reserved2 : TCARD32;
      reserved3 : TCARD32;
      privsize : TCARD32;
      after_dotclock : TCARD32;
      after_hdisplay : TCARD16;
      after_hsyncstart : TCARD16;
      after_hsyncend : TCARD16;
      after_htotal : TCARD16;
      after_hskew : TCARD16;
      after_vdisplay : TCARD16;
      after_vsyncstart : TCARD16;
      after_vsyncend : TCARD16;
      after_vtotal : TCARD16;
      pad2 : TCARD16;
      after_flags : TCARD32;
      reserved4 : TCARD32;
      reserved5 : TCARD32;
      reserved6 : TCARD32;
    end;
  TxXF86VidModeAddModeLineReq = TXF86VidModeAddModeLine;
  PxXF86VidModeAddModeLineReq = ^TxXF86VidModeAddModeLineReq;

const
  sz_xXF86VidModeAddModeLineReq = 92;  




type
  PXF86OldVidModeAddModeLine = ^TXF86OldVidModeAddModeLine;
  TXF86OldVidModeAddModeLine = record
      reqType : TCARD8;
      xf86vidmodeReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
      dotclock : TCARD32;
      hdisplay : TCARD16;
      hsyncstart : TCARD16;
      hsyncend : TCARD16;
      htotal : TCARD16;
      vdisplay : TCARD16;
      vsyncstart : TCARD16;
      vsyncend : TCARD16;
      vtotal : TCARD16;
      flags : TCARD32;
      privsize : TCARD32;
      after_dotclock : TCARD32;
      after_hdisplay : TCARD16;
      after_hsyncstart : TCARD16;
      after_hsyncend : TCARD16;
      after_htotal : TCARD16;
      after_vdisplay : TCARD16;
      after_vsyncstart : TCARD16;
      after_vsyncend : TCARD16;
      after_vtotal : TCARD16;
      after_flags : TCARD32;
    end;
  TxXF86OldVidModeAddModeLineReq = TXF86OldVidModeAddModeLine;
  PxXF86OldVidModeAddModeLineReq = ^TxXF86OldVidModeAddModeLineReq;

const
  sz_xXF86OldVidModeAddModeLineReq = 60;  



type
  PXF86VidModeModModeLine = ^TXF86VidModeModModeLine;
  TXF86VidModeModModeLine = record
      reqType : TCARD8;
      xf86vidmodeReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
      hdisplay : TCARD16;
      hsyncstart : TCARD16;
      hsyncend : TCARD16;
      htotal : TCARD16;
      hskew : TCARD16;
      vdisplay : TCARD16;
      vsyncstart : TCARD16;
      vsyncend : TCARD16;
      vtotal : TCARD16;
      pad1 : TCARD16;
      flags : TCARD32;
      reserved1 : TCARD32;
      reserved2 : TCARD32;
      reserved3 : TCARD32;
      privsize : TCARD32;
    end;
  TxXF86VidModeModModeLineReq = TXF86VidModeModModeLine;
  PxXF86VidModeModModeLineReq = ^TxXF86VidModeModModeLineReq;

const
  sz_xXF86VidModeModModeLineReq = 48;  




type
  PXF86OldVidModeModModeLine = ^TXF86OldVidModeModModeLine;
  TXF86OldVidModeModModeLine = record
      reqType : TCARD8;
      xf86vidmodeReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
      hdisplay : TCARD16;
      hsyncstart : TCARD16;
      hsyncend : TCARD16;
      htotal : TCARD16;
      vdisplay : TCARD16;
      vsyncstart : TCARD16;
      vsyncend : TCARD16;
      vtotal : TCARD16;
      flags : TCARD32;
      privsize : TCARD32;
    end;
  TxXF86OldVidModeModModeLineReq = TXF86OldVidModeModModeLine;
  PxXF86OldVidModeModModeLineReq = ^TxXF86OldVidModeModModeLineReq;

const
  sz_xXF86OldVidModeModModeLineReq = 32;  


type
  PXF86VidModeValidateModeLine = ^TXF86VidModeValidateModeLine;
  TXF86VidModeValidateModeLine = record
      reqType : TCARD8;
      xf86vidmodeReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
      dotclock : TCARD32;
      hdisplay : TCARD16;
      hsyncstart : TCARD16;
      hsyncend : TCARD16;
      htotal : TCARD16;
      hskew : TCARD16;
      vdisplay : TCARD16;
      vsyncstart : TCARD16;
      vsyncend : TCARD16;
      vtotal : TCARD16;
      pad1 : TCARD16;
      flags : TCARD32;
      reserved1 : TCARD32;
      reserved2 : TCARD32;
      reserved3 : TCARD32;
      privsize : TCARD32;
    end;
  TxXF86VidModeDeleteModeLineReq = TXF86VidModeValidateModeLine;
  PxXF86VidModeDeleteModeLineReq = ^TxXF86VidModeDeleteModeLineReq;
  TxXF86VidModeValidateModeLineReq = TXF86VidModeValidateModeLine;
  PxXF86VidModeValidateModeLineReq = ^TxXF86VidModeValidateModeLineReq;
  TxXF86VidModeSwitchToModeReq = TXF86VidModeValidateModeLine;
  PxXF86VidModeSwitchToModeReq = ^TxXF86VidModeSwitchToModeReq;

const
  sz_xXF86VidModeDeleteModeLineReq = 52;  
  sz_xXF86VidModeValidateModeLineReq = 52;  
  sz_xXF86VidModeSwitchToModeReq = 52;  



type
  PXF86OldVidModeValidateModeLine = ^TXF86OldVidModeValidateModeLine;
  TXF86OldVidModeValidateModeLine = record
      reqType : TCARD8;
      xf86vidmodeReqType : TCARD8;
      length : TCARD16;
      screen : TCARD32;
      dotclock : TCARD32;
      hdisplay : TCARD16;
      hsyncstart : TCARD16;
      hsyncend : TCARD16;
      htotal : TCARD16;
      vdisplay : TCARD16;
      vsyncstart : TCARD16;
      vsyncend : TCARD16;
      vtotal : TCARD16;
      flags : TCARD32;
      privsize : TCARD32;
    end;
  TxXF86OldVidModeDeleteModeLineReq = TXF86OldVidModeValidateModeLine;
  PxXF86OldVidModeDeleteModeLineReq = ^TxXF86OldVidModeDeleteModeLineReq;
  TxXF86OldVidModeValidateModeLineReq = TXF86OldVidModeValidateModeLine;
  PxXF86OldVidModeValidateModeLineReq = ^TxXF86OldVidModeValidateModeLineReq;
  TxXF86OldVidModeSwitchToModeReq = TXF86OldVidModeValidateModeLine;
  PxXF86OldVidModeSwitchToModeReq = ^TxXF86OldVidModeSwitchToModeReq;

const
  sz_xXF86OldVidModeDeleteModeLineReq = 36;  
  sz_xXF86OldVidModeValidateModeLineReq = 36;  
  sz_xXF86OldVidModeSwitchToModeReq = 36;  


type
  PXF86VidModeSwitchMode = ^TXF86VidModeSwitchMode;
  TXF86VidModeSwitchMode = record
      reqType : TCARD8;
      xf86vidmodeReqType : TCARD8;
      length : TCARD16;
      screen : TCARD16;
      zoom : TCARD16;
    end;
  TxXF86VidModeSwitchModeReq = TXF86VidModeSwitchMode;
  PxXF86VidModeSwitchModeReq = ^TxXF86VidModeSwitchModeReq;

const
  sz_xXF86VidModeSwitchModeReq = 8;  


type
  PXF86VidModeLockModeSwitch = ^TXF86VidModeLockModeSwitch;
  TXF86VidModeLockModeSwitch = record
      reqType : TCARD8;
      xf86vidmodeReqType : TCARD8;
      length : TCARD16;
      screen : TCARD16;
      lock : TCARD16;
    end;
  TxXF86VidModeLockModeSwitchReq = TXF86VidModeLockModeSwitch;
  PxXF86VidModeLockModeSwitchReq = ^TxXF86VidModeLockModeSwitchReq;

const
  sz_xXF86VidModeLockModeSwitchReq = 8;  

type
  PxXF86VidModeValidateModeLineReply = ^TxXF86VidModeValidateModeLineReply;
  TxXF86VidModeValidateModeLineReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      status : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xXF86VidModeValidateModeLineReply = 32;  

type
  PxXF86VidModeGetMonitorReply = ^TxXF86VidModeGetMonitorReply;
  TxXF86VidModeGetMonitorReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      vendorLength : TCARD8;
      modelLength : TCARD8;
      nhsync : TCARD8;
      nvsync : TCARD8;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;

const
  sz_xXF86VidModeGetMonitorReply = 32;  
type
  PxXF86VidModeGetViewPortReply = ^TxXF86VidModeGetViewPortReply;
  TxXF86VidModeGetViewPortReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      x : TCARD32;
      y : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xXF86VidModeGetViewPortReply = 32;  


type
  PXF86VidModeSetViewPort = ^TXF86VidModeSetViewPort;
  TXF86VidModeSetViewPort = record
      reqType : TCARD8;
      xf86vidmodeReqType : TCARD8;
      length : TCARD16;
      screen : TCARD16;
      pad : TCARD16;
      x : TCARD32;
      y : TCARD32;
    end;
  TxXF86VidModeSetViewPortReq = TXF86VidModeSetViewPort;
  PxXF86VidModeSetViewPortReq = ^TxXF86VidModeSetViewPortReq;

const
  sz_xXF86VidModeSetViewPortReq = 16;  
type
  PxXF86VidModeGetDotClocksReply = ^TxXF86VidModeGetDotClocksReply;
  TxXF86VidModeGetDotClocksReply = record
      _type : TBYTE;
      pad1 : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      flags : TCARD32;
      clocks : TCARD32;
      maxclocks : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
    end;

const
  sz_xXF86VidModeGetDotClocksReply = 32;  

type
  PXF86VidModeSetClientVersion = ^TXF86VidModeSetClientVersion;
  TXF86VidModeSetClientVersion = record
      reqType : TCARD8;
      xf86vidmodeReqType : TCARD8;
      length : TCARD16;
      major : TCARD16;
      minor : TCARD16;
    end;
  TxXF86VidModeSetClientVersionReq = TXF86VidModeSetClientVersion;
  PxXF86VidModeSetClientVersionReq = ^TxXF86VidModeSetClientVersionReq;

const
  sz_xXF86VidModeSetClientVersionReq = 8;  

type
  PXF86VidModeGetGamma = ^TXF86VidModeGetGamma;
  TXF86VidModeGetGamma = record
      reqType : TCARD8;
      xf86vidmodeReqType : TCARD8;
      length : TCARD16;
      screen : TCARD16;
      pad : TCARD16;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;
  TxXF86VidModeGetGammaReq = TXF86VidModeGetGamma;
  PxXF86VidModeGetGammaReq = ^TxXF86VidModeGetGammaReq;

const
  sz_xXF86VidModeGetGammaReq = 32;  
type
  PxXF86VidModeGetGammaReply = ^TxXF86VidModeGetGammaReply;
  TxXF86VidModeGetGammaReply = record
      _type : TBYTE;
      pad : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      red : TCARD32;
      green : TCARD32;
      blue : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
    end;

const
  sz_xXF86VidModeGetGammaReply = 32;  

type
  PXF86VidModeSetGamma = ^TXF86VidModeSetGamma;
  TXF86VidModeSetGamma = record
      reqType : TCARD8;
      xf86vidmodeReqType : TCARD8;
      length : TCARD16;
      screen : TCARD16;
      pad : TCARD16;
      red : TCARD32;
      green : TCARD32;
      blue : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
    end;
  TxXF86VidModeSetGammaReq = TXF86VidModeSetGamma;
  PxXF86VidModeSetGammaReq = ^TxXF86VidModeSetGammaReq;

const
  sz_xXF86VidModeSetGammaReq = 32;  

type
  PXF86VidModeSetGammaRamp = ^TXF86VidModeSetGammaRamp;
  TXF86VidModeSetGammaRamp = record
      reqType : TCARD8;
      xf86vidmodeReqType : TCARD8;
      length : TCARD16;
      screen : TCARD16;
      size : TCARD16;
    end;
  TxXF86VidModeSetGammaRampReq = TXF86VidModeSetGammaRamp;
  PxXF86VidModeSetGammaRampReq = ^TxXF86VidModeSetGammaRampReq;

const
  sz_xXF86VidModeSetGammaRampReq = 8;  

type
  PXF86VidModeGetGammaRamp = ^TXF86VidModeGetGammaRamp;
  TXF86VidModeGetGammaRamp = record
      reqType : TCARD8;
      xf86vidmodeReqType : TCARD8;
      length : TCARD16;
      screen : TCARD16;
      size : TCARD16;
    end;
  TxXF86VidModeGetGammaRampReq = TXF86VidModeGetGammaRamp;
  PxXF86VidModeGetGammaRampReq = ^TxXF86VidModeGetGammaRampReq;

const
  sz_xXF86VidModeGetGammaRampReq = 8;  
type
  PxXF86VidModeGetGammaRampReply = ^TxXF86VidModeGetGammaRampReply;
  TxXF86VidModeGetGammaRampReply = record
      _type : TBYTE;
      pad : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      size : TCARD16;
      pad0 : TCARD16;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xXF86VidModeGetGammaRampReply = 32;  

type
  PXF86VidModeGetGammaRampSize = ^TXF86VidModeGetGammaRampSize;
  TXF86VidModeGetGammaRampSize = record
      reqType : TCARD8;
      xf86vidmodeReqType : TCARD8;
      length : TCARD16;
      screen : TCARD16;
      pad : TCARD16;
    end;
  TxXF86VidModeGetGammaRampSizeReq = TXF86VidModeGetGammaRampSize;
  PxXF86VidModeGetGammaRampSizeReq = ^TxXF86VidModeGetGammaRampSizeReq;

const
  sz_xXF86VidModeGetGammaRampSizeReq = 8;  
type
  PxXF86VidModeGetGammaRampSizeReply = ^TxXF86VidModeGetGammaRampSizeReply;
  TxXF86VidModeGetGammaRampSizeReply = record
      _type : TBYTE;
      pad : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      size : TCARD16;
      pad0 : TCARD16;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xXF86VidModeGetGammaRampSizeReply = 32;  
type
  PxXF86VidModeGetPermissionsReply = ^TxXF86VidModeGetPermissionsReply;
  TxXF86VidModeGetPermissionsReply = record
      _type : TBYTE;
      pad : TBOOL;
      sequenceNumber : TCARD16;
      length : TCARD32;
      permissions : TCARD32;
      pad1 : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
    end;

const
  sz_xXF86VidModeGetPermissionsReply = 32;  
{$endif}


implementation


end.
