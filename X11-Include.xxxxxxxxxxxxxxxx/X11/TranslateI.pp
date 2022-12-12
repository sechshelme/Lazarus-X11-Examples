
unit TranslateI;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/TranslateI.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/TranslateI.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/TranslateI.pp
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
    PActionHook  = ^ActionHook;
    PActionHookRec  = ^ActionHookRec;
    PActionPtr  = ^ActionPtr;
    PActionRec  = ^ActionRec;
    PActionsRec  = ^ActionsRec;
    PATranslationData  = ^ATranslationData;
    PATranslations  = ^ATranslations;
    PCardinal  = ^Cardinal;
    PDisplay  = ^Display;
    PEvent  = ^Event;
    PEventPtr  = ^EventPtr;
    PEventRec  = ^EventRec;
    PEventSeqPtr  = ^EventSeqPtr;
    PEventSeqRec  = ^EventSeqRec;
    PKeyCacheRec  = ^KeyCacheRec;
    PLateBindings  = ^LateBindings;
    PLateBindingsPtr  = ^LateBindingsPtr;
    PModifierMask  = ^ModifierMask;
    PModifiers  = ^Modifiers;
    PModToKeysymTable  = ^ModToKeysymTable;
    PStatePtr  = ^StatePtr;
    PStateRec  = ^StateRec;
    PString  = ^String;
    PTMBindCacheRec  = ^TMBindCacheRec;
    PTMBindData  = ^TMBindData;
    PTMBindDataRec  = ^TMBindDataRec;
    PTMBranchHead  = ^TMBranchHead;
    PTMBranchHeadRec  = ^TMBranchHeadRec;
    PTMByteCard  = ^TMByteCard;
    PTMComplexBindData  = ^TMComplexBindData;
    PTMComplexBindDataRec  = ^TMComplexBindDataRec;
    PTMComplexBindProcs  = ^TMComplexBindProcs;
    PTMComplexBindProcsRec  = ^TMComplexBindProcsRec;
    PTMComplexStateTree  = ^TMComplexStateTree;
    PTMComplexStateTreeRec  = ^TMComplexStateTreeRec;
    PTMConvertRec  = ^TMConvertRec;
    PTMEventPtr  = ^TMEventPtr;
    PTMEventRec  = ^TMEventRec;
    PTMGlobalRec  = ^TMGlobalRec;
    PTMKeyCache  = ^TMKeyCache;
    PTMKeyContext  = ^TMKeyContext;
    PTMKeyContextRec  = ^TMKeyContextRec;
    PTMLongCard  = ^TMLongCard;
    PTMModifierMatch  = ^TMModifierMatch;
    PTMModifierMatchRec  = ^TMModifierMatchRec;
    PTMParseStateTree  = ^TMParseStateTree;
    PTMParseStateTreeRec  = ^TMParseStateTreeRec;
    PTMShortCard  = ^TMShortCard;
    PTMShortInt  = ^TMShortInt;
    PTMSimpleBindData  = ^TMSimpleBindData;
    PTMSimpleBindDataRec  = ^TMSimpleBindDataRec;
    PTMSimpleBindProcs  = ^TMSimpleBindProcs;
    PTMSimpleBindProcsRec  = ^TMSimpleBindProcsRec;
    PTMSimpleStateTree  = ^TMSimpleStateTree;
    PTMSimpleStateTreeRec  = ^TMSimpleStateTreeRec;
    PTMStateTree  = ^TMStateTree;
    PTMStateTreeList  = ^TMStateTreeList;
    PTMStateTreePtr  = ^TMStateTreePtr;
    PTMStateTreeRec  = ^TMStateTreeRec;
    PTMTypeMatch  = ^TMTypeMatch;
    PTMTypeMatchRec  = ^TMTypeMatchRec;
    PTranslationData  = ^TranslationData;
    PXEvent  = ^XEvent;
    PXrmQuark  = ^XrmQuark;
    PXtActionProc  = ^XtActionProc;
    PXtActionsRec  = ^XtActionsRec;
    PXtPointer  = ^XtPointer;
    PXtStateRec  = ^XtStateRec;
    PXtTranslateOp  = ^XtTranslateOp;
    PXtTranslations  = ^XtTranslations;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$define CACHE_TRANSLATIONS}

