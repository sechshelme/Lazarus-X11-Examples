
unit damagewire;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/damagewire.h
  The following command line parameters were used:
    /usr/include/X11/extensions/damagewire.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/damagewire.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _DAMAGEWIRE_H_}
{$define _DAMAGEWIRE_H_}  

  const
    DAMAGE_NAME = 'DAMAGE';    
    DAMAGE_MAJOR = 1;    
    DAMAGE_MINOR = 1;    


    XDamageReportRawRectangles = 0;    
    XDamageReportDeltaRectangles = 1;    
    XDamageReportBoundingBox = 2;    
    XDamageReportNonEmpty = 3;    

    X_DamageQueryVersion = 0;    
    X_DamageCreate = 1;    
    X_DamageDestroy = 2;    
    X_DamageSubtract = 3;    
    X_DamageAdd = 4;    
    XDamageNumberRequests = X_DamageAdd+1;    

    XDamageNotify = 0;    
    XDamageNumberEvents = XDamageNotify+1;    

    BadDamage = 0;    
    XDamageNumberErrors = BadDamage+1;    
{$endif}


implementation


end.
