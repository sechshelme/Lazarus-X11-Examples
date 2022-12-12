
unit SMproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/SM/SMproto.h
  The following command line parameters were used:
    /usr/include/X11/SM/SMproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/SM/SMproto.pp
}

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
    smRegisterClientMsg = record
        majorOpcode : CARD8;
        minorOpcode : CARD8;
        unused : array[0..1] of CARD8;
;
      end;
(* error 
    CARD32	length B32;
 in declarator_list *)


    smRegisterClientReplyMsg = record
        majorOpcode : CARD8;
        minorOpcode : CARD8;
        unused : array[0..1] of CARD8;
;
      end;
(* error 
    CARD32	length B32;
 in declarator_list *)

    smSaveYourselfMsg = record
        majorOpcode : CARD8;
        minorOpcode : CARD8;
        unused1 : array[0..1] of CARD8;
;
        saveType : CARD8;
        shutdown : CARD8;
        interactStyle : CARD8;
        fast : CARD8;
        unused2 : array[0..3] of CARD8;
      end;
(* error 
    CARD32	length B32;
 in declarator_list *)

    smSaveYourselfRequestMsg = record
        majorOpcode : CARD8;
        minorOpcode : CARD8;
        unused1 : array[0..1] of CARD8;
;
        saveType : CARD8;
        shutdown : CARD8;
        interactStyle : CARD8;
        fast : CARD8;
        global : CARD8;
        unused2 : array[0..2] of CARD8;
      end;
(* error 
    CARD32	length B32;
 in declarator_list *)

    smInteractRequestMsg = record
        majorOpcode : CARD8;
        minorOpcode : CARD8;
        dialogType : CARD8;
        unused : CARD8;
;
      end;
(* error 
    CARD32	length B32;
 in declarator_list *)

    smInteractMsg = record
        majorOpcode : CARD8;
        minorOpcode : CARD8;
        unused : array[0..1] of CARD8;
;
      end;
(* error 
    CARD32	length B32;
 in declarator_list *)

    smInteractDoneMsg = record
        majorOpcode : CARD8;
        minorOpcode : CARD8;
        cancelShutdown : CARD8;
        unused : CARD8;
;
      end;
(* error 
    CARD32	length B32;
 in declarator_list *)

    smSaveYourselfDoneMsg = record
        majorOpcode : CARD8;
        minorOpcode : CARD8;
        success : CARD8;
        unused : CARD8;
;
      end;
(* error 
    CARD32	length B32;
 in declarator_list *)

    smDieMsg = record
        majorOpcode : CARD8;
        minorOpcode : CARD8;
        unused : array[0..1] of CARD8;
;
      end;
(* error 
    CARD32	length B32;
 in declarator_list *)

    smShutdownCancelledMsg = record
        majorOpcode : CARD8;
        minorOpcode : CARD8;
        unused : array[0..1] of CARD8;
;
      end;
(* error 
    CARD32	length B32;
 in declarator_list *)


    smCloseConnectionMsg = record
        majorOpcode : CARD8;
        minorOpcode : CARD8;
        unused : array[0..1] of CARD8;
;
      end;
(* error 
    CARD32	length B32;
 in declarator_list *)


    smSetPropertiesMsg = record
        majorOpcode : CARD8;
        minorOpcode : CARD8;
        unused : array[0..1] of CARD8;
;
      end;
(* error 
    CARD32	length B32;
 in declarator_list *)


    smDeletePropertiesMsg = record
        majorOpcode : CARD8;
        minorOpcode : CARD8;
        unused : array[0..1] of CARD8;
;
      end;
(* error 
    CARD32	length B32;
 in declarator_list *)

    smGetPropertiesMsg = record
        majorOpcode : CARD8;
        minorOpcode : CARD8;
        unused : array[0..1] of CARD8;
;
      end;
(* error 
    CARD32	length B32;
 in declarator_list *)


    smPropertiesReplyMsg = record
        majorOpcode : CARD8;
        minorOpcode : CARD8;
        unused : array[0..1] of CARD8;
;
      end;
(* error 
    CARD32	length B32;
 in declarator_list *)

    smSaveYourselfPhase2RequestMsg = record
        majorOpcode : CARD8;
        minorOpcode : CARD8;
        unused : array[0..1] of CARD8;
;
      end;
(* error 
    CARD32	length B32;
 in declarator_list *)

    smSaveYourselfPhase2Msg = record
        majorOpcode : CARD8;
        minorOpcode : CARD8;
        unused : array[0..1] of CARD8;
;
      end;
(* error 
    CARD32	length B32;
 in declarator_list *)

    smSaveCompleteMsg = record
        majorOpcode : CARD8;
        minorOpcode : CARD8;
        unused : array[0..1] of CARD8;
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
