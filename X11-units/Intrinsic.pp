
unit Intrinsic;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Intrinsic.h
  The following command line parameters were used:
    /usr/include/X11/Intrinsic.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Intrinsic.pp
}

Type
P_XtString  = ^_XtString;
PAtom  = ^Atom;
PBoolean  = ^Boolean;
PCardinal  = ^Cardinal;
Pchar  = ^char;
PDimension  = ^Dimension;
PDisplay  = ^Display;
Pdword  = ^dword;
PKeyCode  = ^KeyCode;
PKeySym  = ^KeySym;
Plongint  = ^longint;
PModifiers  = ^Modifiers;
PPosition  = ^Position;
PScreen  = ^Screen;
PString  = ^String;
PTime  = ^Time;
PWidget  = ^Widget;
PXEvent  = ^XEvent;
PXGCValues  = ^XGCValues;
PXrmOptionDescRec  = ^XrmOptionDescRec;
PXrmValue  = ^XrmValue;
PXtActionList  = ^XtActionList;
PXtAppContext  = ^XtAppContext;
PXtCacheRef  = ^XtCacheRef;
PXtInputId  = ^XtInputId;
PXtIntervalId  = ^XtIntervalId;
PXtPointer  = ^XtPointer;
PXtRequestId  = ^XtRequestId;
PXtResourceList  = ^XtResourceList;
PXtSignalId  = ^XtSignalId;
PXtWidgetGeometry  = ^XtWidgetGeometry;
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
    String = ^char;
{$else}

  type
    String = ^char;
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

    function XtNumber(arr : longint) : Cardinal;    


  type
    Widget = ^_WidgetRec;

    WidgetList = ^Widget;

    WidgetClass = ^_WidgetClassRec;

    CompositeWidget = ^_CompositeRec;

    XtActionList = ^_XtActionsRec;

    XtEventTable = ^_XtEventRec;

    XtAppContext = ^_XtAppStruct;

    XtValueMask = dword;

    XtIntervalId = dword;

    XtInputId = dword;

    XtWorkProcId = dword;

    XtSignalId = dword;

    XtGeometryMask = dword;

    XtGCMask = dword;


    Pixel = dword;


    XtCacheType = longint;

  const
    XtCacheNone = $001;    
    XtCacheAll = $002;    
    XtCacheByDisplay = $003;    
    XtCacheRefCount = $100;    


  type
    Boolean = char;

    XtArgVal = longint;

    XtEnum = byte;

    Cardinal = dword;

    Dimension = word;


    Position = smallint;


    XtPointer = pointer;



    Opaque = XtPointer;
{$include <X11/Core.h>}
{$include <X11/Composite.h>}
{$include <X11/Constraint.h>}
{$include <X11/Object.h>}
{$include <X11/RectObj.h>}

  type
    XtTranslations = ^_TranslationData;

    XtAccelerators = ^_TranslationData;

    Modifiers = dword;


    XtActionProc = procedure (_para1:Widget; _para2:PXEvent; _para3:PString; _para4:PCardinal);cdecl;

    XtBoundActions = ^XtActionProc;

    _XtActionsRec = record
        _string : String;
        proc : XtActionProc;
      end;
    XtActionsRec = _XtActionsRec;










    XtAddressMode = (XtAddress,XtBaseOffset,XtImmediate,XtResourceString,
      XtResourceQuark,XtWidgetBaseOffset,XtProcedureArg
      );

    XtConvertArgRec = record
        address_mode : XtAddressMode;
        address_id : XtPointer;
        size : Cardinal;
      end;
    XtConvertArgList = ^XtConvertArgRec;


    XtConvertArgProc = procedure (_para1:Widget; _para2:PCardinal; _para3:PXrmValue);cdecl;


    XtWidgetGeometry = record
        request_mode : XtGeometryMask;
        x : Position;
        y : Position;
        width : Dimension;
        height : Dimension;
        border_width : Dimension;
        sibling : Widget;
        stack_mode : longint;
      end;


  const
    XtCWQueryOnly = 1 shl 7;    

    XtSMDontChange = 5;    



  type

    XtConverter = procedure (_para1:PXrmValue; _para2:PCardinal; _para3:PXrmValue; _para4:PXrmValue);cdecl;


    XtTypeConverter = function (_para1:PDisplay; _para2:PXrmValue; _para3:PCardinal; _para4:PXrmValue; _para5:PXrmValue; 
                 _para6:PXtPointer):Boolean;cdecl;


    XtDestructor = procedure (_para1:XtAppContext; _para2:PXrmValue; _para3:XtPointer; _para4:PXrmValue; _para5:PCardinal);cdecl;

    XtCacheRef = Opaque;

    XtActionHookId = Opaque;


    XtActionHookProc = procedure (_para1:Widget; _para2:XtPointer; _para3:String; _para4:PXEvent; _para5:PString; 
                  _para6:PCardinal);cdecl;

    XtBlockHookId = dword;


    XtBlockHookProc = procedure (_para1:XtPointer);cdecl;


    XtKeyProc = procedure (_para1:PDisplay; _para2:_XtKeyCode; _para3:Modifiers; _para4:PModifiers; _para5:PKeySym);cdecl;


    XtCaseProc = procedure (_para1:PDisplay; _para2:KeySym; _para3:PKeySym; _para4:PKeySym);cdecl;


    XtEventHandler = procedure (_para1:Widget; _para2:XtPointer; _para3:PXEvent; _para4:PBoolean);cdecl;

    EventMask = dword;

    XtListPosition = (XtListHead,XtListTail);

    XtInputMask = dword;

  const
    XtInputNoneMask = 0;    
    XtInputReadMask = 1 shl 0;    
    XtInputWriteMask = 1 shl 1;    
    XtInputExceptMask = 1 shl 2;    


  type

    XtTimerCallbackProc = procedure (_para1:XtPointer; _para2:PXtIntervalId);cdecl;


    XtInputCallbackProc = procedure (_para1:XtPointer; _para2:Plongint; _para3:PXtInputId);cdecl;


    XtSignalCallbackProc = procedure (_para1:XtPointer; _para2:PXtSignalId);cdecl;

    Arg = record
        name : String;
        value : XtArgVal;
      end;
    ArgList = ^Arg;

    XtVarArgsList = XtPointer;



    XtCallbackProc = procedure (_para1:Widget; _para2:XtPointer; _para3:XtPointer);cdecl;

    _XtCallbackRec = record
        callback : XtCallbackProc;
        closure : XtPointer;
      end;
    XtCallbackRec = _XtCallbackRec;
    XtCallbackList = ^_XtCallbackRec;

    XtCallbackStatus = (XtCallbackNoList,XtCallbackHasNone,XtCallbackHasSome
      );





    XtGeometryResult = (XtGeometryYes,XtGeometryNo,XtGeometryAlmost,
      XtGeometryDone);

    XtGrabKind = (XtGrabNone,XtGrabNonexclusive,XtGrabExclusive
      );

    XtPopdownIDRec = record
        shell_widget : Widget;
        enable_widget : Widget;
      end;
    XtPopdownID = ^XtPopdownIDRec;








    _XtResource = record
        resource_name : String;
        resource_class : String;
        resource_type : String;
        resource_size : Cardinal;
        resource_offset : Cardinal;
        default_type : String;
        default_addr : XtPointer;
      end;
    XtResource = _XtResource;
    XtResourceList = ^_XtResource;


    XtResourceDefaultProc = procedure (_para1:Widget; _para2:longint; _para3:PXrmValue);cdecl;


    XtLanguageProc = function (_para1:PDisplay; _para2:String; _para3:XtPointer):String;cdecl;


    XtErrorMsgHandler = procedure (_para1:String; _para2:String; _para3:String; _para4:String; _para5:PString; 
                  _para6:PCardinal);cdecl;


    XtErrorHandler = procedure (_para1:String);cdecl;


    XtCreatePopupChildProc = procedure (_para1:Widget);cdecl;


    XtWorkProc = function (_para1:XtPointer):Boolean;cdecl;

    SubstitutionRec = record
        match : char;
        substitution : _XtString;
      end;
    Substitution = ^SubstitutionRec;


    XtFilePredicate = function (_para1:String):Boolean;cdecl;

    XtRequestId = XtPointer;


    XtConvertSelectionProc = function (_para1:Widget; _para2:PAtom; _para3:PAtom; _para4:PAtom; _para5:PXtPointer; 
                 _para6:Pdword; _para7:Plongint):Boolean;cdecl;


    XtLoseSelectionProc = procedure (_para1:Widget; _para2:PAtom);cdecl;


    XtSelectionDoneProc = procedure (_para1:Widget; _para2:PAtom; _para3:PAtom);cdecl;


    XtSelectionCallbackProc = procedure (_para1:Widget; _para2:XtPointer; _para3:PAtom; _para4:PAtom; _para5:XtPointer; 
                  _para6:Pdword; _para7:Plongint);cdecl;


    XtLoseSelectionIncrProc = procedure (_para1:Widget; _para2:PAtom; _para3:XtPointer);cdecl;


    XtSelectionDoneIncrProc = procedure (_para1:Widget; _para2:PAtom; _para3:PAtom; _para4:PXtRequestId; _para5:XtPointer);cdecl;


    XtConvertSelectionIncrProc = function (_para1:Widget; _para2:PAtom; _para3:PAtom; _para4:PAtom; _para5:PXtPointer; 
                 _para6:Pdword; _para7:Plongint; _para8:Pdword; _para9:XtPointer; _para10:PXtRequestId):Boolean;cdecl;


    XtCancelConvertSelectionProc = procedure (_para1:Widget; _para2:PAtom; _para3:PAtom; _para4:PXtRequestId; _para5:XtPointer);cdecl;


    XtEventDispatchProc = function (_para1:PXEvent):Boolean;cdecl;


    XtExtensionSelectProc = procedure (_para1:Widget; _para2:Plongint; _para3:PXtPointer; _para4:longint; _para5:XtPointer);cdecl;

