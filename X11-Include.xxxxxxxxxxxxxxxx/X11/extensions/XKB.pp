
unit XKB;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XKB.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XKB.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XKB.pp
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



{$ifndef _XKB_H_}
{$define _XKB_H_}


const
  X_kbUseExtension = 0;  
  X_kbSelectEvents = 1;  
  X_kbBell = 3;  
  X_kbGetState = 4;  
  X_kbLatchLockState = 5;  
  X_kbGetControls = 6;  
  X_kbSetControls = 7;  
  X_kbGetMap = 8;  
  X_kbSetMap = 9;  
  X_kbGetCompatMap = 10;  
  X_kbSetCompatMap = 11;  
  X_kbGetIndicatorState = 12;  
  X_kbGetIndicatorMap = 13;  
  X_kbSetIndicatorMap = 14;  
  X_kbGetNamedIndicator = 15;  
  X_kbSetNamedIndicator = 16;  
  X_kbGetNames = 17;  
  X_kbSetNames = 18;  
  X_kbGetGeometry = 19;  
  X_kbSetGeometry = 20;  
  X_kbPerClientFlags = 21;  
  X_kbListComponents = 22;  
  X_kbGetKbdByName = 23;  
  X_kbGetDeviceInfo = 24;  
  X_kbSetDeviceInfo = 25;  
  X_kbSetDebuggingFlags = 101;  

  XkbEventCode = 0;  
  XkbNumberEvents = XkbEventCode+1;  

  XkbNewKeyboardNotify = 0;  
  XkbMapNotify = 1;  
  XkbStateNotify = 2;  
  XkbControlsNotify = 3;  
  XkbIndicatorStateNotify = 4;  
  XkbIndicatorMapNotify = 5;  
  XkbNamesNotify = 6;  
  XkbCompatMapNotify = 7;  
  XkbBellNotify = 8;  
  XkbActionMessage = 9;  
  XkbAccessXNotify = 10;  
  XkbExtensionDeviceNotify = 11;  

  XkbNewKeyboardNotifyMask = 1 shl 0;  
  XkbMapNotifyMask = 1 shl 1;  
  XkbStateNotifyMask = 1 shl 2;  
  XkbControlsNotifyMask = 1 shl 3;  
  XkbIndicatorStateNotifyMask = 1 shl 4;  
  XkbIndicatorMapNotifyMask = 1 shl 5;  
  XkbNamesNotifyMask = 1 shl 6;  
  XkbCompatMapNotifyMask = 1 shl 7;  
  XkbBellNotifyMask = 1 shl 8;  
  XkbActionMessageMask = 1 shl 9;  
  XkbAccessXNotifyMask = 1 shl 10;  
  XkbExtensionDeviceNotifyMask = 1 shl 11;  
  XkbAllEventsMask = $FFF;  

  XkbNKN_KeycodesMask = 1 shl 0;  
  XkbNKN_GeometryMask = 1 shl 1;  
  XkbNKN_DeviceIDMask = 1 shl 2;  
  XkbAllNewKeyboardEventsMask = $7;  

  XkbAXN_SKPress = 0;  
  XkbAXN_SKAccept = 1;  
  XkbAXN_SKReject = 2;  
  XkbAXN_SKRelease = 3;  
  XkbAXN_BKAccept = 4;  
  XkbAXN_BKReject = 5;  
  XkbAXN_AXKWarning = 6;  

  XkbAXN_SKPressMask = 1 shl 0;  
  XkbAXN_SKAcceptMask = 1 shl 1;  
  XkbAXN_SKRejectMask = 1 shl 2;  
  XkbAXN_SKReleaseMask = 1 shl 3;  
  XkbAXN_BKAcceptMask = 1 shl 4;  
  XkbAXN_BKRejectMask = 1 shl 5;  
  XkbAXN_AXKWarningMask = 1 shl 6;  
  XkbAllAccessXEventsMask = $7f;  

  XkbAllStateEventsMask = XkbAllStateComponentsMask;  
  XkbAllMapEventsMask = XkbAllMapComponentsMask;  
  XkbAllControlEventsMask = XkbAllControlsMask;  
  XkbAllIndicatorEventsMask = XkbAllIndicatorsMask;  
  XkbAllNameEventsMask = XkbAllNamesMask;  
  XkbAllCompatMapEventsMask = XkbAllCompatMask;  
  XkbAllBellEventsMask = 1 shl 0;  
  XkbAllActionMessagesMask = 1 shl 0;  

  XkbKeyboard = 0;  
  XkbNumberErrors = 1;  
  XkbErr_BadDevice = $ff;  
  XkbErr_BadClass = $fe;  
  XkbErr_BadId = $fd;  

  XkbClientMapMask = 1 shl 0;  
  XkbServerMapMask = 1 shl 1;  
  XkbCompatMapMask = 1 shl 2;  
  XkbIndicatorMapMask = 1 shl 3;  
  XkbNamesMask = 1 shl 4;  
  XkbGeometryMask = 1 shl 5;  
  XkbControlsMask = 1 shl 6;  
  XkbAllComponentsMask = $7f;  

  XkbModifierStateMask = 1 shl 0;  
  XkbModifierBaseMask = 1 shl 1;  
  XkbModifierLatchMask = 1 shl 2;  
  XkbModifierLockMask = 1 shl 3;  
  XkbGroupStateMask = 1 shl 4;  
  XkbGroupBaseMask = 1 shl 5;  
  XkbGroupLatchMask = 1 shl 6;  
  XkbGroupLockMask = 1 shl 7;  
  XkbCompatStateMask = 1 shl 8;  
  XkbGrabModsMask = 1 shl 9;  
  XkbCompatGrabModsMask = 1 shl 10;  
  XkbLookupModsMask = 1 shl 11;  
  XkbCompatLookupModsMask = 1 shl 12;  
  XkbPointerButtonMask = 1 shl 13;  
  XkbAllStateComponentsMask = $3fff;  

  XkbRepeatKeysMask = 1 shl 0;  
  XkbSlowKeysMask = 1 shl 1;  
  XkbBounceKeysMask = 1 shl 2;  
  XkbStickyKeysMask = 1 shl 3;  
  XkbMouseKeysMask = 1 shl 4;  
  XkbMouseKeysAccelMask = 1 shl 5;  
  XkbAccessXKeysMask = 1 shl 6;  
  XkbAccessXTimeoutMask = 1 shl 7;  
  XkbAccessXFeedbackMask = 1 shl 8;  
  XkbAudibleBellMask = 1 shl 9;  
  XkbOverlay1Mask = 1 shl 10;  
  XkbOverlay2Mask = 1 shl 11;  
  XkbIgnoreGroupLockMask = 1 shl 12;  
  XkbGroupsWrapMask = 1 shl 27;  
  XkbInternalModsMask = 1 shl 28;  
  XkbIgnoreLockModsMask = 1 shl 29;  
  XkbPerKeyRepeatMask = 1 shl 30;  
  XkbControlsEnabledMask = 1 shl 31;  
  XkbAccessXOptionsMask = XkbStickyKeysMask or XkbAccessXFeedbackMask;  
  XkbAllBooleanCtrlsMask = $00001FFF;  
  XkbAllControlsMask = $F8001FFF;  
  XkbAllControlEventsMask = XkbAllControlsMask;  

  XkbAX_SKPressFBMask = 1 shl 0;  
  XkbAX_SKAcceptFBMask = 1 shl 1;  
  XkbAX_FeatureFBMask = 1 shl 2;  
  XkbAX_SlowWarnFBMask = 1 shl 3;  
  XkbAX_IndicatorFBMask = 1 shl 4;  
  XkbAX_StickyKeysFBMask = 1 shl 5;  
  XkbAX_TwoKeysMask = 1 shl 6;  
  XkbAX_LatchToLockMask = 1 shl 7;  
  XkbAX_SKReleaseFBMask = 1 shl 8;  
  XkbAX_SKRejectFBMask = 1 shl 9;  
  XkbAX_BKRejectFBMask = 1 shl 10;  
  XkbAX_DumbBellFBMask = 1 shl 11;  
  XkbAX_FBOptionsMask = $F3F;  
  XkbAX_SKOptionsMask = $0C0;  
  XkbAX_AllOptionsMask = $FFF;  

  XkbUseCoreKbd = $0100;  
  XkbUseCorePtr = $0200;  
  XkbDfltXIClass = $0300;  
  XkbDfltXIId = $0400;  
  XkbAllXIClasses = $0500;  
  XkbAllXIIds = $0600;  
  XkbXINone = $ff00;  
