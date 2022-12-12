
unit Intrinsic;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Intrinsic.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Intrinsic.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Intrinsic.pp
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
    PArg  = ^Arg;
    PArgList  = ^ArgList;
    PAtom  = ^Atom;
    PBoolean  = ^Boolean;
    PCardinal  = ^Cardinal;
    Pchar  = ^char;
    PCompositeRec  = ^CompositeRec;
    PCompositeWidget  = ^CompositeWidget;
    PDimension  = ^Dimension;
    PDisplay  = ^Display;
    Pdword  = ^dword;
    PEventMask  = ^EventMask;
    PKeyCode  = ^KeyCode;
    PKeySym  = ^KeySym;
    Plongint  = ^longint;
    PModifiers  = ^Modifiers;
    POpaque  = ^Opaque;
    PPixel  = ^Pixel;
    PPosition  = ^Position;
    PScreen  = ^Screen;
    PString  = ^String;
    PSubstitution  = ^Substitution;
    PSubstitutionRec  = ^SubstitutionRec;
    PTime  = ^Time;
    PTranslationData  = ^TranslationData;
    Ptype  = ^type;
    PWidget  = ^Widget;
    PWidgetClass  = ^WidgetClass;
    PWidgetClassRec  = ^WidgetClassRec;
    PWidgetList  = ^WidgetList;
    PWidgetRec  = ^WidgetRec;
    PXEvent  = ^XEvent;
    PXGCValues  = ^XGCValues;
    PXrmDatabase  = ^XrmDatabase;
    PXrmOptionDescRec  = ^XrmOptionDescRec;
    PXrmValue  = ^XrmValue;
    PXSelectionRequestEvent  = ^XSelectionRequestEvent;
    PXtAccelerators  = ^XtAccelerators;
    PXtActionHookId  = ^XtActionHookId;
    PXtActionList  = ^XtActionList;
    PXtActionProc  = ^XtActionProc;
    PXtActionsRec  = ^XtActionsRec;
    PXtAddressMode  = ^XtAddressMode;
    PXtAppContext  = ^XtAppContext;
    PXtAppStruct  = ^XtAppStruct;
    PXtArgVal  = ^XtArgVal;
    PXtBlockHookId  = ^XtBlockHookId;
    PXtBoundActions  = ^XtBoundActions;
    PXtCacheRef  = ^XtCacheRef;
    PXtCacheType  = ^XtCacheType;
    PXtCallbackList  = ^XtCallbackList;
    PXtCallbackRec  = ^XtCallbackRec;
    PXtCallbackStatus  = ^XtCallbackStatus;
    PXtChangeHookData  = ^XtChangeHookData;
    PXtChangeHookDataRec  = ^XtChangeHookDataRec;
    PXtChangeHookSetValuesData  = ^XtChangeHookSetValuesData;
    PXtChangeHookSetValuesDataRec  = ^XtChangeHookSetValuesDataRec;
    PXtCheckpointToken  = ^XtCheckpointToken;
    PXtCheckpointTokenRec  = ^XtCheckpointTokenRec;
    PXtConfigureHookData  = ^XtConfigureHookData;
    PXtConfigureHookDataRec  = ^XtConfigureHookDataRec;
    PXtConvertArgList  = ^XtConvertArgList;
    PXtConvertArgRec  = ^XtConvertArgRec;
    PXtCreateHookData  = ^XtCreateHookData;
    PXtCreateHookDataRec  = ^XtCreateHookDataRec;
    PXtDestroyHookData  = ^XtDestroyHookData;
    PXtDestroyHookDataRec  = ^XtDestroyHookDataRec;
    PXtEnum  = ^XtEnum;
    PXtEventRec  = ^XtEventRec;
    PXtEventTable  = ^XtEventTable;
    PXtGCMask  = ^XtGCMask;
    PXtGeometryHookData  = ^XtGeometryHookData;
    PXtGeometryHookDataRec  = ^XtGeometryHookDataRec;
    PXtGeometryMask  = ^XtGeometryMask;
    PXtGeometryResult  = ^XtGeometryResult;
    PXtGrabKind  = ^XtGrabKind;
    PXtInputId  = ^XtInputId;
    PXtInputMask  = ^XtInputMask;
    PXtIntervalId  = ^XtIntervalId;
    PXtListPosition  = ^XtListPosition;
    PXtPointer  = ^XtPointer;
    PXtPopdownID  = ^XtPopdownID;
    PXtPopdownIDRec  = ^XtPopdownIDRec;
    PXtRequestId  = ^XtRequestId;
    PXtResource  = ^XtResource;
    PXtResourceList  = ^XtResourceList;
    PXtSignalId  = ^XtSignalId;
    PXtString  = ^XtString;
    PXtTranslations  = ^XtTranslations;
    PXtValueMask  = ^XtValueMask;
    PXtVarArgsList  = ^XtVarArgsList;
    PXtWidgetGeometry  = ^XtWidgetGeometry;
    PXtWorkProcId  = ^XtWorkProcId;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XtIntrinsic_h}
{$define _XtIntrinsic_h}
{$include	<X11/Xlib.h>}
{$include	<X11/Xutil.h>}
{$include	<X11/Xresource.h>}
{$include	<X11/Xfuncproto.h>}
{$ifdef XT_BC}
{$include <X11/Xos.h>		/* for R4 compatibility */}
{$else}
{$include <X11/Xosdefs.h>}
{$include <string.h>		/* for XtNewString */}
{$endif}


const
  XtSpecificationRelease = 7;  

{$ifdef _CONST_X_STRING}
type
  PString = ^TString;
  TString = Pchar;
{$else}
type
  PString = ^TString;
  TString = Pchar;
{$endif}

(* error 
#define _XtString char*
in define line 82 *)

{$if NeedWidePrototypes}

    const
      _XtBoolean = longint;      
      _XtDimension = dword;      
      _XtKeyCode = dword;      
      _XtPosition = longint;      
      _XtXtEnum = dword;      
{$else}

    const
      _XtBoolean = Boolean;      
      _XtDimension = Dimension;      
      _XtKeyCode = KeyCode;      
      _XtPosition = Position;      
      _XtXtEnum = XtEnum;      
{$endif}

{$include <stddef.h>}
{$ifdef VMS}

    const
      externalref = globalref;      
(* error 
#define externaldef(psect) globaldef {"psect"} noshare
in define line 103 *)
{$else}
(* error 
#define externalref extern
in define line 105 *)
(* error 
#define externaldef(psect)
in define line 106 *)
{$endif}

