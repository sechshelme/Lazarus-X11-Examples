
unit SMproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/SM/SMproto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/SM/SMproto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/SM/SMproto.pp
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
PsmCloseConnectionMsg  = ^smCloseConnectionMsg;
PsmDeletePropertiesMsg  = ^smDeletePropertiesMsg;
PsmDieMsg  = ^smDieMsg;
PsmGetPropertiesMsg  = ^smGetPropertiesMsg;
PsmInteractDoneMsg  = ^smInteractDoneMsg;
PsmInteractMsg  = ^smInteractMsg;
PsmInteractRequestMsg  = ^smInteractRequestMsg;
PsmPropertiesReplyMsg  = ^smPropertiesReplyMsg;
PsmRegisterClientMsg  = ^smRegisterClientMsg;
PsmRegisterClientReplyMsg  = ^smRegisterClientReplyMsg;
PsmSaveCompleteMsg  = ^smSaveCompleteMsg;
PsmSaveYourselfDoneMsg  = ^smSaveYourselfDoneMsg;
PsmSaveYourselfMsg  = ^smSaveYourselfMsg;
PsmSaveYourselfPhase2Msg  = ^smSaveYourselfPhase2Msg;
PsmSaveYourselfPhase2RequestMsg  = ^smSaveYourselfPhase2RequestMsg;
PsmSaveYourselfRequestMsg  = ^smSaveYourselfRequestMsg;
PsmSetPropertiesMsg  = ^smSetPropertiesMsg;
PsmShutdownCancelledMsg  = ^smShutdownCancelledMsg;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _SMPROTO_H_}
{$define _SMPROTO_H_}
{$include <X11/Xmd.h>}
(* error 
    CARD32	length B32;
 in declarator_list *)

type
  PsmRegisterClientMsg = ^TsmRegisterClientMsg;
  TsmRegisterClientMsg = record
      majorOpcode : TCARD8;
      minorOpcode : TCARD8;
      unused : array[0..1] of TCARD8;
;
    end;
(* error 
    CARD32	length B32;
 in declarator_list *)


  PsmRegisterClientReplyMsg = ^TsmRegisterClientReplyMsg;
  TsmRegisterClientReplyMsg = record
      majorOpcode : TCARD8;
      minorOpcode : TCARD8;
      unused : array[0..1] of TCARD8;
;
    end;
(* error 
    CARD32	length B32;
 in declarator_list *)

  PsmSaveYourselfMsg = ^TsmSaveYourselfMsg;
  TsmSaveYourselfMsg = record
      majorOpcode : TCARD8;
      minorOpcode : TCARD8;
      unused1 : array[0..1] of TCARD8;
;
      saveType : TCARD8;
      shutdown : TCARD8;
      interactStyle : TCARD8;
      fast : TCARD8;
      unused2 : array[0..3] of TCARD8;
    end;
(* error 
    CARD32	length B32;
 in declarator_list *)

  PsmSaveYourselfRequestMsg = ^TsmSaveYourselfRequestMsg;
  TsmSaveYourselfRequestMsg = record
      majorOpcode : TCARD8;
      minorOpcode : TCARD8;
      unused1 : array[0..1] of TCARD8;
;
      saveType : TCARD8;
      shutdown : TCARD8;
      interactStyle : TCARD8;
      fast : TCARD8;
      global : TCARD8;
      unused2 : array[0..2] of TCARD8;
    end;
(* error 
    CARD32	length B32;
 in declarator_list *)

  PsmInteractRequestMsg = ^TsmInteractRequestMsg;
  TsmInteractRequestMsg = record
      majorOpcode : TCARD8;
      minorOpcode : TCARD8;
      dialogType : TCARD8;
      unused : TCARD8;
;
    end;
(* error 
    CARD32	length B32;
 in declarator_list *)

  PsmInteractMsg = ^TsmInteractMsg;
  TsmInteractMsg = record
      majorOpcode : TCARD8;
      minorOpcode : TCARD8;
      unused : array[0..1] of TCARD8;
;
    end;
(* error 
    CARD32	length B32;
 in declarator_list *)

  PsmInteractDoneMsg = ^TsmInteractDoneMsg;
  TsmInteractDoneMsg = record
      majorOpcode : TCARD8;
      minorOpcode : TCARD8;
      cancelShutdown : TCARD8;
      unused : TCARD8;
;
    end;
