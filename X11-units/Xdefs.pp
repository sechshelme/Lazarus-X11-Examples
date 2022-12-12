
unit Xdefs;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xdefs.h
  The following command line parameters were used:
    /usr/include/X11/Xdefs.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xdefs.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XDEFS_H}
{$define _XDEFS_H}  
{$ifdef _XSERVER64}
{$include <X11/Xmd.h>}
{$endif}
{$ifndef _XTYPEDEF_ATOM}
{$define _XTYPEDEF_ATOM}  
{$ifndef _XSERVER64}

  type
    Atom = dword;
{$else}

  type
    Atom = CARD32;
{$endif}
{$endif}
{$ifndef Bool}
{$ifndef _XTYPEDEF_BOOL}
{$define _XTYPEDEF_BOOL}  

  type
    Bool = longint;
{$endif}
{$endif}
{$ifndef _XTYPEDEF_POINTER}
{$define _XTYPEDEF_POINTER}  

  type
    pointer = pointer;
{$endif}
{$ifndef _XTYPEDEF_CLIENTPTR}

  type
    ClientPtr = ^_Client;
{$define _XTYPEDEF_CLIENTPTR}  
{$endif}
{$ifndef _XTYPEDEF_XID}
{$define _XTYPEDEF_XID}  
{$ifndef _XSERVER64}

  type
    XID = dword;
{$else}

  type
    XID = CARD32;
{$endif}
{$endif}
{$ifndef _XTYPEDEF_MASK}
{$define _XTYPEDEF_MASK}  
{$ifndef _XSERVER64}

  type
    Mask = dword;
{$else}

  type
    Mask = CARD32;
{$endif}
{$endif}
{$ifndef _XTYPEDEF_FONTPTR}
{$define _XTYPEDEF_FONTPTR}  

  type
    FontPtr = ^_Font;

{$endif}
{$ifndef _XTYPEDEF_FONT}
{$define _XTYPEDEF_FONT}  

  type
    Font = XID;
{$endif}
{$ifndef _XTYPEDEF_FSID}
{$ifndef _XSERVER64}

  type
    FSID = dword;
{$else}

  type
    FSID = CARD32;
{$endif}
{$endif}

  type
    AccContext = FSID;


    OSTimePtr = ^^timeval;

    BlockHandlerProcPtr = procedure (_para1:pointer; _para2:OSTimePtr; _para3:pointer);cdecl;
{$endif}

implementation


end.
