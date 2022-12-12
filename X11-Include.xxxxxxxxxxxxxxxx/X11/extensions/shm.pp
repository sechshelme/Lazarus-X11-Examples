
unit shm;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/shm.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/shm.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/shm.pp
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




{$ifndef _SHM_H_}
{$define _SHM_H_}

const
  SHMNAME = 'MIT-SHM';  

  SHM_MAJOR_VERSION = 1;  
  SHM_MINOR_VERSION = 2;  
  ShmCompletion = 0;  
  ShmNumberEvents = ShmCompletion+1;  
  BadShmSeg = 0;  
  ShmNumberErrors = BadShmSeg+1;  
{$endif}


implementation


end.
