
unit xtestext1proto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xtestext1proto.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xtestext1proto.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/xtestext1proto.pp
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
PXTestDelayInfo  = ^XTestDelayInfo;
PxTestFakeAckEvent  = ^xTestFakeAckEvent;
PxTestFakeInputReq  = ^xTestFakeInputReq;
PxTestGetInputReq  = ^xTestGetInputReq;
PxTestInputActionEvent  = ^xTestInputActionEvent;
PXTestJumpInfo  = ^XTestJumpInfo;
PXTestKeyInfo  = ^XTestKeyInfo;
PXTestMotionInfo  = ^XTestMotionInfo;
PxTestQueryInputSizeReply  = ^xTestQueryInputSizeReply;
PxTestQueryInputSizeReq  = ^xTestQueryInputSizeReq;
PxTestResetReq  = ^xTestResetReq;
PxTestStopInputReq  = ^xTestStopInputReq;
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
  PxTestFakeInputReq = ^TxTestFakeInputReq;
  TxTestFakeInputReq = record
      reqType : TCARD8;
      XTestReqType : TCARD8;
      length : TCARD16;
      ack : TCARD32;
      action_list : array[0..(XTestMAX_ACTION_LIST_SIZE)-1] of TCARD8;
    end;

const
  sz_xTestFakeInputReq = XTestMAX_ACTION_LIST_SIZE+8;  



type
  PxTestGetInputReq = ^TxTestGetInputReq;
  TxTestGetInputReq = record
      reqType : TCARD8;
      XTestReqType : TCARD8;
      length : TCARD16;
      mode : TCARD32;
    end;

const
  sz_xTestGetInputReq = 8;  



type
  PxTestStopInputReq = ^TxTestStopInputReq;
  TxTestStopInputReq = record
      reqType : TCARD8;
      XTestReqType : TCARD8;
      length : TCARD16;
    end;

const
  sz_xTestStopInputReq = 4;  



type
  PxTestResetReq = ^TxTestResetReq;
  TxTestResetReq = record
      reqType : TCARD8;
      XTestReqType : TCARD8;
      length : TCARD16;
    end;

const
  sz_xTestResetReq = 4;  



type
  PxTestQueryInputSizeReq = ^TxTestQueryInputSizeReq;
  TxTestQueryInputSizeReq = record
      reqType : TCARD8;
      XTestReqType : TCARD8;
      length : TCARD16;
    end;

const
  sz_xTestQueryInputSizeReq = 4;  



type
  PxTestQueryInputSizeReply = ^TxTestQueryInputSizeReply;
  TxTestQueryInputSizeReply = record
      _type : TCARD8;
      pad1 : TCARD8;
      sequenceNumber : TCARD16;
      length : TCARD32;
      size_return : TCARD32;
      pad2 : TCARD32;
      pad3 : TCARD32;
      pad4 : TCARD32;
      pad5 : TCARD32;
      pad6 : TCARD32;
    end;



  PxTestInputActionEvent = ^TxTestInputActionEvent;
  TxTestInputActionEvent = record
      _type : TCARD8;
      pad00 : TCARD8;
      sequenceNumber : TCARD16;
      actions : array[0..(XTestACTIONS_SIZE)-1] of TCARD8;
    end;



  PxTestFakeAckEvent = ^TxTestFakeAckEvent;
  TxTestFakeAckEvent = record
      _type : TCARD8;
      pad00 : TCARD8;
      sequenceNumber : TCARD16;
      pad02 : TCARD32;
      pad03 : TCARD32;
      pad04 : TCARD32;
      pad05 : TCARD32;
      pad06 : TCARD32;
      pad07 : TCARD32;
      pad08 : TCARD32;
    end;





  PXTestKeyInfo = ^TXTestKeyInfo;
  TXTestKeyInfo = record
      header : TCARD8;
      keycode : TCARD8;
      delay_time : TCARD16;
    end;







  PXTestJumpInfo = ^TXTestJumpInfo;
  TXTestJumpInfo = record
      header : TCARD8;
      pad1 : TCARD8;
      jumpx : TCARD16;
      jumpy : TCARD16;
      delay_time : TCARD16;
    end;





  PXTestMotionInfo = ^TXTestMotionInfo;
  TXTestMotionInfo = record
      header : TCARD8;
      motion_data : TCARD8;
      delay_time : TCARD16;
    end;






  PXTestDelayInfo = ^TXTestDelayInfo;
  TXTestDelayInfo = record
      header : TCARD8;
      pad1 : TCARD8;
      pad2 : TCARD16;
      delay_time : TCARD32;
    end;
{$endif}


implementation


end.