{$ifndef FALSE}

    const
      FALSE = 0;      
      TRUE = 1;      
{$endif}

    function XtNumber(arr : longint) : TCardinal;    

    type
      PWidget = ^TWidget;
      TWidget = PWidgetRec;

      PWidgetList = ^TWidgetList;
      TWidgetList = PWidget;

      PWidgetClass = ^TWidgetClass;
      TWidgetClass = PWidgetClassRec;

      PCompositeWidget = ^TCompositeWidget;
      TCompositeWidget = PCompositeRec;

      PXtActionList = ^TXtActionList;
      TXtActionList = PXtActionsRec;

      PXtEventTable = ^TXtEventTable;
      TXtEventTable = PXtEventRec;

      PXtAppContext = ^TXtAppContext;
      TXtAppContext = PXtAppStruct;

      PXtValueMask = ^TXtValueMask;
      TXtValueMask = dword;

      PXtIntervalId = ^TXtIntervalId;
      TXtIntervalId = dword;

      PXtInputId = ^TXtInputId;
      TXtInputId = dword;

      PXtWorkProcId = ^TXtWorkProcId;
      TXtWorkProcId = dword;

      PXtSignalId = ^TXtSignalId;
      TXtSignalId = dword;

      PXtGeometryMask = ^TXtGeometryMask;
      TXtGeometryMask = dword;

      PXtGCMask = ^TXtGCMask;
      TXtGCMask = dword;


      PPixel = ^TPixel;
      TPixel = dword;


      PXtCacheType = ^TXtCacheType;
      TXtCacheType = longint;

    const
      XtCacheNone = $001;      
      XtCacheAll = $002;      
      XtCacheByDisplay = $003;      
      XtCacheRefCount = $100;      

    type
      PBoolean = ^TBoolean;
      TBoolean = char;

      PXtArgVal = ^TXtArgVal;
      TXtArgVal = longint;

      PXtEnum = ^TXtEnum;
      TXtEnum = byte;

      PCardinal = ^TCardinal;
      TCardinal = dword;

      PDimension = ^TDimension;
      TDimension = word;


      PPosition = ^TPosition;
      TPosition = smallint;


      PXtPointer = ^TXtPointer;
      TXtPointer = pointer;



      POpaque = ^TOpaque;
      TOpaque = TXtPointer;
{$include <X11/Core.h>}
{$include <X11/Composite.h>}
{$include <X11/Constraint.h>}
{$include <X11/Object.h>}
{$include <X11/RectObj.h>}
    type
      PXtTranslations = ^TXtTranslations;
      TXtTranslations = PTranslationData;

      PXtAccelerators = ^TXtAccelerators;
      TXtAccelerators = PTranslationData;

      PModifiers = ^TModifiers;
      TModifiers = dword;


      TXtActionProc = procedure (para1:TWidget; para2:PXEvent; para3:PString; para4:PCardinal);cdecl;

      PXtBoundActions = ^TXtBoundActions;
      TXtBoundActions = PXtActionProc;

      PXtActionsRec = ^TXtActionsRec;
      TXtActionsRec = record
          _string : TString;
          proc : TXtActionProc;
        end;










      PXtAddressMode = ^TXtAddressMode;
      TXtAddressMode = (XtAddress,XtBaseOffset,XtImmediate,XtResourceString,
        XtResourceQuark,XtWidgetBaseOffset,
        XtProcedureArg);

      PXtConvertArgRec = ^TXtConvertArgRec;
      TXtConvertArgRec = record
          address_mode : TXtAddressMode;
          address_id : TXtPointer;
          size : TCardinal;
        end;
      TXtConvertArgList = PXtConvertArgRec;
      PXtConvertArgList = ^TXtConvertArgList;


      TXtConvertArgProc = procedure (para1:TWidget; para2:PCardinal; para3:PXrmValue);cdecl;


      PXtWidgetGeometry = ^TXtWidgetGeometry;
      TXtWidgetGeometry = record
          request_mode : TXtGeometryMask;
          x : TPosition;
          y : TPosition;
          width : TDimension;
          height : TDimension;
          border_width : TDimension;
          sibling : TWidget;
          stack_mode : longint;
        end;


    const
      XtCWQueryOnly = 1 shl 7;      

      XtSMDontChange = 5;      


    type

      TXtConverter = procedure (para1:PXrmValue; para2:PCardinal; para3:PXrmValue; para4:PXrmValue);cdecl;


      TXtTypeConverter = function (para1:PDisplay; para2:PXrmValue; para3:PCardinal; para4:PXrmValue; para5:PXrmValue; 
                   para6:PXtPointer):TBoolean;cdecl;


      TXtDestructor = procedure (para1:TXtAppContext; para2:PXrmValue; para3:TXtPointer; para4:PXrmValue; para5:PCardinal);cdecl;

      PXtCacheRef = ^TXtCacheRef;
      TXtCacheRef = TOpaque;

      PXtActionHookId = ^TXtActionHookId;
      TXtActionHookId = TOpaque;


      TXtActionHookProc = procedure (para1:TWidget; para2:TXtPointer; para3:TString; para4:PXEvent; para5:PString; 
                    para6:PCardinal);cdecl;

      PXtBlockHookId = ^TXtBlockHookId;
      TXtBlockHookId = dword;


      TXtBlockHookProc = procedure (para1:TXtPointer);cdecl;


      TXtKeyProc = procedure (para1:PDisplay; para2:TXtKeyCode; para3:TModifiers; para4:PModifiers; para5:PKeySym);cdecl;


      TXtCaseProc = procedure (para1:PDisplay; para2:TKeySym; para3:PKeySym; para4:PKeySym);cdecl;


      TXtEventHandler = procedure (para1:TWidget; para2:TXtPointer; para3:PXEvent; para4:PBoolean);cdecl;

      PEventMask = ^TEventMask;
      TEventMask = dword;

      PXtListPosition = ^TXtListPosition;
      TXtListPosition = (XtListHead,XtListTail);

      PXtInputMask = ^TXtInputMask;
      TXtInputMask = dword;

    const
      XtInputNoneMask = 0;      
      XtInputReadMask = 1 shl 0;      
      XtInputWriteMask = 1 shl 1;      
      XtInputExceptMask = 1 shl 2;      

    type

      TXtTimerCallbackProc = procedure (para1:TXtPointer; para2:PXtIntervalId);cdecl;


      TXtInputCallbackProc = procedure (para1:TXtPointer; para2:Plongint; para3:PXtInputId);cdecl;


      TXtSignalCallbackProc = procedure (para1:TXtPointer; para2:PXtSignalId);cdecl;

      PArg = ^TArg;
      TArg = record
          name : TString;
          value : TXtArgVal;
        end;
      TArgList = PArg;
      PArgList = ^TArgList;

      PXtVarArgsList = ^TXtVarArgsList;
      TXtVarArgsList = TXtPointer;



      TXtCallbackProc = procedure (para1:TWidget; para2:TXtPointer; para3:TXtPointer);cdecl;

      PXtCallbackRec = ^TXtCallbackRec;
      TXtCallbackRec = record
          callback : TXtCallbackProc;
          closure : TXtPointer;
        end;
      TXtCallbackList = PXtCallbackRec;
      PXtCallbackList = ^TXtCallbackList;

      PXtCallbackStatus = ^TXtCallbackStatus;
      TXtCallbackStatus = (XtCallbackNoList,XtCallbackHasNone,
        XtCallbackHasSome);





      PXtGeometryResult = ^TXtGeometryResult;
      TXtGeometryResult = (XtGeometryYes,XtGeometryNo,XtGeometryAlmost,
        XtGeometryDone);

      PXtGrabKind = ^TXtGrabKind;
      TXtGrabKind = (XtGrabNone,XtGrabNonexclusive,XtGrabExclusive
        );

      PXtPopdownIDRec = ^TXtPopdownIDRec;
      TXtPopdownIDRec = record
          shell_widget : TWidget;
          enable_widget : TWidget;
        end;
      TXtPopdownID = PXtPopdownIDRec;
      PXtPopdownID = ^TXtPopdownID;








      PXtResource = ^TXtResource;
      TXtResource = record
          resource_name : TString;
          resource_class : TString;
          resource_type : TString;
          resource_size : TCardinal;
          resource_offset : TCardinal;
          default_type : TString;
          default_addr : TXtPointer;
        end;
      TXtResourceList = PXtResource;
      PXtResourceList = ^TXtResourceList;


      TXtResourceDefaultProc = procedure (para1:TWidget; para2:longint; para3:PXrmValue);cdecl;


      TXtLanguageProc = function (para1:PDisplay; para2:TString; para3:TXtPointer):TString;cdecl;


      TXtErrorMsgHandler = procedure (para1:TString; para2:TString; para3:TString; para4:TString; para5:PString; 
                    para6:PCardinal);cdecl;


      TXtErrorHandler = procedure (para1:TString);cdecl;


      TXtCreatePopupChildProc = procedure (para1:TWidget);cdecl;


      TXtWorkProc = function (para1:TXtPointer):TBoolean;cdecl;

      PSubstitutionRec = ^TSubstitutionRec;
      TSubstitutionRec = record
          match : char;
          substitution : TXtString;
        end;
      TSubstitution = PSubstitutionRec;
      PSubstitution = ^TSubstitution;


      TXtFilePredicate = function (para1:TString):TBoolean;cdecl;

      PXtRequestId = ^TXtRequestId;
      TXtRequestId = TXtPointer;


      TXtConvertSelectionProc = function (para1:TWidget; para2:PAtom; para3:PAtom; para4:PAtom; para5:PXtPointer; 
                   para6:Pdword; para7:Plongint):TBoolean;cdecl;


      TXtLoseSelectionProc = procedure (para1:TWidget; para2:PAtom);cdecl;


      TXtSelectionDoneProc = procedure (para1:TWidget; para2:PAtom; para3:PAtom);cdecl;


      TXtSelectionCallbackProc = procedure (para1:TWidget; para2:TXtPointer; para3:PAtom; para4:PAtom; para5:TXtPointer; 
                    para6:Pdword; para7:Plongint);cdecl;


      TXtLoseSelectionIncrProc = procedure (para1:TWidget; para2:PAtom; para3:TXtPointer);cdecl;


      TXtSelectionDoneIncrProc = procedure (para1:TWidget; para2:PAtom; para3:PAtom; para4:PXtRequestId; para5:TXtPointer);cdecl;


      TXtConvertSelectionIncrProc = function (para1:TWidget; para2:PAtom; para3:PAtom; para4:PAtom; para5:PXtPointer; 
                   para6:Pdword; para7:Plongint; para8:Pdword; para9:TXtPointer; para10:PXtRequestId):TBoolean;cdecl;


      TXtCancelConvertSelectionProc = procedure (para1:TWidget; para2:PAtom; para3:PAtom; para4:PXtRequestId; para5:TXtPointer);cdecl;


      TXtEventDispatchProc = function (para1:PXEvent):TBoolean;cdecl;


      TXtExtensionSelectProc = procedure (para1:TWidget; para2:Plongint; para3:PXtPointer; para4:longint; para5:TXtPointer);cdecl;