(* error 
#define	XkbLegalXILedClass(c)	(((c)==KbdFeedbackClass)||\
in define line 328 *)
(* error 
#define	XkbLegalXIBellClass(c)	(((c)==KbdFeedbackClass)||\
in define line 332 *)

    function XkbExplicitXIDevice(c : longint) : longint;    

    function XkbExplicitXIClass(c : longint) : longint;    

    function XkbExplicitXIId(c : longint) : longint;    

(* error 
#define	XkbSingleXIClass(c)	((((c)&(~0xff))==0)||((c)==XkbDfltXIClass))
in define line 336 *)
(* error 
#define	XkbSingleXIId(c)	((((c)&(~0xff))==0)||((c)==XkbDfltXIId))
in define line 337 *)
    const
      XkbNoModifier = $ff;      
      XkbNoShiftLevel = $ff;      
      XkbNoShape = $ff;      
      XkbNoIndicator = $ff;      
      XkbNoModifierMask = 0;      
      XkbAllModifiersMask = $ff;      
      XkbAllVirtualModsMask = $ffff;      
      XkbNumKbdGroups = 4;      
      XkbMaxKbdGroup = XkbNumKbdGroups-1;      
      XkbMaxMouseKeysBtn = 4;      

      XkbGroup1Index = 0;      
      XkbGroup2Index = 1;      
      XkbGroup3Index = 2;      
      XkbGroup4Index = 3;      
      XkbAnyGroup = 254;      
      XkbAllGroups = 255;      
      XkbGroup1Mask = 1 shl 0;      
      XkbGroup2Mask = 1 shl 1;      
      XkbGroup3Mask = 1 shl 2;      
      XkbGroup4Mask = 1 shl 3;      
      XkbAnyGroupMask = 1 shl 7;      
      XkbAllGroupsMask = $f;      


    function XkbBuildCoreState(m,g : longint) : longint;    

    function XkbGroupForCoreState(s : longint) : longint;    

    function XkbIsLegalGroup(g : longint) : longint;    


    const
      XkbWrapIntoRange = $00;      
      XkbClampIntoRange = $40;      
      XkbRedirectIntoRange = $80;      

      XkbSA_ClearLocks = 1 shl 0;      
      XkbSA_LatchToLock = 1 shl 1;      
      XkbSA_LockNoLock = 1 shl 0;      
      XkbSA_LockNoUnlock = 1 shl 1;      
      XkbSA_UseModMapMods = 1 shl 2;      
      XkbSA_GroupAbsolute = 1 shl 2;      
      XkbSA_UseDfltButton = 0;      
      XkbSA_NoAcceleration = 1 shl 0;      
      XkbSA_MoveAbsoluteX = 1 shl 1;      
      XkbSA_MoveAbsoluteY = 1 shl 2;      
      XkbSA_ISODfltIsGroup = 1 shl 7;      
      XkbSA_ISONoAffectMods = 1 shl 6;      
      XkbSA_ISONoAffectGroup = 1 shl 5;      
      XkbSA_ISONoAffectPtr = 1 shl 4;      
      XkbSA_ISONoAffectCtrls = 1 shl 3;      
      XkbSA_ISOAffectMask = $78;      
      XkbSA_MessageOnPress = 1 shl 0;      
      XkbSA_MessageOnRelease = 1 shl 1;      
      XkbSA_MessageGenKeyEvent = 1 shl 2;      
      XkbSA_AffectDfltBtn = 1;      
      XkbSA_DfltBtnAbsolute = 1 shl 2;      
      XkbSA_SwitchApplication = 1 shl 0;      
      XkbSA_SwitchAbsolute = 1 shl 2;      

      XkbSA_IgnoreVal = $00;      
      XkbSA_SetValMin = $10;      
      XkbSA_SetValCenter = $20;      
      XkbSA_SetValMax = $30;      
      XkbSA_SetValRelative = $40;      
      XkbSA_SetValAbsolute = $50;      
      XkbSA_ValOpMask = $70;      
      XkbSA_ValScaleMask = $07;      

    function XkbSA_ValOp(a : longint) : Ta;    

    function XkbSA_ValScale(a : longint) : Ta;    


    const
      XkbSA_NoAction = $00;      
      XkbSA_SetMods = $01;      
      XkbSA_LatchMods = $02;      
      XkbSA_LockMods = $03;      
      XkbSA_SetGroup = $04;      
      XkbSA_LatchGroup = $05;      
      XkbSA_LockGroup = $06;      
      XkbSA_MovePtr = $07;      
      XkbSA_PtrBtn = $08;      
      XkbSA_LockPtrBtn = $09;      
      XkbSA_SetPtrDflt = $0a;      
      XkbSA_ISOLock = $0b;      
      XkbSA_Terminate = $0c;      
      XkbSA_SwitchScreen = $0d;      
      XkbSA_SetControls = $0e;      
      XkbSA_LockControls = $0f;      
      XkbSA_ActionMessage = $10;      
      XkbSA_RedirectKey = $11;      
      XkbSA_DeviceBtn = $12;      
      XkbSA_LockDeviceBtn = $13;      
      XkbSA_DeviceValuator = $14;      
      XkbSA_LastAction = XkbSA_DeviceValuator;      
      XkbSA_NumActions = XkbSA_LastAction+1;      
      XkbSA_XFree86Private = $86;      

      XkbSA_BreakLatch = ((((((((((1 shl XkbSA_NoAction) or (1 shl XkbSA_PtrBtn)) or (1 shl XkbSA_LockPtrBtn)) or (1 shl XkbSA_Terminate)) or (1 shl XkbSA_SwitchScreen)) or (1 shl XkbSA_SetControls)) or (1 shl XkbSA_LockControls)) or (1 shl XkbSA_ActionMessage)) or (1 shl XkbSA_RedirectKey)) or (1 shl XkbSA_DeviceBtn)) or (1 shl XkbSA_LockDeviceBtn);      


    function XkbIsModAction(a : longint) : longint;    

    function XkbIsGroupAction(a : longint) : longint;    

    function XkbIsPtrAction(a : longint) : longint;    


    const
      XkbKB_Permanent = $80;      
      XkbKB_OpMask = $7f;      
      XkbKB_Default = $00;      
      XkbKB_Lock = $01;      
      XkbKB_RadioGroup = $02;      
      XkbKB_Overlay1 = $03;      
      XkbKB_Overlay2 = $04;      
      XkbKB_RGAllowNone = $80;      

      XkbMinLegalKeyCode = 8;      
      XkbMaxLegalKeyCode = 255;      
      XkbMaxKeyCount = (XkbMaxLegalKeyCode-XkbMinLegalKeyCode)+1;      
      XkbPerKeyBitArraySize = (XkbMaxLegalKeyCode+1)/8;      


    function XkbIsLegalKeycode(k : longint) : longint;    


    const
      XkbNumModifiers = 8;      
      XkbNumVirtualMods = 16;      
      XkbNumIndicators = 32;      
      XkbAllIndicatorsMask = $ffffffff;      
      XkbMaxRadioGroups = 32;      
      XkbAllRadioGroupsMask = $ffffffff;      
      XkbMaxShiftLevel = 63;      