const
  TM_NO_MATCH = -(2);  
  _XtRStateTablePair = '_XtStateTablePair';  
type
  PTMByteCard = ^TTMByteCard;
  TTMByteCard = byte;

  PTMShortCard = ^TTMShortCard;
  TTMShortCard = word;

  PTMLongCard = ^TTMLongCard;
  TTMLongCard = dword;

  PTMShortInt = ^TTMShortInt;
  TTMShortInt = smallint;

  PTMTypeMatch = ^TTMTypeMatch;
  TTMTypeMatch = PTMTypeMatchRec;

  PTMModifierMatch = ^TTMModifierMatch;
  TTMModifierMatch = PTMModifierMatchRec;

  PTMEventPtr = ^TTMEventPtr;
  TTMEventPtr = PTMEventRec;

  TMatchProc = function (typeMatch:TTMTypeMatch; modMatch:TTMModifierMatch; eventSeq:TTMEventPtr):TBoolean;cdecl;

  PModToKeysymTable = ^TModToKeysymTable;
  TModToKeysymTable = record
      mask : TModifiers;
      count : longint;
      idx : longint;
    end;


  PLateBindings = ^TLateBindings;
  TLateBindings = record
      flag0 : word;
      ref_count : word;
      keysym : TKeySym;
    end;
  TLateBindingsPtr = PLateBindings;
  PLateBindingsPtr = ^TLateBindingsPtr;

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
  PModifierMask = ^TModifierMask;
  TModifierMask = smallint;

  PActionPtr = ^TActionPtr;
  TActionPtr = PActionsRec;





  PActionsRec = ^TActionsRec;
  TActionsRec = record
      idx : longint;
      params : PString;
      num_params : TCardinal;
      next : TActionPtr;
    end;
  TActionRec = TActionsRec;
  PActionRec = ^TActionRec;

  PStatePtr = ^TStatePtr;
  TStatePtr = PXtStateRec;


  PXtStateRec = ^TXtStateRec;
  TXtStateRec = record
      flag0 : word;
      typeIndex : TTMShortCard;
      modIndex : TTMShortCard;
      actions : TActionPtr;
      nextLevel : TStatePtr;
    end;
  TStateRec = TXtStateRec;
  PStateRec = ^TStateRec;

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
  PXtTranslateOp = ^TXtTranslateOp;
  TXtTranslateOp = dword;


  PTMModifierMatchRec = ^TTMModifierMatchRec;
  TTMModifierMatchRec = record
      modifiers : TTMLongCard;
      modifierMask : TTMLongCard;
      lateModifiers : TLateBindingsPtr;
      standard : TBoolean;
    end;

  PTMTypeMatchRec = ^TTMTypeMatchRec;
  TTMTypeMatchRec = record
      eventType : TTMLongCard;
      eventCode : TTMLongCard;
      eventCodeMask : TTMLongCard;
      matchEvent : TMatchProc;
    end;

  PTMBranchHeadRec = ^TTMBranchHeadRec;
  TTMBranchHeadRec = record
      flag0 : word;
      typeIndex : TTMShortCard;
      modIndex : TTMShortCard;
    end;
  TTMBranchHead = PTMBranchHeadRec;
  PTMBranchHead = ^TTMBranchHead;

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
  PTMSimpleStateTreeRec = ^TTMSimpleStateTreeRec;
  TTMSimpleStateTreeRec = record
      flag0 : word;
      numBranchHeads : TTMShortCard;
      numQuarks : TTMShortCard;
      unused : TTMShortCard;
      branchHeadTbl : PTMBranchHeadRec;
      quarkTbl : PXrmQuark;
    end;
  TTMSimpleStateTree = PTMSimpleStateTreeRec;
  PTMSimpleStateTree = ^TTMSimpleStateTree;

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
  PTMComplexStateTreeRec = ^TTMComplexStateTreeRec;
  TTMComplexStateTreeRec = record
      flag0 : word;
      numBranchHeads : TTMShortCard;
      numQuarks : TTMShortCard;
      numComplexBranchHeads : TTMShortCard;
      branchHeadTbl : PTMBranchHeadRec;
      quarkTbl : PXrmQuark;
      complexBranchHeadTbl : PStatePtr;
    end;
  TTMComplexStateTree = PTMComplexStateTreeRec;
  PTMComplexStateTree = ^TTMComplexStateTree;

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
  PTMParseStateTreeRec = ^TTMParseStateTreeRec;
  TTMParseStateTreeRec = record
      flag0 : word;
      numBranchHeads : TTMShortCard;
      numQuarks : TTMShortCard;
      numComplexBranchHeads : TTMShortCard;
      branchHeadTbl : PTMBranchHeadRec;
      quarkTbl : PXrmQuark;
      complexBranchHeadTbl : PStatePtr;
      branchHeadTblSize : TTMShortCard;
      quarkTblSize : TTMShortCard;
      complexBranchHeadTblSize : TTMShortCard;
      head : TStatePtr;
    end;
  TTMParseStateTree = PTMParseStateTreeRec;
  PTMParseStateTree = ^TTMParseStateTree;

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
  PTMStateTreeRec = ^TTMStateTreeRec;
  TTMStateTreeRec = ^record
      case longint of
        0 : ( simple : TTMSimpleStateTreeRec );
        1 : ( parse : TTMParseStateTreeRec );
        2 : ( complex : TTMComplexStateTreeRec );
      end;
  TTMStateTree = PTMStateTreeRec;
  PTMStateTree = ^TTMStateTree;
  TTMStateTreePtr = ^PTMStateTreeRec;
  PTMStateTreePtr = ^TTMStateTreePtr;
  TTMStateTreeList = ^PTMStateTreeRec;
  PTMStateTreeList = ^TTMStateTreeList;

  PTMSimpleBindProcsRec = ^TTMSimpleBindProcsRec;
  TTMSimpleBindProcsRec = record
      procs : PXtActionProc;
    end;
  TTMSimpleBindProcs = PTMSimpleBindProcsRec;
  PTMSimpleBindProcs = ^TTMSimpleBindProcs;


  PTMComplexBindProcsRec = ^TTMComplexBindProcsRec;
  TTMComplexBindProcsRec = record
      widget : TWidget;
      aXlations : TXtTranslations;
      procs : PXtActionProc;
    end;
  TTMComplexBindProcs = PTMComplexBindProcsRec;
  PTMComplexBindProcs = ^TTMComplexBindProcs;



  PTMSimpleBindDataRec = ^TTMSimpleBindDataRec;
  TTMSimpleBindDataRec = record
      flag0 : word;
      bindTbl : array[0..0] of TTMSimpleBindProcsRec;
    end;
  TTMSimpleBindData = PTMSimpleBindDataRec;
  PTMSimpleBindData = ^TTMSimpleBindData;

