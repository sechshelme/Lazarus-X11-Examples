
unit TranslateI;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/TranslateI.h
  The following command line parameters were used:
    /usr/include/X11/TranslateI.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/TranslateI.pp
}

    Type
    P_XtActionsRec  = ^_XtActionsRec;
    PActionRec  = ^ActionRec;
    PCardinal  = ^Cardinal;
    PDisplay  = ^Display;
    PEvent  = ^Event;
    PModifiers  = ^Modifiers;
    PString  = ^String;
    PTMStateTree  = ^TMStateTree;
    PXEvent  = ^XEvent;
    PXrmQuark  = ^XrmQuark;
    PXtPointer  = ^XtPointer;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$define CACHE_TRANSLATIONS}  

  const
    TM_NO_MATCH = -(2);    
    _XtRStateTablePair = '_XtStateTablePair';    

  type
    TMByteCard = byte;

    TMShortCard = word;

    TMLongCard = dword;

    TMShortInt = smallint;

    TMTypeMatch = ^_TMTypeMatchRec;

    TMModifierMatch = ^_TMModifierMatchRec;

    TMEventPtr = ^_TMEventRec;

    MatchProc = function (typeMatch:TMTypeMatch; modMatch:TMModifierMatch; eventSeq:TMEventPtr):Boolean;cdecl;

    _ModToKeysymTable = record
        mask : Modifiers;
        count : longint;
        idx : longint;
      end;
    ModToKeysymTable = _ModToKeysymTable;


    _LateBindings = record
        flag0 : word;
        ref_count : word;
        keysym : KeySym;
      end;
    LateBindings = _LateBindings;
    LateBindingsPtr = ^_LateBindings;

  const
    bm__LateBindings_knot = $1;
    bp__LateBindings_knot = 0;
    bm__LateBindings_pair = $2;
    bp__LateBindings_pair = 1;

  function knot(var a : _LateBindings) : dword;
  procedure set_knot(var a : _LateBindings; __knot : dword);
  function pair(var a : _LateBindings) : dword;
  procedure set_pair(var a : _LateBindings; __pair : dword);

  type
    ModifierMask = smallint;

    ActionPtr = ^_ActionsRec;





    _ActionsRec = record
        idx : longint;
        params : ^String;
        num_params : Cardinal;
        next : ActionPtr;
      end;
    ActionRec = _ActionsRec;

    StatePtr = ^_XtStateRec;


    _XtStateRec = record
        flag0 : word;
        typeIndex : TMShortCard;
        modIndex : TMShortCard;
        actions : ActionPtr;
        nextLevel : StatePtr;
      end;
    StateRec = _XtStateRec;

  const
    bm__XtStateRec_isCycleStart = $1;
    bp__XtStateRec_isCycleStart = 0;
    bm__XtStateRec_isCycleEnd = $2;
    bp__XtStateRec_isCycleEnd = 1;

  function isCycleStart(var a : _XtStateRec) : dword;
  procedure set_isCycleStart(var a : _XtStateRec; __isCycleStart : dword);
  function isCycleEnd(var a : _XtStateRec) : dword;
  procedure set_isCycleEnd(var a : _XtStateRec; __isCycleEnd : dword);

  const
    XtTableReplace = 0;    
    XtTableAugment = 1;    
    XtTableOverride = 2;    
    XtTableUnmerge = 3;    

  type
    _XtTranslateOp = dword;


    _TMModifierMatchRec = record
        modifiers : TMLongCard;
        modifierMask : TMLongCard;
        lateModifiers : LateBindingsPtr;
        standard : Boolean;
      end;
    TMModifierMatchRec = _TMModifierMatchRec;

    _TMTypeMatchRec = record
        eventType : TMLongCard;
        eventCode : TMLongCard;
        eventCodeMask : TMLongCard;
        matchEvent : MatchProc;
      end;
    TMTypeMatchRec = _TMTypeMatchRec;

    _TMBranchHeadRec = record
        flag0 : word;
        typeIndex : TMShortCard;
        modIndex : TMShortCard;
      end;
    TMBranchHeadRec = _TMBranchHeadRec;
    TMBranchHead = ^_TMBranchHeadRec;

  const
    bm__TMBranchHeadRec_isSimple = $1;
    bp__TMBranchHeadRec_isSimple = 0;
    bm__TMBranchHeadRec_hasActions = $2;
    bp__TMBranchHeadRec_hasActions = 1;
    bm__TMBranchHeadRec_hasCycles = $4;
    bp__TMBranchHeadRec_hasCycles = 2;
    bm__TMBranchHeadRec_more = $FFF8;
    bp__TMBranchHeadRec_more = 3;

  function isSimple(var a : _TMBranchHeadRec) : dword;
  procedure set_isSimple(var a : _TMBranchHeadRec; __isSimple : dword);
  function hasActions(var a : _TMBranchHeadRec) : dword;
  procedure set_hasActions(var a : _TMBranchHeadRec; __hasActions : dword);
  function hasCycles(var a : _TMBranchHeadRec) : dword;
  procedure set_hasCycles(var a : _TMBranchHeadRec; __hasCycles : dword);
  function more(var a : _TMBranchHeadRec) : dword;
  procedure set_more(var a : _TMBranchHeadRec; __more : dword);





  type
    _TMSimpleStateTreeRec = record
        flag0 : word;
        numBranchHeads : TMShortCard;
        numQuarks : TMShortCard;
        unused : TMShortCard;
        branchHeadTbl : ^TMBranchHeadRec;
        quarkTbl : ^XrmQuark;
      end;
    TMSimpleStateTreeRec = _TMSimpleStateTreeRec;
    TMSimpleStateTree = ^_TMSimpleStateTreeRec;

  const
    bm__TMSimpleStateTreeRec_isSimple = $1;
    bp__TMSimpleStateTreeRec_isSimple = 0;
    bm__TMSimpleStateTreeRec_isAccelerator = $2;
    bp__TMSimpleStateTreeRec_isAccelerator = 1;
    bm__TMSimpleStateTreeRec_mappingNotifyInterest = $4;
    bp__TMSimpleStateTreeRec_mappingNotifyInterest = 2;
    bm__TMSimpleStateTreeRec_refCount = $FFF8;
    bp__TMSimpleStateTreeRec_refCount = 3;

  function isSimple(var a : _TMSimpleStateTreeRec) : dword;
  procedure set_isSimple(var a : _TMSimpleStateTreeRec; __isSimple : dword);
  function isAccelerator(var a : _TMSimpleStateTreeRec) : dword;
  procedure set_isAccelerator(var a : _TMSimpleStateTreeRec; __isAccelerator : dword);
  function mappingNotifyInterest(var a : _TMSimpleStateTreeRec) : dword;
  procedure set_mappingNotifyInterest(var a : _TMSimpleStateTreeRec; __mappingNotifyInterest : dword);
  function refCount(var a : _TMSimpleStateTreeRec) : dword;
  procedure set_refCount(var a : _TMSimpleStateTreeRec; __refCount : dword);




  type
    _TMComplexStateTreeRec = record
        flag0 : word;
        numBranchHeads : TMShortCard;
        numQuarks : TMShortCard;
        numComplexBranchHeads : TMShortCard;
        branchHeadTbl : ^TMBranchHeadRec;
        quarkTbl : ^XrmQuark;
        complexBranchHeadTbl : ^StatePtr;
      end;
    TMComplexStateTreeRec = _TMComplexStateTreeRec;
    TMComplexStateTree = ^_TMComplexStateTreeRec;

  const
    bm__TMComplexStateTreeRec_isSimple = $1;
    bp__TMComplexStateTreeRec_isSimple = 0;
    bm__TMComplexStateTreeRec_isAccelerator = $2;
    bp__TMComplexStateTreeRec_isAccelerator = 1;
    bm__TMComplexStateTreeRec_mappingNotifyInterest = $4;
    bp__TMComplexStateTreeRec_mappingNotifyInterest = 2;
    bm__TMComplexStateTreeRec_refCount = $FFF8;
    bp__TMComplexStateTreeRec_refCount = 3;

  function isSimple(var a : _TMComplexStateTreeRec) : dword;
  procedure set_isSimple(var a : _TMComplexStateTreeRec; __isSimple : dword);
  function isAccelerator(var a : _TMComplexStateTreeRec) : dword;
  procedure set_isAccelerator(var a : _TMComplexStateTreeRec; __isAccelerator : dword);
  function mappingNotifyInterest(var a : _TMComplexStateTreeRec) : dword;
  procedure set_mappingNotifyInterest(var a : _TMComplexStateTreeRec; __mappingNotifyInterest : dword);
  function refCount(var a : _TMComplexStateTreeRec) : dword;
  procedure set_refCount(var a : _TMComplexStateTreeRec; __refCount : dword);






  type
    _TMParseStateTreeRec = record
        flag0 : word;
        numBranchHeads : TMShortCard;
        numQuarks : TMShortCard;
        numComplexBranchHeads : TMShortCard;
        branchHeadTbl : ^TMBranchHeadRec;
        quarkTbl : ^XrmQuark;
        complexBranchHeadTbl : ^StatePtr;
        branchHeadTblSize : TMShortCard;
        quarkTblSize : TMShortCard;
        complexBranchHeadTblSize : TMShortCard;
        head : StatePtr;
      end;
    TMParseStateTreeRec = _TMParseStateTreeRec;
    TMParseStateTree = ^_TMParseStateTreeRec;

  const
    bm__TMParseStateTreeRec_isSimple = $1;
    bp__TMParseStateTreeRec_isSimple = 0;
    bm__TMParseStateTreeRec_isAccelerator = $2;
    bp__TMParseStateTreeRec_isAccelerator = 1;
    bm__TMParseStateTreeRec_mappingNotifyInterest = $4;
    bp__TMParseStateTreeRec_mappingNotifyInterest = 2;
    bm__TMParseStateTreeRec_isStackQuarks = $8;
    bp__TMParseStateTreeRec_isStackQuarks = 3;
    bm__TMParseStateTreeRec_isStackBranchHeads = $10;
    bp__TMParseStateTreeRec_isStackBranchHeads = 4;
    bm__TMParseStateTreeRec_isStackComplexBranchHeads = $20;
    bp__TMParseStateTreeRec_isStackComplexBranchHeads = 5;
    bm__TMParseStateTreeRec_unused = $FFC0;
    bp__TMParseStateTreeRec_unused = 6;

  function isSimple(var a : _TMParseStateTreeRec) : dword;
  procedure set_isSimple(var a : _TMParseStateTreeRec; __isSimple : dword);
  function isAccelerator(var a : _TMParseStateTreeRec) : dword;
  procedure set_isAccelerator(var a : _TMParseStateTreeRec; __isAccelerator : dword);
  function mappingNotifyInterest(var a : _TMParseStateTreeRec) : dword;
  procedure set_mappingNotifyInterest(var a : _TMParseStateTreeRec; __mappingNotifyInterest : dword);
  function isStackQuarks(var a : _TMParseStateTreeRec) : dword;
  procedure set_isStackQuarks(var a : _TMParseStateTreeRec; __isStackQuarks : dword);
  function isStackBranchHeads(var a : _TMParseStateTreeRec) : dword;
  procedure set_isStackBranchHeads(var a : _TMParseStateTreeRec; __isStackBranchHeads : dword);
  function isStackComplexBranchHeads(var a : _TMParseStateTreeRec) : dword;
  procedure set_isStackComplexBranchHeads(var a : _TMParseStateTreeRec; __isStackComplexBranchHeads : dword);
  function unused(var a : _TMParseStateTreeRec) : dword;
  procedure set_unused(var a : _TMParseStateTreeRec; __unused : dword);

  type
    _TMStateTreeRec = ^record
        case longint of
          0 : ( simple : TMSimpleStateTreeRec );
          1 : ( parse : TMParseStateTreeRec );
          2 : ( complex : TMComplexStateTreeRec );
        end;
    TMStateTree = ^_TMStateTreeRec;
    TMStateTreePtr = ^^_TMStateTreeRec;
    TMStateTreeList = ^^_TMStateTreeRec;

    _TMSimpleBindProcsRec = record
        procs : ^XtActionProc;
      end;
    TMSimpleBindProcsRec = _TMSimpleBindProcsRec;
    TMSimpleBindProcs = ^_TMSimpleBindProcsRec;


    _TMComplexBindProcsRec = record
        widget : Widget;
        aXlations : XtTranslations;
        procs : ^XtActionProc;
      end;
    TMComplexBindProcsRec = _TMComplexBindProcsRec;
    TMComplexBindProcs = ^_TMComplexBindProcsRec;



    _TMSimpleBindDataRec = record
        flag0 : word;
        bindTbl : array[0..0] of TMSimpleBindProcsRec;
      end;
    TMSimpleBindDataRec = _TMSimpleBindDataRec;
    TMSimpleBindData = ^_TMSimpleBindDataRec;

  const
    bm__TMSimpleBindDataRec_isComplex = $1;
    bp__TMSimpleBindDataRec_isComplex = 0;

  function isComplex(var a : _TMSimpleBindDataRec) : dword;
  procedure set_isComplex(var a : _TMSimpleBindDataRec; __isComplex : dword);




  type
    _TMComplexBindDataRec = record
        flag0 : word;
        accel_context : ^_ATranslationData;
        bindTbl : array[0..0] of TMComplexBindProcsRec;
      end;
    TMComplexBindDataRec = _TMComplexBindDataRec;
    TMComplexBindData = ^_TMComplexBindDataRec;

  const
    bm__TMComplexBindDataRec_isComplex = $1;
    bp__TMComplexBindDataRec_isComplex = 0;

  function isComplex(var a : _TMComplexBindDataRec) : dword;
  procedure set_isComplex(var a : _TMComplexBindDataRec; __isComplex : dword);

  type
    _TMBindDataRec = ^record
        case longint of
          0 : ( simple : TMSimpleBindDataRec );
          1 : ( complex : TMComplexBindDataRec );
        end;
    TMBindData = ^_TMBindDataRec;




    _TranslationData = record
        hasBindings : byte;
        operation : byte;
        numStateTrees : TMShortCard;
        composers : array[0..1] of ^_TranslationData;
        eventMask : EventMask;
        stateTreeTbl : array[0..0] of TMStateTree;
      end;
    TranslationData = _TranslationData;






    _ATranslationData = record
        hasBindings : byte;
        operation : byte;
        xlations : ^_TranslationData;
        next : ^_ATranslationData;
        bindTbl : array[0..0] of TMComplexBindProcsRec;
      end;
    ATranslationData = _ATranslationData;
    ATranslations = ^_ATranslationData;



    _TMConvertRec = record
        old : XtTranslations;
        _new : XtTranslations;
      end;
    TMConvertRec = _TMConvertRec;

  function _XtEventTimerEventType : TMLongCard;    


  const
    KeysymModMask = 1 shl 27;    

    AnyButtonMask = 1 shl 28;    

  type
    _EventRec = record
        modifiers : TMLongCard;
        modifierMask : TMLongCard;
        lateModifiers : LateBindingsPtr;
        eventType : TMLongCard;
        eventCode : TMLongCard;
        eventCodeMask : TMLongCard;
        matchEvent : MatchProc;
        standard : Boolean;
      end;
    Event = _EventRec;

    EventSeqPtr = ^_EventSeqRec;





    _EventSeqRec = record
        event : Event;
        state : StatePtr;
        next : EventSeqPtr;
        actions : ActionPtr;
      end;
    EventSeqRec = _EventSeqRec;

    EventRec = EventSeqRec;

    EventPtr = EventSeqPtr;

    _TMEventRec = record
        xev : ^XEvent;
        event : Event;
      end;
    TMEventRec = _TMEventRec;


    _ActionHookRec = record
        next : ^_ActionHookRec;
        app : XtAppContext;
        proc : XtActionHookProc;
        closure : XtPointer;
      end;
    ActionHookRec = _ActionHookRec;
    ActionHook = ^_ActionHookRec;


  const
    TMKEYCACHELOG2 = 6;    
    TMKEYCACHESIZE = 1 shl TMKEYCACHELOG2;    


  type
    _KeyCacheRec = record
        modifiers_return : array[0..255] of byte;
        keycode : array[0..(TMKEYCACHESIZE)-1] of KeyCode;
        modifiers : array[0..(TMKEYCACHESIZE)-1] of byte;
        keysym : array[0..(TMKEYCACHESIZE)-1] of KeySym;
      end;
    TMKeyCache = _KeyCacheRec;


    _TMKeyContextRec = record
        event : ^XEvent;
        serial : dword;
        keysym : KeySym;
        modifiers : Modifiers;
        keycache : TMKeyCache;
      end;
    TMKeyContextRec = _TMKeyContextRec;
    TMKeyContext = ^_TMKeyContextRec;
{$ifdef TRACE_TM}
{$endif}


  type
    _TMGlobalRec = record
        typeMatchSegmentTbl : ^^TMTypeMatchRec;
        numTypeMatches : TMShortCard;
        numTypeMatchSegments : TMShortCard;
        typeMatchSegmentTblSize : TMShortCard;
        modMatchSegmentTbl : ^^TMModifierMatchRec;
        numModMatches : TMShortCard;
        numModMatchSegments : TMShortCard;
        modMatchSegmentTblSize : TMShortCard;
        newMatchSemantics : Boolean;
        tmTbl : ^XtTranslations;
        numTms : TMShortCard;
        tmTblSize : TMShortCard;
        bindCacheTbl : ^^_TMBindCacheRec;
        numBindCache : TMShortCard;
        bindCacheTblSize : TMShortCard;
        numLateBindings : TMShortCard;
        numBranchHeads : TMShortCard;
        numComplexStates : TMShortCard;
        numComplexActions : TMShortCard;
      end;
    TMGlobalRec = _TMGlobalRec;
