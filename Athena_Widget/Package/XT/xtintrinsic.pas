
unit XTIntrinsic;

interface

uses
  unixtype,
  xlib, x, xutil,
  Xresource;

const
  libXt = 'libXt.so';
  libXaw = 'libXaw.so';
  libXm = 'libXm';

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

//
//{$include  <X11/Xlib.h>}
//{$include  <X11/Xutil.h>}
//{$include  <X11/Xresource.h>}
//{$include  <X11/Xfuncproto.h>}

const
  XtSpecificationRelease = 7;

type
  PString = ^TString;
  TString = PChar;

//type
//  _XtBoolean = Boolean;
//  _XtDimension = Dimension;
//  _XtKeyCode = KeyCode;
//  _XtPosition = Position;
//  _XtXtEnum = XtEnum;

type

  PXtString = ^TXtString;
  TXtString = PChar;

  TXtKeyCode = uint8;
  TXtXtEnum = uint8;

  PPKeyCode = PPByte;
  TXtBoolean = boolean;

  PPDisplay = ^PDisplay;
  PPPDisplay = ^PPDisplay;

type
//  TXtBoolean = LongInt;
  TXtDimension = LongInt;
//  TXtKeyCode = LongInt;
  TXtPosition = LongInt;
//  TXtXtEnum = LongInt;

//{$include <stddef.h>}

type
  PXtIntPtr = ^TXtIntPtr;
//  TXtIntPtr = Tintptr_t;
  TXtIntPtr = PtrInt;

  PXtUIntPtr = ^TXtUIntPtr;
//  TXtUIntPtr = Tuintptr_t;
  TXtUIntPtr = LongInt;

type
  PPWidget = ^PWidget;
  PWidget = ^TWidget;
  TWidget = Pointer; //PWidgetRec;
//  TWidget = PWidgetRec;

  PWidgetList = ^TWidgetList;
  TWidgetList = PWidget;

  PWidgetClass = ^TWidgetClass;
  TWidgetClass = Pointer; //PWidgetClassRec;

  PCompositeWidget = ^TCompositeWidget;
  TCompositeWidget = Pointer; //PCompositeRec;

  PXtActionList = ^TXtActionList;
  TXtActionList = Pointer; //PXtActionsRec;

  PXtEventTable = ^TXtEventTable;
  TXtEventTable = Pointer; //PXtEventRec;

  PXtAppContext = ^TXtAppContext;
  TXtAppContext = Pointer; //PXtAppStruct;

  PXtValueMask = ^TXtValueMask;
  TXtValueMask = culong;

  PXtIntervalId = ^TXtIntervalId;
  TXtIntervalId = PtrUInt;

  PXtInputId = ^TXtInputId;
  TXtInputId = PtrUInt;

  PXtWorkProcId = ^TXtWorkProcId;
  TXtWorkProcId = PtrUInt;

  PXtSignalId = ^TXtSignalId;
  TXtSignalId = PtrUInt;

  PXtGeometryMask = ^TXtGeometryMask;
  TXtGeometryMask = DWord;

  PXtGCMask = ^TXtGCMask;
  TXtGCMask = culong;

  PPixel = ^TPixel;
  TPixel = culong;

  PXtCacheType = ^TXtCacheType;
  TXtCacheType = LongInt;

const
  XtCacheNone = $001;
  XtCacheAll = $002;
  XtCacheByDisplay = $003;
  XtCacheRefCount = $100;

{***************************************************************
 *
 * System Dependent Definitions; see spec for specific range
 * requirements.  Do not assume every implementation uses the
 * same base types!
 *
 *
 * XtArgVal ought to be a union of XtPointer, char *, long, int *, and proc *
 * but casting to union types is not really supported.
 *
 * So the typedef for XtArgVal should be chosen such that
 *
 *	sizeof (XtArgVal) >=	sizeof(XtPointer)
 *				sizeof(char *)
 *				sizeof(long)
 *				sizeof(int *)
 *				sizeof(proc *)
 *
 * ArgLists rely heavily on the above typedef.
 *
 *************************************************************** }