(* error 
extern Boolean XtConvertAndStore(

in declaration at line 509 *)


    function XtCallConverter(_para1:PDisplay; _para2:XtTypeConverter; _para3:XrmValuePtr; _para4:Cardinal; _para5:XrmValuePtr; 
               _para6:PXrmValue; _para7:PXtCacheRef):Boolean;cdecl;


    function XtDispatchEvent(_para1:PXEvent):Boolean;cdecl;


    function XtCallAcceptFocus(_para1:Widget; _para2:PTime):Boolean;cdecl;



    function XtPeekEvent(_para1:PXEvent):Boolean;cdecl;


    function XtAppPeekEvent(_para1:XtAppContext; _para2:PXEvent):Boolean;cdecl;


    function XtIsSubclass(_para1:Widget; _para2:WidgetClass):Boolean;cdecl;


    function XtIsObject(_para1:Widget):Boolean;cdecl;



    function _XtCheckSubclassFlag(_para1:Widget; _para2:_XtXtEnum):Boolean;cdecl;



    function _XtIsSubclassOf(_para1:Widget; _para2:WidgetClass; _para3:WidgetClass; _para4:_XtXtEnum):Boolean;cdecl;


    function XtIsManaged(_para1:Widget):Boolean;cdecl;


    function XtIsRealized(_para1:Widget):Boolean;cdecl;


    function XtIsSensitive(_para1:Widget):Boolean;cdecl;


    function XtOwnSelection(_para1:Widget; _para2:Atom; _para3:Time; _para4:XtConvertSelectionProc; _para5:XtLoseSelectionProc; 
               _para6:XtSelectionDoneProc):Boolean;cdecl;


    function XtOwnSelectionIncremental(_para1:Widget; _para2:Atom; _para3:Time; _para4:XtConvertSelectionIncrProc; _para5:XtLoseSelectionIncrProc; 
               _para6:XtSelectionDoneIncrProc; _para7:XtCancelConvertSelectionProc; _para8:XtPointer):Boolean;cdecl;


    function XtMakeResizeRequest(_para1:Widget; _para2:_XtDimension; _para3:_XtDimension; _para4:PDimension; _para5:PDimension):XtGeometryResult;cdecl;


    procedure XtTranslateCoords(_para1:Widget; _para2:_XtPosition; _para3:_XtPosition; _para4:PPosition; _para5:PPosition);cdecl;


    function XtGetKeysymTable(_para1:PDisplay; _para2:PKeyCode; _para3:Plongint):^KeySym;cdecl;


    procedure XtKeysymToKeycodeList(_para1:PDisplay; _para2:KeySym; _para3:PPKeyCode; _para4:PCardinal);cdecl;



    procedure XtStringConversionWarning(_XtString:_Xconst; _XtString:_Xconst);cdecl;


    procedure XtDisplayStringConversionWarning(_para1:PDisplay; _XtString:_Xconst; _XtString:_Xconst);cdecl;

(* error 
externalref XtConvertArgRec const colorConvertArgs[];
 in declarator_list *)
(* error 
externalref XtConvertArgRec const screenConvertArg[];
 in declarator_list *)


    procedure XtAppAddConverter(_para1:XtAppContext; _XtString:_Xconst; _XtString:_Xconst; _para4:XtConverter; _para5:XtConvertArgList; 
                _para6:Cardinal);cdecl;



    procedure XtAddConverter(_XtString:_Xconst; _XtString:_Xconst; _para3:XtConverter; _para4:XtConvertArgList; _para5:Cardinal);cdecl;


    procedure XtSetTypeConverter(_XtString:_Xconst; _XtString:_Xconst; _para3:XtTypeConverter; _para4:XtConvertArgList; _para5:Cardinal; 
                _para6:XtCacheType; _para7:XtDestructor);cdecl;


    procedure XtAppSetTypeConverter(_para1:XtAppContext; _XtString:_Xconst; _XtString:_Xconst; _para4:XtTypeConverter; _para5:XtConvertArgList; 
                _para6:Cardinal; _para7:XtCacheType; _para8:XtDestructor);cdecl;



    procedure XtConvert(_para1:Widget; _XtString:_Xconst; _para3:PXrmValue; _XtString:_Xconst; _para5:PXrmValue);cdecl;



    procedure XtDirectConvert(_para1:XtConverter; _para2:XrmValuePtr; _para3:Cardinal; _para4:XrmValuePtr; _para5:PXrmValue);cdecl;



    function XtParseTranslationTable(_XtString:_Xconst):XtTranslations;cdecl;


    function XtParseAcceleratorTable(_XtString:_Xconst):XtAccelerators;cdecl;


    procedure XtOverrideTranslations(_para1:Widget; _para2:XtTranslations);cdecl;


    procedure XtAugmentTranslations(_para1:Widget; _para2:XtTranslations);cdecl;


    procedure XtInstallAccelerators(_para1:Widget; _para2:Widget);cdecl;


    procedure XtInstallAllAccelerators(_para1:Widget; _para2:Widget);cdecl;


    procedure XtUninstallTranslations(_para1:Widget);cdecl;


    procedure XtAppAddActions(_para1:XtAppContext; _para2:XtActionList; _para3:Cardinal);cdecl;



    procedure XtAddActions(_para1:XtActionList; _para2:Cardinal);cdecl;


    function XtAppAddActionHook(_para1:XtAppContext; _para2:XtActionHookProc; _para3:XtPointer):XtActionHookId;cdecl;


    procedure XtRemoveActionHook(_para1:XtActionHookId);cdecl;


    procedure XtGetActionList(_para1:WidgetClass; _para2:PXtActionList; _para3:PCardinal);cdecl;


    procedure XtCallActionProc(_para1:Widget; _XtString:_Xconst; _para3:PXEvent; _para4:PString; _para5:Cardinal);cdecl;


    procedure XtRegisterGrabAction(_para1:XtActionProc; _para2:_XtBoolean; _para3:dword; _para4:longint; _para5:longint);cdecl;


    procedure XtSetMultiClickTime(_para1:PDisplay; _para2:longint);cdecl;


    function XtGetMultiClickTime(_para1:PDisplay):longint;cdecl;


    function XtGetActionKeysym(_para1:PXEvent; _para2:PModifiers):KeySym;cdecl;



    procedure XtTranslateKeycode(_para1:PDisplay; _para2:_XtKeyCode; _para3:Modifiers; _para4:PModifiers; _para5:PKeySym);cdecl;


    procedure XtTranslateKey(_para1:PDisplay; _para2:_XtKeyCode; _para3:Modifiers; _para4:PModifiers; _para5:PKeySym);cdecl;


    procedure XtSetKeyTranslator(_para1:PDisplay; _para2:XtKeyProc);cdecl;


    procedure XtRegisterCaseConverter(_para1:PDisplay; _para2:XtCaseProc; _para3:KeySym; _para4:KeySym);cdecl;


    procedure XtConvertCase(_para1:PDisplay; _para2:KeySym; _para3:PKeySym; _para4:PKeySym);cdecl;



    function XtAllEvents : EventMask;      


  procedure XtAddEventHandler(_para1:Widget; _para2:EventMask; _para3:_XtBoolean; _para4:XtEventHandler; _para5:XtPointer);cdecl;


  procedure XtRemoveEventHandler(_para1:Widget; _para2:EventMask; _para3:_XtBoolean; _para4:XtEventHandler; _para5:XtPointer);cdecl;


  procedure XtAddRawEventHandler(_para1:Widget; _para2:EventMask; _para3:_XtBoolean; _para4:XtEventHandler; _para5:XtPointer);cdecl;


  procedure XtRemoveRawEventHandler(_para1:Widget; _para2:EventMask; _para3:_XtBoolean; _para4:XtEventHandler; _para5:XtPointer);cdecl;


  procedure XtInsertEventHandler(_para1:Widget; _para2:EventMask; _para3:_XtBoolean; _para4:XtEventHandler; _para5:XtPointer; 
              _para6:XtListPosition);cdecl;


  procedure XtInsertRawEventHandler(_para1:Widget; _para2:EventMask; _para3:_XtBoolean; _para4:XtEventHandler; _para5:XtPointer; 
              _para6:XtListPosition);cdecl;


  function XtSetEventDispatcher(_para1:PDisplay; _para2:longint; _para3:XtEventDispatchProc):XtEventDispatchProc;cdecl;


  function XtDispatchEventToWidget(_para1:Widget; _para2:PXEvent):Boolean;cdecl;


  procedure XtInsertEventTypeHandler(_para1:Widget; _para2:longint; _para3:XtPointer; _para4:XtEventHandler; _para5:XtPointer; 
              _para6:XtListPosition);cdecl;


  procedure XtRemoveEventTypeHandler(_para1:Widget; _para2:longint; _para3:XtPointer; _para4:XtEventHandler; _para5:XtPointer);cdecl;


  function XtBuildEventMask(_para1:Widget):EventMask;cdecl;


  procedure XtRegisterExtensionSelector(_para1:PDisplay; _para2:longint; _para3:longint; _para4:XtExtensionSelectProc; _para5:XtPointer);cdecl;


  procedure XtAddGrab(_para1:Widget; _para2:_XtBoolean; _para3:_XtBoolean);cdecl;


  procedure XtRemoveGrab(_para1:Widget);cdecl;



  procedure XtProcessEvent(_para1:XtInputMask);cdecl;


  procedure XtAppProcessEvent(_para1:XtAppContext; _para2:XtInputMask);cdecl;


  procedure XtMainLoop;cdecl;


  procedure XtAppMainLoop(_para1:XtAppContext);cdecl;


  procedure XtAddExposureToRegion(_para1:PXEvent; _para2:Region);cdecl;


  procedure XtSetKeyboardFocus(_para1:Widget; _para2:Widget);cdecl;


  function XtGetKeyboardFocusWidget(_para1:Widget):Widget;cdecl;


  function XtLastEventProcessed(_para1:PDisplay):^XEvent;cdecl;


  function XtLastTimestampProcessed(_para1:PDisplay):Time;cdecl;




  function XtAddTimeOut(_para1:dword; _para2:XtTimerCallbackProc; _para3:XtPointer):XtIntervalId;cdecl;


  function XtAppAddTimeOut(_para1:XtAppContext; _para2:dword; _para3:XtTimerCallbackProc; _para4:XtPointer):XtIntervalId;cdecl;


  procedure XtRemoveTimeOut(_para1:XtIntervalId);cdecl;



  function XtAddInput(_para1:longint; _para2:XtPointer; _para3:XtInputCallbackProc; _para4:XtPointer):XtInputId;cdecl;


  function XtAppAddInput(_para1:XtAppContext; _para2:longint; _para3:XtPointer; _para4:XtInputCallbackProc; _para5:XtPointer):XtInputId;cdecl;


  procedure XtRemoveInput(_para1:XtInputId);cdecl;

  function XtAddSignal(_para1:XtSignalCallbackProc; _para2:XtPointer):XtSignalId;cdecl;


  function XtAppAddSignal(_para1:XtAppContext; _para2:XtSignalCallbackProc; _para3:XtPointer):XtSignalId;cdecl;


  procedure XtRemoveSignal(_para1:XtSignalId);cdecl;


  procedure XtNoticeSignal(_para1:XtSignalId);cdecl;



  procedure XtNextEvent(_para1:PXEvent);cdecl;


  procedure XtAppNextEvent(_para1:XtAppContext; _para2:PXEvent);cdecl;

  const
    XtIMXEvent = 1;    
    XtIMTimer = 2;    
    XtIMAlternateInput = 4;    
    XtIMSignal = 8;    
    XtIMAll = ((XtIMXEvent or XtIMTimer) or XtIMAlternateInput) or XtIMSignal;    


  function XtPending:Boolean;cdecl;


  function XtAppPending(_para1:XtAppContext):XtInputMask;cdecl;


  function XtAppAddBlockHook(_para1:XtAppContext; _para2:XtBlockHookProc; _para3:XtPointer):XtBlockHookId;cdecl;


  procedure XtRemoveBlockHook(_para1:XtBlockHookId);cdecl;


  function XtIsRectObj(object : longint) : longint;  

  function XtIsWidget(object : longint) : longint;  

  function XtIsComposite(widget : longint) : longint;  

  function XtIsConstraint(widget : longint) : longint;  

  function XtIsShell(widget : longint) : longint;  

{$undef XtIsOverrideShell}
  function XtIsOverrideShell(_para1:Widget):Boolean;cdecl;

  function XtIsOverrideShell(widget : longint) : longint;  

  function XtIsWMShell(widget : longint) : longint;  

{$undef XtIsVendorShell}
  function XtIsVendorShell(_para1:Widget):Boolean;cdecl;

  function XtIsVendorShell(widget : longint) : longint;  

{$undef XtIsTransientShell}
  function XtIsTransientShell(_para1:Widget):Boolean;cdecl;

  function XtIsTransientShell(widget : longint) : longint;  

  function XtIsTopLevelShell(widget : longint) : longint;  

{$undef XtIsApplicationShell}
  function XtIsApplicationShell(_para1:Widget):Boolean;cdecl;

  function XtIsApplicationShell(widget : longint) : longint;  

{$undef XtIsSessionShell}
  function XtIsSessionShell(_para1:Widget):Boolean;cdecl;

  function XtIsSessionShell(widget : longint) : longint;  


  procedure XtRealizeWidget(_para1:Widget);cdecl;


  procedure XtUnrealizeWidget(_para1:Widget);


  procedure XtDestroyWidget(_para1:Widget);cdecl;


  procedure XtSetSensitive(_para1:Widget; _para2:_XtBoolean);cdecl;


  procedure XtSetMappedWhenManaged(_para1:Widget; _para2:_XtBoolean);cdecl;


  function XtNameToWidget(_para1:Widget; _XtString:_Xconst):Widget;cdecl;


  function XtWindowToWidget(_para1:PDisplay; _para2:Window):Widget;cdecl;


  function XtGetClassExtension(_para1:WidgetClass; _para2:Cardinal; _para3:XrmQuark; _para4:longint; _para5:Cardinal):XtPointer;cdecl;


(* error 
    ((void)( (arg).name = (n), (arg).value = (XtArgVal)(d) ))
in define line 1161 *)

    function XtMergeArgLists(_para1:ArgList; _para2:Cardinal; _para3:ArgList; _para4:Cardinal):ArgList;cdecl;


    const
      XtVaNestedList = 'XtVaNestedList';      
      XtVaTypedArg = 'XtVaTypedArg';      
(* error 
) _X_SENTINEL(0);
 in declarator_list *)

      var
 : XtVarArgsList;

