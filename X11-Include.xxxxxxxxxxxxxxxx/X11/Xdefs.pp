
unit Xdefs;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xdefs.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xdefs.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xdefs.pp
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
PAccContext  = ^AccContext;
PAtom  = ^Atom;
PBool  = ^Bool;
PClient  = ^Client;
PClientPtr  = ^ClientPtr;
PFont  = ^Font;
PFontPtr  = ^FontPtr;
PFSID  = ^FSID;
PMask  = ^Mask;
POSTimePtr  = ^OSTimePtr;
Ppointer  = ^pointer;
Ptimeval  = ^timeval;
PXID  = ^XID;
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
  PAtom = ^TAtom;
  TAtom = dword;
{$else}
type
  PAtom = ^TAtom;
  TAtom = TCARD32;
{$endif}
{$endif}
{$ifndef Bool}
{$ifndef _XTYPEDEF_BOOL}
{$define _XTYPEDEF_BOOL}
type
  PBool = ^TBool;
  TBool = longint;
{$endif}
{$endif}
{$ifndef _XTYPEDEF_POINTER}
{$define _XTYPEDEF_POINTER}
type
  Ppointer = ^Tpointer;
  Tpointer = pointer;
{$endif}
{$ifndef _XTYPEDEF_CLIENTPTR}
type
  PClientPtr = ^TClientPtr;
  TClientPtr = PClient;
{$define _XTYPEDEF_CLIENTPTR}
{$endif}
{$ifndef _XTYPEDEF_XID}
{$define _XTYPEDEF_XID}
{$ifndef _XSERVER64}
type
  PXID = ^TXID;
  TXID = dword;
{$else}
type
  PXID = ^TXID;
  TXID = TCARD32;
{$endif}
{$endif}
{$ifndef _XTYPEDEF_MASK}
{$define _XTYPEDEF_MASK}
{$ifndef _XSERVER64}
type
  PMask = ^TMask;
  TMask = dword;
{$else}
type
  PMask = ^TMask;
  TMask = TCARD32;
{$endif}
{$endif}
{$ifndef _XTYPEDEF_FONTPTR}
{$define _XTYPEDEF_FONTPTR}
type
  PFontPtr = ^TFontPtr;
  TFontPtr = PFont;

{$endif}
{$ifndef _XTYPEDEF_FONT}
{$define _XTYPEDEF_FONT}
type
  PFont = ^TFont;
  TFont = TXID;
{$endif}
{$ifndef _XTYPEDEF_FSID}
{$ifndef _XSERVER64}
type
  PFSID = ^TFSID;
  TFSID = dword;
{$else}
type
  PFSID = ^TFSID;
  TFSID = TCARD32;
{$endif}
{$endif}
type
  PAccContext = ^TAccContext;
  TAccContext = TFSID;


  POSTimePtr = ^TOSTimePtr;
  TOSTimePtr = ^Ptimeval;

  TBlockHandlerProcPtr = procedure (para1:pointer; para2:TOSTimePtr; para3:pointer);cdecl;
{$endif}

implementation


end.
