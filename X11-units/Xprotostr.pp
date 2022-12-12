
unit Xprotostr;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xprotostr.h
  The following command line parameters were used:
    /usr/include/X11/Xprotostr.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xprotostr.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{$ifndef XPROTOSTRUCTS_H}
{$define XPROTOSTRUCTS_H}  

{$include <X11/Xmd.h>}


  type
    _xSegment = record
        x1 : INT16;
        y1 : INT16;
        x2 : INT16;
        y2 : INT16;
      end;
    xSegment = _xSegment;


    _xPoint = record
        x : INT16;
        y : INT16;
      end;
    xPoint = _xPoint;

    _xRectangle = record
        x : INT16;
        y : INT16;
        width : CARD16;
        height : CARD16;
      end;
    xRectangle = _xRectangle;


    _xArc = record
        x : INT16;
        y : INT16;
        width : CARD16;
        height : CARD16;
        angle1 : INT16;
        angle2 : INT16;
      end;
    xArc = _xArc;
{$endif}


implementation


end.
