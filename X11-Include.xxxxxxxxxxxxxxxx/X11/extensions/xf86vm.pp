
unit xf86vm;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xf86vm.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xf86vm.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xf86vm.pp
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XF86VM_H_}
{$define _XF86VM_H_}
{$include <X11/Xmd.h>}

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
{$endif}

implementation


end.
