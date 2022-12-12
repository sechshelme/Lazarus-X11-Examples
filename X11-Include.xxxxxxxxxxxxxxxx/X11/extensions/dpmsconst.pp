
unit dpmsconst;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/dpmsconst.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/dpmsconst.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/dpmsconst.pp
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



{$ifndef _DPMSCONST_H}

const
  _DPMSCONST_H = 1;  
  DPMSMajorVersion = 1;  
  DPMSMinorVersion = 2;  
  DPMSExtensionName = 'DPMS';  
  DPMSModeOn = 0;  
  DPMSModeStandby = 1;  
  DPMSModeSuspend = 2;  
  DPMSModeOff = 3;  
  DPMSInfoNotifyMask = 1 shl 0;  
  DPMSInfoNotify = 0;  
{$endif}


implementation


end.