{$ifndef _XtIntrinsicP_h}



    function XtDisplay(_para1:Widget):^Display;cdecl;


    function XtDisplayOfObject(_para1:Widget):^Display;cdecl;


    function XtScreen(_para1:Widget):^Screen;cdecl;


    function XtScreenOfObject(_para1:Widget):^Screen;cdecl;


    function XtWindow(_para1:Widget):Window;cdecl;


    function XtWindowOfObject(_para1:Widget):Window;cdecl;


    function XtName(_para1:Widget):String;cdecl;


    function XtSuperclass(_para1:Widget):WidgetClass;cdecl;


    function XtClass(_para1:Widget):WidgetClass;cdecl;


    function XtParent(_para1:Widget):Widget;cdecl;

{$endif}

{$undef XtMapWidget}

    procedure XtMapWidget(_para1:Widget);cdecl;

    function XtMapWidget(widget : longint) : longint;    

{$undef XtUnmapWidget}
  procedure XtUnmapWidget(_para1:Widget);cdecl;

  function XtUnmapWidget(widget : longint) : longint;  


procedure XtAddCallback(_para1:Widget; _XtString:_Xconst; _para3:XtCallbackProc; _para4:XtPointer);cdecl;


procedure XtRemoveCallback(_para1:Widget; _XtString:_Xconst; _para3:XtCallbackProc; _para4:XtPointer);cdecl;


