
unit fontproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/fonts/fontproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/fonts/fontproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/fonts/fontproto.pp
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



{$ifndef _FONTPROTO_H}
{$define _FONTPROTO_H}
{$include <X11/Xfuncproto.h>}

(* error 
extern _X_EXPORT int RegisterFPEFunctions (
in declaration at line 45 *)
(* error 
extern _X_EXPORT int GetDefaultPointSize ( void );
in declaration at line 47 *)
(* error 
extern _X_EXPORT int init_fs_handlers ( FontPathElementPtr fpe,
in declaration at line 50 *)
(* error 
extern _X_EXPORT void remove_fs_handlers ( FontPathElementPtr fpe,
in declaration at line 53 *)
(* error 
extern _X_EXPORT int client_auth_generation ( ClientPtr client );
in declaration at line 55 *)
{$ifndef ___CLIENTSIGNAL_DEFINED___}
{$define ___CLIENTSIGNAL_DEFINED___}    

function ClientSignal(client:TClientPtr):TBool;cdecl;external;
{$endif}

(* error 
extern _X_EXPORT void DeleteFontClientID ( Font id );
in declaration at line 62 *)
(* error 
extern _X_EXPORT Font GetNewFontClientID ( void );
 in declarator_list *)
(* error 
extern _X_EXPORT int StoreFontClientFont ( FontPtr pfont, Font id );
in declaration at line 64 *)
(* error 
extern _X_EXPORT void FontFileRegisterFpeFunctions ( void );
in declaration at line 65 *)
(* error 
extern _X_EXPORT void FontFileCheckRegisterFpeFunctions ( void );
in declaration at line 66 *)

function XpClientIsBitmapClient(client:TClientPtr):TBool;cdecl;external;
function XpClientIsPrintClient(client:TClientPtr; fpe:TFontPathElementPtr):TBool;cdecl;external;
procedure PrinterFontRegisterFpeFunctions;cdecl;external;
procedure fs_register_fpe_functions;cdecl;external;
procedure check_fs_register_fpe_functions;cdecl;external;

function CreateFontRec:TFontPtr;cdecl;external;
procedure DestroyFontRec(font:TFontPtr);cdecl;external;
function _FontSetNewPrivate(para1:TFontPtr; para2:longint; para3:pointer):TBool;cdecl;external;
function AllocateFontPrivateIndex:longint;cdecl;external;
procedure ResetFontPrivateIndex;cdecl;external;

procedure Type1RegisterFontFileFunctions;cdecl;external;
procedure CIDRegisterFontFileFunctions;cdecl;external;

procedure SpeedoRegisterFontFileFunctions;cdecl;external;

procedure FreeTypeRegisterFontFileFunctions;cdecl;external;
{$endif}

implementation


end.