type
  PBoolean = ^TBoolean;
  TBoolean = boolean;

  PXtArgVal = ^TXtArgVal;
  TXtArgVal = PChar;

  PXtEnum = ^TXtEnum;
  TXtEnum = byte;

  PCardinal = ^TCardinal;
  TCardinal = LongInt;

  PPDimension = ^PDimension;
  PDimension = ^TDimension;
  TDimension = word;

  PPosition = ^TPosition;
  TPosition = smallint;

  PXtPointer = ^TXtPointer;
  TXtPointer = pointer;

  {#if __STDC_VERSION__ >= 201112L }
  {_Static_assert(sizeof(XtArgVal) >= sizeof(XtPointer), "XtArgVal too small"); }
  {_Static_assert(sizeof(XtArgVal) >= sizeof(long), "XtArgVal too small"); }
  {#endif }
  { The type Opaque is NOT part of the Xt standard, do NOT use it.  }
  { (It remains here only for backward compatibility.)  }

  POpaque = ^TOpaque;
  TOpaque = TXtPointer;

//{$include <X11/Core.h>}
//{$include <X11/Composite.h>}
//{$include <X11/Constraint.h>}
//{$include <X11/Object.h>}
//{$include <X11/RectObj.h>}
type
  PXtTranslations = ^TXtTranslations;
  TXtTranslations = record
  end; //PTranslationData;

  PXtAccelerators = ^TXtAccelerators;
  TXtAccelerators = record
  end; //PTranslationData;

  PModifiers = ^TModifiers;
  TModifiers = LongInt;


  TXtActionProc = procedure(para1: TWidget; para2: PXEvent; para3: PString; para4: PCardinal); cdecl;

  PXtBoundActions = ^TXtBoundActions;
  TXtBoundActions = record
  end; //PXtActionProc;

  PXtActionsRec = ^TXtActionsRec;
  TXtActionsRec = record
    _string: TString;
    proc: TXtActionProc;
  end;

  { address mode		parameter representation     }
  { ------------		------------------------     }
  { address		     }
  { offset		     }
  { constant		     }
  { resource name string	     }
  { resource name quark	     }
  { offset from ancestor	     }
  { procedure to invoke	     }

type
  PXtAddressMode = ^TXtAddressMode;
  TXtAddressMode = LongInt;

const
  XtAddress = 0;
  XtBaseOffset = 1;
  XtImmediate = 2;
  XtResourceString = 3;
  XtResourceQuark = 4;
  XtWidgetBaseOffset = 5;
  XtProcedureArg = 6;

type
  PXtConvertArgRec = ^TXtConvertArgRec;
  TXtConvertArgRec = record
    address_mode: TXtAddressMode;
    address_id: TXtPointer;
    size: TCardinal;
  end;
  TXtConvertArgList = PXtConvertArgRec;
  PXtConvertArgList = ^TXtConvertArgList;

  TXtConvertArgProc = procedure(para1: TWidget; para2: PCardinal; para3: PXrmValue); cdecl;

  PXtWidgetGeometry = ^TXtWidgetGeometry;
  TXtWidgetGeometry = record
    request_mode: TXtGeometryMask;
    x: TPosition;
    y: TPosition;
    Width: TDimension;
    Height: TDimension;
    border_width: TDimension;
    sibling: TWidget;
    stack_mode: LongInt;
  end;

  { Additions to Xlib geometry requests: ask what would happen, don't do it  }
const
  XtCWQueryOnly = 1 shl 7;
  { Additions to Xlib stack modes: don't change stack order  }
  XtSMDontChange = 5;

type
  { obsolete  }
  TXtConverter = procedure(para1: PXrmValue; para2: PCardinal; para3: PXrmValue; para4: PXrmValue); cdecl;
  TXtTypeConverter = function(para1: PDisplay; para2: PXrmValue; para3: PCardinal; para4: PXrmValue; para5: PXrmValue; para6: PXtPointer): TBoolean; cdecl;
  TXtDestructor = procedure(para1: TXtAppContext; para2: PXrmValue; para3: TXtPointer; para4: PXrmValue; para5: PCardinal); cdecl;

  PXtCacheRef = ^TXtCacheRef;
  TXtCacheRef = TOpaque;

  PXtActionHookId = ^TXtActionHookId;
  TXtActionHookId = TOpaque;

  TXtActionHookProc = procedure(para1: TWidget; para2: TXtPointer; para3: TString; para4: PXEvent; para5: PString; para6: PCardinal); cdecl;

  PXtBlockHookId = ^TXtBlockHookId;
  TXtBlockHookId = TXtUIntPtr;

  TXtBlockHookProc = procedure(para1: TXtPointer); cdecl;
  TXtKeyProc = procedure(para1: PDisplay; para2: TXtKeyCode; para3: TModifiers; para4: PModifiers; para5: PKeySym); cdecl;
  TXtCaseProc = procedure(para1: PDisplay; para2: TKeySym; para3: PKeySym; para4: PKeySym); cdecl;
  TXtEventHandler = procedure(para1: TWidget; para2: TXtPointer; para3: PXEvent; para4: PBoolean); cdecl;

  PEventMask = ^TEventMask;
  TEventMask = culong;

  PXtListPosition = ^TXtListPosition;
  TXtListPosition = LongInt;

Const
  XtListHead = 0;
  XtListTail = 1;

type
  PXtInputMask = ^TXtInputMask;
  TXtInputMask = culong;

const
  XtInputNoneMask = 0;
  XtInputReadMask = 1 shl 0;
  XtInputWriteMask = 1 shl 1;
  XtInputExceptMask = 1 shl 2;

type
  TXtTimerCallbackProc = procedure(para1: TXtPointer; para2: PXtIntervalId); cdecl;
  TXtInputCallbackProc = procedure(para1: TXtPointer; para2: PLongInt; para3: PXtInputId); cdecl;
  TXtSignalCallbackProc = procedure(para1: TXtPointer; para2: PXtSignalId); cdecl;

  PArg = ^TArg;
  TArg = record
    Name: TString;
    case byte of
      0: (valueP: PChar);
      1: (valueI: LongInt);
  end;
  TArgList = ^TArg;
  PArgList = ^TArgList;

  function XtNumber(arr: array of TArg): cardinal;

type
  PXtVarArgsList = ^TXtVarArgsList;
  TXtVarArgsList = TXtPointer;

  TXtCallbackProc = procedure(para1: TWidget; para2: TXtPointer; para3: TXtPointer); cdecl;

  PXtCallbackRec = ^TXtCallbackRec;
  TXtCallbackRec = record
    callback: TXtCallbackProc;
    closure: TXtPointer;
  end;

  TXtCallbackList = PXtCallbackRec;
  PXtCallbackList = ^TXtCallbackList;

  PXtCallbackStatus = ^TXtCallbackStatus;
  TXtCallbackStatus = LongInt;

Const
  XtCallbackNoList = 0;
  XtCallbackHasNone = 1;
  XtCallbackHasSome = 2;
  { Request accepted.  }

type
  PXtGeometryResult = ^TXtGeometryResult;
  TXtGeometryResult = LongInt;

Const
  XtGeometryYes = 0;
  XtGeometryNo = 1;
  XtGeometryAlmost = 2;
  XtGeometryDone = 3;

type
  PXtGrabKind = ^TXtGrabKind;
  TXtGrabKind = LongInt;

Const
  XtGrabNone = 0;
  XtGrabNonexclusive = 1;
  XtGrabExclusive = 2;

type
  PXtPopdownIDRec = ^TXtPopdownIDRec;

  TXtPopdownIDRec = record
    shell_widget: TWidget;
    enable_widget: TWidget;
  end;
  TXtPopdownID = PXtPopdownIDRec;
  PXtPopdownID = ^TXtPopdownID;

  PXtResource = ^TXtResource;
  TXtResource = record
    resource_name: TString;
    resource_class: TString;
    resource_type: TString;
    resource_size: TCardinal;
    resource_offset: TCardinal;
    default_type: TString;
    default_addr: TXtPointer;
  end;
  TXtResourceList = PXtResource;
  PXtResourceList = ^TXtResourceList;

  TXtResourceDefaultProc = procedure(para1: TWidget; para2: LongInt; para3: PXrmValue); cdecl;
  TXtLanguageProc = function(para1: PDisplay; para2: TString; para3: TXtPointer): TString; cdecl;
  TXtErrorMsgHandler = procedure(para1: TString; para2: TString; para3: TString; para4: TString; para5: PString; para6: PCardinal); cdecl;
  TXtErrorHandler = procedure(para1: TString); cdecl;
  TXtCreatePopupChildProc = procedure(para1: TWidget); cdecl;
  TXtWorkProc = function(para1: TXtPointer): TBoolean; cdecl;

  PSubstitutionRec = ^TSubstitutionRec;
  TSubstitutionRec = record
    match: char;
    substitution: TXtString;
  end;

  TSubstitution = PSubstitutionRec;
  PSubstitution = ^TSubstitution;

  { filename  }
  TXtFilePredicate = function(para1: TString): TBoolean; cdecl;

  PXtRequestId = ^TXtRequestId;
  TXtRequestId = TXtPointer;

  TXtConvertSelectionProc = function(para1: TWidget; para2: PAtom; para3: PAtom; para4: PAtom; para5: PXtPointer; para6: pcslong; para7: PLongInt): TBoolean; cdecl;
  TXtLoseSelectionProc = procedure(para1: TWidget; para2: PAtom); cdecl;
  TXtSelectionDoneProc = procedure(para1: TWidget; para2: PAtom; para3: PAtom); cdecl;
  TXtSelectionCallbackProc = procedure(para1: TWidget; para2: TXtPointer; para3: PAtom; para4: PAtom; para5: TXtPointer; para6: pculong; para7: PLongInt); cdecl;
  TXtLoseSelectionIncrProc = procedure(para1: TWidget; para2: PAtom; para3: TXtPointer); cdecl;
  TXtSelectionDoneIncrProc = procedure(para1: TWidget; para2: PAtom; para3: PAtom; para4: PXtRequestId; para5: TXtPointer); cdecl;
  TXtConvertSelectionIncrProc = function(para1: TWidget; para2: PAtom; para3: PAtom; para4: PAtom; para5: PXtPointer; para6: PLongInt; para7: pculong; para8: pculong; para9: TXtPointer; para10: PXtRequestId): TBoolean; cdecl;
  TXtCancelConvertSelectionProc = procedure(para1: TWidget; para2: PAtom; para3: PAtom; para4: PXtRequestId; para5: TXtPointer); cdecl;
  TXtEventDispatchProc = function(para1: PXEvent): TBoolean; cdecl;
  TXtExtensionSelectProc = procedure(para1: TWidget; para2: PLongInt; para3: PXtPointer; para4: LongInt; para5: TXtPointer); cdecl;

{**************************************************************
 *
 * Exported Interfaces
 *
 *************************************************************** }


function XtCallConverter(para1: PDisplay; para2: TXtTypeConverter; para3: TXrmValuePtr; para4: TCardinal; para5: TXrmValuePtr; para6: PXrmValue; para7: PXtCacheRef): TBoolean; cdecl; external libXt;
function XtDispatchEvent(para1: PXEvent): TBoolean; cdecl; external libXt;
function XtCallAcceptFocus(para1: TWidget; para2: PTime): TBoolean; cdecl; external libXt;
function XtPeekEvent(para1: PXEvent): TBoolean; cdecl; external libXt;
function XtAppPeekEvent(para1: TXtAppContext; para2: PXEvent): TBoolean; cdecl; external libXt;
function XtIsSubclass(para1: TWidget; para2: TWidgetClass): TBoolean; cdecl; external libXt;
function XtIsObject(para1: TWidget): TBoolean; cdecl; external libXt;
function _XtCheckSubclassFlag(para1: TWidget; para2: TXtXtEnum): TBoolean; cdecl; external libXt;
function _XtIsSubclassOf(para1: TWidget; para2: TWidgetClass; para3: TWidgetClass; para4: TXtXtEnum): TBoolean; cdecl; external libXt;
function XtIsManaged(para1: TWidget): TBoolean; cdecl; external libXt;
function XtIsRealized(para1: TWidget): TBoolean; cdecl; external libXt;
function XtIsSensitive(para1: TWidget): TBoolean; cdecl; external libXt;
function XtOwnSelection(para1: TWidget; para2: TAtom; para3: TTime; para4: TXtConvertSelectionProc; para5: TXtLoseSelectionProc; para6: TXtSelectionDoneProc): TBoolean; cdecl; external libXt;
function XtOwnSelectionIncremental(para1: TWidget; para2: TAtom; para3: TTime; para4: TXtConvertSelectionIncrProc; para5: TXtLoseSelectionIncrProc; para6: TXtSelectionDoneIncrProc; para7: TXtCancelConvertSelectionProc; para8: TXtPointer): TBoolean; cdecl; external libXt;
function XtMakeResizeRequest(para1: TWidget; para2: TXtDimension; para3: TXtDimension; para4: PDimension; para5: PDimension): TXtGeometryResult; cdecl; external libXt;
procedure XtTranslateCoords(para1: TWidget; para2: TXtPosition; para3: TXtPosition; para4: PPosition; para5: PPosition); cdecl; external libXt;
function XtGetKeysymTable(para1: PDisplay; para2: PKeyCode; para3: PLongInt): PKeySym; cdecl; external libXt;
procedure XtKeysymToKeycodeList(para1: PDisplay; para2: TKeySym; para3: PPKeyCode; para4: PCardinal); cdecl; external libXt;
procedure XtStringConversionWarning(_XtString: TXtString; __XtString: TXtString); cdecl; external libXt;
procedure XtDisplayStringConversionWarning(para1: PDisplay; _XtString: TXtString; __XtString: TXtString); cdecl; external libXt;

  var
    colorConvertArgs : PXtConvertArgRec;cvar;external libXt;
    screenConvertArg : PXtConvertArgRec;cvar;external libXt;

procedure XtAppAddConverter(para1: TXtAppContext; _XtString: TXtString; __XtString: TXtString; para4: TXtConverter; para5: TXtConvertArgList; para6: TCardinal); cdecl; external libXt;
procedure XtAddConverter(_XtString: TXtString; __XtString: TXtString; para3: TXtConverter; para4: TXtConvertArgList; para5: TCardinal); cdecl; external libXt;
procedure XtSetTypeConverter(_XtString: TXtString; __XtString: TXtString; para3: TXtTypeConverter; para4: TXtConvertArgList; para5: TCardinal; para6: TXtCacheType; para7: TXtDestructor); cdecl; external libXt;
procedure XtAppSetTypeConverter(para1: TXtAppContext; _XtString: TXtString; __XtString: TXtString; para4: TXtTypeConverter; para5: TXtConvertArgList; para6: TCardinal; para7: TXtCacheType; para8: TXtDestructor); cdecl; external libXt;
procedure XtConvert(para1: TWidget; _XtString: TXtString; para3: PXrmValue; __XtString: TXtString; para5: PXrmValue); cdecl; external libXt;
procedure XtDirectConvert(para1: TXtConverter; para2: TXrmValuePtr; para3: TCardinal; para4: TXrmValuePtr; para5: PXrmValue); cdecl; external libXt;

{***************************************************************
 *
 * Translation Management
 *
 *************************************************************** }

function XtParseTranslationTable(_XtString: TXtString): TXtTranslations; cdecl; external libXt;
function XtParseAcceleratorTable(_XtString: TXtString): TXtAccelerators; cdecl; external libXt;
procedure XtOverrideTranslations(para1: TWidget; para2: TXtTranslations); cdecl; external libXt;
procedure XtAugmentTranslations(para1: TWidget; para2: TXtTranslations); cdecl; external libXt;
procedure XtInstallAccelerators(para1: TWidget; para2: TWidget); cdecl; external libXt;
procedure XtInstallAllAccelerators(para1: TWidget; para2: TWidget); cdecl; external libXt;
procedure XtUninstallTranslations(para1: TWidget); cdecl; external libXt;
procedure XtAppAddActions(para1: TXtAppContext; para2: TXtActionList; para3: TCardinal); cdecl; external libXt;
procedure XtAddActions(para1: TXtActionList; para2: TCardinal); cdecl; external libXt;
function XtAppAddActionHook(para1: TXtAppContext; para2: TXtActionHookProc; para3: TXtPointer): TXtActionHookId; cdecl; external libXt;
procedure XtRemoveActionHook(para1: TXtActionHookId); cdecl; external libXt;
procedure XtGetActionList(para1: TWidgetClass; para2: PXtActionList; para3: PCardinal); cdecl; external libXt;
procedure XtCallActionProc(para1: TWidget; _XtString: TXtString; para3: PXEvent; para4: PString; para5: TCardinal); cdecl; external libXt;
procedure XtRegisterGrabAction(para1: TXtActionProc; para2: TXtBoolean; para3: DWord; para4: LongInt; para5: LongInt); cdecl; external libXt;
procedure XtSetMultiClickTime(para1: PDisplay; para2: LongInt); cdecl; external libXt;
function XtGetMultiClickTime(para1: PDisplay): LongInt; cdecl; external libXt;
function XtGetActionKeysym(para1: PXEvent; para2: PModifiers): TKeySym; cdecl; external libXt;

{**************************************************************
 *
 * Keycode and Keysym procedures for translation management
 *
 *************************************************************** }

procedure XtTranslateKeycode(para1: PDisplay; para2: TXtKeyCode; para3: TModifiers; para4: PModifiers; para5: PKeySym); cdecl; external libXt;
procedure XtTranslateKey(para1: PDisplay; para2: TXtKeyCode; para3: TModifiers; para4: PModifiers; para5: PKeySym); cdecl; external libXt;
procedure XtSetKeyTranslator(para1: PDisplay; para2: TXtKeyProc); cdecl; external libXt;
procedure XtRegisterCaseConverter(para1: PDisplay; para2: TXtCaseProc; para3: TKeySym; para4: TKeySym); cdecl; external libXt;
procedure XtConvertCase(para1: PDisplay; para2: TKeySym; para3: PKeySym; para4: PKeySym); cdecl; external libXt;

{***************************************************************
 *
 * Event Management
 *
 *************************************************************** }

 //#define XtAllEvents ((EventMask) -1L)
const XtAllEvents= -1;

procedure XtAddEventHandler(para1: TWidget; para2: TEventMask; para3: TXtBoolean; para4: TXtEventHandler; para5: TXtPointer); cdecl; external libXt;
procedure XtRemoveEventHandler(para1: TWidget; para2: TEventMask; para3: TXtBoolean; para4: TXtEventHandler; para5: TXtPointer); cdecl; external libXt;
procedure XtAddRawEventHandler(para1: TWidget; para2: TEventMask; para3: TXtBoolean; para4: TXtEventHandler; para5: TXtPointer); cdecl; external libXt;
procedure XtRemoveRawEventHandler(para1: TWidget; para2: TEventMask; para3: TXtBoolean; para4: TXtEventHandler; para5: TXtPointer); cdecl; external libXt;
procedure XtInsertEventHandler(para1: TWidget; para2: TEventMask; para3: TXtBoolean; para4: TXtEventHandler; para5: TXtPointer; para6: TXtListPosition); cdecl; external libXt;
procedure XtInsertRawEventHandler(para1: TWidget; para2: TEventMask; para3: TXtBoolean; para4: TXtEventHandler; para5: TXtPointer; para6: TXtListPosition); cdecl; external libXt;
function XtSetEventDispatcher(para1: PDisplay; para2: LongInt; para3: TXtEventDispatchProc): TXtEventDispatchProc; cdecl; external libXt;
function XtDispatchEventToWidget(para1: TWidget; para2: PXEvent): TBoolean; cdecl; external libXt;
procedure XtInsertEventTypeHandler(para1: TWidget; para2: LongInt; para3: TXtPointer; para4: TXtEventHandler; para5: TXtPointer; para6: TXtListPosition); cdecl; external libXt;
procedure XtRemoveEventTypeHandler(para1: TWidget; para2: LongInt; para3: TXtPointer; para4: TXtEventHandler; para5: TXtPointer); cdecl; external libXt;
function XtBuildEventMask(para1: TWidget): TEventMask; cdecl; external libXt;
procedure XtRegisterExtensionSelector(para1: PDisplay; para2: LongInt; para3: LongInt; para4: TXtExtensionSelectProc; para5: TXtPointer); cdecl; external libXt;
procedure XtAddGrab(para1: TWidget; para2: TXtBoolean; para3: TXtBoolean); cdecl; external libXt;
procedure XtRemoveGrab(para1: TWidget); cdecl; external libXt;
procedure XtProcessEvent(para1: TXtInputMask); cdecl; external libXt;
procedure XtAppProcessEvent(para1: TXtAppContext; para2: TXtInputMask); cdecl; external libXt;
procedure XtMainLoop; cdecl; external libXt;
procedure XtAppMainLoop(para1: TXtAppContext); cdecl; external libXt;
procedure XtAddExposureToRegion(para1: PXEvent; para2: TRegion); cdecl; external libXt;
procedure XtSetKeyboardFocus(para1: TWidget; para2: TWidget); cdecl; external libXt;
function XtGetKeyboardFocusWidget(para1: TWidget): TWidget; cdecl; external libXt;
function XtLastEventProcessed(para1: PDisplay): PXEvent; cdecl; external libXt;
function XtLastTimestampProcessed(para1: PDisplay): TTime; cdecl; external libXt;

{***************************************************************
 *
 * Event Gathering Routines
 *
 *************************************************************** }

function XtAddTimeOut(para1: culong; para2: TXtTimerCallbackProc; para3: TXtPointer): TXtIntervalId; cdecl; external libXt;
function XtAppAddTimeOut(para1: TXtAppContext; para2: culong; para3: TXtTimerCallbackProc; para4: TXtPointer): TXtIntervalId; cdecl; external libXt;
procedure XtRemoveTimeOut(para1: TXtIntervalId); cdecl; external libXt;
function XtAddInput(para1: LongInt; para2: TXtPointer; para3: TXtInputCallbackProc; para4: TXtPointer): TXtInputId; cdecl; external libXt;
function XtAppAddInput(para1: TXtAppContext; para2: LongInt; para3: TXtPointer; para4: TXtInputCallbackProc; para5: TXtPointer): TXtInputId; cdecl; external libXt;
procedure XtRemoveInput(para1: TXtInputId); cdecl; external libXt;
function XtAddSignal(para1: TXtSignalCallbackProc; para2: TXtPointer): TXtSignalId; cdecl; external libXt;
function XtAppAddSignal(para1: TXtAppContext; para2: TXtSignalCallbackProc; para3: TXtPointer): TXtSignalId; cdecl; external libXt;
procedure XtRemoveSignal(para1: TXtSignalId); cdecl; external libXt;
procedure XtNoticeSignal(para1: TXtSignalId); cdecl; external libXt;
procedure XtNextEvent(para1: PXEvent); cdecl; external libXt;
procedure XtAppNextEvent(para1: TXtAppContext; para2: PXEvent); cdecl; external libXt;

const
  XtIMXEvent = 1;
  XtIMTimer = 2;
  XtIMAlternateInput = 4;
  XtIMSignal = 8;
  XtIMAll = ((XtIMXEvent or XtIMTimer) or XtIMAlternateInput) or XtIMSignal;


function XtPending: TBoolean; cdecl; external libXt;
function XtAppPending(para1: TXtAppContext): TXtInputMask; cdecl; external libXt;
function XtAppAddBlockHook(para1: TXtAppContext; para2: TXtBlockHookProc; para3: TXtPointer): TXtBlockHookId; cdecl; external libXt;
procedure XtRemoveBlockHook(para1: TXtBlockHookId); cdecl; external libXt;

{***************************************************************
 *
 * Random utility routines
 *
 *************************************************************** }
{ was #define dname(params) para_def_expr }

function XtIsRectObj(widget: TWidget): boolean;
function XtIsWidget(widget: TWidget): boolean;
function XtIsComposite(widget: TWidget): boolean;
function XtIsConstraint(widget: TWidget): boolean;
function XtIsShell(widget: TWidget): boolean;
function XtIsOverrideShell(para1: TWidget): TBoolean; cdecl; external libXt;

function XtIsWMShell(widget : TWidget) : TBoolean;

function XtIsVendorShell(para1: TWidget): TBoolean; cdecl; external libXt;
function XtIsTransientShell(para1: TWidget): TBoolean; cdecl; external libXt;

function XtIsTopLevelShell(widget : TWidget) : TBoolean;

function XtIsApplicationShell(para1: TWidget): TBoolean; cdecl; external libXt;
function XtIsSessionShell(para1: TWidget): TBoolean; cdecl; external libXt;
procedure XtRealizeWidget(para1: TWidget); cdecl; external libXt;
procedure XtUnrealizeWidget(para1: TWidget); cdecl; external libXt;
procedure XtDestroyWidget(para1: TWidget); cdecl; external libXt;
procedure XtSetSensitive(para1: TWidget; para2: TXtBoolean); cdecl; external libXt;
procedure XtSetMappedWhenManaged(para1: TWidget; para2: TXtBoolean); cdecl; external libXt;
function XtNameToWidget(para1: TWidget; _XtString: TXtString): TWidget; cdecl; external libXt;
function XtWindowToWidget(para1: PDisplay; para2: TWindow): TWidget; cdecl; external libXt;
function XtGetClassExtension(para1: TWidgetClass; para2: TCardinal; para3: TXrmQuark; para4: cslong; para5: TCardinal): TXtPointer; cdecl; external libXt;

{**************************************************************
 *
 * Arg lists
 *
 *************************************************************** }

procedure XtSetArg(var arg: TArg; n: TXtString; d: PChar);
procedure XtSetArg(var arg: TArg; n: TXtString; d: PtrInt);

function XtMergeArgLists(para1: TArgList; para2: TCardinal; para3: TArgList; para4: TCardinal): TArgList; cdecl; external libXt;
{**************************************************************
 *
 * Vararg lists
 *
 *************************************************************** }
const
  XtVaNestedList = 'XtVaNestedList';
  XtVaTypedArg = 'XtVaTypedArg';

//  function XtVaCreateArgsList(para1:TXtPointer; args:array of const):TXtVarArgsList;cdecl;external libXt;
  function XtVaCreateArgsList(para1:TXtPointer):TXtVarArgsList;cdecl; varargs external libXt;
  {************************************************************
   *
   * Information routines
   *
   *********************************************************** }


function XtDisplay(para1: TWidget): PDisplay; cdecl; external libXt;
function XtDisplayOfObject(para1: TWidget): PDisplay; cdecl; external libXt;
function XtScreen(para1: TWidget): PScreen; cdecl; external libXt;
function XtScreenOfObject(para1: TWidget): PScreen; cdecl; external libXt;
function XtWindow(para1: TWidget): TWindow; cdecl; external libXt;
function XtWindowOfObject(para1: TWidget): TWindow; cdecl; external libXt;
function XtName(para1: TWidget): TString; cdecl; external libXt;
function XtSuperclass(para1: TWidget): TWidgetClass; cdecl; external libXt;
function XtClass(para1: TWidget): TWidgetClass; cdecl; external libXt;
function XtParent(para1: TWidget): TWidget; cdecl; external libXt;
procedure XtMapWidget(para1: TWidget); cdecl; external libXt;
procedure XtUnmapWidget(para1: TWidget); cdecl; external libXt;
procedure XtAddCallback(para1: TWidget; _XtString: TXtString; para3: TXtCallbackProc; para4: TXtPointer); cdecl; external libXt;
procedure XtRemoveCallback(para1: TWidget; _XtString: TXtString; para3: TXtCallbackProc; para4: TXtPointer); cdecl; external libXt;
procedure XtAddCallbacks(para1: TWidget; _XtString: TXtString; para3: TXtCallbackList); cdecl; external libXt;
procedure XtRemoveCallbacks(para1: TWidget; _XtString: TXtString; para3: TXtCallbackList); cdecl; external libXt;
procedure XtRemoveAllCallbacks(para1: TWidget; _XtString: TXtString); cdecl; external libXt;
procedure XtCallCallbacks(para1: TWidget; _XtString: TXtString; para3: TXtPointer); cdecl; external libXt;
procedure XtCallCallbackList(para1: TWidget; para2: TXtCallbackList; para3: TXtPointer); cdecl; external libXt;
function XtHasCallbacks(para1: TWidget; _XtString: TXtString): TXtCallbackStatus; cdecl; external libXt;

{***************************************************************
 *
 * Geometry Management
 *
 *************************************************************** }

function XtMakeGeometryRequest(para1: TWidget; para2: PXtWidgetGeometry; para3: PXtWidgetGeometry): TXtGeometryResult; cdecl; external libXt;
function XtQueryGeometry(para1: TWidget; para2: PXtWidgetGeometry; para3: PXtWidgetGeometry): TXtGeometryResult; cdecl; external libXt;
function XtCreatePopupShell(_XtString: TXtString; para2: TWidgetClass; para3: TWidget; para4: TArgList; para5: TCardinal): TWidget; cdecl; external libXt;
function XtVaCreatePopupShell(_XtString: TXtString; para2: TWidgetClass; para3: TWidget): TWidget; cdecl; varargs external libXt;
procedure XtPopup(para1: TWidget; para2: TXtGrabKind); cdecl; external libXt;
procedure XtPopupSpringLoaded(para1: TWidget); cdecl; external libXt;
procedure XtCallbackNone(para1: TWidget; para2: TXtPointer; para3: TXtPointer); cdecl; external libXt;
procedure XtCallbackNonexclusive(para1: TWidget; para2: TXtPointer; para3: TXtPointer); cdecl; external libXt;
procedure XtCallbackExclusive(para1: TWidget; para2: TXtPointer; para3: TXtPointer); cdecl; external libXt;
procedure XtPopdown(para1: TWidget); cdecl; external libXt;
procedure XtCallbackPopdown(para1: TWidget; para2: TXtPointer; para3: TXtPointer); cdecl; external libXt;
procedure XtMenuPopupAction(para1: TWidget; para2: PXEvent; para3: PString; para4: PCardinal); cdecl; external libXt;
function XtCreateWidget(_XtString: TXtString; para2: TWidgetClass; para3: TWidget; para4: TArgList; para5: TCardinal): TWidget; cdecl; external libXt;
function XtCreateManagedWidget(_XtString: TXtString; para2: TWidgetClass; para3: TWidget; para4: TArgList; para5: TCardinal): TWidget; cdecl; external libXt;
function XtVaCreateWidget(_XtString: TXtString; para2: TWidgetClass; para3: TWidget): TWidget; cdecl;varargs; external libXt;
function XtCreateApplicationShell(_XtString: TXtString; para2: TWidgetClass; para3: TArgList; para4: TCardinal): TWidget; cdecl; external libXt;
function XtVaCreateManagedWidget(_XtString: TXtString; para2: TWidgetClass; para3: TWidget): TWidget; cdecl; varargs; external libXt;
function XtAppCreateShell(_XtString: TXtString; __XtString: TXtString; para3: TWidgetClass; para4: PDisplay; para5: TArgList; para6: TCardinal): TWidget; cdecl; external libXt;
function XtVaAppCreateShell(_XtString: TXtString; __XtString: TXtString; para3: TWidgetClass; para4: PDisplay): TWidget; cdecl; varargs; external libXt;

{***************************************************************
 *
 * Toolkit initialization
 *
 *************************************************************** }
procedure XtToolkitInitialize; cdecl; external libXt;
function XtSetLanguageProc(para1: TXtAppContext; para2: TXtLanguageProc; para3: TXtPointer): TXtLanguageProc; cdecl; external libXt;
procedure XtDisplayInitialize(para1: TXtAppContext; para2: PDisplay; _XtString: TXtString; __XtString: TXtString; para5: PXrmOptionDescRec; para6: TCardinal; para7: PLongInt; para8: PXtString); cdecl; external libXt;
function XtOpenApplication(para1: PXtAppContext; _XtString: TXtString; para3: TXrmOptionDescList; para4: TCardinal; para5: PLongInt; para6: PXtString; para7: PString; para8: TWidgetClass; para9: TArgList; para10: TCardinal): TWidget; cdecl; external libXt;
function XtVaOpenApplication(para1: PXtAppContext; _XtString: TXtString; para3: TXrmOptionDescList; para4: TCardinal; para5: PLongInt; para6: PXtString; para7: PString; para8: TWidgetClass): TWidget; cdecl; varargs; external libXt;
function XtAppInitialize(para1: PXtAppContext; _XtString: TXtString; para3: TXrmOptionDescList; para4: TCardinal; para5: PLongInt; para6: PXtString; para7: PString; para8: TArgList; para9: TCardinal): TWidget; cdecl; external libXt;
function XtVaAppInitialize(para1: PXtAppContext; _XtString: TXtString; para3: TXrmOptionDescList; para4: TCardinal; para5: PLongInt; para6: PXtString; para7: PString): TWidget; cdecl; varargs; external libXt;
function XtInitialize(_XtString: TXtString; __XtString: TXtString; para3: PXrmOptionDescRec; para4: TCardinal; para5: PLongInt; para6: PXtString): TWidget; cdecl; external libXt;
function XtOpenDisplay(para1: TXtAppContext; _XtString: TXtString; __XtString: TXtString; ___XtString: TXtString; para5: PXrmOptionDescRec; para6: TCardinal; para7: PLongInt; para8: PXtString): PDisplay; cdecl; external libXt;
function XtCreateApplicationContext: TXtAppContext; cdecl; external libXt;
procedure XtAppSetFallbackResources(para1: TXtAppContext; para2: PString); cdecl; external libXt;
procedure XtDestroyApplicationContext(para1: TXtAppContext); cdecl; external libXt;
procedure XtInitializeWidgetClass(para1: TWidgetClass); cdecl; external libXt;
function XtWidgetToApplicationContext(para1: TWidget): TXtAppContext; cdecl; external libXt;
function XtDisplayToApplicationContext(para1: PDisplay): TXtAppContext; cdecl; external libXt;
function XtDatabase(para1: PDisplay): TXrmDatabase; cdecl; external libXt;
function XtScreenDatabase(para1: PScreen): TXrmDatabase; cdecl; external libXt;
procedure XtCloseDisplay(para1: PDisplay); cdecl; external libXt;
procedure XtGetApplicationResources(para1: TWidget; para2: TXtPointer; para3: TXtResourceList; para4: TCardinal; para5: TArgList; para6: TCardinal); cdecl; external libXt;
procedure XtVaGetApplicationResources(para1: TWidget; para2: TXtPointer; para3: TXtResourceList; para4: TCardinal); cdecl; varargs; external libXt;
procedure XtGetSubresources(para1: TWidget; para2: TXtPointer; _XtString: TXtString; __XtString: TXtString; para5: TXtResourceList; para6: TCardinal; para7: TArgList; para8: TCardinal); cdecl; external libXt;
procedure XtVaGetSubresources(para1: TWidget; para2: TXtPointer; _XtString: TXtString; __XtString: TXtString; para5: TXtResourceList; para6: TCardinal); cdecl; varargs; external libXt;
procedure XtSetValues(para1: TWidget; para2: TArgList; para3: TCardinal); cdecl; external libXt;
procedure XtVaSetValues(para1: TWidget); cdecl; varargs; external libXt;
procedure XtGetValues(para1: TWidget; para2: TArgList; para3: TCardinal); cdecl; external libXt;
procedure XtVaGetValues(para1: TWidget); cdecl; varargs; external libXt;
procedure XtSetSubvalues(para1: TXtPointer; para2: TXtResourceList; para3: TCardinal; para4: TArgList; para5: TCardinal); cdecl; external libXt;
procedure XtVaSetSubvalues(para1: TXtPointer; para2: TXtResourceList; para3: TCardinal); cdecl; varargs; external libXt;
procedure XtGetSubvalues(para1: TXtPointer; para2: TXtResourceList; para3: TCardinal; para4: TArgList; para5: TCardinal); cdecl; external libXt;
procedure XtVaGetSubvalues(para1: TXtPointer; para2: TXtResourceList; para3: TCardinal); cdecl; varargs; external libXt;
procedure XtGetResourceList(para1: TWidgetClass; para2: PXtResourceList; para3: PCardinal); cdecl; external libXt;
procedure XtGetConstraintResourceList(para1: TWidgetClass; para2: PXtResourceList; para3: PCardinal); cdecl; external libXt;
function XtUnspecifiedPixmap: TPixmap;

const
  XtUnspecifiedShellInt = -1;
  XtUnspecifiedWindow = 2;
  XtUnspecifiedWindowGroup = 3;
  XtCurrentDirectory = 'XtCurrentDirectory';
  XtDefaultForeground = 'XtDefaultForeground';
  XtDefaultBackground = 'XtDefaultBackground';
  XtDefaultFont = 'XtDefaultFont';
  XtDefaultFontSet = 'XtDefaultFontSet';


//      #define XtOffset(p_type,field) \
//        ((Cardinal) (((char *) (&(((p_type)NULL)->field))) - ((char *) NULL)))

// function XtOffset(p_type,field : LongInt) : TCardinal;


 {************************************************************
 *
 * Session Management
 *
 *********************************************************** }



type
  PXtCheckpointTokenRec = ^TXtCheckpointTokenRec;
  TXtCheckpointTokenRec = record
    save_type: LongInt;
    interact_style: LongInt;
    shutdown: TBoolean;
    fast: TBoolean;
    cancel_shutdown: TBoolean;
    phase: LongInt;
    interact_dialog_type: LongInt;
    request_cancel: TBoolean;
    request_next_phase: TBoolean;
    save_success: TBoolean;
    _type: LongInt;
    widget: TWidget;
  end;
  TXtCheckpointToken = PXtCheckpointTokenRec;
  PXtCheckpointToken = ^TXtCheckpointToken;


function XtSessionGetToken(para1: TWidget): TXtCheckpointToken; cdecl; external libXt;
procedure XtSessionReturnToken(para1: TXtCheckpointToken); cdecl; external libXt;

{************************************************************
 *
 * Error Handling
 *
 *********************************************************** }

function XtAppSetErrorMsgHandler(para1: TXtAppContext; _X_NORETURN: TXtErrorMsgHandler): TXtErrorMsgHandler; cdecl; external libXt;
procedure XtSetErrorMsgHandler(_X_NORETURN: TXtErrorMsgHandler); cdecl; external libXt;
function XtAppSetWarningMsgHandler(para1: TXtAppContext; para2: TXtErrorMsgHandler): TXtErrorMsgHandler; cdecl; external libXt;
procedure XtSetWarningMsgHandler(para1: TXtErrorMsgHandler); cdecl; external libXt;
procedure XtAppWarningMsg(para1: TXtAppContext; _XtString: TXtString; __XtString: TXtString; ___XtString: TXtString; ____XtString: TXtString; para6: PString; para7: PCardinal); cdecl; external libXt;
procedure XtWarningMsg(_XtString: TXtString; __XtString: TXtString; ___XtString: TXtString; ____XtString: TXtString; para5: PString; para6: PCardinal); cdecl; external libXt;
function XtAppSetErrorHandler(para1: TXtAppContext; _X_NORETURN: TXtErrorHandler): TXtErrorHandler; cdecl; external libXt;
procedure XtSetErrorHandler(_X_NORETURN: TXtErrorHandler); cdecl; external libXt;
function XtAppSetWarningHandler(para1: TXtAppContext; para2: TXtErrorHandler): TXtErrorHandler; cdecl; external libXt;
procedure XtSetWarningHandler(para1: TXtErrorHandler); cdecl; external libXt;
procedure XtAppWarning(para1: TXtAppContext; _XtString: TXtString); cdecl; external libXt;
procedure XtWarning(_XtString: TXtString); cdecl; external libXt;
function XtAppGetErrorDatabase(para1: TXtAppContext): PXrmDatabase; cdecl; external libXt;
function XtGetErrorDatabase: PXrmDatabase; cdecl; external libXt;
procedure XtAppGetErrorDatabaseText(para1: TXtAppContext; _XtString: TXtString; __XtString: TXtString; ____XtString: TXtString; _____XtString: TXtString; para6: TXtString; para7: LongInt; para8: TXrmDatabase); cdecl; external libXt;
procedure XtGetErrorDatabaseText(_XtString: TXtString; __XtString: TXtString; ___XtString: TXtString; ____XtString: TXtString; para5: TXtString; para6: LongInt); cdecl; external libXt;

{***************************************************************
 *
 * Memory Management
 *
 *************************************************************** }
function XtMalloc(para1: TCardinal): PChar; cdecl; external libXt;
function XtCalloc(para1: TCardinal; para2: TCardinal): PChar; cdecl; external libXt;
function XtRealloc(para1: PChar; para2: TCardinal): PChar; cdecl; external libXt;
procedure XtFree(para1: PChar); cdecl; external libXt;

function XtAsprintf(new_string:PXtString; format:Pchar):TCardinal;cdecl; varargs external libXt;

function XtNewString(para1: TString): TString; cdecl; external libXt;
{************************************************************
 *
 *  Work procs
 *
 ************************************************************* }

function XtAddWorkProc(para1: TXtWorkProc; para2: TXtPointer): TXtWorkProcId; cdecl; external libXt;
function XtAppAddWorkProc(para1: TXtAppContext; para2: TXtWorkProc; para3: TXtPointer): TXtWorkProcId; cdecl; external libXt;
procedure XtRemoveWorkProc(para1: TXtWorkProcId); cdecl; external libXt;

{***************************************************************
 *
 * Graphic Context Management
 **************************************************************** }

function XtGetGC(para1: TWidget; para2: TXtGCMask; para3: PXGCValues): TGC; cdecl; external libXt;

function XtAllocateGC(para1: TWidget; para2: TCardinal; para3: TXtGCMask; para4: PXGCValues; para5: TXtGCMask; para6: TXtGCMask): TGC; cdecl; external libXt;

(* This implementation of XtDestroyGC differs from the formal specification
 * for historic backwards compatibility reasons.  As other implementations
 * may conform to the spec, use of XtReleaseGC is strongly encouraged.
 *)

procedure XtDestroyGC(para1: TGC); cdecl; external libXt;
procedure XtReleaseGC(para1: TWidget; para2: TGC); cdecl; external libXt;
procedure XtAppReleaseCacheRefs(para1: TXtAppContext; para2: PXtCacheRef); cdecl; external libXt;
procedure XtCallbackReleaseCacheRef(para1: TWidget; para2: TXtPointer; para3: TXtPointer); cdecl; external libXt;
procedure XtCallbackReleaseCacheRefList(para1: TWidget; para2: TXtPointer; para3: TXtPointer); cdecl; external libXt;
procedure XtSetWMColormapWindows(para1: TWidget; para2: PWidget; para3: TCardinal); cdecl; external libXt;
function XtFindFile(_XtString: TXtString; para2: TSubstitution; para3: TCardinal; para4: TXtFilePredicate): TXtString; cdecl; external libXt;
function XtResolvePathname(para1: PDisplay; _XtString: TXtString; __XtString: TXtString; ___XtString: TXtString; ____XtString: TXtString; para6: TSubstitution; para7: TCardinal; para8: TXtFilePredicate): TXtString; cdecl; external libXt;

{***************************************************************
 *
 * Selections
 *
 **************************************************************** }

const XT_CONVERT_FAIL= $80000001;

procedure XtDisownSelection(para1: TWidget; para2: TAtom; para3: TTime); cdecl; external libXt;
procedure XtGetSelectionValue(para1: TWidget; para2: TAtom; para3: TAtom; para4: TXtSelectionCallbackProc; para5: TXtPointer; para6: TTime); cdecl; external libXt;
procedure XtGetSelectionValues(para1: TWidget; para2: TAtom; para3: PAtom; para4: LongInt; para5: TXtSelectionCallbackProc; para6: PXtPointer; para7: TTime); cdecl; external libXt;
procedure XtAppSetSelectionTimeout(para1: TXtAppContext; para2: culong); cdecl; external libXt;
procedure XtSetSelectionTimeout(para1: culong); cdecl; external libXt;
function XtAppGetSelectionTimeout(para1: TXtAppContext): culong; cdecl; external libXt;
function XtGetSelectionTimeout: culong; cdecl; external libXt;
function XtGetSelectionRequest(para1: TWidget; para2: TAtom; para3: TXtRequestId): PXSelectionRequestEvent; cdecl; external libXt;
procedure XtGetSelectionValueIncremental(para1: TWidget; para2: TAtom; para3: TAtom; para4: TXtSelectionCallbackProc; para5: TXtPointer; para6: TTime); cdecl; external libXt;
procedure XtGetSelectionValuesIncremental(para1: TWidget; para2: TAtom; para3: PAtom; para4: LongInt; para5: TXtSelectionCallbackProc; para6: PXtPointer; para7: TTime); cdecl; external libXt;
procedure XtSetSelectionParameters(para1: TWidget; para2: TAtom; para3: TAtom; para4: TXtPointer; para5: culong; para6: LongInt); cdecl; external libXt;
procedure XtGetSelectionParameters(para1: TWidget; para2: TAtom; para3: TXtRequestId; para4: PAtom; para5: PXtPointer; para6: pculong; para7: PLongInt); cdecl; external libXt;
procedure XtCreateSelectionRequest(para1: TWidget; para2: TAtom); cdecl; external libXt;
procedure XtSendSelectionRequest(para1: TWidget; para2: TAtom; para3: TTime); cdecl; external libXt;
procedure XtCancelSelectionRequest(para1: TWidget; para2: TAtom); cdecl; external libXt;
function XtReservePropertyAtom(para1: TWidget): TAtom; cdecl; external libXt;
procedure XtReleasePropertyAtom(para1: TWidget; para2: TAtom); cdecl; external libXt;
procedure XtGrabKey(para1: TWidget; para2: TXtKeyCode; para3: TModifiers; para4: TXtBoolean; para5: LongInt; para6: LongInt); cdecl; external libXt;
procedure XtUngrabKey(para1: TWidget; para2: TXtKeyCode; para3: TModifiers); cdecl; external libXt;
function XtGrabKeyboard(para1: TWidget; para2: TXtBoolean; para3: LongInt; para4: LongInt; para5: TTime): LongInt; cdecl; external libXt;
procedure XtUngrabKeyboard(para1: TWidget; para2: TTime); cdecl; external libXt;
procedure XtGrabButton(para1: TWidget; para2: LongInt; para3: TModifiers; para4: TXtBoolean; para5: DWord; para6: LongInt; para7: LongInt; para8: TWindow; para9: TCursor); cdecl; external libXt;
procedure XtUngrabButton(para1: TWidget; para2: DWord; para3: TModifiers); cdecl; external libXt;
function XtGrabPointer(para1: TWidget; para2: TXtBoolean; para3: DWord; para4: LongInt; para5: LongInt; para6: TWindow; para7: TCursor; para8: TTime): LongInt; cdecl; external libXt;
procedure XtUngrabPointer(para1: TWidget; para2: TTime); cdecl; external libXt;
procedure XtGetApplicationNameAndClass(para1: PDisplay; para2: PString; para3: PString); cdecl; external libXt;
procedure XtRegisterDrawable(para1: PDisplay; para2: TDrawable; para3: TWidget); cdecl; external libXt;
procedure XtUnregisterDrawable(para1: PDisplay; para2: TDrawable); cdecl; external libXt;
function XtHooksOfDisplay(para1: PDisplay): TWidget; cdecl; external libXt;

type
  PXtCreateHookDataRec = ^TXtCreateHookDataRec;
  TXtCreateHookDataRec = record
    _type: TString;
    widget: TWidget;
    args: TArgList;
    num_args: TCardinal;
  end;
  TXtCreateHookData = PXtCreateHookDataRec;
  PXtCreateHookData = ^TXtCreateHookData;

  PXtChangeHookDataRec = ^TXtChangeHookDataRec;

  TXtChangeHookDataRec = record
    _type: TString;
    widget: TWidget;
    event_data: TXtPointer;
    num_event_data: TCardinal;
  end;
  TXtChangeHookData = PXtChangeHookDataRec;
  PXtChangeHookData = ^TXtChangeHookData;

  PXtChangeHookSetValuesDataRec = ^TXtChangeHookSetValuesDataRec;

  TXtChangeHookSetValuesDataRec = record
    old: TWidget;
    req: TWidget;
    args: TArgList;
    num_args: TCardinal;
  end;
  TXtChangeHookSetValuesData = PXtChangeHookSetValuesDataRec;
  PXtChangeHookSetValuesData = ^TXtChangeHookSetValuesData;

  PXtConfigureHookDataRec = ^TXtConfigureHookDataRec;

  TXtConfigureHookDataRec = record
    _type: TString;
    widget: TWidget;
    changeMask: TXtGeometryMask;
    changes: TXWindowChanges;
  end;
  TXtConfigureHookData = PXtConfigureHookDataRec;
  PXtConfigureHookData = ^TXtConfigureHookData;

  PXtGeometryHookDataRec = ^TXtGeometryHookDataRec;

  TXtGeometryHookDataRec = record
    _type: TString;
    widget: TWidget;
    request: PXtWidgetGeometry;
    reply: PXtWidgetGeometry;
    Result: TXtGeometryResult;
  end;
  TXtGeometryHookData = PXtGeometryHookDataRec;
  PXtGeometryHookData = ^TXtGeometryHookData;

  PXtDestroyHookDataRec = ^TXtDestroyHookDataRec;

  TXtDestroyHookDataRec = record
    _type: TString;
    widget: TWidget;
  end;
  TXtDestroyHookData = PXtDestroyHookDataRec;
  PXtDestroyHookData = ^TXtDestroyHookData;


procedure XtGetDisplays(para1: TXtAppContext; para2: PPPDisplay; para3: PCardinal); cdecl; external libXt;
function XtToolkitThreadInitialize: TBoolean; cdecl; external libXt;
procedure XtAppSetExitFlag(para1: TXtAppContext); cdecl; external libXt;
function XtAppGetExitFlag(para1: TXtAppContext): TBoolean; cdecl; external libXt;
procedure XtAppLock(para1: TXtAppContext); cdecl; external libXt;
procedure XtAppUnlock(para1: TXtAppContext); cdecl; external libXt;
{
 *	Predefined Resource Converters
  }
function XtCvtStringToAcceleratorTable(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;
function XtCvtStringToAtom(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;
function XtCvtStringToBool(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;
function XtCvtStringToBoolean(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;
function XtCvtStringToCommandArgArray(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;
function XtCvtStringToCursor(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;
function XtCvtStringToDimension(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;
function XtCvtStringToDirectoryString(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;
function XtCvtStringToDisplay(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;
function XtCvtStringToFile(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;
function XtCvtStringToFloat(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;
function XtCvtStringToFont(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;
function XtCvtStringToFontSet(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;
function XtCvtStringToFontStruct(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;
function XtCvtStringToGravity(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;
function XtCvtStringToInitialState(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;
function XtCvtStringToInt(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;
function XtCvtStringToPixel(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;

function XtCvtStringToRestartStyle(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;
function XtCvtStringToShort(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;
function XtCvtStringToTranslationTable(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;
function XtCvtStringToUnsignedChar(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;
function XtCvtStringToVisual(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;
function XtCvtIntToBool(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;
function XtCvtIntToBoolean(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;
function XtCvtIntToColor(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;

function XtCvtIntToFloat(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;
function XtCvtIntToFont(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;
function XtCvtIntToPixel(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;
function XtCvtIntToPixmap(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;

function XtCvtIntToShort(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;
function XtCvtIntToUnsignedChar(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;
function XtCvtColorToPixel(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt;


function XtCvtStringToPosition(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt Name 'XtCvtStringToShort';
function XtCvtIntToDimension(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt Name 'XtCvtIntToShort';
function XtCvtIntToPosition(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt Name 'XtCvtIntToShort';
function XtCvtPixelToColor(para1: PDisplay; para2: TXrmValuePtr; para3: PCardinal; para4: TXrmValuePtr; para5: TXrmValuePtr; para6: PXtPointer): TBoolean; cdecl; external libXt Name 'XtCvtIntToColor';

implementation

function XtNumber(arr: array of TArg): cardinal;
begin
  //      XtNumber:=TCardinal((sizeof(arr))/(sizeof(arr[0])));
  XtNumber := (sizeof(arr)) div (sizeof(TArg));
  Result := Length(arr);
end;

function XtIsRectObj(widget: TWidget): boolean;
begin
  XtIsRectObj := _XtCheckSubclassFlag(widget, TXtEnum($02));
end;

function XtIsWidget(widget: TWidget): boolean;
begin
  XtIsWidget := _XtCheckSubclassFlag(widget, TXtEnum($04));
end;

function XtIsComposite(widget: TWidget): boolean;
begin
  XtIsComposite := _XtCheckSubclassFlag(widget, TXtEnum($08));
end;

function XtIsConstraint(widget: TWidget): boolean;
begin
  XtIsConstraint := _XtCheckSubclassFlag(widget, TXtEnum($10));
end;

function XtIsShell(widget: TWidget): boolean;
begin
  XtIsShell := _XtCheckSubclassFlag(widget, TXtEnum($20));
end;

procedure XtSetArg(var arg: TArg; n: TXtString; d: PChar);
begin
  arg.Name := n;
  arg.valueP := d;
end;

procedure XtSetArg(var arg: TArg; n: TXtString; d: PtrInt);
begin
  arg.Name := n;
  arg.valueI := d;
end;

function XtIsWMShell(widget: TWidget): TBoolean;
begin
  XtIsWMShell:=_XtCheckSubclassFlag(widget,TXtEnum($40));
end;

function XtIsTopLevelShell(widget : TWidget) : TBoolean;
begin
  XtIsTopLevelShell:=_XtCheckSubclassFlag(widget,TXtEnum($80));
end;

function XtUnspecifiedPixmap: TPixmap;
begin
  XtUnspecifiedPixmap := TPixmap(2);
end;

//function XtOffset(p_type,field : LongInt) : TCardinal;
//begin
//  XtOffset:=TCardinal((Pchar(@((Tp_type(NULL))^.field)))-(Pchar(NULL)));
//end;

begin

end.
