
unit shm;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/shm.h
  The following command line parameters were used:
    /usr/include/X11/extensions/shm.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/shm.pp
}

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
