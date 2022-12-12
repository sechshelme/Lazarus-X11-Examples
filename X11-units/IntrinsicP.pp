
unit IntrinsicP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/IntrinsicP.h
  The following command line parameters were used:
    /usr/include/X11/IntrinsicP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/IntrinsicP.pp
}

    Type
    PBoolean  = ^Boolean;
    PCardinal  = ^Cardinal;
    PTime  = ^Time;
    PVisual  = ^Visual;
    PWidget  = ^Widget;
    PXEvent  = ^XEvent;
    PXSetWindowAttributes  = ^XSetWindowAttributes;
    PXtPointer  = ^XtPointer;
    PXtValueMask  = ^XtValueMask;
    PXtWidgetGeometry  = ^XtWidgetGeometry;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XtintrinsicP_h}
{$define _XtintrinsicP_h}  
{$include <X11/Intrinsic.h>}









  type
    XrmResource = record
        xrm_name : longint;
        xrm_class : longint;
        xrm_type : longint;
        xrm_size : Cardinal;
        xrm_offset : longint;
        xrm_default_type : longint;
        xrm_default_addr : XtPointer;
      end;
    XrmResourceList = ^XrmResource;

    XtVersionType = dword;

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

      XtProc = procedure (_para1:pointer);cdecl;


      XtWidgetClassProc = procedure (_para1:WidgetClass);cdecl;


      XtWidgetProc = procedure (_para1:Widget);cdecl;


      XtAcceptFocusProc = function (_para1:Widget; _para2:PTime):Boolean;cdecl;


      XtArgsProc = procedure (_para1:Widget; _para2:ArgList; _para3:PCardinal);cdecl;


      XtInitProc = procedure (_para1:Widget; _para2:Widget; _para3:ArgList; _para4:PCardinal);cdecl;


      XtSetValuesFunc = function (_para1:Widget; _para2:Widget; _para3:Widget; _para4:ArgList; _para5:PCardinal):Boolean;cdecl;


      XtArgsFunc = function (_para1:Widget; _para2:ArgList; _para3:PCardinal):Boolean;cdecl;


      XtAlmostProc = procedure (_para1:Widget; _para2:Widget; _para3:PXtWidgetGeometry; _para4:PXtWidgetGeometry);cdecl;


      XtExposeProc = procedure (_para1:Widget; _para2:PXEvent; _para3:Region);cdecl;


    function XtExposeNoCompress : XtEnum;      

  function XtExposeCompressSeries : XtEnum;    

  const
    XtExposeCompressMultiple = 2;    
    XtExposeCompressMaximal = 3;    

    XtExposeGraphicsExpose = $10;    
    XtExposeGraphicsExposeMerged = $20;    
    XtExposeNoExpose = $40;    
    XtExposeNoRegion = $80;    


  type

    XtRealizeProc = procedure (_para1:Widget; _para2:PXtValueMask; _para3:PXSetWindowAttributes);cdecl;


    XtGeometryHandler = function (_para1:Widget; _para2:PXtWidgetGeometry; _para3:PXtWidgetGeometry):XtGeometryResult;cdecl;


    XtStringProc = procedure (_para1:Widget; _para2:String);cdecl;





    XtTypedArg = record
        name : String;
        _type : String;
        value : XtArgVal;
        size : longint;
      end;
    XtTypedArgList = ^XtTypedArg;


    XtAllocateProc = procedure (_para1:WidgetClass; _para2:PCardinal; _para3:PCardinal; _para4:ArgList; _para5:PCardinal; 
                  _para6:XtTypedArgList; _para7:PCardinal; _para8:PWidget; _para9:PXtPointer);cdecl;


    XtDeallocateProc = procedure (_para1:Widget; _para2:XtPointer);cdecl;
    _XtStateRec = record
        {undefined structure}
      end;






    _XtTMRec = record
        translations : XtTranslations;
        proc_table : XtBoundActions;
        current_state : ^_XtStateRec;
        lastEventTime : dword;
      end;
    XtTMRec = _XtTMRec;
    XtTM = ^_XtTMRec;
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
  function XtIsRectObj(_para1:Widget):Boolean;cdecl;

  function XtIsRectObj(obj : longint) : longint;  

