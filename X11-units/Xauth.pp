
unit Xauth;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xauth.h
  The following command line parameters were used:
    /usr/include/X11/Xauth.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xauth.pp
}

    Type
    PFILE  = ^FILE;
    PXauth  = ^Xauth;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _Xauth_h}
{$define _Xauth_h}  

{$ifdef __clang__}
{$endif}

  type
    xauth = record
        family : word;
        address_length : word;
        address : ^char;
        number_length : word;
        number : ^char;
        name_length : word;
        name : ^char;
        data_length : word;
        data : ^char;
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


    function XauReadAuth(_para1:PFILE):^Xauth;

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

    function XauWriteAuth(_para1:PFILE; _para2:PXauth):longint;

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


    procedure XauDisposeAuth(_para1:PXauth);


(* error 
# define LOCK_SUCCESS	0	/* lock succeeded */

in define line 143 *)

    const
      LOCK_ERROR = 1;      

      LOCK_TIMEOUT = 2;      
{$endif}

{$endif}


implementation

    function XauReadAuth(_para1:PFILE):PXauth;
    begin
      { You must implement this function }
    end;
    function XauWriteAuth(_para1:PFILE; _para2:PXauth):longint;
    begin
      { You must implement this function }
    end;
    procedure XauDisposeAuth(_para1:PXauth);
    begin
      { You must implement this function }
    end;

end.
