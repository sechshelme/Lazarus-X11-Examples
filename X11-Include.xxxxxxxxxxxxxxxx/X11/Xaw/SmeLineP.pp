
unit SmeLineP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/SmeLineP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/SmeLineP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/SmeLineP.pp
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

Type
PSmeLineClassPart  = ^SmeLineClassPart;
PSmeLineClassRec  = ^SmeLineClassRec;
PSmeLinePart  = ^SmeLinePart;
PSmeLineRec  = ^SmeLineRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawSmeLineP_h}
{$define _XawSmeLineP_h}

{$include <X11/Xaw/SmeP.h>}
{$include <X11/Xaw/SmeLine.h>}

type
  PSmeLineClassPart = ^TSmeLineClassPart;
  TSmeLineClassPart = record
      extension : TXtPointer;
    end;


  PSmeLineClassRec = ^TSmeLineClassRec;
  TSmeLineClassRec = record
      rect_class : TRectObjClassPart;
      sme_class : TSmeClassPart;
      sme_line_class : TSmeLineClassPart;
    end;
  var
    smeLineClassRec : TSmeLineClassRec;cvar;external;







{$ifndef OLDXAW}

{$endif}
type
  PSmeLinePart = ^TSmeLinePart;
  TSmeLinePart = record
      foreground : TPixel;
      stipple : TPixmap;
      line_width : TDimension;
      gc : TGC;
      pad : array[0..3] of TXtPointer;
    end;


  PSmeLineRec = ^TSmeLineRec;
  TSmeLineRec = record
      object : TObjectPart;
      rectangle : TRectObjPart;
      sme : TSmePart;
      sme_line : TSmeLinePart;
    end;
{$endif}


implementation


end.