(* error 
#define	XkbMaxSymsPerKey	(XkbMaxShiftLevel*XkbNumKbdGroups)
in define line 561 *)
      XkbRGMaxMembers = 12;      
      XkbActionMessageLength = 6;      
      XkbKeyNameLength = 4;      
      XkbMaxRedirectCount = 8;      
      XkbGeomPtsPerMM = 10;      
      XkbGeomMaxColors = 32;      
      XkbGeomMaxLabelColors = 3;      
      XkbGeomMaxPriority = 255;      

      XkbOneLevelIndex = 0;      
      XkbTwoLevelIndex = 1;      
      XkbAlphabeticIndex = 2;      
      XkbKeypadIndex = 3;      
      XkbLastRequiredType = XkbKeypadIndex;      
      XkbNumRequiredTypes = XkbLastRequiredType+1;      
      XkbMaxKeyTypes = 255;      
      XkbOneLevelMask = 1 shl 0;      
      XkbTwoLevelMask = 1 shl 1;      
      XkbAlphabeticMask = 1 shl 2;      
      XkbKeypadMask = 1 shl 3;      
      XkbAllRequiredTypes = $f;      

    function XkbShiftLevel(n : longint) : Tn;    

    function XkbShiftLevelMask(n : longint) : longint;    


    const
      XkbName = 'XKEYBOARD';      
      XkbMajorVersion = 1;      
      XkbMinorVersion = 0;      

      XkbExplicitKeyTypesMask = $0f;      
      XkbExplicitKeyType1Mask = 1 shl 0;      
      XkbExplicitKeyType2Mask = 1 shl 1;      
      XkbExplicitKeyType3Mask = 1 shl 2;      
      XkbExplicitKeyType4Mask = 1 shl 3;      
      XkbExplicitInterpretMask = 1 shl 4;      
      XkbExplicitAutoRepeatMask = 1 shl 5;      
      XkbExplicitBehaviorMask = 1 shl 6;      
      XkbExplicitVModMapMask = 1 shl 7;      
      XkbAllExplicitMask = $ff;      

      XkbKeyTypesMask = 1 shl 0;      
      XkbKeySymsMask = 1 shl 1;      
      XkbModifierMapMask = 1 shl 2;      
      XkbExplicitComponentsMask = 1 shl 3;      
      XkbKeyActionsMask = 1 shl 4;      
      XkbKeyBehaviorsMask = 1 shl 5;      
      XkbVirtualModsMask = 1 shl 6;      
      XkbVirtualModMapMask = 1 shl 7;      
      XkbAllClientInfoMask = (XkbKeyTypesMask or XkbKeySymsMask) or XkbModifierMapMask;      
      XkbAllServerInfoMask = (((XkbExplicitComponentsMask or XkbKeyActionsMask) or XkbKeyBehaviorsMask) or XkbVirtualModsMask) or XkbVirtualModMapMask;      
      XkbAllMapComponentsMask = XkbAllClientInfoMask or XkbAllServerInfoMask;      

      XkbSI_AutoRepeat = 1 shl 0;      
      XkbSI_LockingKey = 1 shl 1;      

      XkbSI_LevelOneOnly = $80;      
      XkbSI_OpMask = $7f;      
      XkbSI_NoneOf = 0;      
      XkbSI_AnyOfOrNone = 1;      
      XkbSI_AnyOf = 2;      
      XkbSI_AllOf = 3;      
      XkbSI_Exactly = 4;      

      XkbIM_NoExplicit = 1 shl 7;      
      XkbIM_NoAutomatic = 1 shl 6;      
      XkbIM_LEDDrivesKB = 1 shl 5;      

      XkbIM_UseBase = 1 shl 0;      
      XkbIM_UseLatched = 1 shl 1;      
      XkbIM_UseLocked = 1 shl 2;      
      XkbIM_UseEffective = 1 shl 3;      
      XkbIM_UseCompat = 1 shl 4;      
      XkbIM_UseNone = 0;      
      XkbIM_UseAnyGroup = ((XkbIM_UseBase or XkbIM_UseLatched) or XkbIM_UseLocked) or XkbIM_UseEffective;      
      XkbIM_UseAnyMods = XkbIM_UseAnyGroup or XkbIM_UseCompat;      

      XkbSymInterpMask = 1 shl 0;      
      XkbGroupCompatMask = 1 shl 1;      
      XkbAllCompatMask = $3;      

      XkbKeycodesNameMask = 1 shl 0;      
      XkbGeometryNameMask = 1 shl 1;      
      XkbSymbolsNameMask = 1 shl 2;      
      XkbPhysSymbolsNameMask = 1 shl 3;      
      XkbTypesNameMask = 1 shl 4;      
      XkbCompatNameMask = 1 shl 5;      
      XkbKeyTypeNamesMask = 1 shl 6;      
      XkbKTLevelNamesMask = 1 shl 7;      
      XkbIndicatorNamesMask = 1 shl 8;      
      XkbKeyNamesMask = 1 shl 9;      
      XkbKeyAliasesMask = 1 shl 10;      
      XkbVirtualModNamesMask = 1 shl 11;      
      XkbGroupNamesMask = 1 shl 12;      
      XkbRGNamesMask = 1 shl 13;      
      XkbComponentNamesMask = $3f;      
      XkbAllNamesMask = $3fff;      

      XkbGBN_TypesMask = 1 shl 0;      
      XkbGBN_CompatMapMask = 1 shl 1;      
      XkbGBN_ClientSymbolsMask = 1 shl 2;      
      XkbGBN_ServerSymbolsMask = 1 shl 3;      
      XkbGBN_SymbolsMask = XkbGBN_ClientSymbolsMask or XkbGBN_ServerSymbolsMask;      
      XkbGBN_IndicatorMapMask = 1 shl 4;      
      XkbGBN_KeyNamesMask = 1 shl 5;      
      XkbGBN_GeometryMask = 1 shl 6;      
      XkbGBN_OtherNamesMask = 1 shl 7;      
      XkbGBN_AllComponentsMask = $ff;      

      XkbLC_Hidden = 1 shl 0;      
      XkbLC_Default = 1 shl 1;      
      XkbLC_Partial = 1 shl 2;      
      XkbLC_AlphanumericKeys = 1 shl 8;      
      XkbLC_ModifierKeys = 1 shl 9;      
      XkbLC_KeypadKeys = 1 shl 10;      
      XkbLC_FunctionKeys = 1 shl 11;      
      XkbLC_AlternateGroup = 1 shl 12;      

      XkbXI_KeyboardsMask = 1 shl 0;      
      XkbXI_ButtonActionsMask = 1 shl 1;      
      XkbXI_IndicatorNamesMask = 1 shl 2;      
      XkbXI_IndicatorMapsMask = 1 shl 3;      
      XkbXI_IndicatorStateMask = 1 shl 4;      
      XkbXI_UnsupportedFeatureMask = 1 shl 15;      
      XkbXI_AllFeaturesMask = $001f;      
      XkbXI_AllDeviceFeaturesMask = $001e;      
      XkbXI_IndicatorsMask = $001c;      
      XkbAllExtensionDeviceEventsMask = $801f;      

      XkbPCF_DetectableAutoRepeatMask = 1 shl 0;      
      XkbPCF_GrabsUseXKBStateMask = 1 shl 1;      
      XkbPCF_AutoResetControlsMask = 1 shl 2;      
      XkbPCF_LookupStateWhenGrabbed = 1 shl 3;      
      XkbPCF_SendEventUsesXKBState = 1 shl 4;      
      XkbPCF_AllFlagsMask = $1F;      

      XkbDF_DisableLocks = 1 shl 0;      
{$endif}


