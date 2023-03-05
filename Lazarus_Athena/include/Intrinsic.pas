
unit Intrinsic;
interface

{
  Automatically converted by H2Pas 1.0.0 from Intrinsic.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    Intrinsic.h
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


{**********************************************************
Copyright 1987, 1988 by Digital Equipment Corporation, Maynard, Massachusetts,

			All Rights Reserved

Permission to use, copy, modify, and distribute this software and its
documentation for any purpose and without fee is hereby granted,
provided that the above copyright notice appear in all copies and that
both that copyright notice and this permission notice appear in
supporting documentation, and that the name Digital not be
used in advertising or publicity pertaining to distribution of the
software without specific, written prior permission.

DIGITAL DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING
ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT SHALL
DIGITAL BE LIABLE FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR
ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS,
WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,
ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS
SOFTWARE.

***************************************************************** }
{

Copyright 1987, 1988, 1994, 1998  The Open Group

Permission to use, copy, modify, distribute, and sell this software and its
documentation for any purpose is hereby granted without fee, provided that
the above copyright notice appear in all copies and that both that
copyright notice and this permission notice appear in supporting
documentation.

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
OPEN GROUP BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN
AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Except as contained in this notice, the name of The Open Group shall not be
used in advertising or otherwise to promote the sale, use or other dealings
in this Software without prior written authorization from The Open Group.

 }
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
{ XT_BC else  }

const
  XtSpecificationRelease = 7;  
{
 * As used in its function interface, the String type of libXt can be readonly.
 * But compiling libXt with this feature may require some internal changes,
 * e.g., casts and occasionally using a plain "char*".
  }
{$ifdef _CONST_X_STRING}
(* Const before type ignored *)
type
  PString = ^TString;
  TString = Pchar;
{$else}
type
  PString = ^TString;
  TString = Pchar;
{$endif}
{ We do this in order to get "const" declarations to work right.  We
 * use _XtString instead of String so that C++ applications can
 * #define String to something else if they choose, to avoid conflicts
 * with other C++ libraries.
  }
(* error 
#define _XtString char*
in define line 82 *)
    { _Xt names are private to Xt implementation, do not use in client code  }
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
    { NeedWidePrototypes  }
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
    { VMS  }
{$ifndef FALSE}