(* error 
extern TMGlobalRec _XtGlobalTM;
in declaration at line 344 *)

    const
      TM_MOD_SEGMENT_SIZE = 16;      
      TM_TYPE_SEGMENT_SIZE = 16;      
(* error 
   &((_XtGlobalTM.typeMatchSegmentTbl[((idx) >> 4)])[(idx) & 15]))
in define line 351 *)
(* error 
   &((_XtGlobalTM.modMatchSegmentTbl[(idx) >> 4])[(idx) & 15]))
in define line 354 *)


    function TMNewMatchSemantics : longint;    

  function TMBranchMore(branch : longint) : longint;  

function TMComplexBranchHead(tree,br : longint) : longint;

function TMGetComplexBindEntry(bindData,idx : longint) : TMComplexBindProcs;

function TMGetSimpleBindEntry(bindData,idx : longint) : TMSimpleBindProcs;

(* error 
        _XtBuildKeysymTables(dpy, pd)
in define line 371 *)


    procedure _XtPopup(_para1:Widget; _para2:XtGrabKind; _para3:_XtBoolean);cdecl;


    function _XtPrintXlations(_para1:Widget; _para2:XtTranslations; _para3:Widget; _para4:_XtBoolean):_XtString;cdecl;


    procedure _XtRegisterGrabs(_para1:Widget);cdecl;


    function _XtInitializeActionData(_para1:P_XtActionsRec; _para2:Cardinal; _para3:_XtBoolean):XtPointer;cdecl;


    procedure _XtAddEventSeqToStateTree(_para1:EventSeqPtr; _para2:TMParseStateTree);cdecl;


    function _XtMatchUsingStandardMods(_para1:TMTypeMatch; _para2:TMModifierMatch; _para3:TMEventPtr):Boolean;cdecl;


    function _XtMatchUsingDontCareMods(_para1:TMTypeMatch; _para2:TMModifierMatch; _para3:TMEventPtr):Boolean;cdecl;


    function _XtRegularMatch(_para1:TMTypeMatch; _para2:TMModifierMatch; _para3:TMEventPtr):Boolean;cdecl;


    function _XtMatchAtom(_para1:TMTypeMatch; _para2:TMModifierMatch; _para3:TMEventPtr):Boolean;cdecl;


    procedure _XtTranslateEvent(_para1:Widget; _para2:PXEvent);cdecl;