(* error 
extern Boolean XtConvertAndStore(

in declaration at line 509 *)


function XtCallConverter(para1:PDisplay; para2:TXtTypeConverter; para3:TXrmValuePtr; para4:TCardinal; para5:TXrmValuePtr; 
               para6:PXrmValue; para7:PXtCacheRef):TBoolean;cdecl;external;

function XtDispatchEvent(para1:PXEvent):TBoolean;cdecl;external;

function XtCallAcceptFocus(para1:TWidget; para2:PTime):TBoolean;cdecl;external;


function XtPeekEvent(para1:PXEvent):TBoolean;cdecl;external;

function XtAppPeekEvent(para1:TXtAppContext; para2:PXEvent):TBoolean;cdecl;external;

function XtIsSubclass(para1:TWidget; para2:TWidgetClass):TBoolean;cdecl;external;

function XtIsObject(para1:TWidget):TBoolean;cdecl;external;


function _XtCheckSubclassFlag(para1:TWidget; para2:TXtXtEnum):TBoolean;cdecl;external;


function _XtIsSubclassOf(para1:TWidget; para2:TWidgetClass; para3:TWidgetClass; para4:TXtXtEnum):TBoolean;cdecl;external;

function XtIsManaged(para1:TWidget):TBoolean;cdecl;external;

function XtIsRealized(para1:TWidget):TBoolean;cdecl;external;

function XtIsSensitive(para1:TWidget):TBoolean;cdecl;external;

function XtOwnSelection(para1:TWidget; para2:TAtom; para3:TTime; para4:TXtConvertSelectionProc; para5:TXtLoseSelectionProc; 
               para6:TXtSelectionDoneProc):TBoolean;cdecl;external;

function XtOwnSelectionIncremental(para1:TWidget; para2:TAtom; para3:TTime; para4:TXtConvertSelectionIncrProc; para5:TXtLoseSelectionIncrProc; 
               para6:TXtSelectionDoneIncrProc; para7:TXtCancelConvertSelectionProc; para8:TXtPointer):TBoolean;cdecl;external;

function XtMakeResizeRequest(para1:TWidget; para2:TXtDimension; para3:TXtDimension; para4:PDimension; para5:PDimension):TXtGeometryResult;cdecl;external;

procedure XtTranslateCoords(para1:TWidget; para2:TXtPosition; para3:TXtPosition; para4:PPosition; para5:PPosition);cdecl;external;

function XtGetKeysymTable(para1:PDisplay; para2:PKeyCode; para3:Plongint):PKeySym;cdecl;external;

procedure XtKeysymToKeycodeList(para1:PDisplay; para2:TKeySym; para3:PPKeyCode; para4:PCardinal);cdecl;external;


procedure XtStringConversionWarning(_XtString:TXconst; _XtString:TXconst);cdecl;external;

procedure XtDisplayStringConversionWarning(para1:PDisplay; _XtString:TXconst; _XtString:TXconst);cdecl;external;
(* error 
externalref XtConvertArgRec const colorConvertArgs[];
 in declarator_list *)
(* error 
externalref XtConvertArgRec const screenConvertArg[];
 in declarator_list *)


procedure XtAppAddConverter(para1:TXtAppContext; _XtString:TXconst; _XtString:TXconst; para4:TXtConverter; para5:TXtConvertArgList; 
                para6:TCardinal);cdecl;external;


procedure XtAddConverter(_XtString:TXconst; _XtString:TXconst; para3:TXtConverter; para4:TXtConvertArgList; para5:TCardinal);cdecl;external;

procedure XtSetTypeConverter(_XtString:TXconst; _XtString:TXconst; para3:TXtTypeConverter; para4:TXtConvertArgList; para5:TCardinal; 
                para6:TXtCacheType; para7:TXtDestructor);cdecl;external;

procedure XtAppSetTypeConverter(para1:TXtAppContext; _XtString:TXconst; _XtString:TXconst; para4:TXtTypeConverter; para5:TXtConvertArgList; 
                para6:TCardinal; para7:TXtCacheType; para8:TXtDestructor);cdecl;external;


procedure XtConvert(para1:TWidget; _XtString:TXconst; para3:PXrmValue; _XtString:TXconst; para5:PXrmValue);cdecl;external;


procedure XtDirectConvert(para1:TXtConverter; para2:TXrmValuePtr; para3:TCardinal; para4:TXrmValuePtr; para5:PXrmValue);cdecl;external;


function XtParseTranslationTable(_XtString:TXconst):TXtTranslations;cdecl;external;

function XtParseAcceleratorTable(_XtString:TXconst):TXtAccelerators;cdecl;external;

procedure XtOverrideTranslations(para1:TWidget; para2:TXtTranslations);cdecl;external;

procedure XtAugmentTranslations(para1:TWidget; para2:TXtTranslations);cdecl;external;

procedure XtInstallAccelerators(para1:TWidget; para2:TWidget);cdecl;external;

procedure XtInstallAllAccelerators(para1:TWidget; para2:TWidget);cdecl;external;

procedure XtUninstallTranslations(para1:TWidget);cdecl;external;

procedure XtAppAddActions(para1:TXtAppContext; para2:TXtActionList; para3:TCardinal);cdecl;external;


procedure XtAddActions(para1:TXtActionList; para2:TCardinal);cdecl;external;

function XtAppAddActionHook(para1:TXtAppContext; para2:TXtActionHookProc; para3:TXtPointer):TXtActionHookId;cdecl;external;

procedure XtRemoveActionHook(para1:TXtActionHookId);cdecl;external;

procedure XtGetActionList(para1:TWidgetClass; para2:PXtActionList; para3:PCardinal);cdecl;external;

procedure XtCallActionProc(para1:TWidget; _XtString:TXconst; para3:PXEvent; para4:PString; para5:TCardinal);cdecl;external;

procedure XtRegisterGrabAction(para1:TXtActionProc; para2:TXtBoolean; para3:dword; para4:longint; para5:longint);cdecl;external;

procedure XtSetMultiClickTime(para1:PDisplay; para2:longint);cdecl;external;

function XtGetMultiClickTime(para1:PDisplay):longint;cdecl;external;

function XtGetActionKeysym(para1:PXEvent; para2:PModifiers):TKeySym;cdecl;external;


procedure XtTranslateKeycode(para1:PDisplay; para2:TXtKeyCode; para3:TModifiers; para4:PModifiers; para5:PKeySym);cdecl;external;

procedure XtTranslateKey(para1:PDisplay; para2:TXtKeyCode; para3:TModifiers; para4:PModifiers; para5:PKeySym);cdecl;external;

procedure XtSetKeyTranslator(para1:PDisplay; para2:TXtKeyProc);cdecl;external;

procedure XtRegisterCaseConverter(para1:PDisplay; para2:TXtCaseProc; para3:TKeySym; para4:TKeySym);cdecl;external;

procedure XtConvertCase(para1:PDisplay; para2:TKeySym; para3:PKeySym; para4:PKeySym);cdecl;external;


    function XtAllEvents : TEventMask;      


procedure XtAddEventHandler(para1:TWidget; para2:TEventMask; para3:TXtBoolean; para4:TXtEventHandler; para5:TXtPointer);cdecl;external;

procedure XtRemoveEventHandler(para1:TWidget; para2:TEventMask; para3:TXtBoolean; para4:TXtEventHandler; para5:TXtPointer);cdecl;external;

procedure XtAddRawEventHandler(para1:TWidget; para2:TEventMask; para3:TXtBoolean; para4:TXtEventHandler; para5:TXtPointer);cdecl;external;

procedure XtRemoveRawEventHandler(para1:TWidget; para2:TEventMask; para3:TXtBoolean; para4:TXtEventHandler; para5:TXtPointer);cdecl;external;

procedure XtInsertEventHandler(para1:TWidget; para2:TEventMask; para3:TXtBoolean; para4:TXtEventHandler; para5:TXtPointer; 
                para6:TXtListPosition);cdecl;external;

procedure XtInsertRawEventHandler(para1:TWidget; para2:TEventMask; para3:TXtBoolean; para4:TXtEventHandler; para5:TXtPointer; 
                para6:TXtListPosition);cdecl;external;

function XtSetEventDispatcher(para1:PDisplay; para2:longint; para3:TXtEventDispatchProc):TXtEventDispatchProc;cdecl;external;

function XtDispatchEventToWidget(para1:TWidget; para2:PXEvent):TBoolean;cdecl;external;

procedure XtInsertEventTypeHandler(para1:TWidget; para2:longint; para3:TXtPointer; para4:TXtEventHandler; para5:TXtPointer; 
                para6:TXtListPosition);cdecl;external;

procedure XtRemoveEventTypeHandler(para1:TWidget; para2:longint; para3:TXtPointer; para4:TXtEventHandler; para5:TXtPointer);cdecl;external;

function XtBuildEventMask(para1:TWidget):TEventMask;cdecl;external;

procedure XtRegisterExtensionSelector(para1:PDisplay; para2:longint; para3:longint; para4:TXtExtensionSelectProc; para5:TXtPointer);cdecl;external;

procedure XtAddGrab(para1:TWidget; para2:TXtBoolean; para3:TXtBoolean);cdecl;external;

procedure XtRemoveGrab(para1:TWidget);cdecl;external;


procedure XtProcessEvent(para1:TXtInputMask);cdecl;external;

procedure XtAppProcessEvent(para1:TXtAppContext; para2:TXtInputMask);cdecl;external;

procedure XtMainLoop;cdecl;external;

procedure XtAppMainLoop(para1:TXtAppContext);cdecl;external;

procedure XtAddExposureToRegion(para1:PXEvent; para2:TRegion);cdecl;external;

procedure XtSetKeyboardFocus(para1:TWidget; para2:TWidget);cdecl;external;

function XtGetKeyboardFocusWidget(para1:TWidget):TWidget;cdecl;external;

function XtLastEventProcessed(para1:PDisplay):PXEvent;cdecl;external;

function XtLastTimestampProcessed(para1:PDisplay):TTime;cdecl;external;



function XtAddTimeOut(para1:dword; para2:TXtTimerCallbackProc; para3:TXtPointer):TXtIntervalId;cdecl;external;

function XtAppAddTimeOut(para1:TXtAppContext; para2:dword; para3:TXtTimerCallbackProc; para4:TXtPointer):TXtIntervalId;cdecl;external;

procedure XtRemoveTimeOut(para1:TXtIntervalId);cdecl;external;


function XtAddInput(para1:longint; para2:TXtPointer; para3:TXtInputCallbackProc; para4:TXtPointer):TXtInputId;cdecl;external;

function XtAppAddInput(para1:TXtAppContext; para2:longint; para3:TXtPointer; para4:TXtInputCallbackProc; para5:TXtPointer):TXtInputId;cdecl;external;

procedure XtRemoveInput(para1:TXtInputId);cdecl;external;
function XtAddSignal(para1:TXtSignalCallbackProc; para2:TXtPointer):TXtSignalId;cdecl;external;

function XtAppAddSignal(para1:TXtAppContext; para2:TXtSignalCallbackProc; para3:TXtPointer):TXtSignalId;cdecl;external;

procedure XtRemoveSignal(para1:TXtSignalId);cdecl;external;

procedure XtNoticeSignal(para1:TXtSignalId);cdecl;external;


procedure XtNextEvent(para1:PXEvent);cdecl;external;

procedure XtAppNextEvent(para1:TXtAppContext; para2:PXEvent);cdecl;external;
    const
      XtIMXEvent = 1;      
      XtIMTimer = 2;      
      XtIMAlternateInput = 4;      
      XtIMSignal = 8;      
      XtIMAll = ((XtIMXEvent or XtIMTimer) or XtIMAlternateInput) or XtIMSignal;      


function XtPending:TBoolean;cdecl;external;

function XtAppPending(para1:TXtAppContext):TXtInputMask;cdecl;external;

function XtAppAddBlockHook(para1:TXtAppContext; para2:TXtBlockHookProc; para3:TXtPointer):TXtBlockHookId;cdecl;external;

procedure XtRemoveBlockHook(para1:TXtBlockHookId);cdecl;external;

    function XtIsRectObj(object : longint) : longint;    

    function XtIsWidget(object : longint) : longint;    

    function XtIsComposite(widget : longint) : longint;    

    function XtIsConstraint(widget : longint) : longint;    

    function XtIsShell(widget : longint) : longint;    

{$undef XtIsOverrideShell}
function XtIsOverrideShell(para1:TWidget):TBoolean;cdecl;external;
    function XtIsOverrideShell(widget : longint) : longint;    

    function XtIsWMShell(widget : longint) : longint;    

{$undef XtIsVendorShell}
function XtIsVendorShell(para1:TWidget):TBoolean;cdecl;external;
    function XtIsVendorShell(widget : longint) : longint;    

{$undef XtIsTransientShell}
function XtIsTransientShell(para1:TWidget):TBoolean;cdecl;external;
    function XtIsTransientShell(widget : longint) : longint;    

    function XtIsTopLevelShell(widget : longint) : longint;    

{$undef XtIsApplicationShell}
function XtIsApplicationShell(para1:TWidget):TBoolean;cdecl;external;
    function XtIsApplicationShell(widget : longint) : longint;    

{$undef XtIsSessionShell}
function XtIsSessionShell(para1:TWidget):TBoolean;cdecl;external;
    function XtIsSessionShell(widget : longint) : longint;    


procedure XtRealizeWidget(para1:TWidget);cdecl;external;

procedure XtUnrealizeWidget(para1:TWidget);cdecl;external;

procedure XtDestroyWidget(para1:TWidget);cdecl;external;

procedure XtSetSensitive(para1:TWidget; para2:TXtBoolean);cdecl;external;

procedure XtSetMappedWhenManaged(para1:TWidget; para2:TXtBoolean);cdecl;external;

function XtNameToWidget(para1:TWidget; _XtString:TXconst):TWidget;cdecl;external;

function XtWindowToWidget(para1:PDisplay; para2:TWindow):TWidget;cdecl;external;

function XtGetClassExtension(para1:TWidgetClass; para2:TCardinal; para3:TXrmQuark; para4:longint; para5:TCardinal):TXtPointer;cdecl;external;

(* error 
    ((void)( (arg).name = (n), (arg).value = (XtArgVal)(d) ))
in define line 1161 *)

function XtMergeArgLists(para1:TArgList; para2:TCardinal; para3:TArgList; para4:TCardinal):TArgList;cdecl;external;

    const
      XtVaNestedList = 'XtVaNestedList';      
      XtVaTypedArg = 'XtVaTypedArg';      
(* error 
) _X_SENTINEL(0);
 in declarator_list *)
      var
 : TXtVarArgsList;