procedure XtAddCallbacks(_para1:Widget; _XtString:_Xconst; _para3:XtCallbackList);cdecl;


procedure XtRemoveCallbacks(_para1:Widget; _XtString:_Xconst; _para3:XtCallbackList);cdecl;


procedure XtRemoveAllCallbacks(_para1:Widget; _XtString:_Xconst);cdecl;


procedure XtCallCallbacks(_para1:Widget; _XtString:_Xconst; _para3:XtPointer);cdecl;


procedure XtCallCallbackList(_para1:Widget; _para2:XtCallbackList; _para3:XtPointer);cdecl;


function XtHasCallbacks(_para1:Widget; _XtString:_Xconst):XtCallbackStatus;cdecl;



function XtMakeGeometryRequest(_para1:Widget; _para2:PXtWidgetGeometry; _para3:PXtWidgetGeometry):XtGeometryResult;cdecl;


function XtQueryGeometry(_para1:Widget; _para2:PXtWidgetGeometry; _para3:PXtWidgetGeometry):XtGeometryResult;cdecl;


function XtCreatePopupShell(_XtString:_Xconst; _para2:WidgetClass; _para3:Widget; _para4:ArgList; _para5:Cardinal):Widget;cdecl;

(* error 
) _X_SENTINEL(0);
 in declarator_list *)

  var
 : Widget;


