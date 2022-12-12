
unit CallbackI;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/CallbackI.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/CallbackI.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/CallbackI.pp
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
    PCallbackTable  = ^CallbackTable;
    PInternalCallbackList  = ^InternalCallbackList;
    PXrmResource  = ^XrmResource;
    PXtCallbackProc  = ^XtCallbackProc;
    PXtPointer  = ^XtPointer;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




type
  PCallbackTable = ^TCallbackTable;
  TCallbackTable = ^PXrmResource;

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

      TXtConditionProc = function (para1:TXtPointer):TBoolean;cdecl;


procedure _XtAddCallback(para1:PInternalCallbackList; para2:TXtCallbackProc; para3:TXtPointer);cdecl;external;

procedure _XtAddCallbackOnce(para1:PInternalCallbackList; para2:TXtCallbackProc; para3:TXtPointer);cdecl;external;

function _XtCompileCallbackList(para1:TXtCallbackList):TInternalCallbackList;cdecl;external;

function _XtGetCallbackList(para1:PInternalCallbackList):TXtCallbackList;cdecl;external;

procedure _XtRemoveAllCallbacks(para1:PInternalCallbackList);cdecl;external;

procedure _XtRemoveCallback(para1:PInternalCallbackList; para2:TXtCallbackProc; para3:TXtPointer);cdecl;external;

procedure _XtPeekCallback(para1:TWidget; para2:TXtCallbackList; para3:PXtCallbackProc; para4:PXtPointer);cdecl;external;

procedure _XtCallConditionalCallbackList(para1:TWidget; para2:TXtCallbackList; para3:TXtPointer; para4:TXtConditionProc);cdecl;external;
(* error 
_XFUNCPROTOEND

implementation


end.
