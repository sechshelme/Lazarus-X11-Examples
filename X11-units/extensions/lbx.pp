
unit lbx;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/lbx.h
  The following command line parameters were used:
    /usr/include/X11/extensions/lbx.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/lbx.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _LBX_H_}
{$define _LBX_H_}  

  const
    LBXNAME = 'LBX';    
    LBX_MAJOR_VERSION = 1;    
    LBX_MINOR_VERSION = 0;    
    LbxNumberReqs = 44;    
    LbxEvent = 0;    
    LbxQuickMotionDeltaEvent = 1;    
    LbxNumberEvents = 2;    

    LbxMasterClientIndex = 0;    

    LbxSwitchEvent = 0;    
    LbxCloseEvent = 1;    
    LbxDeltaEvent = 2;    
    LbxInvalidateTagEvent = 3;    
    LbxSendTagDataEvent = 4;    
    LbxListenToOne = 5;    
    LbxListenToAll = 6;    
    LbxMotionDeltaEvent = 7;    
    LbxReleaseCmapEvent = 8;    
    LbxFreeCellsEvent = 9;    

    LbxImageCompressNone = 0;    
    BadLbxClient = 0;    
    LbxNumberErrors = BadLbxClient+1;    

    LbxTagTypeModmap = 1;    
    LbxTagTypeKeymap = 2;    
    LbxTagTypeProperty = 3;    
    LbxTagTypeFont = 4;    
    LbxTagTypeConnInfo = 5;    
{$endif}

implementation


end.
