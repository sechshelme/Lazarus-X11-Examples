
unit ge;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/ge.h
  The following command line parameters were used:
    /usr/include/X11/extensions/ge.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/ge.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _GE_H_}
{$define _GE_H_}  

  const
    GE_NAME = 'Generic Event Extension';    
    GE_MAJOR = 1;    
    GE_MINOR = 0;    

    X_GEQueryVersion = 0;    
    GENumberRequests = X_GEQueryVersion+1;    

    GENumberEvents = 0;    

    GENumberErrors = 0;    
{$endif}


implementation


end.
