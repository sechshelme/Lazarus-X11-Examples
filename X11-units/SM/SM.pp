
unit SM;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/SM/SM.h
  The following command line parameters were used:
    /usr/include/X11/SM/SM.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/SM/SM.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _SM_H_}
{$define _SM_H_}  


  const
    SmProtoMajor = 1;    
    SmProtoMinor = 0;    

    SmInteractStyleNone = 0;    
    SmInteractStyleErrors = 1;    
    SmInteractStyleAny = 2;    

    SmDialogError = 0;    
    SmDialogNormal = 1;    

    SmSaveGlobal = 0;    
    SmSaveLocal = 1;    
    SmSaveBoth = 2;    

    SmRestartIfRunning = 0;    
    SmRestartAnyway = 1;    
    SmRestartImmediately = 2;    
    SmRestartNever = 3;    

    SmCloneCommand = 'CloneCommand';    
    SmCurrentDirectory = 'CurrentDirectory';    
    SmDiscardCommand = 'DiscardCommand';    
    SmEnvironment = 'Environment';    
    SmProcessID = 'ProcessID';    
    SmProgram = 'Program';    
    SmRestartCommand = 'RestartCommand';    
    SmResignCommand = 'ResignCommand';    
    SmRestartStyleHint = 'RestartStyleHint';    
    SmShutdownCommand = 'ShutdownCommand';    
    SmUserID = 'UserID';    

    SmCARD8 = 'CARD8';    
    SmARRAY8 = 'ARRAY8';    
    SmLISTofARRAY8 = 'LISTofARRAY8';    

    SM_Error = 0;    
    SM_RegisterClient = 1;    
    SM_RegisterClientReply = 2;    
    SM_SaveYourself = 3;    
    SM_SaveYourselfRequest = 4;    
    SM_InteractRequest = 5;    
    SM_Interact = 6;    
    SM_InteractDone = 7;    
    SM_SaveYourselfDone = 8;    
    SM_Die = 9;    
    SM_ShutdownCancelled = 10;    
    SM_CloseConnection = 11;    
    SM_SetProperties = 12;    
    SM_DeleteProperties = 13;    
    SM_GetProperties = 14;    
    SM_PropertiesReply = 15;    
    SM_SaveYourselfPhase2Request = 16;    
    SM_SaveYourselfPhase2 = 17;    
    SM_SaveComplete = 18;    
{$endif}


implementation


end.