(* error 
    CARD32	length B32;
 in declarator_list *)

  PsmSaveYourselfDoneMsg = ^TsmSaveYourselfDoneMsg;
  TsmSaveYourselfDoneMsg = record
      majorOpcode : TCARD8;
      minorOpcode : TCARD8;
      success : TCARD8;
      unused : TCARD8;
;
    end;
(* error 
    CARD32	length B32;
 in declarator_list *)

  PsmDieMsg = ^TsmDieMsg;
  TsmDieMsg = record
      majorOpcode : TCARD8;
      minorOpcode : TCARD8;
      unused : array[0..1] of TCARD8;
;
    end;
(* error 
    CARD32	length B32;
 in declarator_list *)

  PsmShutdownCancelledMsg = ^TsmShutdownCancelledMsg;
  TsmShutdownCancelledMsg = record
      majorOpcode : TCARD8;
      minorOpcode : TCARD8;
      unused : array[0..1] of TCARD8;
;
    end;
(* error 
    CARD32	length B32;
 in declarator_list *)


  PsmCloseConnectionMsg = ^TsmCloseConnectionMsg;
  TsmCloseConnectionMsg = record
      majorOpcode : TCARD8;
      minorOpcode : TCARD8;
      unused : array[0..1] of TCARD8;
;
    end;
(* error 
    CARD32	length B32;
 in declarator_list *)


  PsmSetPropertiesMsg = ^TsmSetPropertiesMsg;
  TsmSetPropertiesMsg = record
      majorOpcode : TCARD8;
      minorOpcode : TCARD8;
      unused : array[0..1] of TCARD8;
;
    end;
(* error 
    CARD32	length B32;
 in declarator_list *)


  PsmDeletePropertiesMsg = ^TsmDeletePropertiesMsg;
  TsmDeletePropertiesMsg = record
      majorOpcode : TCARD8;
      minorOpcode : TCARD8;
      unused : array[0..1] of TCARD8;
;
    end;
(* error 
    CARD32	length B32;
 in declarator_list *)

  PsmGetPropertiesMsg = ^TsmGetPropertiesMsg;
  TsmGetPropertiesMsg = record
      majorOpcode : TCARD8;
      minorOpcode : TCARD8;
      unused : array[0..1] of TCARD8;
;
    end;
(* error 
    CARD32	length B32;
 in declarator_list *)


  PsmPropertiesReplyMsg = ^TsmPropertiesReplyMsg;
  TsmPropertiesReplyMsg = record
      majorOpcode : TCARD8;
      minorOpcode : TCARD8;
      unused : array[0..1] of TCARD8;
;
    end;
(* error 
    CARD32	length B32;
 in declarator_list *)

  PsmSaveYourselfPhase2RequestMsg = ^TsmSaveYourselfPhase2RequestMsg;
  TsmSaveYourselfPhase2RequestMsg = record
      majorOpcode : TCARD8;
      minorOpcode : TCARD8;
      unused : array[0..1] of TCARD8;
;
    end;
(* error 
    CARD32	length B32;
 in declarator_list *)

  PsmSaveYourselfPhase2Msg = ^TsmSaveYourselfPhase2Msg;
  TsmSaveYourselfPhase2Msg = record
      majorOpcode : TCARD8;
      minorOpcode : TCARD8;
      unused : array[0..1] of TCARD8;
;
    end;
(* error 
    CARD32	length B32;
 in declarator_list *)

  PsmSaveCompleteMsg = ^TsmSaveCompleteMsg;
  TsmSaveCompleteMsg = record
      majorOpcode : TCARD8;
      minorOpcode : TCARD8;
      unused : array[0..1] of TCARD8;
;
    end;


const
  sz_smRegisterClientMsg = 8;  
  sz_smRegisterClientReplyMsg = 8;  
  sz_smSaveYourselfMsg = 16;  
  sz_smSaveYourselfRequestMsg = 16;  
  sz_smInteractRequestMsg = 8;  
  sz_smInteractMsg = 8;  
  sz_smInteractDoneMsg = 8;  
  sz_smSaveYourselfDoneMsg = 8;  
  sz_smDieMsg = 8;  
  sz_smShutdownCancelledMsg = 8;  
  sz_smCloseConnectionMsg = 8;  
  sz_smSetPropertiesMsg = 8;  
  sz_smDeletePropertiesMsg = 8;  
  sz_smGetPropertiesMsg = 8;  
  sz_smPropertiesReplyMsg = 8;  
  sz_smSaveYourselfPhase2RequestMsg = 8;  
  sz_smSaveYourselfPhase2Msg = 8;  
  sz_smSaveCompleteMsg = 8;  
{$endif}


implementation


end.
