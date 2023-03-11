
unit X11IntrinsicP;

interface

uses
  xlib, x, xutil,
  X11Intrinsic,
  Xresource;

const
  libXt = 'libXt.so';
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

//{$include <X11/Intrinsic.h>}
{
 * Field sizes and offsets of XrmResource must match those of XtResource.
 * Type long is used instead of XrmQuark here because XrmQuark and String
 * are not the same size on all systems.
  }
{ Resource name quark		 }
{ Resource class quark		 }
{ Resource representation type quark  }
{ Size in bytes of representation	 }
{ -offset-1				 }
{ Default representation type quark	 }
{ Default resource address		 }


type
  PXrmResource = ^TXrmResource;
  TXrmResource = record
      xrm_name : TXtIntPtr;
      xrm_class : TXtIntPtr;
      xrm_type : TXtIntPtr;
      xrm_size : TCardinal;
      xrm_offset : longint;
      xrm_default_type : TXtIntPtr;
      xrm_default_addr : TXtPointer;
    end;

  TXrmResourceList = PXrmResource;
  PXrmResourceList = ^TXrmResourceList;
{ #if __STDC_VERSION__ >= 201112L }
{_Static_assert(XtOffsetOf(XrmResource, xrm_default_addr) == }
{                   XtOffsetOf(XtResource, default_addr), }
{               "Field offset mismatch"); }
{ #endif }

  PXtVersionType = ^TXtVersionType;
  TXtVersionType = dword;

const
  XT_VERSION = 11;  
{#ifndef XT_REVISION }
  XT_REVISION = 6;  
{#endif }
{#define XtVersion (XT_VERSION * 1000 + XT_REVISION) }
  XtVersion = (11*1000)+6;  
  XtVersionDontCheck = 0;  
type

  TXtProc = procedure (para1:pointer);cdecl;
{ class  }

  TXtWidgetClassProc = procedure (para1:TWidgetClass);cdecl;
{ widget  }

  TXtWidgetProc = procedure (para1:TWidget);cdecl;
{ widget  }{ time  }

  TXtAcceptFocusProc = function (para1:TWidget; para2:PTime):TBoolean;cdecl;
{ widget  }{ args  }{ num_args  }

  TXtArgsProc = procedure (para1:TWidget; para2:TArgList; para3:PCardinal);cdecl;
{ request  }{ new  }{ args  }{ num_args  }

  TXtInitProc = procedure (para1:TWidget; para2:TWidget; para3:TArgList; para4:PCardinal);cdecl;
{ old  }{ request  }{ new  }{ args  }{ num_args  }

  TXtSetValuesFunc = function (para1:TWidget; para2:TWidget; para3:TWidget; para4:TArgList; para5:PCardinal):TBoolean;cdecl;
{ widget  }{ args  }{ num_args  }

  TXtArgsFunc = function (para1:TWidget; para2:TArgList; para3:PCardinal):TBoolean;cdecl;
{ old  }{ new  }{ request  }{ reply  }

  TXtAlmostProc = procedure (para1:TWidget; para2:TWidget; para3:PXtWidgetGeometry; para4:PXtWidgetGeometry);cdecl;
{ widget  }{ event  }{ region  }

  TXtExposeProc = procedure (para1:TWidget; para2:PXEvent; para3:TRegion);cdecl;
{ compress_exposure options }

{ was #define dname def_expr }
//function XtExposeNoCompress : TXtEnum;  

{ was #define dname def_expr }
//function XtExposeCompressSeries : TXtEnum;  

const
  XtExposeCompressMultiple = 2;  
  XtExposeCompressMaximal = 3;  
{ modifiers  }
  XtExposeGraphicsExpose = $10;  
  XtExposeGraphicsExposeMerged = $20;  
  XtExposeNoExpose = $40;  
  XtExposeNoRegion = $80;  
{ widget  }{ mask  }{ attributes  }
type

  TXtRealizeProc = procedure (para1:TWidget; para2:PXtValueMask; para3:PXSetWindowAttributes);cdecl;
{ widget  }{ request  }{ reply  }

  TXtGeometryHandler = function (para1:TWidget; para2:PXtWidgetGeometry; para3:PXtWidgetGeometry):TXtGeometryResult;cdecl;
{ widget  }{ str  }

  TXtStringProc = procedure (para1:TWidget; para2:TString);cdecl;
{ resource name  }
{ representation type name  }
{ representation  }
{ size of representation  }

  PXtTypedArg = ^TXtTypedArg;
  TXtTypedArg = record
      name : TString;
      _type : TString;
      value : TXtArgVal;
      size : longint;
    end;
  TXtTypedArgList = PXtTypedArg;
  PXtTypedArgList = ^TXtTypedArgList;
{ widget_class  }{ constraint_size  }{ more_bytes  }{ args  }{ num_args  }{ typed_args  }{ num_typed_args  }{ widget_return  }{ more_bytes_return  }

  TXtAllocateProc = procedure (para1:TWidgetClass; para2:PCardinal; para3:PCardinal; para4:TArgList; para5:PCardinal; 
                para6:TXtTypedArgList; para7:PCardinal; para8:PWidget; para9:PXtPointer);cdecl;
{ widget  }{ more_bytes  }

  TXtDeallocateProc = procedure (para1:TWidget; para2:TXtPointer);cdecl;
  PXtStateRec = ^TXtStateRec;
  TXtStateRec = record
      {undefined structure}
    end;

{ Forward declare before use for C++  }
{ private to Translation Manager     }
{ procedure bindings for actions     }
{ Translation Manager state ptr      }

  PXtTMRec = ^TXtTMRec;
  TXtTMRec = record
      translations : TXtTranslations;
      proc_table : TXtBoundActions;
      current_state : PXtStateRec;
      lastEventTime : dword;
    end;
  TXtTM = PXtTMRec;
  PXtTM = ^TXtTM;
//{$include <X11/CoreP.h>}
//{$include <X11/CompositeP.h>}
//{$include <X11/ConstrainP.h>}
//{$include <X11/ObjectP.h>}
//{$include <X11/RectObjP.h>}
{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   

//function XtDisplay(widget : longint) : longint;
//
//{ was #define dname(params) para_def_expr }
//{ argument types are unknown }
//{ return type might be wrong }   
//function XtScreen(widget : longint) : longint;
//
//{ was #define dname(params) para_def_expr }
//{ argument types are unknown }
//{ return type might be wrong }   
//function XtWindow(widget : longint) : longint;
//
//{ was #define dname(params) para_def_expr }
//{ argument types are unknown }
//{ return type might be wrong }   
//function XtClass(widget : longint) : longint;
//
//{ was #define dname(params) para_def_expr }
//{ argument types are unknown }
//{ return type might be wrong }   
//function XtSuperclass(widget : longint) : longint;
//
//{ was #define dname(params) para_def_expr }
//{ argument types are unknown }
//{ return type might be wrong }   
//function XtIsRealized(obj : longint) : longint;
//
//{ was #define dname(params) para_def_expr }
//{ argument types are unknown }
//{ return type might be wrong }   
//function XtParent(widget : longint) : longint;

//{$undef XtIsRectObj}
//function XtIsRectObj(para1:TWidget):TBoolean;cdecl;external libXt;
//{ was #define dname(params) para_def_expr }
//{ argument types are unknown }
//{ return type might be wrong }   
//function XtIsRectObj(obj : longint) : longint;
//
//{$undef XtIsWidget}
//function XtIsWidget(para1:TWidget):TBoolean;cdecl;external libXt;
//{ was #define dname(params) para_def_expr }
//{ argument types are unknown }
//{ return type might be wrong }   
//function XtIsWidget(obj : longint) : longint;
//
//{$undef XtIsComposite}
//function XtIsComposite(para1:TWidget):TBoolean;cdecl;external libXt;
//{ was #define dname(params) para_def_expr }
//{ argument types are unknown }
//{ return type might be wrong }   
//function XtIsComposite(obj : longint) : longint;
//
//{$undef XtIsConstraint}
//function XtIsConstraint(para1:TWidget):TBoolean;cdecl;external libXt;
//{ was #define dname(params) para_def_expr }
//{ argument types are unknown }
//{ return type might be wrong }   
//function XtIsConstraint(obj : longint) : longint;
//
//{$undef XtIsShell}
//function XtIsShell(para1:TWidget):TBoolean;cdecl;external libXt;
//{ was #define dname(params) para_def_expr }
//{ argument types are unknown }
//{ return type might be wrong }   
//function XtIsShell(obj : longint) : longint;
//
//{$undef XtIsWMShell}
//function XtIsWMShell(para1:TWidget):TBoolean;cdecl;external libXt;
//{ was #define dname(params) para_def_expr }
//{ argument types are unknown }
//{ return type might be wrong }   
//function XtIsWMShell(obj : longint) : longint;
//
//{$undef XtIsTopLevelShell}
//function XtIsTopLevelShell(para1:TWidget):TBoolean;cdecl;external libXt;
//{ was #define dname(params) para_def_expr }
//{ argument types are unknown }
//{ return type might be wrong }   
//function XtIsTopLevelShell(obj : longint) : longint;
//
{#ifdef DEBUG }
{#define XtCheckSubclass(w, widget_class_ptr, message)	\ }
{	if (!XtIsSubclass(((Widget)(w)), (widget_class_ptr))) 	\ }
{	    String dbgArgV[3];				\ }
{	    Cardinal dbgArgC = 3;			\ }
{	    dbgArgV[0] = ((Widget)(w))->core.widget_class->core_class.class_name;\ }
{	    dbgArgV[1] = (widget_class_ptr)->core_class.class_name;	     \ }
{	    dbgArgV[2] = (message);					     \ }
{	    XtAppErrorMsg(XtWidgetToApplicationContext((Widget)(w)),	     \ }
{		    "subclassMismatch", "xtCheckSubclass", "XtToolkitError", \ }
{		    "Widget class %s found when subclass of %s expected: %s",\ }
{		    dbgArgV, &dbgArgC);			\ }
{	 }
{#else }
{#define XtCheckSubclass(w, widget_class, message)	/* nothing */ }
{#endif }
{ internal; implementation-dependent  }
{ object  }
function _XtWindowedAncestor(para1:TWidget):TWidget;cdecl;external libXt;
{#if (defined(_WIN32) || defined(__CYGWIN__)) && !defined(LIBXT_COMPILATION) }
{__declspec(dllimport) }
{#else }
{#endif }
procedure _XtInherit;cdecl;external libXt;
{ widget  }{ client_data  }{ event  }{ cont  }procedure _XtHandleFocus(para1:TWidget; para2:TXtPointer; para3:PXEvent; para4:PBoolean);cdecl;external libXt;
{ widget  }{ window_class  }{ visual  }{ value_mask  }{ attributes  }
procedure XtCreateWindow(para1:TWidget; para2:dword; para3:PVisual; para4:TXtValueMask; para5:PXSetWindowAttributes);cdecl;external libXt;
{ widget  }{ width  }{ height  }{ border_width  }
procedure XtResizeWidget(para1:TWidget; para2:TXtDimension; para3:TXtDimension; para4:TXtDimension);cdecl;external libXt;
{ widget  }{ x  }{ y  }
procedure XtMoveWidget(para1:TWidget; para2:TXtPosition; para3:TXtPosition);cdecl;external libXt;
{ widget  }{ x  }{ y  }{ width  }{ height  }{ border_width  }
procedure XtConfigureWidget(para1:TWidget; para2:TXtPosition; para3:TXtPosition; para4:TXtDimension; para5:TXtDimension; 
            para6:TXtDimension);cdecl;external libXt;
{ widget  }
procedure XtResizeWindow(para1:TWidget);cdecl;external libXt;
procedure XtProcessLock;cdecl;external libXt;
procedure XtProcessUnlock;cdecl;external libXt;
//{$endif}
{ _XtIntrinsicP_h  }
{ DON'T ADD STUFF AFTER THIS #endif  }

implementation

//{ was #define dname def_expr }
//function XtExposeNoCompress : TXtEnum;
//  begin
//    XtExposeNoCompress:=TXtEnum(False);
//  end;
//
//{ was #define dname def_expr }
//function XtExposeCompressSeries : TXtEnum;
//  begin
//    XtExposeCompressSeries:=TXtEnum(True);
//  end;
//
//{ was #define dname(params) para_def_expr }
//{ argument types are unknown }
//{ return type might be wrong }   
//function XtDisplay(widget : TWidget) : longint;
//begin
//  XtDisplay:=DisplayOfScreen(widget^.(core.screen));
//end;
//
//{ was #define dname(params) para_def_expr }
//{ argument types are unknown }
//{ return type might be wrong }   
//function XtScreen(widget : longint) : longint;
//begin
//  XtScreen:=widget^.(core.screen);
//end;
//
//{ was #define dname(params) para_def_expr }
//{ argument types are unknown }
//{ return type might be wrong }   
//function XtWindow(widget : longint) : longint;
//begin
//  XtWindow:=widget^.(core.window);
//end;
//
//{ was #define dname(params) para_def_expr }
//{ argument types are unknown }
//{ return type might be wrong }   
//function XtClass(widget : longint) : longint;
//begin
//  XtClass:=widget^.(core.widget_class);
//end;
//
//{ was #define dname(params) para_def_expr }
//{ argument types are unknown }
//{ return type might be wrong }   
//function XtSuperclass(widget : longint) : longint;
//begin
//  XtSuperclass:=(XtClass(widget))^.(core_class.superclass);
//end;
//
//{ was #define dname(params) para_def_expr }
//{ argument types are unknown }
//{ return type might be wrong }   
//function XtIsRealized(object : longint) : longint;
//begin
//  XtIsRealized:=(XtWindowOfObject(object))<>None;
//end;
//
//{ was #define dname(params) para_def_expr }
//{ argument types are unknown }
//{ return type might be wrong }   
//function XtParent(widget : longint) : longint;
//begin
//  XtParent:=widget^.(core.parent);
//end;
//
//{ was #define dname(params) para_def_expr }
//{ argument types are unknown }
//{ return type might be wrong }   
//function XtIsRectObj(obj : longint) : longint;
//begin
//  XtIsRectObj:=((TObject(obj))^.(object.(widget_class^.(core_class.class_inited)))) and $02;
//end;
//
//{ was #define dname(params) para_def_expr }
//{ argument types are unknown }
//{ return type might be wrong }   
//function XtIsWidget(obj : longint) : longint;
//begin
//  XtIsWidget:=((TObject(obj))^.(object.(widget_class^.(core_class.class_inited)))) and $04;
//end;
//
//{ was #define dname(params) para_def_expr }
//{ argument types are unknown }
//{ return type might be wrong }   
//function XtIsComposite(obj : longint) : longint;
//begin
//  XtIsComposite:=((TObject(obj))^.(object.(widget_class^.(core_class.class_inited)))) and $08;
//end;
//
//{ was #define dname(params) para_def_expr }
//{ argument types are unknown }
//{ return type might be wrong }   
//function XtIsConstraint(obj : longint) : longint;
//begin
//  XtIsConstraint:=((TObject(obj))^.(object.(widget_class^.(core_class.class_inited)))) and $10;
//end;
//
//{ was #define dname(params) para_def_expr }
//{ argument types are unknown }
//{ return type might be wrong }   
//function XtIsShell(obj : longint) : longint;
//begin
//  XtIsShell:=((TObject(obj))^.(object.(widget_class^.(core_class.class_inited)))) and $20;
//end;
//
//{ was #define dname(params) para_def_expr }
//{ argument types are unknown }
//{ return type might be wrong }   
//function XtIsWMShell(obj : longint) : longint;
//begin
//  XtIsWMShell:=((TObject(obj))^.(object.(widget_class^.(core_class.class_inited)))) and $40;
//end;
//
//{ was #define dname(params) para_def_expr }
//{ argument types are unknown }
//{ return type might be wrong }   
//function XtIsTopLevelShell(obj : longint) : longint;
//begin
//  XtIsTopLevelShell:=((TObject(obj))^.(object.(widget_class^.(core_class.class_inited)))) and $80;
//end;


end.
