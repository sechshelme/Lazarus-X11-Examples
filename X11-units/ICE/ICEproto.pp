
unit ICEproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/ICE/ICEproto.h
  The following command line parameters were used:
    /usr/include/X11/ICE/ICEproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/ICE/ICEproto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _ICEPROTO_H_}
{$define _ICEPROTO_H_}  
{$include <X11/Xmd.h>}

  type
    iceMsg = record
        majorOpcode : CARD8;
        minorOpcode : CARD8;
        data : array[0..1] of CARD8;
        length : CARD32;
      end;



    iceErrorMsg = record
        majorOpcode : CARD8;
        minorOpcode : CARD8;
        errorClass : CARD16;
        length : CARD32;
        offendingMinorOpcode : CARD8;
        severity : CARD8;
        unused : CARD16;
        offendingSequenceNum : CARD32;
      end;

    iceByteOrderMsg = record
        majorOpcode : CARD8;
        minorOpcode : CARD8;
        byteOrder : CARD8;
        unused : CARD8;
        length : CARD32;
      end;






    iceConnectionSetupMsg = record
        majorOpcode : CARD8;
        minorOpcode : CARD8;
        versionCount : CARD8;
        authCount : CARD8;
        length : CARD32;
        mustAuthenticate : CARD8;
        unused : array[0..6] of CARD8;
      end;



    iceAuthRequiredMsg = record
        majorOpcode : CARD8;
        minorOpcode : CARD8;
        authIndex : CARD8;
        unused1 : CARD8;
        length : CARD32;
        authDataLength : CARD16;
        unused2 : array[0..5] of CARD8;
      end;



    iceAuthReplyMsg = record
        majorOpcode : CARD8;
        minorOpcode : CARD8;
        unused1 : array[0..1] of CARD8;
        length : CARD32;
        authDataLength : CARD16;
        unused2 : array[0..5] of CARD8;
      end;



    iceAuthNextPhaseMsg = record
        majorOpcode : CARD8;
        minorOpcode : CARD8;
        unused1 : array[0..1] of CARD8;
        length : CARD32;
        authDataLength : CARD16;
        unused2 : array[0..5] of CARD8;
      end;




    iceConnectionReplyMsg = record
        majorOpcode : CARD8;
        minorOpcode : CARD8;
        versionIndex : CARD8;
        unused : CARD8;
        length : CARD32;
      end;







    iceProtocolSetupMsg = record
        majorOpcode : CARD8;
        minorOpcode : CARD8;
        protocolOpcode : CARD8;
        mustAuthenticate : CARD8;
        length : CARD32;
        versionCount : CARD8;
        authCount : CARD8;
        unused : array[0..5] of CARD8;
      end;




    iceProtocolReplyMsg = record
        majorOpcode : CARD8;
        minorOpcode : CARD8;
        versionIndex : CARD8;
        protocolOpcode : CARD8;
        length : CARD32;
      end;

    icePingMsg = iceMsg;

    icePingReplyMsg = iceMsg;

    iceWantToCloseMsg = iceMsg;

    iceNoCloseMsg = iceMsg;


  const
    sz_iceMsg = 8;    
    sz_iceErrorMsg = 16;    
    sz_iceByteOrderMsg = 8;    
    sz_iceConnectionSetupMsg = 16;    
    sz_iceAuthRequiredMsg = 16;    
    sz_iceAuthReplyMsg = 16;    
    sz_iceAuthNextPhaseMsg = 16;    
    sz_iceConnectionReplyMsg = 8;    
    sz_iceProtocolSetupMsg = 16;    
    sz_iceProtocolReplyMsg = 8;    
    sz_icePingMsg = 8;    
    sz_icePingReplyMsg = 8;    
    sz_iceWantToCloseMsg = 8;    
    sz_iceNoCloseMsg = 8;    
{$endif}


implementation


end.
