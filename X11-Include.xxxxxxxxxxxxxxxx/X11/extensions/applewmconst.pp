
unit applewmconst;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/applewmconst.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/applewmconst.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/applewmconst.pp
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



{$ifndef _APPLEWMCONST_H_}
{$define _APPLEWMCONST_H_}


const
  AppleWMControllerNotify = 0;  
  AppleWMActivationNotify = 1;  
  AppleWMPasteboardNotify = 2;  
  AppleWMNumberEvents = 3;  
  AppleWMControllerNotifyMask = 1 shl 0;  
  AppleWMActivationNotifyMask = 1 shl 1;  
  AppleWMPasteboardNotifyMask = 1 shl 2;  

  AppleWMMinimizeWindow = 0;  
  AppleWMZoomWindow = 1;  
  AppleWMCloseWindow = 2;  
  AppleWMBringAllToFront = 3;  
  AppleWMHideWindow = 4;  
  AppleWMHideAll = 5;  
  AppleWMShowAll = 6;  
  AppleWMWindowMenuItem = 9;  
  AppleWMWindowMenuNotify = 10;  
  AppleWMNextWindow = 11;  
  AppleWMPreviousWindow = 12;  

  AppleWMIsActive = 0;  
  AppleWMIsInactive = 1;  
  AppleWMReloadPreferences = 2;  

  AppleWMCopyToPasteboard = 0;  

  AppleWMClientNotLocal = 0;  
  AppleWMOperationNotSupported = 1;  
  AppleWMNumberErrors = AppleWMOperationNotSupported+1;  

  AppleWMWindowLevelNormal = 0;  
  AppleWMWindowLevelFloating = 1;  
  AppleWMWindowLevelTornOff = 2;  
  AppleWMWindowLevelDock = 3;  
  AppleWMWindowLevelDesktop = 4;  
  AppleWMNumWindowLevels = 5;  






{$endif}


implementation


end.
