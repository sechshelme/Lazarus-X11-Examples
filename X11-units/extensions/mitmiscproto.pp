
unit mitmiscproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/mitmiscproto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/mitmiscproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/mitmiscproto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _MITMISCPROTO_H_}
{$define _MITMISCPROTO_H_}  
{$include <X11/extensions/mitmiscconst.h>}

  const
    X_MITSetBugMode = 0;    
    X_MITGetBugMode = 1;    



  type
    _SetBugMode = record
        reqType : CARD8;
        mitReqType : CARD8;
        length : CARD16;
        onOff : BOOL;
        pad0 : BYTE;
        pad1 : CARD16;
      end;
    xMITSetBugModeReq = _SetBugMode;

  const
    sz_xMITSetBugModeReq = 8;    



  type
    _GetBugMode = record
        reqType : CARD8;
        mitReqType : CARD8;
        length : CARD16;
      end;
    xMITGetBugModeReq = _GetBugMode;

  const
    sz_xMITGetBugModeReq = 4;    


  type
    xMITGetBugModeReply = record
        _type : BYTE;
        onOff : BOOL;
        sequenceNumber : CARD16;
        length : CARD32;
        pad0 : CARD32;
        pad1 : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
      end;

  const
    sz_xMITGetBugModeReply = 32;    
{$endif}


implementation


end.