const
  bm__TMSimpleBindDataRec_isComplex = $1;
  bp__TMSimpleBindDataRec_isComplex = 0;

function isComplex(var a : _TMSimpleBindDataRec) : dword;
procedure set_isComplex(var a : _TMSimpleBindDataRec; __isComplex : dword);



type
  PTMComplexBindDataRec = ^TTMComplexBindDataRec;
  TTMComplexBindDataRec = record
      flag0 : word;
      accel_context : PATranslationData;
      bindTbl : array[0..0] of TTMComplexBindProcsRec;
    end;
  TTMComplexBindData = PTMComplexBindDataRec;
  PTMComplexBindData = ^TTMComplexBindData;

const
  bm__TMComplexBindDataRec_isComplex = $1;
  bp__TMComplexBindDataRec_isComplex = 0;

function isComplex(var a : _TMComplexBindDataRec) : dword;
procedure set_isComplex(var a : _TMComplexBindDataRec; __isComplex : dword);
type
  PTMBindDataRec = ^TTMBindDataRec;
  TTMBindDataRec = ^record
      case longint of
        0 : ( simple : TTMSimpleBindDataRec );
        1 : ( complex : TTMComplexBindDataRec );
      end;
  TTMBindData = PTMBindDataRec;
  PTMBindData = ^TTMBindData;




  PTranslationData = ^TTranslationData;
  TTranslationData = record
      hasBindings : byte;
      operation : byte;
      numStateTrees : TTMShortCard;
      composers : array[0..1] of PTranslationData;
      eventMask : TEventMask;
      stateTreeTbl : array[0..0] of TTMStateTree;
    end;






  PATranslationData = ^TATranslationData;
  TATranslationData = record
      hasBindings : byte;
      operation : byte;
      xlations : PTranslationData;
      next : PATranslationData;
      bindTbl : array[0..0] of TTMComplexBindProcsRec;
    end;
  TATranslations = PATranslationData;
  PATranslations = ^TATranslations;



  PTMConvertRec = ^TTMConvertRec;
  TTMConvertRec = record
      old : TXtTranslations;
      _new : TXtTranslations;
    end;