procedure XtPopup(_para1:Widget; _para2:XtGrabKind);cdecl;


procedure XtPopupSpringLoaded(_para1:Widget);cdecl;


procedure XtCallbackNone(_para1:Widget; _para2:XtPointer; _para3:XtPointer);cdecl;


procedure XtCallbackNonexclusive(_para1:Widget; _para2:XtPointer; _para3:XtPointer);cdecl;


procedure XtCallbackExclusive(_para1:Widget; _para2:XtPointer; _para3:XtPointer);cdecl;


procedure XtPopdown(_para1:Widget);cdecl;


procedure XtCallbackPopdown(_para1:Widget; _para2:XtPointer; _para3:XtPointer);cdecl;


procedure XtMenuPopupAction(_para1:Widget; _para2:PXEvent; _para3:PString; _para4:PCardinal);cdecl;


function XtCreateWidget(_XtString:_Xconst; _para2:WidgetClass; _para3:Widget; _para4:ArgList; _para5:Cardinal):Widget;cdecl;


function XtCreateManagedWidget(_XtString:_Xconst; _para2:WidgetClass; _para3:Widget; _para4:ArgList; _para5:Cardinal):Widget;cdecl;

(* error 
) _X_SENTINEL(0);
 in declarator_list *)

  var
 : Widget;
(* error 
) _X_SENTINEL(0);
 in declarator_list *)
 : Widget;



function XtCreateApplicationShell(_XtString:_Xconst; _para2:WidgetClass; _para3:ArgList; _para4:Cardinal):Widget;cdecl;


function XtAppCreateShell(_XtString:_Xconst; _XtString:_Xconst; _para3:WidgetClass; _para4:PDisplay; _para5:ArgList; 
           _para6:Cardinal):Widget;cdecl;

(* error 
) _X_SENTINEL(0);
 in declarator_list *)

  var
 : Widget;


procedure XtToolkitInitialize;cdecl;


function XtSetLanguageProc(_para1:XtAppContext; _para2:XtLanguageProc; _para3:XtPointer):XtLanguageProc;cdecl;


procedure XtDisplayInitialize(_para1:XtAppContext; _para2:PDisplay; _XtString:_Xconst; _XtString:_Xconst; _para5:PXrmOptionDescRec; 
            _para6:Cardinal; _para7:Plongint; _para8:P_XtString);cdecl;


function XtOpenApplication(_para1:PXtAppContext; _XtString:_Xconst; _para3:XrmOptionDescList; _para4:Cardinal; _para5:Plongint; 
           _para6:P_XtString; _para7:PString; _para8:WidgetClass; _para9:ArgList; _para10:Cardinal):Widget;cdecl;

(* error 
) _X_SENTINEL(0);
 in declarator_list *)

  var
 : Widget;



function XtAppInitialize(_para1:PXtAppContext; _XtString:_Xconst; _para3:XrmOptionDescList; _para4:Cardinal; _para5:Plongint; 
           _para6:P_XtString; _para7:PString; _para8:ArgList; _para9:Cardinal):Widget;cdecl;


(* error 
) _X_SENTINEL(0);
 in declarator_list *)

  var
 : Widget;



function XtInitialize(_XtString:_Xconst; _XtString:_Xconst; _para3:PXrmOptionDescRec; _para4:Cardinal; _para5:Plongint; 
           _para6:P_XtString):Widget;cdecl;


function XtOpenDisplay(_para1:XtAppContext; _XtString:_Xconst; _XtString:_Xconst; _XtString:_Xconst; _para5:PXrmOptionDescRec; 
           _para6:Cardinal; _para7:Plongint; _para8:P_XtString):^Display;cdecl;

function XtCreateApplicationContext:XtAppContext;cdecl;


procedure XtAppSetFallbackResources(_para1:XtAppContext; _para2:PString);cdecl;


procedure XtDestroyApplicationContext(_para1:XtAppContext);cdecl;


procedure XtInitializeWidgetClass(_para1:WidgetClass);cdecl;


function XtWidgetToApplicationContext(_para1:Widget):XtAppContext;cdecl;


function XtDisplayToApplicationContext(_para1:PDisplay):XtAppContext;cdecl;


function XtDatabase(_para1:PDisplay):XrmDatabase;cdecl;


function XtScreenDatabase(_para1:PScreen):XrmDatabase;cdecl;


procedure XtCloseDisplay(_para1:PDisplay);cdecl;


procedure XtGetApplicationResources(_para1:Widget; _para2:XtPointer; _para3:XtResourceList; _para4:Cardinal; _para5:ArgList; 
            _para6:Cardinal);cdecl;

(* error 
) _X_SENTINEL(0);
 in declarator_list *)

  var
 : pointer;


procedure XtGetSubresources(_para1:Widget; _para2:XtPointer; _XtString:_Xconst; _XtString:_Xconst; _para5:XtResourceList; 
            _para6:Cardinal; _para7:ArgList; _para8:Cardinal);cdecl;

(* error 
) _X_SENTINEL(0);
 in declarator_list *)

  var
 : pointer;


procedure XtSetValues(_para1:Widget; _para2:ArgList; _para3:Cardinal);cdecl;

(* error 
) _X_SENTINEL(0);
 in declarator_list *)

  var
 : pointer;


procedure XtGetValues(_para1:Widget; _para2:ArgList; _para3:Cardinal);cdecl;

(* error 
) _X_SENTINEL(0);
 in declarator_list *)

  var
 : pointer;


procedure XtSetSubvalues(_para1:XtPointer; _para2:XtResourceList; _para3:Cardinal; _para4:ArgList; _para5:Cardinal);cdecl;

