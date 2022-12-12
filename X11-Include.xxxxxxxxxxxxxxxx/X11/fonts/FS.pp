
unit FS;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/fonts/FS.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/fonts/FS.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/fonts/FS.pp
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
PFSDrawDirection  = ^FSDrawDirection;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _FS_H_}
{$define _FS_H_}
{$include <X11/Xdefs.h>}
{$include <X11/fonts/fsmasks.h>}

const
  FS_PROTOCOL = 2;  
  FS_PROTOCOL_MINOR = 0;  
{$ifndef X_PROTOCOL}


const
  FamilyInternet = 0;  
  FamilyDECnet = 1;  
  FamilyChaos = 2;  
  FamilyInternet6 = 6;  
type
  PFSDrawDirection = ^TFSDrawDirection;
  TFSDrawDirection = dword;
{$endif}
{$ifndef None}

const
  None = 0;  
{$endif}

const
  LeftToRightDrawDirection = 0;  
  RightToLeftDrawDirection = 1;  

  FontInfoAllCharsExist = 1 shl 0;  
  FontInfoInkInside = 1 shl 1;  
  FontInfoHorizontalOverlap = 1 shl 2;  

  AuthSuccess = 0;  
  AuthContinue = 1;  
  AuthBusy = 2;  
  AuthDenied = 3;  

  PropTypeString = 0;  
  PropTypeUnsigned = 1;  
  PropTypeSigned = 2;  
{$ifndef LSBFirst}


const
  LSBFirst = 0;  
  MSBFirst = 1;  
{$endif}


const
  CatalogueChangeNotifyMask = 1 shl 0;  
  FontChangeNotifyMask = 1 shl 1;  

  FSSuccess = -(1);  
  FSBadRequest = 0;  
  FSBadFormat = 1;  
  FSBadFont = 2;  
  FSBadRange = 3;  
  FSBadEventMask = 4;  
  FSBadAccessContext = 5;  
  FSBadIDChoice = 6;  
  FSBadName = 7;  
  FSBadResolution = 8;  
  FSBadAlloc = 9;  
  FSBadLength = 10;  
  FSBadImplementation = 11;  
  FirstExtensionError = 128;  
  LastExtensionError = 255;  

  KeepAlive = 0;  
  CatalogueChangeNotify = 1;  
  FontChangeNotify = 2;  
  FSLASTEvent = 3;  
{$endif}


implementation


end.
