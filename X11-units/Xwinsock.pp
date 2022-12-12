
unit Xwinsock;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xwinsock.h
  The following command line parameters were used:
    /usr/include/X11/Xwinsock.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xwinsock.pp
}

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
