
unit Xv;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/Xv.h
  The following command line parameters were used:
    /usr/include/X11/extensions/Xv.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/Xv.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef XV_H}
{$define XV_H}  

{$include <X11/X.h>}

  const
    XvName = 'XVideo';    
    XvVersion = 2;    
    XvRevision = 2;    


  type
    XvPortID = XID;

    XvEncodingID = XID;

  const
    XvNone = 0;    
    XvInput = 0;    
    XvOutput = 1;    
    XvInputMask = 1 shl XvInput;    
    XvOutputMask = 1 shl XvOutput;    
    XvVideoMask = $00000004;    
    XvStillMask = $00000008;    
    XvImageMask = $00000010;    

    XvPixmapMask = $00010000;    
    XvWindowMask = $00020000;    
    XvGettable = $01;    
    XvSettable = $02;    
    XvRGB = 0;    
    XvYUV = 1;    
    XvPacked = 0;    
    XvPlanar = 1;    
    XvTopToBottom = 0;    
    XvBottomToTop = 1;    

    XvVideoNotify = 0;    
    XvPortNotify = 1;    
    XvNumEvents = 2;    

    XvStarted = 0;    
    XvStopped = 1;    
    XvBusy = 2;    
    XvPreempted = 3;    
    XvHardError = 4;    
    XvLastReason = 4;    
    XvNumReasons = XvLastReason+1;    
    XvStartedMask = 1 shl XvStarted;    
    XvStoppedMask = 1 shl XvStopped;    
    XvBusyMask = 1 shl XvBusy;    
    XvPreemptedMask = 1 shl XvPreempted;    
    XvHardErrorMask = 1 shl XvHardError;    
    XvAnyReasonMask = (1 shl XvNumReasons)-1;    
    XvNoReasonMask = 0;    

    XvBadPort = 0;    
    XvBadEncoding = 1;    
    XvBadControl = 2;    
    XvNumErrors = 3;    

    XvBadExtension = 1;    
    XvAlreadyGrabbed = 2;    
    XvInvalidTime = 3;    
    XvBadReply = 4;    
    XvBadAlloc = 5;    
{$endif}


implementation


end.
