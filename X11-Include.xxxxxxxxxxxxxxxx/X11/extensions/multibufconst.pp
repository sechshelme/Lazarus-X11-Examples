
unit multibufconst;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/multibufconst.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/multibufconst.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/multibufconst.pp
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



{$ifndef _MULTIBUFCONST_H_}
{$define _MULTIBUFCONST_H_}

const
  MULTIBUFFER_PROTOCOL_NAME = 'Multi-Buffering';  

  MULTIBUFFER_MAJOR_VERSION = 1;  

  MULTIBUFFER_MINOR_VERSION = 1;  

  MultibufferUpdateActionUndefined = 0;  
  MultibufferUpdateActionBackground = 1;  
  MultibufferUpdateActionUntouched = 2;  
  MultibufferUpdateActionCopied = 3;  

  MultibufferUpdateHintFrequent = 0;  
  MultibufferUpdateHintIntermittent = 1;  
  MultibufferUpdateHintStatic = 2;  

  MultibufferWindowUpdateHint = 1 shl 0;  
  MultibufferBufferEventMask = 1 shl 0;  

  MultibufferModeMono = 0;  
  MultibufferModeStereo = 1;  
  MultibufferSideMono = 0;  
  MultibufferSideLeft = 1;  
  MultibufferSideRight = 2;  

  MultibufferUnclobbered = 0;  
  MultibufferPartiallyClobbered = 1;  
  MultibufferFullyClobbered = 2;  

  MultibufferClobberNotifyMask = $02000000;  
  MultibufferUpdateNotifyMask = $04000000;  
  MultibufferClobberNotify = 0;  
  MultibufferUpdateNotify = 1;  
  MultibufferNumberEvents = MultibufferUpdateNotify+1;  
  MultibufferBadBuffer = 0;  
  MultibufferNumberErrors = MultibufferBadBuffer+1;  
{$endif}


implementation


end.
