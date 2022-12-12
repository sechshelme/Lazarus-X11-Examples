
unit fontproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/fonts/fontproto.h
  The following command line parameters were used:
    /usr/include/X11/fonts/fontproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/fonts/fontproto.pp
}

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

    function ClientSignal(client:ClientPtr):Bool;cdecl;

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

    function XpClientIsBitmapClient(client:ClientPtr):Bool;cdecl;

    function XpClientIsPrintClient(client:ClientPtr; fpe:FontPathElementPtr):Bool;cdecl;

    procedure PrinterFontRegisterFpeFunctions;cdecl;

    procedure fs_register_fpe_functions;cdecl;

    procedure check_fs_register_fpe_functions;cdecl;


    function CreateFontRec:FontPtr;cdecl;

    procedure DestroyFontRec(font:FontPtr);cdecl;

    function _FontSetNewPrivate(_para1:FontPtr; _para2:longint; _para3:pointer):Bool;cdecl;

    function AllocateFontPrivateIndex:longint;cdecl;

    procedure ResetFontPrivateIndex;cdecl;


    procedure Type1RegisterFontFileFunctions;cdecl;

    procedure CIDRegisterFontFileFunctions;cdecl;


    procedure SpeedoRegisterFontFileFunctions;cdecl;


    procedure FreeTypeRegisterFontFileFunctions;cdecl;

{$endif}

implementation


end.