(* error 
) _X_SENTINEL(0);
 in declarator_list *)

  var
 : pointer;


procedure XtGetSubvalues(_para1:XtPointer; _para2:XtResourceList; _para3:Cardinal; _para4:ArgList; _para5:Cardinal);cdecl;

(* error 
) _X_SENTINEL(0);
 in declarator_list *)

  var
 : pointer;


procedure XtGetResourceList(_para1:WidgetClass; _para2:PXtResourceList; _para3:PCardinal);cdecl;


procedure XtGetConstraintResourceList(_para1:WidgetClass; _para2:PXtResourceList; _para3:PCardinal);cdecl;

function XtUnspecifiedPixmap : Pixmap;  

const
  XtUnspecifiedShellInt = -(1);  

function XtUnspecifiedWindow : Window;  

function XtUnspecifiedWindowGroup : Window;  

const
  XtCurrentDirectory = 'XtCurrentDirectory';  
  XtDefaultForeground = 'XtDefaultForeground';  
  XtDefaultBackground = 'XtDefaultBackground';  
  XtDefaultFont = 'XtDefaultFont';  
  XtDefaultFontSet = 'XtDefaultFontSet';  

function XtOffset(p_type,field : longint) : Cardinal;

{$ifdef offsetof}
function XtOffsetOf(s_type,field : longint) : longint;

{$else}
(* error 
#define XtOffsetOf(s_type,field) XtOffset(s_type*,field)
in define line 1675 *)
{$endif}








    type
      _XtCheckpointTokenRec = record
          save_type : longint;
          interact_style : longint;
          shutdown : Boolean;
          fast : Boolean;
          cancel_shutdown : Boolean;
          phase : longint;
          interact_dialog_type : longint;
          request_cancel : Boolean;
          request_next_phase : Boolean;
          save_success : Boolean;
          _type : longint;
          widget : Widget;
        end;
      XtCheckpointTokenRec = _XtCheckpointTokenRec;
      XtCheckpointToken = ^_XtCheckpointTokenRec;


    function XtSessionGetToken(_para1:Widget):XtCheckpointToken;


    procedure XtSessionReturnToken(_para1:XtCheckpointToken);


    function XtAppSetErrorMsgHandler(_para1:XtAppContext; _X_NORETURN:XtErrorMsgHandler):XtErrorMsgHandler;cdecl;


    procedure XtSetErrorMsgHandler(_X_NORETURN:XtErrorMsgHandler);cdecl;


    function XtAppSetWarningMsgHandler(_para1:XtAppContext; _para2:XtErrorMsgHandler):XtErrorMsgHandler;cdecl;



    procedure XtSetWarningMsgHandler(_para1:XtErrorMsgHandler);cdecl;


(* error 
) _X_NORETURN;
 in declarator_list *)

      var
 : pointer;


(* error 
) _X_NORETURN;
 in declarator_list *)
 : pointer;


    procedure XtAppWarningMsg(_para1:XtAppContext; _XtString:_Xconst; _XtString:_Xconst; _XtString:_Xconst; _XtString:_Xconst; 
                _para6:PString; _para7:PCardinal);cdecl;



    procedure XtWarningMsg(_XtString:_Xconst; _XtString:_Xconst; _XtString:_Xconst; _XtString:_Xconst; _para5:PString; 
                _para6:PCardinal);cdecl;

    function XtAppSetErrorHandler(_para1:XtAppContext; _X_NORETURN:XtErrorHandler):XtErrorHandler;cdecl;


    procedure XtSetErrorHandler(_X_NORETURN:XtErrorHandler);cdecl;


    function XtAppSetWarningHandler(_para1:XtAppContext; _para2:XtErrorHandler):XtErrorHandler;cdecl;



    procedure XtSetWarningHandler(_para1:XtErrorHandler);cdecl;


(* error 
) _X_NORETURN;
 in declarator_list *)

      var
 : pointer;


(* error 
) _X_NORETURN;
 in declarator_list *)
 : pointer;


    procedure XtAppWarning(_para1:XtAppContext; _XtString:_Xconst);cdecl;



    procedure XtWarning(_XtString:_Xconst);cdecl;


    function XtAppGetErrorDatabase(_para1:XtAppContext):^XrmDatabase;cdecl;


    function XtGetErrorDatabase:^XrmDatabase;cdecl;


    procedure XtAppGetErrorDatabaseText(_para1:XtAppContext; _XtString:_Xconst; _XtString:_Xconst; _XtString:_Xconst; _XtString:_Xconst; 
                _para6:_XtString; _para7:longint; _para8:XrmDatabase);cdecl;



    procedure XtGetErrorDatabaseText(_XtString:_Xconst; _XtString:_Xconst; _XtString:_Xconst; _XtString:_Xconst; _para5:_XtString; 
                _para6:longint);cdecl;



    function XtMalloc(_para1:Cardinal):^char;cdecl;


    function XtCalloc(_para1:Cardinal; _para2:Cardinal):^char;cdecl;


    function XtRealloc(_para1:Pchar; _para2:Cardinal):^char;cdecl;


    procedure XtFree(_para1:Pchar);cdecl;

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



    function _XtMalloc(_para1:Cardinal; _para2:Pchar; _para3:longint):^char;cdecl;



    function _XtRealloc(_para1:Pchar; _para2:Cardinal; _para3:Pchar; _para4:longint):^char;cdecl;



    function _XtCalloc(_para1:Cardinal; _para2:Cardinal; _para3:Pchar; _para4:longint):^char;cdecl;



    procedure _XtFree(_para1:Pchar);cdecl;


    function _XtIsValidPointer(_para1:Pchar):Boolean;cdecl;


    procedure _XtPrintMemory(_para1:Pchar);cdecl;

    function XtMalloc(size : longint) : longint;    

  function XtRealloc(ptr,size : longint) : longint;  

function XtCalloc(num,size : longint) : longint;

function XtFree(ptr : longint) : longint;

{$endif}


function XtNew(_type : longint) : ptype;

{$undef XtNewString}
function XtNewString(_para1:String):String;cdecl;

function XtNewString(str : longint) : longint;




function XtAddWorkProc(_para1:XtWorkProc; _para2:XtPointer):XtWorkProcId;cdecl;


function XtAppAddWorkProc(_para1:XtAppContext; _para2:XtWorkProc; _para3:XtPointer):XtWorkProcId;cdecl;


procedure XtRemoveWorkProc(_para1:XtWorkProcId);cdecl;



function XtGetGC(_para1:Widget; _para2:XtGCMask; _para3:PXGCValues):GC;cdecl;


