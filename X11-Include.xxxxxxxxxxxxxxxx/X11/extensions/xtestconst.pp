
unit xtestconst;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xtestconst.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xtestconst.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xtestconst.pp
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



{$ifndef _XTEST_CONST_H_}
{$define _XTEST_CONST_H_}

const
  XTestNumberEvents = 0;  
  XTestNumberErrors = 0;  

function XTestCurrentCursor : TCursor;  

const
  XTestMajorVersion = 2;  
  XTestMinorVersion = 2;  
  XTestExtensionName = 'XTEST';  
{$endif}

implementation

function XTestCurrentCursor : TCursor;
  begin
    XTestCurrentCursor:=TCursor(1);
  end;


end.