{$ifndef _XtIntrinsicP_h}



function XtDisplay(para1:TWidget):PDisplay;cdecl;external;

function XtDisplayOfObject(para1:TWidget):PDisplay;cdecl;external;

function XtScreen(para1:TWidget):PScreen;cdecl;external;

function XtScreenOfObject(para1:TWidget):PScreen;cdecl;external;

function XtWindow(para1:TWidget):TWindow;cdecl;external;

function XtWindowOfObject(para1:TWidget):TWindow;cdecl;external;

function XtName(para1:TWidget):TString;cdecl;external;

function XtSuperclass(para1:TWidget):TWidgetClass;cdecl;external;

function XtClass(para1:TWidget):TWidgetClass;cdecl;external;

function XtParent(para1:TWidget):TWidget;cdecl;external;
{$endif}

{$undef XtMapWidget}

procedure XtMapWidget(para1:TWidget);cdecl;external;
    function XtMapWidget(widget : longint) : longint;    

{$undef XtUnmapWidget}
procedure XtUnmapWidget(para1:TWidget);cdecl;external;
    function XtUnmapWidget(widget : longint) : longint;    


procedure XtAddCallback(para1:TWidget; _XtString:TXconst; para3:TXtCallbackProc; para4:TXtPointer);cdecl;external;