function XtAllocateGC(_para1:Widget; _para2:Cardinal; _para3:XtGCMask; _para4:PXGCValues; _para5:XtGCMask; 
           _para6:XtGCMask):GC;cdecl;




procedure XtDestroyGC(_para1:GC);cdecl;


procedure XtReleaseGC(_para1:Widget; _para2:GC);cdecl;


procedure XtAppReleaseCacheRefs(_para1:XtAppContext; _para2:PXtCacheRef);cdecl;



procedure XtCallbackReleaseCacheRef(_para1:Widget; _para2:XtPointer; _para3:XtPointer);cdecl;



procedure XtCallbackReleaseCacheRefList(_para1:Widget; _para2:XtPointer; _para3:XtPointer);cdecl;


procedure XtSetWMColormapWindows(_para1:Widget; _para2:PWidget; _para3:Cardinal);cdecl;


function XtFindFile(_XtString:_Xconst; _para2:Substitution; _para3:Cardinal; _para4:XtFilePredicate):_XtString;cdecl;


function XtResolvePathname(_para1:PDisplay; _XtString:_Xconst; _XtString:_Xconst; _XtString:_Xconst; _XtString:_Xconst; 
           _para6:Substitution; _para7:Cardinal; _para8:XtFilePredicate):_XtString;cdecl;


function XT_CONVERT_FAIL : Atom;  


procedure XtDisownSelection(_para1:Widget; _para2:Atom; _para3:Time);cdecl;


procedure XtGetSelectionValue(_para1:Widget; _para2:Atom; _para3:Atom; _para4:XtSelectionCallbackProc; _para5:XtPointer; 
            _para6:Time);cdecl;


procedure XtGetSelectionValues(_para1:Widget; _para2:Atom; _para3:PAtom; _para4:longint; _para5:XtSelectionCallbackProc; 
            _para6:PXtPointer; _para7:Time);cdecl;


procedure XtAppSetSelectionTimeout(_para1:XtAppContext; _para2:dword);cdecl;



procedure XtSetSelectionTimeout(_para1:dword);cdecl;


function XtAppGetSelectionTimeout(_para1:XtAppContext):dword;cdecl;


function XtGetSelectionTimeout:dword;cdecl;


function XtGetSelectionRequest(_para1:Widget; _para2:Atom; _para3:XtRequestId):^XSelectionRequestEvent;cdecl;


procedure XtGetSelectionValueIncremental(_para1:Widget; _para2:Atom; _para3:Atom; _para4:XtSelectionCallbackProc; _para5:XtPointer; 
            _para6:Time);cdecl;


procedure XtGetSelectionValuesIncremental(_para1:Widget; _para2:Atom; _para3:PAtom; _para4:longint; _para5:XtSelectionCallbackProc; 
            _para6:PXtPointer; _para7:Time);cdecl;


procedure XtSetSelectionParameters(_para1:Widget; _para2:Atom; _para3:Atom; _para4:XtPointer; _para5:dword; 
            _para6:longint);cdecl;


procedure XtGetSelectionParameters(_para1:Widget; _para2:Atom; _para3:XtRequestId; _para4:PAtom; _para5:PXtPointer; 
            _para6:Pdword; _para7:Plongint);cdecl;


procedure XtCreateSelectionRequest(_para1:Widget; _para2:Atom);cdecl;


procedure XtSendSelectionRequest(_para1:Widget; _para2:Atom; _para3:Time);cdecl;


procedure XtCancelSelectionRequest(_para1:Widget; _para2:Atom);cdecl;


function XtReservePropertyAtom(_para1:Widget):Atom;cdecl;


procedure XtReleasePropertyAtom(_para1:Widget; _para2:Atom);cdecl;


procedure XtGrabKey(_para1:Widget; _para2:_XtKeyCode; _para3:Modifiers; _para4:_XtBoolean; _para5:longint; 
            _para6:longint);cdecl;


procedure XtUngrabKey(_para1:Widget; _para2:_XtKeyCode; _para3:Modifiers);cdecl;


function XtGrabKeyboard(_para1:Widget; _para2:_XtBoolean; _para3:longint; _para4:longint; _para5:Time):longint;cdecl;


procedure XtUngrabKeyboard(_para1:Widget; _para2:Time);cdecl;


procedure XtGrabButton(_para1:Widget; _para2:longint; _para3:Modifiers; _para4:_XtBoolean; _para5:dword; 
            _para6:longint; _para7:longint; _para8:Window; _para9:Cursor);cdecl;


procedure XtUngrabButton(_para1:Widget; _para2:dword; _para3:Modifiers);cdecl;


function XtGrabPointer(_para1:Widget; _para2:_XtBoolean; _para3:dword; _para4:longint; _para5:longint; 
           _para6:Window; _para7:Cursor; _para8:Time):longint;cdecl;


procedure XtUngrabPointer(_para1:Widget; _para2:Time);cdecl;


procedure XtGetApplicationNameAndClass(_para1:PDisplay; _para2:PString; _para3:PString);cdecl;


procedure XtRegisterDrawable(_para1:PDisplay; _para2:Drawable; _para3:Widget);cdecl;


procedure XtUnregisterDrawable(_para1:PDisplay; _para2:Drawable);cdecl;


function XtHooksOfDisplay(_para1:PDisplay):Widget;cdecl;


type
  XtCreateHookDataRec = record
      _type : String;
      widget : Widget;
      args : ArgList;
      num_args : Cardinal;
    end;
  XtCreateHookData = ^XtCreateHookDataRec;

  XtChangeHookDataRec = record
      _type : String;
      widget : Widget;
      event_data : XtPointer;
      num_event_data : Cardinal;
    end;
  XtChangeHookData = ^XtChangeHookDataRec;

  XtChangeHookSetValuesDataRec = record
      old : Widget;
      req : Widget;
      args : ArgList;
      num_args : Cardinal;
    end;
  XtChangeHookSetValuesData = ^XtChangeHookSetValuesDataRec;

  XtConfigureHookDataRec = record
      _type : String;
      widget : Widget;
      changeMask : XtGeometryMask;
      changes : XWindowChanges;
    end;
  XtConfigureHookData = ^XtConfigureHookDataRec;

  XtGeometryHookDataRec = record
      _type : String;
      widget : Widget;
      request : ^XtWidgetGeometry;
      reply : ^XtWidgetGeometry;
      result : XtGeometryResult;
    end;
  XtGeometryHookData = ^XtGeometryHookDataRec;

  XtDestroyHookDataRec = record
      _type : String;
      widget : Widget;
    end;
  XtDestroyHookData = ^XtDestroyHookDataRec;


procedure XtGetDisplays(_para1:XtAppContext; _para2:PPPDisplay; _para3:PCardinal);cdecl;

