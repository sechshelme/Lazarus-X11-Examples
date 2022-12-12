
unit CallbackI;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/CallbackI.h
  The following command line parameters were used:
    /usr/include/X11/CallbackI.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/CallbackI.pp
}

    Type
    PInternalCallbackList  = ^InternalCallbackList;
    PXtCallbackProc  = ^XtCallbackProc;
    PXtPointer  = ^XtPointer;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





  type
    CallbackTable = ^^XrmResource;

  const
    _XtCBCalling = 1;    
    _XtCBFreeAfterCalling = 2;    
(* error 
typedef struct internalCallbackRec {
in declaration at line 62 *)

      var
        is_padded : char;cvar;public;

        call_state : char;cvar;public;

{$ifdef LONG64}
        align_pad : dword;cvar;public;

{$endif}

(* error 
} InternalCallbackRec, *InternalCallbackList;
in declaration at line 69 *)


    type

      _XtConditionProc = function (_para1:XtPointer):Boolean;cdecl;


    procedure _XtAddCallback(_para1:PInternalCallbackList; _para2:XtCallbackProc; _para3:XtPointer);cdecl;


    procedure _XtAddCallbackOnce(_para1:PInternalCallbackList; _para2:XtCallbackProc; _para3:XtPointer);cdecl;


    function _XtCompileCallbackList(_para1:XtCallbackList):InternalCallbackList;cdecl;


    function _XtGetCallbackList(_para1:PInternalCallbackList):XtCallbackList;cdecl;


    procedure _XtRemoveAllCallbacks(_para1:PInternalCallbackList);cdecl;


    procedure _XtRemoveCallback(_para1:PInternalCallbackList; _para2:XtCallbackProc; _para3:XtPointer);cdecl;


    procedure _XtPeekCallback(_para1:Widget; _para2:XtCallbackList; _para3:PXtCallbackProc; _para4:PXtPointer);cdecl;


    procedure _XtCallConditionalCallbackList(_para1:Widget; _para2:XtCallbackList; _para3:XtPointer; _para4:_XtConditionProc);cdecl;

(* error 
_XFUNCPROTOEND

implementation


end.