    const
      FALSE = 0;      
      TRUE = 1;      
{$endif}
    { was #define dname(params) para_def_expr }
    { argument types are unknown }

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
    { Mask of values that are used by widget }

      PPixel = ^TPixel;
      TPixel = dword;
    { Index into colormap		 }

      PXtCacheType = ^TXtCacheType;
      TXtCacheType = longint;

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
      TBoolean = char;

      PXtArgVal = ^TXtArgVal;
      TXtArgVal = longint;

      PXtEnum = ^TXtEnum;
      TXtEnum = byte;

      PCardinal = ^TCardinal;
      TCardinal = dword;

      PDimension = ^TDimension;
      TDimension = word;
    { Size in pixels			 }

      PPosition = ^TPosition;
      TPosition = smallint;
    { Offset from 0 coordinate		 }

      PXtPointer = ^TXtPointer;
      TXtPointer = pointer;
    { The type Opaque is NOT part of the Xt standard, do NOT use it.  }
    { (It remains here only for backward compatibility.)  }

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
    { widget  }    { event  }    { params  }    { num_params  }

      TXtActionProc = procedure (para1:TWidget; para2:PXEvent; para3:PString; para4:PCardinal);cdecl;

      PXtBoundActions = ^TXtBoundActions;
      TXtBoundActions = PXtActionProc;

      PXtActionsRec = ^TXtActionsRec;
      TXtActionsRec = record
          _string : TString;
          proc : TXtActionProc;
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
    { widget  }    { size  }    { value  }

      TXtConvertArgProc = procedure (para1:TWidget; para2:PCardinal; para3:PXrmValue);cdecl;
    { Above, Below, TopIf, BottomIf, Opposite, DontChange  }

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
    { Additions to Xlib geometry requests: ask what would happen, don't do it  }

    const
      XtCWQueryOnly = 1 shl 7;      
    { Additions to Xlib stack modes: don't change stack order  }
      XtSMDontChange = 5;      
    { obsolete  }
    { args  }    { num_args  }    { from  }    { to  }
    type

      TXtConverter = procedure (para1:PXrmValue; para2:PCardinal; para3:PXrmValue; para4:PXrmValue);cdecl;
    { dpy  }    { args  }    { num_args  }    { from  }    { to  }    { converter_data  }

      TXtTypeConverter = function (para1:PDisplay; para2:PXrmValue; para3:PCardinal; para4:PXrmValue; para5:PXrmValue; 
                   para6:PXtPointer):TBoolean;cdecl;
    { app  }    { to  }    { converter_data  }    { args  }    { num_args  }

      TXtDestructor = procedure (para1:TXtAppContext; para2:PXrmValue; para3:TXtPointer; para4:PXrmValue; para5:PCardinal);cdecl;

      PXtCacheRef = ^TXtCacheRef;
      TXtCacheRef = TOpaque;

      PXtActionHookId = ^TXtActionHookId;
      TXtActionHookId = TOpaque;
    { w  }    { client_data  }    { action_name  }    { event  }    { params  }    { num_params  }

      TXtActionHookProc = procedure (para1:TWidget; para2:TXtPointer; para3:TString; para4:PXEvent; para5:PString; 
                    para6:PCardinal);cdecl;

      PXtBlockHookId = ^TXtBlockHookId;
      TXtBlockHookId = dword;
    { client_data  }

      TXtBlockHookProc = procedure (para1:TXtPointer);cdecl;
    { dpy  }    { keycode  }    { modifiers  }    { modifiers_return  }    { keysym_return  }

      TXtKeyProc = procedure (para1:PDisplay; para2:TXtKeyCode; para3:TModifiers; para4:PModifiers; para5:PKeySym);cdecl;
    { display  }    { keysym  }    { lower_return  }    { upper_return  }

      TXtCaseProc = procedure (para1:PDisplay; para2:TKeySym; para3:PKeySym; para4:PKeySym);cdecl;
    { widget  }    { closure  }    { event  }    { continue_to_dispatch  }

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
    { closure  }    { id  }
    type

      TXtTimerCallbackProc = procedure (para1:TXtPointer; para2:PXtIntervalId);cdecl;
    { closure  }    { source  }    { id  }

      TXtInputCallbackProc = procedure (para1:TXtPointer; para2:Plongint; para3:PXtInputId);cdecl;
    { closure  }    { id  }

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
    { widget  }    { closure  }    { data the application registered  }
    { call_data  }    { callback specific data  }

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
    { Request accepted.  }
    { Request denied.  }
    { Request denied, but willing to take replyBox.  }
    { Request accepted and done.  }

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
    { Resource name			     }
    { Resource class			     }
    { Representation type desired		     }
    { Size in bytes of representation	     }
    { Offset from base to put resource value    }
    { representation type of specified default  }
    { Address of default resource		     }

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
    { widget  }    { offset  }    { value  }

      TXtResourceDefaultProc = procedure (para1:TWidget; para2:longint; para3:PXrmValue);cdecl;
    { dpy  }    { xnl  }    { client_data  }

      TXtLanguageProc = function (para1:PDisplay; para2:TString; para3:TXtPointer):TString;cdecl;
    { name  }    { type  }    { class  }    { default  }    { params  }    { num_params  }

      TXtErrorMsgHandler = procedure (para1:TString; para2:TString; para3:TString; para4:TString; para5:PString; 
                    para6:PCardinal);cdecl;
    { msg  }

      TXtErrorHandler = procedure (para1:TString);cdecl;
    { shell  }

      TXtCreatePopupChildProc = procedure (para1:TWidget);cdecl;
    { closure  }    { data the application registered  }

      TXtWorkProc = function (para1:TXtPointer):TBoolean;cdecl;

      PSubstitutionRec = ^TSubstitutionRec;
      TSubstitutionRec = record
          match : char;
          substitution : TXtString;
        end;
      TSubstitution = PSubstitutionRec;
      PSubstitution = ^TSubstitution;
    { filename  }

      TXtFilePredicate = function (para1:TString):TBoolean;cdecl;

      PXtRequestId = ^TXtRequestId;
      TXtRequestId = TXtPointer;
    { widget  }    { selection  }    { target  }    { type_return  }    { value_return  }    { length_return  }    { format_return  }

      TXtConvertSelectionProc = function (para1:TWidget; para2:PAtom; para3:PAtom; para4:PAtom; para5:PXtPointer; 
                   para6:Pdword; para7:Plongint):TBoolean;cdecl;
    { widget  }    { selection  }

      TXtLoseSelectionProc = procedure (para1:TWidget; para2:PAtom);cdecl;
    { widget  }    { selection  }    { target  }

      TXtSelectionDoneProc = procedure (para1:TWidget; para2:PAtom; para3:PAtom);cdecl;
    { widget  }    { closure  }    { selection  }    { type  }    { value  }    { length  }    { format  }

      TXtSelectionCallbackProc = procedure (para1:TWidget; para2:TXtPointer; para3:PAtom; para4:PAtom; para5:TXtPointer; 
                    para6:Pdword; para7:Plongint);cdecl;
    { widget  }    { selection  }    { client_data  }

      TXtLoseSelectionIncrProc = procedure (para1:TWidget; para2:PAtom; para3:TXtPointer);cdecl;
    { widget  }    { selection  }    { target  }    { receiver_id  }    { client_data  }

      TXtSelectionDoneIncrProc = procedure (para1:TWidget; para2:PAtom; para3:PAtom; para4:PXtRequestId; para5:TXtPointer);cdecl;
    { widget  }    { selection  }    { target  }    { type  }    { value  }    { length  }    { format  }    { max_length  }    { client_data  }    { receiver_id  }

      TXtConvertSelectionIncrProc = function (para1:TWidget; para2:PAtom; para3:PAtom; para4:PAtom; para5:PXtPointer; 
                   para6:Pdword; para7:Plongint; para8:Pdword; para9:TXtPointer; para10:PXtRequestId):TBoolean;cdecl;
    { widget  }    { selection  }    { target  }    { receiver_id  }    { client_data  }

      TXtCancelConvertSelectionProc = procedure (para1:TWidget; para2:PAtom; para3:PAtom; para4:PXtRequestId; para5:TXtPointer);cdecl;
    { event  }

      TXtEventDispatchProc = function (para1:PXEvent):TBoolean;cdecl;
    { widget  }    { event_types  }    { select_data  }    { count  }    { client_data  }

      TXtExtensionSelectProc = procedure (para1:TWidget; para2:Plongint; para3:PXtPointer; para4:longint; para5:TXtPointer);cdecl;
    {**************************************************************
     *
     * Exported Interfaces
     *
     *************************************************************** }
(* error 
extern Boolean XtConvertAndStore(
    { widget  }    { from_type  }    { from  }    { to_type  }    { to_in_out  }
in declaration at line 509 *)
    { dpy  }    { converter  }    { args  }    { num_args  }    { from  }    { to_in_out  }    { cache_ref_return  }

function XtCallConverter(para1:PDisplay; para2:TXtTypeConverter; para3:TXrmValuePtr; para4:TCardinal; para5:TXrmValuePtr; 
               para6:PXrmValue; para7:PXtCacheRef):TBoolean;cdecl;external;
    { event  }
function XtDispatchEvent(para1:PXEvent):TBoolean;cdecl;external;
    { widget  }    { time  }
function XtCallAcceptFocus(para1:TWidget; para2:PTime):TBoolean;cdecl;external;
    { obsolete  }
    { event_return  }
function XtPeekEvent(para1:PXEvent):TBoolean;cdecl;external;
    { app_context  }    { event_return  }
function XtAppPeekEvent(para1:TXtAppContext; para2:PXEvent):TBoolean;cdecl;external;
    { widget  }    { widgetClass  }
function XtIsSubclass(para1:TWidget; para2:TWidgetClass):TBoolean;cdecl;external;
    { object  }
function XtIsObject(para1:TWidget):TBoolean;cdecl;external;
    { implementation-private  }
    { object  }    { type_flag  }
function _XtCheckSubclassFlag(para1:TWidget; para2:TXtXtEnum):TBoolean;cdecl;external;
    { implementation-private  }
    { object  }    { widget_class  }    { flag_class  }    { type_flag  }
function _XtIsSubclassOf(para1:TWidget; para2:TWidgetClass; para3:TWidgetClass; para4:TXtXtEnum):TBoolean;cdecl;external;
    { rectobj  }
function XtIsManaged(para1:TWidget):TBoolean;cdecl;external;
    { widget  }
function XtIsRealized(para1:TWidget):TBoolean;cdecl;external;
    { widget  }
function XtIsSensitive(para1:TWidget):TBoolean;cdecl;external;
    { widget  }    { selection  }    { time  }    { convert  }    { lose  }    { done  }
function XtOwnSelection(para1:TWidget; para2:TAtom; para3:TTime; para4:TXtConvertSelectionProc; para5:TXtLoseSelectionProc; 
               para6:TXtSelectionDoneProc):TBoolean;cdecl;external;
    { widget  }    { selection  }    { time  }    { convert_callback  }    { lose_callback  }    { done_callback  }    { cancel_callback  }    { client_data  }
function XtOwnSelectionIncremental(para1:TWidget; para2:TAtom; para3:TTime; para4:TXtConvertSelectionIncrProc; para5:TXtLoseSelectionIncrProc; 
               para6:TXtSelectionDoneIncrProc; para7:TXtCancelConvertSelectionProc; para8:TXtPointer):TBoolean;cdecl;external;
    { widget  }    { width  }    { height  }    { width_return  }    { height_return  }
function XtMakeResizeRequest(para1:TWidget; para2:TXtDimension; para3:TXtDimension; para4:PDimension; para5:PDimension):TXtGeometryResult;cdecl;external;
    { widget  }    { x  }    { y  }    { rootx_return  }    { rooty_return  }
procedure XtTranslateCoords(para1:TWidget; para2:TXtPosition; para3:TXtPosition; para4:PPosition; para5:PPosition);cdecl;external;
    { dpy  }    { min_keycode_return  }    { keysyms_per_keycode_return  }
function XtGetKeysymTable(para1:PDisplay; para2:PKeyCode; para3:Plongint):PKeySym;cdecl;external;
    { dpy  }    { keysym  }    { keycodes_return  }    { keycount_return  }
procedure XtKeysymToKeycodeList(para1:PDisplay; para2:TKeySym; para3:PPKeyCode; para4:PCardinal);cdecl;external;
    { obsolete  }
    { from_value  }    { to_type  }
procedure XtStringConversionWarning(_XtString:TXconst; _XtString:TXconst);cdecl;external;
    { dpy  }    { from_value  }    { to_type  }
procedure XtDisplayStringConversionWarning(para1:PDisplay; _XtString:TXconst; _XtString:TXconst);cdecl;external;
(* error 
externalref XtConvertArgRec const colorConvertArgs[];
 in declarator_list *)
(* error 
externalref XtConvertArgRec const screenConvertArg[];
 in declarator_list *)
    { obsolete  }
    { app_context  }    { from_type  }    { to_type  }    { converter  }    { convert_args  }    { num_args  }
procedure XtAppAddConverter(para1:TXtAppContext; _XtString:TXconst; _XtString:TXconst; para4:TXtConverter; para5:TXtConvertArgList; 
                para6:TCardinal);cdecl;external;
    { obsolete  }
    { from_type  }    { to_type  }    { converter  }    { convert_args  }    { num_args  }
procedure XtAddConverter(_XtString:TXconst; _XtString:TXconst; para3:TXtConverter; para4:TXtConvertArgList; para5:TCardinal);cdecl;external;
    { from_type  }    { to_type  }    { converter  }    { convert_args  }    { num_args  }    { cache_type  }    { destructor  }
procedure XtSetTypeConverter(_XtString:TXconst; _XtString:TXconst; para3:TXtTypeConverter; para4:TXtConvertArgList; para5:TCardinal; 
                para6:TXtCacheType; para7:TXtDestructor);cdecl;external;
    { app_context  }    { from_type  }    { to_type  }    { converter  }    { convert_args  }    { num_args  }    { cache_type  }    { destructor  }
procedure XtAppSetTypeConverter(para1:TXtAppContext; _XtString:TXconst; _XtString:TXconst; para4:TXtTypeConverter; para5:TXtConvertArgList; 
                para6:TCardinal; para7:TXtCacheType; para8:TXtDestructor);cdecl;external;
    { obsolete  }
    { widget  }    { from_type  }    { from  }    { to_type  }    { to_return  }
procedure XtConvert(para1:TWidget; _XtString:TXconst; para3:PXrmValue; _XtString:TXconst; para5:PXrmValue);cdecl;external;
    { obsolete  }
    { converter  }    { args  }    { num_args  }    { from  }    { to_return  }
procedure XtDirectConvert(para1:TXtConverter; para2:TXrmValuePtr; para3:TCardinal; para4:TXrmValuePtr; para5:PXrmValue);cdecl;external;
    {***************************************************************
     *
     * Translation Management
     *
     *************************************************************** }
    { table  }
function XtParseTranslationTable(_XtString:TXconst):TXtTranslations;cdecl;external;
    { source  }
function XtParseAcceleratorTable(_XtString:TXconst):TXtAccelerators;cdecl;external;
    { widget  }    { translations  }
procedure XtOverrideTranslations(para1:TWidget; para2:TXtTranslations);cdecl;external;
    { widget  }    { translations  }
procedure XtAugmentTranslations(para1:TWidget; para2:TXtTranslations);cdecl;external;
    { destination  }    { source  }
procedure XtInstallAccelerators(para1:TWidget; para2:TWidget);cdecl;external;
    { destination  }    { source  }
procedure XtInstallAllAccelerators(para1:TWidget; para2:TWidget);cdecl;external;
    { widget  }
procedure XtUninstallTranslations(para1:TWidget);cdecl;external;
    { app_context  }    { actions  }    { num_actions  }
procedure XtAppAddActions(para1:TXtAppContext; para2:TXtActionList; para3:TCardinal);cdecl;external;
    { obsolete  }
    { actions  }    { num_actions  }
procedure XtAddActions(para1:TXtActionList; para2:TCardinal);cdecl;external;
    { app_context  }    { proc  }    { client_data  }
function XtAppAddActionHook(para1:TXtAppContext; para2:TXtActionHookProc; para3:TXtPointer):TXtActionHookId;cdecl;external;
    { id  }
procedure XtRemoveActionHook(para1:TXtActionHookId);cdecl;external;
    { widget_class  }    { actions_return  }    { num_actions_return  }
procedure XtGetActionList(para1:TWidgetClass; para2:PXtActionList; para3:PCardinal);cdecl;external;
    { widget  }    { action  }    { event  }    { params  }    { num_params  }
procedure XtCallActionProc(para1:TWidget; _XtString:TXconst; para3:PXEvent; para4:PString; para5:TCardinal);cdecl;external;
    { action_proc  }    { owner_events  }    { event_mask  }    { pointer_mode  }    { keyboard_mode  }
procedure XtRegisterGrabAction(para1:TXtActionProc; para2:TXtBoolean; para3:dword; para4:longint; para5:longint);cdecl;external;
    { dpy  }    { milliseconds  }
procedure XtSetMultiClickTime(para1:PDisplay; para2:longint);cdecl;external;
    { dpy  }
function XtGetMultiClickTime(para1:PDisplay):longint;cdecl;external;
    { event  }    { modifiers_return  }
function XtGetActionKeysym(para1:PXEvent; para2:PModifiers):TKeySym;cdecl;external;
    {**************************************************************
     *
     * Keycode and Keysym procedures for translation management
     *
     *************************************************************** }
    { dpy  }    { keycode  }    { modifiers  }    { modifiers_return  }    { keysym_return  }
procedure XtTranslateKeycode(para1:PDisplay; para2:TXtKeyCode; para3:TModifiers; para4:PModifiers; para5:PKeySym);cdecl;external;
    { dpy  }    { keycode  }    { modifiers  }    { modifiers_return  }    { keysym_return  }
procedure XtTranslateKey(para1:PDisplay; para2:TXtKeyCode; para3:TModifiers; para4:PModifiers; para5:PKeySym);cdecl;external;
    { dpy  }    { proc  }
procedure XtSetKeyTranslator(para1:PDisplay; para2:TXtKeyProc);cdecl;external;
    { dpy  }    { proc  }    { start  }    { stop  }
procedure XtRegisterCaseConverter(para1:PDisplay; para2:TXtCaseProc; para3:TKeySym; para4:TKeySym);cdecl;external;
    { dpy  }    { keysym  }    { lower_return  }    { upper_return  }
procedure XtConvertCase(para1:PDisplay; para2:TKeySym; para3:PKeySym; para4:PKeySym);cdecl;external;
    {***************************************************************
     *
     * Event Management
     *
     *************************************************************** }
    { XtAllEvents is valid only for XtRemoveEventHandler and
     * XtRemoveRawEventHandler; don't use it to select events!
      }
    { was #define dname def_expr }
    function XtAllEvents : TEventMask;      

    { widget  }    { event_mask  }    { nonmaskable  }    { proc  }    { closure  }
procedure XtAddEventHandler(para1:TWidget; para2:TEventMask; para3:TXtBoolean; para4:TXtEventHandler; para5:TXtPointer);cdecl;external;
    { widget  }    { event_mask  }    { nonmaskable  }    { proc  }    { closure  }
procedure XtRemoveEventHandler(para1:TWidget; para2:TEventMask; para3:TXtBoolean; para4:TXtEventHandler; para5:TXtPointer);cdecl;external;
    { widget  }    { event_mask  }    { nonmaskable  }    { proc  }    { closure  }
procedure XtAddRawEventHandler(para1:TWidget; para2:TEventMask; para3:TXtBoolean; para4:TXtEventHandler; para5:TXtPointer);cdecl;external;
    { widget  }    { event_mask  }    { nonmaskable  }    { proc  }    { closure  }
procedure XtRemoveRawEventHandler(para1:TWidget; para2:TEventMask; para3:TXtBoolean; para4:TXtEventHandler; para5:TXtPointer);cdecl;external;
    { widget  }    { event_mask  }    { nonmaskable  }    { proc  }    { closure  }    { position  }
procedure XtInsertEventHandler(para1:TWidget; para2:TEventMask; para3:TXtBoolean; para4:TXtEventHandler; para5:TXtPointer; 
                para6:TXtListPosition);cdecl;external;
    { widget  }    { event_mask  }    { nonmaskable  }    { proc  }    { closure  }    { position  }
procedure XtInsertRawEventHandler(para1:TWidget; para2:TEventMask; para3:TXtBoolean; para4:TXtEventHandler; para5:TXtPointer; 
                para6:TXtListPosition);cdecl;external;
    { dpy  }    { event_type  }    { proc  }
function XtSetEventDispatcher(para1:PDisplay; para2:longint; para3:TXtEventDispatchProc):TXtEventDispatchProc;cdecl;external;
    { widget  }    { event  }
function XtDispatchEventToWidget(para1:TWidget; para2:PXEvent):TBoolean;cdecl;external;
    { widget  }    { type  }    { select_data  }    { proc  }    { closure  }    { position  }
procedure XtInsertEventTypeHandler(para1:TWidget; para2:longint; para3:TXtPointer; para4:TXtEventHandler; para5:TXtPointer; 
                para6:TXtListPosition);cdecl;external;
    { widget  }    { type  }    { select_data  }    { proc  }    { closure  }
procedure XtRemoveEventTypeHandler(para1:TWidget; para2:longint; para3:TXtPointer; para4:TXtEventHandler; para5:TXtPointer);cdecl;external;
    { widget  }
function XtBuildEventMask(para1:TWidget):TEventMask;cdecl;external;
    { dpy  }    { min_event_type  }    { max_event_type  }    { proc  }    { client_data  }
procedure XtRegisterExtensionSelector(para1:PDisplay; para2:longint; para3:longint; para4:TXtExtensionSelectProc; para5:TXtPointer);cdecl;external;
    { widget  }    { exclusive  }    { spring_loaded  }
procedure XtAddGrab(para1:TWidget; para2:TXtBoolean; para3:TXtBoolean);cdecl;external;
    { widget  }
procedure XtRemoveGrab(para1:TWidget);cdecl;external;
    { obsolete  }
    { mask  }
procedure XtProcessEvent(para1:TXtInputMask);cdecl;external;
    { app_context  }    { mask  }
procedure XtAppProcessEvent(para1:TXtAppContext; para2:TXtInputMask);cdecl;external;
    { obsolete  }
procedure XtMainLoop;cdecl;external;
    { app_context  }
procedure XtAppMainLoop(para1:TXtAppContext);cdecl;external;
    { event  }    { region  }
procedure XtAddExposureToRegion(para1:PXEvent; para2:TRegion);cdecl;external;
    { subtree  }    { descendent  }
procedure XtSetKeyboardFocus(para1:TWidget; para2:TWidget);cdecl;external;
    { widget  }
function XtGetKeyboardFocusWidget(para1:TWidget):TWidget;cdecl;external;
    { dpy  }
function XtLastEventProcessed(para1:PDisplay):PXEvent;cdecl;external;
    { dpy  }
function XtLastTimestampProcessed(para1:PDisplay):TTime;cdecl;external;
    {***************************************************************
     *
     * Event Gathering Routines
     *
     *************************************************************** }
    { obsolete  }
    { interval  }    { proc  }    { closure  }
function XtAddTimeOut(para1:dword; para2:TXtTimerCallbackProc; para3:TXtPointer):TXtIntervalId;cdecl;external;
    { app_context  }    { interval  }    { proc  }    { closure  }
function XtAppAddTimeOut(para1:TXtAppContext; para2:dword; para3:TXtTimerCallbackProc; para4:TXtPointer):TXtIntervalId;cdecl;external;
    { timer  }
procedure XtRemoveTimeOut(para1:TXtIntervalId);cdecl;external;
    { obsolete  }
    { source  }    { condition  }    { proc  }    { closure  }
function XtAddInput(para1:longint; para2:TXtPointer; para3:TXtInputCallbackProc; para4:TXtPointer):TXtInputId;cdecl;external;
    { app_context  }    { source  }    { condition  }    { proc  }    { closure  }
function XtAppAddInput(para1:TXtAppContext; para2:longint; para3:TXtPointer; para4:TXtInputCallbackProc; para5:TXtPointer):TXtInputId;cdecl;external;
    { id  }
procedure XtRemoveInput(para1:TXtInputId);cdecl;external;
    { proc  }    { closure  }function XtAddSignal(para1:TXtSignalCallbackProc; para2:TXtPointer):TXtSignalId;cdecl;external;
    { app_context  }    { proc  }    { closure  }
function XtAppAddSignal(para1:TXtAppContext; para2:TXtSignalCallbackProc; para3:TXtPointer):TXtSignalId;cdecl;external;
    { id  }
procedure XtRemoveSignal(para1:TXtSignalId);cdecl;external;
    { id  }
procedure XtNoticeSignal(para1:TXtSignalId);cdecl;external;
    { obsolete  }
    { event  }
procedure XtNextEvent(para1:PXEvent);cdecl;external;
    { app_context  }    { event_return  }
procedure XtAppNextEvent(para1:TXtAppContext; para2:PXEvent);cdecl;external;
    const
      XtIMXEvent = 1;      
      XtIMTimer = 2;      
      XtIMAlternateInput = 4;      
      XtIMSignal = 8;      
      XtIMAll = ((XtIMXEvent or XtIMTimer) or XtIMAlternateInput) or XtIMSignal;      
    { obsolete  }

function XtPending:TBoolean;cdecl;external;
    { app_context  }
function XtAppPending(para1:TXtAppContext):TXtInputMask;cdecl;external;
    { app_context  }    { proc  }    { client_data  }
function XtAppAddBlockHook(para1:TXtAppContext; para2:TXtBlockHookProc; para3:TXtPointer):TXtBlockHookId;cdecl;external;
    { id  }
procedure XtRemoveBlockHook(para1:TXtBlockHookId);cdecl;external;
    {***************************************************************
     *
     * Random utility routines
     *
     *************************************************************** }
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtIsRectObj(object : longint) : longint;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtIsWidget(object : longint) : longint;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtIsComposite(widget : longint) : longint;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtIsConstraint(widget : longint) : longint;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtIsShell(widget : longint) : longint;    

{$undef XtIsOverrideShell}
    { object  }function XtIsOverrideShell(para1:TWidget):TBoolean;cdecl;external;
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtIsOverrideShell(widget : longint) : longint;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtIsWMShell(widget : longint) : longint;    

{$undef XtIsVendorShell}
    { object  }function XtIsVendorShell(para1:TWidget):TBoolean;cdecl;external;
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtIsVendorShell(widget : longint) : longint;    

{$undef XtIsTransientShell}
    { object  }function XtIsTransientShell(para1:TWidget):TBoolean;cdecl;external;
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtIsTransientShell(widget : longint) : longint;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtIsTopLevelShell(widget : longint) : longint;    

{$undef XtIsApplicationShell}
    { object  }function XtIsApplicationShell(para1:TWidget):TBoolean;cdecl;external;
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtIsApplicationShell(widget : longint) : longint;    

{$undef XtIsSessionShell}
    { object  }function XtIsSessionShell(para1:TWidget):TBoolean;cdecl;external;
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtIsSessionShell(widget : longint) : longint;    

    { widget  }
procedure XtRealizeWidget(para1:TWidget);cdecl;external;
    { widget  }
procedure XtUnrealizeWidget(para1:TWidget);cdecl;external;
    { widget  }
procedure XtDestroyWidget(para1:TWidget);cdecl;external;
    { widget  }    { sensitive  }
procedure XtSetSensitive(para1:TWidget; para2:TXtBoolean);cdecl;external;
    { widget  }    { mapped_when_managed  }
procedure XtSetMappedWhenManaged(para1:TWidget; para2:TXtBoolean);cdecl;external;
    { reference  }    { names  }
function XtNameToWidget(para1:TWidget; _XtString:TXconst):TWidget;cdecl;external;
    { display  }    { window  }
function XtWindowToWidget(para1:PDisplay; para2:TWindow):TWidget;cdecl;external;
    { object_class  }    { byte_offset  }    { type  }    { version  }    { record_size  }
function XtGetClassExtension(para1:TWidgetClass; para2:TCardinal; para3:TXrmQuark; para4:longint; para5:TCardinal):TXtPointer;cdecl;external;
    {**************************************************************
     *
     * Arg lists
     *
     *************************************************************** }
(* error 
    ((void)( (arg).name = (n), (arg).value = (XtArgVal)(d) ))
in define line 1161 *)
    { args1  }    { num_args1  }    { args2  }    { num_args2  }
function XtMergeArgLists(para1:TArgList; para2:TCardinal; para3:TArgList; para4:TCardinal):TArgList;cdecl;external;
    {**************************************************************
     *
     * Vararg lists
     *
     *************************************************************** }
    const
      XtVaNestedList = 'XtVaNestedList';      
      XtVaTypedArg = 'XtVaTypedArg';      
    {unused }    {333333333333333333333333333333333******************************** }
function XtVaCreateArgsList(para1:TXtPointer; args:array of const):TXtVarArgsList;cdecl;external;
function XtVaCreateArgsList(para1:TXtPointer):TXtVarArgsList;cdecl;external;
    {************************************************************
     *
     * Information routines
     *
     *********************************************************** }
{$ifndef _XtIntrinsicP_h}
    { We're not included from the private file, so define these  }
    { widget  }

function XtDisplay(para1:TWidget):PDisplay;cdecl;external;
    { object  }
function XtDisplayOfObject(para1:TWidget):PDisplay;cdecl;external;
    { widget  }
function XtScreen(para1:TWidget):PScreen;cdecl;external;
    { object  }
function XtScreenOfObject(para1:TWidget):PScreen;cdecl;external;
    { widget  }
function XtWindow(para1:TWidget):TWindow;cdecl;external;
    { object  }
function XtWindowOfObject(para1:TWidget):TWindow;cdecl;external;
    { object  }
function XtName(para1:TWidget):TString;cdecl;external;
    { object  }
function XtSuperclass(para1:TWidget):TWidgetClass;cdecl;external;
    { object  }
function XtClass(para1:TWidget):TWidgetClass;cdecl;external;
    { widget  }
function XtParent(para1:TWidget):TWidget;cdecl;external;
{$endif}
    {_XtIntrinsicP_h }
{$undef XtMapWidget}
    { w  }
procedure XtMapWidget(para1:TWidget);cdecl;external;
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtMapWidget(widget : longint) : longint;    

{$undef XtUnmapWidget}
    { w  }procedure XtUnmapWidget(para1:TWidget);cdecl;external;
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtUnmapWidget(widget : longint) : longint;    

    { widget  }    { callback_name  }    { callback  }    { closure  }
procedure XtAddCallback(para1:TWidget; _XtString:TXconst; para3:TXtCallbackProc; para4:TXtPointer);cdecl;external;
    { widget  }    { callback_name  }    { callback  }    { closure  }
procedure XtRemoveCallback(para1:TWidget; _XtString:TXconst; para3:TXtCallbackProc; para4:TXtPointer);cdecl;external;
    { widget  }    { callback_name  }    { callbacks  }
procedure XtAddCallbacks(para1:TWidget; _XtString:TXconst; para3:TXtCallbackList);cdecl;external;
    { widget  }    { callback_name  }    { callbacks  }
procedure XtRemoveCallbacks(para1:TWidget; _XtString:TXconst; para3:TXtCallbackList);cdecl;external;
    { widget  }    { callback_name  }
procedure XtRemoveAllCallbacks(para1:TWidget; _XtString:TXconst);cdecl;external;
    { widget  }    { callback_name  }    { call_data  }
procedure XtCallCallbacks(para1:TWidget; _XtString:TXconst; para3:TXtPointer);cdecl;external;
    { widget  }    { callbacks  }    { call_data  }
procedure XtCallCallbackList(para1:TWidget; para2:TXtCallbackList; para3:TXtPointer);cdecl;external;
    { widget  }    { callback_name  }
function XtHasCallbacks(para1:TWidget; _XtString:TXconst):TXtCallbackStatus;cdecl;external;
    {***************************************************************
     *
     * Geometry Management
     *
     *************************************************************** }
    { widget  }    { request  }    { reply_return  }
function XtMakeGeometryRequest(para1:TWidget; para2:PXtWidgetGeometry; para3:PXtWidgetGeometry):TXtGeometryResult;cdecl;external;
    { widget  }    { intended  }    { preferred_return  }
function XtQueryGeometry(para1:TWidget; para2:PXtWidgetGeometry; para3:PXtWidgetGeometry):TXtGeometryResult;cdecl;external;
    { name  }    { widgetClass  }    { parent  }    { args  }    { num_args  }
function XtCreatePopupShell(_XtString:TXconst; para2:TWidgetClass; para3:TWidget; para4:TArgList; para5:TCardinal):TWidget;cdecl;external;
    { name  }    { widgetClass  }    { parent  }    {333333333333333333333333333333333******************************** }function XtVaCreatePopupShell(_XtString:TXconst; para2:TWidgetClass; para3:TWidget; args:array of const):TWidget;cdecl;external;
function XtVaCreatePopupShell(_XtString:TXconst; para2:TWidgetClass; para3:TWidget):TWidget;cdecl;external;
    { popup_shell  }    { grab_kind  }
procedure XtPopup(para1:TWidget; para2:TXtGrabKind);cdecl;external;
    { popup_shell  }
procedure XtPopupSpringLoaded(para1:TWidget);cdecl;external;
    { widget  }    { closure  }    { call_data  }
procedure XtCallbackNone(para1:TWidget; para2:TXtPointer; para3:TXtPointer);cdecl;external;
    { widget  }    { closure  }    { call_data  }
procedure XtCallbackNonexclusive(para1:TWidget; para2:TXtPointer; para3:TXtPointer);cdecl;external;
    { widget  }    { closure  }    { call_data  }
procedure XtCallbackExclusive(para1:TWidget; para2:TXtPointer; para3:TXtPointer);cdecl;external;
    { popup_shell  }
procedure XtPopdown(para1:TWidget);cdecl;external;
    { widget  }    { closure  }    { call_data  }
procedure XtCallbackPopdown(para1:TWidget; para2:TXtPointer; para3:TXtPointer);cdecl;external;
    { widget  }    { event  }    { params  }    { num_params  }
procedure XtMenuPopupAction(para1:TWidget; para2:PXEvent; para3:PString; para4:PCardinal);cdecl;external;
    { name  }    { widget_class  }    { parent  }    { args  }    { num_args  }
function XtCreateWidget(_XtString:TXconst; para2:TWidgetClass; para3:TWidget; para4:TArgList; para5:TCardinal):TWidget;cdecl;external;
    { name  }    { widget_class  }    { parent  }    { args  }    { num_args  }
function XtCreateManagedWidget(_XtString:TXconst; para2:TWidgetClass; para3:TWidget; para4:TArgList; para5:TCardinal):TWidget;cdecl;external;
    { name  }    { widget  }    { parent  }    {333333333333333333333333333333333******************************** }function XtVaCreateWidget(_XtString:TXconst; para2:TWidgetClass; para3:TWidget; args:array of const):TWidget;cdecl;external;
function XtVaCreateWidget(_XtString:TXconst; para2:TWidgetClass; para3:TWidget):TWidget;cdecl;external;
    { name  }    { widget_class  }    { parent  }    {333333333333333333333333333333333******************************** }function XtVaCreateManagedWidget(_XtString:TXconst; para2:TWidgetClass; para3:TWidget; args:array of const):TWidget;cdecl;external;
function XtVaCreateManagedWidget(_XtString:TXconst; para2:TWidgetClass; para3:TWidget):TWidget;cdecl;external;
    { obsolete  }
    { name  }    { widget_class  }    { args  }    { num_args  }
function XtCreateApplicationShell(_XtString:TXconst; para2:TWidgetClass; para3:TArgList; para4:TCardinal):TWidget;cdecl;external;
    { application_name  }    { application_class  }    { widget_class  }    { display  }    { args  }    { num_args  }
function XtAppCreateShell(_XtString:TXconst; _XtString:TXconst; para3:TWidgetClass; para4:PDisplay; para5:TArgList; 
               para6:TCardinal):TWidget;cdecl;external;
    { application_name  }    { application_class  }    { widget_class  }    { display  }    {333333333333333333333333333333333******************************** }function XtVaAppCreateShell(_XtString:TXconst; _XtString:TXconst; para3:TWidgetClass; para4:PDisplay; args:array of const):TWidget;cdecl;external;
function XtVaAppCreateShell(_XtString:TXconst; _XtString:TXconst; para3:TWidgetClass; para4:PDisplay):TWidget;cdecl;external;
    {***************************************************************
     *
     * Toolkit initialization
     *
     *************************************************************** }
procedure XtToolkitInitialize;cdecl;external;
    { app_context  }    { proc  }    { client_data  }
function XtSetLanguageProc(para1:TXtAppContext; para2:TXtLanguageProc; para3:TXtPointer):TXtLanguageProc;cdecl;external;
    { app_context  }    { dpy  }    { application_name  }    { application_class  }    { options  }    { num_options  }    { argc  }    { argv  }
procedure XtDisplayInitialize(para1:TXtAppContext; para2:PDisplay; _XtString:TXconst; _XtString:TXconst; para5:PXrmOptionDescRec; 
                para6:TCardinal; para7:Plongint; para8:PXtString);cdecl;external;
    { app_context_return  }    { application_class  }    { options  }    { num_options  }    { argc_in_out  }    { argv_in_out  }    { fallback_resources  }    { widget_class  }    { args  }    { num_args  }
function XtOpenApplication(para1:PXtAppContext; _XtString:TXconst; para3:TXrmOptionDescList; para4:TCardinal; para5:Plongint; 
               para6:PXtString; para7:PString; para8:TWidgetClass; para9:TArgList; para10:TCardinal):TWidget;cdecl;external;
    { app_context_return  }    { application_class  }    { options  }    { num_options  }    { argc_in_out  }    { argv_in_out  }    { fallback_resources  }    { widget_class  }    {333333333333333333333333333333333******************************** }function XtVaOpenApplication(para1:PXtAppContext; _XtString:TXconst; para3:TXrmOptionDescList; para4:TCardinal; para5:Plongint; 
               para6:PXtString; para7:PString; para8:TWidgetClass; args:array of const):TWidget;cdecl;external;
function XtVaOpenApplication(para1:PXtAppContext; _XtString:TXconst; para3:TXrmOptionDescList; para4:TCardinal; para5:Plongint; 
               para6:PXtString; para7:PString; para8:TWidgetClass):TWidget;cdecl;external;
    { obsolete  }
    { app_context_return  }    { application_class  }    { options  }    { num_options  }    { argc_in_out  }    { argv_in_out  }    { fallback_resources  }    { args  }    { num_args  }
function XtAppInitialize(para1:PXtAppContext; _XtString:TXconst; para3:TXrmOptionDescList; para4:TCardinal; para5:Plongint; 
               para6:PXtString; para7:PString; para8:TArgList; para9:TCardinal):TWidget;cdecl;external;
    { obsolete  }
    { app_context_return  }    { application_class  }    { options  }    { num_options  }    { argc_in_out  }    { argv_in_out  }    { fallback_resources  }    {333333333333333333333333333333333******************************** }function XtVaAppInitialize(para1:PXtAppContext; _XtString:TXconst; para3:TXrmOptionDescList; para4:TCardinal; para5:Plongint; 
               para6:PXtString; para7:PString; args:array of const):TWidget;cdecl;external;
function XtVaAppInitialize(para1:PXtAppContext; _XtString:TXconst; para3:TXrmOptionDescList; para4:TCardinal; para5:Plongint; 
               para6:PXtString; para7:PString):TWidget;cdecl;external;
    { obsolete  }
    { shell_name  }    { application_class  }    { options  }    { num_options  }    { argc  }    { argv  }
function XtInitialize(_XtString:TXconst; _XtString:TXconst; para3:PXrmOptionDescRec; para4:TCardinal; para5:Plongint; 
               para6:PXtString):TWidget;cdecl;external;
    { app_context  }    { display_string  }    { application_name  }    { application_class  }    { options  }    { num_options  }    { argc  }    { argv  }
function XtOpenDisplay(para1:TXtAppContext; _XtString:TXconst; _XtString:TXconst; _XtString:TXconst; para5:PXrmOptionDescRec; 
               para6:TCardinal; para7:Plongint; para8:PXtString):PDisplay;cdecl;external;
function XtCreateApplicationContext:TXtAppContext;cdecl;external;
    { app_context  }    { specification_list  }
procedure XtAppSetFallbackResources(para1:TXtAppContext; para2:PString);cdecl;external;
    { app_context  }
procedure XtDestroyApplicationContext(para1:TXtAppContext);cdecl;external;
    { widget_class  }
procedure XtInitializeWidgetClass(para1:TWidgetClass);cdecl;external;
    { widget  }
function XtWidgetToApplicationContext(para1:TWidget):TXtAppContext;cdecl;external;
    { dpy  }
function XtDisplayToApplicationContext(para1:PDisplay):TXtAppContext;cdecl;external;
    { dpy  }
function XtDatabase(para1:PDisplay):TXrmDatabase;cdecl;external;
    { screen  }
function XtScreenDatabase(para1:PScreen):TXrmDatabase;cdecl;external;
    { dpy  }
procedure XtCloseDisplay(para1:PDisplay);cdecl;external;
    { widget  }    { base  }    { resources  }    { num_resources  }    { args  }    { num_args  }
procedure XtGetApplicationResources(para1:TWidget; para2:TXtPointer; para3:TXtResourceList; para4:TCardinal; para5:TArgList; 
                para6:TCardinal);cdecl;external;
    { widget  }    { base  }    { resources  }    { num_resources  }    {333333333333333333333333333333333******************************** }procedure XtVaGetApplicationResources(para1:TWidget; para2:TXtPointer; para3:TXtResourceList; para4:TCardinal; args:array of const);cdecl;external;
procedure XtVaGetApplicationResources(para1:TWidget; para2:TXtPointer; para3:TXtResourceList; para4:TCardinal);cdecl;external;
    { widget  }    { base  }    { name  }    { class  }    { resources  }    { num_resources  }    { args  }    { num_args  }
procedure XtGetSubresources(para1:TWidget; para2:TXtPointer; _XtString:TXconst; _XtString:TXconst; para5:TXtResourceList; 
                para6:TCardinal; para7:TArgList; para8:TCardinal);cdecl;external;
    { widget  }    { base  }    { name  }    { class  }    { resources  }    { num_resources  }    {333333333333333333333333333333333******************************** }procedure XtVaGetSubresources(para1:TWidget; para2:TXtPointer; _XtString:TXconst; _XtString:TXconst; para5:TXtResourceList; 
                para6:TCardinal; args:array of const);cdecl;external;
procedure XtVaGetSubresources(para1:TWidget; para2:TXtPointer; _XtString:TXconst; _XtString:TXconst; para5:TXtResourceList; 
                para6:TCardinal);cdecl;external;
    { widget  }    { args  }    { num_args  }
procedure XtSetValues(para1:TWidget; para2:TArgList; para3:TCardinal);cdecl;external;
    { widget  }    {333333333333333333333333333333333******************************** }procedure XtVaSetValues(para1:TWidget; args:array of const);cdecl;external;
procedure XtVaSetValues(para1:TWidget);cdecl;external;
    { widget  }    { args  }    { num_args  }
procedure XtGetValues(para1:TWidget; para2:TArgList; para3:TCardinal);cdecl;external;
    { widget  }    {333333333333333333333333333333333******************************** }procedure XtVaGetValues(para1:TWidget; args:array of const);cdecl;external;
procedure XtVaGetValues(para1:TWidget);cdecl;external;
    { base  }    { resources  }    { num_resources  }    { args  }    { num_args  }
procedure XtSetSubvalues(para1:TXtPointer; para2:TXtResourceList; para3:TCardinal; para4:TArgList; para5:TCardinal);cdecl;external;
    { base  }    { resources  }    { num_resources  }    {333333333333333333333333333333333******************************** }procedure XtVaSetSubvalues(para1:TXtPointer; para2:TXtResourceList; para3:TCardinal; args:array of const);cdecl;external;
procedure XtVaSetSubvalues(para1:TXtPointer; para2:TXtResourceList; para3:TCardinal);cdecl;external;
    { base  }    { resources  }    { num_resources  }    { args  }    { num_args  }
procedure XtGetSubvalues(para1:TXtPointer; para2:TXtResourceList; para3:TCardinal; para4:TArgList; para5:TCardinal);cdecl;external;
    { base  }    { resources  }    { num_resources  }    {333333333333333333333333333333333******************************** }procedure XtVaGetSubvalues(para1:TXtPointer; para2:TXtResourceList; para3:TCardinal; args:array of const);cdecl;external;
procedure XtVaGetSubvalues(para1:TXtPointer; para2:TXtResourceList; para3:TCardinal);cdecl;external;
    { widget_class  }    { resources_return  }    { num_resources_return  }
procedure XtGetResourceList(para1:TWidgetClass; para2:PXtResourceList; para3:PCardinal);cdecl;external;
    { widget_class  }    { resources_return  }    { num_resources_return  }
procedure XtGetConstraintResourceList(para1:TWidgetClass; para2:PXtResourceList; para3:PCardinal);cdecl;external;
    { was #define dname def_expr }
    function XtUnspecifiedPixmap : TPixmap;      

    const
      XtUnspecifiedShellInt = -(1);      

    { was #define dname def_expr }
    function XtUnspecifiedWindow : TWindow;      

    { was #define dname def_expr }
    function XtUnspecifiedWindowGroup : TWindow;      

    const
      XtCurrentDirectory = 'XtCurrentDirectory';      
      XtDefaultForeground = 'XtDefaultForeground';      
      XtDefaultBackground = 'XtDefaultBackground';      
      XtDefaultFont = 'XtDefaultFont';      
      XtDefaultFontSet = 'XtDefaultFontSet';      
    { was #define dname(params) para_def_expr }
    { argument types are unknown }

    function XtOffset(p_type,field : longint) : TCardinal;    

{$ifdef offsetof}
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtOffsetOf(s_type,field : longint) : longint;    

{$else}
(* error 
#define XtOffsetOf(s_type,field) XtOffset(s_type*,field)
in define line 1675 *)
{$endif}
    {************************************************************
     *
     * Session Management
     *
     *********************************************************** }
    { return  }
    { return  }
    { return  }
    { return  }
    { implementation private  }
    { implementation private  }
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
    { widget  }

function XtSessionGetToken(para1:TWidget):TXtCheckpointToken;cdecl;external;
    { token  }
procedure XtSessionReturnToken(para1:TXtCheckpointToken);cdecl;external;
    {************************************************************
     *
     * Error Handling
     *
     *********************************************************** }
    { app_context  }    { handler  }function XtAppSetErrorMsgHandler(para1:TXtAppContext; _X_NORETURN:TXtErrorMsgHandler):TXtErrorMsgHandler;cdecl;external;
    { obsolete  }
    { handler  }procedure XtSetErrorMsgHandler(_X_NORETURN:TXtErrorMsgHandler);cdecl;external;
    { app_context  }    { handler  }
function XtAppSetWarningMsgHandler(para1:TXtAppContext; para2:TXtErrorMsgHandler):TXtErrorMsgHandler;cdecl;external;
    { obsolete  }
    { handler  }
procedure XtSetWarningMsgHandler(para1:TXtErrorMsgHandler);cdecl;external;
    { app_context  }    { name  }    { type  }    { class  }    { default  }    { params  }    { num_params  }
(* error 
) _X_NORETURN;
 in declarator_list *)
      var
 : pointer;
    { obsolete  }
    { name  }    { type  }    { class  }    { default  }    { params  }    { num_params  }
(* error 
) _X_NORETURN;
 in declarator_list *)
 : pointer;
    { app_context  }    { name  }    { type  }    { class  }    { default  }    { params  }    { num_params  }

procedure XtAppWarningMsg(para1:TXtAppContext; _XtString:TXconst; _XtString:TXconst; _XtString:TXconst; _XtString:TXconst; 
                para6:PString; para7:PCardinal);cdecl;external;
    { obsolete  }
    { name  }    { type  }    { class  }    { default  }    { params  }    { num_params  }
procedure XtWarningMsg(_XtString:TXconst; _XtString:TXconst; _XtString:TXconst; _XtString:TXconst; para5:PString; 
                para6:PCardinal);cdecl;external;
    { app_context  }    { handler  }function XtAppSetErrorHandler(para1:TXtAppContext; _X_NORETURN:TXtErrorHandler):TXtErrorHandler;cdecl;external;
    { obsolete  }
    { handler  }procedure XtSetErrorHandler(_X_NORETURN:TXtErrorHandler);cdecl;external;
    { app_context  }    { handler  }
function XtAppSetWarningHandler(para1:TXtAppContext; para2:TXtErrorHandler):TXtErrorHandler;cdecl;external;
    { obsolete  }
    { handler  }
procedure XtSetWarningHandler(para1:TXtErrorHandler);cdecl;external;
    { app_context  }    { message  }
(* error 
) _X_NORETURN;
 in declarator_list *)
      var
 : pointer;
    { obsolete  }
    { message  }
(* error 
) _X_NORETURN;
 in declarator_list *)
 : pointer;
    { app_context  }    { message  }

procedure XtAppWarning(para1:TXtAppContext; _XtString:TXconst);cdecl;external;
    { obsolete  }
    { message  }
procedure XtWarning(_XtString:TXconst);cdecl;external;
    { app_context  }
function XtAppGetErrorDatabase(para1:TXtAppContext):PXrmDatabase;cdecl;external;
    { obsolete  }
function XtGetErrorDatabase:PXrmDatabase;cdecl;external;
    { app_context  }    { name  }    { type  }    { class  }    { default  }    { buffer_return  }    { nbytes  }    { database  }
procedure XtAppGetErrorDatabaseText(para1:TXtAppContext; _XtString:TXconst; _XtString:TXconst; _XtString:TXconst; _XtString:TXconst; 
                para6:TXtString; para7:longint; para8:TXrmDatabase);cdecl;external;
    { obsolete  }
    { name  }    { type  }    { class  }    { default  }    { buffer_return  }    { nbytes  }
procedure XtGetErrorDatabaseText(_XtString:TXconst; _XtString:TXconst; _XtString:TXconst; _XtString:TXconst; para5:TXtString; 
                para6:longint);cdecl;external;
    {***************************************************************
     *
     * Memory Management
     *
     *************************************************************** }
    { size  }
function XtMalloc(para1:TCardinal):Pchar;cdecl;external;
    { num  }    { size  }
function XtCalloc(para1:TCardinal; para2:TCardinal):Pchar;cdecl;external;
    { ptr  }    { num  }
function XtRealloc(para1:Pchar; para2:TCardinal):Pchar;cdecl;external;
    { ptr  }
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
    { implementation-private  }
    { size  }(* Const before type ignored *)
    { file  }    { line  }

function _XtMalloc(para1:TCardinal; para2:Pchar; para3:longint):Pchar;cdecl;external;
    { implementation-private  }
    { ptr  }    { size  }(* Const before type ignored *)
    { file  }    { line  }
function _XtRealloc(para1:Pchar; para2:TCardinal; para3:Pchar; para4:longint):Pchar;cdecl;external;
    { implementation-private  }
    { num  }    { size  }(* Const before type ignored *)
    { file  }    { line  }
function _XtCalloc(para1:TCardinal; para2:TCardinal; para3:Pchar; para4:longint):Pchar;cdecl;external;
    { implementation-private  }
    { ptr  }
procedure _XtFree(para1:Pchar);cdecl;external;
    { implementation-private  }
    { ptr  }function _XtIsValidPointer(para1:Pchar):TBoolean;cdecl;external;
    { implementation-private  }
(* Const before type ignored *)
    { filename  }procedure _XtPrintMemory(para1:Pchar);cdecl;external;
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtMalloc(size : longint) : longint;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtRealloc(ptr,size : longint) : longint;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtCalloc(num,size : longint) : longint;    

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtFree(ptr : longint) : longint;    

{$endif}
    { ifdef XTTRACEMEMORY  }
    { was #define dname(params) para_def_expr }
    { argument types are unknown }

    function XtNew(_type : longint) : Ptype;    

{$undef XtNewString}
    { str  }function XtNewString(para1:TString):TString;cdecl;external;
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtNewString(str : longint) : longint;    

    {************************************************************
     *
     *  Work procs
     *
     ************************************************************* }
    { obsolete  }
    { proc  }    { closure  }
function XtAddWorkProc(para1:TXtWorkProc; para2:TXtPointer):TXtWorkProcId;cdecl;external;
    { app_context  }    { proc  }    { closure  }
function XtAppAddWorkProc(para1:TXtAppContext; para2:TXtWorkProc; para3:TXtPointer):TXtWorkProcId;cdecl;external;
    { id  }
procedure XtRemoveWorkProc(para1:TXtWorkProcId);cdecl;external;
    {***************************************************************
     *
     * Graphic Context Management
     **************************************************************** }
    { widget  }    { valueMask  }    { values  }
function XtGetGC(para1:TWidget; para2:TXtGCMask; para3:PXGCValues):TGC;cdecl;external;
    { widget  }    { depth  }    { valueMask  }    { values  }    { dynamicMask  }    { unusedMask  }
function XtAllocateGC(para1:TWidget; para2:TCardinal; para3:TXtGCMask; para4:PXGCValues; para5:TXtGCMask; 
               para6:TXtGCMask):TGC;cdecl;external;
    { This implementation of XtDestroyGC differs from the formal specification
     * for historic backwards compatibility reasons.  As other implementations
     * may conform to the spec, use of XtReleaseGC is strongly encouraged.
      }
    { obsolete  }
    { gc  }
procedure XtDestroyGC(para1:TGC);cdecl;external;
    { object  }    { gc  }
procedure XtReleaseGC(para1:TWidget; para2:TGC);cdecl;external;
    { app_context  }    { cache_ref  }
procedure XtAppReleaseCacheRefs(para1:TXtAppContext; para2:PXtCacheRef);cdecl;external;
    { widget  }    { closure  }    { XtCacheRef  }
    { call_data  }
procedure XtCallbackReleaseCacheRef(para1:TWidget; para2:TXtPointer; para3:TXtPointer);cdecl;external;
    { widget  }    { closure  }    { XtCacheRef*  }
    { call_data  }
procedure XtCallbackReleaseCacheRefList(para1:TWidget; para2:TXtPointer; para3:TXtPointer);cdecl;external;
    { widget  }    { list  }    { count  }
procedure XtSetWMColormapWindows(para1:TWidget; para2:PWidget; para3:TCardinal);cdecl;external;
    { path  }    { substitutions  }    { num_substitutions  }    { predicate  }
function XtFindFile(_XtString:TXconst; para2:TSubstitution; para3:TCardinal; para4:TXtFilePredicate):TXtString;cdecl;external;
    { dpy  }    { type  }    { filename  }    { suffix  }    { path  }    { substitutions  }    { num_substitutions  }    { predicate  }
function XtResolvePathname(para1:PDisplay; _XtString:TXconst; _XtString:TXconst; _XtString:TXconst; _XtString:TXconst; 
               para6:TSubstitution; para7:TCardinal; para8:TXtFilePredicate):TXtString;cdecl;external;
    {***************************************************************
     *
     * Selections
     *
     **************************************************************** }
    { was #define dname def_expr }
    function XT_CONVERT_FAIL : TAtom;      

    { widget  }    { selection  }    { time  }
procedure XtDisownSelection(para1:TWidget; para2:TAtom; para3:TTime);cdecl;external;
    { widget  }    { selection  }    { target  }    { callback  }    { closure  }    { time  }
procedure XtGetSelectionValue(para1:TWidget; para2:TAtom; para3:TAtom; para4:TXtSelectionCallbackProc; para5:TXtPointer; 
                para6:TTime);cdecl;external;
    { widget  }    { selection  }    { targets  }    { count  }    { callback  }    { closures  }    { time  }
procedure XtGetSelectionValues(para1:TWidget; para2:TAtom; para3:PAtom; para4:longint; para5:TXtSelectionCallbackProc; 
                para6:PXtPointer; para7:TTime);cdecl;external;
    { app_context  }    { timeout  }
procedure XtAppSetSelectionTimeout(para1:TXtAppContext; para2:dword);cdecl;external;
    { obsolete  }
    { timeout  }
procedure XtSetSelectionTimeout(para1:dword);cdecl;external;
    { app_context  }
function XtAppGetSelectionTimeout(para1:TXtAppContext):dword;cdecl;external;
    { obsolete  }
function XtGetSelectionTimeout:dword;cdecl;external;
    { widget  }    { selection  }    { request_id  }
function XtGetSelectionRequest(para1:TWidget; para2:TAtom; para3:TXtRequestId):PXSelectionRequestEvent;cdecl;external;
    { widget  }    { selection  }    { target  }    { selection_callback  }    { client_data  }    { time  }
procedure XtGetSelectionValueIncremental(para1:TWidget; para2:TAtom; para3:TAtom; para4:TXtSelectionCallbackProc; para5:TXtPointer; 
                para6:TTime);cdecl;external;
    { widget  }    { selection  }    { targets  }    { count  }    { callback  }    { client_data  }    { time  }
procedure XtGetSelectionValuesIncremental(para1:TWidget; para2:TAtom; para3:PAtom; para4:longint; para5:TXtSelectionCallbackProc; 
                para6:PXtPointer; para7:TTime);cdecl;external;
    { requestor  }    { selection  }    { type  }    { value  }    { length  }    { format  }
procedure XtSetSelectionParameters(para1:TWidget; para2:TAtom; para3:TAtom; para4:TXtPointer; para5:dword; 
                para6:longint);cdecl;external;
    { owner  }    { selection  }    { request_id  }    { type_return  }    { value_return  }    { length_return  }    { format_return  }
procedure XtGetSelectionParameters(para1:TWidget; para2:TAtom; para3:TXtRequestId; para4:PAtom; para5:PXtPointer; 
                para6:Pdword; para7:Plongint);cdecl;external;
    { requestor  }    { selection  }
procedure XtCreateSelectionRequest(para1:TWidget; para2:TAtom);cdecl;external;
    { requestor  }    { selection  }    { time  }
procedure XtSendSelectionRequest(para1:TWidget; para2:TAtom; para3:TTime);cdecl;external;
    { requestor  }    { selection  }
procedure XtCancelSelectionRequest(para1:TWidget; para2:TAtom);cdecl;external;
    { widget  }
function XtReservePropertyAtom(para1:TWidget):TAtom;cdecl;external;
    { widget  }    { selection  }
procedure XtReleasePropertyAtom(para1:TWidget; para2:TAtom);cdecl;external;
    { widget  }    { keycode  }    { modifiers  }    { owner_events  }    { pointer_mode  }    { keyboard_mode  }
procedure XtGrabKey(para1:TWidget; para2:TXtKeyCode; para3:TModifiers; para4:TXtBoolean; para5:longint; 
                para6:longint);cdecl;external;
    { widget  }    { keycode  }    { modifiers  }
procedure XtUngrabKey(para1:TWidget; para2:TXtKeyCode; para3:TModifiers);cdecl;external;
    { widget  }    { owner_events  }    { pointer_mode  }    { keyboard_mode  }    { time  }
function XtGrabKeyboard(para1:TWidget; para2:TXtBoolean; para3:longint; para4:longint; para5:TTime):longint;cdecl;external;
    { widget  }    { time  }
procedure XtUngrabKeyboard(para1:TWidget; para2:TTime);cdecl;external;
    { widget  }    { button  }    { modifiers  }    { owner_events  }    { event_mask  }    { pointer_mode  }    { keyboard_mode  }    { confine_to  }    { cursor  }
procedure XtGrabButton(para1:TWidget; para2:longint; para3:TModifiers; para4:TXtBoolean; para5:dword; 
                para6:longint; para7:longint; para8:TWindow; para9:TCursor);cdecl;external;
    { widget  }    { button  }    { modifiers  }
procedure XtUngrabButton(para1:TWidget; para2:dword; para3:TModifiers);cdecl;external;
    { widget  }    { owner_events  }    { event_mask  }    { pointer_mode  }    { keyboard_mode  }    { confine_to  }    { cursor  }    { time  }
function XtGrabPointer(para1:TWidget; para2:TXtBoolean; para3:dword; para4:longint; para5:longint; 
               para6:TWindow; para7:TCursor; para8:TTime):longint;cdecl;external;
    { widget  }    { time  }
procedure XtUngrabPointer(para1:TWidget; para2:TTime);cdecl;external;
    { dpy  }    { name_return  }    { class_return  }
procedure XtGetApplicationNameAndClass(para1:PDisplay; para2:PString; para3:PString);cdecl;external;
    { dpy  }    { drawable  }    { widget  }
procedure XtRegisterDrawable(para1:PDisplay; para2:TDrawable; para3:TWidget);cdecl;external;
    { dpy  }    { drawable  }
procedure XtUnregisterDrawable(para1:PDisplay; para2:TDrawable);cdecl;external;
    { dpy  }
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
    { app_context  }    { dpy_return  }    { num_dpy_return  }

procedure XtGetDisplays(para1:TXtAppContext; para2:PPPDisplay; para3:PCardinal);cdecl;external;
function XtToolkitThreadInitialize:TBoolean;cdecl;external;
    { app_context  }
procedure XtAppSetExitFlag(para1:TXtAppContext);cdecl;external;
    { app_context  }
function XtAppGetExitFlag(para1:TXtAppContext):TBoolean;cdecl;external;
    { app_context  }
procedure XtAppLock(para1:TXtAppContext);cdecl;external;
    { app_context  }
procedure XtAppUnlock(para1:TXtAppContext);cdecl;external;
    {
     *	Predefined Resource Converters
      }
    { String converters  }
    { dpy  }    { args  }    { none  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }
function XtCvtStringToAcceleratorTable(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    { dpy  }    { args  }    { Display  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }
function XtCvtStringToAtom(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    { dpy  }    { args  }    { none  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }
function XtCvtStringToBool(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    { dpy  }    { args  }    { none  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }
function XtCvtStringToBoolean(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    { dpy  }    { args  }    { none  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }
function XtCvtStringToCommandArgArray(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    { dpy  }    { args  }    { Display  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }
function XtCvtStringToCursor(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    { dpy  }    { args  }    { none  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }
function XtCvtStringToDimension(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    { dpy  }    { args  }    { none  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }
function XtCvtStringToDirectoryString(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    { dpy  }    { args  }    { none  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }
function XtCvtStringToDisplay(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    { dpy  }    { args  }    { none  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }
function XtCvtStringToFile(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    { dpy  }    { args  }    { none  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }
function XtCvtStringToFloat(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    { dpy  }    { args  }    { Display  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }
function XtCvtStringToFont(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    { dpy  }    { args  }    { Display, locale  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }
function XtCvtStringToFontSet(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    { dpy  }    { args  }    { Display  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }
function XtCvtStringToFontStruct(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    { dpy  }    { args  }    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }
function XtCvtStringToGravity(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    { dpy  }    { args  }    { none  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }
function XtCvtStringToInitialState(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    { dpy  }    { args  }    { none  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }
function XtCvtStringToInt(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    { dpy  }    { args  }    { Screen, Colormap  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }
function XtCvtStringToPixel(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    const
      XtCvtStringToPosition = XtCvtStringToShort;      
    { dpy  }    { args  }    { none  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }

function XtCvtStringToRestartStyle(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    { dpy  }    { args  }    { none  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }
function XtCvtStringToShort(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    { dpy  }    { args  }    { none  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }
function XtCvtStringToTranslationTable(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    { dpy  }    { args  }    { none  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }
function XtCvtStringToUnsignedChar(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    { dpy  }    { args  }    { Screen, depth  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }
function XtCvtStringToVisual(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    { int converters  }
    { dpy  }    { args  }    { none  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }
function XtCvtIntToBool(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    { dpy  }    { args  }    { none  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }
function XtCvtIntToBoolean(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    { dpy  }    { args  }    { Screen, Colormap  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }
function XtCvtIntToColor(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    const
      XtCvtIntToDimension = XtCvtIntToShort;      
    { dpy  }    { args  }    { none  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }

function XtCvtIntToFloat(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    { dpy  }    { args  }    { none  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }
function XtCvtIntToFont(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    { dpy  }    { args  }    { none  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }
function XtCvtIntToPixel(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    { dpy  }    { args  }    { none  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }
function XtCvtIntToPixmap(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    const
      XtCvtIntToPosition = XtCvtIntToShort;      
    { dpy  }    { args  }    { none  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }

function XtCvtIntToShort(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    { dpy  }    { args  }    { none  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }
function XtCvtIntToUnsignedChar(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    { Color converter  }
    { dpy  }    { args  }    { none  }
    { num_args  }    { fromVal  }    { toVal  }    { closure_ret  }
function XtCvtColorToPixel(para1:PDisplay; para2:TXrmValuePtr; para3:PCardinal; para4:TXrmValuePtr; para5:TXrmValuePtr; 
               para6:PXtPointer):TBoolean;cdecl;external;
    { Pixel converter  }
    const
      XtCvtPixelToColor = XtCvtIntToColor;      
{$endif}
    {_XtIntrinsic_h }
    { DON'T ADD STUFF AFTER THIS #endif  }
(* error 
/* DON'T ADD STUFF AFTER THIS #endif */

implementation

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    function XtNumber(arr : longint) : TCardinal;
    begin
      XtNumber:=TCardinal((sizeof(arr))/(sizeof(arr[0])));
    end;

    { was #define dname def_expr }
    function XtAllEvents : TEventMask;
      begin
        XtAllEvents:=TEventMask(-(1));
      end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtIsRectObj(object : longint) : longint;
    begin
      XtIsRectObj:=_XtCheckSubclassFlag(object,TXtEnum($02));
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtIsWidget(object : longint) : longint;
    begin
      XtIsWidget:=_XtCheckSubclassFlag(object,TXtEnum($04));
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtIsComposite(widget : longint) : longint;
    begin
      XtIsComposite:=_XtCheckSubclassFlag(widget,TXtEnum($08));
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtIsConstraint(widget : longint) : longint;
    begin
      XtIsConstraint:=_XtCheckSubclassFlag(widget,TXtEnum($10));
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtIsShell(widget : longint) : longint;
    begin
      XtIsShell:=_XtCheckSubclassFlag(widget,TXtEnum($20));
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtIsOverrideShell(widget : longint) : longint;
    begin
      XtIsOverrideShell:=_XtIsSubclassOf(widget,TWidgetClass(overrideShellWidgetClass),TWidgetClass(shellWidgetClass),TXtEnum($20));
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtIsWMShell(widget : longint) : longint;
    begin
      XtIsWMShell:=_XtCheckSubclassFlag(widget,TXtEnum($40));
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtIsVendorShell(widget : longint) : longint;
    begin
      XtIsVendorShell:=_XtIsSubclassOf(widget,TWidgetClass(vendorShellWidgetClass),TWidgetClass(wmShellWidgetClass),TXtEnum($40));
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtIsTransientShell(widget : longint) : longint;
    begin
      XtIsTransientShell:=_XtIsSubclassOf(widget,TWidgetClass(transientShellWidgetClass),TWidgetClass(wmShellWidgetClass),TXtEnum($40));
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtIsTopLevelShell(widget : longint) : longint;
    begin
      XtIsTopLevelShell:=_XtCheckSubclassFlag(widget,TXtEnum($80));
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtIsApplicationShell(widget : longint) : longint;
    begin
      XtIsApplicationShell:=_XtIsSubclassOf(widget,TWidgetClass(applicationShellWidgetClass),TWidgetClass(topLevelShellWidgetClass),TXtEnum($80));
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtIsSessionShell(widget : longint) : longint;
    begin
      XtIsSessionShell:=_XtIsSubclassOf(widget,TWidgetClass(sessionShellWidgetClass),TWidgetClass(topLevelShellWidgetClass),TXtEnum($80));
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtMapWidget(widget : longint) : longint;
    begin
      XtMapWidget:=XMapWindow(XtDisplay(widget),XtWindow(widget));
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtUnmapWidget(widget : longint) : longint;
    begin
      XtUnmapWidget:=XUnmapWindow(XtDisplay(widget),XtWindow(widget));
    end;

    { was #define dname def_expr }
    function XtUnspecifiedPixmap : TPixmap;
      begin
        XtUnspecifiedPixmap:=TPixmap(2);
      end;

    { was #define dname def_expr }
    function XtUnspecifiedWindow : TWindow;
      begin
        XtUnspecifiedWindow:=TWindow(2);
      end;

    { was #define dname def_expr }
    function XtUnspecifiedWindowGroup : TWindow;
      begin
        XtUnspecifiedWindowGroup:=TWindow(3);
      end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    function XtOffset(p_type,field : longint) : TCardinal;
    begin
      XtOffset:=TCardinal((Pchar(@((Tp_type(NULL))^.field)))-(Pchar(NULL)));
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtOffsetOf(s_type,field : longint) : longint;
    begin
      XtOffsetOf:=offsetof(s_type,field);
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtMalloc(size : longint) : longint;
    begin
      XtMalloc:=_XtMalloc(size,__FILE__,__LINE__);
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtRealloc(ptr,size : longint) : longint;
    begin
      XtRealloc:=_XtRealloc(ptr,size,__FILE__,__LINE__);
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtCalloc(num,size : longint) : longint;
    begin
      XtCalloc:=_XtCalloc(num,size,__FILE__,__LINE__);
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function XtFree(ptr : longint) : longint;
    begin
      XtFree:=_XtFree(ptr);
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    function XtNew(_type : longint) : Ptype;
    begin
      XtNew:=Ptype(XtMalloc(dword(sizeof(_type))));
    end;

    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
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

    { was #define dname def_expr }
    function XT_CONVERT_FAIL : TAtom;
      begin
        XT_CONVERT_FAIL:=TAtom($80000001);
      end;


end.
