
unit ag;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/ag.h
  The following command line parameters were used:
    /usr/include/X11/extensions/ag.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/ag.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _AG_H_}
{$define _AG_H_}  

  const
    XAGNAME = 'XC-APPGROUP';    

    XAG_MAJOR_VERSION = 1;    
    XAG_MINOR_VERSION = 0;    
    XagWindowTypeX11 = 0;    
    XagWindowTypeMacintosh = 1;    
    XagWindowTypeWin32 = 2;    
    XagWindowTypeWin16 = 3;    
    XagBadAppGroup = 0;    
    XagNumberErrors = XagBadAppGroup+1;    
    XagNsingleScreen = 7;    
    XagNdefaultRoot = 1;    
    XagNrootVisual = 2;    
    XagNdefaultColormap = 3;    
    XagNblackPixel = 4;    
    XagNwhitePixel = 5;    
    XagNappGroupLeader = 6;    
{$endif}


implementation


end.
