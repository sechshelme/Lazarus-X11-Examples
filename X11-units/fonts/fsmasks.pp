
unit fsmasks;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/fonts/fsmasks.h
  The following command line parameters were used:
    /usr/include/X11/fonts/fsmasks.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/fonts/fsmasks.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _FSMASKS_H_}
{$define _FSMASKS_H_}  
{$include <X11/Xmd.h>}


  const
    BitmapFormatByteOrderMask = 1 shl 0;    
    BitmapFormatBitOrderMask = 1 shl 1;    
    BitmapFormatImageRectMask = 3 shl 2;    
    BitmapFormatScanlinePadMask = 3 shl 8;    
    BitmapFormatScanlineUnitMask = 3 shl 12;    
    BitmapFormatByteOrderLSB = 0;    
    BitmapFormatByteOrderMSB = 1 shl 0;    
    BitmapFormatBitOrderLSB = 0;    
    BitmapFormatBitOrderMSB = 1 shl 1;    
    BitmapFormatImageRectMin = 0 shl 2;    
    BitmapFormatImageRectMaxWidth = 1 shl 2;    
    BitmapFormatImageRectMax = 2 shl 2;    
    BitmapFormatScanlinePad8 = 0 shl 8;    
    BitmapFormatScanlinePad16 = 1 shl 8;    
    BitmapFormatScanlinePad32 = 2 shl 8;    
    BitmapFormatScanlinePad64 = 3 shl 8;    
    BitmapFormatScanlineUnit8 = 0 shl 12;    
    BitmapFormatScanlineUnit16 = 1 shl 12;    
    BitmapFormatScanlineUnit32 = 2 shl 12;    
    BitmapFormatScanlineUnit64 = 3 shl 12;    
    BitmapFormatMaskByte = 1 shl 0;    
    BitmapFormatMaskBit = 1 shl 1;    
    BitmapFormatMaskImageRectangle = 1 shl 2;    
    BitmapFormatMaskScanLinePad = 1 shl 3;    
    BitmapFormatMaskScanLineUnit = 1 shl 4;    

  type
    fsBitmapFormat = CARD32;

    fsBitmapFormatMask = CARD32;
{$endif}


implementation


end.
