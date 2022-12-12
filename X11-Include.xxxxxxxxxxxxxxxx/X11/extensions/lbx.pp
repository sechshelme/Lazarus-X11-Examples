
unit lbx;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/lbx.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/lbx.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/lbx.pp
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
