
unit dbe;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/dbe.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/dbe.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/dbe.pp
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



{$ifndef DBE_H}
{$define DBE_H}


const
  XdbeUndefined = 0;  
  XdbeBackground = 1;  
  XdbeUntouched = 2;  
  XdbeCopied = 3;  

  XdbeBadBuffer = 0;  
  DBE_PROTOCOL_NAME = 'DOUBLE-BUFFER';  

  DBE_MAJOR_VERSION = 1;  
  DBE_MINOR_VERSION = 0;  

  DbeNumberEvents = 0;  
  DbeBadBuffer = 0;  
  DbeNumberErrors = DbeBadBuffer+1;  
{$endif}


implementation


end.