{$include "CallbackI.h"}
{$include "EventI.h"}
{$include "HookObjI.h"}
{$include "PassivGraI.h"}
{$include "ThreadsI.h"}
{$include "InitialI.h"}
{$include "ResourceI.h"}
{$include "StringDefs.h"}

    procedure _XtBuildKeysymTables(dpy:PDisplay; pd:XtPerDisplay);cdecl;

{$ifndef NO_MIT_HACKS}


    procedure _XtDisplayTranslations(_para1:Widget; _para2:PXEvent; _para3:PString; _para4:PCardinal);cdecl;


    procedure _XtDisplayAccelerators(_para1:Widget; _para2:PXEvent; _para3:PString; _para4:PCardinal);cdecl;


    procedure _XtDisplayInstalledAccelerators(_para1:Widget; _para2:PXEvent; _para3:PString; _para4:PCardinal);cdecl;

{$endif}



    procedure _XtPopupInitialize(_para1:XtAppContext);cdecl;


    procedure _XtBindActions(_para1:Widget; _para2:XtTM);cdecl;


    function _XtComputeLateBindings(_para1:PDisplay; _para2:LateBindingsPtr; _para3:PModifiers; _para4:PModifiers):Boolean;cdecl;


    function _XtCreateXlations(_para1:PTMStateTree; _para2:TMShortCard; _para3:XtTranslations; _para4:XtTranslations):XtTranslations;cdecl;


    function _XtCvtMergeTranslations(_para1:PDisplay; _para2:XrmValuePtr; _para3:PCardinal; _para4:XrmValuePtr; _para5:XrmValuePtr; 
               _para6:PXtPointer):Boolean;cdecl;

    procedure _XtRemoveStateTreeByIndex(_para1:XtTranslations; _para2:TMShortCard);


    procedure _XtFreeTranslations(_para1:XtAppContext; _para2:XrmValuePtr; _para3:XtPointer; _para4:XrmValuePtr; _para5:PCardinal);


    function _XtGetModifierIndex(_para1:PEvent):TMShortCard;cdecl;


    function _XtGetQuarkIndex(_para1:TMParseStateTree; _para2:XrmQuark):TMShortCard;cdecl;


    function _XtGetTranslationValue(_para1:Widget):XtTranslations;cdecl;


    function _XtGetTypeIndex(_para1:PEvent):TMShortCard;cdecl;


    procedure _XtGrabInitialize(_para1:XtAppContext);cdecl;


    procedure _XtInstallTranslations(_para1:Widget);cdecl;


    procedure _XtRemoveTranslations(_para1:Widget);cdecl;


    procedure _XtDestroyTMData(_para1:Widget);cdecl;


    procedure _XtMergeTranslations(_para1:Widget; _para2:XtTranslations; _para3:_XtTranslateOp);cdecl;


    procedure _XtActionInitialize(_para1:XtAppContext);cdecl;


    function _XtParseTreeToStateTree(_para1:TMParseStateTree):TMStateTree;cdecl;


    function _XtPrintActions(_para1:PActionRec; _para2:PXrmQuark):String;cdecl;

    function _XtPrintState(_para1:TMStateTree; _para2:TMBranchHead):String;cdecl;


    function _XtPrintEventSeq(_para1:EventSeqPtr; _para2:PDisplay):String;cdecl;



    type

      _XtTraversalProc = function (_para1:StatePtr; _para2:XtPointer):Boolean;cdecl;


    procedure _XtTraverseStateTree(_para1:TMStateTree; _para2:_XtTraversalProc; _para3:XtPointer);cdecl;

    procedure _XtTranslateInitialize;cdecl;


    procedure _XtAddTMConverters(_para1:ConverterTable);cdecl;


    procedure _XtUnbindActions(_para1:Widget; _para2:XtTranslations; _para3:TMBindData);cdecl;


    procedure _XtUnmergeTranslations(_para1:Widget; _para2:XtTranslations);cdecl;


    procedure _XtAllocTMContext(pd:XtPerDisplay);cdecl;