{$undef XtIsWidget}
  function XtIsWidget(_para1:Widget):Boolean;cdecl;

  function XtIsWidget(obj : longint) : longint;  

{$undef XtIsComposite}
  function XtIsComposite(_para1:Widget):Boolean;cdecl;

  function XtIsComposite(obj : longint) : longint;  

{$undef XtIsConstraint}
  function XtIsConstraint(_para1:Widget):Boolean;cdecl;

  function XtIsConstraint(obj : longint) : longint;  

{$undef XtIsShell}
  function XtIsShell(_para1:Widget):Boolean;cdecl;

  function XtIsShell(obj : longint) : longint;  

{$undef XtIsWMShell}
  function XtIsWMShell(_para1:Widget):Boolean;cdecl;

  function XtIsWMShell(obj : longint) : longint;  

{$undef XtIsTopLevelShell}
  function XtIsTopLevelShell(_para1:Widget):Boolean;cdecl;

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

    procedure _XtHandleFocus(_para1:Widget; _para2:XtPointer; _para3:PXEvent; _para4:PBoolean);cdecl;


    procedure XtCreateWindow(_para1:Widget; _para2:dword; _para3:PVisual; _para4:XtValueMask; _para5:PXSetWindowAttributes);cdecl;


    procedure XtResizeWidget(_para1:Widget; _para2:_XtDimension; _para3:_XtDimension; _para4:_XtDimension);cdecl;


    procedure XtMoveWidget(_para1:Widget; _para2:_XtPosition; _para3:_XtPosition);cdecl;


    procedure XtConfigureWidget(_para1:Widget; _para2:_XtPosition; _para3:_XtPosition; _para4:_XtDimension; _para5:_XtDimension; 
                _para6:_XtDimension);cdecl;


    procedure XtResizeWindow(_para1:Widget);cdecl;

    procedure XtProcessLock;cdecl;

    procedure XtProcessUnlock;cdecl;

{$endif}


(* error 
/* DON'T ADD STUFF AFTER THIS #endif */

implementation

    function XtExposeNoCompress : XtEnum;
      begin
        XtExposeNoCompress:=XtEnum(_False);
      end;

  function XtExposeCompressSeries : XtEnum;
    begin
      XtExposeCompressSeries:=XtEnum(_True);
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
    XtIsRectObj:=((Object(obj))^.(object.(widget_class^.(core_class.class_inited)))) and $02;
  end;

  function XtIsWidget(obj : longint) : longint;
  begin
    XtIsWidget:=((Object(obj))^.(object.(widget_class^.(core_class.class_inited)))) and $04;
  end;

  function XtIsComposite(obj : longint) : longint;
  begin
    XtIsComposite:=((Object(obj))^.(object.(widget_class^.(core_class.class_inited)))) and $08;
  end;

  function XtIsConstraint(obj : longint) : longint;
  begin
    XtIsConstraint:=((Object(obj))^.(object.(widget_class^.(core_class.class_inited)))) and $10;
  end;

  function XtIsShell(obj : longint) : longint;
  begin
    XtIsShell:=((Object(obj))^.(object.(widget_class^.(core_class.class_inited)))) and $20;
  end;

  function XtIsWMShell(obj : longint) : longint;
  begin
    XtIsWMShell:=((Object(obj))^.(object.(widget_class^.(core_class.class_inited)))) and $40;
  end;

  function XtIsTopLevelShell(obj : longint) : longint;
  begin
    XtIsTopLevelShell:=((Object(obj))^.(object.(widget_class^.(core_class.class_inited)))) and $80;
  end;


end.
