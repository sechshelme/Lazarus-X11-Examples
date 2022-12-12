
unit Cardinals;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Cardinals.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Cardinals.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Cardinals.pp
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _Cardinals_h}
{$define _Cardinals_h}

function ZERO : TCardinal;  

function ONE : TCardinal;  

function TWO : TCardinal;  

function THREE : TCardinal;  

function FOUR : TCardinal;  

function FIVE : TCardinal;  

function SIX : TCardinal;  

function SEVEN : TCardinal;  

function EIGHT : TCardinal;  

function NINE : TCardinal;  

function TEN : TCardinal;  

{$endif}


implementation

function ZERO : TCardinal;
  begin
    ZERO:=TCardinal(0);
  end;

function ONE : TCardinal;
  begin
    ONE:=TCardinal(1);
  end;

function TWO : TCardinal;
  begin
    TWO:=TCardinal(2);
  end;

function THREE : TCardinal;
  begin
    THREE:=TCardinal(3);
  end;

function FOUR : TCardinal;
  begin
    FOUR:=TCardinal(4);
  end;

function FIVE : TCardinal;
  begin
    FIVE:=TCardinal(5);
  end;

function SIX : TCardinal;
  begin
    SIX:=TCardinal(6);
  end;

function SEVEN : TCardinal;
  begin
    SEVEN:=TCardinal(7);
  end;

function EIGHT : TCardinal;
  begin
    EIGHT:=TCardinal(8);
  end;

function NINE : TCardinal;
  begin
    NINE:=TCardinal(9);
  end;

function TEN : TCardinal;
  begin
    TEN:=TCardinal(10);
  end;


end.
