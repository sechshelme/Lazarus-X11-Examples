
unit xtestext1const;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/xtestext1const.h
  The following command line parameters were used:
    /usr/include/X11/extensions/xtestext1const.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/xtestext1const.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XTESTEXT1CONST_H}

  const
    _XTESTEXT1CONST_H = 1;    
    XTestMAX_ACTION_LIST_SIZE = 64;    
    XTestACTIONS_SIZE = 28;    

(* error 
#define XTestPRESS                      1 << 0
in define line 64 *)
(* error 
#define XTestRELEASE                    1 << 1
in define line 65 *)
(* error 
#define XTestSTROKE                     1 << 2
in define line 66 *)

      XTestSTROKE_DELAY_TIME = 10;      

(* error 
#define XTestEXCLUSIVE                  1 << 0
in define line 79 *)
(* error 
#define XTestPACKED_ACTIONS             1 << 1
in define line 80 *)
(* error 
#define XTestPACKED_MOTION              1 << 2
in define line 81 *)

      XTestFAKE_ACK_NOT_NEEDED = 0;      
      XTestFAKE_ACK_REQUEST = 1;      

      XTestEXTENSION_NAME = 'XTestExtension1';      
      XTestEVENT_COUNT = 2;      


      XTestACTION_TYPE_MASK = $03;      

      XTestKEY_STATE_MASK = $04;      

      XTestX_SIGN_BIT_MASK = $04;      

      XTestY_SIGN_BIT_MASK = $08;      

      XTestDEVICE_ID_MASK = $f0;      
      XTestMAX_DEVICE_ID = $0f;      

    function XTestPackDeviceID(x : longint) : longint;    

  function XTestUnpackDeviceID(x : longint) : longint;  


  const
    XTestDELAY_ACTION = 0;    
    XTestKEY_ACTION = 1;    
    XTestMOTION_ACTION = 2;    
    XTestJUMP_ACTION = 3;    

    XTestKEY_UP = $04;    
    XTestKEY_DOWN = $00;    

    XTestMOTION_MAX = 15;    
    XTestMOTION_MIN = -(15);    
    XTestX_NEGATIVE = $04;    
    XTestY_NEGATIVE = $08;    
    XTestX_MOTION_MASK = $0f;    
    XTestY_MOTION_MASK = $f0;    

  function XTestPackXMotionValue(x : longint) : x;  

  function XTestPackYMotionValue(x : longint) : longint;  

  function XTestUnpackXMotionValue(x : longint) : x;  

  function XTestUnpackYMotionValue(x : longint) : longint;  


  const
    XTestSHORT_DELAY_TIME = $ffff;    
    XTestDELAY_DEVICE_ID = $0f;    
{$endif}


implementation

    function XTestPackDeviceID(x : longint) : longint;
    begin
      XTestPackDeviceID:=(x(@(XTestMAX_DEVICE_ID))) shl 4;
    end;

  function XTestUnpackDeviceID(x : longint) : longint;
  begin
    XTestUnpackDeviceID:=(x(@(XTestDEVICE_ID_MASK))) shr 4;
  end;

  function XTestPackXMotionValue(x : longint) : x;
  begin
    XTestPackXMotionValue:=x(@(XTestX_MOTION_MASK));
  end;

  function XTestPackYMotionValue(x : longint) : longint;
  begin
    XTestPackYMotionValue:=(x shl 4) and XTestY_MOTION_MASK;
  end;

  function XTestUnpackXMotionValue(x : longint) : x;
  begin
    XTestUnpackXMotionValue:=x(@(XTestX_MOTION_MASK));
  end;

  function XTestUnpackYMotionValue(x : longint) : longint;
  begin
    XTestUnpackYMotionValue:=(x(@(XTestY_MOTION_MASK))) shr 4;
  end;


end.