function _XtEventTimerEventType : TTMLongCard;  


const
  KeysymModMask = 1 shl 27;  

  AnyButtonMask = 1 shl 28;  
type
  PEventRec = ^TEventRec;
  TEventRec = record
      modifiers : TTMLongCard;
      modifierMask : TTMLongCard;
      lateModifiers : TLateBindingsPtr;
      eventType : TTMLongCard;
      eventCode : TTMLongCard;
      eventCodeMask : TTMLongCard;
      matchEvent : TMatchProc;
      standard : TBoolean;
    end;
  TEvent = TEventRec;
  PEvent = ^TEvent;

  PEventSeqPtr = ^TEventSeqPtr;
  TEventSeqPtr = PEventSeqRec;





  PEventSeqRec = ^TEventSeqRec;
  TEventSeqRec = record
      event : TEvent;
      state : TStatePtr;
      next : TEventSeqPtr;
      actions : TActionPtr;
    end;

  PEventRec = ^TEventRec;
  TEventRec = TEventSeqRec;

  PEventPtr = ^TEventPtr;
  TEventPtr = TEventSeqPtr;

  PTMEventRec = ^TTMEventRec;
  TTMEventRec = record
      xev : PXEvent;
      event : TEvent;
    end;


  PActionHookRec = ^TActionHookRec;
  TActionHookRec = record
      next : PActionHookRec;
      app : TXtAppContext;
      proc : TXtActionHookProc;
      closure : TXtPointer;
    end;
  TActionHook = PActionHookRec;
  PActionHook = ^TActionHook;


const
  TMKEYCACHELOG2 = 6;  
  TMKEYCACHESIZE = 1 shl TMKEYCACHELOG2;  

type
  PKeyCacheRec = ^TKeyCacheRec;
  TKeyCacheRec = record
      modifiers_return : array[0..255] of byte;
      keycode : array[0..(TMKEYCACHESIZE)-1] of TKeyCode;
      modifiers : array[0..(TMKEYCACHESIZE)-1] of byte;
      keysym : array[0..(TMKEYCACHESIZE)-1] of TKeySym;
    end;
  TTMKeyCache = TKeyCacheRec;
  PTMKeyCache = ^TTMKeyCache;


  PTMKeyContextRec = ^TTMKeyContextRec;
  TTMKeyContextRec = record
      event : PXEvent;
      serial : dword;
      keysym : TKeySym;
      modifiers : TModifiers;
      keycache : TTMKeyCache;
    end;
  TTMKeyContext = PTMKeyContextRec;
  PTMKeyContext = ^TTMKeyContext;
{$ifdef TRACE_TM}
{$endif}