procedure XtRemoveCallback(para1:TWidget; _XtString:TXconst; para3:TXtCallbackProc; para4:TXtPointer);cdecl;external;

procedure XtAddCallbacks(para1:TWidget; _XtString:TXconst; para3:TXtCallbackList);cdecl;external;

procedure XtRemoveCallbacks(para1:TWidget; _XtString:TXconst; para3:TXtCallbackList);cdecl;external;

procedure XtRemoveAllCallbacks(para1:TWidget; _XtString:TXconst);cdecl;external;

procedure XtCallCallbacks(para1:TWidget; _XtString:TXconst; para3:TXtPointer);cdecl;external;

procedure XtCallCallbackList(para1:TWidget; para2:TXtCallbackList; para3:TXtPointer);cdecl;external;

function XtHasCallbacks(para1:TWidget; _XtString:TXconst):TXtCallbackStatus;cdecl;external;


function XtMakeGeometryRequest(para1:TWidget; para2:PXtWidgetGeometry; para3:PXtWidgetGeometry):TXtGeometryResult;cdecl;external;

function XtQueryGeometry(para1:TWidget; para2:PXtWidgetGeometry; para3:PXtWidgetGeometry):TXtGeometryResult;cdecl;external;

function XtCreatePopupShell(_XtString:TXconst; para2:TWidgetClass; para3:TWidget; para4:TArgList; para5:TCardinal):TWidget;cdecl;external;
(* error 
) _X_SENTINEL(0);
 in declarator_list *)
      var
 : TWidget;


procedure XtPopup(para1:TWidget; para2:TXtGrabKind);cdecl;external;

procedure XtPopupSpringLoaded(para1:TWidget);cdecl;external;

procedure XtCallbackNone(para1:TWidget; para2:TXtPointer; para3:TXtPointer);cdecl;external;

procedure XtCallbackNonexclusive(para1:TWidget; para2:TXtPointer; para3:TXtPointer);cdecl;external;

procedure XtCallbackExclusive(para1:TWidget; para2:TXtPointer; para3:TXtPointer);cdecl;external;

procedure XtPopdown(para1:TWidget);cdecl;external;

procedure XtCallbackPopdown(para1:TWidget; para2:TXtPointer; para3:TXtPointer);cdecl;external;

procedure XtMenuPopupAction(para1:TWidget; para2:PXEvent; para3:PString; para4:PCardinal);cdecl;external;

function XtCreateWidget(_XtString:TXconst; para2:TWidgetClass; para3:TWidget; para4:TArgList; para5:TCardinal):TWidget;cdecl;external;

function XtCreateManagedWidget(_XtString:TXconst; para2:TWidgetClass; para3:TWidget; para4:TArgList; para5:TCardinal):TWidget;cdecl;external;
(* error 
) _X_SENTINEL(0);
 in declarator_list *)
      var
 : TWidget;
(* error 
) _X_SENTINEL(0);
 in declarator_list *)
 : TWidget;



function XtCreateApplicationShell(_XtString:TXconst; para2:TWidgetClass; para3:TArgList; para4:TCardinal):TWidget;cdecl;external;

function XtAppCreateShell(_XtString:TXconst; _XtString:TXconst; para3:TWidgetClass; para4:PDisplay; para5:TArgList; 
               para6:TCardinal):TWidget;cdecl;external;
(* error 
) _X_SENTINEL(0);
 in declarator_list *)
      var
 : TWidget;


procedure XtToolkitInitialize;cdecl;external;

function XtSetLanguageProc(para1:TXtAppContext; para2:TXtLanguageProc; para3:TXtPointer):TXtLanguageProc;cdecl;external;

procedure XtDisplayInitialize(para1:TXtAppContext; para2:PDisplay; _XtString:TXconst; _XtString:TXconst; para5:PXrmOptionDescRec; 
                para6:TCardinal; para7:Plongint; para8:PXtString);cdecl;external;

function XtOpenApplication(para1:PXtAppContext; _XtString:TXconst; para3:TXrmOptionDescList; para4:TCardinal; para5:Plongint; 
               para6:PXtString; para7:PString; para8:TWidgetClass; para9:TArgList; para10:TCardinal):TWidget;cdecl;external;
(* error 
) _X_SENTINEL(0);
 in declarator_list *)
      var
 : TWidget;



function XtAppInitialize(para1:PXtAppContext; _XtString:TXconst; para3:TXrmOptionDescList; para4:TCardinal; para5:Plongint; 
               para6:PXtString; para7:PString; para8:TArgList; para9:TCardinal):TWidget;cdecl;external;

(* error 
) _X_SENTINEL(0);
 in declarator_list *)
      var
 : TWidget;



function XtInitialize(_XtString:TXconst; _XtString:TXconst; para3:PXrmOptionDescRec; para4:TCardinal; para5:Plongint; 
               para6:PXtString):TWidget;cdecl;external;

function XtOpenDisplay(para1:TXtAppContext; _XtString:TXconst; _XtString:TXconst; _XtString:TXconst; para5:PXrmOptionDescRec; 
               para6:TCardinal; para7:Plongint; para8:PXtString):PDisplay;cdecl;external;
function XtCreateApplicationContext:TXtAppContext;cdecl;external;

procedure XtAppSetFallbackResources(para1:TXtAppContext; para2:PString);cdecl;external;

procedure XtDestroyApplicationContext(para1:TXtAppContext);cdecl;external;

procedure XtInitializeWidgetClass(para1:TWidgetClass);cdecl;external;

