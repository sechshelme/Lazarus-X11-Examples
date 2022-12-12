
unit Xwinsock;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xwinsock.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xwinsock.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xwinsock.pp
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




{$undef _XFree86Server}
{$ifdef XFree86Server}
{$define _XFree86Server}
{$undef XFree86Server}
{$endif}

{$define _NO_BOOL_TYPEDEF}

const
  BOOL = WINBOOL;  
  INT32 = wINT32;  
{$undef Status}
  Status = wStatus;  
  ATOM = wATOM;  
  BYTE = wBYTE;  
  FreeResource = wFreeResource;  
{$include <winsock2.h>}
{$undef Status}

const
  Status = longint;  
{$undef BYTE}
{$undef BOOL}
{$undef INT32}
{$undef ATOM}
{$undef FreeResource}
{$undef CreateWindowA}
{$undef RT_FONT}
{$undef RT_CURSOR}

  wBOOL = WINBOOL;  
{$ifdef _XFree86Server}
{$define XFree86Server}
{$undef _XFree86Server}
{$endif}

implementation


end.