(* error 
_XFUNCPROTOEND

implementation

  function knot(var a : _LateBindings) : dword;
    begin
      knot:=(a.flag0 and bm__LateBindings_knot) shr bp__LateBindings_knot;
    end;

  procedure set_knot(var a : _LateBindings; __knot : dword);
    begin
      a.flag0:=a.flag0 or ((__knot shl bp__LateBindings_knot) and bm__LateBindings_knot);
    end;

  function pair(var a : _LateBindings) : dword;
    begin
      pair:=(a.flag0 and bm__LateBindings_pair) shr bp__LateBindings_pair;
    end;

  procedure set_pair(var a : _LateBindings; __pair : dword);
    begin
      a.flag0:=a.flag0 or ((__pair shl bp__LateBindings_pair) and bm__LateBindings_pair);
    end;

  function isCycleStart(var a : _XtStateRec) : dword;
    begin
      isCycleStart:=(a.flag0 and bm__XtStateRec_isCycleStart) shr bp__XtStateRec_isCycleStart;
    end;

  procedure set_isCycleStart(var a : _XtStateRec; __isCycleStart : dword);
    begin
      a.flag0:=a.flag0 or ((__isCycleStart shl bp__XtStateRec_isCycleStart) and bm__XtStateRec_isCycleStart);
    end;

  function isCycleEnd(var a : _XtStateRec) : dword;
    begin
      isCycleEnd:=(a.flag0 and bm__XtStateRec_isCycleEnd) shr bp__XtStateRec_isCycleEnd;
    end;

  procedure set_isCycleEnd(var a : _XtStateRec; __isCycleEnd : dword);
    begin
      a.flag0:=a.flag0 or ((__isCycleEnd shl bp__XtStateRec_isCycleEnd) and bm__XtStateRec_isCycleEnd);
    end;

  function isSimple(var a : _TMBranchHeadRec) : dword;
    begin
      isSimple:=(a.flag0 and bm__TMBranchHeadRec_isSimple) shr bp__TMBranchHeadRec_isSimple;
    end;

  procedure set_isSimple(var a : _TMBranchHeadRec; __isSimple : dword);
    begin
      a.flag0:=a.flag0 or ((__isSimple shl bp__TMBranchHeadRec_isSimple) and bm__TMBranchHeadRec_isSimple);
    end;

  function hasActions(var a : _TMBranchHeadRec) : dword;
    begin
      hasActions:=(a.flag0 and bm__TMBranchHeadRec_hasActions) shr bp__TMBranchHeadRec_hasActions;
    end;

  procedure set_hasActions(var a : _TMBranchHeadRec; __hasActions : dword);
    begin
      a.flag0:=a.flag0 or ((__hasActions shl bp__TMBranchHeadRec_hasActions) and bm__TMBranchHeadRec_hasActions);
    end;

  function hasCycles(var a : _TMBranchHeadRec) : dword;
    begin
      hasCycles:=(a.flag0 and bm__TMBranchHeadRec_hasCycles) shr bp__TMBranchHeadRec_hasCycles;
    end;

  procedure set_hasCycles(var a : _TMBranchHeadRec; __hasCycles : dword);
    begin
      a.flag0:=a.flag0 or ((__hasCycles shl bp__TMBranchHeadRec_hasCycles) and bm__TMBranchHeadRec_hasCycles);
    end;

  function more(var a : _TMBranchHeadRec) : dword;
    begin
      more:=(a.flag0 and bm__TMBranchHeadRec_more) shr bp__TMBranchHeadRec_more;
    end;

  procedure set_more(var a : _TMBranchHeadRec; __more : dword);
    begin
      a.flag0:=a.flag0 or ((__more shl bp__TMBranchHeadRec_more) and bm__TMBranchHeadRec_more);
    end;

  function isSimple(var a : _TMSimpleStateTreeRec) : dword;
    begin
      isSimple:=(a.flag0 and bm__TMSimpleStateTreeRec_isSimple) shr bp__TMSimpleStateTreeRec_isSimple;
    end;

  procedure set_isSimple(var a : _TMSimpleStateTreeRec; __isSimple : dword);
    begin
      a.flag0:=a.flag0 or ((__isSimple shl bp__TMSimpleStateTreeRec_isSimple) and bm__TMSimpleStateTreeRec_isSimple);
    end;

  function isAccelerator(var a : _TMSimpleStateTreeRec) : dword;
    begin
      isAccelerator:=(a.flag0 and bm__TMSimpleStateTreeRec_isAccelerator) shr bp__TMSimpleStateTreeRec_isAccelerator;
    end;

  procedure set_isAccelerator(var a : _TMSimpleStateTreeRec; __isAccelerator : dword);
    begin
      a.flag0:=a.flag0 or ((__isAccelerator shl bp__TMSimpleStateTreeRec_isAccelerator) and bm__TMSimpleStateTreeRec_isAccelerator);
    end;

  function mappingNotifyInterest(var a : _TMSimpleStateTreeRec) : dword;
    begin
      mappingNotifyInterest:=(a.flag0 and bm__TMSimpleStateTreeRec_mappingNotifyInterest) shr bp__TMSimpleStateTreeRec_mappingNotifyInterest;
    end;

  procedure set_mappingNotifyInterest(var a : _TMSimpleStateTreeRec; __mappingNotifyInterest : dword);
    begin
      a.flag0:=a.flag0 or ((__mappingNotifyInterest shl bp__TMSimpleStateTreeRec_mappingNotifyInterest) and bm__TMSimpleStateTreeRec_mappingNotifyInterest);
    end;

  function refCount(var a : _TMSimpleStateTreeRec) : dword;
    begin
      refCount:=(a.flag0 and bm__TMSimpleStateTreeRec_refCount) shr bp__TMSimpleStateTreeRec_refCount;
    end;

  procedure set_refCount(var a : _TMSimpleStateTreeRec; __refCount : dword);
    begin
      a.flag0:=a.flag0 or ((__refCount shl bp__TMSimpleStateTreeRec_refCount) and bm__TMSimpleStateTreeRec_refCount);
    end;

  function isSimple(var a : _TMComplexStateTreeRec) : dword;
    begin
      isSimple:=(a.flag0 and bm__TMComplexStateTreeRec_isSimple) shr bp__TMComplexStateTreeRec_isSimple;
    end;

  procedure set_isSimple(var a : _TMComplexStateTreeRec; __isSimple : dword);
    begin
      a.flag0:=a.flag0 or ((__isSimple shl bp__TMComplexStateTreeRec_isSimple) and bm__TMComplexStateTreeRec_isSimple);
    end;

  function isAccelerator(var a : _TMComplexStateTreeRec) : dword;
    begin
      isAccelerator:=(a.flag0 and bm__TMComplexStateTreeRec_isAccelerator) shr bp__TMComplexStateTreeRec_isAccelerator;
    end;

  procedure set_isAccelerator(var a : _TMComplexStateTreeRec; __isAccelerator : dword);
    begin
      a.flag0:=a.flag0 or ((__isAccelerator shl bp__TMComplexStateTreeRec_isAccelerator) and bm__TMComplexStateTreeRec_isAccelerator);
    end;

  function mappingNotifyInterest(var a : _TMComplexStateTreeRec) : dword;
    begin
      mappingNotifyInterest:=(a.flag0 and bm__TMComplexStateTreeRec_mappingNotifyInterest) shr bp__TMComplexStateTreeRec_mappingNotifyInterest;
    end;

  procedure set_mappingNotifyInterest(var a : _TMComplexStateTreeRec; __mappingNotifyInterest : dword);
    begin
      a.flag0:=a.flag0 or ((__mappingNotifyInterest shl bp__TMComplexStateTreeRec_mappingNotifyInterest) and bm__TMComplexStateTreeRec_mappingNotifyInterest);
    end;

  function refCount(var a : _TMComplexStateTreeRec) : dword;
    begin
      refCount:=(a.flag0 and bm__TMComplexStateTreeRec_refCount) shr bp__TMComplexStateTreeRec_refCount;
    end;

  procedure set_refCount(var a : _TMComplexStateTreeRec; __refCount : dword);
    begin
      a.flag0:=a.flag0 or ((__refCount shl bp__TMComplexStateTreeRec_refCount) and bm__TMComplexStateTreeRec_refCount);
    end;

  function isSimple(var a : _TMParseStateTreeRec) : dword;
    begin
      isSimple:=(a.flag0 and bm__TMParseStateTreeRec_isSimple) shr bp__TMParseStateTreeRec_isSimple;
    end;

  procedure set_isSimple(var a : _TMParseStateTreeRec; __isSimple : dword);
    begin
      a.flag0:=a.flag0 or ((__isSimple shl bp__TMParseStateTreeRec_isSimple) and bm__TMParseStateTreeRec_isSimple);
    end;

  function isAccelerator(var a : _TMParseStateTreeRec) : dword;
    begin
      isAccelerator:=(a.flag0 and bm__TMParseStateTreeRec_isAccelerator) shr bp__TMParseStateTreeRec_isAccelerator;
    end;

  procedure set_isAccelerator(var a : _TMParseStateTreeRec; __isAccelerator : dword);
    begin
      a.flag0:=a.flag0 or ((__isAccelerator shl bp__TMParseStateTreeRec_isAccelerator) and bm__TMParseStateTreeRec_isAccelerator);
    end;

  function mappingNotifyInterest(var a : _TMParseStateTreeRec) : dword;
    begin
      mappingNotifyInterest:=(a.flag0 and bm__TMParseStateTreeRec_mappingNotifyInterest) shr bp__TMParseStateTreeRec_mappingNotifyInterest;
    end;

  procedure set_mappingNotifyInterest(var a : _TMParseStateTreeRec; __mappingNotifyInterest : dword);
    begin
      a.flag0:=a.flag0 or ((__mappingNotifyInterest shl bp__TMParseStateTreeRec_mappingNotifyInterest) and bm__TMParseStateTreeRec_mappingNotifyInterest);
    end;

  function isStackQuarks(var a : _TMParseStateTreeRec) : dword;
    begin
      isStackQuarks:=(a.flag0 and bm__TMParseStateTreeRec_isStackQuarks) shr bp__TMParseStateTreeRec_isStackQuarks;
    end;

  procedure set_isStackQuarks(var a : _TMParseStateTreeRec; __isStackQuarks : dword);
    begin
      a.flag0:=a.flag0 or ((__isStackQuarks shl bp__TMParseStateTreeRec_isStackQuarks) and bm__TMParseStateTreeRec_isStackQuarks);
    end;

  function isStackBranchHeads(var a : _TMParseStateTreeRec) : dword;
    begin
      isStackBranchHeads:=(a.flag0 and bm__TMParseStateTreeRec_isStackBranchHeads) shr bp__TMParseStateTreeRec_isStackBranchHeads;
    end;

  procedure set_isStackBranchHeads(var a : _TMParseStateTreeRec; __isStackBranchHeads : dword);
    begin
      a.flag0:=a.flag0 or ((__isStackBranchHeads shl bp__TMParseStateTreeRec_isStackBranchHeads) and bm__TMParseStateTreeRec_isStackBranchHeads);
    end;

  function isStackComplexBranchHeads(var a : _TMParseStateTreeRec) : dword;
    begin
      isStackComplexBranchHeads:=(a.flag0 and bm__TMParseStateTreeRec_isStackComplexBranchHeads) shr bp__TMParseStateTreeRec_isStackComplexBranchHeads;
    end;

  procedure set_isStackComplexBranchHeads(var a : _TMParseStateTreeRec; __isStackComplexBranchHeads : dword);
    begin
      a.flag0:=a.flag0 or ((__isStackComplexBranchHeads shl bp__TMParseStateTreeRec_isStackComplexBranchHeads) and bm__TMParseStateTreeRec_isStackComplexBranchHeads);
    end;

  function unused(var a : _TMParseStateTreeRec) : dword;
    begin
      unused:=(a.flag0 and bm__TMParseStateTreeRec_unused) shr bp__TMParseStateTreeRec_unused;
    end;

  procedure set_unused(var a : _TMParseStateTreeRec; __unused : dword);
    begin
      a.flag0:=a.flag0 or ((__unused shl bp__TMParseStateTreeRec_unused) and bm__TMParseStateTreeRec_unused);
    end;

  function isComplex(var a : _TMSimpleBindDataRec) : dword;
    begin
      isComplex:=(a.flag0 and bm__TMSimpleBindDataRec_isComplex) shr bp__TMSimpleBindDataRec_isComplex;
    end;

  procedure set_isComplex(var a : _TMSimpleBindDataRec; __isComplex : dword);
    begin
      a.flag0:=a.flag0 or ((__isComplex shl bp__TMSimpleBindDataRec_isComplex) and bm__TMSimpleBindDataRec_isComplex);
    end;

  function isComplex(var a : _TMComplexBindDataRec) : dword;
    begin
      isComplex:=(a.flag0 and bm__TMComplexBindDataRec_isComplex) shr bp__TMComplexBindDataRec_isComplex;
    end;

  procedure set_isComplex(var a : _TMComplexBindDataRec; __isComplex : dword);
    begin
      a.flag0:=a.flag0 or ((__isComplex shl bp__TMComplexBindDataRec_isComplex) and bm__TMComplexBindDataRec_isComplex);
    end;

  function _XtEventTimerEventType : TMLongCard;
    begin
      _XtEventTimerEventType:=TMLongCard( not (0));
    end;

    function TMNewMatchSemantics : longint;
    begin
      TMNewMatchSemantics:=_XtGlobalTM.newMatchSemantics;
    end;

  function TMBranchMore(branch : longint) : longint;
  begin
    TMBranchMore:=branch^.more;
  end;

function TMComplexBranchHead(tree,br : longint) : longint;
begin
  TMComplexBranchHead:=(TMComplexStateTree(tree))^.(complexBranchHeadTbl[TMBranchMore(br)]);
end;

function TMGetComplexBindEntry(bindData,idx : longint) : TMComplexBindProcs;
begin
  TMGetComplexBindEntry:=TMComplexBindProcs(@((TMComplexBindData(bindData))^.(bindTbl[idx])));
end;

function TMGetSimpleBindEntry(bindData,idx : longint) : TMSimpleBindProcs;
begin
  TMGetSimpleBindEntry:=TMSimpleBindProcs(@((TMSimpleBindData(bindData))^.(bindTbl[idx])));
end;

    procedure _XtRemoveStateTreeByIndex(_para1:XtTranslations; _para2:TMShortCard);
    begin
      { You must implement this function }
    end;
    procedure _XtFreeTranslations(_para1:XtAppContext; _para2:XrmValuePtr; _para3:XtPointer; _para4:XrmValuePtr; _para5:PCardinal);
    begin
      { You must implement this function }
    end;

end.
