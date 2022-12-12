
unit dmx;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/dmx.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/dmx.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/dmx.pp
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





{$ifndef _DMX_H_}
{$define _DMX_H_}


const
  DmxBadXinerama = 1001;  
  DmxBadValue = 1002;  
  DmxBadReply = 1003;  
  DMXScreenWindowWidth = 1 shl 0;  
  DMXScreenWindowHeight = 1 shl 1;  
  DMXScreenWindowXoffset = 1 shl 2;  
  DMXScreenWindowYoffset = 1 shl 3;  
  DMXRootWindowWidth = 1 shl 4;  
  DMXRootWindowHeight = 1 shl 5;  
  DMXRootWindowXoffset = 1 shl 6;  
  DMXRootWindowYoffset = 1 shl 7;  
  DMXRootWindowXorigin = 1 shl 8;  
  DMXRootWindowYorigin = 1 shl 9;  
  DMXDesktopWidth = 1 shl 0;  
  DMXDesktopHeight = 1 shl 1;  
  DMXDesktopShiftX = 1 shl 2;  
  DMXDesktopShiftY = 1 shl 3;  
  DMXInputType = 1 shl 0;  
  DMXInputPhysicalScreen = 1 shl 1;  
  DMXInputSendsCore = 1 shl 2;  
{$endif}

implementation


end.