function XtToolkitThreadInitialize:Boolean;cdecl;


procedure XtAppSetExitFlag(_para1:XtAppContext);cdecl;


function XtAppGetExitFlag(_para1:XtAppContext):Boolean;cdecl;


procedure XtAppLock(_para1:XtAppContext);cdecl;


procedure XtAppUnlock(_para1:XtAppContext);cdecl;





function XtCvtStringToAcceleratorTable(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;



function XtCvtStringToAtom(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;



function XtCvtStringToBool(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;



function XtCvtStringToBoolean(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;



function XtCvtStringToCommandArgArray(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;



function XtCvtStringToCursor(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;



function XtCvtStringToDimension(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;



function XtCvtStringToDirectoryString(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;



function XtCvtStringToDisplay(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;



function XtCvtStringToFile(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;



function XtCvtStringToFloat(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;



function XtCvtStringToFont(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;



function XtCvtStringToFontSet(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;



function XtCvtStringToFontStruct(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;


function XtCvtStringToGravity(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;



function XtCvtStringToInitialState(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;



function XtCvtStringToInt(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;



function XtCvtStringToPixel(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;

const
  XtCvtStringToPosition = XtCvtStringToShort;  



function XtCvtStringToRestartStyle(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;



function XtCvtStringToShort(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;



function XtCvtStringToTranslationTable(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;



function XtCvtStringToUnsignedChar(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;



function XtCvtStringToVisual(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;




function XtCvtIntToBool(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;



function XtCvtIntToBoolean(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;



function XtCvtIntToColor(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;

const
  XtCvtIntToDimension = XtCvtIntToShort;  



function XtCvtIntToFloat(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;



function XtCvtIntToFont(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;



function XtCvtIntToPixel(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;



function XtCvtIntToPixmap(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;

const
  XtCvtIntToPosition = XtCvtIntToShort;  



function XtCvtIntToShort(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;



function XtCvtIntToUnsignedChar(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;




function XtCvtColorToPixel(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
           _para6:PXtPointer):Boolean;cdecl;


const
  XtCvtPixelToColor = XtCvtIntToColor;  
{$endif}


(* error 
/* DON'T ADD STUFF AFTER THIS #endif */

implementation

    function XtNumber(arr : longint) : Cardinal;
    begin
      XtNumber:=Cardinal((sizeof(arr))/(sizeof(arr[0])));
    end;

    function XtAllEvents : EventMask;
      begin
        XtAllEvents:=EventMask(-(1));
      end;

  function XtIsRectObj(object : longint) : longint;
  begin
    XtIsRectObj:=_XtCheckSubclassFlag(object,XtEnum($02));
  end;

  function XtIsWidget(object : longint) : longint;
  begin
    XtIsWidget:=_XtCheckSubclassFlag(object,XtEnum($04));
  end;

  function XtIsComposite(widget : longint) : longint;
  begin
    XtIsComposite:=_XtCheckSubclassFlag(widget,XtEnum($08));
  end;

  function XtIsConstraint(widget : longint) : longint;
  begin
    XtIsConstraint:=_XtCheckSubclassFlag(widget,XtEnum($10));
  end;

  function XtIsShell(widget : longint) : longint;
  begin
    XtIsShell:=_XtCheckSubclassFlag(widget,XtEnum($20));
  end;

  function XtIsOverrideShell(widget : longint) : longint;
  begin
    XtIsOverrideShell:=_XtIsSubclassOf(widget,WidgetClass(overrideShellWidgetClass),WidgetClass(shellWidgetClass),XtEnum($20));
  end;

  function XtIsWMShell(widget : longint) : longint;
  begin
    XtIsWMShell:=_XtCheckSubclassFlag(widget,XtEnum($40));
  end;

  function XtIsVendorShell(widget : longint) : longint;
  begin
    XtIsVendorShell:=_XtIsSubclassOf(widget,WidgetClass(vendorShellWidgetClass),WidgetClass(wmShellWidgetClass),XtEnum($40));
  end;

  function XtIsTransientShell(widget : longint) : longint;
  begin
    XtIsTransientShell:=_XtIsSubclassOf(widget,WidgetClass(transientShellWidgetClass),WidgetClass(wmShellWidgetClass),XtEnum($40));
  end;

  function XtIsTopLevelShell(widget : longint) : longint;
  begin
    XtIsTopLevelShell:=_XtCheckSubclassFlag(widget,XtEnum($80));
  end;

  function XtIsApplicationShell(widget : longint) : longint;
  begin
    XtIsApplicationShell:=_XtIsSubclassOf(widget,WidgetClass(applicationShellWidgetClass),WidgetClass(topLevelShellWidgetClass),XtEnum($80));
  end;

  function XtIsSessionShell(widget : longint) : longint;
  begin
    XtIsSessionShell:=_XtIsSubclassOf(widget,WidgetClass(sessionShellWidgetClass),WidgetClass(topLevelShellWidgetClass),XtEnum($80));
  end;

  procedure XtUnrealizeWidget(_para1:Widget);
  begin
    { You must implement this function }
  end;
    function XtMapWidget(widget : longint) : longint;
    begin
      XtMapWidget:=XMapWindow(XtDisplay(widget),XtWindow(widget));
    end;

  function XtUnmapWidget(widget : longint) : longint;
  begin
    XtUnmapWidget:=XUnmapWindow(XtDisplay(widget),XtWindow(widget));
  end;

function XtUnspecifiedPixmap : Pixmap;
  begin
    XtUnspecifiedPixmap:=Pixmap(2);
  end;

function XtUnspecifiedWindow : Window;
  begin
    XtUnspecifiedWindow:=Window(2);
  end;

function XtUnspecifiedWindowGroup : Window;
  begin
    XtUnspecifiedWindowGroup:=Window(3);
  end;

function XtOffset(p_type,field : longint) : Cardinal;
begin
  XtOffset:=Cardinal((pchar(@((p_type(NULL))^.field)))-(pchar(NULL)));
end;

function XtOffsetOf(s_type,field : longint) : longint;
begin
  XtOffsetOf:=offsetof(s_type,field);
end;

    function XtSessionGetToken(_para1:Widget):XtCheckpointToken;
    begin
      { You must implement this function }
    end;
    procedure XtSessionReturnToken(_para1:XtCheckpointToken);
    begin
      { You must implement this function }
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

function XtNew(_type : longint) : ptype;
begin
  XtNew:=ptype(XtMalloc(dword(sizeof(_type))));
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

function XT_CONVERT_FAIL : Atom;
  begin
    XT_CONVERT_FAIL:=Atom($80000001);
  end;


end.
