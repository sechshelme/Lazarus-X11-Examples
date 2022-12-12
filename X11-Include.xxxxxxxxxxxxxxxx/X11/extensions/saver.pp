
unit saver;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/saver.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/saver.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/saver.pp
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



{$ifndef _SAVER_H_}
{$define _SAVER_H_}

const
  ScreenSaverName = 'MIT-SCREEN-SAVER';  
  ScreenSaverPropertyName = '_MIT_SCREEN_SAVER_ID';  
  ScreenSaverNotifyMask = $00000001;  
  ScreenSaverCycleMask = $00000002;  
  ScreenSaverMajorVersion = 1;  
  ScreenSaverMinorVersion = 1;  
  ScreenSaverOff = 0;  
  ScreenSaverOn = 1;  
  ScreenSaverCycle = 2;  
  ScreenSaverDisabled = 3;  
  ScreenSaverBlanked = 0;  
  ScreenSaverInternal = 1;  
  ScreenSaverExternal = 2;  
  ScreenSaverNotify = 0;  
  ScreenSaverNumberEvents = 1;  
{$endif}


implementation


end.
