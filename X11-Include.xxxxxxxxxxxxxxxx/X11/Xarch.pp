
unit Xarch;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xarch.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xarch.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xarch.pp
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


{$ifndef _XARCH_H_}
{$define _XARCH_H_}



{$ifdef X_BYTE_ORDER}

const
  X_BIG_ENDIAN = 4321;  
  X_LITTLE_ENDIAN = 1234;  
{$else}
{$if defined(SVR4) || defined(__SVR4)}
{$include <sys/types.h>}
{$include <sys/byteorder.h>}
{$else defined(CSRG_BASED)}
{$if defined(__NetBSD__) || defined(__OpenBSD__)}
{$include <sys/types.h>}
{$endif}
{$include <machine/endian.h>}
{$else defined(linux)}
{$if defined __STRICT_ANSI__}
{$undef __STRICT_ANSI__}
{$include <endian.h>}
{$define __STRICT_ANSI__}
{$else}
{$include <endian.h>}
{$endif}

{$if !defined(LITTLE_ENDIAN) && defined(__LITTLE_ENDIAN)}

const
  LITTLE_ENDIAN = __LITTLE_ENDIAN;  
{$endif}
{$if !defined(BIG_ENDIAN) && defined(__BIG_ENDIAN)}

const
  BIG_ENDIAN = __BIG_ENDIAN;  
{$endif}
{$if !defined(PDP_ENDIAN) && defined(__PDP_ENDIAN)}

const
  PDP_ENDIAN = __PDP_ENDIAN;  
{$endif}
{$if !defined(BYTE_ORDER) && defined(__BYTE_ORDER)}

const
  BYTE_ORDER = __BYTE_ORDER;  
{$endif}
{$endif}
{$ifndef BYTE_ORDER}

const
  LITTLE_ENDIAN = 1234;  
  BIG_ENDIAN = 4321;  
{$if defined(__sun) && defined(__SVR4)}
{$include <sys/isa_defs.h>}
{$ifdef _LITTLE_ENDIAN}

const
  BYTE_ORDER = LITTLE_ENDIAN;  
{$endif}
{$ifdef _BIG_ENDIAN}

const
  BYTE_ORDER = BIG_ENDIAN;  
{$endif}
{$endif}

{$endif}


const
  X_BYTE_ORDER = BYTE_ORDER;  
  X_BIG_ENDIAN = BIG_ENDIAN;  
  X_LITTLE_ENDIAN = LITTLE_ENDIAN;  
{$endif}

{$endif}


implementation


end.
