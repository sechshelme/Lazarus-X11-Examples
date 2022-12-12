
unit presenttokens;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/presenttokens.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/presenttokens.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/presenttokens.pp
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



{$ifndef _PRESENT_TOKENS_H_}
{$define _PRESENT_TOKENS_H_}

const
  PRESENT_NAME = 'Present';  
  PRESENT_MAJOR = 1;  
  PRESENT_MINOR = 2;  
  PresentNumberErrors = 0;  
  PresentNumberEvents = 0;  

  X_PresentQueryVersion = 0;  
  X_PresentPixmap = 1;  
  X_PresentNotifyMSC = 2;  
  X_PresentSelectInput = 3;  
  X_PresentQueryCapabilities = 4;  
  PresentNumberRequests = 5;  

  PresentOptionNone = 0;  
  PresentOptionAsync = 1 shl 0;  
  PresentOptionCopy = 1 shl 1;  
  PresentOptionUST = 1 shl 2;  
  PresentOptionSuboptimal = 1 shl 3;  
  PresentAllOptions = ((PresentOptionAsync or PresentOptionCopy) or PresentOptionUST) or PresentOptionSuboptimal;  

  PresentCapabilityNone = 0;  
  PresentCapabilityAsync = 1;  
  PresentCapabilityFence = 2;  
  PresentCapabilityUST = 4;  
  PresentAllCapabilities = (PresentCapabilityAsync or PresentCapabilityFence) or PresentCapabilityUST;  

  PresentConfigureNotify = 0;  
  PresentCompleteNotify = 1;  
  PresentIdleNotify = 2;  
{$if PRESENT_FUTURE_VERSION}

const
  PresentRedirectNotify = 3;  
{$endif}


const
  PresentConfigureNotifyMask = 1;  
  PresentCompleteNotifyMask = 2;  
  PresentIdleNotifyMask = 4;  
{$if PRESENT_FUTURE_VERSION}

const
  PresentRedirectNotifyMask = 8;  
{$endif}
{$if PRESENT_FUTURE_VERSION}

const
  PRESENT_REDIRECT_NOTIFY_MASK = PresentRedirectNotifyMask;  
{$else}

const
  PRESENT_REDIRECT_NOTIFY_MASK = 0;  
{$endif}

const
  PresentAllEvents = ((PresentConfigureNotifyMask or PresentCompleteNotifyMask) or PresentIdleNotifyMask) or PRESENT_REDIRECT_NOTIFY_MASK;  

  PresentCompleteKindPixmap = 0;  
  PresentCompleteKindNotifyMSC = 1;  

  PresentCompleteModeCopy = 0;  
  PresentCompleteModeFlip = 1;  
  PresentCompleteModeSkip = 2;  
  PresentCompleteModeSuboptimalCopy = 3;  
{$endif}

implementation


end.
