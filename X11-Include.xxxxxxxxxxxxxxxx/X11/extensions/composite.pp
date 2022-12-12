
unit composite;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/composite.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/composite.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/composite.pp
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




{$ifndef _COMPOSITE_H_}
{$define _COMPOSITE_H_}
{$include <X11/extensions/xfixeswire.h>}

const
  COMPOSITE_NAME = 'Composite';  
  COMPOSITE_MAJOR = 0;  
  COMPOSITE_MINOR = 4;  
  CompositeRedirectAutomatic = 0;  
  CompositeRedirectManual = 1;  
  X_CompositeQueryVersion = 0;  
  X_CompositeRedirectWindow = 1;  
  X_CompositeRedirectSubwindows = 2;  
  X_CompositeUnredirectWindow = 3;  
  X_CompositeUnredirectSubwindows = 4;  
  X_CompositeCreateRegionFromBorderClip = 5;  
  X_CompositeNameWindowPixmap = 6;  
  X_CompositeGetOverlayWindow = 7;  
  X_CompositeReleaseOverlayWindow = 8;  
  CompositeNumberRequests = X_CompositeReleaseOverlayWindow+1;  
  CompositeNumberEvents = 0;  
{$endif}


implementation


end.
