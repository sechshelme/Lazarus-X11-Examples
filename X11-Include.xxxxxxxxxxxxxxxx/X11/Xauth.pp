
unit Xauth;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xauth.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xauth.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xauth.pp
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
    Pchar  = ^char;
    PFILE  = ^FILE;
    Pxauth  = ^xauth;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _Xauth_h}
{$define _Xauth_h}

{$ifdef __clang__}
{$endif}
type
  Pxauth = ^Txauth;
  Txauth = record
      family : word;
      address_length : word;
      address : Pchar;
      number_length : word;
      number : Pchar;
      name_length : word;
      name : Pchar;
      data_length : word;
      data : Pchar;
    end;
{$ifdef __clang__}
{$endif}
{$ifndef _XAUTH_STRUCT_ONLY}
{$include   <X11/Xfuncproto.h>}
{$include   <X11/Xfuncs.h>}
{$include   <stdio.h>}


const
  FamilyLocal = 256;  
  FamilyWild = 65535;  

  FamilyNetname = 254;  

  FamilyKrb5Principal = 253;  

  FamilyLocalHost = 252;  
(* error 
char *XauFileName(void);
in declaration at line 70 *)


function XauReadAuth(para1:PFILE):PXauth;cdecl;external;
(* error 
_Xconst char*	/* file_name */,
(* error 
int		/* retries */,
(* error 
int		/* timeout */,
(* error 
long		/* dead */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
_Xconst char*	/* file_name */

 in declarator_list *)

function XauWriteAuth(para1:PFILE; para2:PXauth):longint;cdecl;external;
{$if NeedWidePrototypes}
{$else}
{$endif}
(* error 
_Xconst char*	/* address */,
{$if NeedWidePrototypes}
(* error 
unsigned int	/* number_length */,
{$else}
(* error 
unsigned short	/* number_length */,
{$endif}
(* error 
_Xconst char*	/* number */,
{$if NeedWidePrototypes}
(* error 
unsigned int	/* name_length */,
{$else}
(* error 
unsigned short	/* name_length */,
{$endif}
(* error 
_Xconst char*	/* name */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
{$if NeedWidePrototypes}
{$else}
{$endif}
(* error 
_Xconst char*	/* address */,
{$if NeedWidePrototypes}
(* error 
unsigned int	/* number_length */,
{$else}
(* error 
unsigned short	/* number_length */,
{$endif}
(* error 
_Xconst char*	/* number */,
(* error 
int		/* types_length */,
(* error 
char**		/* type_names */,
(* error 
_Xconst int*	/* type_lengths */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)


procedure XauDisposeAuth(para1:PXauth);cdecl;external;

(* error 
# define LOCK_SUCCESS	0	/* lock succeeded */

in define line 143 *)

    const
      LOCK_ERROR = 1;      

      LOCK_TIMEOUT = 2;      
{$endif}

{$endif}


implementation


end.
