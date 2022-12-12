
unit xtestext1proto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/xtestext1proto.h
  The following command line parameters were used:
    /usr/include/X11/extensions/xtestext1proto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/xtestext1proto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XTESTEXT1PROTO_H}

  const
    _XTESTEXT1PROTO_H = 1;    
{$include <X11/extensions/xtestext1const.h>}



  const
    X_TestFakeInput = 1;    
    X_TestGetInput = 2;    
    X_TestStopInput = 3;    
    X_TestReset = 4;    
    X_TestQueryInputSize = 5;    





  type
    xTestFakeInputReq = record
        reqType : CARD8;
        XTestReqType : CARD8;
        length : CARD16;
        ack : CARD32;
        action_list : array[0..(XTestMAX_ACTION_LIST_SIZE)-1] of CARD8;
      end;

  const
    sz_xTestFakeInputReq = XTestMAX_ACTION_LIST_SIZE+8;    




  type
    xTestGetInputReq = record
        reqType : CARD8;
        XTestReqType : CARD8;
        length : CARD16;
        mode : CARD32;
      end;

  const
    sz_xTestGetInputReq = 8;    




  type
    xTestStopInputReq = record
        reqType : CARD8;
        XTestReqType : CARD8;
        length : CARD16;
      end;

  const
    sz_xTestStopInputReq = 4;    




  type
    xTestResetReq = record
        reqType : CARD8;
        XTestReqType : CARD8;
        length : CARD16;
      end;

  const
    sz_xTestResetReq = 4;    




  type
    xTestQueryInputSizeReq = record
        reqType : CARD8;
        XTestReqType : CARD8;
        length : CARD16;
      end;

  const
    sz_xTestQueryInputSizeReq = 4;    




  type
    xTestQueryInputSizeReply = record
        _type : CARD8;
        pad1 : CARD8;
        sequenceNumber : CARD16;
        length : CARD32;
        size_return : CARD32;
        pad2 : CARD32;
        pad3 : CARD32;
        pad4 : CARD32;
        pad5 : CARD32;
        pad6 : CARD32;
      end;



    xTestInputActionEvent = record
        _type : CARD8;
        pad00 : CARD8;
        sequenceNumber : CARD16;
        actions : array[0..(XTestACTIONS_SIZE)-1] of CARD8;
      end;



    xTestFakeAckEvent = record
        _type : CARD8;
        pad00 : CARD8;
        sequenceNumber : CARD16;
        pad02 : CARD32;
        pad03 : CARD32;
        pad04 : CARD32;
        pad05 : CARD32;
        pad06 : CARD32;
        pad07 : CARD32;
        pad08 : CARD32;
      end;





    XTestKeyInfo = record
        header : CARD8;
        keycode : CARD8;
        delay_time : CARD16;
      end;







    XTestJumpInfo = record
        header : CARD8;
        pad1 : CARD8;
        jumpx : CARD16;
        jumpy : CARD16;
        delay_time : CARD16;
      end;





    XTestMotionInfo = record
        header : CARD8;
        motion_data : CARD8;
        delay_time : CARD16;
      end;






    XTestDelayInfo = record
        header : CARD8;
        pad1 : CARD8;
        pad2 : CARD16;
        delay_time : CARD32;
      end;
{$endif}


implementation


end.