function XtWidgetToApplicationContext(para1:TWidget):TXtAppContext;cdecl;external;

function XtDisplayToApplicationContext(para1:PDisplay):TXtAppContext;cdecl;external;

function XtDatabase(para1:PDisplay):TXrmDatabase;cdecl;external;

function XtScreenDatabase(para1:PScreen):TXrmDatabase;cdecl;external;

procedure XtCloseDisplay(para1:PDisplay);cdecl;external;

procedure XtGetApplicationResources(para1:TWidget; para2:TXtPointer; para3:TXtResourceList; para4:TCardinal; para5:TArgList; 
                para6:TCardinal);cdecl;external;
(* error 
) _X_SENTINEL(0);
 in declarator_list *)
      var
 : pointer;


procedure XtGetSubresources(para1:TWidget; para2:TXtPointer; _XtString:TXconst; _XtString:TXconst; para5:TXtResourceList; 
                para6:TCardinal; para7:TArgList; para8:TCardinal);cdecl;external;
(* error 
) _X_SENTINEL(0);
 in declarator_list *)
      var
 : pointer;


procedure XtSetValues(para1:TWidget; para2:TArgList; para3:TCardinal);cdecl;external;
(* error 
) _X_SENTINEL(0);
 in declarator_list *)
      var
 : pointer;


procedure XtGetValues(para1:TWidget; para2:TArgList; para3:TCardinal);cdecl;external;
(* error 
) _X_SENTINEL(0);
 in declarator_list *)
      var
 : pointer;


procedure XtSetSubvalues(para1:TXtPointer; para2:TXtResourceList; para3:TCardinal; para4:TArgList; para5:TCardinal);cdecl;external;
(* error 
) _X_SENTINEL(0);
 in declarator_list *)
      var
 : pointer;


procedure XtGetSubvalues(para1:TXtPointer; para2:TXtResourceList; para3:TCardinal; para4:TArgList; para5:TCardinal);cdecl;external;
(* error 
) _X_SENTINEL(0);
 in declarator_list *)
      var
 : pointer;


procedure XtGetResourceList(para1:TWidgetClass; para2:PXtResourceList; para3:PCardinal);cdecl;external;

procedure XtGetConstraintResourceList(para1:TWidgetClass; para2:PXtResourceList; para3:PCardinal);cdecl;external;
    function XtUnspecifiedPixmap : TPixmap;      

    const
      XtUnspecifiedShellInt = -(1);      

    function XtUnspecifiedWindow : TWindow;      

    function XtUnspecifiedWindowGroup : TWindow;      

    const
      XtCurrentDirectory = 'XtCurrentDirectory';      
      XtDefaultForeground = 'XtDefaultForeground';      
      XtDefaultBackground = 'XtDefaultBackground';      
      XtDefaultFont = 'XtDefaultFont';      
      XtDefaultFontSet = 'XtDefaultFontSet';      

    function XtOffset(p_type,field : longint) : TCardinal;    

{$ifdef offsetof}
    function XtOffsetOf(s_type,field : longint) : longint;    

{$else}
(* error 
#define XtOffsetOf(s_type,field) XtOffset(s_type*,field)
in define line 1675 *)
{$endif}







    type
      PXtCheckpointTokenRec = ^TXtCheckpointTokenRec;
      TXtCheckpointTokenRec = record
          save_type : longint;
          interact_style : longint;
          shutdown : TBoolean;
          fast : TBoolean;
          cancel_shutdown : TBoolean;
          phase : longint;
          interact_dialog_type : longint;
          request_cancel : TBoolean;
          request_next_phase : TBoolean;
          save_success : TBoolean;
          _type : longint;
          widget : TWidget;
        end;
      TXtCheckpointToken = PXtCheckpointTokenRec;
      PXtCheckpointToken = ^TXtCheckpointToken;


function XtSessionGetToken(para1:TWidget):TXtCheckpointToken;cdecl;external;

procedure XtSessionReturnToken(para1:TXtCheckpointToken);cdecl;external;

function XtAppSetErrorMsgHandler(para1:TXtAppContext; _X_NORETURN:TXtErrorMsgHandler):TXtErrorMsgHandler;cdecl;external;

procedure XtSetErrorMsgHandler(_X_NORETURN:TXtErrorMsgHandler);cdecl;external;

function XtAppSetWarningMsgHandler(para1:TXtAppContext; para2:TXtErrorMsgHandler):TXtErrorMsgHandler;cdecl;external;


procedure XtSetWarningMsgHandler(para1:TXtErrorMsgHandler);cdecl;external;

(* error 
) _X_NORETURN;
 in declarator_list *)
      var
 : pointer;


(* error 
) _X_NORETURN;
 in declarator_list *)
 : pointer;


procedure XtAppWarningMsg(para1:TXtAppContext; _XtString:TXconst; _XtString:TXconst; _XtString:TXconst; _XtString:TXconst; 
                para6:PString; para7:PCardinal);cdecl;external;


procedure XtWarningMsg(_XtString:TXconst; _XtString:TXconst; _XtString:TXconst; _XtString:TXconst; para5:PString; 
                para6:PCardinal);cdecl;external;
function XtAppSetErrorHandler(para1:TXtAppContext; _X_NORETURN:TXtErrorHandler):TXtErrorHandler;cdecl;external;

procedure XtSetErrorHandler(_X_NORETURN:TXtErrorHandler);cdecl;external;

function XtAppSetWarningHandler(para1:TXtAppContext; para2:TXtErrorHandler):TXtErrorHandler;cdecl;external;


procedure XtSetWarningHandler(para1:TXtErrorHandler);cdecl;external;

(* error 
) _X_NORETURN;
 in declarator_list *)
      var
 : pointer;


(* error 
) _X_NORETURN;
 in declarator_list *)
 : pointer;


procedure XtAppWarning(para1:TXtAppContext; _XtString:TXconst);cdecl;external;


procedure XtWarning(_XtString:TXconst);cdecl;external;

function XtAppGetErrorDatabase(para1:TXtAppContext):PXrmDatabase;cdecl;external;

function XtGetErrorDatabase:PXrmDatabase;cdecl;external;

procedure XtAppGetErrorDatabaseText(para1:TXtAppContext; _XtString:TXconst; _XtString:TXconst; _XtString:TXconst; _XtString:TXconst; 
                para6:TXtString; para7:longint; para8:TXrmDatabase);cdecl;external;


procedure XtGetErrorDatabaseText(_XtString:TXconst; _XtString:TXconst; _XtString:TXconst; _XtString:TXconst; para5:TXtString; 
                para6:longint);cdecl;external;


function XtMalloc(para1:TCardinal):Pchar;cdecl;external;

function XtCalloc(para1:TCardinal; para2:TCardinal):Pchar;cdecl;external;

function XtRealloc(para1:Pchar; para2:TCardinal):Pchar;cdecl;external;