implementation

    function XkbExplicitXIDevice(c : longint) : longint;
    begin
      XkbExplicitXIDevice:=(Tc(@( not ($ff))))=0;
    end;

    function XkbExplicitXIClass(c : longint) : longint;
    begin
      XkbExplicitXIClass:=(Tc(@( not ($ff))))=0;
    end;

    function XkbExplicitXIId(c : longint) : longint;
    begin
      XkbExplicitXIId:=(Tc(@( not ($ff))))=0;
    end;

    function XkbBuildCoreState(m,g : longint) : longint;
    begin
      XkbBuildCoreState:=((Tg(@($3))) shl 13) or (Tm(@($ff)));
    end;

    function XkbGroupForCoreState(s : longint) : longint;
    begin
      XkbGroupForCoreState:=(s shr 13) and $3;
    end;

    function XkbIsLegalGroup(g : longint) : longint;
    begin
      XkbIsLegalGroup:=(g>=0) and (@(g<XkbNumKbdGroups));
    end;

    function XkbSA_ValOp(a : longint) : Ta;
    begin
      XkbSA_ValOp:=Ta(@(XkbSA_ValOpMask));
    end;

    function XkbSA_ValScale(a : longint) : Ta;
    begin
      XkbSA_ValScale:=Ta(@(XkbSA_ValScaleMask));
    end;

    function XkbIsModAction(a : longint) : longint;
    begin
      XkbIsModAction:=((a^._type)>=Xkb_SASetMods) and (@((a^._type)<=XkbSA_LockMods));
    end;

    function XkbIsGroupAction(a : longint) : longint;
    begin
      XkbIsGroupAction:=((a^._type)>=XkbSA_SetGroup) and (@((a^._type)<=XkbSA_LockGroup));
    end;

    function XkbIsPtrAction(a : longint) : longint;
    begin
      XkbIsPtrAction:=((a^._type)>=XkbSA_MovePtr) and (@((a^._type)<=XkbSA_SetPtrDflt));
    end;

    function XkbIsLegalKeycode(k : longint) : longint;
    begin
      XkbIsLegalKeycode:=k>=XkbMinLegalKeyCode;
    end;

    function XkbShiftLevel(n : longint) : Tn;
    begin
      XkbShiftLevel:=Tn(-(1));
    end;

    function XkbShiftLevelMask(n : longint) : longint;
    begin
      XkbShiftLevelMask:=1 shl (Tn(-(1)));
    end;


end.