type
  PTMGlobalRec = ^TTMGlobalRec;
  TTMGlobalRec = record
      typeMatchSegmentTbl : ^PTMTypeMatchRec;
      numTypeMatches : TTMShortCard;
      numTypeMatchSegments : TTMShortCard;
      typeMatchSegmentTblSize : TTMShortCard;
      modMatchSegmentTbl : ^PTMModifierMatchRec;
      numModMatches : TTMShortCard;
      numModMatchSegments : TTMShortCard;
      modMatchSegmentTblSize : TTMShortCard;
      newMatchSemantics : TBoolean;
      tmTbl : PXtTranslations;
      numTms : TTMShortCard;
      tmTblSize : TTMShortCard;
      bindCacheTbl : ^PTMBindCacheRec;
      numBindCache : TTMShortCard;
      bindCacheTblSize : TTMShortCard;
      numLateBindings : TTMShortCard;
      numBranchHeads : TTMShortCard;
      numComplexStates : TTMShortCard;
      numComplexActions : TTMShortCard;
    end;
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

    function TMGetComplexBindEntry(bindData,idx : longint) : TTMComplexBindProcs;    

    function TMGetSimpleBindEntry(bindData,idx : longint) : TTMSimpleBindProcs;    

(* error 
        _XtBuildKeysymTables(dpy, pd)
in define line 371 *)


procedure _XtPopup(para1:TWidget; para2:TXtGrabKind; para3:TXtBoolean);cdecl;external;

function _XtPrintXlations(para1:TWidget; para2:TXtTranslations; para3:TWidget; para4:TXtBoolean):TXtString;cdecl;external;

procedure _XtRegisterGrabs(para1:TWidget);cdecl;external;

function _XtInitializeActionData(para1:PXtActionsRec; para2:TCardinal; para3:TXtBoolean):TXtPointer;cdecl;external;

procedure _XtAddEventSeqToStateTree(para1:TEventSeqPtr; para2:TTMParseStateTree);cdecl;external;

function _XtMatchUsingStandardMods(para1:TTMTypeMatch; para2:TTMModifierMatch; para3:TTMEventPtr):TBoolean;cdecl;external;

function _XtMatchUsingDontCareMods(para1:TTMTypeMatch; para2:TTMModifierMatch; para3:TTMEventPtr):TBoolean;cdecl;external;

function _XtRegularMatch(para1:TTMTypeMatch; para2:TTMModifierMatch; para3:TTMEventPtr):TBoolean;cdecl;external;

function _XtMatchAtom(para1:TTMTypeMatch; para2:TTMModifierMatch; para3:TTMEventPtr):TBoolean;cdecl;external;

procedure _XtTranslateEvent(para1:TWidget; para2:PXEvent);cdecl;external;
{$include "CallbackI.h"}
{$include "EventI.h"}
{$include "HookObjI.h"}
{$include "PassivGraI.h"}
{$include "ThreadsI.h"}
{$include "InitialI.h"}
{$include "ResourceI.h"}
{$include "StringDefs.h"}

procedure _XtBuildKeysymTables(dpy:PDisplay; pd:TXtPerDisplay);cdecl;external;
{$ifndef NO_MIT_HACKS}


procedure _XtDisplayTranslations(para1:TWidget; para2:PXEvent; para3:PString; para4:PCardinal);cdecl;external;

procedure _XtDisplayAccelerators(para1:TWidget; para2:PXEvent; para3:PString; para4:PCardinal);cdecl;external;

procedure _XtDisplayInstalledAccelerators(para1:TWidget; para2:PXEvent; para3:PString; para4:PCardinal);cdecl;external;
{$endif}



