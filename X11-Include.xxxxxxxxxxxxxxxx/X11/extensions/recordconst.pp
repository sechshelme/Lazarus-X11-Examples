
unit recordconst;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/recordconst.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/recordconst.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/recordconst.pp
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



{$ifndef _RECORDCONST_H_}
{$define _RECORDCONST_H_}

const
  RECORD_NAME = 'RECORD';  
  RECORD_MAJOR_VERSION = 1;  
  RECORD_MINOR_VERSION = 13;  
  RECORD_LOWEST_MAJOR_VERSION = 1;  
  RECORD_LOWEST_MINOR_VERSION = 12;  

  XRecordBadContext = 0;  
  RecordNumErrors = XRecordBadContext+1;  
  RecordNumEvents = 0;  

  XRecordFromServerTime = $01;  
  XRecordFromClientTime = $02;  
  XRecordFromClientSequence = $04;  
  XRecordCurrentClients = 1;  
  XRecordFutureClients = 2;  
  XRecordAllClients = 3;  
  XRecordFromServer = 0;  
  XRecordFromClient = 1;  
  XRecordClientStarted = 2;  
  XRecordClientDied = 3;  
  XRecordStartOfData = 4;  
  XRecordEndOfData = 5;  
{$endif}


implementation


end.
