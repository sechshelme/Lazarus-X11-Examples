
unit IntrinsicP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/IntrinsicP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/IntrinsicP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/IntrinsicP.pp
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
    PBoolean  = ^Boolean;
    PCardinal  = ^Cardinal;
    PTime  = ^Time;
    PVisual  = ^Visual;
    PWidget  = ^Widget;
    PXEvent  = ^XEvent;
    PXrmResource  = ^XrmResource;
    PXrmResourceList  = ^XrmResourceList;
    PXSetWindowAttributes  = ^XSetWindowAttributes;
    PXtPointer  = ^XtPointer;
    PXtStateRec  = ^XtStateRec;
    PXtTM  = ^XtTM;
    PXtTMRec  = ^XtTMRec;
    PXtTypedArg  = ^XtTypedArg;
    PXtTypedArgList  = ^XtTypedArgList;
    PXtValueMask  = ^XtValueMask;
    PXtVersionType  = ^XtVersionType;
    PXtWidgetGeometry  = ^XtWidgetGeometry;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XtintrinsicP_h}
{$define _XtintrinsicP_h}
{$include <X11/Intrinsic.h>}








type
  PXrmResource = ^TXrmResource;
  TXrmResource = record
      xrm_name : longint;
      xrm_class : longint;
      xrm_type : longint;
      xrm_size : TCardinal;
      xrm_offset : longint;
      xrm_default_type : longint;
      xrm_default_addr : TXtPointer;
    end;
  TXrmResourceList = PXrmResource;
  PXrmResourceList = ^TXrmResourceList;

  PXtVersionType = ^TXtVersionType;
  TXtVersionType = dword;

const
  XT_VERSION = 11;  
{$ifndef XT_REVISION}

const
  XT_REVISION = 6;  
{$endif}
(* error 
#define XtVersion (XT_VERSION * 1000 + XT_REVISION)
in define line 74 *)

    const
      XtVersionDontCheck = 0;      
    type

      TXtProc = procedure (para1:pointer);cdecl;


      TXtWidgetClassProc = procedure (para1:TWidgetClass);cdecl;


      TXtWidgetProc = procedure (para1:TWidget);cdecl;


      TXtAcceptFocusProc = function (para1:TWidget; para2:PTime):TBoolean;cdecl;


      TXtArgsProc = procedure (para1:TWidget; para2:TArgList; para3:PCardinal);cdecl;


      TXtInitProc = procedure (para1:TWidget; para2:TWidget; para3:TArgList; para4:PCardinal);cdecl;


      TXtSetValuesFunc = function (para1:TWidget; para2:TWidget; para3:TWidget; para4:TArgList; para5:PCardinal):TBoolean;cdecl;


      TXtArgsFunc = function (para1:TWidget; para2:TArgList; para3:PCardinal):TBoolean;cdecl;


      TXtAlmostProc = procedure (para1:TWidget; para2:TWidget; para3:PXtWidgetGeometry; para4:PXtWidgetGeometry);cdecl;


      TXtExposeProc = procedure (para1:TWidget; para2:PXEvent; para3:TRegion);cdecl;


    function XtExposeNoCompress : TXtEnum;      

    function XtExposeCompressSeries : TXtEnum;      

    const
      XtExposeCompressMultiple = 2;      
      XtExposeCompressMaximal = 3;      

      XtExposeGraphicsExpose = $10;      
      XtExposeGraphicsExposeMerged = $20;      
      XtExposeNoExpose = $40;      
      XtExposeNoRegion = $80;      

    type

      TXtRealizeProc = procedure (para1:TWidget; para2:PXtValueMask; para3:PXSetWindowAttributes);cdecl;


      TXtGeometryHandler = function (para1:TWidget; para2:PXtWidgetGeometry; para3:PXtWidgetGeometry):TXtGeometryResult;cdecl;


      TXtStringProc = procedure (para1:TWidget; para2:TString);cdecl;





      PXtTypedArg = ^TXtTypedArg;
      TXtTypedArg = record
          name : TString;
          _type : TString;
          value : TXtArgVal;
          size : longint;
        end;
      TXtTypedArgList = PXtTypedArg;
      PXtTypedArgList = ^TXtTypedArgList;


      TXtAllocateProc = procedure (para1:TWidgetClass; para2:PCardinal; para3:PCardinal; para4:TArgList; para5:PCardinal; 
                    para6:TXtTypedArgList; para7:PCardinal; para8:PWidget; para9:PXtPointer);cdecl;


      TXtDeallocateProc = procedure (para1:TWidget; para2:TXtPointer);cdecl;
      PXtStateRec = ^TXtStateRec;
      TXtStateRec = record
          {undefined structure}
        end;






      PXtTMRec = ^TXtTMRec;
      TXtTMRec = record
          translations : TXtTranslations;
          proc_table : TXtBoundActions;
          current_state : PXtStateRec;
          lastEventTime : dword;
        end;
      TXtTM = PXtTMRec;
      PXtTM = ^TXtTM;
{$include <X11/CoreP.h>}
{$include <X11/CompositeP.h>}
{$include <X11/ConstrainP.h>}
{$include <X11/ObjectP.h>}
{$include <X11/RectObjP.h>}

    function XtDisplay(widget : longint) : longint;    

    function XtScreen(widget : longint) : longint;    

    function XtWindow(widget : longint) : longint;    

    function XtClass(widget : longint) : longint;    

    function XtSuperclass(widget : longint) : longint;    

    function XtIsRealized(object : longint) : longint;    

    function XtParent(widget : longint) : longint;    

