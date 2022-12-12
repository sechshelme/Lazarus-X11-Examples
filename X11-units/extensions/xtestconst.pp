
unit xtestconst;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/xtestconst.h
  The following command line parameters were used:
    /usr/include/X11/extensions/xtestconst.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/xtestconst.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XTEST_CONST_H_}
{$define _XTEST_CONST_H_}  

  const
    XTestNumberEvents = 0;    
    XTestNumberErrors = 0;    

  function XTestCurrentCursor : Cursor;    

  const
    XTestMajorVersion = 2;    
    XTestMinorVersion = 2;    
    XTestExtensionName = 'XTEST';    
{$endif}

implementation

  function XTestCurrentCursor : Cursor;
    begin
      XTestCurrentCursor:=Cursor(1);
    end;


end.
