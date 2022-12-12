
unit shapeconst;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/shapeconst.h
  The following command line parameters were used:
    /usr/include/X11/extensions/shapeconst.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/shapeconst.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _SHAPECONST_H_}
{$define _SHAPECONST_H_}  


  const
    SHAPENAME = 'SHAPE';    

    SHAPE_MAJOR_VERSION = 1;    
    SHAPE_MINOR_VERSION = 1;    
    ShapeSet = 0;    
    ShapeUnion = 1;    
    ShapeIntersect = 2;    
    ShapeSubtract = 3;    
    ShapeInvert = 4;    
    ShapeBounding = 0;    
    ShapeClip = 1;    
    ShapeInput = 2;    
    ShapeNotifyMask = 1 shl 0;    
    ShapeNotify = 0;    
    ShapeNumberEvents = ShapeNotify+1;    
{$endif}


implementation


end.