{$undef XtIsRectObj}
function XtIsRectObj(para1:TWidget):TBoolean;cdecl;external;
    function XtIsRectObj(obj : longint) : longint;    

{$undef XtIsWidget}
function XtIsWidget(para1:TWidget):TBoolean;cdecl;external;
    function XtIsWidget(obj : longint) : longint;    

{$undef XtIsComposite}
function XtIsComposite(para1:TWidget):TBoolean;cdecl;external;
    function XtIsComposite(obj : longint) : longint;    

{$undef XtIsConstraint}
function XtIsConstraint(para1:TWidget):TBoolean;cdecl;external;
    function XtIsConstraint(obj : longint) : longint;    

{$undef XtIsShell}
function XtIsShell(para1:TWidget):TBoolean;cdecl;external;
    function XtIsShell(obj : longint) : longint;    

{$undef XtIsWMShell}
function XtIsWMShell(para1:TWidget):TBoolean;cdecl;external;
    function XtIsWMShell(obj : longint) : longint;    

{$undef XtIsTopLevelShell}
function XtIsTopLevelShell(para1:TWidget):TBoolean;cdecl;external;
    function XtIsTopLevelShell(obj : longint) : longint;    

{$ifdef DEBUG}
(* error 
	if (!XtIsSubclass(((Widget)(w)), (widget_class_ptr))) {	\
in declaration at line 249 *)
(* error 
	    String dbgArgV[3];				\
(* error 
	    Cardinal dbgArgC = 3;			\
in declaration at line 250 *)
(* error 
	    Cardinal dbgArgC = 3;			\
(* error 
	    dbgArgV[0] = ((Widget)(w))->core.widget_class->core_class.class_name;\
in declaration at line 251 *)
(* error 
	    dbgArgV[0] = ((Widget)(w))->core.widget_class->core_class.class_name;\
(* error 
	    dbgArgV[1] = (widget_class_ptr)->core_class.class_name;	     \
in declaration at line 252 *)
(* error 
	    dbgArgV[1] = (widget_class_ptr)->core_class.class_name;	     \
(* error 
	    dbgArgV[2] = (message);					     \
in declaration at line 253 *)
(* error 
	    dbgArgV[2] = (message);					     \
(* error 
	    XtAppErrorMsg(XtWidgetToApplicationContext((Widget)(w)),	     \
in declaration at line 257 *)
(* error 
		    dbgArgV, &dbgArgC);			\
(* error 
	}
{$else}

in define line 260 *)
{$endif}
(* error 
extern Widget _XtWindowedAncestor( /* internal; implementation-dependent */


in declaration at line 267 *)
{$if (defined(_WIN32) || defined(__CYGWIN__)) && !defined(LIBXT_COMPILATION)}
{$else}
(* error 
extern
{$endif}
 in declarator_list *)

procedure _XtHandleFocus(para1:TWidget; para2:TXtPointer; para3:PXEvent; para4:PBoolean);cdecl;external;

procedure XtCreateWindow(para1:TWidget; para2:dword; para3:PVisual; para4:TXtValueMask; para5:PXSetWindowAttributes);cdecl;external;

procedure XtResizeWidget(para1:TWidget; para2:TXtDimension; para3:TXtDimension; para4:TXtDimension);cdecl;external;

procedure XtMoveWidget(para1:TWidget; para2:TXtPosition; para3:TXtPosition);cdecl;external;

procedure XtConfigureWidget(para1:TWidget; para2:TXtPosition; para3:TXtPosition; para4:TXtDimension; para5:TXtDimension; 
                para6:TXtDimension);cdecl;external;

procedure XtResizeWindow(para1:TWidget);cdecl;external;
procedure XtProcessLock;cdecl;external;
procedure XtProcessUnlock;cdecl;external;
{$endif}


(* error 
/* DON'T ADD STUFF AFTER THIS #endif */

implementation

    function XtExposeNoCompress : TXtEnum;
      begin
        XtExposeNoCompress:=TXtEnum(_False);
      end;

    function XtExposeCompressSeries : TXtEnum;
      begin
        XtExposeCompressSeries:=TXtEnum(_True);
      end;

    function XtDisplay(widget : longint) : longint;
    begin
      XtDisplay:=DisplayOfScreen(widget^.(core.screen));
    end;

    function XtScreen(widget : longint) : longint;
    begin
      XtScreen:=widget^.(core.screen);
    end;

    function XtWindow(widget : longint) : longint;
    begin
      XtWindow:=widget^.(core.window);
    end;

    function XtClass(widget : longint) : longint;
    begin
      XtClass:=widget^.(core.widget_class);
    end;

    function XtSuperclass(widget : longint) : longint;
    begin
      XtSuperclass:=(XtClass(widget))^.(core_class.superclass);
    end;

    function XtIsRealized(object : longint) : longint;
    begin
      XtIsRealized:=(XtWindowOfObject(object))<>None;
    end;

    function XtParent(widget : longint) : longint;
    begin
      XtParent:=widget^.(core.parent);
    end;

    function XtIsRectObj(obj : longint) : longint;
    begin
      XtIsRectObj:=((TObject(obj))^.(object.(widget_class^.(core_class.class_inited)))) and $02;
    end;

    function XtIsWidget(obj : longint) : longint;
    begin
      XtIsWidget:=((TObject(obj))^.(object.(widget_class^.(core_class.class_inited)))) and $04;
    end;

    function XtIsComposite(obj : longint) : longint;
    begin
      XtIsComposite:=((TObject(obj))^.(object.(widget_class^.(core_class.class_inited)))) and $08;
    end;

    function XtIsConstraint(obj : longint) : longint;
    begin
      XtIsConstraint:=((TObject(obj))^.(object.(widget_class^.(core_class.class_inited)))) and $10;
    end;

    function XtIsShell(obj : longint) : longint;
    begin
      XtIsShell:=((TObject(obj))^.(object.(widget_class^.(core_class.class_inited)))) and $20;
    end;

    function XtIsWMShell(obj : longint) : longint;
    begin
      XtIsWMShell:=((TObject(obj))^.(object.(widget_class^.(core_class.class_inited)))) and $40;
    end;

    function XtIsTopLevelShell(obj : longint) : longint;
    begin
      XtIsTopLevelShell:=((TObject(obj))^.(object.(widget_class^.(core_class.class_inited)))) and $80;
    end;


end.
