
unit dri2tokens;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/dri2tokens.h
  The following command line parameters were used:
    /usr/include/X11/extensions/dri2tokens.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/dri2tokens.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _DRI2_TOKENS_H_}
{$define _DRI2_TOKENS_H_}  

  const
    DRI2BufferFrontLeft = 0;    
    DRI2BufferBackLeft = 1;    
    DRI2BufferFrontRight = 2;    
    DRI2BufferBackRight = 3;    
    DRI2BufferDepth = 4;    
    DRI2BufferStencil = 5;    
    DRI2BufferAccum = 6;    
    DRI2BufferFakeFrontLeft = 7;    
    DRI2BufferFakeFrontRight = 8;    
    DRI2BufferDepthStencil = 9;    
    DRI2BufferHiz = 10;    


    DRI2DriverPrimeMask = 7;    
    DRI2DriverPrimeShift = 16;    

  function DRI2DriverPrimeId(x : longint) : longint;  

  const
    DRI2DriverDRI = 0;    
    DRI2DriverVDPAU = 1;    

    DRI2_EXCHANGE_COMPLETE = $1;    
    DRI2_BLIT_COMPLETE = $2;    
    DRI2_FLIP_COMPLETE = $3;    
{$endif}

implementation

  function DRI2DriverPrimeId(x : longint) : longint;
  begin
    DRI2DriverPrimeId:=(x shr DRI2DriverPrimeShift) and DRI2DriverPrimeMask;
  end;


end.