procedure XtFree(para1:Pchar);cdecl;external;
{$ifndef _X_RESTRICT_KYWD}
{$define _X_RESTRICT_KYWD}    
{$endif}
(* error 
    _Xconst char * _X_RESTRICT_KYWD format,
(* error 
    ...
(* error 
) _X_ATTRIBUTE_PRINTF(2,3);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
{$ifdef XTTRACEMEMORY}



function _XtMalloc(para1:TCardinal; para2:Pchar; para3:longint):Pchar;cdecl;external;


function _XtRealloc(para1:Pchar; para2:TCardinal; para3:Pchar; para4:longint):Pchar;cdecl;external;


function _XtCalloc(para1:TCardinal; para2:TCardinal; para3:Pchar; para4:longint):Pchar;cdecl;external;


procedure _XtFree(para1:Pchar);cdecl;external;

function _XtIsValidPointer(para1:Pchar):TBoolean;cdecl;external;

procedure _XtPrintMemory(para1:Pchar);cdecl;external;
    function XtMalloc(size : longint) : longint;    

    function XtRealloc(ptr,size : longint) : longint;    

    function XtCalloc(num,size : longint) : longint;    

    function XtFree(ptr : longint) : longint;    

{$endif}


    function XtNew(_type : longint) : Ptype;    

{$undef XtNewString}
function XtNewString(para1:TString):TString;cdecl;external;
    function XtNewString(str : longint) : longint;    




function XtAddWorkProc(para1:TXtWorkProc; para2:TXtPointer):TXtWorkProcId;cdecl;external;

function XtAppAddWorkProc(para1:TXtAppContext; para2:TXtWorkProc; para3:TXtPointer):TXtWorkProcId;cdecl;external;

procedure XtRemoveWorkProc(para1:TXtWorkProcId);cdecl;external;


function XtGetGC(para1:TWidget; para2:TXtGCMask; para3:PXGCValues):TGC;cdecl;external;

function XtAllocateGC(para1:TWidget; para2:TCardinal; para3:TXtGCMask; para4:PXGCValues; para5:TXtGCMask; 
               para6:TXtGCMask):TGC;cdecl;external;



procedure XtDestroyGC(para1:TGC);cdecl;external;

procedure XtReleaseGC(para1:TWidget; para2:TGC);cdecl;external;

procedure XtAppReleaseCacheRefs(para1:TXtAppContext; para2:PXtCacheRef);cdecl;external;


procedure XtCallbackReleaseCacheRef(para1:TWidget; para2:TXtPointer; para3:TXtPointer);cdecl;external;


procedure XtCallbackReleaseCacheRefList(para1:TWidget; para2:TXtPointer; para3:TXtPointer);cdecl;external;

procedure XtSetWMColormapWindows(para1:TWidget; para2:PWidget; para3:TCardinal);cdecl;external;

function XtFindFile(_XtString:TXconst; para2:TSubstitution; para3:TCardinal; para4:TXtFilePredicate):TXtString;cdecl;external;

function XtResolvePathname(para1:PDisplay; _XtString:TXconst; _XtString:TXconst; _XtString:TXconst; _XtString:TXconst; 
               para6:TSubstitution; para7:TCardinal; para8:TXtFilePredicate):TXtString;cdecl;external;

    function XT_CONVERT_FAIL : TAtom;      


procedure XtDisownSelection(para1:TWidget; para2:TAtom; para3:TTime);cdecl;external;

procedure XtGetSelectionValue(para1:TWidget; para2:TAtom; para3:TAtom; para4:TXtSelectionCallbackProc; para5:TXtPointer; 
                para6:TTime);cdecl;external;

procedure XtGetSelectionValues(para1:TWidget; para2:TAtom; para3:PAtom; para4:longint; para5:TXtSelectionCallbackProc; 
                para6:PXtPointer; para7:TTime);cdecl;external;

procedure XtAppSetSelectionTimeout(para1:TXtAppContext; para2:dword);cdecl;external;


procedure XtSetSelectionTimeout(para1:dword);cdecl;external;

function XtAppGetSelectionTimeout(para1:TXtAppContext):dword;cdecl;external;

function XtGetSelectionTimeout:dword;cdecl;external;

function XtGetSelectionRequest(para1:TWidget; para2:TAtom; para3:TXtRequestId):PXSelectionRequestEvent;cdecl;external;

procedure XtGetSelectionValueIncremental(para1:TWidget; para2:TAtom; para3:TAtom; para4:TXtSelectionCallbackProc; para5:TXtPointer; 
                para6:TTime);cdecl;external;

procedure XtGetSelectionValuesIncremental(para1:TWidget; para2:TAtom; para3:PAtom; para4:longint; para5:TXtSelectionCallbackProc; 
                para6:PXtPointer; para7:TTime);cdecl;external;

procedure XtSetSelectionParameters(para1:TWidget; para2:TAtom; para3:TAtom; para4:TXtPointer; para5:dword; 
                para6:longint);cdecl;external;

procedure XtGetSelectionParameters(para1:TWidget; para2:TAtom; para3:TXtRequestId; para4:PAtom; para5:PXtPointer; 
                para6:Pdword; para7:Plongint);cdecl;external;

procedure XtCreateSelectionRequest(para1:TWidget; para2:TAtom);cdecl;external;

procedure XtSendSelectionRequest(para1:TWidget; para2:TAtom; para3:TTime);cdecl;external;

procedure XtCancelSelectionRequest(para1:TWidget; para2:TAtom);cdecl;external;

function XtReservePropertyAtom(para1:TWidget):TAtom;cdecl;external;

procedure XtReleasePropertyAtom(para1:TWidget; para2:TAtom);cdecl;external;

procedure XtGrabKey(para1:TWidget; para2:TXtKeyCode; para3:TModifiers; para4:TXtBoolean; para5:longint; 
                para6:longint);cdecl;external;

procedure XtUngrabKey(para1:TWidget; para2:TXtKeyCode; para3:TModifiers);cdecl;external;

function XtGrabKeyboard(para1:TWidget; para2:TXtBoolean; para3:longint; para4:longint; para5:TTime):longint;cdecl;external;

procedure XtUngrabKeyboard(para1:TWidget; para2:TTime);cdecl;external;

procedure XtGrabButton(para1:TWidget; para2:longint; para3:TModifiers; para4:TXtBoolean; para5:dword; 
                para6:longint; para7:longint; para8:TWindow; para9:TCursor);cdecl;external;

procedure XtUngrabButton(para1:TWidget; para2:dword; para3:TModifiers);cdecl;external;

function XtGrabPointer(para1:TWidget; para2:TXtBoolean; para3:dword; para4:longint; para5:longint; 
               para6:TWindow; para7:TCursor; para8:TTime):longint;cdecl;external;

procedure XtUngrabPointer(para1:TWidget; para2:TTime);cdecl;external;

procedure XtGetApplicationNameAndClass(para1:PDisplay; para2:PString; para3:PString);cdecl;external;

procedure XtRegisterDrawable(para1:PDisplay; para2:TDrawable; para3:TWidget);cdecl;external;

procedure XtUnregisterDrawable(para1:PDisplay; para2:TDrawable);cdecl;external;

function XtHooksOfDisplay(para1:PDisplay):TWidget;cdecl;external;
    type
      PXtCreateHookDataRec = ^TXtCreateHookDataRec;
      TXtCreateHookDataRec = record
          _type : TString;
          widget : TWidget;
          args : TArgList;
          num_args : TCardinal;
        end;
      TXtCreateHookData = PXtCreateHookDataRec;
      PXtCreateHookData = ^TXtCreateHookData;

      PXtChangeHookDataRec = ^TXtChangeHookDataRec;
      TXtChangeHookDataRec = record
          _type : TString;
          widget : TWidget;
          event_data : TXtPointer;
          num_event_data : TCardinal;
        end;
      TXtChangeHookData = PXtChangeHookDataRec;
      PXtChangeHookData = ^TXtChangeHookData;

      PXtChangeHookSetValuesDataRec = ^TXtChangeHookSetValuesDataRec;
      TXtChangeHookSetValuesDataRec = record
          old : TWidget;
          req : TWidget;
          args : TArgList;
          num_args : TCardinal;
        end;
      TXtChangeHookSetValuesData = PXtChangeHookSetValuesDataRec;
      PXtChangeHookSetValuesData = ^TXtChangeHookSetValuesData;

      PXtConfigureHookDataRec = ^TXtConfigureHookDataRec;
      TXtConfigureHookDataRec = record
          _type : TString;
          widget : TWidget;
          changeMask : TXtGeometryMask;
          changes : TXWindowChanges;
        end;
      TXtConfigureHookData = PXtConfigureHookDataRec;
      PXtConfigureHookData = ^TXtConfigureHookData;

      PXtGeometryHookDataRec = ^TXtGeometryHookDataRec;
      TXtGeometryHookDataRec = record
          _type : TString;
          widget : TWidget;
          request : PXtWidgetGeometry;
          reply : PXtWidgetGeometry;
          result : TXtGeometryResult;
        end;
      TXtGeometryHookData = PXtGeometryHookDataRec;
      PXtGeometryHookData = ^TXtGeometryHookData;

      PXtDestroyHookDataRec = ^TXtDestroyHookDataRec;
      TXtDestroyHookDataRec = record
          _type : TString;
          widget : TWidget;
        end;
      TXtDestroyHookData = PXtDestroyHookDataRec;
      PXtDestroyHookData = ^TXtDestroyHookData;


procedure XtGetDisplays(para1:TXtAppContext; para2:PPPDisplay; para3:PCardinal);cdecl;external;
function XtToolkitThreadInitialize:TBoolean;cdecl;external;

procedure XtAppSetExitFlag(para1:TXtAppContext);cdecl;external;

function XtAppGetExitFlag(para1:TXtAppContext):TBoolean;cdecl;external;

procedure XtAppLock(para1:TXtAppContext);cdecl;external;

procedure XtAppUnlock(para1:TXtAppContext);cdecl;external;




function XtCvtStringToAcceleratorTable(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;


function XtCvtStringToAtom(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;


function XtCvtStringToBool(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;


function XtCvtStringToBoolean(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;


function XtCvtStringToCommandArgArray(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;


function XtCvtStringToCursor(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;


function XtCvtStringToDimension(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;


function XtCvtStringToDirectoryString(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;


function XtCvtStringToDisplay(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;


function XtCvtStringToFile(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;


function XtCvtStringToFloat(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;


function XtCvtStringToFont(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;


function XtCvtStringToFontSet(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;


function XtCvtStringToFontStruct(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;

function XtCvtStringToGravity(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;


function XtCvtStringToInitialState(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;


function XtCvtStringToInt(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;


function XtCvtStringToPixel(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    const
      XtCvtStringToPosition = XtCvtStringToShort;      



function XtCvtStringToRestartStyle(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;


function XtCvtStringToShort(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;


function XtCvtStringToTranslationTable(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;


function XtCvtStringToUnsignedChar(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;


function XtCvtStringToVisual(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;



function XtCvtIntToBool(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;


function XtCvtIntToBoolean(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;


function XtCvtIntToColor(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    const
      XtCvtIntToDimension = XtCvtIntToShort;      



function XtCvtIntToFloat(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;


function XtCvtIntToFont(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;


function XtCvtIntToPixel(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;


function XtCvtIntToPixmap(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    const
      XtCvtIntToPosition = XtCvtIntToShort;      



function XtCvtIntToShort(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;


function XtCvtIntToUnsignedChar(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;



function XtCvtColorToPixel(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;

    const
      XtCvtPixelToColor = XtCvtIntToColor;      
{$endif}


(* error 
/* DON'T ADD STUFF AFTER THIS #endif */

implementation

    function XtNumber(arr : longint) : TCardinal;
    begin
      XtNumber:=TCardinal((sizeof(arr))/(sizeof(arr[0])));
    end;

    function XtAllEvents : TEventMask;
      begin
        XtAllEvents:=TEventMask(-(1));
      end;

    function XtIsRectObj(object : longint) : longint;
    begin
      XtIsRectObj:=_XtCheckSubclassFlag(object,TXtEnum($02));
    end;

    function XtIsWidget(object : longint) : longint;
    begin
      XtIsWidget:=_XtCheckSubclassFlag(object,TXtEnum($04));
    end;

    function XtIsComposite(widget : longint) : longint;
    begin
      XtIsComposite:=_XtCheckSubclassFlag(widget,TXtEnum($08));
    end;

    function XtIsConstraint(widget : longint) : longint;
    begin
      XtIsConstraint:=_XtCheckSubclassFlag(widget,TXtEnum($10));
    end;

    function XtIsShell(widget : longint) : longint;
    begin
      XtIsShell:=_XtCheckSubclassFlag(widget,TXtEnum($20));
    end;

    function XtIsOverrideShell(widget : longint) : longint;
    begin
      XtIsOverrideShell:=_XtIsSubclassOf(widget,TWidgetClass(overrideShellWidgetClass),TWidgetClass(shellWidgetClass),TXtEnum($20));
    end;

    function XtIsWMShell(widget : longint) : longint;
    begin
      XtIsWMShell:=_XtCheckSubclassFlag(widget,TXtEnum($40));
    end;

    function XtIsVendorShell(widget : longint) : longint;
    begin
      XtIsVendorShell:=_XtIsSubclassOf(widget,TWidgetClass(vendorShellWidgetClass),TWidgetClass(wmShellWidgetClass),TXtEnum($40));
    end;

    function XtIsTransientShell(widget : longint) : longint;
    begin
      XtIsTransientShell:=_XtIsSubclassOf(widget,TWidgetClass(transientShellWidgetClass),TWidgetClass(wmShellWidgetClass),TXtEnum($40));
    end;

    function XtIsTopLevelShell(widget : longint) : longint;
    begin
      XtIsTopLevelShell:=_XtCheckSubclassFlag(widget,TXtEnum($80));
    end;

    function XtIsApplicationShell(widget : longint) : longint;
    begin
      XtIsApplicationShell:=_XtIsSubclassOf(widget,TWidgetClass(applicationShellWidgetClass),TWidgetClass(topLevelShellWidgetClass),TXtEnum($80));
    end;

    function XtIsSessionShell(widget : longint) : longint;
    begin
      XtIsSessionShell:=_XtIsSubclassOf(widget,TWidgetClass(sessionShellWidgetClass),TWidgetClass(topLevelShellWidgetClass),TXtEnum($80));
    end;

    function XtMapWidget(widget : longint) : longint;
    begin
      XtMapWidget:=XMapWindow(XtDisplay(widget),XtWindow(widget));
    end;

    function XtUnmapWidget(widget : longint) : longint;
    begin
      XtUnmapWidget:=XUnmapWindow(XtDisplay(widget),XtWindow(widget));
    end;

    function XtUnspecifiedPixmap : TPixmap;
      begin
        XtUnspecifiedPixmap:=TPixmap(2);
      end;

    function XtUnspecifiedWindow : TWindow;
      begin
        XtUnspecifiedWindow:=TWindow(2);
      end;

    function XtUnspecifiedWindowGroup : TWindow;
      begin
        XtUnspecifiedWindowGroup:=TWindow(3);
      end;

    function XtOffset(p_type,field : longint) : TCardinal;
    begin
      XtOffset:=TCardinal((Pchar(@((Tp_type(NULL))^.field)))-(Pchar(NULL)));
    end;

    function XtOffsetOf(s_type,field : longint) : longint;
    begin
      XtOffsetOf:=offsetof(s_type,field);
    end;

    function XtMalloc(size : longint) : longint;
    begin
      XtMalloc:=_XtMalloc(size,__FILE__,__LINE__);
    end;

    function XtRealloc(ptr,size : longint) : longint;
    begin
      XtRealloc:=_XtRealloc(ptr,size,__FILE__,__LINE__);
    end;

    function XtCalloc(num,size : longint) : longint;
    begin
      XtCalloc:=_XtCalloc(num,size,__FILE__,__LINE__);
    end;

    function XtFree(ptr : longint) : longint;
    begin
      XtFree:=_XtFree(ptr);
    end;

    function XtNew(_type : longint) : Ptype;
    begin
      XtNew:=Ptype(XtMalloc(dword(sizeof(_type))));
    end;

    function XtNewString(str : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      if NULL then
        if_local1:=strcpy(XtMalloc((dword(strlen(str)))+1),str)
      else
        if_local1:=NULL;
      XtNewString:=str<>(if_local1);
    end;

    function XT_CONVERT_FAIL : TAtom;
      begin
        XT_CONVERT_FAIL:=TAtom($80000001);
      end;


end.