procedure _XtPopupInitialize(para1:TXtAppContext);cdecl;external;

procedure _XtBindActions(para1:TWidget; para2:TXtTM);cdecl;external;

function _XtComputeLateBindings(para1:PDisplay; para2:TLateBindingsPtr; para3:PModifiers; para4:PModifiers):TBoolean;cdecl;external;

function _XtCreateXlations(para1:PTMStateTree; para2:TTMShortCard; para3:TXtTranslations; para4:TXtTranslations):TXtTranslations;cdecl;external;

function _XtCvtMergeTranslations(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
procedure _XtRemoveStateTreeByIndex(para1:TXtTranslations; para2:TTMShortCard);cdecl;external;

procedure _XtFreeTranslations(para1:TXtAppContext; para2:TXrmValuePtr; para3:TXtPointer; para4:TXrmValuePtr; para5:PCardinal);cdecl;external;

function _XtGetModifierIndex(para1:PEvent):TTMShortCard;cdecl;external;

function _XtGetQuarkIndex(para1:TTMParseStateTree; para2:TXrmQuark):TTMShortCard;cdecl;external;

function _XtGetTranslationValue(para1:TWidget):TXtTranslations;cdecl;external;

function _XtGetTypeIndex(para1:PEvent):TTMShortCard;cdecl;external;

procedure _XtGrabInitialize(para1:TXtAppContext);cdecl;external;

procedure _XtInstallTranslations(para1:TWidget);cdecl;external;

procedure _XtRemoveTranslations(para1:TWidget);cdecl;external;

procedure _XtDestroyTMData(para1:TWidget);cdecl;external;

procedure _XtMergeTranslations(para1:TWidget; para2:TXtTranslations; para3:TXtTranslateOp);cdecl;external;

procedure _XtActionInitialize(para1:TXtAppContext);cdecl;external;

function _XtParseTreeToStateTree(para1:TTMParseStateTree):TTMStateTree;cdecl;external;

function _XtPrintActions(para1:PActionRec; para2:PXrmQuark):TString;cdecl;external;
function _XtPrintState(para1:TTMStateTree; para2:TTMBranchHead):TString;cdecl;external;

function _XtPrintEventSeq(para1:TEventSeqPtr; para2:PDisplay):TString;cdecl;external;

    type

      TXtTraversalProc = function (para1:TStatePtr; para2:TXtPointer):TBoolean;cdecl;


procedure _XtTraverseStateTree(para1:TTMStateTree; para2:TXtTraversalProc; para3:TXtPointer);cdecl;external;
procedure _XtTranslateInitialize;cdecl;external;

procedure _XtAddTMConverters(para1:TConverterTable);cdecl;external;

procedure _XtUnbindActions(para1:TWidget; para2:TXtTranslations; para3:TTMBindData);cdecl;external;

procedure _XtUnmergeTranslations(para1:TWidget; para2:TXtTranslations);cdecl;external;

procedure _XtAllocTMContext(pd:TXtPerDisplay);cdecl;external;
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

function _XtEventTimerEventType : TTMLongCard;
  begin
    _XtEventTimerEventType:=TTMLongCard( not (0));
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
      TMComplexBranchHead:=(TTMComplexStateTree(tree))^.(complexBranchHeadTbl[TMBranchMore(br)]);
    end;

    function TMGetComplexBindEntry(bindData,idx : longint) : TTMComplexBindProcs;
    begin
      TMGetComplexBindEntry:=TTMComplexBindProcs(@((TTMComplexBindData(bindData))^.(bindTbl[idx])));
    end;

    function TMGetSimpleBindEntry(bindData,idx : longint) : TTMSimpleBindProcs;
    begin
      TMGetSimpleBindEntry:=TTMSimpleBindProcs(@((TTMSimpleBindData(bindData))^.(bindTbl[idx])));
    end;


end.
