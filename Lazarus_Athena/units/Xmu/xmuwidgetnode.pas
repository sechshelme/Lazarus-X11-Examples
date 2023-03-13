unit XmuWidgetNode;

interface

uses
  xlib,x,
  X11Intrinsic;

const
  libXmu = 'libXmu.so';

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

//{$include <X11/Intrinsic.h>}
//{$include <X11/Xfuncproto.h>}
{
 * This is usually initialized by setting the first two fields and letting
 * rest be implicitly nulled (by genlist.sh, for example)
  }
{ mixed case name  }
{ addr of widget class  }
{ superclass of widget_class  }
{ subclass links  }
{ lowercase version of label  }
{ lowercase version of class_name  }
{ resources have been fetched  }
{ extracted resource database  }
{ where resources come from  }
{ number of resources  }
{ extracted constraint resources  }
{ where constraints come from  }
{ number of constraint resources  }
{ extra data  }
type
  PXmuWidgetNode = ^TXmuWidgetNode;
  TXmuWidgetNode = record
      _label : Pchar;
      widget_class_ptr : PWidgetClass;
      superclass : PXmuWidgetNode;
      children : PXmuWidgetNode;
      siblings : PXmuWidgetNode;
      lowered_label : Pchar;
      lowered_classname : Pchar;
      have_resources : TBool;
      resources : TXtResourceList;
      resourcewn : ^PXmuWidgetNode;
      nresources : TCardinal;
      constraints : TXtResourceList;
      constraintwn : ^PXmuWidgetNode;
      nconstraints : TCardinal;
      data : TXtPointer;
    end;
{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   

//function XmuWnClass(wn : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
//function XmuWnClassname(wn : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
//function XmuWnSuperclass(wn : longint) : longint;

{ external interfaces  }
{_XFUNCPROTOBEGIN }
procedure XmuWnInitializeNodes(nodearray:PXmuWidgetNode; nnodes:longint);cdecl;external libXmu;
procedure XmuWnFetchResources(node:PXmuWidgetNode; toplevel:TWidget; topnode:PXmuWidgetNode);cdecl;external libXmu;
function XmuWnCountOwnedResources(node:PXmuWidgetNode; ownernode:PXmuWidgetNode; constraints:TBool):longint;cdecl;external libXmu;
(* Const before type ignored *)
function XmuWnNameToNode(nodelist:PXmuWidgetNode; nnodes:longint; name:Pchar):PXmuWidgetNode;cdecl;external libXmu;
{_XFUNCPROTOEND }
{ _XmuWidgetNode_h  }

implementation
//
//{ was #define dname(params) para_def_expr }
//{ argument types are unknown }
//{ return type might be wrong }   
//function XmuWnClass(wn : longint) : longint;
//begin
//  XmuWnClass:=wn^.(widget_class_ptr[0]);
//end;
//
//{ was #define dname(params) para_def_expr }
//{ argument types are unknown }
//{ return type might be wrong }   
//function XmuWnClassname(wn : longint) : longint;
//begin
//  XmuWnClassname:=(XmuWnClass(wn))^.(core_class.class_name);
//end;
//
//{ was #define dname(params) para_def_expr }
//{ argument types are unknown }
//{ return type might be wrong }   
//function XmuWnSuperclass(wn : longint) : longint;
//begin
//  XmuWnSuperclass:=(XmuWnClass(wn))^.(core_class.superclass);
//end;


end.
